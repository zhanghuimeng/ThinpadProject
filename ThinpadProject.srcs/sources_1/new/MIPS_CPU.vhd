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
    Port ( clk :            in STD_LOGIC;                                   -- Clock
           --rst : in STD_LOGIC;
           clk_uart : in STD_LOGIC;
           touch_btn :      in STD_LOGIC_VECTOR(5 downto 0);
--           inst_i :         in STD_LOGIC_VECTOR(INST_LEN-1 downto 0);       -- input instruction from ROM
--           rom_en_o :       out STD_LOGIC;                                  -- output enable to ROM
--           rom_addr_o :     out STD_LOGIC_VECTOR(INST_LEN-1 downto 0);     -- output instruction address to ROM
           
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
           
           rxd : in STD_LOGIC;
           txd : out STD_LOGIC;
           
           leds : out STD_LOGIC_VECTOR(31 downto 0));
end MIPS_CPU;

architecture Behavioral of MIPS_CPU is

component clk_wiz_0
    Port (
        clk_in1: in STD_LOGIC;
        clk_out1: out STD_LOGIC);
end component;

component PC
    Port ( rst :    					in STD_LOGIC;                                       -- Reset
           clk :    					in STD_LOGIC;                                       -- Clock
           pause_i :					in STD_LOGIC_VECTOR(CTRL_PAUSE_LEN-1 downto 0);		-- input pause info from PAUSE_CTRL
           branch_i :					in STD_LOGIC;										-- input branch or not from ID
           branch_target_addr_i : 	    in STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);  	-- input branch target address from ID
           en_o :   					out STD_LOGIC;                                      -- output enable signal to ROM
           pc_o :   					out STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);     -- output program counter (instruction address) to ROM           
           -- ?
           flush_i :                    in STD_LOGIC;
           new_pc_i :                   in STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);
           new_pc_en_i:                 in STD_LOGIC);
end component;

component IF_to_ID is
    Port ( rst :    	in STD_LOGIC;                                       -- Reset
           clk :    	in STD_LOGIC;                                       -- Clock
           pc_i :   	in STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);      -- input program counter (instruction address) from ROM
           inst_i : 	in STD_LOGIC_VECTOR(INST_LEN-1 downto 0);           -- input instruction from ROM
           pause_i :	in STD_LOGIC_VECTOR(CTRL_PAUSE_LEN-1 downto 0);		-- input pause info from PAUSE_CTRL
           pc_o :   	out STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);     -- output program counter (instruction address) to ID
           inst_o : 	out STD_LOGIC_VECTOR(INST_LEN-1 downto 0);         -- output instruction to ID

           flush_i :    in STD_LOGIC);
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
           
           last_is_load_store_i :       in STD_LOGIC;                                       -- input if the last instructiuon is load/store from EX
           last_funct_i :               in STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0);          -- input the funct_o of the last instruction from EX
           op_o :               		out STD_LOGIC_VECTOR(OP_LEN-1 downto 0);            -- output custom op type to ID/EX
           funct_o :            		out STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0);         -- output custom funct type to ID/EX
           
           inst_o : 	                out STD_LOGIC_VECTOR(INST_LEN-1 downto 0);         -- output instruction to ID/EX
          
           reg_rd_en_1_o :      		out STD_LOGIC;                                      -- output register 1 read enable to REGISTERS
           reg_rd_en_2_o :      		out STD_LOGIC;                                      -- output register 2 read enable to REGISTERS
           reg_rd_addr_1_o :    		out STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);      -- output register 1 read address to REGISTERS
           reg_rd_addr_2_o :    		out STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);      -- output register 2 read address to REGISTERS
           operand_1_o :        		out STD_LOGIC_VECTOR(DATA_LEN-1 downto 0);          -- output operand 1 to ID/EX
           operand_2_o :        		out STD_LOGIC_VECTOR(DATA_LEN-1 downto 0);          -- output operand 2 to ID/EX
           extended_offset_o :			out STD_LOGIC_VECTOR(DATA_LEN-1 downto 0);			-- output extended offset to ID/EX
           reg_wt_en_o :        		out STD_LOGIC;                                      -- output register write enable to ID_to_EX
           reg_wt_addr_o :      		out STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);      -- output register write address to ID_to_EX
           pause_o :					out STD_LOGIC;										-- output pause information to PAUSE_CTRL
		   branch_o :					out STD_LOGIC;										-- output if the current instruction needs to branch
		   branch_target_addr_o : 		out STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);		-- output the branch target address to PC
		   is_in_delayslot_o :			out STD_LOGIC;										-- output the current instruction in delay slot to ID/EX
		   
		   next_inst_in_delayslot_o :	out STD_LOGIC;										-- output the current instruction in delay slot to ID/EX
           link_addr_o :				out STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);	-- output the return address to save to ID/EX
           except_type_o :              out STD_LOGIC_VECTOR(EXCEPT_TYPE_LEN-1 downto 0);
           current_inst_address_o :     out STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0));
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
           link_addr_o :				out STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);		-- output the register address to save return address to EX

           inst_i :                     in STD_LOGIC_VECTOR(INST_LEN-1 downto 0);
           inst_o :                     out STD_LOGIC_VECTOR(INST_LEN-1 downto 0);

           flush_i :                    in STD_LOGIC;
           current_inst_address_i :     in STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);
           except_type_i :              in STD_LOGIC_VECTOR(EXCEPT_TYPE_LEN-1 downto 0);
           current_inst_address_o :     out STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);
           except_type_o :              out STD_LOGIC_VECTOR(EXCEPT_TYPE_LEN-1 downto 0));
