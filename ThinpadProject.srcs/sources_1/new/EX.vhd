----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2017/11/12 00:33:04
-- Design Name: 
-- Module Name: EX - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use STD.TEXTIO.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;
-- use work.fixed_generic_pkg_mod.all; TODO

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

use WORK.INCLUDE.ALL;

-- EX Module of CPU
-- Combinatory Logic

entity EX is
    Port ( rst :            			in STD_LOGIC;                                       -- Reset
           inst_i:                      in std_logic_vector(INST_LEN-1 downto 0);
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
           is_load_store_o :			out STD_LOGIC;										-- output load/store to EX/MEM, ID
           funct_o :					out STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0);			-- output load/store type to EX/MEM, ID 
           load_store_addr_o :			out STD_LOGIC_VECTOR(ADDR_LEN-1 downto 0);			-- output load/store memory address to EX/MEM
           store_data_o :				out STD_LOGIC_VECTOR(DATA_LEN-1 downto 0);			-- output store data to EX/MEM
           hilo_en_o :      			out STD_LOGIC;                                      -- output HI_LO write enable to EX/MEM
           hi_o :           			out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);      -- output HI data to EX/MEM
           lo_o :           			out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);      -- output LO data to EX/MEM
       	   pause_o :					out STD_LOGIC;										-- output pause information to PAUSE_CTRL
		   clock_cycle_cnt_o : 			out STD_LOGIC_VECTOR(ACCU_CNT_LEN-1 downto 0);		-- output clock cycle count to EX/MEM
           mul_cur_result_o : 			out STD_LOGIC_VECTOR(DOUBLE_DATA_LEN-1 downto 0);	-- output accumulation result to EX/MEM
           
           --访存阶段指令是否要写cp0中的寄存器，用于�????测数据相�????
           mem_cp0_reg_we_i :           in STD_LOGIC;
           mem_cp0_reg_write_addr_i :   in STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);
           mem_cp0_reg_data_i :         in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);

           --回写阶段指令是否要写cp0中的寄存器，用于�????测数据相�????
           wb_cp0_reg_we_i :           in STD_LOGIC;
           wb_cp0_reg_write_addr_i :   in STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);
           wb_cp0_reg_data_i :         in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);

           --与CP0直接相连，用于读取其中指定寄存器的�??
           cp0_reg_data_i :            in std_logic_vector(REG_DATA_LEN-1 downto 0);
           cp0_reg_read_addr_o :       out std_logic_vector(REG_ADDR_LEN-1 downto 0);

           --向流水线下一级传递，用于写cp0中的指定的寄存器
           cp0_reg_we_o :              out std_logic;
           cp0_reg_write_addr_o :      out std_logic_vector(REG_ADDR_LEN-1 downto 0);
           cp0_reg_data_o :            out std_logic_vector(REG_DATA_LEN-1 downto 0);

           --异常处理
           current_inst_address_i :     in STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);
           except_type_i :              in STD_LOGIC_VECTOR(EXCEPT_TYPE_LEN-1 downto 0);
           current_inst_address_o :     out STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);
           except_type_o :              out STD_LOGIC_VECTOR(EXCEPT_TYPE_LEN-1 downto 0);
           is_in_delayslot_o :          out std_logic
           );

end EX;

architecture Behavioral of EX is
    
