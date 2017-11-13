----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2017/11/12 17:09:28
-- Design Name: 
-- Module Name: registers - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

use WORK.INCLUDE.ALL;

-- REGISTERS Module in CPU

entity REGISTERS is
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
end REGISTERS;

-- TODO: Solve Data Conflict
architecture Behavioral of REGISTERS is
    type reg_array_type is array(REG_NUM-1 downto 0) of STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
    signal reg_array : reg_array_type := (others => (others => '0'));  -- Note the 'others' syntax
begin

    -- Note: reading resgiter is conbinatory logic
    -- So as to read register values instantly in ID module
    read_reg_1: process (all)
    begin
        if rising_edge(clk) then
            if reg_rd_en_1_i = REG_RD_ENABLE then
                reg_rd_data_1_o <= reg_array(to_integer(unsigned(reg_rd_addr_1_i)));
            else
                reg_rd_data_1_o <= REG_ZERO_DATA;
            end if;
        end if;
    end process read_reg_1;
    
    read_reg_2: process (all)
    begin
        if rising_edge(clk) then
            if reg_rd_en_2_i = REG_RD_ENABLE then
                reg_rd_data_2_o <= reg_array(to_integer(unsigned(reg_rd_addr_2_i)));
            else
                reg_rd_data_2_o <= REG_ZERO_DATA;
            end if;
        end if;
    end process read_reg_2;

    write_reg: process (clk'event)
        variable output: LINE;
    begin
        if rising_edge(clk) then
            deallocate(output);
            write(output, string'("REG write addr = "));
            write(output, reg_wt_addr_i);
            write(output, string'(", REG write enable = "));
            write(output, reg_wt_en_i);
            write(output, string'(", REG write data = "));
            write(output, reg_wt_data_i);
            report output.all;
            -- Note the priority issue
            if (reg_wt_en_i = REG_WT_ENABLE) and (not (reg_wt_addr_i = REG_ZERO_ADDR)) then
                reg_array(to_integer(unsigned(reg_wt_addr_i))) <= reg_wt_data_i;
            end if;
        end if;
    end process write_reg;

end Behavioral;
