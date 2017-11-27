----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2017/11/12 00:33:04
-- Design Name: 
-- Module Name: EX_to_MEM - Behavioral
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

-- EX_to_MEM Module in CPU

entity EX_to_MEM is
    Port ( rst :                in STD_LOGIC;                                       -- Reset
           clk :                in STD_LOGIC;                                       -- Clock
           reg_wt_en_i :        in STD_LOGIC;                                       -- input register write enable from EX
           reg_wt_addr_i :      in STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);       -- input register write address from EX
           reg_wt_data_i :      in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input register write data from EX
           is_load_store_i :	in STD_LOGIC;										-- input load/store from EX
           funct_i :			in STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0);			-- input load/store type from EX
           load_store_addr_i :	in STD_LOGIC_VECTOR(ADDR_LEN-1 downto 0);			-- input load/store memory address from EX
           store_data_i :		in STD_LOGIC_VECTOR(DATA_LEN-1 downto 0);			-- input store data from EX
           hilo_en_i :          in STD_LOGIC;                                       -- input HILO write enable from EX
           hi_i :               in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input HI data from EX
           lo_i :               in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input LO data from EX
           pause_i :			in STD_LOGIC_VECTOR(CTRL_PAUSE_LEN-1 downto 0);		-- input pause info from PAUSE_CTRL
           clock_cycle_cnt_i : 	in STD_LOGIC_VECTOR(ACCU_CNT_LEN-1 downto 0);		-- input clock cycle count from EX
           mul_cur_result_i : 	in STD_LOGIC_VECTOR(DOUBLE_DATA_LEN-1 downto 0);	-- input accumulation result from EX
           reg_wt_en_o :        out STD_LOGIC;                                      -- output register write enable to MEM
           reg_wt_addr_o :      out STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);      -- output register write address to MEM
           reg_wt_data_o :      out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);      -- output register write data to MEM
           is_load_store_o :	out STD_LOGIC;										-- output load/store to MEM
           funct_o :			out STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0);			-- output load/store type to MEM
           load_store_addr_o :	out STD_LOGIC_VECTOR(ADDR_LEN-1 downto 0);			-- output load/store memory address to MEM
           store_data_o :		out STD_LOGIC_VECTOR(DATA_LEN-1 downto 0);			-- output store data to MEM
           hilo_en_o :          out STD_LOGIC;                                      -- output HILO write enable to MEM
           hi_o :               out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);      -- output HI data to MEM
           lo_o :               out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);      -- output LO data to MEM
           clock_cycle_cnt_o : 	out STD_LOGIC_VECTOR(ACCU_CNT_LEN-1 downto 0);		-- output clock cycle count to EX
           mul_cur_result_o : 	out STD_LOGIC_VECTOR(DOUBLE_DATA_LEN-1 downto 0));	-- output accumulation result to EX
end EX_to_MEM;

architecture Behavioral of EX_to_MEM is

begin

    process (clk'event)
    begin
        if rising_edge(clk) then
            if rst = RST_ENABLE then
                reg_wt_en_o <= REG_WT_DISABLE;
                reg_wt_addr_o <= REG_ZERO_ADDR;
                reg_wt_data_o <= REG_ZERO_DATA;
                is_load_store_o <= NOT_LOAD_STORE;
	          	funct_o <= FUNCT_TYPE_NOP;
	           	load_store_addr_o <= ZERO_ADDR;
	           	store_data_o <= ZERO_DATA;
                hilo_en_o <= CHIP_DISABLE;
                hi_o <= REG_ZERO_DATA;
                lo_o <= REG_ZERO_DATA;
                clock_cycle_cnt_o <= "00";
                mul_cur_result_o <= DOUBLE_ZERO_DATA;
            else
            	if (pause_i(EX_PAUSE_INDEX) = PAUSE) and (pause_i(MEM_PAUSE_INDEX) = PAUSE_NOT) then  -- Give empty output
            		reg_wt_en_o <= REG_WT_DISABLE;
	                reg_wt_addr_o <= REG_ZERO_ADDR;
	                reg_wt_data_o <= REG_ZERO_DATA;
	                is_load_store_o <= NOT_LOAD_STORE;
		          	funct_o <= FUNCT_TYPE_NOP;
		           	load_store_addr_o <= ZERO_ADDR;
		           	store_data_o <= ZERO_DATA;
	                hilo_en_o <= CHIP_DISABLE;
	                hi_o <= REG_ZERO_DATA;
	                lo_o <= REG_ZERO_DATA;
	                clock_cycle_cnt_o <= clock_cycle_cnt_i;
                	mul_cur_result_o <= mul_cur_result_i;
            	elsif pause_i(EX_PAUSE_INDEX) = PAUSE_NOT then  -- Does not stop
	                reg_wt_en_o <= reg_wt_en_i;
	                reg_wt_addr_o <= reg_wt_addr_i;
	                reg_wt_data_o <= reg_wt_data_i;
	                is_load_store_o <= is_load_store_i;
          			funct_o <= funct_i;
           			load_store_addr_o <= load_store_addr_i;
           			store_data_o <= store_data_i;
	                hilo_en_o <= hilo_en_i;
	                hi_o <= hi_i;
	                lo_o <= lo_i;
	                clock_cycle_cnt_o <= "00";
                	mul_cur_result_o <= DOUBLE_ZERO_DATA;
                else  -- Special for EX registers
                	clock_cycle_cnt_o <= clock_cycle_cnt_i;
                	mul_cur_result_o <= mul_cur_result_i;
	            end if;
            end if;
        end if;
    end process;

end Behavioral;
