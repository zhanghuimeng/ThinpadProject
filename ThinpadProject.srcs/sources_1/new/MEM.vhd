----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2017/11/12 00:33:04
-- Design Name: 
-- Module Name: MEM - Behavioral
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

-- MEM Module in CPU
-- Combinatory Logic

entity MEM is
    Port ( rst :                in STD_LOGIC;                                       -- Reset
           reg_wt_en_i :        in STD_LOGIC;                                       -- input register write enable from EX/MEM
           reg_wt_addr_i :      in STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);       -- input register write address from EX/MEM
           reg_wt_data_i :      in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input register write data from EX/MEM
           ram_rd_data_i :		in STD_LOGIC_VECTOR(DATA_LEN-1 downto 0);			-- input data read from RAM
           is_load_store_i :	in STD_LOGIC;										-- input load/store from EX/MEM
           funct_i :			in STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0);			-- input load/store type from EX/MEM
           load_store_addr_i :	in STD_LOGIC_VECTOR(ADDR_LEN-1 downto 0);			-- input load/store memory address from EX/MEM
           store_data_i :		in STD_LOGIC_VECTOR(DATA_LEN-1 downto 0);			-- input store data from EX/MEM
           hilo_en_i :          in STD_LOGIC;                                       -- input HILO enable from EX/MEM
           hi_i :               in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input HI data from EX/MEM
           lo_i :               in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input LO data from EX/MEM
           reg_wt_en_o :        out STD_LOGIC;                                      -- output register write enable to MEM/WB
           reg_wt_addr_o :      out STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);      -- output register write address to MEM/WB
           reg_wt_data_o :      out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);      -- output register write data to MEM/WB
           ram_en_o :			out STD_LOGIC;										-- output RAM enable to RAM
           ram_is_read_o :		out STD_LOGIC;										-- output if this instruction is reading to RAM
           ram_addr_o :			out STD_LOGIC_VECTOR(ADDR_LEN-1 downto 0);			-- output data address to RAM
           ram_data_o :			out STD_LOGIC_VECTOR(DATA_LEN-1 downto 0);			-- output data to write to RAM
           ram_data_sel_o : 	out STD_LOGIC_VECTOR(BYTE_IN_DATA-1 downto 0);		-- output RAM data selection to RAM
           hilo_en_o :          out STD_LOGIC;                                      -- output HILO write enable to MEM/WB and EX
           hi_o :               out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);      -- output HI data to MEM/WB and EX
           lo_o :               out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0));     -- output lo data to MEM/WB and EX
end MEM;

architecture Behavioral of MEM is

