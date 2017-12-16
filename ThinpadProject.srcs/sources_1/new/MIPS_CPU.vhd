----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2017/11/12 00:33:04
-- Design Name: 
-- Module Name: MIPS_CPU - Behavioral
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

entity MIPS_CPU is
    Port ( -- clk :            in STD_LOGIC;                                   -- Clock
           touch_btn :      in STD_LOGIC_VECTOR(5 downto 0);
           -- inst_i :         in STD_LOGIC_VECTOR(INST_LEN-1 downto 0);       -- input instruction from ROM
           -- rom_en_o :       out STD_LOGIC;                                  -- output enable to ROM
           -- rom_addr_o :     out STD_LOGIC_VECTOR(INST_LEN-1 downto 0);     -- output instruction address to ROM
           
           ram1_ce_n_o : out STD_LOGIC;
           ram1_oe_n_o : out STD_LOGIC;
           ram1_we_n_o : out STD_LOGIC;
           ram1_be_n_o : out STD_LOGIC_VECTOR(BYTE_IN_DATA - 1 downto 0);
           ram1_addr_o : out STD_LOGIC_VECTOR(RAM_ADDR_LEN - 1 downto 0);
           ram1_data   : inout STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);
           ram2_ce_n_o : out STD_LOGIC;
           ram2_oe_n_o : out STD_LOGIC;
           ram2_we_n_o : out STD_LOGIC;
           ram2_be_n_o : out STD_LOGIC_VECTOR(BYTE_IN_DATA - 1 downto 0);
           ram2_addr_o : out STD_LOGIC_VECTOR(RAM_ADDR_LEN - 1 downto 0);
           ram2_data   : inout STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);
           
           leds : out STD_LOGIC_VECTOR(31 downto 0));
end MIPS_CPU;

architecture Behavioral of MIPS_CPU is

component PC
    Port ( rst :    					in STD_LOGIC;                                       -- Reset
           clk :    					in STD_LOGIC;                                       -- Clock
           pause_i :					in STD_LOGIC_VECTOR(CTRL_PAUSE_LEN-1 downto 0);		-- input pause info from PAUSE_CTRL
           branch_i :					in STD_LOGIC;										-- input branch or not from ID
           branch_target_address_i : 	in STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);  	-- input branch target address from ID
           pc_o :   					out STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);     -- output program counter (instruction address) to ROM
           en_o :   					out STD_LOGIC);                                     -- output enable signal to ROM
end component;

component IF_to_ID is
    Port ( rst :    	in STD_LOGIC;                                       -- Reset
           clk :    	in STD_LOGIC;                                       -- Clock
           pc_i :   	in STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);      -- input program counter (instruction address) from ROM
           inst_i : 	in STD_LOGIC_VECTOR(INST_LEN-1 downto 0);           -- input instruction from ROM
           pause_i :	in STD_LOGIC_VECTOR(CTRL_PAUSE_LEN-1 downto 0);		-- input pause info from PAUSE_CTRL
           pc_o :   	out STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);     -- output program counter (instruction address) to ID
           inst_o : 	out STD_LOGIC_VECTOR(INST_LEN-1 downto 0));         -- output instruction to ID
end component;

component ID is
    Port ( rst :                		in STD_LOGIC;                                       -- Reset
           pc_i :               		in STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);      -- input program counter (instruction address) from IF_to_ID
           inst_i :             		in STD_LOGIC_VECTOR(INST_LEN-1 downto 0);           -- input instruction from IF_to_ID
           reg_rd_data_1_i :    		in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input register 1 read data from REGISTERS
           reg_rd_data_2_i :    		in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input register 2 read data from REGISTERS
           ex_reg_wt_en_i :     		in STD_LOGIC;                                       -- input EX register write enable from EX (push forward data to solve data conflict)
           ex_reg_wt_addr_i :   		in STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);       -- input EX register write address from EX (push forward data to solve data conflict)
           ex_reg_wt_data_i :   		in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input EX register write data from EX (push forward data to solve data conflict)
           mem_reg_wt_en_i :    		in STD_LOGIC;                                       -- input MEM register write enable from MEM (push forward data to solve data conflict)
           mem_reg_wt_addr_i :  		in STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);       -- input MEM register write address from MEM (push forward data to solve data conflict)
           mem_reg_wt_data_i :  		in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input MEM register write data from MEM (push forward data to solve data conflict)
           is_in_delayslot_i :			in STD_LOGIC;										-- input if the current instruction is in delay slot from ID/EX
           op_o :               		out STD_LOGIC_VECTOR(OP_LEN-1 downto 0);            -- output custom op type to ID_to_EX
           funct_o :            		out STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0);         -- output custom funct type to ID_to_EX
           reg_rd_en_1_o :      		out STD_LOGIC;                                      -- output register 1 read enable to REGISTERS
           reg_rd_en_2_o :      		out STD_LOGIC;                                      -- output register 2 read enable to REGISTERS
           reg_rd_addr_1_o :    		out STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);      -- output register 1 read address to REGISTERS
           reg_rd_addr_2_o :    		out STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);      -- output register 2 read address to REGISTERS
           operand_1_o :        		out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);      -- output operand 1 to ID/EX
           operand_2_o :        		out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);      -- output operand 2 to ID/EX
           extended_offset_o :			out STD_LOGIC_VECTOR(DATA_LEN-1 downto 0);			-- output extended offset to ID/EX
           reg_wt_en_o :        		out STD_LOGIC;                                      -- output register write enable to ID_to_EX
           reg_wt_addr_o :      		out STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);      -- output register write address to ID_to_EX
           pause_o :					out STD_LOGIC;										-- output pause information to PAUSE_CTRL
		   branch_o :					out STD_LOGIC;										-- output if the next instruction is in delay slot
		   branch_target_addr_o : 		out STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);		-- output the branch target address to PC
		   is_in_delayslot_o :			out STD_LOGIC;										-- output the current instruction in delay slot to ID/EX
		   next_inst_in_delayslot_o :	out STD_LOGIC;										-- output the current instruction in delay slot to ID/EX
		   link_addr_o :				out STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0));	-- output the return address to save to ID/EX
