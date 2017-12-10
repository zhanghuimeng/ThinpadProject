----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2017/11/27 22:03:28
-- Design Name: 
-- Module Name: RAM - Behavioral
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

entity RAM is
    Port ( en_i : in STD_LOGIC;
           clk : in STD_LOGIC;
           data_i : in STD_LOGIC;
           addr_i : in STD_LOGIC;
           is_read_i : in STD_LOGIC;
           data_sel_i : in STD_LOGIC;
           data_o : out STD_LOGIC);
end RAM;

architecture Behavioral of RAM is

begin


end Behavioral;
