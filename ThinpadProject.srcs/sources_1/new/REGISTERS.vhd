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
    signal reg_array : reg_array_type := (
        0=>x"00000000", 1=>x"00000000", 2=>x"00000000", 3=> x"00000000", 4=>x"00000000", 5=>x"00000000", 6=>x"00000000", 7=>x"00000000",
        8=> x"00000000", 9=>x"00000000", 10=>x"00000000", 11=>x"00000000", 12=>x"00000000", 13=>x"00000000", 14=>x"00000000", 15=>x"00000000",
        16=>x"00000000", 17=>x"00000000", 18=>x"00000000", 19=>x"00000000", 20=>x"00000000", 21=>x"00000000", 22=>x"00000000", 23=>x"00000000",
        24=>x"00000000", 25=>x"00000000", 26=>x"00000000", 27=>x"00000000", 28=>x"00000000", 29=>x"00000000", 30=>x"00000000", 31=>x"00000000");
begin

    read_reg_1: process (clk'event)
    begin
        if rising_edge(clk) then
            if reg_rd_en_1_i = REG_RD_ENABLE then
                reg_rd_data_1_o <= reg_array(to_integer(unsigned(reg_rd_addr_1_i)));
            end if;
        end if;
    end process read_reg_1;
    
    read_reg_2: process (clk'event)
    begin
        if rising_edge(clk) then
            if reg_rd_en_2_i = REG_RD_ENABLE then
                reg_rd_data_2_o <= reg_array(to_integer(unsigned(reg_rd_addr_2_i)));
            end if;
        end if;
    end process read_reg_2;

    write_reg: process (clk'event)
    begin
        if rising_edge(clk) then
            if reg_wt_en_i = REG_WT_ENABLE and not reg_wt_addr_i = REG_ZERO_ADDR then
                reg_array(to_integer(unsigned(reg_wt_addr_i))) <= reg_wt_data_i;
            end if;
        end if;
    end process write_reg;

end Behavioral;
