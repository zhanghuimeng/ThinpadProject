----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2017/11/18 15:51:30
-- Design Name: 
-- Module Name: HI_LO - Behavioral
-- Project Name: 
-- Target DeviceHI_LO.vhds: 
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

-- HI_LO Module in CPU
-- Timing logic

entity HI_LO is
    Port ( clk :        in STD_LOGIC;                                               -- Clock
           rst :        in STD_LOGIC;                                               -- Reset
           en :         in STD_LOGIC;                                               -- input enable from MEM/WB
           hi_i :       in STD_LOGIC_VECTOR (REG_DATA_LEN-1 downto 0);              -- input HI data from MEM/WB
           lo_i :       in STD_LOGIC_VECTOR (REG_DATA_LEN-1 downto 0);              -- input LO data from MEM/WB
           hi_o :       out STD_LOGIC_VECTOR (REG_DATA_LEN-1 downto 0);             -- output HI data to EX
           lo_o :       out STD_LOGIC_VECTOR (REG_DATA_LEN-1 downto 0));            -- output LO data to EX
end HI_LO;

architecture Behavioral of HI_LO is

begin
    process (clk'event)
    begin
        if rising_edge(clk) then
            if rst = RST_ENABLE then
                hi_o <= REG_ZERO_DATA;
                lo_o <= REG_ZERO_DATA;
            elsif en = CHIP_ENABLE then
                hi_o <= hi_i;
                lo_o <= lo_i;
            end if;
        end if;
    end process;

end Behavioral;
