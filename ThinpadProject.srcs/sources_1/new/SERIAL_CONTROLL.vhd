----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2017/12/17 16:48:28
-- Design Name: 
-- Module Name: SERIAL_CONTROLL - Behavioral
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

entity SERIAL_CONTROLL is
--  Port ( );
    Port(
        clk : in STD_LOGIC;
        clk_uart : in STD_LOGIC;
        rst : in STD_LOGIC;
        ce_i : in STD_LOGIC;
        we_i : in STD_LOGIC;
        is_state_i : in STD_LOGIC;
        data_from_mmu_i : in STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);
        
		RxD_data_ready : in STD_LOGIC;
		RxD_data : in STD_LOGIC_VECTOR(BYTE_LEN - 1 downto 0);
		RxD_idle : in STD_LOGIC;
		TxD_busy : in STD_LOGIC;
		TxD_start : out STD_LOGIC;
		TxD_data : out STD_LOGIC_VECTOR(BYTE_LEN - 1 downto 0);
		
        data_from_serial_o : out STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);
        ack_o : out STD_LOGIC);
end SERIAL_CONTROLL;

architecture Behavioral of SERIAL_CONTROLL is
    signal data : STD_LOGIC_VECTOR(BYTE_LEN - 1 downto 0) := b"00000000";
    signal state : STD_LOGIC_VECTOR(1 downto 0) := b"01"; -- read_enable & write_enable
begin

    state(1) <= RxD_data_ready;
    state(0) <= not TxD_busy;
        
    process (all)
    begin
        if (RxD_data_ready = '1') then
            data <= RxD_data;
        end if;
        if ((ce_i = '1') and (we_i = '1')) then
            TxD_data <= data_from_mmu_i(7 downto 0);
            TxD_start <= '1';
        else
            if (TxD_start = '1') and (TxD_busy = '1') then
                TxD_start <= '0';
            end if;
        end if;
    end process;
    
    process (all)
    begin
        if ((ce_i = '1') and (we_i = '0')) then
            if (is_state_i = '1') then
                data_from_serial_o <= zero_extend(state, DATA_LEN);
            else
                data_from_serial_o <= zero_extend(data, DATA_LEN);
            end if;
        end if;
        ack_o <= '1';
    end process;
   
end Behavioral;