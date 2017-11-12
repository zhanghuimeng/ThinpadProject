----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2017/11/12 00:33:04
-- Design Name: 
-- Module Name: EX_to_MEM - Behavioral
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

-- EX_to_MEM Module in CPU

entity EX_to_MEM is
    Port ( rst :                in STD_LOGIC;                                       -- Reset
           clk :                in STD_LOGIC;                                       -- Clock
           reg_wd_en_i :        in STD_LOGIC;                                       -- input register write enable from EX
           reg_wd_addr_i :      in STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);       -- input register write address from EX
           reg_wd_data_i :      in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input register write data from EX
           reg_wd_en_o :        out STD_LOGIC;                                      -- output register write enable to MEM
           reg_wd_addr_o :      out STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);      -- output register write address to MEM
           reg_wd_data_o :      out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0));     -- output register write data to MEM
end EX_to_MEM;

architecture Behavioral of EX_to_MEM is

begin

    process (clk'event)
    begin
        if rising_edge(clk) then
            if rst = RST_ENABLE then
                reg_wd_en_o <= REG_WT_DISABLE;
                reg_wd_addr_o <= REG_ZERO_ADDR;
                reg_wd_data_o <= REG_ZERO_DATA;
            else
                reg_wd_en_o <= reg_wd_en_i;
                reg_wd_addr_o <= reg_wd_addr_i;
                reg_wd_data_o <= reg_wd_data_i;
            end if;
        end if;
    end process;

end Behavioral;
