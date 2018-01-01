----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2017/12/12 09:15:16
-- Design Name: 
-- Module Name: MMU - Behavioral
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
use IEEE.NUMERIC_STD.all; 
use WORK.INCLUDE.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MMU is
    Port(
        rst : in STD_LOGIC;
        ce_i : in STD_LOGIC;
        we_i : in STD_LOGIC;
        sel_i : in STD_LOGIC_VECTOR(BYTE_IN_DATA - 1 downto 0);
        addr_i : in STD_LOGIC_VECTOR(ADDR_LEN - 1 downto 0);
        data_i : in STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);
        
        ram1_data_i : in STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);
        ram1_ack_i : in STD_LOGIC;
        ram1_ce_o : out STD_LOGIC;
        ram1_we_o : out STD_LOGIC;
        ram1_data_o : out STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);
        ram1_addr_o : out STD_LOGIC_VECTOR(ADDR_LEN - 1 downto 0);
        ram1_sel_o : out STD_LOGIC_VECTOR(BYTE_IN_DATA - 1 downto 0);
        
        ram2_data_i : in STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);
        ram2_ack_i : in STD_LOGIC;
        ram2_ce_o : out STD_LOGIC;
        ram2_we_o : out STD_LOGIC;
        ram2_data_o : out STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);
        ram2_addr_o : out STD_LOGIC_VECTOR(ADDR_LEN - 1 downto 0);
        ram2_sel_o : out STD_LOGIC_VECTOR(BYTE_IN_DATA - 1 downto 0);
        
        serial_ce_o : out STD_LOGIC;
        serial_we_o : out STD_LOGIC;
        serial_data_o : out STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);
        serial_data_i : in STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);
		serial_ack_i : in STD_LOGIC;
        
        leds_o : out STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);
        num_o : out STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);
        
        ack_o : out STD_LOGIC;
        data_o : out STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0));
end MMU;

architecture Behavioral of MMU is
	type STATE_TYPE_TYPE is (TYPE_NULL, TYPE_BASE_RAM, TYPE_EXTEND_RAM, TYPE_LED, TYPE_NUM, TYPE_SERIAL);
    signal inout_type : STATE_TYPE_TYPE := TYPE_NULL;
    signal led_data : STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0) := ZERO_DATA;
    signal num_data : STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0) := ZERO_DATA;
	signal addr : STD_LOGIC_VECTOR(ADDR_LEN - 1 downto 0) := ZERO_ADDR;
