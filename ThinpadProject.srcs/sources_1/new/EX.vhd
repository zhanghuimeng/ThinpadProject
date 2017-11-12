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
           op_i :           in STD_LOGIC_VECTOR(OP_LEN-1 downto 0);             -- input custom op type from ID_to_EX
           funct_i :        in STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0);          -- input custom op type from ID_to_EX
           operand_1_i :    in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input operand 1 from ID_to_EX
           operand_2_i :    in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input operand 2 from ID_to_EX
           reg_wt_en_i :    in STD_LOGIC;                                       -- input register write enable from ID_to_EX
           reg_wt_addr_i :  in STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);       -- input register write address from ID_to_EX
           reg_wt_en_o :    out STD_LOGIC;                                      -- output register write enable to EX_to_MEM
           reg_wt_addr_o :  out STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);      -- output register write address to EX_to_MEM
           reg_wt_data_o :  out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0));     -- output register write data to EX_to_MEM
end EX;

architecture Behavioral of EX is

begin
    process (all)
    begin
        if rst = RST_ENABLE then
            reg_wt_data_o <= REG_ZERO_DATA;
            reg_wt_addr_o <= REG_ZERO_ADDR;
            reg_wt_en_o <= REG_WT_DISABLE;
        else
            reg_wt_addr_o <= reg_wt_addr_i;
            reg_wt_en_o <= reg_wt_en_i;
            op_code: case op_i is
                when OP_TYPE_NOP =>
                
                when OP_TYPE_ARITH =>
                
                when OP_TYPE_LOGIC =>
                    logic_funct: case funct_i is
                        -- or insts
                        when FUNCT_TYPE_OR =>
                            reg_wt_data_o <= operand_1_i or operand_2_i;
                        
                        when others =>
                            
                    end case logic_funct;
                
                when OP_TYPE_MOVE =>
                
                when OP_TYPE_BRANCH =>
                
                when others =>
                
            end case op_code;
        end if;
    end process;

end Behavioral;
