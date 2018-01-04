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
    Port ( clk :            in STD_LOGIC;                                   -- Clock
           touch_btn : in STD_LOGIC_VECTOR(5 downto 0);
           
           ram1_ce_n_o : out STD_LOGIC;
           ram1_oe_n_o : out STD_LOGIC;
           ram1_we_n_o : out STD_LOGIC;
           ram1_be_n_o : out STD_LOGIC_VECTOR(BYTE_IN_DATA - 1 downto 0);
           ram1_addr_o : out STD_LOGIC_VECTOR(RAM_ADDR_LEN - 1 downto 0);
           ram1_data   : inout STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);
           
           ram2_ce_n_o : out STD_LOGIC;
           ram2_oe_n_o : out STD_LOGIC;
           ram2_we_n_o : out STD_LOGIC;
           ram2_be_n_o : out STD_LOGIC_VECTOR(BYTE_IN_DATA - 1 downto 0);
           ram2_addr_o : out STD_LOGIC_VECTOR(RAM_ADDR_LEN - 1 downto 0);
           ram2_data   : inout STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);
           
           rxd : in STD_LOGIC;
           txd : out STD_LOGIC;
           
           leds : out STD_LOGIC_VECTOR(31 downto 0));		-- output RAM data selection to RAM
end component;

component sram_controller is
    Port (
        sram_addr_in : in STD_LOGIC_VECTOR(19 downto 0);
        oe_n : in STD_LOGIC;
        ce_n : in STD_LOGIC;
        we_n: in STD_LOGIC;
        sram_data_inout : inout STD_LOGIC_VECTOR(31 downto 0));
end component;

component sram_controller2 is
    Port (
        sram_addr_in : in STD_LOGIC_VECTOR(19 downto 0);
        oe_n : in STD_LOGIC;
        ce_n : in STD_LOGIC;
        we_n: in STD_LOGIC;
        sram_data_inout : inout STD_LOGIC_VECTOR(31 downto 0));
end component;

signal ce_to_ram1 : STD_LOGIC;
signal oe_to_ram1 : STD_LOGIC;
signal we_to_ram1 : STD_LOGIC;
signal addr_to_ram1 : STD_LOGIC_VECTOR(19 downto 0);
signal data_ram1 : STD_LOGIC_VECTOR(31 downto 0);

signal ce_to_ram2 : STD_LOGIC;
signal oe_to_ram2 : STD_LOGIC;
signal we_to_ram2 : STD_LOGIC;
signal addr_to_ram2 : STD_LOGIC_VECTOR(19 downto 0);
signal data_ram2 : STD_LOGIC_VECTOR(31 downto 0);

begin

    MIPS_CPU0: MIPS_CPU port map(
        clk => clk,
        ram1_ce_n_o => ce_to_ram1,
        ram1_oe_n_o => oe_to_ram1,
        ram1_we_n_o => we_to_ram1,
        ram1_addr_o => addr_to_ram1,
        ram1_data => data_ram1,
        ram2_ce_n_o => ce_to_ram2,
        ram2_oe_n_o => oe_to_ram2,
        ram2_we_n_o => we_to_ram2,
        ram2_addr_o => addr_to_ram2,
        ram2_data => data_ram2,
        rxd => '1',
        touch_btn => b"000000");
    
    RAM1: sram_controller 
    port map(
        sram_addr_in => addr_to_ram1,
        oe_n => oe_to_ram1,
        ce_n => ce_to_ram1,
        we_n => we_to_ram1,
        sram_data_inout => data_ram1);

    RAM2: sram_controller2 
    port map(
        sram_addr_in => addr_to_ram2,
        oe_n => oe_to_ram2,
        ce_n => ce_to_ram2,
        we_n => we_to_ram2,
        sram_data_inout => data_ram2);
    
end Behavioral;
