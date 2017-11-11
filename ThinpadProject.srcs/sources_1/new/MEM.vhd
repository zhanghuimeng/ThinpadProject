----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2017/11/12 00:33:04
-- Design Name: 
-- Module Name: MEM - Behavioral
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

entity MEM is
    Port ( rst : in STD_LOGIC;
           reg_wt_data_i : in STD_LOGIC;
           reg_wt_addr_i : in STD_LOGIC;
           reg_wt_en_i : in STD_LOGIC;
           reg_wt_data_o : out STD_LOGIC;
           reg_wt_addr_o : out STD_LOGIC;
           reg_wt_en_o : out STD_LOGIC);
end MEM;

architecture Behavioral of MEM is

begin


end Behavioral;
