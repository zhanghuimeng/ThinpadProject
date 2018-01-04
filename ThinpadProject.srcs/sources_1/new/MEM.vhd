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
           ram_rd_data_i :		in STD_LOGIC_VECTOR(DATA_LEN-1 downto 0);			   -- input data read from RAM
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
		   lo_o :               out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);     -- output lo data to MEM/WB and EX
		   
		   cp0_reg_we_i :       in std_logic;
		   cp0_reg_write_addr_i : in STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);
		   cp0_reg_data_i :     in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);

		   cp0_reg_we_o :       out std_logic;
		   cp0_reg_write_addr_o : out STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);
		   cp0_reg_data_o :     out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);

		   current_inst_address_i :     in STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);
           except_type_i :              in STD_LOGIC_VECTOR(EXCEPT_TYPE_LEN-1 downto 0);
		   is_in_delayslot_i :          in std_logic;
		   
           status_i : in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
           cause_i : in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
           epc_i : in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
		   
		   wb_cp0_reg_we_i :   in STD_LOGIC;
           wb_cp0_reg_write_addr_i: in STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);
           wb_cp0_reg_data_i:  in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);

		   cp0_epc_o : 					out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
           current_inst_address_o :     out STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);
           except_type_o :              out STD_LOGIC_VECTOR(EXCEPT_TYPE_LEN-1 downto 0);
           is_in_delayslot_o :          out std_logic
	);
end MEM;

architecture Behavioral of MEM is

