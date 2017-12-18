----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2017/11/12 00:33:04
-- Design Name: 
-- Module Name: MEM_to_WB - Behavioral
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

-- MEM_to_WB Module in CPU

entity MEM_to_WB is
    Port ( rst :                in STD_LOGIC;                                       -- Reset
           clk :                in STD_LOGIC;                                       -- Clock
           reg_wt_en_i :        in STD_LOGIC;                                       -- input register write enable from MEM
           reg_wt_addr_i :      in STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);       -- input register write address from MEM
           reg_wt_data_i :      in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input register write data from MEM
           hilo_en_i :          in STD_LOGIC;                                       -- input HILO enable from MEM
           hi_i :               in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input HI data from MEM
           lo_i :               in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input LO data from MEM
           pause_i :			in STD_LOGIC_VECTOR(CTRL_PAUSE_LEN-1 downto 0);		-- input pause info from PAUSE_CTRL
           reg_wt_en_o :        out STD_LOGIC;                                      -- output register write enable to REGISTERS
           reg_wt_addr_o :      out STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);      -- output register write address to REGISTERS
           reg_wt_data_o :      out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);      -- output register write data to REGISTERS
           hilo_en_o :          out STD_LOGIC;                                      -- output HILO write enable to HILO and EX
           hi_o :               out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);      -- output HI data to HILO and EX
           lo_o :               out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);     -- output lo data to HILO and EX

           mem_cp0_reg_we_i :   in STD_LOGIC;
           mem_cp0_reg_write_addr_i: in STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);
           mem_cp0_reg_data_i:  in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);

           wb_cp0_reg_we_o :   out STD_LOGIC;
           wb_cp0_reg_write_addr_o: out STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);
           wb_cp0_reg_data_o:  out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0));

end MEM_to_WB;

architecture Behavioral of MEM_to_WB is

begin

    process (clk'event)
    begin
        if rising_edge(clk) then
            if rst = RST_ENABLE then
                reg_wt_en_o <= REG_WT_DISABLE;
                reg_wt_addr_o <= REG_ZERO_ADDR;
                reg_wt_data_o <= REG_ZERO_DATA;
                hilo_en_o <= CHIP_DISABLE;
                hi_o <= REG_ZERO_DATA;
                lo_o <= REG_ZERO_DATA;
                wb_cp0_reg_we_o <= REG_WT_DISABLE;
                wb_cp0_reg_write_addr_o <= REG_ZERO_ADDR;
                wb_cp0_reg_data_o <= REG_ZERO_DATA;

            else
            	if (pause_i(MEM_PAUSE_INDEX) = PAUSE) and (pause_i(WB_PAUSE_INDEX) = PAUSE_NOT) then  -- Give empty output
            		reg_wt_en_o <= REG_WT_DISABLE;
	                reg_wt_addr_o <= REG_ZERO_ADDR;
	                reg_wt_data_o <= REG_ZERO_DATA;
	                hilo_en_o <= CHIP_DISABLE;
	                hi_o <= REG_ZERO_DATA;
                    lo_o <= REG_ZERO_DATA;

                    wb_cp0_reg_we_o <= REG_WT_DISABLE;
                    wb_cp0_reg_write_addr_o <= REG_ZERO_ADDR;
                    wb_cp0_reg_data_o <= REG_ZERO_DATA;
            	elsif pause_i(MEM_PAUSE_INDEX) = PAUSE_NOT then  -- Does not stop
	                reg_wt_en_o <= reg_wt_en_i;
	                reg_wt_addr_o <= reg_wt_addr_i;
	                reg_wt_data_o <= reg_wt_data_i;
	                hilo_en_o <= hilo_en_i;
	                hi_o <= hi_i;
                    lo_o <= lo_i;
                    
                    wb_cp0_reg_we_o <= mem_cp0_reg_we_i;
                    wb_cp0_reg_write_addr_o <= mem_cp0_reg_write_addr_i;
                    wb_cp0_reg_data_o <= mem_cp0_reg_data_i;
	            end if;
            end if;
        end if;
    end process;

end Behavioral;
