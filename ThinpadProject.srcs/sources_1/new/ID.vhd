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
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
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

entity ID is
    Port ( rst :                in STD_LOGIC;                                       -- Reset
           pc_i :               in STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);      -- input program counter (instruction address) from IF_to_ID
           inst_i :             in STD_LOGIC_VECTOR(INST_LEN-1 downto 0);           -- input instruction from IF_to_ID
           reg_rd_data_1_i :    in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input register 1 read data from REGISTERS
           reg_rd_data_2_i :    in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input register 2 read data from REGISTERS
           ex_reg_wt_en_i :     in STD_LOGIC;                                       -- input EX register write enable from EX (push forward data to solve data conflict)
           ex_reg_wt_addr_i :   in STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);       -- input EX register write address from EX (push forward data to solve data conflict)
           ex_reg_wt_data_i :   in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input EX register write data from EX (push forward data to solve data conflict)
           mem_reg_wt_en_i :    in STD_LOGIC;                                       -- input MEM register write enable from MEM (push forward data to solve data conflict)
           mem_reg_wt_addr_i :  in STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);       -- input MEM register write address from MEM (push forward data to solve data conflict)
           mem_reg_wt_data_i :  in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input MEM register write data from MEM (push forward data to solve data conflict)
           op_o :               out STD_LOGIC_VECTOR(OP_LEN-1 downto 0);            -- output custom op type to ID_to_EX
           funct_o :            out STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0);         -- output custom funct type to ID_to_EX
           reg_rd_en_1_o :      out STD_LOGIC;                                      -- output register 1 read enable to REGISTERS
           reg_rd_en_2_o :      out STD_LOGIC;                                      -- output register 2 read enable to REGISTERS
           reg_rd_addr_1_o :    out STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);      -- output register 1 read address to REGISTERS
           reg_rd_addr_2_o :    out STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);      -- output register 2 read address to REGISTERS
           operand_1_o :        out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);      -- output operand 1 to ID_to_EX
           operand_2_o :        out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);      -- output operand 2 to ID_to_EX
           reg_wt_en_o :        out STD_LOGIC;                                      -- output register write enable to ID_to_EX
           reg_wt_addr_o :      out STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0));     -- output register write address to ID_to_EX
end ID;

architecture Behavioral of ID is
    alias op :          STD_LOGIC_VECTOR(OP_LEN-1 downto 0) is inst_i(INST_LEN-1 downto INST_LEN-OP_LEN);
    alias reg_s :       STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0) is inst_i(INST_LEN-OP_LEN-1 downto INST_LEN-OP_LEN-REG_ADDR_LEN);
    alias reg_t :       STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0)  is inst_i(INST_LEN-OP_LEN-REG_ADDR_LEN-1 downto INST_LEN-OP_LEN-2*REG_ADDR_LEN);
    alias reg_d :       STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0)  is inst_i(INST_LEN-OP_LEN-2*REG_ADDR_LEN-1 downto INST_LEN-OP_LEN-3*REG_ADDR_LEN);
    alias shamt :       STD_LOGIC_VECTOR(SHAMT_LEN-1 downto 0) is inst_i(SHAMT_LEN+FUNCT_LEN-1 downto FUNCT_LEN);
    alias funct :       STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) is inst_i(FUNCT_LEN-1 downto 0);
    alias imm :         STD_LOGIC_VECTOR(IMM_LEN-1 downto 0) is inst_i(IMM_LEN-1 downto 0);
    alias jump_addr :   STD_LOGIC_VECTOR(JUMP_ADDR_LEN-1 downto 0) is inst_i(JUMP_ADDR_LEN-1 downto 0);
    signal extended_imm : STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
    signal reg_rd_en_1 : STD_LOGIC;
    signal reg_rd_en_2 : STD_LOGIC;
    signal reg_rd_addr_1 :  STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);
    signal reg_rd_addr_2 :  STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);
