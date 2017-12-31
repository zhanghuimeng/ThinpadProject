----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2017/11/12 00:33:04
-- Design Name: 
-- Module Name: PC - Behavioral
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
use IEEE.STD_LOGIC_SIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

use WORK.INCLUDE.ALL;

-- PC Module in CPU

entity PC is
    Port ( rst :    					in STD_LOGIC;                                       -- Reset
           clk :    					in STD_LOGIC;                                       -- Clock
           pause_i :					in STD_LOGIC_VECTOR(CTRL_PAUSE_LEN-1 downto 0);		-- input pause info from PAUSE_CTRL
           branch_i :					in STD_LOGIC;										-- input branch or not from ID
           branch_target_addr_i : 	in STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);  	    -- input branch target address from ID
           en_o :   					out STD_LOGIC;                                      -- output enable signal to ROM
           pc_o :   					out STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);    -- output program counter (instruction address) to ROM           

           flush_i :                      in std_logic;
           new_pc_i :                     in STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);
           new_pc_en_i:                  in std_logic
           );
end PC;

architecture Behavioral of PC is
begin
    process (clk'event)
        variable is_start: STD_LOGIC;
    begin
        if rising_edge(clk) then
            if rst = RST_ENABLE then
                en_o <= CHIP_DISABLE;  -- ROM is disabled when reset
                pc_o <= x"80000000";
                is_start := '1';
            else
                en_o <= CHIP_ENABLE;   -- ROM is enabled in general
            end if;
            -- If I rewrite it, the first instruction might not be read
            if en_o = CHIP_DISABLE then   -- When ROM is disabled, PC = 0
                pc_o <= x"00000000";
            else                        -- When ROM is enabled, PC increase by 4 every clock cycle
                if flush_i = '1' then
                    --pc_o <= x"00000000";
                    pc_o <= new_pc_i;
            	elsif pause_i(PC_PAUSE_INDEX) = PAUSE_NOT then
            		if branch_i = BRANCH then
            			pc_o <= branch_target_addr_i;
            		elsif new_pc_en_i = '1' then
            		    pc_o <= new_pc_i;
            		else
            		    if is_start = '0' then
            			    pc_o <= pc_o + x"00000004";  -- IEEE.STD_LOGIC_SIGNED library
            			else
            			    pc_o <= x"80000000";
            			    is_start := '0';
            			end if;
            		end if;
                end if;
            end if;
        end if;
    end process;
    
end Behavioral;
