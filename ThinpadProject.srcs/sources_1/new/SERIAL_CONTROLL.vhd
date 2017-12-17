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
        data_from_mmu_i : in STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);
        
        rxd : in STD_LOGIC;
        txd : out STD_LOGIC;
        
        data_from_serial_o : out STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);
        ack_o : out STD_LOGIC);
end SERIAL_CONTROLL;

architecture Behavioral of SERIAL_CONTROLL is
    component ASYNC_RECEIVER is
        port (
            clk : in STD_LOGIC;
            RxD : in STD_LOGIC;
            RxD_data_ready : out STD_LOGIC;
            RxD_data : out STD_LOGIC_VECTOR(BYTE_LEN - 1 downto 0));
    end component;
    
    component ASYNC_TRANSMITTER is
         port (
            clk : in STD_LOGIC;
            TxD : out STD_LOGIC;
            TxD_start : in STD_LOGIC;
            TxD_data : in STD_LOGIC_VECTOR(BYTE_LEN - 1 downto 0));
    end component;
    
    signal RxD_data_ready : STD_LOGIC;
    signal RxD_data : STD_LOGIC_VECTOR(BYTE_LEN - 1 downto 0);
    signal TxD_start : STD_LOGIC;
    signal TxD_data : STD_LOGIC_VECTOR(BYTE_LEN - 1 downto 0);
    
    type SERIAL_STATE_TYPE is (SERIAL_IDLE, SERIAL_WRITE, SERIAL_READ);
    signal state : SERIAL_STATE_TYPE := SERIAL_IDLE;

begin
    SERIAL_RECEIVER : ASYNC_RECEIVER port map (
        clk => clk_uart,
        RxD => rxd,
        RxD_data_ready => RxD_data_ready,
        RxD_data => RxD_data);
    
    SERIAL_TRANSMITTER : ASYNC_TRANSMITTER port map (
        clk => clk_uart,
        TxD => txd,
        TxD_start => TxD_start,
        TxD_data => TxD_data);
        
    process (clk_uart'event) 
    begin
        if (rising_edge(clk_uart)) then
            if (ce_i = CE_ENABLE) then
                if (we_i = '1') then
                    TxD_data <= data_from_mmu_i(BYTE_LEN - 1 downto 0);
					case state is
						when SERIAL_IDLE =>
							TxD_start <= '1';
						when others =>
						    TxD_start <= '0';
					end case;
                end if;
            else
                TxD_start <= '0';
            end if;
        end if;
    end process;
	
	process (all)
	begin
		if (ce_i = CE_ENABLE) then
			if (we_i = '1') then
			    ack_o <= ACK; 
				if (state = SERIAL_IDLE) then
					state <= SERIAL_WRITE;
				end if;
			else
				if (RxD_data_ready) then
				    data_from_serial_o <= zero_extend(RxD_data, DATA_LEN);
				    ack_o <= ACK;
					state <= SERIAL_IDLE;
				else
				    ack_o <= ACK_NOT;
				    state <= SERIAL_READ;
				end if;
			end if;
		else
			state <= SERIAL_IDLE;
		end if;
	end process;
   
end Behavioral;
