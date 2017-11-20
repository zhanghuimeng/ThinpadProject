----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2017/11/12 00:33:04
-- Design Name: 
-- Module Name: EX - Behavioral
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

-- EX Module of CPU
-- Combinatory Logic

entity EX is
    Port ( rst :            in STD_LOGIC;                                       -- Reset
           op_i :           in STD_LOGIC_VECTOR(OP_LEN-1 downto 0);             -- input custom op type from ID/EX
           funct_i :        in STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0);          -- input custom op type from ID/EX
           operand_1_i :    in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input operand 1 from ID/EX
           operand_2_i :    in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input operand 2 from ID/EX
           reg_wt_en_i :    in STD_LOGIC;                                       -- input register write enable from ID/EX
           reg_wt_addr_i :  in STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);       -- input register write address from ID/EX
           hi_i :           in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input LO data from HI_LO
           lo_i :           in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input HI data from HI_LO
           mem_hilo_en_i :  in STD_LOGIC;                                       -- input HI_LO write enable from MEM
           mem_hi_i :       in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input LO data from MEM
           mem_lo_i :       in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input HI data from MEM
           wb_hilo_en_i:    in STD_LOGIC;                                       -- input HI_LO write enable from MEM/WB
           wb_hi_i :        in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input LO data from MEM/WB
           wb_lo_i :        in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input HI data from MEM/WB
           reg_wt_en_o :    out STD_LOGIC;                                      -- output register write enable to EX/MEM
           reg_wt_addr_o :  out STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);      -- output register write address to EX/MEM
           reg_wt_data_o :  out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);      -- output register write data to EX/MEM
           hilo_en_o :      out STD_LOGIC;                                      -- output HI_LO write enable to EX/MEM
           hi_o :           out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);      -- output HI data to EX/MEM
           lo_o :           out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0));     -- output LO data to EX/MEM
end EX;

architecture Behavioral of EX is
    
