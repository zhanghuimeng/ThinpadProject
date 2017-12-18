----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2017/12/09 20:51:50
-- Design Name: 
-- Module Name: MEM_CONTROLL - Behavioral
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

entity MEM_CONTROLL is
    Port(
        rst : in STD_LOGIC;
        clk : in STD_LOGIC;
        inst_ce_i : in STD_LOGIC;                                    -- input instruction read enable from PC
        inst_addr_i : in STD_LOGIC_VECTOR(INST_ADDR_LEN - 1 downto 0); -- input read address
        mem_ce_i : in STD_LOGIC;                                     -- input data read enable from MEM
        mem_is_read_i : in STD_LOGIC;                                -- input read/write signal from MEM
        mem_sel_i : in STD_LOGIC_VECTOR(BYTE_IN_DATA - 1 downto 0); -- input byte select
        mem_addr_i : in STD_LOGIC_VECTOR(ADDR_LEN - 1 downto 0);    -- input data address
        mem_data_i : in STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);    -- input written data
        inst_data_o : out STD_LOGIC_VECTOR(INST_LEN - 1 downto 0);  -- output instruction to IF/ID
        inst_pause_o : out STD_LOGIC;                                -- output pause from sram when get instruction
        mem_data_o : out STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);   -- output data to MEM
        mem_pause_o : out STD_LOGIC;                                 -- output pause from sram when read/write data
            
        ack_i : in STD_LOGIC;                                    -- input ack signal from MMU
        data_i : in STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);    -- input data from MMU
        
        ce_o : out STD_LOGIC;                                    -- output enable signal to SRAM CONTROLL 
        we_o : out STD_LOGIC;                                    -- output write/read signal to SRAM CONTROLL
        sel_o : out STD_LOGIC_VECTOR(BYTE_IN_DATA - 1 downto 0);-- output byte select to SRAM CONTROLL
        addr_o : out STD_LOGIC_VECTOR(ADDR_LEN - 1 downto 0);   -- output address to SRAM CONTROLL
        data_o : out STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0));   -- output data to SRAM CONTROLL
end MEM_CONTROLL;

architecture Behavioral of MEM_CONTROLL is
    type STATE_TYPE is (STATE_IDLE, STATE_INST, STATE_DATA, STATE_DEBUG);
    signal state : STATE_TYPE := STATE_IDLE;
begin

    process (clk'event)
    begin
        if (clk = '1') then -- rising edge
			if (rst = RST_ENABLE) then
				state <= STATE_IDLE;
				ce_o <= '0';
				we_o <= '0';
				sel_o <= b"0000";
				addr_o <= ZERO_DATA;
				data_o <= ZERO_DATA;
			else 
				case state is
					when STATE_INST | STATE_DATA =>
						if (ack_i = ACK) then
							state <= STATE_IDLE;
							ce_o <= '0';
							we_o <= '0';
							sel_o <= b"0000";
							addr_o <= ZERO_DATA;
							data_o <= ZERO_DATA;
						end if;
					when others => 
						state <= STATE_IDLE;
						ce_o <= '0';
						we_o <= '0';
						sel_o <= b"0000";
						addr_o <= ZERO_DATA;
						data_o <= ZERO_DATA;
				end case;
			end if;
        else
			if (rst = RST_ENABLE) then
				state <= STATE_IDLE;
				ce_o <= '0';
				we_o <= '0';
				sel_o <= b"0000";
				addr_o <= ZERO_DATA;
				data_o <= ZERO_DATA;
			else 
				if (state = STATE_IDLE) then
					if (mem_ce_i = CE_ENABLE) then
						state <= STATE_DATA;
						ce_o <= '1';
						we_o <= not mem_is_read_i;
						sel_o <= mem_sel_i;
						addr_o <= mem_addr_i;
						data_o <= mem_data_i;
					elsif (inst_ce_i = CE_ENABLE) then
						state <= STATE_INST;
						ce_o <= '1';
						we_o <= '0';
						sel_o <= b"1111";
						addr_o <= inst_addr_i;
						data_o <= ZERO_DATA;
					end if;
				end if;
			end if;
        end if;  
    end process;
    
    process (all)
    begin
        if (rst = RST_ENABLE) then
            inst_pause_o <= PAUSE_NOT;
            mem_pause_o <= PAUSE_NOT;
			inst_data_o <= ZERO_DATA;
			mem_data_o <= ZERO_DATA;
        else 
            case state is
                when STATE_DATA =>
                    if (ack_i = '1') then
                        if (mem_is_read_i = IS_READ) then
                            mem_data_o <= data_i;
                        end if;
                        mem_pause_o <= PAUSE_NOT;
                    else
                        mem_pause_o <= PAUSE;
                    end if;
                    if (inst_ce_i = CE_ENABLE) then
                        inst_pause_o <= PAUSE;
                    end if;
                when STATE_INST => 
                    if (ack_i = '1') then
                        inst_data_o <= data_i;
                        inst_pause_o <= PAUSE_NOT;
                    else
                        --inst_pause_o <= PAUSE;
						inst_pause_o <= PAUSE_NOT;
                    end if;
                    if (mem_ce_i = CE_ENABLE) then
                        mem_pause_o <= PAUSE;
                    end if;
                when others => 
                    inst_data_o <= ZERO_DATA;
                    mem_data_o <= ZERO_DATA;
                    inst_pause_o <= PAUSE_NOT;
                    mem_pause_o <= PAUSE_NOT;
            end case;
        end if;
    end process;
    
end Behavioral;