begin
	-- process (all)
	-- Remeber to add all signals
	process (all)
    variable output: LINE;
    variable operand_1: UNSIGNED(DATA_LEN-1 downto 0);
    variable operand_2: UNSIGNED(DATA_LEN-1 downto 0);
    variable sum_result: UNSIGNED(DATA_LEN downto 0);
    variable overflow: STD_LOGIC;
    variable compare_result: STD_LOGIC;
    variable operand_mul_1: STD_LOGIC_VECTOR(DATA_LEN-1 downto 0);
    variable operand_mul_2: STD_LOGIC_VECTOR(DATA_LEN-1 downto 0);
    variable mul_sign: STD_LOGIC;
    variable mult_result: STD_LOGIC_VECTOR(DOUBLE_DATA_LEN-1 downto 0);
    variable mult_accum_result: UNSIGNED(DOUBLE_DATA_LEN downto 0);
    variable hi: STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
    variable lo: STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
    
    variable trap_assert : STD_LOGIC;
    variable over_assert : STD_LOGIC;

    -- TODO Add division support
    -- variable dividend_float: sfixed(REG_DATA_LEN-1 downto 0);
    -- variable divisor_float: sfixed(REG_DATA_LEN-1 downto 0);
    -- variable quotient_float: sfixed(DOUBLE_DATA_LEN-1 downto 0);
    begin
        if rst = RST_ENABLE then
            reg_wt_data_o <= REG_ZERO_DATA;
            reg_wt_addr_o <= REG_ZERO_ADDR;
            reg_wt_en_o <= REG_WT_DISABLE;
            is_load_store_o <= NOT_LOAD_STORE;
          	funct_o <= FUNCT_TYPE_NOP;
           	load_store_addr_o <= ZERO_ADDR;
           	store_data_o <= ZERO_DATA;
            hilo_en_o <= CHIP_DISABLE;
            hi_o <= REG_ZERO_DATA;
            lo_o <= REG_ZERO_DATA;
            pause_o <= PAUSE_NOT;
            clock_cycle_cnt_o <= b"00";
            mul_cur_result_o <= DOUBLE_ZERO_DATA;
            cp0_reg_write_addr_o <= REG_ZERO_ADDR;
            cp0_reg_we_o <= REG_WT_DISABLE;
            cp0_reg_data_o <= ZERO_DATA;
            current_inst_address_o <= INST_ZERO_ADDR;
            except_type_o <= ZERO_DATA;
            is_in_delayslot_o <= DELAYSLOT_NOT;
            trap_assert := TRAP_FALSE;
        else
            reg_wt_addr_o <= reg_wt_addr_i;
            reg_wt_en_o <= reg_wt_en_i;
            is_load_store_o <= NOT_LOAD_STORE;
          	funct_o <= FUNCT_TYPE_NOP;
           	load_store_addr_o <= ZERO_ADDR;
           	store_data_o <= ZERO_DATA;
            pause_o <= PAUSE_NOT;
            clock_cycle_cnt_o <= b"00";
            mul_cur_result_o <= DOUBLE_ZERO_DATA;
            cp0_reg_write_addr_o <= REG_ZERO_ADDR;
            cp0_reg_we_o <= REG_WT_DISABLE;
            cp0_reg_data_o <= ZERO_DATA;
            hilo_en_o <= CHIP_DISABLE;
            trap_assert := TRAP_FALSE;
            over_assert := TRAP_FALSE;
            
            -- So that the HILO register can immediately get value?
            hi := hi_i;
            if mem_hilo_en_i = CHIP_ENABLE then
                hi := mem_hi_i;
            elsif wb_hilo_en_i = CHIP_ENABLE then
                hi := wb_hi_i;
            end if;
            lo := lo_i;
            if mem_hilo_en_i = CHIP_ENABLE then
                lo := mem_lo_i;
            elsif wb_hilo_en_i = CHIP_ENABLE then
                lo := wb_lo_i;
            end if;
            
            -- For addition, subtraction and signed comparation instructions
            operand_1 := unsigned(operand_1_i);
            if (funct_i = FUNCT_TYPE_SUB) or (funct_i = FUNCT_TYPE_SUBU) or (funct_i = FUNCT_TYPE_SLT) or(funct_i = FUNCT_TYPE_SLTI) 
            or(funct_i = FUNCT_TYPE_TLT) or(funct_i = FUNCT_TYPE_TLTI) or(funct_i = FUNCT_TYPE_TGE) or(funct_i = FUNCT_TYPE_TGEI)
            or(funct_i = FUNCT_TYPE_TLTU) or(funct_i = FUNCT_TYPE_TLTIU) or(funct_i = FUNCT_TYPE_TGEU) or(funct_i = FUNCT_TYPE_TGEIU)
            then
            	operand_2 := unsigned((not operand_2_i) + b"1");
            else
            	operand_2 := unsigned(operand_2_i);
            end if;
            sum_result := unsigned(b"0" & operand_1) + unsigned(b"0" & operand_2);
            overflow := '0';
            -- Overflow
            if (operand_1(REG_DATA_LEN-1) = '0') and (operand_2(REG_DATA_LEN-1) = '0') and (sum_result(REG_DATA_LEN) = '1') then
                overflow := '1';
            end if;
            if (operand_1(REG_DATA_LEN-1) = '1') and (operand_2(REG_DATA_LEN-1) = '1') and (sum_result(REG_DATA_LEN) = '0') then
                overflow := '1';
            end if;
            
            -- For compare instructions (less than)
            compare_result := '0';
            if (funct_i = FUNCT_TYPE_SLT) or (funct_i = FUNCT_TYPE_SLTI) 
            or(funct_i = FUNCT_TYPE_TLT) or(funct_i = FUNCT_TYPE_TLTI) or(funct_i = FUNCT_TYPE_TGE) or(funct_i = FUNCT_TYPE_TGEI) then  -- signed comparation
                if (operand_1_i(DATA_LEN-1) = '1') and (operand_2_i(DATA_LEN-1) = '0') then
                    compare_result := '1';
                elsif (operand_1_i(DATA_LEN-1) = operand_2_i(DATA_LEN-1)) and (sum_result(DATA_LEN-1) = '1') then
                    compare_result := '1';
                end if;
            elsif (funct_i = FUNCT_TYPE_SLTU) or (funct_i = FUNCT_TYPE_SLTIU) 
            or(funct_i = FUNCT_TYPE_TLTU) or(funct_i = FUNCT_TYPE_TLTIU) or(funct_i = FUNCT_TYPE_TGEU) or(funct_i = FUNCT_TYPE_TGEIU) then-- unsigned comparation
                if unsigned(operand_1_i) < unsigned (operand_2_i) then
                    compare_result := '1';
                end if;
            end if;
            
            -- For signed multiply instructions
            -- You can't multiply 2's implements directly!
            mul_sign := '0';
            if operand_1_i(DATA_LEN-1) = '1' then
                operand_mul_1 := (not operand_1_i) + b"1";
                mul_sign := not mul_sign;
            else
                operand_mul_1 := operand_1_i;
            end if;
            if operand_2_i(DATA_LEN-1) = '1' then
                operand_mul_2 := (not operand_2_i) + b"1";
                mul_sign := not mul_sign;
            else
                operand_mul_2 := operand_2_i;
            end if;
            mult_result := std_logic_vector(unsigned(operand_mul_1) * unsigned(operand_mul_2));
            if mul_sign = '1' then
                mult_result := (not mult_result) + b"1";
            end if;
            
            op_code: case op_i is
                -- Do nothing
                when OP_TYPE_NOP =>

                when OP_TYPE_ARITH =>
                    arith_funct: case funct_i is
                        -- Addition with exception
                    	when FUNCT_TYPE_ADD | FUNCT_TYPE_ADDI =>
                            if overflow = '1' then
                                reg_wt_en_o <= REG_WT_DISABLE;
                                over_assert := TRAP_TRUE;
                            else
                                reg_wt_data_o <= std_logic_vector(sum_result(REG_DATA_LEN-1 downto 0));
                            end if;

                        -- Addition without exception
                        when FUNCT_TYPE_ADDIU | FUNCT_TYPE_ADDU =>
                            deallocate(output);
                            write(output, string'("sum = "));
                            write(output, sum_result);
                            report output.all;
                            reg_wt_data_o <= std_logic_vector(sum_result(REG_DATA_LEN-1 downto 0));
                       
                        -- Subtraction with exception
                        when FUNCT_TYPE_SUB =>
                            if overflow = '1' then
                                reg_wt_en_o <= REG_WT_DISABLE;
                                over_assert := TRAP_TRUE;
                            else
                                reg_wt_data_o <= std_logic_vector(sum_result(REG_DATA_LEN-1 downto 0));
                            end if;
                            
                         -- Subtraction without exception
                        when FUNCT_TYPE_SUBU =>
                           reg_wt_data_o <= std_logic_vector(sum_result(REG_DATA_LEN-1 downto 0));

                        -- Count leading ones
                        when FUNCT_TYPE_CLO =>
                            reg_wt_data_o <= std_logic_vector(to_unsigned(count_leading_ones(operand_1_i), REG_DATA_LEN));
                            
                        -- Count leading zeros
                        when FUNCT_TYPE_CLZ =>
                            reg_wt_data_o <= std_logic_vector(to_unsigned(count_leading_zeros(operand_1_i), REG_DATA_LEN));
                        -- 
                        when FUNCT_TYPE_SLT | FUNCT_TYPE_SLTI | FUNCT_TYPE_SLTIU | FUNCT_TYPE_SLTU =>
                            reg_wt_data_o <= x"0000000" & b"000" & compare_result;
                        
                        when FUNCT_TYPE_MUL =>
                        	deallocate(output);
                            write(output, string'("MUL, mult_result = "));
                            write(output, mult_result);
                            report output.all;
                            reg_wt_data_o <= mult_result(REG_DATA_LEN-1 downto 0);
                            
                        when FUNCT_TYPE_MULT =>
                        	/* deallocate(output);
                            write(output, string'("MULT, mult_result = "));
                            write(output, mult_result);
                            report output.all; */
                            hilo_en_o <= CHIP_ENABLE;
                            hi := mult_result(DOUBLE_DATA_LEN-1 downto REG_DATA_LEN);
                            lo := mult_result(REG_DATA_LEN-1 downto 0);
                            
                        when FUNCT_TYPE_MULTU =>
                        	mult_result := std_logic_vector(unsigned(operand_1_i) * unsigned(operand_2_i));
                            hilo_en_o <= CHIP_ENABLE;
                            hi := mult_result(DOUBLE_DATA_LEN-1 downto REG_DATA_LEN);
                            lo := mult_result(REG_DATA_LEN-1 downto 0);
                        
                        when FUNCT_TYPE_MADD | FUNCT_TYPE_MADDU | FUNCT_TYPE_MSUB | FUNCT_TYPE_MSUBU =>
                        	if (funct_i = FUNCT_TYPE_MADDU) or (funct_i = FUNCT_TYPE_MSUBU) then
                        		mult_result := std_logic_vector(unsigned(operand_1_i) * unsigned(operand_2_i));
                        	end if;
                        	if clock_cycle_cnt_i = "00" then  -- First cycle: multiply
                        		mul_cur_result_o <= mult_result;
                        		clock_cycle_cnt_o <= "01";
                        		pause_o <= PAUSE;
                        	elsif clock_cycle_cnt_i = "01" then  -- Second cycle: add
                        		mult_accum_result := UNSIGNED('0' & hi & lo);
                        		if (funct_i = FUNCT_TYPE_MADD) or (funct_i = FUNCT_TYPE_MADDU) then 
	                        		mult_accum_result := UNSIGNED('0' & mul_cur_result_i) + mult_accum_result;
	                        	else
	                        		mult_accum_result := UNSIGNED('0' & ((not mul_cur_result_i) + '1')) + mult_accum_result;
	                        	end if;
	                        	hilo_en_o <= CHIP_ENABLE;
                        		-- I dont know what is the fucking problem with this output
                        		-- The fucking problem is that I confused signal with variable
                        		hi := STD_LOGIC_VECTOR(mult_accum_result(DOUBLE_DATA_LEN-1 downto REG_DATA_LEN));
                            	lo := STD_LOGIC_VECTOR(mult_accum_result(REG_DATA_LEN-1 downto 0));
                            	mul_cur_result_o <= DOUBLE_ZERO_DATA;
                        		clock_cycle_cnt_o <= "10";  -- So that the multiply accumulation instruction won't repeat
                        		pause_o <= PAUSE_NOT;
								                        		
                        	end if;  
                        
                        when FUNCT_TYPE_DIV =>
                        	-- TODO

                        when others =>
                        
                    end case arith_funct;
                
                when OP_TYPE_LOGIC =>
                    logic_funct: case funct_i is
                        -- or instructions
                        when FUNCT_TYPE_AND =>
                            reg_wt_data_o <= (operand_1_i and operand_2_i);

                        -- or instructions
                        when FUNCT_TYPE_OR =>
                            reg_wt_data_o <= (operand_1_i or operand_2_i);
                        
                        -- or instructions
                        when FUNCT_TYPE_XOR =>
                            reg_wt_data_o <= (operand_1_i xor operand_2_i);
                        
                        -- or instructions
                        when FUNCT_TYPE_NOR =>
                            reg_wt_data_o <= (operand_1_i nor operand_2_i);
                        
                        when others =>
                            
                    end case logic_funct;
                
                when OP_TYPE_SHIFT =>
                    shift_funct: case funct_i is
                        -- shift left logic instructions
                        when FUNCT_TYPE_SHIFT_LEFT_LOGIC =>
                            reg_wt_data_o <= (operand_2_i sll to_integer(unsigned(operand_1_i(4 downto 0))));  
                        
                        -- shift right logic instructions
                        when FUNCT_TYPE_SHIFT_RIGHT_LOGIC =>
                            reg_wt_data_o <= (operand_2_i srl to_integer(unsigned(operand_1_i(4 downto 0))));  
                        
                        -- shift right arithmetic instructions
                        when FUNCT_TYPE_SHIFT_RIGHT_ARITH =>
                            reg_wt_data_o <= ((to_stdlogicvector(to_bitvector(std_logic_vector(operand_2_i)) sra to_integer(unsigned(operand_1_i(4 downto 0))))));
                    
                        when others =>
                    
                    end case shift_funct;
                
                when OP_TYPE_MOVE =>
                    move_funct: case funct_i is
                        -- MOVZ
                        when FUNCT_TYPE_MOVE_ZERO =>
                            if operand_2_i = REG_ZERO_DATA then
                                reg_wt_en_o <= REG_WT_ENABLE;
                            end if;
                            reg_wt_data_o <= operand_1_i;
                        
                        -- MOVN
                        when FUNCT_TYPE_MOVE_NOT_ZERO =>
                            if not(operand_2_i = REG_ZERO_DATA) then
                                reg_wt_en_o <= REG_WT_ENABLE;
                            end if;
                            reg_wt_data_o <= operand_1_i;
                        
                        -- MFHI
                        -- Solve data conflict issue
                        when FUNCT_TYPE_MOVE_FROM_HI =>
                            reg_wt_data_o <= hi_o;
                        
                        -- MTHI
                        when FUNCT_TYPE_MOVE_TO_HI =>
                            hilo_en_o <= CHIP_ENABLE;
                            hi := operand_1_i;
                        
                        -- MFLO
                        when FUNCT_TYPE_MOVE_FROM_LO =>
                            reg_wt_data_o <= lo_o;
                        
                        -- MTLO
                        when FUNCT_TYPE_MOVE_TO_LO =>
                            hilo_en_o <= CHIP_ENABLE;
                            lo := operand_1_i;
                        
                        when others =>
                        
                    end case move_funct;
                
                when OP_TYPE_BRANCH =>
                	branch_funct: case funct_i is
                		
	                	when FUNCT_TYPE_JAL | FUNCT_TYPE_JALR | FUNCT_TYPE_BAL | FUNCT_TYPE_BGEZAL | FUNCT_TYPE_BLTZAL =>
	                		reg_wt_data_o <= link_addr_i;
	                	
	                	when others =>
                		
                	end case branch_funct;
                
                when OP_TYPE_LOAD_STORE =>
                	load_store_funct: case funct_i is
                		
                		-- Load: operand1 = base, offset = extended_offset
                		
                		when FUNCT_TYPE_LB | FUNCT_TYPE_LBU | FUNCT_TYPE_LH | FUNCT_TYPE_LHU | FUNCT_TYPE_LW | FUNCT_TYPE_LWL| FUNCT_TYPE_LWR =>
	                		is_load_store_o <= IS_LOAD_STORE;
				          	funct_o <= funct_i;
				           	load_store_addr_o <= operand_1_i + extended_offset_i;
				           	-- store_data_o <= ZERO_DATA;
				           	store_data_o <= operand_2_i; -- for LWL and LWR instructions
                		
                		-- Store: operand1 = base, operand2 = rt, offset = extended_offset
                		
                		when FUNCT_TYPE_SB | FUNCT_TYPE_SH | FUNCT_TYPE_SW | FUNCT_TYPE_SWL | FUNCT_TYPE_SWR =>
                			is_load_store_o <= IS_LOAD_STORE;
				          	funct_o <= funct_i;
				           	load_store_addr_o <= operand_1_i + extended_offset_i;
				           	store_data_o <= operand_2_i;
				        
				        when others =>
                		
                    end case load_store_funct;
                    
                when OP_TYPE_CP0 =>
                    cp0_func: case( funct_i ) is
                    
                        when FUNCT_TYPE_MFC0 =>
                            cp0_reg_read_addr_o <= inst_i(15 downto 11);--rd的地�???? 5�????
                            
                            if (mem_cp0_reg_we_i = REG_WT_ENABLE) and (mem_cp0_reg_write_addr_i = inst_i(15 downto 11)) then
                                reg_wt_data_o <= mem_cp0_reg_data_i; --数据冲突：访存阶段要写的寄存器地�???? = 要读的寄存器地址
                            elsif (wb_cp0_reg_we_i = REG_WT_ENABLE)and (wb_cp0_reg_write_addr_i = inst_i(15 downto 11))then
                                reg_wt_data_o <= wb_cp0_reg_data_i; --数据冲突：写回阶段要写的寄存器地�???? = 要读的寄存器地址                                
                            else
                                reg_wt_data_o <= cp0_reg_data_i;--读取到的cp0中指定寄存器的�??
                            end if;
                        
                        when FUNCT_TYPE_MTC0 =>
                            cp0_reg_write_addr_o <= inst_i(15 downto 11);
                            cp0_reg_we_o <= REG_WT_ENABLE;
                            cp0_reg_data_o <= operand_2_i;
                            
                        when others =>
    
                    end case cp0_func;

                when OP_TYPE_TRAP =>
                    trap_func: case( funct_i ) is
                        when FUNCT_TYPE_TEQ | FUNCT_TYPE_TEQI =>
                            if operand_1_i = operand_2_i then
                                trap_assert := TRAP_TRUE;
                            end if ;

                        when FUNCT_TYPE_TGE | FUNCT_TYPE_TGEI | FUNCT_TYPE_TGEU | FUNCT_TYPE_TGEIU =>
                            if compare_result = '0' then
                                trap_assert := TRAP_TRUE;
                            end if ;
                    
                        when FUNCT_TYPE_TLT | FUNCT_TYPE_TLTI | FUNCT_TYPE_TLTIU | FUNCT_TYPE_TLTU =>
                            if compare_result = '1' then
                                trap_assert := TRAP_TRUE;
                            end if ;

                        when FUNCT_TYPE_TNE | FUNCT_TYPE_TNEI =>
                            if operand_1_i /= operand_2_i then
                                trap_assert := TRAP_TRUE;
                            end if ;
                        when others =>
                    end case ;

                when others =>
            
            end case op_code;
            
            -- Use signal to give hi/lo output a correct value
            hi_o <= hi;
            lo_o <= lo;

            except_type_o <= except_type_i(31 downto 12) & over_assert & trap_assert & except_type_i(9 downto 8) & x"00";
            is_in_delayslot_o <= is_in_delayslot_i;
            current_inst_address_o <= current_inst_address_i;
        end if;
    end process;

end Behavioral;