end component;

component EX is
    Port ( rst :            	in STD_LOGIC;                                       -- Reset
    inst_i:                     in std_logic_vector(INST_LEN-1 downto 0);
    op_i :           			in STD_LOGIC_VECTOR(OP_LEN-1 downto 0);             -- input custom op type from ID/EX
    funct_i :        			in STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0);          -- input custom op type from ID/EX
    operand_1_i :    			in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input operand 1 from ID/EX
    operand_2_i :    			in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input operand 2 from ID/EX
    extended_offset_i :          in STD_LOGIC_VECTOR(DATA_LEN-1 downto 0);           -- input extended offset from ID/EX
    reg_wt_en_i :    			in STD_LOGIC;                                       -- input register write enable from ID/EX
    reg_wt_addr_i :  			in STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);       -- input register write address from ID/EX
    hi_i :           			in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input HI data from HI_LO
    lo_i :           			in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input LO data from HI_LO
    mem_hilo_en_i :  			in STD_LOGIC;                                       -- input HI_LO write enable from MEM
    mem_hi_i :       			in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input HI data from MEM
    mem_lo_i :       			in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input LO data from MEM
    wb_hilo_en_i:    			in STD_LOGIC;                                       -- input HI_LO write enable from MEM/WB
    wb_hi_i :        			in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input HI data from MEM/WB
    wb_lo_i :        			in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input LO data from MEM/WB
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
    clock_cycle_cnt_o : 		out STD_LOGIC_VECTOR(ACCU_CNT_LEN-1 downto 0);		-- output clock cycle count to EX/MEM
    mul_cur_result_o : 			out STD_LOGIC_VECTOR(DOUBLE_DATA_LEN-1 downto 0);	-- output accumulation result to EX/MEM
    
    --璁垮瓨闃舵鎸囦护鏄惁瑕佸啓cp0涓殑�?�勫瓨鍣紝鐢ㄤ簬锟�????娴嬫暟鎹浉锟�???
    mem_cp0_reg_we_i :           in STD_LOGIC;
    mem_cp0_reg_write_addr_i :   in STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);
    mem_cp0_reg_data_i :         in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);

    --鍥炲啓闃舵鎸囦护鏄惁瑕佸啓cp0涓殑�?�勫瓨鍣紝鐢ㄤ簬锟�????娴嬫暟鎹浉锟�???
    wb_cp0_reg_we_i :           in STD_LOGIC;
    wb_cp0_reg_write_addr_i :   in STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);
    wb_cp0_reg_data_i :         in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);

    --涓嶤P0鐩存帴鐩歌繛锛岀敤浜庤鍙栧叾涓寚瀹氬瘎�?�樺櫒鐨勶拷??
    cp0_reg_data_i :            in std_logic_vector(REG_DATA_LEN-1 downto 0);
    cp0_reg_read_addr_o :       out std_logic_vector(REG_ADDR_LEN-1 downto 0);

    --鍚戞祦姘寸嚎涓嬩竴绾т紶閫掞紝鐢ㄤ簬鍐檆p0涓殑鎸囧畾鐨勫瘎�?�樺�?
    cp0_reg_we_o :              out std_logic;
    cp0_reg_write_addr_o :      out std_logic_vector(REG_ADDR_LEN-1 downto 0);
    cp0_reg_data_o :            out std_logic_vector(REG_DATA_LEN-1 downto 0);

    --寮傚父澶勭悊
    current_inst_address_i :     in STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);
    except_type_i :              in STD_LOGIC_VECTOR(EXCEPT_TYPE_LEN-1 downto 0);
    current_inst_address_o :     out STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);
    except_type_o :              out STD_LOGIC_VECTOR(EXCEPT_TYPE_LEN-1 downto 0);
    is_in_delayslot_o :          out std_logic
    );
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
           mul_cur_result_o : 	out STD_LOGIC_VECTOR(DOUBLE_DATA_LEN-1 downto 0);	-- output accumulation result to EX
           ex_cp0_reg_we_i :    in std_logic;
           ex_cp0_reg_write_addr_i: in STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);   
           ex_cp0_reg_data_i:   in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
           mem_cp0_reg_we_o :   out std_logic;
           mem_cp0_reg_write_addr_o: out STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);   
           mem_cp0_reg_data_o:   out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);

           --寮傚父澶勭悊
           flush_i :                    in std_logic;
           current_inst_address_i :     in STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);
           except_type_i :              in STD_LOGIC_VECTOR(EXCEPT_TYPE_LEN-1 downto 0);
           is_in_delayslot_i :          in std_logic;
           current_inst_address_o :     out STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);
           except_type_o :              out STD_LOGIC_VECTOR(EXCEPT_TYPE_LEN-1 downto 0);
           is_in_delayslot_o :          out std_logic
           );
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
           lo_o :               out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);     -- output lo data to MEM/WB
           cp0_reg_we_i :       in std_logic;
		   cp0_reg_write_addr_i : in STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);
		   cp0_reg_data_i :     in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);

		   cp0_reg_we_o :       out std_logic;
		   cp0_reg_write_addr_o : out STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);
           cp0_reg_data_o :     out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);

		   current_inst_address_i :     in STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);
           except_type_i :              in STD_LOGIC_VECTOR(EXCEPT_TYPE_LEN-1 downto 0);
		   is_in_delayslot_i :          in std_logic;
		   
           status_i : inout STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
           cause_i : inout STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
           epc_i : inout STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
		   
		   wb_cp0_reg_we_i :   in STD_LOGIC;
           wb_cp0_reg_write_addr_i: in STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);
           wb_cp0_reg_data_i:  in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);

		   cp0_epc_o : out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);

           current_inst_address_o :     out STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);
           except_type_o :              out STD_LOGIC_VECTOR(EXCEPT_TYPE_LEN-1 downto 0);
           is_in_delayslot_o :          out std_logic
	);
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
           flush_i :            in std_logic;
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
end component;