end component;

component ID_to_EX is
    Port ( rst :            			in STD_LOGIC;                                       -- Reset
           clk :            			in STD_LOGIC;                                       -- Clock
           op_i :           			in STD_LOGIC_VECTOR(OP_LEN-1 downto 0);             -- input custom op type from ID
           funct_i :        			in STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0);          -- input custom funct type from ID
           operand_1_i :    			in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input operand 1 data from ID
           operand_2_i :    			in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input operand 2 read data from ID
           extended_offset_i :			in STD_LOGIC_VECTOR(DATA_LEN-1 downto 0);			-- input extended offset from ID
           reg_wt_en_i :    			in STD_LOGIC;                                       -- input register write enable from ID
           reg_wt_addr_i :  			in STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);       -- input register write address from ID
           pause_i :					in STD_LOGIC_VECTOR(CTRL_PAUSE_LEN-1 downto 0);		-- input pause info from PAUSE_CTRL
           is_in_delayslot_i :			in STD_LOGIC;										-- input the current instruction in delay slot from ID
		   next_inst_in_delayslot_i :	in STD_LOGIC;										-- input the next instruction in delay slot from ID
		   link_addr_i :				in STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);		-- output the return address to save from ID
           op_o :           			out STD_LOGIC_VECTOR(OP_LEN-1 downto 0);            -- output custom op type to EX
           funct_o :        			out STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0);         -- output custom funct type to EX
           operand_1_o :    			out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);      -- output operand 1 read data to EX
           operand_2_o :    			out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);      -- output operand 2 read data to EX
           extended_offset_o :			out STD_LOGIC_VECTOR(DATA_LEN-1 downto 0);			-- output extended offset to EX
           reg_wt_en_o :    			out STD_LOGIC;                                      -- output register write enable to EX
           reg_wt_addr_o :  			out STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);      -- output register write address to EX
           is_in_delayslot_o :			out STD_LOGIC;										-- output the current instruction in delay slot to EX
		   next_inst_in_delayslot_o :	out STD_LOGIC;										-- output the next instruction in delay slot to ID
		   link_addr_o :				out STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0));		-- output the register address to save return address to EX
end component;

component EX is
    Port ( rst :            			in STD_LOGIC;                                       -- Reset
           op_i :           			in STD_LOGIC_VECTOR(OP_LEN-1 downto 0);             -- input custom op type from ID/EX
           funct_i :        			in STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0);          -- input custom op type from ID/EX
           operand_1_i :    			in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input operand 1 from ID/EX
           operand_2_i :    			in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input operand 2 from ID/EX
           extended_offset_i :			in STD_LOGIC_VECTOR(DATA_LEN-1 downto 0);			-- input extended offset from ID/EX
           reg_wt_en_i :    			in STD_LOGIC;                                       -- input register write enable from ID/EX
           reg_wt_addr_i :  			in STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);       -- input register write address from ID/EX
           hi_i :           			in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input LO data from HI_LO
           lo_i :           			in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input HI data from HI_LO
           mem_hilo_en_i :  			in STD_LOGIC;                                       -- input HI_LO write enable from MEM
           mem_hi_i :       			in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input LO data from MEM
           mem_lo_i :       			in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input HI data from MEM
           wb_hilo_en_i:    			in STD_LOGIC;                                       -- input HI_LO write enable from MEM/WB
           wb_hi_i :        			in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input LO data from MEM/WB
           wb_lo_i :        			in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input HI data from MEM/WB
           clock_cycle_cnt_i : 			in STD_LOGIC_VECTOR(ACCU_CNT_LEN-1 downto 0);		-- input clock cycle count from EX/MEM
		   mul_cur_result_i : 			in STD_LOGIC_VECTOR(DOUBLE_DATA_LEN-1 downto 0);	-- input accumulation result from EX/MEM
           is_in_delayslot_i :			in STD_LOGIC;										-- input the current instruction in delay slot from ID/EX
		   link_addr_i :				in STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);		-- input the register address to save return address from ID/EX
           reg_wt_en_o :    			out STD_LOGIC;                                      -- output register write enable to EX/MEM
           reg_wt_addr_o :  			out STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);      -- output register write address to EX/MEM
           reg_wt_data_o :  			out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);      -- output register write data to EX/MEM
           is_load_store_o :			out STD_LOGIC;										-- output load/store to EX/MEM
           funct_o :					out STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0);			-- output load/store type to EX/MEM
           load_store_addr_o :			out STD_LOGIC_VECTOR(ADDR_LEN-1 downto 0);			-- output load/store memory address to EX/MEM
           store_data_o :				out STD_LOGIC_VECTOR(DATA_LEN-1 downto 0);			-- output store data to EX/MEM
           hilo_en_o :      			out STD_LOGIC;                                      -- output HI_LO write enable to EX/MEM
           hi_o :           			out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);      -- output HI data to EX/MEM
           lo_o :           			out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);      -- output LO data to EX/MEM
       	   pause_o :					out STD_LOGIC;										-- output pause information to PAUSE_CTRL
		   clock_cycle_cnt_o : 			out STD_LOGIC_VECTOR(ACCU_CNT_LEN-1 downto 0);		-- output clock cycle count to EX/MEM
		   mul_cur_result_o : 			out STD_LOGIC_VECTOR(DOUBLE_DATA_LEN-1 downto 0));	-- output accumulation result to EX/MEM
