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
-- rst:             Reset
-- pc_i:            input program counter (instruction address) from IF_to_ID
-- inst_i:          input instruction
-- reg_rd_data_1_i: input register 1 read data from REGISTERS
-- reg_rd_data_2_i: input register 2 read data from REGISTERS
-- op_o:            output custom op type to ID_to_EX
-- funct_o:         output custom funct type to ID_to_EX
-- reg_rd_en_1_o:   output register 1 read enable to REGISTERS
-- reg_rd_en_2_o:   output register 2 read enable to REGISTERS
-- reg_rd_addr_1_o: output register 1 read address to REGISTERS
-- reg_rd_addr_2_o: output register 2 read address to REGISTERS
-- operand_1_o:     output operand 1 to ID_to_EX
-- operand_2_o:     output operand 2 to ID_to_EX
-- reg_wt_en_o:     output register write enable to ID_to_EX
-- reg_wt_addr_o:   output register write address to ID_to_EX
entity ID is
    Port ( rst :                in STD_LOGIC;
           pc_i :               in STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);
           inst_i :             in STD_LOGIC_VECTOR(INST_LEN-1 downto 0);
           reg_rd_data_1_i :    in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
           reg_rd_data_2_i :    in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
           op_o :               out STD_LOGIC_VECTOR(OP_LEN-1 downto 0);
           funct_o :            out STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0);
           reg_rd_en_1_o :      out STD_LOGIC;
           reg_rd_en_2_o :      out STD_LOGIC;
           reg_rd_addr_1_o :    out STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);
           reg_rd_addr_2_o :    out STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);
           operand_1_o :        out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
           operand_2_o :        out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
           reg_wt_en_o :        out STD_LOGIC;
           reg_wt_addr_o :      out STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0));
end ID;

architecture Behavioral of ID is
    alias op :          STD_LOGIC_VECTOR(OP_LEN-1 downto 0) is inst_i(INST_LEN-1 downto INST_LEN-OP_LEN);
    alias reg_s :       STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0) is inst_i(INST_LEN-OP_LEN-1 downto INST_LEN-OP_LEN-REG_DATA_LEN);
    alias reg_t :       STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0)  is inst_i(INST_LEN-OP_LEN-1 downto INST_LEN-OP_LEN-REG_DATA_LEN);
    alias reg_d :       STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0)  is inst_i(INST_LEN-OP_LEN-REG_DATA_LEN-1 downto INST_LEN-OP_LEN-2*REG_DATA_LEN-1);
    alias shamt :       STD_LOGIC_VECTOR(SHAMT_LEN-1 downto 0) is inst_i(SHAMT_LEN+FUNCT_LEN-1 downto FUNCT_LEN);
    alias funct :       STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) is inst_i(FUNCT_LEN-1 downto 0);
    alias imm :         STD_LOGIC_VECTOR(IMM_LEN-1 downto 0) is inst_i(IMM_LEN-1 downto 0);
    alias jump_addr :   STD_LOGIC_VECTOR(JUMP_ADDR_LEN-1 downto 0) is inst_i(JUMP_ADDR_LEN-1 downto 0);
    signal extended_imm : STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
    signal reg_rd_en_1 : STD_LOGIC;
    signal reg_rd_en_2 : STD_LOGIC;
begin
    process (all)
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
            
        else
            
            -- Decide OP type
            op_code: case op is
            
                -- SPECIAL type instructions
                when OP_SPECIAL =>
                    special_funct: case funct is
                    
                        -- SLL $rd, $rt, imm
                        when FUNCT_SLL => 
                        
                        
                        when FUNCT_MOVCI =>
                        
                        
                        when FUNCT_OR =>
                            
                            
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
                                                             
            end case op_code;
            
            
        end if;
    end process;
    
    source_reg_1: process (all)
    begin
        if rst = RST_ENABLE then
            operand_1_o <= REG_ZERO_DATA;
        elsif reg_rd_en_1 = REG_RD_ENABLE then
            operand_1_o <= reg_rd_data_1_i;
        elsif reg_rd_en_1 = REG_RD_DISABLE then
            operand_1_o <= extended_imm;
        else
            operand_1_o <= REG_ZERO_DATA;
        end if;
    end process source_reg_1;
    
    source_reg_2: process (all)
    begin
        if rst = RST_ENABLE then
            operand_2_o <= REG_ZERO_DATA;
        elsif reg_rd_en_2 = REG_RD_ENABLE then
            operand_2_o <= reg_rd_data_2_i;
        elsif reg_rd_en_1 = REG_RD_DISABLE then
            operand_2_o <= extended_imm;
        else
            operand_2_o <= REG_ZERO_DATA;
        end if;
    end process source_reg_2;
    
end Behavioral;
