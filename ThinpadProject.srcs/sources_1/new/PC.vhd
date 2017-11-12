----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2017/11/12 00:33:04
-- Design Name: 
-- Module Name: PC - Behavioral
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
use IEEE.STD_LOGIC_SIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

use WORK.INCLUDE.ALL;

-- PC Module in CPU
-- rst:     Reset
-- clk:     Clock
-- pc_o:    output program counter(instruction address) to REGISTERS
-- en_o:    output enable signal for rom to REGISTERS
entity PC is
    Port ( rst :    in STD_LOGIC;
           clk :    in STD_LOGIC;
           pc_o :   out STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);
           en_o :   out STD_LOGIC);
end PC;

architecture Behavioral of PC is
    signal en : STD_LOGIC;
    signal pc : STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);
begin
    process (clk'event)
    begin
        if rising_edge(clk) then
            if rst = RST_ENABLE then
                en_o <= CHIP_DISABLE;  -- ROM is disabled when reset
                en <= CHIP_DISABLE;
            else
                en_o <= CHIP_ENABLE;   -- ROM is enabled in general
                en <= CHIP_ENABLE;
            end if;
        end if;
    end process;
    
    process (clk'event)
    begin
        if rising_edge(clk) then
            if en = CHIP_DISABLE then   -- When ROM is disabled, PC = 0
                pc <= x"00000000";
                pc_o <= x"00000000";
            else                        -- When ROM is enabled, PC increase by 4 every clock cycle
                pc <= pc + x"00000004"; -- IEEE.STD_LOGIC_SIGNED library
                pc_o <= pc;
            end if;
        end if;
    end process;

end Behavioral;