end component;

component EX_to_MEM is
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
end component;

component MEM is
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
           ram_is_read_o :		out STD_LOGIC;										-- output RAM read to RAM
           ram_addr_o :			out STD_LOGIC_VECTOR(ADDR_LEN-1 downto 0);			-- output RAM address to RAM
           ram_data_o :			out STD_LOGIC_VECTOR(DATA_LEN-1 downto 0);			-- output RAM data to RAM
           ram_data_sel_o : 	out STD_LOGIC_VECTOR(BYTE_IN_DATA-1 downto 0);		-- output RAM data selection to RAM
           hilo_en_o :          out STD_LOGIC;                                      -- output HILO write enable to MEM/WB
           hi_o :               out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);      -- output HI data to MEM/WB
           lo_o :               out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0));     -- output lo data to MEM/WB
end component;

component MEM_to_WB is
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
           lo_o :               out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0));     -- output lo data to HILO and EX
end component;

component REGISTERS is
    Port ( rst :                in STD_LOGIC;                                          -- Reset
           clk :                in STD_LOGIC;                                          -- Clock
           reg_rd_en_1_i :      in STD_LOGIC;                                          -- input register 1 read enable from ID
           reg_rd_en_2_i :      in STD_LOGIC;                                          -- input register 2 read enable from ID
           reg_rd_addr_1_i :    in STD_LOGIC_VECTOR (REG_ADDR_LEN-1 downto 0);         -- input register 1 read address from ID
           reg_rd_addr_2_i :    in STD_LOGIC_VECTOR (REG_ADDR_LEN-1 downto 0);         -- input register 2 read address from ID
           reg_wt_en_i :        in STD_LOGIC;                                          -- input register write enable from MEM_to_WEB
           reg_wt_addr_i :      in STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);          -- input register write address from MEM_to_WEB
           reg_wt_data_i :      in STD_LOGIC_VECTOR (REG_DATA_LEN-1 downto 0);         -- input register write address from MEM_to_WEB
           reg_rd_data_1_o :    out STD_LOGIC_VECTOR (REG_DATA_LEN-1 downto 0);        -- output register 1 read data to ID
           reg_rd_data_2_o :    out STD_LOGIC_VECTOR (REG_DATA_LEN-1 downto 0));       -- output register 2 read data to ID
end component;

component HI_LO is
    Port ( clk :        in STD_LOGIC;                                               -- Clock
           rst :        in STD_LOGIC;                                               -- Reset
           en :         in STD_LOGIC;                                               -- input enable from MEM/WB
           hi_i :       in STD_LOGIC_VECTOR (REG_DATA_LEN-1 downto 0);              -- input HI data from MEM/WB
           lo_i :       in STD_LOGIC_VECTOR (REG_DATA_LEN-1 downto 0);              -- input LO data from MEM/WB
           hi_o :       out STD_LOGIC_VECTOR (REG_DATA_LEN-1 downto 0);             -- output HI data to EX
           lo_o :       out STD_LOGIC_VECTOR (REG_DATA_LEN-1 downto 0));            -- output LO data to EX
end component;

component PAUSE_CTRL is
    Port ( rst : in STD_LOGIC;													-- Reset
           id_pause_i : in STD_LOGIC;											-- Input pause information from ID
           ex_pause_i : in STD_LOGIC;											-- Input pause information from EX
           if_pause_i : in STD_LOGIC;
           mem_pause_i:in STD_LOGIC;
           pause_o : 	out STD_LOGIC_VECTOR(CTRL_PAUSE_LEN-1 downto 0));		-- Output pause information to PC, IF/ID, ID/EX, EX/MEM, MEM_WB