component CP0_REG is
    Port ( rst : in STD_LOGIC;													-- Reset
    clk : in STD_LOGIC;

    raddr_i : in STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);
    waddr_i : in STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);
    data_i : in STD_LOGIC_VECTOR(DATA_LEN-1 downto 0);
    we_i : in STD_LOGIC;

    int_i : in STD_LOGIC_VECTOR(5 downto 0);
    
    data_o : inout STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
    count_o : inout STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
    compare_o : inout STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
    status_o : inout STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
    cause_o : inout STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
    epc_o : inout STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
    config_o : inout STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
    prid_o : inout STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);

    timer_int_o : out STD_LOGIC;
           
    current_inst_address_i :     in STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);
    except_type_i :              in STD_LOGIC_VECTOR(EXCEPT_TYPE_LEN-1 downto 0);
    is_in_delayslot_i :          in std_logic);
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
           pause_o : 	out STD_LOGIC_VECTOR(CTRL_PAUSE_LEN-1 downto 0);		-- Output pause information to PC, IF/ID, ID/EX, EX/MEM, MEM_WB

		   except_type_i :in STD_LOGIC_VECTOR(EXCEPT_TYPE_LEN-1 downto 0);
		   cp0_epc_i :  in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
		   new_pc_o : out STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);
		   new_pc_en_o: out std_logic;
		   flush_o : out STD_LOGIC);
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
		
		serial_ce_o : out STD_LOGIC;
        serial_we_o : out STD_LOGIC;
        serial_data_o : out STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);
        serial_data_i : in STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);
		serial_ack_i : in STD_LOGIC;
        
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

