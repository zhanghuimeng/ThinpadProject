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
        
		RxD_data_ready : in STD_LOGIC;
		RxD_data : in STD_LOGIC_VECTOR(BYTE_LEN - 1 downto 0);
		RxD_idle : in STD_LOGIC;
		TxD_start : out STD_LOGIC;
		TxD_data : out STD_LOGIC_VECTOR(BYTE_LEN - 1 downto 0);
		
        data_from_serial_o : out STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);
        ack_o : out STD_LOGIC);
end SERIAL_CONTROLL;

architecture Behavioral of SERIAL_CONTROLL is
    type SERIAL_WRITE_TYPE is (SERIAL_IDLE, SERIAL_WRITE);
    signal write_state : SERIAL_WRITE_TYPE := SERIAL_IDLE;
    type SERIAL_READ_TYPE is (SERIAL_IDLE, SERIAL_WAIT, SERIAL_READING, SERIAL_READ);
    signal read_state : SERIAL_READ_TYPE := SERIAL_IDLE;
begin
        
    process (clk_uart'event) 
    begin
        if (rising_edge(clk_uart)) then
            if (ce_i = CE_DISABLE) then
                write_state <= SERIAL_IDLE;
                read_state <= SERIAL_IDLE;
                TxD_start <= '0';
            else
                case write_state is
                    when SERIAL_WRITE => 
                        write_state <= SERIAL_WRITE;
                        TxD_data <= data_from_mmu_i(BYTE_LEN - 1 downto 0);
                        TxD_start <= '0';
                    when others =>
                        if (we_i = '1') then
                            write_state <= SERIAL_WRITE;
                            TxD_data <= data_from_mmu_i(BYTE_LEN - 1 downto 0);
                            TxD_start <= '1';
                        else
                            write_state <= SERIAL_IDLE;
                            TxD_start <= '0';
                        end if;
                end case;
                case read_state is
                    when SERIAL_READ =>
                        read_state <= SERIAL_READ;
                    when SERIAL_READING =>
                        if (RxD_idle = '1') then
                            data_from_serial_o <= zero_extend(RxD_data, DATA_LEN);
                            read_state <= SERIAL_READ;
                        else
                            read_state <= SERIAL_READING;
                        end if;
                    when SERIAL_WAIT =>
                        if (RxD_idle = '0') then
                            read_state <= SERIAL_READING;
                        else
                            read_state <= SERIAL_WAIT;
                        end if;
                    when others =>
                        if (we_i = '0') then
                            read_state <= SERIAL_WAIT;
                        else
                            read_state <= SERIAL_IDLE;
                        end if;
                end case;
            end if;
        end if;
    end process;
	
	process (all)
	begin
		case read_state is
		    when SERIAL_WAIT | SERIAL_READING =>
		        ack_o <= ACK_NOT;
		    when others =>
		        ack_o <= ACK; 
		end case;
	end process;
   
end Behavioral;