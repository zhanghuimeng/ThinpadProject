----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2017/11/20 18:14:38
-- Design Name: 
-- Module Name: PAUSE_CTRL - Behavioral
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
use STD.TEXTIO.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

use WORK.INCLUDE.ALL;

entity PAUSE_CTRL is
    Port ( rst : in STD_LOGIC;													-- Reset
           id_pause_i : in STD_LOGIC;											-- Input pause information from ID
           ex_pause_i : in STD_LOGIC;											-- Input pause information from EX
           if_pause_i : in STD_LOGIC;
           mem_pause_i: in STD_LOGIC;
		   pause_o : 	out STD_LOGIC_VECTOR(CTRL_PAUSE_LEN-1 downto 0);		-- Output pause information to PC, IF/ID, ID/EX, EX/MEM, MEM_WB

		   except_type_i :in STD_LOGIC_VECTOR(EXCEPT_TYPE_LEN-1 downto 0);
		   cp0_epc_i :  in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
		   new_pc_o : out STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);
		   flush_o : out STD_LOGIC
	);
end PAUSE_CTRL;

architecture Behavioral of PAUSE_CTRL is

begin
	process (all)
		variable output: LINE;
	begin
		if rst = RST_ENABLE then
			pause_o <= b"000000";
			flush_o <= FLUSH_NOT;
			new_pc_o <= INST_ZERO_ADDR;
		elsif except_type_i /= ZERO_DATA then
			--flush_o <= FLUSH;
			pause_o <= b"000000";
			case( except_type_i ) is
			
				when EXCEPT_TYPE_INTERRUPT =>
					--new_pc_o <= EXCEPT_HANDLE_ADDRESS;
					new_pc_o <= x"00000020";
				when EXCEPT_TYPE_SYSCALL =>
					new_pc_o <=  x"00000040";
				when EXCEPT_TYPE_INST_INVALID =>
					new_pc_o <=  x"00000040";
				when EXCEPT_TYPE_TRAP =>
					new_pc_o <=  x"00000040";
				when EXCEPT_TYPE_OVERFLOW =>
					new_pc_o <=  x"00000040";
				when EXCEPT_TYPE_ERET =>
					new_pc_o <= cp0_epc_i;
				when others =>
			
			end case ;
		else
			flush_o <= FLUSH_NOT;
		    if mem_pause_i = PAUSE then
                pause_o <= b"011111"; 
            elsif ex_pause_i = PAUSE then  -- pause IF, ID and EX
				pause_o <= b"001111";
			elsif id_pause_i = PAUSE then  -- pause IF and ID
				pause_o <= b"000111";
			elsif if_pause_i = PAUSE then
			    pause_o <= b"000111"; 
			else
				pause_o <= b"000000";
			end if;
			/* deallocate(output);
            write(output, string'("ID pause = "));
            write(output, id_pause_i);
            write(output, string'(", EX pause = "));
            write(output, ex_pause_i);
            write(output, string'(", pause vector = "));
            write(output, pause_o);
            report output.all; */
		end if;
	end process;

end Behavioral;
