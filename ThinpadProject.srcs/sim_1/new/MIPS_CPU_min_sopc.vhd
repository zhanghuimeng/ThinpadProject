----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2017/11/13 01:25:35
-- Design Name: 
-- Module Name: MIPS_CPU_min_sopc - Behavioral
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

entity MIPS_CPU_min_sopc is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC);
end MIPS_CPU_min_sopc;

architecture Behavioral of MIPS_CPU_min_sopc is

component MIPS_CPU is
    Port ( rst :            in STD_LOGIC;                                           -- Reset
           clk :            in STD_LOGIC;                                           -- Clock
           inst_i :         in STD_LOGIC_VECTOR(INST_LEN-1 downto 0);               -- input instruction from ROM
           rom_en_o :       out STD_LOGIC;                                          -- output enable to ROM
           rom_addr_o :     out STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0));        -- output instruction address to ROM
end component;

component ROM is
    Port ( en_i :       in STD_LOGIC;                                   -- input rom enable from PC
           addr_i :     in STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);  -- input instruction address from PC
           inst_o :     out STD_LOGIC_VECTOR(INST_LEN-1 downto 0));     -- output instruction to IF/ID
end component;

signal en: STD_LOGIC;
signal inst: STD_LOGIC_VECTOR(INST_LEN-1 downto 0);
signal addr: STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);

begin

    MIPS_CPU0: MIPS_CPU port map(
        rst => rst, clk => clk,
        rom_en_o => en, rom_addr_o => addr,
        inst_i => inst);
    
    ROM_0: ROM port map(
        en_i => en, addr_i => addr,
        inst_o => inst);

end Behavioral;
