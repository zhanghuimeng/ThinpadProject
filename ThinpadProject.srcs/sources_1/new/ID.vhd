----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2017/11/12 00:33:04
-- Design Name: 
-- Module Name: ID - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- ddddddddd
---------
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use STD.TEXTIO.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

use WORK.INCLUDE.ALL;

-- ID Module in CPU
-- Combintational Logic
-- Note: we do not read HI/LO registers in this module

entity ID is
    Port ( rst :                		in STD_LOGIC;                                       -- Reset
           pc_i :               		in STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);      -- input program counter (instruction address) from IF_to_ID
           inst_i :             		in STD_LOGIC_VECTOR(INST_LEN-1 downto 0);           -- input instruction from IF_to_ID
           reg_rd_data_1_i :    		in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input register 1 read data from REGISTERS
           reg_rd_data_2_i :    		in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input register 2 read data from REGISTERS
           ex_reg_wt_en_i :     		in STD_LOGIC;                                       -- input EX register write enable from EX (push forward data to solve data conflict)
           ex_reg_wt_addr_i :   		in STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);       -- input EX register write address from EX (push forward data to solve data conflict)
           ex_reg_wt_data_i :   		in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input EX register write data from EX (push forward data to solve data conflict)
           mem_reg_wt_en_i :    		in STD_LOGIC;                                       -- input MEM register write enable from MEM (push forward data to solve data conflict)
           mem_reg_wt_addr_i :  		in STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);       -- input MEM register write address from MEM (push forward data to solve data conflict)
           mem_reg_wt_data_i :  		in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input MEM register write data from MEM (push forward data to solve data conflict)
           is_in_delayslot_i :			in STD_LOGIC;										-- input if the current instruction is in delay slot from ID/EX
           op_o :               		out STD_LOGIC_VECTOR(OP_LEN-1 downto 0);            -- output custom op type to ID_to_EX
           funct_o :            		out STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0);         -- output custom funct type to ID_to_EX
           reg_rd_en_1_o :      		out STD_LOGIC;                                      -- output register 1 read enable to REGISTERS
           reg_rd_en_2_o :      		out STD_LOGIC;                                      -- output register 2 read enable to REGISTERS
           reg_rd_addr_1_o :    		out STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);      -- output register 1 read address to REGISTERS
           reg_rd_addr_2_o :    		out STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);      -- output register 2 read address to REGISTERS
           operand_1_o :        		out STD_LOGIC_VECTOR(DATA_LEN-1 downto 0);          -- output operand 1 to ID/EX
           operand_2_o :        		out STD_LOGIC_VECTOR(DATA_LEN-1 downto 0);          -- output operand 2 to ID/EX
           extended_offset_o :			out STD_LOGIC_VECTOR(DATA_LEN-1 downto 0);			-- output extended offset to ID/EX
           reg_wt_en_o :        		out STD_LOGIC;                                      -- output register write enable to ID_to_EX
           reg_wt_addr_o :      		out STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);      -- output register write address to ID_to_EX
           pause_o :					out STD_LOGIC;										-- output pause information to PAUSE_CTRL
		   branch_o :					out STD_LOGIC;										-- output if the next instruction is in delay slot to ID/EX
		   branch_target_addr_o : 		out STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);		-- output the branch target address to PC
		   is_in_delayslot_o :			out STD_LOGIC;										-- output the current instruction in delay slot to ID/EX
		   next_inst_in_delayslot_o :	out STD_LOGIC;										-- output the next instruction in delay slot to ID/EX
		   link_addr_o :				out STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0));	-- output the return address to save to ID/EX
end ID;

architecture Behavioral of ID is
	-- [31, 26] (6)
    alias op :          STD_LOGIC_VECTOR(OP_LEN-1 downto 0) is inst_i(INST_LEN-1 downto INST_LEN-OP_LEN);
    -- [25, 21] (5)
    alias reg_s :       STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0) is inst_i(INST_LEN-OP_LEN-1 downto INST_LEN-OP_LEN-REG_ADDR_LEN);
    -- [20, 16] (5)
    alias reg_t :       STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0)  is inst_i(INST_LEN-OP_LEN-REG_ADDR_LEN-1 downto INST_LEN-OP_LEN-2*REG_ADDR_LEN);
    -- [15, 11] (5)
    alias reg_d :       STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0)  is inst_i(INST_LEN-OP_LEN-2*REG_ADDR_LEN-1 downto INST_LEN-OP_LEN-3*REG_ADDR_LEN);
    -- [10, 6] (5)
    alias shamt :       STD_LOGIC_VECTOR(SHAMT_LEN-1 downto 0) is inst_i(SHAMT_LEN+FUNCT_LEN-1 downto FUNCT_LEN);
    -- [5, 0] (6)
    alias funct :       STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) is inst_i(FUNCT_LEN-1 downto 0);
    -- [15, 0] (16)
    alias imm :         STD_LOGIC_VECTOR(IMM_LEN-1 downto 0) is inst_i(IMM_LEN-1 downto 0);
    -- [25, 0] (26)
    alias jump_addr :   STD_LOGIC_VECTOR(JUMP_ADDR_LEN-1 downto 0) is inst_i(JUMP_ADDR_LEN-1 downto 0);
    -- [25, 21] (5)
    alias base :		STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0) is inst_i(INST_LEN-OP_LEN-1 downto INST_LEN-OP_LEN-REG_ADDR_LEN);
    -- [15, 0] (16)
    alias offset :      STD_LOGIC_VECTOR(IMM_LEN-1 downto 0) is inst_i(IMM_LEN-1 downto 0);

    alias cp0_sel :      STD_LOGIC_VECTOR(CP0_SEL_LEN-1 downto 0) is inst_i(CP0_SEL_LEN-1 downto 0);
   
