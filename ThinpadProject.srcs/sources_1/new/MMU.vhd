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
        
        leds_o : out STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);
        num_o : out STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);
        
        ack_o : out STD_LOGIC;
        data_o : out STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0));
end MMU;

architecture Behavioral of MMU is
    signal inout_type : STD_LOGIC_VECTOR(TYPE_LEN - 1 downto 0) := TYPE_NULL;
    signal led_data : STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0) := ZERO_DATA;
    signal num_data : STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0) := ZERO_DATA;
	signal addr : STD_LOGIC_VECTOR(ADDR_LEN - 1 downto 0) := ZERO_ADDR;
begin

	process (all)
	begin
		if (ce_i = CE_ENABLE) then
			if (inout_type = TYPE_NULL) then
				if (addr_i >= BASE_RAM_ADDR_MIN and addr_i <= BASE_RAM_ADDR_MAX) then 
					addr <= STD_LOGIC_VECTOR(UNSIGNED(addr_i) - UNSIGNED(BASE_RAM_ADDR_MIN));
				elsif (addr_i >= EXTEND_RAM_ADDR_MIN and addr_i <= EXTEND_RAM_ADDR_MAX) then
					addr <= STD_LOGIC_VECTOR(UNSIGNED(addr_i) - UNSIGNED(EXTEND_RAM_ADDR_MIN));
				end if;
			end if;
		else
			inout_type <= TYPE_NULL;
		end if;
	end process;

    process (all)
    begin
        if (inout_type = TYPE_BASE_RAM) then
            ram2_ce_o <= CE_DISABLE;
            ram2_we_o <= '0';
            ram2_data_o <= ZERO_DATA;
            ram2_addr_o <= ZERO_DATA;
            ram2_sel_o <= b"0000";
                    
            ram1_ce_o <= ce_i;
            ram1_we_o <= we_i;
            ram1_data_o <= data_i;
            ram1_addr_o <= addr;
            ram1_sel_o <= sel_i;
			if (we_i = '0') then
                data_o <= ram1_data_i;
            else 
                data_o <= ZERO_DATA;
            end if;
            ack_o <= '1';
        elsif (inout_type = TYPE_EXTEND_RAM) then
            ram1_ce_o <= CE_DISABLE;
            ram1_we_o <= '0';
            ram1_data_o <= ZERO_DATA;
            ram1_addr_o <= ZERO_DATA;
            ram1_sel_o <= b"0000";
                    
            ram2_ce_o <= ce_i;
            ram2_we_o <= we_i;
            ram2_data_o <= data_i;
            ram2_addr_o <= addr;
            ram2_sel_o <= sel_i;
			if (we_i = '0') then
                data_o <= ram2_data_i;
            else
                data_o <= ZERO_DATA;
            end if;
            ack_o <= '1';
        elsif (addr_i = LED_ADDR) then
			ram1_ce_o <= CE_DISABLE;
            ram1_we_o <= '0';
            ram1_data_o <= ZERO_DATA;
            ram1_addr_o <= ZERO_DATA;
            ram1_sel_o <= b"0000";
            ram2_ce_o <= CE_DISABLE;
            ram2_we_o <= '0';
            ram2_data_o <= ZERO_DATA;
            ram2_addr_o <= ZERO_DATA;
            ram2_sel_o <= b"0000";
			
            if (we_i = '1') then
                led_data <= data_i;
                leds_o <= led_data;
				data_o <= ZERO_DATA;
            else
				data_o <= led_data;
			end if;
			ack_o <= '1';
        elsif (addr_i = NUM_ADDR) then
			ram1_ce_o <= CE_DISABLE;
            ram1_we_o <= '0';
            ram1_data_o <= ZERO_DATA;
            ram1_addr_o <= ZERO_DATA;
            ram1_sel_o <= b"0000";
            ram2_ce_o <= CE_DISABLE;
            ram2_we_o <= '0';
            ram2_data_o <= ZERO_DATA;
            ram2_addr_o <= ZERO_DATA;
            ram2_sel_o <= b"0000";
			
            if (we_i = '1') then
                num_data <= data_i;
                num_o <= num_data;
				data_o <= ZERO_DATA;
            else
				data_o <= num_data;
			end if;
			ack_o <= '1';
        end if;
    end process;

end Behavioral;