begin
	process (all)
	variable zero32 : STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
	variable cp0_status : STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
	variable cp0_cause : STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
	variable cp0_epc : STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
	variable except_type : STD_LOGIC_VECTOR(EXCEPT_TYPE_LEN-1 downto 0);

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
			cp0_reg_we_o <= REG_WT_DISABLE;
			cp0_reg_write_addr_o <= REG_ZERO_ADDR;
			cp0_reg_data_o <= REG_ZERO_DATA;

			cp0_epc_o <= REG_ZERO_DATA;
           	current_inst_address_o <= INST_ZERO_ADDR;
           	except_type_o <= ZERO_DATA;
           	is_in_delayslot_o <= DELAYSLOT_NOT;
			zero32 := ZERO_DATA;
			cp0_status := ZERO_DATA;
			cp0_cause := ZERO_DATA;
			cp0_epc := ZERO_DATA;
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

			--cp0
			cp0_reg_we_o <= cp0_reg_we_i;
			cp0_reg_write_addr_o <= cp0_reg_write_addr_i;
			cp0_reg_data_o <= cp0_reg_data_i;

			zero32 := ZERO_DATA;
			except_type := ZERO_DATA;

			
			-- solve status data conflict
			if wb_cp0_reg_we_i = REG_WT_ENABLE and wb_cp0_reg_write_addr_i = CP0_REG_STATUS then
				cp0_status := wb_cp0_reg_data_i;
			else
				cp0_status := status_i;
			end if;

			-- solve epc data conflict
			if wb_cp0_reg_we_i = REG_WT_ENABLE and wb_cp0_reg_write_addr_i = CP0_REG_EPC then
				cp0_epc := wb_cp0_reg_data_i;
			else
				cp0_epc := epc_i;
			end if;
			
			-- solve cause data conflict
			if wb_cp0_reg_we_i = REG_WT_ENABLE and wb_cp0_reg_write_addr_i = CP0_REG_CAUSE then
				cp0_cause(9 downto 8) := wb_cp0_reg_data_i(9 downto 8);
				cp0_cause(22) := wb_cp0_reg_data_i(22);
				cp0_cause(23) := wb_cp0_reg_data_i(23);
			else
				cp0_cause := cause_i;
			end if;

			if is_load_store_i = '1' then
				
				-- ????????????????????em_addr_o????????????????em_addr_o???????????????0??
				-- ???????????????????????penMIPS???????em_addr_o?????????????????????????
				load_store_type: case funct_i is
                                    
                    when FUNCT_TYPE_LB =>
                        ram_en_o <= CHIP_ENABLE;
                        ram_addr_o <= load_store_addr_i(31 downto 2) & "00";  -- An aligned address
                        lb_addr: case load_store_addr_i(1 downto 0) is
                            when "00" =>
                                ram_data_sel_o <= "0001";  -- order
                                reg_wt_data_o <= sign_extend(ram_rd_data_i(7 downto 0), REG_DATA_LEN);
                            when "01" =>
                                ram_data_sel_o <= "0010"; -- change
                                reg_wt_data_o <= sign_extend(ram_rd_data_i(15 downto 8), REG_DATA_LEN);
                            when "10" =>
                                ram_data_sel_o <= "0100"; -- change
                                reg_wt_data_o <= sign_extend(ram_rd_data_i(23 downto 16), REG_DATA_LEN);
                            when "11" =>
                                ram_data_sel_o <= "1000"; -- order
                                reg_wt_data_o <= sign_extend(ram_rd_data_i(31 downto 24), REG_DATA_LEN);
                            when others =>
                                reg_wt_data_o <= REG_ZERO_DATA;   -- 为什么要??0呢？不知道，随便写的，反正应该错了???
                            end case lb_addr;
                                        
                            when FUNCT_TYPE_LBU =>
                                ram_en_o <= CHIP_ENABLE;
                                ram_addr_o <= load_store_addr_i(31 downto 2) & "00";  -- An aligned address
                                lbu_addr: case load_store_addr_i(1 downto 0) is
                                    when "00" =>
                                        ram_data_sel_o <= "0001"; -- order
                                        reg_wt_data_o <= zero_extend(ram_rd_data_i(7 downto 0), REG_DATA_LEN);
                                    when "01" =>
                                        ram_data_sel_o <= "0010";-- order
                                        reg_wt_data_o <= zero_extend(ram_rd_data_i(15 downto 8), REG_DATA_LEN);
                                    when "10" =>
                                        ram_data_sel_o <= "0100";-- order
                                        reg_wt_data_o <= zero_extend(ram_rd_data_i(23 downto 16), REG_DATA_LEN);
                                    when "11" =>
                                        ram_data_sel_o <= "1000";-- order
                                        reg_wt_data_o <= zero_extend(ram_rd_data_i(31 downto 24), REG_DATA_LEN);
                                    when others =>
                                        reg_wt_data_o <= REG_ZERO_DATA;
                                    end case lbu_addr;
                                    
                               when FUNCT_TYPE_LH =>
                                        ram_en_o <= CHIP_ENABLE;
                                        ram_addr_o <= load_store_addr_i;
                                        lh_addr: case load_store_addr_i(1 downto 0) is
                                            when "00" =>
                                                ram_data_sel_o <= "0011";-- order
                                                reg_wt_data_o <= sign_extend(ram_rd_data_i(15 downto 0), REG_DATA_LEN);
                                            when "10" =>
                                                ram_data_sel_o <= "1100";-- order
                                                reg_wt_data_o <= sign_extend(ram_rd_data_i(31 downto 16), REG_DATA_LEN);
                                            when others =>
                                                reg_wt_data_o <= REG_ZERO_DATA;
                                        end case lh_addr;
                                    
                                    when FUNCT_TYPE_LHU =>
                                        ram_en_o <= CHIP_ENABLE;
                                        ram_addr_o <= load_store_addr_i;
                                        lhu_addr: case load_store_addr_i(1 downto 0) is
                                            when "00" =>
                                                ram_data_sel_o <= "0011";-- order
                                                reg_wt_data_o <= zero_extend(ram_rd_data_i(15 downto 0), REG_DATA_LEN);
                                            when "10" =>
                                                ram_data_sel_o <= "1100";-- order
                                                reg_wt_data_o <= zero_extend(ram_rd_data_i(31 downto 16), REG_DATA_LEN);
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
						ram_data_sel_o <= "1111";  -- 蹇樹簡鍐欎簡
						ram_addr_o <= load_store_addr_i;
						ram_data_o <= store_data_i;
					
					
					when others =>
					
				end case load_store_type;
			end if;
			is_in_delayslot_o <= is_in_delayslot_i;
			current_inst_address_o <= current_inst_address_i;
			cp0_epc_o <= cp0_epc;

			if current_inst_address_i /= ZERO_DATA then
				if ((cp0_cause(15 downto 8) and cp0_status(15 downto 8)) /= "00000000" )
				and cp0_status(1) = '0' and  cp0_status(0) = '1' then
					except_type := EXCEPT_TYPE_INTERRUPT; -- interrupt
				elsif except_type_i(8) = '1' then
					except_type := EXCEPT_TYPE_SYSCALL ;-- syscall
				elsif except_type_i(9) = '1' then
					except_type := EXCEPT_TYPE_INST_INVALID; -- inst_invalid
				elsif except_type_i(10) = '1' then
					except_type := EXCEPT_TYPE_TRAP; -- trap
				elsif except_type_i(11) = '1' then
					except_type := EXCEPT_TYPE_OVERFLOW; --overflow
				elsif except_type_i(12) = '1' then
					except_type := EXCEPT_TYPE_ERET ;-- eret
				else 
				end if ;
			end if ;
			
			except_type_o <= except_type;
			if except_type /= x"00000000" then
				ram_en_o <= CHIP_DISABLE;
			end if ;
        end if;
    end process;

end Behavioral;
