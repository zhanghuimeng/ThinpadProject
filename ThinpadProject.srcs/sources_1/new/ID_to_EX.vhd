----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2017/11/12 00:33:04
-- Design Name: 
-- Module Name: ID_to_EX - Behavioral
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

entity ID_to_EX is
    Port ( op_i : in STD_LOGIC;
           funct_i : in STD_LOGIC;
           reg_rd_data_1_i : in STD_LOGIC;
           reg_rd_data_2_i : in STD_LOGIC;
           reg_wt_en_i : in STD_LOGIC;
           reg_wt_addr_i : in STD_LOGIC;
           op_o : in STD_LOGIC;
           funct_o : in STD_LOGIC;
           reg_rd_data_1_o : out STD_LOGIC;
           reg_rd_data_2_o : out STD_LOGIC;
           reg_wt_en_o : out STD_LOGIC;
           reg_wt_addr_o : out STD_LOGIC);
end ID_to_EX;

architecture Behavioral of ID_to_EX is

begin


end Behavioral;
