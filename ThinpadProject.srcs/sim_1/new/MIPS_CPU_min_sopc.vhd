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
    Port ( rst :            	in STD_LOGIC;                                   	-- Reset
           clk :            	in STD_LOGIC;                                   	-- Clock
           inst_i :         	in STD_LOGIC_VECTOR(INST_LEN-1 downto 0);       	-- input instruction from ROM
           ram_rd_data_i :		in STD_LOGIC_VECTOR(DATA_LEN-1 downto 0);			-- input data read from RAM
           rom_en_o :       	out STD_LOGIC;                                  	-- output enable to ROM
           rom_addr_o :     	out STD_LOGIC_VECTOR(INST_LEN-1 downto 0);     		-- output instruction address to ROM
           ram_en_o :			out STD_LOGIC;										-- output RAM enable to RAM
           ram_is_read_o :		out STD_LOGIC;										-- output if this instruction is reading to RAM
           ram_addr_o :			out STD_LOGIC_VECTOR(ADDR_LEN-1 downto 0);			-- output data address to RAM
           ram_data_o :			out STD_LOGIC_VECTOR(DATA_LEN-1 downto 0);			-- output data to write to RAM
           ram_data_sel_o : 	out STD_LOGIC_VECTOR(BYTE_IN_DATA-1 downto 0));		-- output RAM data selection to RAM
end component;

component ROM is
    Port ( en_i :       in STD_LOGIC;                                   -- input rom enable from PC
           addr_i :     in STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);  -- input instruction address from PC
           inst_o :     out STD_LOGIC_VECTOR(INST_LEN-1 downto 0));     -- output instruction to IF/ID
end component;

component RAM is
    Port ( clk :                in STD_LOGIC;                                       -- Clock
           en_i :               in STD_LOGIC;                                       -- input enable from MEM
           is_read_i :          in STD_LOGIC;                                       -- input if this instruction is reading from MEM
           addr_i :             in STD_LOGIC_VECTOR(ADDR_LEN-1 downto 0);           -- input data address from MEM
           data_i :             in STD_LOGIC_VECTOR(DATA_LEN-1 downto 0);           -- input data to write from MEM
           data_sel_i :         in STD_LOGIC_VECTOR(BYTE_IN_DATA-1 downto 0);       -- input RAM data selection from MEM
           data_o :             out STD_LOGIC_VECTOR(DATA_LEN-1 downto 0));			-- ouput data read to MEM
end component;

signal rom_en_from_cpu:             STD_LOGIC;
signal inst_to_cpu:                 STD_LOGIC_VECTOR(INST_LEN-1 downto 0);
signal rom_addr_from_cpu:           STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);
signal ram_rd_data_to_cpu:          STD_LOGIC_VECTOR(DATA_LEN-1 downto 0);
signal ram_en_from_cpu:             STD_LOGIC;
signal ram_is_read_from_cpu:        STD_LOGIC;
signal ram_addr_from_cpu:           STD_LOGIC_VECTOR(ADDR_LEN-1 downto 0);
signal ram_data_from_cpu:           STD_LOGIC_VECTOR(DATA_LEN-1 downto 0);
signal ram_data_sel_from_cpu:       STD_LOGIC_VECTOR(BYTE_IN_DATA-1 downto 0);

begin

    MIPS_CPU0: MIPS_CPU port map(
        rst => rst, clk => clk,
        inst_i => inst_to_cpu, 
        ram_rd_data_i => ram_rd_data_to_cpu, 
        rom_en_o => rom_en_from_cpu, rom_addr_o => rom_addr_from_cpu, 
        ram_en_o => ram_en_from_cpu, ram_is_read_o => ram_is_read_from_cpu, 
        ram_addr_o => ram_addr_from_cpu, ram_data_o => ram_data_from_cpu, ram_data_sel_o => ram_data_sel_from_cpu);
    
    ROM_0: ROM port map(
        en_i => rom_en_from_cpu, addr_i => rom_addr_from_cpu,
        inst_o => inst_to_cpu);

    RAM_0: RAM port map(
        clk => clk, en_i => ram_en_from_cpu, is_read_i => ram_is_read_from_cpu, 
        addr_i => ram_addr_from_cpu, data_i => ram_data_from_cpu, data_sel_i => ram_data_sel_from_cpu, data_o => ram_rd_data_to_cpu);
    
end Behavioral;