component SERIAL_CONTROLL IS
    Port (
        clk : in STD_LOGIC;
        clk_uart : in STD_LOGIC;
        rst : in STD_LOGIC;
        ce_i : in STD_LOGIC;
        we_i : in STD_LOGIC;
        data_from_mmu_i : in STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);
		
		RxD_data_ready : in STD_LOGIC;
		RxD_data : in STD_LOGIC_VECTOR(BYTE_LEN - 1 downto 0);
		RxD_idle : in STD_LOGIC;
		TxD_start : out STD_LOGIC;
		TxD_data : out STD_LOGIC_VECTOR(BYTE_LEN - 1 downto 0);
            
        data_from_serial_o : out STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);
        ack_o : out STD_LOGIC);
end component;

component ASYNC_RECEIVER is
	generic (
		ClkFrequency : positive;
		Baud : positive);
    port (
        clk : in STD_LOGIC;
        RxD : in STD_LOGIC;
        RxD_data_ready : out STD_LOGIC;
        RxD_data : out STD_LOGIC_VECTOR(BYTE_LEN - 1 downto 0);
        RxD_idle : out STD_LOGIC);
end component;
 
component ASYNC_TRANSMITTER is
	generic (
		ClkFrequency : positive;
		Baud : positive);
    port (
        clk : in STD_LOGIC;
        TxD : out STD_LOGIC;
        TxD_start : in STD_LOGIC;
        TxD_data : in STD_LOGIC_VECTOR(BYTE_LEN - 1 downto 0));
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
signal inst_from_id : STD_LOGIC_VECTOR(INST_LEN-1 downto 0);
signal except_type_from_id : STD_LOGIC_VECTOR(EXCEPT_TYPE_LEN-1 downto 0);
signal current_inst_address_from_id : STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);
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
signal inst_to_ex : STD_LOGIC_VECTOR(INST_LEN-1 downto 0);
signal except_type_to_ex : STD_LOGIC_VECTOR(EXCEPT_TYPE_LEN-1 downto 0);
signal current_inst_address_to_ex : STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);
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
signal cp0_reg_we_from_ex : std_logic;
signal cp0_reg_write_addr_from_ex : std_logic_vector(REG_ADDR_LEN-1 downto 0);
signal cp0_reg_data_from_ex : std_logic_vector(REG_DATA_LEN-1 downto 0);
signal except_type_from_ex :std_logic_vector(EXCEPT_TYPE_LEN-1 downto 0);
signal current_inst_address_from_ex :std_logic_vector(INST_ADDR_LEN-1 downto 0);
signal is_in_delayslot_from_ex :std_logic;

-- EX to PAUSE_CTRL signals
signal ex_pause_from_ex: STD_LOGIC;

-- EX to CP0_REG signals
signal cp0_reg_read_addr_from_ex :std_logic_vector(REG_ADDR_LEN-1 downto 0);


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
signal mem_cp0_reg_we_to_mem :  std_logic;
signal mem_cp0_reg_write_addr_to_mem: STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);   
signal mem_cp0_reg_data_to_mem:   STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
signal except_type_to_mem : STD_LOGIC_VECTOR(EXCEPT_TYPE_LEN-1 downto 0);
signal current_inst_address_to_mem : STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);
signal is_in_delayslot_to_mem : STD_LOGIC;

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
signal cp0_reg_we_from_mem :  STD_LOGIC;
signal cp0_reg_write_addr_from_mem : STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);
signal cp0_reg_data_from_mem : STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);

-- MEM to CP0_REG signals
signal except_type_from_mem : STD_LOGIC_VECTOR(EXCEPT_TYPE_LEN-1 downto 0);
signal current_inst_address_from_mem : STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);
signal is_in_delayslot_from_mem : STD_LOGIC;
signal cp0_epc_from_mem : std_logic_vector(REG_DATA_LEN-1 downto 0);
signal flush_from_pause : std_logic;
signal new_pc_from_pause : std_logic_vector(INST_LEN-1 downto 0);

-- MEM/WB to REGISTER signals
signal reg_wt_en_to_register: STD_LOGIC;
signal reg_wt_addr_to_register: STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);
signal reg_wt_data_to_register: STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0); 

-- MEM/WB to HILO and EX signals
signal hilo_en_to_hilo: STD_LOGIC; 
signal hi_to_hilo: STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
signal lo_to_hilo: STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
signal wb_cp0_reg_we_from_wb :   STD_LOGIC;
signal wb_cp0_reg_write_addr_from_wb : STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);
signal wb_cp0_reg_data_from_wb: STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);