end component;

component MEM_CONTROLL is 
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
        data_o : out STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0));  -- output data to SRAM CONTROLL
end component;

component MMU is
    Port (
        rst : in STD_LOGIC;
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
end component;

component SRAM_CONTROLL is
    Port(
        clk : in STD_LOGIC;
        rst : in STD_LOGIC;
        ce_i : in STD_LOGIC;
        we_i : in STD_LOGIC;
        addr_i : in STD_LOGIC_VECTOR(ADDR_LEN - 1 downto 0);
        data_i : in STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);
        sel_i : in STD_LOGIC_VECTOR(BYTE_IN_DATA - 1 downto 0);
        
        data_o : out STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);
        ack_o : out STD_LOGIC;
        
        ram_ce_n_o : out STD_LOGIC;
        ram_oe_n_o : out STD_LOGIC;
        ram_we_n_o : out STD_LOGIC;
        ram_be_n_o : out STD_LOGIC_VECTOR(BYTE_IN_DATA - 1 downto 0);
        ram_addr_o : out STD_LOGIC_VECTOR(RAM_ADDR_LEN - 1 downto 0);
        ram_data   : inout STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0));
end component;

component SEG7_LUT is
    Port (
        iDIG : in STD_LOGIC_VECTOR(3 downto 0);
        oSEG1 : out STD_LOGIC_VECTOR(7 downto 0));
end component;

-- PC to IF/ID signals
signal pc_from_pc : STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);  -- Need to be mapped to two ports
signal inst_en_from_pc : STD_LOGIC;

-- IF/ID to ID signals
signal pc_to_id : STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);
signal inst_to_id : STD_LOGIC_VECTOR(INST_LEN-1 downto 0);

-- ID to ID/EX signals
signal op_from_id: STD_LOGIC_VECTOR(OP_LEN-1 downto 0);
signal funct_from_id: STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0);
signal oprand_1_from_id: STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
signal oprand_2_from_id: STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
signal extended_offset_from_id: STD_LOGIC_VECTOR(DATA_LEN-1 downto 0);
signal reg_wt_en_from_id: STD_LOGIC;
signal reg_wt_addr_from_id: STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);
signal branch_from_id: STD_LOGIC;
signal is_in_delayslot_from_id:	STD_LOGIC;
signal next_inst_in_delayslot_from_id:	STD_LOGIC;
signal link_addr_from_id: STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);

-- ID to PC signal
signal branch_target_addr_from_id: STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);

-- ID to REGISTER signals
signal reg_rd_en_1_to_register: STD_LOGIC;
signal reg_rd_en_2_to_register: STD_LOGIC;
signal reg_rd_addr_1_to_register: STD_LOGIC_VECTOR (REG_ADDR_LEN-1 downto 0);
signal reg_rd_addr_2_to_register: STD_LOGIC_VECTOR (REG_ADDR_LEN-1 downto 0);

-- ID to PAUSE_CTRL signals
signal id_pause_from_id: STD_LOGIC;

-- ID/EX to EX signals
signal op_to_ex: STD_LOGIC_VECTOR(OP_LEN-1 downto 0);
signal funct_to_ex: STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0);
signal oprand_1_to_ex: STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
signal oprand_2_to_ex: STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
signal extended_offset_to_ex: STD_LOGIC_VECTOR(DATA_LEN-1 downto 0);
signal reg_wt_en_to_ex: STD_LOGIC;
signal reg_wt_addr_to_ex: STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);
signal is_in_delayslot_to_ex: STD_LOGIC;
signal link_addr_to_ex: STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);

-- ID/EX to ID signals
signal next_inst_in_delayslot_to_id: STD_LOGIC;

-- EX to EX/MEM signals
signal reg_wt_en_from_ex: STD_LOGIC;
signal reg_wt_addr_from_ex: STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);
signal reg_wt_data_from_ex: STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
signal hilo_en_from_ex: STD_LOGIC;
signal hi_from_ex: STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
signal lo_from_ex: STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
signal clock_cycle_cnt_from_ex: STD_LOGIC_VECTOR(ACCU_CNT_LEN-1 downto 0);
signal mul_cur_result_from_ex: STD_LOGIC_VECTOR(DOUBLE_DATA_LEN-1 downto 0); 
signal is_load_store_from_ex: STD_LOGIC;
signal funct_from_ex: STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0);
signal load_store_addr_from_ex: STD_LOGIC_VECTOR(ADDR_LEN-1 downto 0);
signal store_data_from_ex: STD_LOGIC_VECTOR(DATA_LEN-1 downto 0);

-- EX to PAUSE_CTRL signals
signal ex_pause_from_ex: STD_LOGIC;