begin
    process (all)
    variable output :       LINE;
    begin
        if rst = RST_ENABLE then
            op_o <= OP_TYPE_NOP;
            funct_o <= FUNCT_TYPE_NOP;
            reg_rd_en_1_o <= REG_RD_DISABLE;
            reg_rd_en_2_o <= REG_RD_DISABLE;
            reg_rd_addr_1_o <= REG_ZERO_ADDR;
            reg_rd_addr_1 <= REG_ZERO_ADDR;
            reg_rd_addr_2_o <= REG_ZERO_ADDR;
            reg_rd_addr_2 <= REG_ZERO_ADDR;
            operand_1_o <= REG_ZERO_DATA;
            operand_2_o <= REG_ZERO_DATA;
            reg_wt_en_o <= REG_WT_DISABLE;
            reg_wt_addr_o <= REG_ZERO_ADDR;
            
        else
            
            op_o <= OP_TYPE_NOP;
            funct_o <= FUNCT_TYPE_NOP;
            reg_rd_en_1_o <= REG_RD_DISABLE;
            reg_rd_en_1 <= REG_RD_DISABLE;
            reg_rd_en_2_o <= REG_RD_DISABLE;
            reg_rd_en_2 <= REG_RD_DISABLE;
            reg_rd_addr_1_o <= reg_s;  -- Default read register 1
            reg_rd_addr_1 <= reg_s;
            reg_rd_addr_2_o <= reg_t;  -- Default read register 2
            reg_rd_addr_2 <= reg_t;
            operand_1_o <= REG_ZERO_DATA;
            operand_2_o <= REG_ZERO_DATA;
            reg_wt_en_o <= REG_WT_DISABLE;
            reg_wt_addr_o <= REG_ZERO_ADDR;
    
            -- Decide OP type
            op_code: case op is
            
                -- SPECIAL type instructions
                when OP_SPECIAL =>
                    special_funct: case funct is
                    
                        -- SLL $rd, $rt, imm        rd ← rt << sa
                        when FUNCT_SLL => 
                        
                        -- ?????
                        when FUNCT_MOVCI =>
                        
                        -- SRL rd, rt, sa           rd ← rt >> sa (logical)
                        when FUNCT_SRL =>
                        
                        -- SRA rd, rt, sa           rd ← rt >> sa (arithmatic)
                        when FUNCT_SRA =>
                        
                        -- SLLV rd, rt, rs          rd ← rt << rs
                        when FUNCT_SLLV =>
                        
                        -- SRLV rd, rt, rs          rd ← rt >> rs (logical)
                        when FUNCT_SRLV =>
                        
                        -- SRAV rd, rt, rs          rd ← rt >> rs (arithmetic)
                        when FUNCT_SRAV => 
                        
                        -- JR rs                    PC ← rs
                        when FUNCT_JR => 
                        
                        -- JALR (rd, = 31) rs       rd ← return_addr, PC ← rs
                        when FUNCT_JALR =>
                        
                        -- MOVZ rd, rs, rt          if rt = 0 then rd ← rs
                        when FUNCT_MOVZ =>
                        
                        -- MOVN rd, rs, rt          if rt ≠ 0 then rd ← rs
                        when FUNCT_MOVN =>
                        
                        -- SYSCALL                  A system call exception occurs
                        when FUNCT_SYSCALL =>
                        
                        -- BREAK                    A breakpoint exception occurs
                        when FUNCT_BREAK =>
                        
                        -- SYNC (stype = 0 implied) To order loads and stores.
                        when FUNCT_SYNC =>
                        
                        -- MFHI rd                  rd ← HI
                        when FUNCT_MFHI =>
                        
                        -- MTHI rs                  HI ← rs
                        when FUNCT_MTHI =>
                        
                        -- MFLO rd                  rd ← LO
                        when FUNCT_MFLO =>
                        
                        -- MTLO rs                  LO ← rs
                        when FUNCT_MTLO =>
                        
                        -- MULT rs, rt              (LO, HI) ← rs × rt
                        when FUNCT_MULT =>
                        
                        -- MULTU rs, rt             (LO, HI) ← rs × rt
                        when FUNCT_MULTU =>
                        
                        -- DIV rs, rt               (LO, HI) ← rs / rt
                        when FUNCT_DIV =>
                        
                        -- DIVU rs, rt              (LO, HI) ← rs / rt
                        when FUNCT_DIVU =>
                        
                        -- ADD rd, rs, rt           rd ← rs + rt
                        when FUNCT_ADD =>
                        
                        -- ADDU rd, rs, rt          rd ← rs + rt
                        when FUNCT_ADDU =>
                        
                        -- SUB rd, rs, rt           rd ← rs - rt
                        when FUNCT_SUB =>
                        
                        -- SUBU rd, rs, rt          rd ← rs - rt
                        when FUNCT_SUBU =>
                        
                        -- AND rd, rs, rt           rd ← rs AND rt
                        when FUNCT_AND =>
                            op_o <= OP_TYPE_LOGIC;
                            funct_o <= FUNCT_TYPE_AND;
                            -- read rs
                            reg_rd_en_1_o <= REG_RD_ENABLE;
                            reg_rd_en_1 <= REG_RD_ENABLE;
                            -- read rt
                            reg_rd_en_2_o <= REG_RD_ENABLE; 
                            reg_rd_en_2 <= REG_RD_ENABLE; 
                            -- write rd
                            reg_wt_en_o <= REG_WT_ENABLE;
                            reg_wt_addr_o <= reg_d;
        
                        -- OR rd, rs, rt            rd ← rs or rt
                        when FUNCT_OR =>
                            op_o <= OP_TYPE_LOGIC;
                            funct_o <= FUNCT_TYPE_OR;
                            -- read rs
                            reg_rd_en_1_o <= REG_RD_ENABLE;
                            reg_rd_en_1 <= REG_RD_ENABLE;
                            -- read rt
                            reg_rd_en_2_o <= REG_RD_ENABLE; 
                            reg_rd_en_2 <= REG_RD_ENABLE; 
                            -- write rd
                            reg_wt_en_o <= REG_WT_ENABLE;
                            reg_wt_addr_o <= reg_d;
                                                    
                        -- XOR rd, rs, rt           rd ← rs XOR rt
                        when FUNCT_XOR =>
                            op_o <= OP_TYPE_LOGIC;
                            funct_o <= FUNCT_TYPE_XOR;
                            -- read rs
                            reg_rd_en_1_o <= REG_RD_ENABLE;
                            reg_rd_en_1 <= REG_RD_ENABLE;
                            -- read rt
                            reg_rd_en_2_o <= REG_RD_ENABLE; 
                            reg_rd_en_2 <= REG_RD_ENABLE; 
                            -- write rd
                            reg_wt_en_o <= REG_WT_ENABLE;
                            reg_wt_addr_o <= reg_d;
                        
                        -- NOR rd, rs, rt           rd ← rs NOR rt
                        when FUNCT_NOR =>
                            op_o <= OP_TYPE_LOGIC;
                            funct_o <= FUNCT_TYPE_NOR;
                            -- read rs
                            reg_rd_en_1_o <= REG_RD_ENABLE;
                            reg_rd_en_1 <= REG_RD_ENABLE;
                            -- read rt
                            reg_rd_en_2_o <= REG_RD_ENABLE; 
                            reg_rd_en_2 <= REG_RD_ENABLE; 
                            -- write rd
                            reg_wt_en_o <= REG_WT_ENABLE;
                            reg_wt_addr_o <= reg_d;
                        
                        -- SLT rd, rs, rt           rd ← (rs < rt)
                        when FUNCT_SLT =>
                        
                        -- SLTU rd, rs, rt          rd ← (rs < rt)
                        when FUNCT_SLTU =>
                        
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
                
                -- SPECIAL2 type instructions
                when OP_SPECIAL2 =>
                
                -- COP0 type instructions
                when OP_COP0 =>
                
                -- COP1 type instructions                                
                when OP_COP1 =>
                
                -- COP2 type instructions
                when OP_COP2 =>
                
                -- COP3 type instructions
                when OP_COP3 =>
                
                -- ADDI $rt, $rs, imm
                when OP_ADDI =>
                
                -- ADDIU $rt, $rs, imm
                when OP_ADDIU =>
                
                -- ANDI $rt, $rs, imm
                when OP_ANDI =>
                
                -- ORI $rt, $rs, imm
                when OP_ORI =>
                    op_o <= OP_TYPE_LOGIC;
                    funct_o <= FUNCT_TYPE_OR;
                    -- read rs
                    reg_rd_en_1_o <= REG_RD_ENABLE;
                    reg_rd_en_1 <= REG_RD_ENABLE;
                    -- do not read rt
                    reg_rd_en_2_o <= REG_RD_DISABLE; 
                    reg_rd_en_2 <= REG_RD_DISABLE; 
                    -- imm
                    extended_imm <= x"0000" & imm;
                    -- write rt
                    reg_wt_en_o <= REG_WT_ENABLE;
                    reg_wt_addr_o <= reg_t;
                    -- deallocate(output);
                    -- write(output, string'("REG write addr = "));
                    -- write(output, reg_wt_addr_o);
                    -- report output.all;
                    -- report ORI hit
                    -- deallocate(output);
                    -- write(output, string'("Hit ORI"));
                    -- report output.all;
                
                -- XORI $rt, $rs, imm
                when OP_XORI =>
                
                -- J target
                when OP_J =>
                
                -- JAL target
                when OP_JAL =>
                
                -- BEQ $rs, $rt, offset
                when OP_BEQ =>
                
                -- BNE $rs, $rt, offset
                when OP_BNE =>
                
                -- BLEZ $rs, offset
                when OP_BLEZ =>
                
                -- BGTZ $rs, offset
                when OP_BGTZ =>
                
                -- BEQL $rs, $rt, offset
                when OP_BEQL =>
                
                -- BNEL $rs, $rt, offset
                when OP_BNEL =>
                
                -- BLEZL $rs, $rt, offset
                when OP_BLEZL =>
                
                -- BGTZL $rs, $rt, offset
                when OP_BGTZL =>
                
                -- SLTI $rt, $rs, imm
                when OP_SLTI =>
                
                -- SLTIU $rt, $rs, imm
                when OP_SLTIU =>

                -- LUI $rt, imm
                when OP_LUI =>
                
                -- LB $rt, offset(base)
                when OP_LB =>
                
                -- LBU $rt, offset(base)
                when OP_LBU =>
                
                -- LH $rt, offset(base)
                when OP_LH =>
                
                -- LHU $rt, offset(base)
                when OP_LHU =>
                
                -- LW $rt, offset(base)
                when OP_LW =>
                
                -- LWL $rt, offset(base)
                when OP_LWL =>
                
                -- LWR $rt, offset(base)
                when OP_LWR =>
                
                -- SB $rt, offset(base)
                when OP_SB =>
                
                -- SH $rt, offset(base)
                when OP_SH =>
                
                -- SW $rt, offset(base)
                when OP_SW =>
                
                -- SWL $rt, offset(base)
                when OP_SWL => 

                -- SWR $rt, offset(base)
                when OP_SWR =>
                                          
                when others =>
                                   
            end case op_code;
            
            if reg_rd_en_1 = REG_RD_ENABLE then
                if (ex_reg_wt_en_i = REG_WT_ENABLE) and (ex_reg_wt_addr_i = reg_rd_addr_1) then  -- Solve data conflict
                    operand_1_o <= ex_reg_wt_data_i;
                elsif (mem_reg_wt_en_i = REG_WT_ENABLE) and (mem_reg_wt_addr_i = reg_rd_addr_1) then  -- Solve data conflict
                    operand_1_o <= mem_reg_wt_data_i;
                else
                    operand_1_o <= reg_rd_data_1_i;
                end if;
            elsif reg_rd_en_1 = REG_RD_DISABLE then
                operand_1_o <= extended_imm;
            else
                operand_1_o <= REG_ZERO_DATA;
            end if;
            
            if reg_rd_en_2 = REG_RD_ENABLE then
                if (ex_reg_wt_en_i = REG_WT_ENABLE) and (ex_reg_wt_addr_i = reg_rd_addr_2) then  -- Solve data conflict
                    operand_2_o <= ex_reg_wt_data_i;
                elsif (mem_reg_wt_en_i = REG_WT_ENABLE) and (mem_reg_wt_addr_i = reg_rd_addr_2) then  -- Solve data conflict
                    operand_2_o <= mem_reg_wt_data_i;
                else
                    operand_2_o <= reg_rd_data_2_i;
                end if;
            elsif reg_rd_en_2 = REG_RD_DISABLE then
                operand_2_o <= extended_imm;
            else
                operand_2_o <= REG_ZERO_DATA;
            end if;
            
        end if;
    end process;
    
end Behavioral;