begin

	process (all)
	begin
	    if (rst = RST_ENABLE) then
	       inout_type <= TYPE_NULL;
	    else
            if (ce_i = CE_ENABLE) then
                if (UNSIGNED(addr_i) >= UNSIGNED(BASE_RAM_ADDR_MIN) and UNSIGNED(addr_i) <= UNSIGNED(BASE_RAM_ADDR_MAX)) then 
                    addr <= STD_LOGIC_VECTOR(shift_right(UNSIGNED(addr_i) - UNSIGNED(BASE_RAM_ADDR_MIN), 2));
                    inout_type <= TYPE_BASE_RAM;
                elsif (UNSIGNED(addr_i) >= UNSIGNED(EXTEND_RAM_ADDR_MIN) and UNSIGNED(addr_i) <= UNSIGNED(EXTEND_RAM_ADDR_MAX)) then
                    addr <= STD_LOGIC_VECTOR(shift_right(UNSIGNED(addr_i) - UNSIGNED(EXTEND_RAM_ADDR_MIN), 2));
                    inout_type <= TYPE_EXTEND_RAM;
                elsif (addr_i = LED_ADDR) then
                    inout_type <= TYPE_LED;
                elsif (addr_i = NUM_ADDR) then
                    inout_type <= TYPE_NUM;
                elsif (addr_i = SERIAL_ADDR) then
                    inout_type <= TYPE_SERIAL;
                else
                    inout_type <= TYPE_NULL;
                end if;
            else
              inout_type <= TYPE_NULL;
            end if;
        end if;
	end process;

    process (all)
    begin
        if (rst = RST_ENABLE) then
            ram1_ce_o <= CE_DISABLE;
            ram1_we_o <= '0';
            ram1_data_o <= HIGH_Z;
            ram1_addr_o <= ZERO_DATA;
            ram1_sel_o <= b"0000";
            ram2_ce_o <= CE_DISABLE;
            ram2_we_o <= '0';
            ram2_data_o <= HIGH_Z;
            ram2_addr_o <= ZERO_DATA;
            ram2_sel_o <= b"0000";
			serial_ce_o <= CE_DISABLE;
			serial_we_o <= '0';
			serial_data_o <= ZERO_DATA;
			led_data <= ZERO_DATA;
			num_data <= ZERO_DATA;
        else
			case inout_type is
				when TYPE_BASE_RAM => 
					ram2_ce_o <= CE_DISABLE;
					ram2_we_o <= '0';
					ram2_data_o <= HIGH_Z;
					ram2_addr_o <= ZERO_DATA;
					ram2_sel_o <= b"0000";
					serial_ce_o <= CE_DISABLE;
					serial_we_o <= '0';
					serial_data_o <= ZERO_DATA;
					num_o <= num_o;
                    leds_o <= leds_o;
							
					ram1_ce_o <= ce_i;
					ram1_we_o <= we_i;
					ram1_addr_o <= addr;
					ram1_sel_o <= sel_i;
					if (we_i = '0') then
						ram1_data_o <= HIGH_Z;
						data_o <= ram1_data_i;
					else 
						ram1_data_o <= data_i;
						data_o <= ZERO_DATA;
					end if;
					ack_o <= '1';
				when TYPE_EXTEND_RAM => 
					ram1_ce_o <= CE_DISABLE;
					ram1_we_o <= '0';
					ram1_data_o <= HIGH_Z;
					ram1_addr_o <= ZERO_DATA;
					ram1_sel_o <= b"0000";
					serial_ce_o <= CE_DISABLE;
					serial_we_o <= '0';
					serial_data_o <= ZERO_DATA;
					led_data <= led_data;
					num_o <= num_o;
					leds_o <= leds_o;
							
					ram2_ce_o <= ce_i;
					ram2_we_o <= we_i;
					ram2_addr_o <= addr;
					ram2_sel_o <= sel_i;
					if (we_i = '0') then
						ram2_data_o <= HIGH_Z;
						data_o <= ram2_data_i;
					else
						ram2_data_o <= data_i;
						data_o <= ZERO_DATA;
					end if;
					ack_o <= '1';
				when TYPE_LED => 
					ram1_ce_o <= CE_DISABLE;
					ram1_we_o <= '0';
					ram1_data_o <= HIGH_Z;
					ram1_addr_o <= ZERO_DATA;
					ram1_sel_o <= b"0000";
					ram2_ce_o <= CE_DISABLE;
					ram2_we_o <= '0';
					ram2_data_o <= HIGH_Z;
					ram2_addr_o <= ZERO_DATA;
					ram2_sel_o <= b"0000";
					serial_ce_o <= CE_DISABLE;
					serial_we_o <= '0';
					serial_data_o <= ZERO_DATA;
					num_o <= num_o;
					
					if (we_i = '1') then
					    if (ce_i = '1') then
						   leds_o <= data_i;
						end if;
						data_o <= ZERO_DATA;
					else
						data_o <= leds_o;
					end if;
					ack_o <= '1';
				when TYPE_NUM => 
					ram1_ce_o <= CE_DISABLE;
					ram1_we_o <= '0';
					ram1_data_o <= HIGH_Z;
					ram1_addr_o <= ZERO_DATA;
					ram1_sel_o <= b"0000";
					ram2_ce_o <= CE_DISABLE;
					ram2_we_o <= '0';
					ram2_data_o <= HIGH_Z;
					ram2_addr_o <= ZERO_DATA;
					ram2_sel_o <= b"0000";
					serial_ce_o <= CE_DISABLE;
					serial_we_o <= '0';
					serial_data_o <= ZERO_DATA;
					leds_o <= leds_o;
					
					if (we_i = '1') then
					    if (ce_i = '1') then
						    num_o <= data_i;
						end if;
						data_o <= ZERO_DATA;
					else
						data_o <= num_o;
					end if;
					ack_o <= '1';
			    when TYPE_SERIAL => 
			        ram1_ce_o <= CE_DISABLE;
                    ram1_we_o <= '0';
                    ram1_data_o <= HIGH_Z;
                    ram1_addr_o <= ZERO_DATA;
                    ram1_sel_o <= b"0000";
                    ram2_ce_o <= CE_DISABLE;
                    ram2_we_o <= '0';
                    ram2_data_o <= HIGH_Z;
                    ram2_addr_o <= ZERO_DATA;
                    ram2_sel_o <= b"0000";
                    leds_o <= leds_o;
                    num_o <= num_o;
                    
					ack_o <= serial_ack_i;
                    if (we_i = '1') then
                        data_o <= ZERO_DATA;
						serial_data_o <= data_i;
                    else
                        data_o <= serial_data_i;
                    end if; 
					serial_we_o <= we_i;
					serial_ce_o <= '1';
				when others => 
					ram1_ce_o <= CE_DISABLE;
					ram1_we_o <= '0';
					ram1_data_o <= HIGH_Z;
					ram1_addr_o <= ZERO_DATA;
					ram1_sel_o <= b"0000";
					ram2_ce_o <= CE_DISABLE;
					ram2_we_o <= '0';
					ram2_data_o <= HIGH_Z;
					ram2_addr_o <= ZERO_DATA;
					ram2_sel_o <= b"0000";
					serial_ce_o <= CE_DISABLE;
					serial_we_o <= '0';
					serial_data_o <= ZERO_DATA;
					leds_o <= leds_o;
					num_o <= num_o;
					ack_o <= '1';
            end case;
        end if;
    end process;

end Behavioral;