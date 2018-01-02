----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2017/11/12 00:33:04
-- Design Name: 
-- Module Name: IF_to_ID - Behavioral
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

-- IF to ID Module in CPU

entity IF_to_ID is
    Port ( rst :    	in STD_LOGIC;                                       -- Reset
           clk :    	in STD_LOGIC;                                       -- Clock
           pc_i :   	in STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);      -- input program counter (instruction address) from ROM
           inst_i : 	in STD_LOGIC_VECTOR(INST_LEN-1 downto 0);           -- input instruction from ROM
           pause_i :	in STD_LOGIC_VECTOR(CTRL_PAUSE_LEN-1 downto 0);		-- input pause info from PAUSE_CTRL
           pc_o :   	out STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);     -- output program counter (instruction address) to ID
           inst_o : 	out STD_LOGIC_VECTOR(INST_LEN-1 downto 0);         -- output instruction to ID
           flush_i :    in STD_LOGIC);
end IF_to_ID;

architecture Behavioral of IF_to_ID is

begin

    process (clk'event)
    begin
        if rising_edge(clk) then
            if (rst = RST_ENABLE) or (flush_i = P_FLUSH) then  -- When rst is enabled, output 0
                pc_o <= x"00000000";
                inst_o <= x"00000000";
            else
            	if (pause_i(IF_PAUSE_INDEX) = PAUSE) and (pause_i(ID_PAUSE_INDEX) = PAUSE_NOT) then  -- Give nop instructions
            		pc_o <= x"00000000";
                	inst_o <= x"00000000";
                elsif pause_i(IF_PAUSE_INDEX) = PAUSE_NOT then  -- Does not stop
	                pc_o <= pc_i;
	                inst_o <= inst_i;
	            end if;  -- Keep the output same
            end if;
        end if;
    end process;

end Behavioral;
