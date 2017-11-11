----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2017/11/12 00:33:04
-- Design Name: 
-- Module Name: MEM_to_WB - Behavioral
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

entity MEM_to_WB is
    Port ( rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           reg_wt_data_i : in STD_LOGIC;
           reg_wt_addr_i : in STD_LOGIC;
           reg_wt_en_i : in STD_LOGIC;
           reg_wt_data_o : in STD_LOGIC;
           reg_wt_addr_o : in STD_LOGIC;
           reg_wt_en_o : in STD_LOGIC);
end MEM_to_WB;

architecture Behavioral of MEM_to_WB is

begin


end Behavioral;
