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

entity EX_to_MEM is
    Port ( rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           reg_wd_addr_i : in STD_LOGIC;
           reg_wd_data_i : in STD_LOGIC;
           reg_wd_en_i : in STD_LOGIC;
           reg_wd_addr_o : in STD_LOGIC;
           reg_wd_data_o : in STD_LOGIC;
           reg_wd_en_o : in STD_LOGIC);
end EX_to_MEM;

architecture Behavioral of EX_to_MEM is

begin


end Behavioral;