begin
    process (all)
    variable output :       LINE;
    variable extended_imm : STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
    alias extended_offset : STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0) is extended_imm;
    variable next_pc :		STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);
    variable branch_addr_offset : STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);
    begin
        if rst = RST_ENABLE then
            op_o <= OP_TYPE_NOP;
            funct_o <= FUNCT_TYPE_NOP;
            reg_rd_en_1_o <= REG_RD_DISABLE;
            reg_rd_en_2_o <= REG_RD_DISABLE;
            reg_rd_addr_1_o <= REG_ZERO_ADDR;
            reg_rd_addr_2_o <= REG_ZERO_ADDR;
            operand_1_o <= REG_ZERO_DATA;
            operand_2_o <= REG_ZERO_DATA;
            reg_wt_en_o <= REG_WT_DISABLE;
            reg_wt_addr_o <= REG_ZERO_ADDR;
            pause_o <= PAUSE_NOT;
            branch_o <= BRANCH_NOT;
            branch_target_addr_o <= INST_ZERO_ADDR;
            is_in_delayslot_o <= DELAYSLOT_NOT;
            next_inst_in_delayslot_o <= DELAYSLOT_NOT;
            link_addr_o <= INST_ZERO_ADDR;
            
        else
            
            op_o <= OP_TYPE_NOP;
            funct_o <= FUNCT_TYPE_NOP;
            reg_rd_en_1_o <= REG_RD_DISABLE;
            reg_rd_en_2_o <= REG_RD_DISABLE;
            reg_rd_addr_1_o <= reg_s;  -- Default read register 1
            reg_rd_addr_2_o <= reg_t;  -- Default read register 2
            operand_1_o <= REG_ZERO_DATA;
            operand_2_o <= REG_ZERO_DATA;
            reg_wt_en_o <= REG_WT_DISABLE;
            reg_wt_addr_o <= reg_d;
            pause_o <= PAUSE_NOT;  -- temp
    		branch_o <= BRANCH_NOT;
            is_in_delayslot_o <= DELAYSLOT_NOT;
            next_inst_in_delayslot_o <= DELAYSLOT_NOT;
            next_pc := pc_i + b"100";
            branch_addr_offset(IMM_LEN+1 downto 0) := imm & b"00";
            -- sign extend branch_addr_offset
            branch_addr_offset(INST_ADDR_LEN-1 downto IMM_LEN+2) := (others => branch_addr_offset(IMM_LEN+1));

            -- Decide OP type
            op_code: case op is
            
                -- SPECIAL type instructions
                when OP_SPECIAL =>
                    special_funct: case funct is
                    
                        -- ?????
                        when FUNCT_MOVCI =>
                        
                        -- SLL rd, rt, sa           rd ← rt << sa
                        when FUNCT_SLL => 
                            op_o <= OP_TYPE_SHIFT;
                            funct_o <= FUNCT_TYPE_SHIFT_LEFT_LOGIC;
                            reg_rd_en_1_o <= REG_RD_DISABLE;  -- do not read rs
                            reg_rd_en_2_o <= REG_RD_ENABLE;  -- read rt
                            extended_imm := x"000000" & b"000" & shamt;  -- imm
                            reg_wt_en_o <= REG_WT_ENABLE;  -- write rd
                        
                        -- SRL rd, rt, sa           rd ← rt >> sa (logical)
                        when FUNCT_SRL =>
                            op_o <= OP_TYPE_SHIFT;
                            funct_o <= FUNCT_TYPE_SHIFT_RIGHT_LOGIC;
                            reg_rd_en_1_o <= REG_RD_DISABLE;  -- do not read rs
                            reg_rd_en_2_o <= REG_RD_ENABLE;  -- read rt
                            extended_imm := x"000000" & b"000" & shamt;
                            reg_wt_en_o <= REG_WT_ENABLE;  -- write rd
                        
                        -- SRA rd, rt, sa           rd ← rt >> sa (arithmatic)
                        when FUNCT_SRA =>
                            op_o <= OP_TYPE_SHIFT;
                            funct_o <= FUNCT_TYPE_SHIFT_RIGHT_ARITH;
                            reg_rd_en_1_o <= REG_RD_DISABLE;  -- do not read rs
                            reg_rd_en_2_o <= REG_RD_ENABLE;  -- read rt
                            extended_imm := x"000000" & b"000" & shamt;  -- imm
                            reg_wt_en_o <= REG_WT_ENABLE;  -- write rd
                        
                        -- SLLV rd, rt, rs          rd ← rt << rs
                        when FUNCT_SLLV =>
                            op_o <= OP_TYPE_SHIFT;
                            funct_o <= FUNCT_TYPE_SHIFT_LEFT_LOGIC;
                            reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                            reg_rd_en_2_o <= REG_RD_ENABLE;  -- read rt
                            reg_wt_en_o <= REG_WT_ENABLE;  -- write rd
                        
                        -- SRLV rd, rt, rs          rd ← rt >> rs (logical)
                        when FUNCT_SRLV =>
                            op_o <= OP_TYPE_SHIFT;
                            funct_o <= FUNCT_TYPE_SHIFT_RIGHT_LOGIC;
                            reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                            reg_rd_en_2_o <= REG_RD_ENABLE;  -- read rt
                            reg_wt_en_o <= REG_WT_ENABLE;  -- write rd
                        
                        -- SRAV rd, rt, rs          rd ← rt >> rs (arithmetic)
                        when FUNCT_SRAV => 
                            op_o <= OP_TYPE_SHIFT;
                            funct_o <= FUNCT_TYPE_SHIFT_RIGHT_ARITH;
                            reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs                            
                            reg_rd_en_2_o <= REG_RD_ENABLE;  -- read rt
                            reg_wt_en_o <= REG_WT_ENABLE;  -- write rd
                        
                        -- JR rs                    PC ← rs
                    	when FUNCT_JR => 
                    		op_o <= OP_TYPE_BRANCH;
                            funct_o <= FUNCT_TYPE_JR;
                            reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                            reg_rd_en_2_o <= REG_RD_DISABLE;  -- do not read rt
                            reg_wt_en_o <= REG_WT_DISABLE;  -- do not write
                            branch_o <= BRANCH;
                            branch_target_addr_o <= reg_rd_data_1_i;
                            next_inst_in_delayslot_o <= DELAYSLOT;
                        
                        -- JALR (rd, = 31) rs       rd ← return_addr, PC ← rs
	                    when FUNCT_JALR =>
	                    	op_o <= OP_TYPE_BRANCH;
                            funct_o <= FUNCT_TYPE_JALR;
                            reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                            reg_rd_en_2_o <= REG_RD_DISABLE;  -- do not read rt
                            reg_wt_en_o <= REG_WT_ENABLE;  -- write rd
                            branch_o <= BRANCH;
                            branch_target_addr_o <= reg_rd_data_1_i;
                            next_inst_in_delayslot_o <= DELAYSLOT;
                            link_addr_o <= pc_i + b"1000";
                        
                        -- MOVZ rd, rs, rt          if rt = 0 then rd ← rs
                        -- Note data problem
                        when FUNCT_MOVZ =>
                            op_o <= OP_TYPE_MOVE;
                            funct_o <= FUNCT_TYPE_MOVE_ZERO;
                            reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                            reg_rd_en_2_o <= REG_RD_ENABLE;  -- read rt
                            reg_wt_en_o <= REG_WT_DISABLE;  -- write rd? (EX module solves it)
                        
                        -- MOVN rd, rs, rt          if rt ≠ 0 then rd ← rs
                        when FUNCT_MOVN =>
                            op_o <= OP_TYPE_MOVE;
                            funct_o <= FUNCT_TYPE_MOVE_NOT_ZERO;
                            reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                            reg_rd_en_2_o <= REG_RD_ENABLE;  -- read rt
                            reg_wt_en_o <= REG_WT_DISABLE;  -- write rd? (EX module solves it)
                        
                        -- MFHI rd                  rd ← HI
                        when FUNCT_MFHI =>
                            op_o <= OP_TYPE_MOVE;
                            funct_o <= FUNCT_TYPE_MOVE_FROM_HI;
                            reg_rd_en_1_o <= REG_RD_DISABLE;  -- do not read rs
                            reg_rd_en_2_o <= REG_RD_DISABLE;  -- do not read rt
                            reg_wt_en_o <= REG_WT_ENABLE;  -- write rd
                        
                        -- MTHI rs                  HI ← rs
                        when FUNCT_MTHI =>
                            op_o <= OP_TYPE_MOVE;
                            funct_o <= FUNCT_TYPE_MOVE_TO_HI;
                            reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                            reg_rd_en_2_o <= REG_RD_DISABLE;  -- do not read rt               
                            reg_wt_en_o <= REG_WT_DISABLE;  -- do not write
                        
                        -- MFLO rd                  rd ← LO
                        when FUNCT_MFLO =>
                            op_o <= OP_TYPE_MOVE;
                            funct_o <= FUNCT_TYPE_MOVE_FROM_LO;
                            reg_rd_en_1_o <= REG_RD_DISABLE;  -- do not read rs
                            reg_rd_en_2_o <= REG_RD_DISABLE;  -- do not read rt
                            reg_wt_en_o <= REG_WT_ENABLE;  -- write rd
                        
                        -- MTLO rs                  LO ← rs
                        when FUNCT_MTLO =>
                            op_o <= OP_TYPE_MOVE;
                            funct_o <= FUNCT_TYPE_MOVE_TO_LO;
                            reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                            reg_rd_en_2_o <= REG_RD_DISABLE;  -- do not read rt
                            reg_wt_en_o <= REG_WT_ENABLE;  -- do not write
                        
                        -- SYSCALL                  A system call exception occurs
                        when FUNCT_SYSCALL =>
                        
                        -- BREAK                    A breakpoint exception occurs
                        when FUNCT_BREAK =>
                        
                        -- SYNC (stype = 0 implied) To order loads and stores.
                        -- As NOP
                        when FUNCT_SYNC =>
                            op_o <= OP_TYPE_NOP;
                            funct_o <= FUNCT_TYPE_NOP;
                            reg_rd_en_1_o <= REG_RD_DISABLE;  -- do not read rs
                            reg_rd_en_2_o <= REG_RD_DISABLE;  -- do not read rt
                            reg_wt_en_o <= REG_WT_ENABLE;  -- do not write

                        -- MULT rs, rt              (LO, HI) ← rs × rt
                        -- Signed
                        when FUNCT_MULT =>
                            op_o <= OP_TYPE_ARITH;
                            funct_o <= FUNCT_TYPE_MULT;
                            reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                            reg_rd_en_2_o <= REG_RD_ENABLE;  -- read rt
                            reg_wt_en_o <= REG_WT_DISABLE;  -- do not write
                        
                        -- MULTU rs, rt             (LO, HI) ← rs × rt
                        -- Unsigned
                        when FUNCT_MULTU =>
                            op_o <= OP_TYPE_ARITH;
                            funct_o <= FUNCT_TYPE_MULTU;
                            reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                            reg_rd_en_2_o <= REG_RD_ENABLE;  -- read rt
                            reg_wt_en_o <= REG_WT_DISABLE;  -- do not write
                        
                        -- DIV rs, rt               (LO, HI) ← rs / rt
                    	when FUNCT_DIV =>
                    		op_o <= OP_TYPE_ARITH;
                            funct_o <= FUNCT_TYPE_DIV;
                            reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                            reg_rd_en_2_o <= REG_RD_ENABLE;  -- read rt
                            reg_wt_en_o <= REG_WT_DISABLE;  -- do not write
                        
                        -- DIVU rs, rt              (LO, HI) ← rs / rt
                    	when FUNCT_DIVU =>
                    		op_o <= OP_TYPE_ARITH;
                            funct_o <= FUNCT_TYPE_DIVU;
                            reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                            reg_rd_en_2_o <= REG_RD_ENABLE;  -- read rt
                            reg_wt_en_o <= REG_WT_DISABLE;  -- do not write
                        
                        -- ADD rd, rs, rt           rd ← rs + rt
                        -- Generate exception when overflow
                        when FUNCT_ADD =>
                            op_o <= OP_TYPE_ARITH;
                            funct_o <= FUNCT_TYPE_ADD;
                            reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                            reg_rd_en_2_o <= REG_RD_ENABLE;  -- read rt
                            reg_wt_en_o <= REG_WT_ENABLE;  -- write rd
                        
                        -- ADDU rd, rs, rt          rd ← rs + rt
                        -- Do not generate exception
                        when FUNCT_ADDU =>
                            op_o <= OP_TYPE_ARITH;
                            funct_o <= FUNCT_TYPE_ADDU;
                            reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                            reg_rd_en_2_o <= REG_RD_ENABLE;  -- read rt
                            reg_wt_en_o <= REG_WT_ENABLE;  -- write rd
                        
                        -- SUB rd, rs, rt           rd ← rs - rt
                        -- Generate exception when overflow
                        when FUNCT_SUB =>
                            op_o <= OP_TYPE_ARITH;
                            funct_o <= FUNCT_TYPE_SUB;
                            reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                            reg_rd_en_2_o <= REG_RD_ENABLE;  -- read rt
                            reg_wt_en_o <= REG_WT_ENABLE;  -- write rd
                        
                        -- SUBU rd, rs, rt          rd ← rs - rt
                        -- Do not generate exception
                        when FUNCT_SUBU =>
                            op_o <= OP_TYPE_ARITH;
                            funct_o <= FUNCT_TYPE_SUB;
                            reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                            reg_rd_en_2_o <= REG_RD_ENABLE;  -- read rt
                            reg_wt_en_o <= REG_WT_ENABLE;  -- write rd
                        
                        -- AND rd, rs, rt           rd ← rs AND rt
                        when FUNCT_AND =>
                            op_o <= OP_TYPE_LOGIC;
                            funct_o <= FUNCT_TYPE_AND;
                            reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                            reg_rd_en_2_o <= REG_RD_ENABLE;  -- read rt
                            reg_wt_en_o <= REG_WT_ENABLE;  -- write rd
        
                        -- OR rd, rs, rt            rd ← rs or rt
                        when FUNCT_OR =>
                            op_o <= OP_TYPE_LOGIC;
                            funct_o <= FUNCT_TYPE_OR;
                            reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                            reg_rd_en_2_o <= REG_RD_ENABLE;  -- read rt
                            reg_wt_en_o <= REG_WT_ENABLE;  -- write rd
                                                    
                        -- XOR rd, rs, rt           rd ← rs XOR rt
                        when FUNCT_XOR =>
                            op_o <= OP_TYPE_LOGIC;
                            funct_o <= FUNCT_TYPE_XOR;
                            reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                            reg_rd_en_2_o <= REG_RD_ENABLE;  -- read rt
                            reg_wt_en_o <= REG_WT_ENABLE;  -- write rd
                        
                        -- NOR rd, rs, rt           rd ← rs NOR rt
                        when FUNCT_NOR =>
                            op_o <= OP_TYPE_LOGIC;
                            funct_o <= FUNCT_TYPE_NOR;
                            reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                            reg_rd_en_2_o <= REG_RD_ENABLE;  -- read rt
                            reg_wt_en_o <= REG_WT_ENABLE;  -- write rd
                        
                        -- SLT rd, rs, rt           rd ← (rs < rt)
                        -- Signed
                        when FUNCT_SLT =>
                            op_o <= OP_TYPE_ARITH;
                            funct_o <= FUNCT_TYPE_SLT;
                            reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                            reg_rd_en_2_o <= REG_RD_ENABLE;  -- read rt
                            reg_wt_en_o <= REG_WT_ENABLE;  -- write rd
                        
                        -- SLTU rd, rs, rt          rd ← (rs < rt)
                        -- Unsigned
                        when FUNCT_SLTU =>
                            op_o <= OP_TYPE_ARITH;
                            funct_o <= FUNCT_TYPE_SLTU;
                            reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                            reg_rd_en_2_o <= REG_RD_ENABLE;  -- read rt
                            reg_wt_en_o <= REG_WT_ENABLE;  -- write rd
                        
                        -- TGE rs, rt               if rs ≥ rt then Trap
                        when FUNCT_TGE =>
                        
                        -- TGEU rs, rt              if rs ≥ rt then Trap
                        when FUNCT_TGEU =>
                        
                        -- TLT rs, rt               if rs < rt then Trap
                        when FUNCT_TLT =>
                        
                        -- TLTU rs, rt              if rs < rt then Trap
                        when FUNCT_TLTU =>
                        
                        -- TEQ rs, rt               if rs = rt then Trap
                        when FUNCT_TEQ =>
                        
                        -- TNE rs, rt               if rs ≠ rt then Trap
                        when FUNCT_TNE =>
                            
                        when others =>
                            
                    end case special_funct;
                
                -- REGIMM type instructions
            	when OP_REGIMM =>
            		regimm_rt: case reg_t is
            			
	            		-- BLTZ rs, offset					if rs < 0 then branch
	            		when RT_BLTZ =>
	            			op_o <= OP_TYPE_BRANCH;
                            funct_o <= FUNCT_TYPE_BLTZ;
                            reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                            reg_rd_en_2_o <= REG_RD_DISABLE;  -- do not read rt
                            reg_wt_en_o <= REG_WT_DISABLE;  -- do not write
                            if SIGNED(reg_rd_data_1_i) < 0 then
                            	branch_o <= BRANCH;
                            	branch_target_addr_o <= branch_addr_offset + next_pc;
                            	next_inst_in_delayslot_o <= DELAYSLOT;
                            end if;
	            		
	            		-- BGEZ rs, offset					if rs ≥ 0 then branch
	            		when RT_BGEZ =>
	            			op_o <= OP_TYPE_BRANCH;
                            funct_o <= FUNCT_TYPE_BGEZ;
                            reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                            reg_rd_en_2_o <= REG_RD_DISABLE;  -- do not read rt
                            reg_wt_en_o <= REG_WT_DISABLE;  -- do not write
                            if SIGNED(reg_rd_data_1_i) >= 0 then
                            	branch_o <= BRANCH;
                            	branch_target_addr_o <= branch_addr_offset + next_pc;
                            	next_inst_in_delayslot_o <= DELAYSLOT;
                            end if;
	            		
	            		-- BLTZL rs, offset					if rs < 0 then branch_likely
	            		when RT_BLTZL =>
	            		
	            		-- BGEZL rs, offset					if rs ≥ 0 then branch_likely
	            		when RT_BGEZL =>
	            		
	            		-- TGEI rs, immediate				if rs ≥ immediate then Trap
	            		when RT_TGEI =>
	            		
	            		-- TGEIU rs, immediate				if rs ≥ immediate then Trap
	            		when RT_TGEIU =>
	            		
	            		-- TLTI rs, immediate				if rs < immediate then Trap
	            		when RT_TLTI =>
	            		
	            		-- TLTIU rs, immediate				if rs < immediate then Trap
	            		when RT_TLTIU =>
						
						-- TEQI rs, immediate				if rs = immediate then Trap
						when RT_TEQI =>
						
						-- TNEI rs, immediate				if rs ≠ immediate then Trap
						when RT_TNEI =>
						
						-- BLTZAL rs, offset				if rs < 0 then procedure_call
						when RT_BLTZAL =>
							op_o <= OP_TYPE_BRANCH;
                            funct_o <= FUNCT_TYPE_BLTZAL;
                            reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                            reg_rd_en_2_o <= REG_RD_DISABLE;  -- do not read rt
                            reg_wt_en_o <= REG_WT_ENABLE;  -- write $31
                            reg_wt_addr_o <= REG_31_ADDR;
                            if SIGNED(reg_rd_data_1_i) < 0 then
                            	branch_o <= BRANCH;
                            	branch_target_addr_o <= branch_addr_offset + next_pc;
                            	link_addr_o <= pc_i + b"1000";
                            	next_inst_in_delayslot_o <= DELAYSLOT;
                            end if;
						
						-- BGEZAL rs, offset				if rs ≥ 0 then procedure_call
						when RT_BGEZAL =>
							op_o <= OP_TYPE_BRANCH;
                            funct_o <= FUNCT_TYPE_BGEZAL;
                            reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                            reg_rd_en_2_o <= REG_RD_DISABLE;  -- do not read rt
                            reg_wt_en_o <= REG_WT_ENABLE;  -- write $31
                            reg_wt_addr_o <= REG_31_ADDR;
                            if SIGNED(reg_rd_data_1_i) >= 0 then
                            	branch_o <= BRANCH;
                            	branch_target_addr_o <= branch_addr_offset + next_pc;
                            	link_addr_o <= pc_i + b"1000";
                            	next_inst_in_delayslot_o <= DELAYSLOT;
                            end if;
						
						-- BLTZALL rs, offset				if rs < 0 then procedure_call_likely
						when RT_BLTZALL =>
	
						-- BGEZALL rs, offset				if rs ≥ 0 then procedure_call_likely
						when RT_BGEZALL =>
							
						when others =>
	            		
	            	end case regimm_rt;
                
                -- SPECIAL2 type instructions
                when OP_SPECIAL2 =>
                    special2_funct: case funct is
                        -- MADD rs, rt              (LO,HI) ← (rs x rt) + (LO,HI)
                        when FUNCT_MADD =>
                            op_o <= OP_TYPE_ARITH;
                            funct_o <= FUNCT_TYPE_MADD;
                            reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                            reg_rd_en_2_o <= REG_RD_ENABLE;  -- read rt
                            reg_wt_en_o <= REG_WT_DISABLE;  -- do not write
                        
                        -- MADDU rs, rt             (LO,HI) ← (rs x rt) + (LO,HI)
                        when FUNCT_MADDU =>
                            op_o <= OP_TYPE_ARITH;
                            funct_o <= FUNCT_TYPE_MADDU;
                            reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                            reg_rd_en_2_o <= REG_RD_ENABLE;  -- read rt
                            reg_wt_en_o <= REG_WT_DISABLE;  -- do not write
                        
                        -- MSUB rs, rt              (LO,HI) ← (rs x rt) - (LO,HI)
                        when FUNCT_MSUB =>
                            op_o <= OP_TYPE_ARITH;
                            funct_o <= FUNCT_TYPE_MSUB;
                            reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                            reg_rd_en_2_o <= REG_RD_ENABLE;  -- read rt
                            reg_wt_en_o <= REG_WT_DISABLE;  -- do not write
                        
                        -- MSUBU rs, rt             (LO,HI) ← (rs x rt) - (LO,HI)
                        when FUNCT_MSUBU =>
                            op_o <= OP_TYPE_ARITH;
                            funct_o <= FUNCT_TYPE_MSUBU;
                            reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                            reg_rd_en_2_o <= REG_RD_ENABLE;  -- read rt
                            reg_wt_en_o <= REG_WT_DISABLE;  -- do not write
                        
                        -- MUL rd, rs, rt           rd ← rs × rt
                        when FUNCT_MUL =>
                            op_o <= OP_TYPE_ARITH;
                            funct_o <= FUNCT_TYPE_MUL;
                            reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                            reg_rd_en_2_o <= REG_RD_ENABLE;  -- read rt
                            reg_wt_en_o <= REG_WT_ENABLE;  -- write rd
                        
                        -- CLZ rd, rs               rd ← count_leading_zeros rs
                        when FUNCT_CLZ =>
                            op_o <= OP_TYPE_ARITH;
                            funct_o <= FUNCT_TYPE_CLZ;
                            reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                            reg_rd_en_2_o <= REG_RD_DISABLE;  -- do not read rt
                            reg_wt_en_o <= REG_WT_ENABLE;  -- write rd
                        
                        -- CLO rd, rs               rd ← count_leading_ones rs
                        when FUNCT_CLO =>
                            op_o <= OP_TYPE_ARITH;
                            funct_o <= FUNCT_TYPE_CLO;
                            reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                            reg_rd_en_2_o <= REG_RD_DISABLE;  -- do not read rt
                            reg_wt_en_o <= REG_WT_ENABLE;  -- write rd
                        
                        -- SDBBP code
                        when FUNCT_SDBBP =>
                        
                        when others =>
                        
                    end case special2_funct;
                
                -- COP0 type instructions
                when OP_COP0 =>
                    cop0_func:case( reg_s ) is
                        -- mtc0 rt td           CPR[0,rd] ← rt
                        when RS_MTC0 =>
                            op_o <= OP_TYPE_CP0;
                            funct_o <= FUNCT_TYPE_MTC0;
                            reg_rd_en_1_o <= REG_RD_DISABLE;  -- do not read rs
                            reg_rd_en_2_o <= REG_RD_ENABLE;  -- read rt
                            reg_wt_en_o <= REG_WT_DISABLE;  -- do not write rt
                
                        -- mfc0 rt td           CPR[rt] ← CPR[0,rd]
                        when RS_MFC0 =>           
                            op_o <= OP_TYPE_CP0;
                            funct_o <= FUNCT_TYPE_MFC0;
                            reg_rd_en_1_o <= REG_RD_DISABLE;  -- do not read rs
                            reg_rd_en_2_o <= REG_RD_DISABLE;  -- do not read rt
                            reg_wt_en_o <= REG_WT_ENABLE;  -- write rt
                            reg_wt_addr_o <= reg_t;
                        when others =>
                    
                    end case ;
                -- COP1 type instructions                                
                when OP_COP1 =>
                
                -- COP2 type instructions
                when OP_COP2 =>
                
                -- COP3 type instructions
                when OP_COP3 =>
                
                -- ADDI rt, rs, immediate               rt ← rs + immediate
                -- Exception
                when OP_ADDI =>
                    op_o <= OP_TYPE_ARITH;
                    funct_o <= FUNCT_TYPE_ADDI;
                    reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                    reg_rd_en_2_o <= REG_RD_DISABLE;  -- do not read rt
                    extended_imm(REG_DATA_LEN-1 downto IMM_LEN) := (others => imm(IMM_LEN-1));
                    extended_imm(IMM_LEN-1 downto 0) := imm;  -- sign extend imm
                    reg_wt_en_o <= REG_WT_ENABLE;  -- write rt
                    reg_wt_addr_o <= reg_t;
                
                -- ADDIU rt, rs, immediate              rt ← rs + immediate
                -- No Exception
                when OP_ADDIU =>
                    op_o <= OP_TYPE_ARITH;
                    funct_o <= FUNCT_TYPE_ADDIU;
                    reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                    reg_rd_en_2_o <= REG_RD_DISABLE;  -- do not read rt
                    extended_imm(REG_DATA_LEN-1 downto IMM_LEN) := (others => imm(IMM_LEN-1));
                    extended_imm(IMM_LEN-1 downto 0) := imm;  -- sign extend imm
                    reg_wt_en_o <= REG_WT_ENABLE;  -- write rt
                    reg_wt_addr_o <= reg_t;
                
                -- ANDI rt, rs, immediate               rt ← rs AND immediate
                when OP_ANDI =>
                    op_o <= OP_TYPE_LOGIC;
                    funct_o <= FUNCT_TYPE_AND;
                    reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                    reg_rd_en_2_o <= REG_RD_DISABLE;  -- do not read rt
                    extended_imm := x"0000" & imm;  -- zero extend imm
                    reg_wt_en_o <= REG_WT_ENABLE;  -- write rt
                    reg_wt_addr_o <= reg_t;
                
                -- ORI rt, rs, immediate                rt ← rs or immediate
                when OP_ORI =>
                    op_o <= OP_TYPE_LOGIC;
                    funct_o <= FUNCT_TYPE_OR;
                    reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                    reg_rd_en_2_o <= REG_RD_DISABLE;  -- do not read rt
                    extended_imm := x"0000" & imm;  -- zero extend imm
                    reg_wt_en_o <= REG_WT_ENABLE;  -- write rt
                    reg_wt_addr_o <= reg_t;
                
                -- XORI rt, rs, immediate               rt ← rs XOR immediate
                when OP_XORI =>
                    op_o <= OP_TYPE_LOGIC;
                    funct_o <= FUNCT_TYPE_XOR;
                    reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                    reg_rd_en_2_o <= REG_RD_DISABLE;  -- do not read rt
                    extended_imm := x"0000" & imm;  -- zero extend imm
                    reg_wt_en_o <= REG_WT_ENABLE;  -- write rt
                    reg_wt_addr_o <= reg_t;
                
                -- LUI rt, immediate                    rt ← immediate || 0^16
                when OP_LUI =>
                    op_o <= OP_TYPE_LOGIC;
                    funct_o <= FUNCT_TYPE_OR;  -- LUI rt, immediate = ORI rt, $0, (immediate || 0^16)  
                    reg_rd_en_1_o <= REG_RD_DISABLE;  -- read rs
                    reg_rd_en_2_o <= REG_RD_ENABLE;  -- do not read rt
                    extended_imm := imm & x"0000";  -- zero extend imm
                    -- write rt
                    reg_wt_en_o <= REG_WT_ENABLE;
                    reg_wt_addr_o <= reg_t;
                
                -- J target                             To branch within the current 256 MB-aligned region
            	when OP_J =>
            		op_o <= OP_TYPE_BRANCH;
                    funct_o <= FUNCT_TYPE_J;
                    reg_rd_en_1_o <= REG_RD_DISABLE;  -- do not read rs
                    reg_rd_en_2_o <= REG_RD_DISABLE;  -- do not read rt
                    reg_wt_en_o <= REG_WT_DISABLE;  -- do not write
                    branch_o <= BRANCH;
                    branch_target_addr_o <= next_pc(31 downto 28) & jump_addr & b"00";
                    next_inst_in_delayslot_o <= DELAYSLOT;
                
                -- JAL target                           To execute a procedure call within the current 256 MB-aligned region
                when OP_JAL =>
                	op_o <= OP_TYPE_BRANCH;
                    funct_o <= FUNCT_TYPE_JAL;
                    reg_rd_en_1_o <= REG_RD_DISABLE;  -- do not read rs
                    reg_rd_en_2_o <= REG_RD_DISABLE;  -- do not read rt
                    reg_wt_en_o <= REG_WT_ENABLE;  -- write $31
                    reg_wt_addr_o <= REG_31_ADDR;
                    branch_o <= BRANCH;
                    branch_target_addr_o <= next_pc(31 downto 28) & jump_addr & b"00";
                    link_addr_o <= pc_i + b"1000";
                    next_inst_in_delayslot_o <= DELAYSLOT;
                	
                -- BEQ rs, rt, offset                   if rs = rt then branch
	            when OP_BEQ =>
	            	op_o <= OP_TYPE_BRANCH;
                    funct_o <= FUNCT_TYPE_BEQ;
                    reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                    reg_rd_en_2_o <= REG_RD_ENABLE;  -- read rt
                    reg_wt_en_o <= REG_WT_DISABLE;  -- do not write
                    if reg_rd_data_1_i = reg_rd_data_2_i then
                    	branch_o <= BRANCH;
                    	branch_target_addr_o <= branch_addr_offset + next_pc;
                    	next_inst_in_delayslot_o <= DELAYSLOT;
                    end if;
                
                -- BNE rs, rt, offset                   if rs ≠ rt then branch
                when OP_BNE =>
                	op_o <= OP_TYPE_BRANCH;
                    funct_o <= FUNCT_TYPE_BNE;
                    reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                    reg_rd_en_2_o <= REG_RD_ENABLE;  -- read rt
                    reg_wt_en_o <= REG_WT_DISABLE;  -- do not write
                    if not(reg_rd_data_1_i = reg_rd_data_2_i) then
                    	branch_o <= BRANCH;
                    	branch_target_addr_o <= branch_addr_offset + next_pc;
                    	next_inst_in_delayslot_o <= DELAYSLOT;
                    end if;
                
                -- BLEZ rs, offset                      if rs ≤ 0 then branch
           	 	when OP_BLEZ =>
            		op_o <= OP_TYPE_BRANCH;
                    funct_o <= FUNCT_TYPE_BEQ;
                    reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                    reg_rd_en_2_o <= REG_RD_DISABLE;  -- do not read rt
                    reg_wt_en_o <= REG_WT_DISABLE;  -- do not write
                    if SIGNED(reg_rd_data_1_i) <= 0 then
                    	branch_o <= BRANCH;
                    	branch_target_addr_o <= branch_addr_offset + next_pc;
                    	next_inst_in_delayslot_o <= DELAYSLOT;
                    end if;
                
                -- BGTZ rs, offset                      if rs > 0 then branch
                when OP_BGTZ =>
                	op_o <= OP_TYPE_BRANCH;
                    funct_o <= FUNCT_TYPE_BEQ;
                    reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                    reg_rd_en_2_o <= REG_RD_DISABLE;  -- do not read rt
                    reg_wt_en_o <= REG_WT_DISABLE;  -- do not write
                    if SIGNED(reg_rd_data_1_i) > 0 then
                    	branch_o <= BRANCH;
                    	branch_target_addr_o <= branch_addr_offset + next_pc;
                    	next_inst_in_delayslot_o <= DELAYSLOT;
                    end if;
                    
                -- BEQL rs, rt, offset                  if rs = rt then branch_likely
                when OP_BEQL =>
                
                -- BNEL rs, rt, offset                  if rs ≠ rt then branch_likely
                when OP_BNEL =>
                
                -- BLEZL rs, rt, offset                 if rs ≤ 0 then branch_likely
                when OP_BLEZL =>
                
                -- BGTZL rs, rt, offset                 if rs > 0 then branch_likely
                when OP_BGTZL =>
                
                -- SLTI rt, rs, immediate               rt ← (rs < immediate)
                when OP_SLTI =>
                    op_o <= OP_TYPE_ARITH;
                    funct_o <= FUNCT_TYPE_SLTI;
                    reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                    reg_rd_en_2_o <= REG_RD_DISABLE;  -- do not read rt
                    extended_imm(REG_DATA_LEN-1 downto IMM_LEN) := (others => imm(IMM_LEN-1));
                    extended_imm(IMM_LEN-1 downto 0) := imm;  -- sign extend imm
                    reg_wt_en_o <= REG_WT_ENABLE;  -- write rt
                    reg_wt_addr_o <= reg_t;
                
                -- SLTIU rt, rs, immediate              rt ← (rs < immediate)
                when OP_SLTIU =>
                    op_o <= OP_TYPE_ARITH;
                    funct_o <= FUNCT_TYPE_SLTIU;
                    reg_rd_en_1_o <= REG_RD_ENABLE;  -- read rs
                    reg_rd_en_2_o <= REG_RD_DISABLE;  -- do not read rt
                    extended_imm(REG_DATA_LEN-1 downto IMM_LEN) := (others => imm(IMM_LEN-1));
                    extended_imm(IMM_LEN-1 downto 0) := imm;  -- sign extend imm
                    reg_wt_en_o <= REG_WT_ENABLE;  -- write rt
                    reg_wt_addr_o <= reg_t;
                
                -- LB rt, offset(base)                  rt ← memory[base+offset]
            	when OP_LB =>
            		op_o <= OP_TYPE_LOAD_STORE;
                    funct_o <= FUNCT_TYPE_LB;
                    reg_rd_en_1_o <= REG_RD_ENABLE;  -- read base (rs)
                    reg_rd_en_2_o <= REG_RD_DISABLE;  -- do not read rt
                    reg_wt_en_o <= REG_WT_ENABLE;  -- write rt
                    reg_wt_addr_o <= reg_t;
                    extended_offset(DATA_LEN-1 downto IMM_LEN) := (others => offset(IMM_LEN-1));
                    extended_offset(IMM_LEN-1 downto 0) := offset;  -- sign extend offset
                
                -- LBU rt, offset(base)                 rt ← memory[base+offset]
	            when OP_LBU =>
	            	op_o <= OP_TYPE_LOAD_STORE;
                    funct_o <= FUNCT_TYPE_LBU;
                    reg_rd_en_1_o <= REG_RD_ENABLE;  -- read base (rs)
                    reg_rd_en_2_o <= REG_RD_DISABLE;  -- do not read rt
                    reg_wt_en_o <= REG_WT_ENABLE;  -- write rt
                    reg_wt_addr_o <= reg_t;
                    extended_offset(DATA_LEN-1 downto IMM_LEN) := (others => offset(IMM_LEN-1));
                    extended_offset(IMM_LEN-1 downto 0) := offset;  -- sign extend offset
                
                -- LH rt, offset(base)                  rt ← memory[base+offset]
                when OP_LH =>
                	op_o <= OP_TYPE_LOAD_STORE;
                    funct_o <= FUNCT_TYPE_LH;
                    reg_rd_en_1_o <= REG_RD_ENABLE;  -- read base (rs)
                    reg_rd_en_2_o <= REG_RD_DISABLE;  -- do not read rt
                    reg_wt_en_o <= REG_WT_ENABLE;  -- write rt
                    reg_wt_addr_o <= reg_t;
                    extended_offset(DATA_LEN-1 downto IMM_LEN) := (others => offset(IMM_LEN-1));
                    extended_offset(IMM_LEN-1 downto 0) := offset;  -- sign extend offset
                	
                -- LHU rt, offset(base)                 rt ← memory[base+offset]
                when OP_LHU =>
                	op_o <= OP_TYPE_LOAD_STORE;
                    funct_o <= FUNCT_TYPE_LHU;
                    reg_rd_en_1_o <= REG_RD_ENABLE;  -- read base (rs)
                    reg_rd_en_2_o <= REG_RD_DISABLE;  -- do not read rt
                    reg_wt_en_o <= REG_WT_ENABLE;  -- write rt
                    reg_wt_addr_o <= reg_t;
                    extended_offset(DATA_LEN-1 downto IMM_LEN) := (others => offset(IMM_LEN-1));
                    extended_offset(IMM_LEN-1 downto 0) := offset;  -- sign extend offset
                	
                -- LW rt, offset(base)                  rt ← memory[base+offset]
                when OP_LW =>
                	op_o <= OP_TYPE_LOAD_STORE;
                    funct_o <= FUNCT_TYPE_LW;
                    reg_rd_en_1_o <= REG_RD_ENABLE;  -- read base (rs)
                    reg_rd_en_2_o <= REG_RD_DISABLE;  -- do not read rt
                    reg_wt_en_o <= REG_WT_ENABLE;  -- write rt
                    reg_wt_addr_o <= reg_t;
                    extended_offset(DATA_LEN-1 downto IMM_LEN) := (others => offset(IMM_LEN-1));
                    extended_offset(IMM_LEN-1 downto 0) := offset;  -- sign extend offset
                
                -- LWL rt, offset(base)                 rt ← rt MERGE memory[base+offset]
                when OP_LWL =>
                	op_o <= OP_TYPE_LOAD_STORE;
                    funct_o <= FUNCT_TYPE_LWL;
                    reg_rd_en_1_o <= REG_RD_ENABLE;  -- read base (rs)
                    reg_rd_en_2_o <= REG_RD_ENABLE;  -- read rt
                    reg_wt_en_o <= REG_WT_ENABLE;  -- write rt
                    reg_wt_addr_o <= reg_t;
                    extended_offset(DATA_LEN-1 downto IMM_LEN) := (others => offset(IMM_LEN-1));
                    extended_offset(IMM_LEN-1 downto 0) := offset;  -- sign extend offset
                
                -- LWR rt, offset(base)                 rt ← rt MERGE memory[base+offset]
                when OP_LWR =>
                	op_o <= OP_TYPE_LOAD_STORE;
                    funct_o <= FUNCT_TYPE_LWR;
                    reg_rd_en_1_o <= REG_RD_ENABLE;  -- read base (rs)
                    reg_rd_en_2_o <= REG_RD_ENABLE;  -- read rt
                    reg_wt_en_o <= REG_WT_ENABLE;  -- write rt
                    reg_wt_addr_o <= reg_t;
                    extended_offset(DATA_LEN-1 downto IMM_LEN) := (others => offset(IMM_LEN-1));
                    extended_offset(IMM_LEN-1 downto 0) := offset;  -- sign extend offset
                
                -- SB rt, offset(base)                  memory[base+offset] ← rt
	            when OP_SB =>
	            	op_o <= OP_TYPE_LOAD_STORE;
                    funct_o <= FUNCT_TYPE_SB;
                    reg_rd_en_1_o <= REG_RD_ENABLE;  -- read base (rs)
                    reg_rd_en_2_o <= REG_RD_ENABLE;  -- read rt
                    reg_wt_en_o <= REG_WT_DISABLE;  -- do not write
                    extended_offset(DATA_LEN-1 downto IMM_LEN) := (others => offset(IMM_LEN-1));
                    extended_offset(IMM_LEN-1 downto 0) := offset;  -- sign extend offset
                    
                -- SH rt, offset(base)                  memory[base+offset] ← rt
                when OP_SH =>
                	op_o <= OP_TYPE_LOAD_STORE;
                    funct_o <= FUNCT_TYPE_SH;
                    reg_rd_en_1_o <= REG_RD_ENABLE;  -- read base (rs)
                    reg_rd_en_2_o <= REG_RD_ENABLE;  -- read rt
                    reg_wt_en_o <= REG_WT_DISABLE;  -- do not write
                    extended_offset(DATA_LEN-1 downto IMM_LEN) := (others => offset(IMM_LEN-1));
                    extended_offset(IMM_LEN-1 downto 0) := offset;  -- sign extend offset
                	
                -- SW rt, offset(base)                  memory[base+offset] ← rt
           	 	when OP_SW =>
            		op_o <= OP_TYPE_LOAD_STORE;
                    funct_o <= FUNCT_TYPE_SW;
                    reg_rd_en_1_o <= REG_RD_ENABLE;  -- read base (rs)
                    reg_rd_en_2_o <= REG_RD_ENABLE;  -- read rt
                    reg_wt_en_o <= REG_WT_DISABLE;  -- do not write
                    extended_offset(DATA_LEN-1 downto IMM_LEN) := (others => offset(IMM_LEN-1));
                    extended_offset(IMM_LEN-1 downto 0) := offset;  -- sign extend offset
                
                -- SWL rt, offset(base)                 memory[base+offset] ← rt
                when OP_SWL => 
					op_o <= OP_TYPE_LOAD_STORE;
                    funct_o <= FUNCT_TYPE_SWL;
                    reg_rd_en_1_o <= REG_RD_ENABLE;  -- read base (rs)
                    reg_rd_en_2_o <= REG_RD_ENABLE;  -- read rt
                    reg_wt_en_o <= REG_WT_DISABLE;  -- do not write
                    extended_offset(DATA_LEN-1 downto IMM_LEN) := (others => offset(IMM_LEN-1));
                    extended_offset(IMM_LEN-1 downto 0) := offset;  -- sign extend offset

                -- SWR rt, offset(base)                 memory[base+offset] ← rt
                when OP_SWR =>
                	op_o <= OP_TYPE_LOAD_STORE;
                    funct_o <= FUNCT_TYPE_SWR;
                    reg_rd_en_1_o <= REG_RD_ENABLE;  -- read base (rs)
                    reg_rd_en_2_o <= REG_RD_ENABLE;  -- read rt
                    reg_wt_en_o <= REG_WT_DISABLE;  -- do not write
                    extended_offset(DATA_LEN-1 downto IMM_LEN) := (others => offset(IMM_LEN-1));
                    extended_offset(IMM_LEN-1 downto 0) := offset;  -- sign extend offset                          
                
                when others =>
                                   
            end case op_code;
            
            if reg_rd_en_1_o = REG_RD_ENABLE then
                if (ex_reg_wt_en_i = REG_WT_ENABLE) and (ex_reg_wt_addr_i = reg_rd_addr_1_o) then  -- Solve data conflict
                    operand_1_o <= ex_reg_wt_data_i;
                elsif (mem_reg_wt_en_i = REG_WT_ENABLE) and (mem_reg_wt_addr_i = reg_rd_addr_1_o) then  -- Solve data conflict
                    operand_1_o <= mem_reg_wt_data_i;
                else
                	operand_1_o <= reg_rd_data_1_i;
                	-- Special case for $0
                	if reg_rd_addr_1_o = REG_ZERO_ADDR then
                		operand_1_o <= ZERO_DATA;
                	end if;
                end if;
            elsif reg_rd_en_1_o = REG_RD_DISABLE then
                operand_1_o <= extended_imm;
            else
                operand_1_o <= REG_ZERO_DATA;
            end if;
            
            if reg_rd_en_2_o = REG_RD_ENABLE then
                if (ex_reg_wt_en_i = REG_WT_ENABLE) and (ex_reg_wt_addr_i = reg_rd_addr_2_o) then  -- Solve data conflict
                    operand_2_o <= ex_reg_wt_data_i;
                elsif (mem_reg_wt_en_i = REG_WT_ENABLE) and (mem_reg_wt_addr_i = reg_rd_addr_2_o) then  -- Solve data conflict
                    operand_2_o <= mem_reg_wt_data_i;
                else
                	operand_2_o <= reg_rd_data_2_i;
                	-- Special case for $0
                	if reg_rd_addr_2_o = REG_ZERO_ADDR then
                		operand_2_o <= ZERO_DATA;
                	end if;
                end if;
            elsif reg_rd_en_2_o = REG_RD_DISABLE then
                operand_2_o <= extended_imm;
            else
                operand_2_o <= REG_ZERO_DATA;
            end if;
            
            extended_offset_o <= extended_offset;
	        
            /*
            deallocate(output);
            write(output, string'("inst = "));
            write(output, inst_i);
            report output.all;
            deallocate(output);
            write(output, string'("operand 1 = "));
            write(output, operand_1_o);
            report output.all;
            deallocate(output);
            write(output, string'("operand 2 = "));
            write(output, operand_2_o);
            report output.all;
            */
            
        end if;
    end process;
    
end Behavioral;