-- EX/MEM to MEM signals
signal reg_wt_en_to_mem: STD_LOGIC;
signal reg_wt_addr_to_mem: STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);
signal reg_wt_data_to_mem: STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
signal is_load_store_to_mem: STD_LOGIC;
signal funct_to_mem: STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0);
signal load_store_addr_to_mem: STD_LOGIC_VECTOR(ADDR_LEN-1 downto 0);
signal store_data_to_mem: STD_LOGIC_VECTOR(DATA_LEN-1 downto 0);
signal hilo_en_to_mem: STD_LOGIC;
signal hi_to_mem: STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
signal lo_to_mem: STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);

-- EX/MEM to EX signals
signal clock_cycle_cnt_to_ex: STD_LOGIC_VECTOR(ACCU_CNT_LEN-1 downto 0);
signal mul_cur_result_to_ex: STD_LOGIC_VECTOR(DOUBLE_DATA_LEN-1 downto 0); 

-- MEM to MEM/WB signals
signal reg_wt_en_from_mem: STD_LOGIC;
signal reg_wt_addr_from_mem: STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);
signal reg_wt_data_from_mem: STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);

-- MEM to MEM/WB and EX signals
signal hilo_en_from_mem: STD_LOGIC; 
signal hi_from_mem: STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
signal lo_from_mem: STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);

-- MEM/WB to REGISTER signals
signal reg_wt_en_to_register: STD_LOGIC;
signal reg_wt_addr_to_register: STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);
signal reg_wt_data_to_register: STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0); 

-- MEM/WB to HILO and EX signals
signal hilo_en_to_hilo: STD_LOGIC; 
signal hi_to_hilo: STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
signal lo_to_hilo: STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);

-- REGISTER to ID signals
signal reg_rd_data_1_from_register: STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
signal reg_rd_data_2_from_register: STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);

-- HILO to EX signals
signal hi_from_hilo: STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
signal lo_from_hilo: STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);

-- PAUSE_CTRL to PC, IF/ID, ID/EX, EX/MEM, MEM/WB signal
signal pause: STD_LOGIC_VECTOR(CTRL_PAUSE_LEN-1 downto 0);

signal data_from_ram: STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);

signal en_from_mem: STD_LOGIC;
signal is_read_from_mem: STD_LOGIC;
signal addr_from_mem: STD_LOGIC_VECTOR(ADDR_LEN - 1 downto 0);
signal data_from_mem: STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);
signal sel_from_mem: STD_LOGIC_VECTOR(BYTE_IN_DATA - 1 downto 0);

signal ack_from_sram_controll: STD_LOGIC;
signal data_from_sram_controll: STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0); -- Data read from sram to mem controll
signal inst_from_mem_controll: STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0); -- Instruction from mem controll to IF/ID
signal mem_data_from_mem_controll: STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0); -- Data from mem controll to MEM

-- Signal from mem controll to MMU
signal ce_from_mem_controll: STD_LOGIC; -- ram ce signal from mem controll to sram controll
signal we_from_mem_controll: STD_LOGIC; -- ram we signal from mem controll to sram controll
signal sel_from_mem_controll: STD_LOGIC_VECTOR(BYTE_IN_DATA - 1 downto 0); -- ram sel signal from mem controll to sram controll
signal addr_from_mem_controll: STD_LOGIC_VECTOR(ADDR_LEN - 1 downto 0); -- ram addr from mem controll to sram controll
signal data_from_mem_controll: STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0); -- data from mem controll written to sram controll

-- Signal from MMU to mem controll
signal ack_from_mmu : STD_LOGIC;
signal data_from_mmu : STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);

-- Signal from MMU to base RAM
signal data_from_ram1 : STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);
signal ack_from_ram1 : STD_LOGIC;
signal ce_to_ram1 : STD_LOGIC;
signal we_to_ram1 : STD_LOGIC;
signal data_to_ram1 : STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);
signal addr_to_ram1 : STD_LOGIC_VECTOR(ADDR_LEN - 1 downto 0);
signal sel_to_ram1 : STD_LOGIC_VECTOR(BYTE_IN_DATA - 1 downto 0);

-- Signal from MMU to extend RAM
signal data_from_ram2 : STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);
signal ack_from_ram2 : STD_LOGIC;
signal ce_to_ram2 : STD_LOGIC;
signal we_to_ram2 : STD_LOGIC;
signal data_to_ram2 : STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);
signal addr_to_ram2 : STD_LOGIC_VECTOR(ADDR_LEN - 1 downto 0);
signal sel_to_ram2 : STD_LOGIC_VECTOR(BYTE_IN_DATA - 1 downto 0);

signal leds_to_leds : STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);
signal num_to_leds : STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);

-- Signal from mem controll to pause ctrl
signal inst_pause_from_mem_controll: STD_LOGIC;
signal mem_pause_from_mem_controll: STD_LOGIC;

-- Signal for leds
signal number : STD_LOGIC_VECTOR(7 downto 0); -- The byte to display in 7-segment display decoder
signal osegl : STD_LOGIC_VECTOR(7 downto 0);
signal osegh : STD_LOGIC_VECTOR(7 downto 0);

