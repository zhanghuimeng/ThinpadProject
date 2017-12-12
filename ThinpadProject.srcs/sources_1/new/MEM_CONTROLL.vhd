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
        pause_i : in STD_LOGIC_VECTOR(CTRL_PAUSE_LEN - 1 downto 0); -- input pause from PAUSE CTRL
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
            
        ack_i : in STD_LOGIC;                                    -- input ack signal from SRAM CONTROLL
        data_i : in STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);    -- input data from SRAM CONTROLL
        
        ce_o : out STD_LOGIC;                                    -- output enable signal to SRAM CONTROLL 
        we_o : out STD_LOGIC;                                    -- output write/read signal to SRAM CONTROLL
        sel_o : out STD_LOGIC_VECTOR(BYTE_IN_DATA - 1 downto 0);-- output byte select to SRAM CONTROLL
        addr_o : out STD_LOGIC_VECTOR(ADDR_LEN - 1 downto 0);   -- output address to SRAM CONTROLL
        data_o : out STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0));  -- output data to SRAM CONTROLL
end MEM_CONTROLL;

architecture Behavioral of MEM_CONTROLL is
    signal state : STD_LOGIC_VECTOR(STATE_LEN - 1 downto 0) := STATE_IDLE;
begin

    process (clk'event)
    begin
        if (rst = RST_ENABLE) then
            ce_o <= '0';
            we_o <= '0';
            sel_o <= b"0000";
            addr_o <= ZERO_DATA;
            data_o <= ZERO_DATA;
            state <= STATE_IDLE;
        else
            if (clk = '1') then -- rising edge
                if (state = STATE_DATA) then
                    if (ack_i = '1') then
                        ce_o <= '0';
                        we_o <= '0';
                        sel_o <= b"0000";
                        addr_o <= ZERO_DATA;
                        data_o <= ZERO_DATA;
                        state <= STATE_IDLE;
                    end if;
                elsif (state = STATE_INST) then
                    if (ack_i = '1') then
                        ce_o <= '0';
                        we_o <= '0';
                        sel_o <= b"0000";
                        addr_o <= ZERO_DATA;
                        data_o <= ZERO_DATA;
                        state <= STATE_IDLE;
                    end if;
                end if ;
            else
                if (state = STATE_IDLE) then
                    if (mem_ce_i = CE_ENABLE) then
                        ce_o <= '1';
                        we_o <= not mem_is_read_i;
                        sel_o <= mem_sel_i;
                        addr_o <= mem_addr_i;
                        if (mem_is_read_i = IS_READ) then
                            data_o <= HIGH_Z;
                        else
                            data_o <= mem_data_i;
                        end if;
                        state <= STATE_DATA;
                    elsif (inst_ce_i = CE_ENABLE) then
                        ce_o <= '1';
                        we_o <= '0';
                        sel_o <= b"1111";
                        addr_o <= inst_addr_i;
                        data_o <= HIGH_Z;
                        state <= STATE_INST;
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
        else 
            if (state = STATE_DATA) then
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
            elsif (state = STATE_INST) then
                if (ack_i = '1') then
                    inst_data_o <= data_i;
                    inst_pause_o <= PAUSE_NOT; 
                else
                    inst_pause_o <= PAUSE;
                end if;
                if (mem_ce_i = CE_ENABLE) then
                    mem_pause_o <= PAUSE;
                end if;
            end if;
        end if;
    end process;
    
end Behavioral;
