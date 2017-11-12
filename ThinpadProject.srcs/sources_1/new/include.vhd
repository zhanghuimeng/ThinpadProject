----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2017/11/12 01:20:17
-- Design Name: 
-- Module Name: include - Behavioral
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

-- Constants Declaration Package
-- Usage: use WORK.INCLUDE.ALL;
-- WORK is the current working directory
package INCLUDE is
    constant INST_ADDR_LEN : integer := 32;
    constant INST_LEN : integer := 32;
    constant REG_ADDR_LEN : integer := 5;
    constant REG_DATA_LEN : integer := 32;
    constant OP_LEN : integer := 6;
    constant FUNCT_LEN : integer := 6;
    constant IMM_LEN : integer := 16;
    constant SHAMT_LEN : integer := 5;
    constant JUMP_ADDR_LEN : integer := 26;
    constant RST_ENABLE : STD_LOGIC := '1';
    constant RST_DISABLE : STD_LOGIC := '0';
    constant CHIP_ENABLE : STD_LOGIC := '1';
    constant CHIP_DISABLE : STD_LOGIC := '0';
    
    constant OP_NOP : STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"00000";
    
end INCLUDE;