--cp0 to ex
signal data_from_cp0: STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);

--cp0 to ?
signal count_from_cp0 : STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
signal compare_from_cp0 : STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
signal status_from_cp0 : STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
signal cause_from_cp0 : STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
signal epc_from_cp0 : STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
signal config_from_cp0 : STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
signal prid_from_cp0 : STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
signal timer_int_from_cp0 : STD_LOGIC;

-- for cp0 
signal int_for_cp0 : STD_LOGIC_VECTOR(5 downto 0);

-- REGISTER to ID signals
signal reg_rd_data_1_from_register: STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
signal reg_rd_data_2_from_register: STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);

-- HILO to EX signals
signal hi_from_hilo: STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
signal lo_from_hilo: STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);

-- PAUSE_CTRL to PC, IF/ID, ID/EX, EX/MEM, MEM/WB signal
signal pause: STD_LOGIC_VECTOR(CTRL_PAUSE_LEN-1 downto 0);
signal new_pc_en_from_pause: std_logic;

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

-- Signal from/to MMU to/from extend RAM
signal data_from_ram2 : STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);
signal ack_from_ram2 : STD_LOGIC;
signal ce_to_ram2 : STD_LOGIC;
signal we_to_ram2 : STD_LOGIC;
signal data_to_ram2 : STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);
signal addr_to_ram2 : STD_LOGIC_VECTOR(ADDR_LEN - 1 downto 0);
signal sel_to_ram2 : STD_LOGIC_VECTOR(BYTE_IN_DATA - 1 downto 0);

signal leds_to_leds : STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);
signal num_to_leds : STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);

-- Signal from/to MMU to/from serial interface
signal data_from_serial : STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);
signal ack_from_serial: STD_LOGIC;
signal ce_to_serial : STD_LOGIC;
signal we_to_serial : STD_LOGIC;
signal data_to_serial : STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0);  

signal RxD_data_ready : STD_LOGIC;
signal RxD_data : STD_LOGIC_VECTOR(BYTE_LEN - 1 downto 0);
signal RxD_idle : STD_LOGIC;
signal TxD_start : STD_LOGIC;
signal TxD_data : STD_LOGIC_VECTOR(BYTE_LEN - 1 downto 0);

-- Signal from mem controll to pause ctrl
signal inst_pause_from_mem_controll: STD_LOGIC;
signal mem_pause_from_mem_controll: STD_LOGIC;

-- Signal for leds
signal number : STD_LOGIC_VECTOR(7 downto 0); -- The byte to display in 7-segment display decoder
signal osegl : STD_LOGIC_VECTOR(7 downto 0);
signal osegh : STD_LOGIC_VECTOR(7 downto 0);

signal input_rst : STD_LOGIC;

signal clk_out : STD_LOGIC := '0';