begin
    process (all)
    variable output: LINE;
    variable operand_1: UNSIGNED(DATA_LEN-1 downto 0);
    variable operand_2: UNSIGNED(DATA_LEN-1 downto 0);
    variable sum_result: UNSIGNED(DATA_LEN downto 0);
    variable overflow: STD_LOGIC;
    variable compare_result: STD_LOGIC;
    variable operand_mul_1: STD_LOGIC_VECTOR(DATA_LEN-1 downto 0);
    variable operand_mul_2: STD_LOGIC_VECTOR(DATA_LEN-1 downto 0);
    variable mul_sign: STD_LOGIC;
    variable mult_result: STD_LOGIC_VECTOR(DOUBLE_DATA_LEN-1 downto 0);
    begin
        if rst = RST_ENABLE then
            reg_wt_data_o <= REG_ZERO_DATA;
            reg_wt_addr_o <= REG_ZERO_ADDR;
            reg_wt_en_o <= REG_WT_DISABLE;
            hilo_en_o <= CHIP_DISABLE;
            hi_o <= REG_ZERO_DATA;
            lo_o <= REG_ZERO_DATA;
        else
            reg_wt_addr_o <= reg_wt_addr_i;
            reg_wt_en_o <= reg_wt_en_i;
            hilo_en_o <= CHIP_DISABLE;
            -- So that the HILO register can immediately get value?
            hi_o <= hi_i;
            if mem_hilo_en_i = CHIP_ENABLE then
                hi_o <= mem_hi_i;
            elsif wb_hilo_en_i = CHIP_ENABLE then
                hi_o <= wb_hi_i;
            end if;
            lo_o <= lo_i;
            if mem_hilo_en_i = CHIP_ENABLE then
                lo_o <= mem_lo_i;
            elsif wb_hilo_en_i = CHIP_ENABLE then
                lo_o <= wb_lo_i;
            end if;
            
            -- For addition, subtraction and signed comparation instructions
            operand_1 := unsigned(operand_1_i);
            if (funct_i = FUNCT_TYPE_SUB) or (funct_i = FUNCT_TYPE_SUBU) or (funct_i = FUNCT_TYPE_SLT) or(funct_i = FUNCT_TYPE_SLTI) then
            	operand_2 := unsigned((not operand_2_i) + b"1");
            else
            	operand_2 := unsigned(operand_2_i);
            end if;
            sum_result := unsigned(b"0" & operand_1) + unsigned(b"0" & operand_2);
            overflow := '0';
            -- Overflow
            if (operand_1(REG_DATA_LEN-1) = '0') and (operand_2(REG_DATA_LEN-1) = '0') and (sum_result(REG_DATA_LEN-1) = '1') then
                overflow := '1';
            end if;
            if (operand_1(REG_DATA_LEN-1) = '1') and (operand_2(REG_DATA_LEN-1) = '1') and (sum_result(REG_DATA_LEN-1) = '0') then
                overflow := '1';
            end if;
            
            compare_result := '0';
            -- For compare instructions (less than)
            if (funct_i = FUNCT_TYPE_SLT) or (funct_i = FUNCT_TYPE_SLTI) then  -- signed comparation
                if (operand_1_i(DATA_LEN-1) = '1') and (operand_2_i(DATA_LEN-1) = '0') then
                    compare_result := '1';
                elsif (operand_1_i(DATA_LEN-1) = operand_2_i(DATA_LEN-1)) and (sum_result(DATA_LEN-1) = '1') then
                    compare_result := '1';
                end if;
            elsif (funct_i = FUNCT_TYPE_SLTU) or (funct_i = FUNCT_TYPE_SLTIU) then  -- unsigned comparation
                if unsigned(operand_1_i) < unsigned (operand_2_i) then
                    compare_result := '1';
                end if;
            end if;
            
            -- For signed multiply instructions
            mul_sign := '0';
            if operand_1_i(DATA_LEN-1) = '1' then
                operand_mul_1 := (not operand_1_i) + b"1";
                mul_sign := not mul_sign;
            else
                operand_mul_1 := operand_1_i;
            end if;
            if operand_2_i(DATA_LEN-1) = '1' then
                operand_mul_2 := (not operand_2_i) + b"1";
                mul_sign := not mul_sign;
            else
                operand_mul_2 := operand_2_i;
            end if;
            mult_result := std_logic_vector(signed(operand_mul_1) * signed(operand_mul_2));
            
            op_code: case op_i is
                -- Do nothing
                when OP_TYPE_NOP =>
                
                when OP_TYPE_ARITH =>
                    arith_funct: case funct_i is
                        -- Addition with exception
                    	when FUNCT_TYPE_ADD | FUNCT_TYPE_ADDI =>
                            if overflow = '1' then
                                reg_wt_en_o <= REG_WT_DISABLE;
                            else
                                reg_wt_data_o <= std_logic_vector(sum_result(REG_DATA_LEN-1 downto 0));
                            end if;

                        -- Addition without exception
                        when FUNCT_TYPE_ADDIU | FUNCT_TYPE_ADDU =>
                            deallocate(output);
                            write(output, string'("sum = "));
                            write(output, sum_result);
                            report output.all;
                            reg_wt_data_o <= std_logic_vector(sum_result(REG_DATA_LEN-1 downto 0));
                       
                        -- Subtraction with exception
                        when FUNCT_TYPE_SUB =>
                            if overflow = '1' then
                                reg_wt_en_o <= REG_WT_DISABLE;
                            else
                                reg_wt_data_o <= std_logic_vector(sum_result(REG_DATA_LEN-1 downto 0));
                            end if;
                            
                         -- Subtraction without exception
                        when FUNCT_TYPE_SUBU =>
                           reg_wt_data_o <= std_logic_vector(sum_result(REG_DATA_LEN-1 downto 0));

                        -- Count leading ones
                        when FUNCT_TYPE_CLO =>
                            reg_wt_data_o <= std_logic_vector(to_unsigned(count_leading_ones(operand_1_i), REG_DATA_LEN));
                            
                        -- Count leading zeros
                        when FUNCT_TYPE_CLZ =>
                            reg_wt_data_o <= std_logic_vector(to_unsigned(count_leading_zeros(operand_1_i), REG_DATA_LEN));
                        -- 
                        when FUNCT_TYPE_SLT | FUNCT_TYPE_SLTI | FUNCT_TYPE_SLTIU | FUNCT_TYPE_SLTU =>
                            reg_wt_data_o <= x"0000000" & b"000" & compare_result;
                        
                        when FUNCT_TYPE_MUL =>
                        	deallocate(output);
                            write(output, string'("MUL, mult_result = "));
                            write(output, mult_result);
                            report output.all;
                            if mul_sign = '1' then
                                mult_result := (not mult_result) + b"1";
                            end if;
                            reg_wt_data_o <= mult_result(REG_DATA_LEN-1 downto 0);
                            
                        when FUNCT_TYPE_MULT =>
                        	deallocate(output);
                            write(output, string'("MULT, mult_result = "));
                            write(output, mult_result);
                            report output.all;
                            if mul_sign = '1' then
                                mult_result := (not mult_result) + b"1";
                            end if;
                            hilo_en_o <= CHIP_ENABLE;
                            hi_o <= mult_result(DOUBLE_DATA_LEN-1 downto REG_DATA_LEN);
                            lo_o <= mult_result(REG_DATA_LEN-1 downto 0);
                            
                        when FUNCT_TYPE_MULTU =>
                        	mult_result := std_logic_vector(unsigned(operand_1_i) * unsigned(operand_2_i));
                            hilo_en_o <= CHIP_ENABLE;
                            hi_o <= mult_result(DOUBLE_DATA_LEN-1 downto REG_DATA_LEN);
                            lo_o <= mult_result(REG_DATA_LEN-1 downto 0);
                        
                        when others =>
                        
                    end case arith_funct;
                
                when OP_TYPE_LOGIC =>
                    logic_funct: case funct_i is
                        -- or instructions
                        when FUNCT_TYPE_AND =>
                            reg_wt_data_o <= (operand_1_i and operand_2_i);

                        -- or instructions
                        when FUNCT_TYPE_OR =>
                            reg_wt_data_o <= (operand_1_i or operand_2_i);
                        
                        -- or instructions
                        when FUNCT_TYPE_XOR =>
                            reg_wt_data_o <= (operand_1_i xor operand_2_i);
                        
                        -- or instructions
                        when FUNCT_TYPE_NOR =>
                            reg_wt_data_o <= (operand_1_i nor operand_2_i);
                        
                        when others =>
                            
                    end case logic_funct;
                
                when OP_TYPE_SHIFT =>
                    shift_funct: case funct_i is
                        -- shift left logic instructions
                        when FUNCT_TYPE_SHIFT_LEFT_LOGIC =>
                            reg_wt_data_o <= (operand_2_i sll to_integer(unsigned(operand_1_i(4 downto 0))));  
                        
                        -- shift right logic instructions
                        when FUNCT_TYPE_SHIFT_RIGHT_LOGIC =>
                            reg_wt_data_o <= (operand_2_i srl to_integer(unsigned(operand_1_i(4 downto 0))));  
                        
                        -- shift right arithmetic instructions
                        when FUNCT_TYPE_SHIFT_RIGHT_ARITH =>
                            reg_wt_data_o <= ((to_stdlogicvector(to_bitvector(std_logic_vector(operand_2_i)) sra to_integer(unsigned(operand_1_i(4 downto 0))))));
                    
                        when others =>
                    
                    end case shift_funct;
                
                when OP_TYPE_MOVE =>
                    move_funct: case funct_i is
                        -- MOVZ
                        when FUNCT_TYPE_MOVE_ZERO =>
                            if operand_2_i = REG_ZERO_DATA then
                                reg_wt_en_o <= REG_WT_ENABLE;
                            end if;
                            reg_wt_data_o <= operand_1_i;
                        
                        -- MOVN
                        when FUNCT_TYPE_MOVE_NOT_ZERO =>
                            if not(operand_2_i = REG_ZERO_DATA) then
                                reg_wt_en_o <= REG_WT_ENABLE;
                            end if;
                            reg_wt_data_o <= operand_1_i;
                        
                        -- MFHI
                        -- Solve data conflict issue
                        when FUNCT_TYPE_MOVE_FROM_HI =>
                            reg_wt_data_o <= hi_o;
                        
                        -- MTHI
                        when FUNCT_TYPE_MOVE_TO_HI =>
                            hilo_en_o <= CHIP_ENABLE;
                            hi_o <= operand_1_i;
                        
                        -- MFLO
                        when FUNCT_TYPE_MOVE_FROM_LO =>
                            reg_wt_data_o <= lo_o;
                        
                        -- MTLO
                        when FUNCT_TYPE_MOVE_TO_LO =>
                            hilo_en_o <= CHIP_ENABLE;
                            lo_o <= operand_1_i;
                        
                        when others =>
                        
                    end case move_funct;
                
                when OP_TYPE_BRANCH =>
                
                when others =>
                
            end case op_code;
        end if;
    end process;

end Behavioral;