signal input_rst : STD_LOGIC;

-- for debug
signal clk : STD_LOGIC;

begin
    clk <= touch_btn(4);

    -- rom_addr_o <= pc_from_pc;  -- Output 
    input_rst <= touch_btn(5);

    PC_0 : PC port map(
        rst => input_rst, clk => clk, pause_i => pause, 
        branch_i => branch_from_id, branch_target_address_i => branch_target_addr_from_id,
        
        pc_o => pc_from_pc, en_o => inst_en_from_pc);
    
    IF_to_ID_0 : IF_to_ID port map(
        rst => input_rst, clk => clk, 
        pc_i => pc_from_pc, inst_i => inst_from_mem_controll, 
        pause_i => pause, 
        
        pc_o => pc_to_id, inst_o => inst_to_id);
    
    ID_0 : ID port map(
        rst => input_rst, 
        pc_i => pc_to_id, inst_i => inst_to_id, 
        reg_rd_data_1_i => reg_rd_data_1_from_register, reg_rd_data_2_i => reg_rd_data_2_from_register, 
        ex_reg_wt_en_i => reg_wt_en_from_ex, ex_reg_wt_addr_i => reg_wt_addr_from_ex, ex_reg_wt_data_i => reg_wt_data_from_ex,
        mem_reg_wt_en_i => reg_wt_en_from_mem, mem_reg_wt_addr_i => reg_wt_addr_from_mem, mem_reg_wt_data_i => reg_wt_data_from_mem,
        is_in_delayslot_i => next_inst_in_delayslot_to_id, 
        
        op_o => op_from_id, funct_o => funct_from_id, 
        reg_rd_en_1_o => reg_rd_en_1_to_register, reg_rd_en_2_o => reg_rd_en_2_to_register, 
        reg_rd_addr_1_o => reg_rd_addr_1_to_register, reg_rd_addr_2_o => reg_rd_addr_2_to_register, 
        operand_1_o => oprand_1_from_id, operand_2_o => oprand_2_from_id, 
        extended_offset_o => extended_offset_from_id,
        reg_wt_en_o => reg_wt_en_from_id, reg_wt_addr_o => reg_wt_addr_from_id,
        pause_o => id_pause_from_id,
        branch_o => branch_from_id, branch_target_addr_o => branch_target_addr_from_id, 
        is_in_delayslot_o => is_in_delayslot_from_id, next_inst_in_delayslot_o => next_inst_in_delayslot_from_id, link_addr_o => link_addr_from_id);

    ID_to_EX_0 : ID_to_EX port map(
        rst => input_rst, clk => clk,
        op_i => op_from_id, funct_i => funct_from_id,
        operand_1_i => oprand_1_from_id, operand_2_i => oprand_2_from_id,
        extended_offset_i => extended_offset_from_id, 
        reg_wt_en_i => reg_wt_en_from_id, reg_wt_addr_i => reg_wt_addr_from_id,
        pause_i => pause, 
        is_in_delayslot_i => is_in_delayslot_from_id, next_inst_in_delayslot_i => next_inst_in_delayslot_from_id,
        link_addr_i => link_addr_from_id,
        
        op_o => op_to_ex, funct_o => funct_to_ex,
        operand_1_o => oprand_1_to_ex, operand_2_o => oprand_2_to_ex,
        extended_offset_o => extended_offset_to_ex,
        reg_wt_en_o => reg_wt_en_to_ex, reg_wt_addr_o => reg_wt_addr_to_ex,
        is_in_delayslot_o => is_in_delayslot_to_ex, next_inst_in_delayslot_o => next_inst_in_delayslot_to_id, link_addr_o => link_addr_to_ex);
    
    EX_0 : EX port map(
        rst => input_rst,
        op_i => op_to_ex, funct_i => funct_to_ex,
        operand_1_i => oprand_1_to_ex, operand_2_i => oprand_2_to_ex,
        extended_offset_i => extended_offset_to_ex,
        reg_wt_en_i => reg_wt_en_to_ex, reg_wt_addr_i => reg_wt_addr_to_ex,
        hi_i => hi_from_hilo, lo_i => lo_from_hilo,
        mem_hilo_en_i => hilo_en_from_mem, mem_hi_i => hi_from_mem, mem_lo_i => lo_from_mem,
        wb_hilo_en_i => hilo_en_to_hilo, wb_hi_i => hi_to_hilo, wb_lo_i => lo_to_hilo,
        clock_cycle_cnt_i => clock_cycle_cnt_to_ex, mul_cur_result_i => mul_cur_result_to_ex,
        is_in_delayslot_i => is_in_delayslot_to_ex, link_addr_i => link_addr_to_ex,
        
        reg_wt_en_o => reg_wt_en_from_ex, reg_wt_addr_o => reg_wt_addr_from_ex, reg_wt_data_o => reg_wt_data_from_ex,
        is_load_store_o => is_load_store_from_ex, funct_o => funct_from_ex, 
        load_store_addr_o => load_store_addr_from_ex, store_data_o => store_data_from_ex, 
        hilo_en_o => hilo_en_from_ex, hi_o => hi_from_ex, lo_o => lo_from_ex,
        pause_o => ex_pause_from_ex,
        clock_cycle_cnt_o => clock_cycle_cnt_from_ex, mul_cur_result_o => mul_cur_result_from_ex);
    
    EX_to_MEM_0 : EX_to_MEM port map(
        rst => input_rst, clk => clk,
        reg_wt_en_i => reg_wt_en_from_ex, reg_wt_addr_i => reg_wt_addr_from_ex, reg_wt_data_i => reg_wt_data_from_ex,
        is_load_store_i => is_load_store_from_ex, funct_i => funct_from_ex, 
        load_store_addr_i => load_store_addr_from_ex, store_data_i => store_data_from_ex, 
        hilo_en_i => hilo_en_from_ex, hi_i => hi_from_ex, lo_i => lo_from_ex,
        pause_i => pause, 
        clock_cycle_cnt_i => clock_cycle_cnt_from_ex, mul_cur_result_i => mul_cur_result_from_ex,
        
        reg_wt_en_o => reg_wt_en_to_mem, reg_wt_addr_o => reg_wt_addr_to_mem, reg_wt_data_o => reg_wt_data_to_mem,
        is_load_store_o => is_load_store_to_mem, funct_o => funct_to_mem, 
        load_store_addr_o => load_store_addr_to_mem, store_data_o => store_data_to_mem, 
        hilo_en_o => hilo_en_to_mem, hi_o => hi_to_mem, lo_o => lo_to_mem,
        clock_cycle_cnt_o => clock_cycle_cnt_to_ex, mul_cur_result_o => mul_cur_result_to_ex);
    
    MEM_0 : MEM port map(
        rst => input_rst, 
        reg_wt_en_i => reg_wt_en_to_mem, reg_wt_addr_i => reg_wt_addr_to_mem, reg_wt_data_i => reg_wt_data_to_mem,
        ram_rd_data_i => mem_data_from_mem_controll, 
        is_load_store_i => is_load_store_to_mem, funct_i => funct_to_mem, 
        load_store_addr_i => load_store_addr_to_mem, store_data_i => store_data_to_mem, 
        hilo_en_i => hilo_en_to_mem, hi_i => hi_to_mem, lo_i => lo_to_mem,
        
        reg_wt_en_o => reg_wt_en_from_mem, reg_wt_addr_o => reg_wt_addr_from_mem, reg_wt_data_o => reg_wt_data_from_mem,
        hilo_en_o => hilo_en_from_mem, hi_o => hi_from_mem, lo_o => lo_from_mem,
        ram_en_o => en_from_mem,
        ram_is_read_o => is_read_from_mem,
        ram_addr_o => addr_from_mem,
        ram_data_o => data_from_mem,
        ram_data_sel_o => sel_from_mem);
    
    MEM_to_WB_0 : MEM_to_WB port map(
        rst => input_rst, clk => clk,
        reg_wt_en_i => reg_wt_en_from_mem, reg_wt_addr_i => reg_wt_addr_from_mem, reg_wt_data_i => reg_wt_data_from_mem,
        hilo_en_i => hilo_en_from_mem, hi_i => hi_from_mem, lo_i => lo_from_mem,
        pause_i => pause, 
        
        reg_wt_en_o => reg_wt_en_to_register, reg_wt_addr_o => reg_wt_addr_to_register, reg_wt_data_o => reg_wt_data_to_register,
        hilo_en_o => hilo_en_to_hilo, hi_o => hi_to_hilo, lo_o => lo_to_hilo);
    
    REGISTERS_0 : REGISTERS port map(
        rst => input_rst, clk => clk,
        reg_rd_en_1_i => reg_rd_en_1_to_register, reg_rd_en_2_i => reg_rd_en_2_to_register,
        reg_rd_addr_1_i => reg_rd_addr_1_to_register, reg_rd_addr_2_i => reg_rd_addr_2_to_register,
        reg_wt_en_i => reg_wt_en_to_register, reg_wt_addr_i => reg_wt_addr_to_register, reg_wt_data_i => reg_wt_data_to_register,
        
        reg_rd_data_1_o => reg_rd_data_1_from_register, reg_rd_data_2_o => reg_rd_data_2_from_register);
        
    HI_LO_0 : HI_LO port map (
        rst => input_rst, clk => clk,
        en => hilo_en_to_hilo, hi_i => hi_to_hilo, lo_i => lo_to_hilo,
        
        hi_o => hi_from_hilo, lo_o => lo_from_hilo);
    
    PAUSE_CTRL_0 : PAUSE_CTRL port map (
    	rst => input_rst,
    	id_pause_i => id_pause_from_id, ex_pause_i => ex_pause_from_ex,
    	if_pause_i => inst_pause_from_mem_controll,
    	mem_pause_i => mem_pause_from_mem_controll,
    	pause_o => pause);

    MEM_CONTROLL_0 : MEM_CONTROLL port map (
        rst => input_rst,
        clk => clk,
        inst_ce_i => inst_en_from_pc,
        inst_addr_i => pc_from_pc,
        mem_ce_i => en_from_mem,
        mem_is_read_i => is_read_from_mem,
        mem_sel_i => sel_from_mem,
        mem_addr_i => addr_from_mem,
        mem_data_i => data_from_mem,
        
        ack_i => ack_from_mmu,
        data_i => data_from_mmu,
        
        inst_data_o => inst_from_mem_controll,
        mem_data_o => mem_data_from_mem_controll,
        inst_pause_o => inst_pause_from_mem_controll,
        mem_pause_o => mem_pause_from_mem_controll,
        
        ce_o => ce_from_mem_controll,
        we_o => we_from_mem_controll,
        sel_o => sel_from_mem_controll,
        addr_o => addr_from_mem_controll,
        data_o => data_from_mem_controll);
        
    MMU_0 : MMU port map(
        rst => input_rst,
        ce_i => ce_from_mem_controll,
        we_i => we_from_mem_controll,
        sel_i => sel_from_mem_controll,
        addr_i => addr_from_mem_controll,
        data_i => data_from_mem_controll,
        
        ram1_data_i => data_from_ram1,
        ram1_ack_i => ack_from_ram1,
        ram1_ce_o => ce_to_ram1,
        ram1_we_o => we_to_ram1,
        ram1_data_o => data_to_ram1,
        ram1_addr_o => addr_to_ram1,
        ram1_sel_o => sel_to_ram1,
        
        ram2_data_i => data_from_ram2,
        ram2_ack_i => ack_from_ram2,
        ram2_ce_o => ce_to_ram2,
        ram2_we_o => we_to_ram2,
        ram2_data_o => data_to_ram2,
        ram2_addr_o => addr_to_ram2,
        ram2_sel_o => sel_to_ram2,
        
        leds_o => leds_to_leds,
        num_o => num_to_leds,
                
        ack_o => ack_from_mmu,
        data_o => data_from_mmu);
                
    BASE_SRAM_CONTROLL : SRAM_CONTROLL port map(
        clk => clk, rst => input_rst,
        ce_i => ce_to_ram1,
        we_i => we_to_ram1,
        addr_i => addr_to_ram1,
        data_i => data_to_ram1,
        sel_i => sel_to_ram1,
        
        data_o => data_from_ram1,
        ack_o => ack_from_ram1,
            
        ram_ce_n_o => ram1_ce_n_o,
        ram_oe_n_o => ram1_oe_n_o,
        ram_we_n_o => ram1_we_n_o,
        ram_be_n_o => ram1_be_n_o,
        ram_addr_o => ram1_addr_o,
        ram_data => ram1_data);
        
    EXTEND_RAM_CONTROLL : SRAM_CONTROLL port map(
        clk => clk, rst => input_rst,
        ce_i => ce_to_ram2,
        we_i => we_to_ram2,
        addr_i => addr_to_ram2,
        data_i => data_to_ram2,
        sel_i => sel_to_ram2,
            
        data_o => data_from_ram2,
        ack_o => ack_from_ram2,
                
        ram_ce_n_o => ram2_ce_n_o,
        ram_oe_n_o => ram2_oe_n_o,
        ram_we_n_o => ram2_we_n_o,
        ram_be_n_o => ram2_be_n_o,
        ram_addr_o => ram2_addr_o,
        ram_data => ram2_data);
		
	leds(15 downto 0) <= num_to_leds(15 downto 0);
        
    -- leds(7 downto 0) <= addr_from_mem_controll(7 downto 0);
   -- leds(15) <= ce_from_mem_controll;
   --leds(14 downto 11) <= sel_from_mem_controll; 
    -- leds(10 downto 9) <= state_from_mem_controll; 
    
--    number(7 downto 0) <= num_to_leds(7 downto 0);
--    leds(15 downto 0) <= leds_to_leds(15 downto 0);
        
--    segL : SEG7_LUT port map(
--         oSEG1 => osegl,
--         iDIG => number(3 downto 0));
                
--    segH : SEG7_LUT port map(
--         oSEG1 => osegh,
--         iDIG => number(7 downto 4));
                
--    leds(23 downto 22) <= osegl(7 downto 6);
--    leds(19 downto 17) <= osegl(5 downto 3);
--    leds(20) <= osegl(2);
--    leds(21) <= osegl(1);
--    leds(16) <= osegl(0);
--    leds(31 downto 30) <= osegh(7 downto 6);
--    leds(27 downto 25) <= osegh(5 downto 3);
--    leds(28) <= osegh(2);
--    leds(29) <= osegh(1);
--    leds(24) <= osegh(0);   
    
--    leds(15) <= ce_to_ram1;
--    leds(14) <= '1';
--    leds(13) <= we_to_ram1;
--    leds(12 downto 9) <= sel_to_ram1;
    
end Behavioral;