begin
    process (all)
    begin
        if rst = RST_ENABLE then
            reg_wt_en_o <= REG_WT_DISABLE;
            reg_wt_addr_o <= REG_ZERO_ADDR;
            reg_wt_data_o <= REG_ZERO_DATA;
            ram_en_o <= CHIP_DISABLE;
			ram_is_read_o <= IS_READ;
			ram_addr_o <= ZERO_ADDR;
			ram_data_o <= ZERO_DATA;
			ram_data_sel_o <= "0000";
            hilo_en_o <= CHIP_DISABLE;
            hi_o <= REG_ZERO_DATA;
            lo_o <= REG_ZERO_DATA;
        else
        	-- Write Registers
            reg_wt_en_o <= reg_wt_en_i;
            reg_wt_addr_o <= reg_wt_addr_i;
            reg_wt_data_o <= reg_wt_data_i;
            -- Write HILO
            hilo_en_o <= hilo_en_i;
            hi_o <= hi_i;
            lo_o <= lo_i;
            -- Load/Store
            ram_en_o <= CHIP_DISABLE;
			ram_is_read_o <= IS_READ;
			ram_addr_o <= ZERO_ADDR;
			ram_data_o <= ZERO_DATA;
			ram_data_sel_o <= "0000";
			
			if is_load_store_i = '1' then
				
				-- 外部的数据存储器并没有依据mem_addr_o地址读取数据，而是将mem_addr_o地址的最后两位修改为0，
				-- 依据修改后的地址读取数据，所以OpenMIPS需要依据mem_addr_o最后两位的值，确定要读取的字节。
				load_store_type: case funct_i is
					
					when FUNCT_TYPE_LB =>
						ram_en_o <= CHIP_ENABLE;
						ram_addr_o <= load_store_addr_i;
						lb_addr: case load_store_addr_i(1 downto 0) is
							when "00" =>
								ram_data_sel_o <= "1000";
								reg_wt_data_o <= sign_extend(ram_rd_data_i(DATA_LEN-1 downto DATA_LEN-BYTE_LEN), REG_DATA_LEN);
							when "01" =>
								ram_data_sel_o <= "0100";
								reg_wt_data_o <= sign_extend(ram_rd_data_i(DATA_LEN-BYTE_LEN-1 downto DATA_LEN-2*BYTE_LEN), REG_DATA_LEN);
							when "10" =>
								ram_data_sel_o <= "0010";
								reg_wt_data_o <= sign_extend(ram_rd_data_i(2*BYTE_LEN-1 downto BYTE_LEN), REG_DATA_LEN);
							when "11" =>
								ram_data_sel_o <= "0001";
								reg_wt_data_o <= sign_extend(ram_rd_data_i(BYTE_LEN-1 downto 0), REG_DATA_LEN);
						    when others =>
						        reg_wt_data_o <= REG_ZERO_DATA;   -- 为什么要置0呢？不知道，随便写的，反正应该错了。
						end case lb_addr;
						
					when FUNCT_TYPE_LBU =>
						ram_en_o <= CHIP_ENABLE;
						ram_addr_o <= load_store_addr_i;
						lbu_addr: case load_store_addr_i(1 downto 0) is
							when "00" =>
								ram_data_sel_o <= "1000";
								reg_wt_data_o <= zero_extend(ram_rd_data_i(DATA_LEN-1 downto DATA_LEN-BYTE_LEN), REG_DATA_LEN);
							when "01" =>
								ram_data_sel_o <= "0100";
								reg_wt_data_o <= zero_extend(ram_rd_data_i(DATA_LEN-BYTE_LEN-1 downto DATA_LEN-2*BYTE_LEN), REG_DATA_LEN);
							when "10" =>
								ram_data_sel_o <= "0010";
								reg_wt_data_o <= zero_extend(ram_rd_data_i(2*BYTE_LEN-1 downto BYTE_LEN), REG_DATA_LEN);
							when "11" =>
								ram_data_sel_o <= "0001";
								reg_wt_data_o <= zero_extend(ram_rd_data_i(BYTE_LEN-1 downto 0), REG_DATA_LEN);
							when others =>
								reg_wt_data_o <= REG_ZERO_DATA;
						end case lbu_addr;
					
					when FUNCT_TYPE_LH =>
						ram_en_o <= CHIP_ENABLE;
						ram_addr_o <= load_store_addr_i;
						lh_addr: case load_store_addr_i(1 downto 0) is
							when "00" =>
								ram_data_sel_o <= "1100";
								reg_wt_data_o <= sign_extend(ram_rd_data_i(DATA_LEN-1 downto DATA_LEN-HALF_LEN), REG_DATA_LEN);
							when "10" =>
								ram_data_sel_o <= "0011";
								reg_wt_data_o <= sign_extend(ram_rd_data_i(HALF_LEN-1 downto 0), REG_DATA_LEN);
							when others =>
								reg_wt_data_o <= REG_ZERO_DATA;
						end case lh_addr;
					
					when FUNCT_TYPE_LHU =>
						ram_en_o <= CHIP_ENABLE;
						ram_addr_o <= load_store_addr_i;
						lhu_addr: case load_store_addr_i(1 downto 0) is
							when "00" =>
								ram_data_sel_o <= "1100";
								reg_wt_data_o <= zero_extend(ram_rd_data_i(DATA_LEN-1 downto DATA_LEN-HALF_LEN), REG_DATA_LEN);
							when "10" =>
								ram_data_sel_o <= "0011";
								reg_wt_data_o <= zero_extend(ram_rd_data_i(HALF_LEN-1 downto 0), REG_DATA_LEN);
							when others =>
								reg_wt_data_o <= REG_ZERO_DATA;
						end case lhu_addr;
					
					when FUNCT_TYPE_LW =>
						ram_en_o <= CHIP_ENABLE;
						ram_addr_o <= load_store_addr_i;
						ram_data_sel_o <= "1111";
						reg_wt_data_o <= ram_rd_data_i;
					
					when FUNCT_TYPE_LWL =>
						-- store_data_i is rt
						ram_en_o <= CHIP_ENABLE;
						ram_addr_o <= load_store_addr_i(ADDR_LEN-1 downto 2) & "00";
						ram_data_sel_o <= "1111";
						lwl_addr: case load_store_addr_i(1 downto 0) is
							when "00" =>
								reg_wt_data_o <= ram_rd_data_i;
							when "01" =>
								reg_wt_data_o <= ram_rd_data_i(3*BYTE_LEN-1 downto 0) & store_data_i(BYTE_LEN-1 downto 0);
							when "10" =>
								reg_wt_data_o <= ram_rd_data_i(2*BYTE_LEN-1 downto 0) & store_data_i(2*BYTE_LEN-1 downto 0);
							when "11" =>
								reg_wt_data_o <= ram_rd_data_i(BYTE_LEN-1 downto 0) & store_data_i(3*BYTE_LEN-1 downto 0);
							when others =>
								reg_wt_data_o <= REG_ZERO_DATA;
						end case lwl_addr;
					
					when FUNCT_TYPE_LWR =>
						-- store_data_i is rt
						ram_en_o <= CHIP_ENABLE;
						ram_addr_o <= load_store_addr_i(ADDR_LEN-1 downto 2) & "00";
						ram_data_sel_o <= "1111";
						lwr_addr: case load_store_addr_i(1 downto 0) is
							when "00" =>
								reg_wt_data_o <= store_data_i(DATA_LEN-1 downto BYTE_LEN) & ram_rd_data_i(DATA_LEN-1 downto DATA_LEN-BYTE_LEN);
							when "01" =>
								reg_wt_data_o <= store_data_i(DATA_LEN-1 downto 2*BYTE_LEN) & ram_rd_data_i(DATA_LEN-1 downto DATA_LEN-2*BYTE_LEN);
							when "10" =>
								reg_wt_data_o <= store_data_i(DATA_LEN-1 downto 3*BYTE_LEN) & ram_rd_data_i(DATA_LEN-1 downto DATA_LEN-3*BYTE_LEN);
							when "11" =>
								reg_wt_data_o <= ram_rd_data_i;
							when others =>
								reg_wt_data_o <= REG_ZERO_DATA;
						end case lwr_addr;
					
					when FUNCT_TYPE_SB =>
						ram_en_o <= CHIP_ENABLE;
						ram_is_read_o <= IS_WRITE;
						ram_addr_o <= load_store_addr_i;
						ram_data_o <= store_data_i(BYTE_LEN-1 downto 0) & store_data_i(BYTE_LEN-1 downto 0)
							& store_data_i(BYTE_LEN-1 downto 0) & store_data_i(BYTE_LEN-1 downto 0);
						sb_addr: case load_store_addr_i(1 downto 0) is
							when "00" =>
								ram_data_sel_o <= "1000";
							when "01" =>
								ram_data_sel_o <= "0100";
							when "10" =>
								ram_data_sel_o <= "0010";
							when "11" =>
								ram_data_sel_o <= "0001";
							when others =>
								ram_data_sel_o <= "0000";
						end case sb_addr;
					
					when FUNCT_TYPE_SH =>
						ram_en_o <= CHIP_ENABLE;
						ram_is_read_o <= IS_WRITE;
						ram_addr_o <= load_store_addr_i;
						ram_data_o <= store_data_i(2*BYTE_LEN-1 downto 0) & store_data_i(2*BYTE_LEN-1 downto 0);
						sh_addr: case load_store_addr_i(1 downto 0) is
							when "00" =>
								ram_data_sel_o <= "1100";
							when "10" =>
								ram_data_sel_o <= "0011";
							when others =>
								ram_data_sel_o <= "0000";
						end case sh_addr;
					
					when FUNCT_TYPE_SW =>
						ram_en_o <= CHIP_ENABLE;
						ram_is_read_o <= IS_WRITE;
						ram_addr_o <= load_store_addr_i;
						ram_data_o <= store_data_i;
					
					when FUNCT_TYPE_SWL =>
						ram_en_o <= CHIP_ENABLE;
						ram_is_read_o <= IS_WRITE;
						ram_addr_o <= load_store_addr_i(ADDR_LEN-1 downto 2) & "00";
						
						-- ram_data_o <= store_data_i(2*BYTE_LEN-1 downto 0) & store_data_i(2*BYTE_LEN-1 downto 0);
						swl_addr: case load_store_addr_i(1 downto 0) is
							when "00" =>
								ram_data_sel_o <= "1111";
								ram_data_o <= store_data_i;
							when "01" =>
								ram_data_sel_o <= "0111";
								ram_data_o <= zero_extend(store_data_i(DATA_LEN-1 downto BYTE_LEN), DATA_LEN);
							when "10" =>
								ram_data_sel_o <= "0011";
								ram_data_o <= zero_extend(store_data_i(DATA_LEN-1 downto 2*BYTE_LEN), DATA_LEN);
							when "11" =>
								ram_data_sel_o <= "0001";
								ram_data_o <= zero_extend(store_data_i(DATA_LEN-1 downto 3*BYTE_LEN), DATA_LEN);
							when others =>
								ram_data_sel_o <= "0000";
						end case swl_addr;
					
					when FUNCT_TYPE_SWR =>
						ram_en_o <= CHIP_ENABLE;
						ram_is_read_o <= IS_WRITE;
						ram_addr_o <= load_store_addr_i(ADDR_LEN-1 downto 2) & "00";
						
						-- ram_data_o <= store_data_i(2*BYTE_LEN-1 downto 0) & store_data_i(2*BYTE_LEN-1 downto 0);
						swr_addr: case load_store_addr_i(1 downto 0) is
							when "00" =>
								ram_data_sel_o <= "1000";
								ram_data_o <= store_data_i(BYTE_LEN-1 downto 0) & x"000000";
							when "01" =>
								ram_data_sel_o <= "1100";
								ram_data_o <= store_data_i(2*BYTE_LEN-1 downto 0) & x"0000";
							when "10" =>
								ram_data_sel_o <= "1110";
								ram_data_o <= store_data_i(3*BYTE_LEN-1 downto 0) & x"00";
							when "11" =>
								ram_data_sel_o <= "1111";
								ram_data_o <= store_data_i;
							when others =>
								ram_data_sel_o <= "0000";
						end case swr_addr;
					
					when others =>
					
				end case load_store_type;
			end if;
        end if;
    end process;

end Behavioral;
