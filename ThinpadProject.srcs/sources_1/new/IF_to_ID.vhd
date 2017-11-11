----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2017/11/12 00:33:04
-- Design Name: 
-- Module Name: IF_to_ID - Behavioral
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

entity IF_to_ID is
    Port ( pc_i : in STD_LOGIC;
           inst_i : in STD_LOGIC;
           rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           pc_o : out STD_LOGIC;
           inst_o : out STD_LOGIC);
end IF_to_ID;

architecture Behavioral of IF_to_ID is

begin


end Behavioral;