begin
--    clk <= touch_btn(4);

    CLOCK : clk_wiz_0 port map (
        clk_in1 => clk,
        clk_out1 => clk_out);
 
    input_rst <= touch_btn(5);

    PC_0 : PC port map(
        rst => input_rst, clk => clk_out, pause_i => pause, 
        branch_i => branch_from_id, branch_target_address_i => branch_target_addr_from_id,
        
        pc_o => pc_from_pc, en_o => inst_en_from_pc,
        new_pc_en_i => new_pc_en_from_pause,new_pc_i => new_pc_from_pause, flush_i => flush_from_pause);
    
    IF_to_ID_0 : IF_to_ID port map(
        rst => input_rst, clk => clk_out, 
        pc_i => pc_from_pc, inst_i => inst_from_mem_controll, 
        pause_i => pause, 
        
        pc_o => pc_to_id, inst_o => inst_to_id, flush_i => flush_from_pause);
    
    ID_0 : ID port map(
        rst => input_rst, 
        pc_i => pc_to_id, inst_i => inst_to_id, 
        reg_rd_data_1_i => reg_rd_data_1_from_register, reg_rd_data_2_i => reg_rd_data_2_from_register, 
        ex_reg_wt_en_i => reg_wt_en_from_ex, ex_reg_wt_addr_i => reg_wt_addr_from_ex, ex_reg_wt_data_i => reg_wt_data_from_ex,
        mem_reg_wt_en_i => reg_wt_en_from_mem, mem_reg_wt_addr_i => reg_wt_addr_from_mem, mem_reg_wt_data_i => reg_wt_data_from_mem,
        is_in_delayslot_i => next_inst_in_delayslot_to_id, 
        last_is_load_store_i => is_load_store_from_ex, last_funct_i => funct_from_ex,
        
        op_o => op_from_id, funct_o => funct_from_id, 
        inst_o => inst_from_id,
        reg_rd_en_1_o => reg_rd_en_1_to_register, reg_rd_en_2_o => reg_rd_en_2_to_register, 
        reg_rd_addr_1_o => reg_rd_addr_1_to_register, reg_rd_addr_2_o => reg_rd_addr_2_to_register, 
        operand_1_o => oprand_1_from_id, operand_2_o => oprand_2_from_id, 
        extended_offset_o => extended_offset_from_id,
        reg_wt_en_o => reg_wt_en_from_id, reg_wt_addr_o => reg_wt_addr_from_id,
        pause_o => id_pause_from_id,
        branch_o => branch_from_id, branch_target_addr_o => branch_target_addr_from_id, 
        is_in_delayslot_o => is_in_delayslot_from_id, next_inst_in_delayslot_o => next_inst_in_delayslot_from_id, link_addr_o => link_addr_from_id,
        
        except_type_o => except_type_from_id,
        current_inst_address_o => current_inst_address_from_id
        );

    ID_to_EX_0 : ID_to_EX port map(
        rst => input_rst, clk => clk_out,
        op_i => op_from_id, funct_i => funct_from_id,
        operand_1_i => oprand_1_from_id, operand_2_i => oprand_2_from_id,
        extended_offset_i => extended_offset_from_id, 
        reg_wt_en_i => reg_wt_en_from_id, reg_wt_addr_i => reg_wt_addr_from_id,
        pause_i => pause, 
        is_in_delayslot_i => is_in_delayslot_from_id, next_inst_in_delayslot_i => next_inst_in_delayslot_from_id,
        link_addr_i => link_addr_from_id,
        inst_i => inst_from_id,
        
        op_o => op_to_ex, funct_o => funct_to_ex,
        operand_1_o => oprand_1_to_ex, operand_2_o => oprand_2_to_ex,
        extended_offset_o => extended_offset_to_ex,
        reg_wt_en_o => reg_wt_en_to_ex, reg_wt_addr_o => reg_wt_addr_to_ex,
        is_in_delayslot_o => is_in_delayslot_to_ex, next_inst_in_delayslot_o => next_inst_in_delayslot_to_id, link_addr_o => link_addr_to_ex,
        inst_o => inst_to_ex,

        except_type_i => except_type_from_id,
        current_inst_address_i => current_inst_address_from_id,
        except_type_o => except_type_to_ex,
        current_inst_address_o => current_inst_address_to_ex,
        flush_i => flush_from_pause
        );

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
        clock_cycle_cnt_o => clock_cycle_cnt_from_ex, mul_cur_result_o => mul_cur_result_from_ex,
        


        inst_i => inst_to_ex,
        cp0_reg_data_i => data_from_cp0,
        --璁垮瓨闃舵鎸囦护鏄惁瑕佸啓cp0涓殑�?�勫瓨鍣紝鐢ㄤ簬锟�????娴嬫暟鎹浉锟�???
        mem_cp0_reg_we_i => cp0_reg_we_from_mem,
        mem_cp0_reg_write_addr_i => cp0_reg_write_addr_from_mem,
        mem_cp0_reg_data_i => cp0_reg_data_from_mem,

        --鍥炲啓闃舵鎸囦护鏄惁瑕佸啓cp0涓殑�?�勫瓨鍣紝鐢ㄤ簬锟�????娴嬫暟鎹浉锟�???
        wb_cp0_reg_we_i => wb_cp0_reg_we_from_wb,
        wb_cp0_reg_write_addr_i => wb_cp0_reg_write_addr_from_wb,
        wb_cp0_reg_data_i => wb_cp0_reg_data_from_wb,


        cp0_reg_read_addr_o => cp0_reg_read_addr_from_ex,
        cp0_reg_we_o => cp0_reg_we_from_ex,
        cp0_reg_data_o => cp0_reg_data_from_ex,
        cp0_reg_write_addr_o => cp0_reg_write_addr_from_ex,
        
        except_type_i => except_type_to_ex,
        current_inst_address_i => current_inst_address_to_ex,
        except_type_o => except_type_from_ex,
        current_inst_address_o => current_inst_address_from_ex,
        is_in_delayslot_o => is_in_delayslot_from_ex
        );
    
    EX_to_MEM_0 : EX_to_MEM port map(
        rst => input_rst, clk => clk_out,
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
        ex_cp0_reg_we_i => cp0_reg_we_from_ex,
        ex_cp0_reg_write_addr_i => cp0_reg_write_addr_from_ex,
        ex_cp0_reg_data_i => cp0_reg_data_from_ex,

        mem_cp0_reg_we_o => mem_cp0_reg_we_to_mem,
        mem_cp0_reg_write_addr_o => mem_cp0_reg_write_addr_to_mem,
        mem_cp0_reg_data_o => mem_cp0_reg_data_to_mem,

        except_type_i => except_type_from_ex,
        current_inst_address_i => current_inst_address_from_ex,
        is_in_delayslot_i => is_in_delayslot_from_ex,
        except_type_o => except_type_to_mem,
        current_inst_address_o => current_inst_address_to_mem,
        is_in_delayslot_o => is_in_delayslot_to_mem,
        flush_i => flush_from_pause
        );

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
        ram_data_sel_o => sel_from_mem,

        cp0_reg_we_i => mem_cp0_reg_we_to_mem,
		cp0_reg_write_addr_i => mem_cp0_reg_write_addr_to_mem,
		cp0_reg_data_i => mem_cp0_reg_data_to_mem,
        
        cp0_reg_we_o => cp0_reg_we_from_mem,
        cp0_reg_write_addr_o => cp0_reg_write_addr_from_mem,
        cp0_reg_data_o => cp0_reg_data_from_mem,
        
        except_type_i => except_type_to_mem,
        current_inst_address_i => current_inst_address_to_mem,
        is_in_delayslot_i => is_in_delayslot_to_mem,
        
        status_i => status_from_cp0,
        epc_i => epc_from_cp0,
        cause_i => cause_from_cp0,
        wb_cp0_reg_we_i => wb_cp0_reg_we_from_wb,
        wb_cp0_reg_write_addr_i => wb_cp0_reg_write_addr_from_wb,
        wb_cp0_reg_data_i => wb_cp0_reg_data_from_wb,
        
        except_type_o => except_type_from_mem,
        current_inst_address_o => current_inst_address_from_mem,
        is_in_delayslot_o => is_in_delayslot_from_mem,
        cp0_epc_o => cp0_epc_from_mem
        );
    
    MEM_to_WB_0 : MEM_to_WB port map(
        rst => input_rst, clk => clk_out,
        reg_wt_en_i => reg_wt_en_from_mem, reg_wt_addr_i => reg_wt_addr_from_mem, reg_wt_data_i => reg_wt_data_from_mem,
        hilo_en_i => hilo_en_from_mem, hi_i => hi_from_mem, lo_i => lo_from_mem,
        pause_i => pause, 
        
        reg_wt_en_o => reg_wt_en_to_register, reg_wt_addr_o => reg_wt_addr_to_register, reg_wt_data_o => reg_wt_data_to_register,
        hilo_en_o => hilo_en_to_hilo, hi_o => hi_to_hilo, lo_o => lo_to_hilo,
        
        mem_cp0_reg_we_i => cp0_reg_we_from_mem,
		mem_cp0_reg_write_addr_i => cp0_reg_write_addr_from_mem,
        mem_cp0_reg_data_i => cp0_reg_data_from_mem,
        
        wb_cp0_reg_we_o => wb_cp0_reg_we_from_wb,
        wb_cp0_reg_write_addr_o => wb_cp0_reg_write_addr_from_wb,
        wb_cp0_reg_data_o => wb_cp0_reg_data_from_wb, flush_i => flush_from_pause);
    
    CP0_REG_0 : CP0_REG port map(
        rst => input_rst, clk => clk,
        raddr_i => cp0_reg_read_addr_from_ex,
        waddr_i => wb_cp0_reg_write_addr_from_wb,
        data_i => wb_cp0_reg_data_from_wb,
        we_i => wb_cp0_reg_we_from_wb,

        int_i => int_for_cp0,
           
        data_o => data_from_cp0,
        count_o => count_from_cp0,
        compare_o => compare_from_cp0,
        status_o => status_from_cp0,
        cause_o => cause_from_cp0,
        epc_o => epc_from_cp0,
        config_o => config_from_cp0,
        prid_o => prid_from_cp0,

        timer_int_o => timer_int_from_cp0,

        except_type_i => except_type_from_mem,
        current_inst_address_i => current_inst_address_from_mem,
        is_in_delayslot_i => is_in_delayslot_from_mem
        );

    REGISTERS_0 : REGISTERS port map(
        rst => input_rst, clk => clk_out,
        reg_rd_en_1_i => reg_rd_en_1_to_register, reg_rd_en_2_i => reg_rd_en_2_to_register,
        reg_rd_addr_1_i => reg_rd_addr_1_to_register, reg_rd_addr_2_i => reg_rd_addr_2_to_register,
        reg_wt_en_i => reg_wt_en_to_register, reg_wt_addr_i => reg_wt_addr_to_register, reg_wt_data_i => reg_wt_data_to_register,
        
        reg_rd_data_1_o => reg_rd_data_1_from_register, reg_rd_data_2_o => reg_rd_data_2_from_register);
        
    HI_LO_0 : HI_LO port map (
        rst => input_rst, clk => clk_out,
        en => hilo_en_to_hilo, hi_i => hi_to_hilo, lo_i => lo_to_hilo,
        
        hi_o => hi_from_hilo, lo_o => lo_from_hilo);
    
    inst_pause_from_mem_controll <= PAUSE_NOT;
    mem_pause_from_mem_controll <= PAUSE_NOT;
    PAUSE_CTRL_0 : PAUSE_CTRL port map (
    	rst => input_rst,
    	id_pause_i => id_pause_from_id, ex_pause_i => ex_pause_from_ex,
    	if_pause_i => inst_pause_from_mem_controll,
    	mem_pause_i => mem_pause_from_mem_controll,
    	pause_o => pause,
                
        cp0_epc_i => cp0_epc_from_mem,
        except_type_i => except_type_from_mem,
        new_pc_o => new_pc_from_pause,
        flush_o => flush_from_pause,
        new_pc_en_o => new_pc_en_from_pause);

    MEM_CONTROLL_0 : MEM_CONTROLL port map (
        rst => input_rst,
        clk => clk_out,
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
		
		serial_data_i => data_from_serial,
		serial_ack_i => ack_from_serial,
		serial_ce_o => ce_to_serial,
        serial_we_o => we_to_serial,
        serial_data_o => data_to_serial,
        
        leds_o => leds_to_leds,
        num_o => num_to_leds,
                
        ack_o => ack_from_mmu,
        data_o => data_from_mmu);
                
    BASE_SRAM_CONTROLL : SRAM_CONTROLL port map(
        clk => clk_out, rst => input_rst,
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
        clk => clk_out, rst => input_rst,
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
        
    SERIAL_CONTROLL_0 : SERIAL_CONTROLL port map (
        clk => clk_out,
        clk_uart => clk_uart,
        rst => input_rst,
        ce_i => ce_to_serial,
        we_i => we_to_serial,
        data_from_mmu_i => data_to_serial,
         
        RxD_data_ready => RxD_data_ready,
		RxD_data => RxD_data,
		RxD_idle => RxD_idle,
		TxD_start => TxD_start,
		TxD_data => TxD_data,
          
        data_from_serial_o => data_from_serial,
        ack_o => ack_from_serial);
	
	SERIAL_RECEIVER : ASYNC_RECEIVER 
	generic map (
		ClkFrequency => 11059200,
		Baud => 115200)
	port map (
        clk => clk_uart,
        RxD => rxd,
        RxD_data_ready => RxD_data_ready,
        RxD_data => RxD_data,
        RxD_idle => RxD_idle);
    
    SERIAL_TRANSMITTER : ASYNC_TRANSMITTER 
	generic map (
		ClkFrequency => 11059200,
		Baud => 115200)
	port map (
        clk => clk_uart,
        TxD => txd,
        TxD_start => TxD_start,
        TxD_data => TxD_data);

	leds(7 downto 0) <= mem_data_from_mem_controll(7 downto 0);
	leds(15 downto 8) <= data_to_serial(7 downto 0);
	
	process (clk_out'event)
	begin
	   leds(31) <= '1';
	end process;
	
--    leds(15) <= ack_from_serial;
--    leds(14) <= ack_from_mmu;
--    leds(13) <= ce_to_serial;
        
    -- leds(7 downto 0) <= addr_from_mem_controll(7 downto 0);
   -- leds(15) <= ce_from_mem_controll;
   --leds(14 downto 11) <= sel_from_mem_controll; 
    -- leds(10 downto 9) <= state_from_mem_controll; 
    
    -- number(7 downto 0) <= num_to_leds(7 downto 0);
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
