----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2017/12/09 21:58:57
-- Design Name: 
-- Module Name: SRAM_CONTROLL - Behavioral
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
use WORK.INCLUDE.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SRAM_CONTROLL is
    Port(
        clk : in STD_LOGIC;
        ce_i : in STD_LOGIC;
        we_i : in STD_LOGIC;
        addr_i : in STD_LOGIC_VECTOR(ADDR_LEN - 1 downto 0);
        data_i : in STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);
        sel_i : in STD_LOGIC_VECTOR(BYTE_IN_DATA - 1 downto 0);
        
        data_o : out STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);
        ack_o : out STD_LOGIC;
        
        ram_ce_n_o : out STD_LOGIC;
        ram_oe_n_o : out STD_LOGIC;
        ram_we_n_o : out STD_LOGIC;
        ram_be_n_o : out STD_LOGIC_VECTOR(BYTE_IN_DATA downto 0);
        ram_addr_o : out STD_LOGIC_VECTOR(19 - 1 downto 0);
        ram_data   : inout STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0));
end SRAM_CONTROLL;

architecture Behavioral of SRAM_CONTROLL is
    signal able : STD_LOGIC := '0';
    signal state : STD_LOGIC_VECTOR(SRAM_STATE_LEN - 1 downto 0) := SRAM_IDLE;
begin

    process (clk'event)
    begin
        if (rising_edge(clk)) then
            able <= '0';
            ram_data <= HIGH_Z;
        else 
            able <= '1';
            if state = SRAM_READ then
                data_o <= ram_data;
                ram_ce_n_o <= '1';
                ram_oe_n_o <= '1';
                ack_o <= ACK;
                state <= SRAM_IDLE;
            elsif state = SRAM_WRITE then 
                ram_oe_n_o <= '1';
                ram_ce_n_o <= '1';
                ram_we_n_o <= '1';
                ram_be_n_o <= b"0000";
                ack_o <= ACK;
                state <= SRAM_IDLE;
            end if;
        end if;
    end process;

    process (all)
    begin
        if (able = '1') then
            if (state = SRAM_IDLE and ce_i = CE_ENABLE) then
                ack_o <= ACK;
                if (we_i = '1') then
                    state <= SRAM_WRITE;
                    ram_addr_o <= zero_extend(addr_i, 20);
                    ram_data <= data_i;
                    ram_oe_n_o <= '0';
                    ram_ce_n_o <= '0';
                    ram_we_n_o <= '0';
                    ram_be_n_o <= not sel_i;
                else 
                    state <= SRAM_READ;
                    ram_addr_o <= zero_extend(addr_i, 20);
                    ram_we_n_o <= '1';
                    ram_oe_n_o <= '0';
                    ram_ce_n_o <= '0';
                    data_o <= ram_data;
                end if;
            end if;
        end if;
    end process;

end Behavioral;
