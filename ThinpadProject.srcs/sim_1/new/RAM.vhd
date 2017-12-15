----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2017/11/27 22:03:28
-- Design Name: 
-- Module Name: RAM - Behavioral
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

entity RAM is
    Port ( clk :                in STD_LOGIC;                                       -- Clock
           en_i :               in STD_LOGIC;                                       -- input enable from MEM
           is_read_i :          in STD_LOGIC;                                       -- input if this instruction is reading from MEM
           addr_i :             in STD_LOGIC_VECTOR(ADDR_LEN-1 downto 0);           -- input data address from MEM
           data_i :             in STD_LOGIC_VECTOR(DATA_LEN-1 downto 0);           -- input data to write from MEM
           data_sel_i :         in STD_LOGIC_VECTOR(BYTE_IN_DATA-1 downto 0);       -- input RAM data selection from MEM
           data_o :             out STD_LOGIC_VECTOR(DATA_LEN-1 downto 0));			-- ouput data read to MEM
end RAM;

architecture Behavioral of RAM is
type ram_array_type is array(RAM_SIZE-1 downto 0) of STD_LOGIC_VECTOR(DATA_LEN-1 downto 0);
shared variable ram_array : ram_array_type := (others => (others => '0'));  -- Note the 'others' syntax
shared variable output : LINE;
begin

    read: process (all)
    variable x: integer;
    variable y: STD_LOGIC_VECTOR(1 downto 0);
    variable address: STD_LOGIC_VECTOR(18 downto 0);
    begin
        for x in 0 to 3 loop
            y := std_logic_vector(to_unsigned(x, y'length));
            address := addr_i(RAM_SIZE_LOG2+1 downto 2) & y;
            deallocate(output);
            write(output, string'("ram_array("));
            write(output, integer'(to_integer(unsigned(address))));
            write(output, string'(") = "));
            write(output, ram_array(to_integer(unsigned(addr_i(RAM_SIZE_LOG2+1 downto 2))))(x*8+7 downto x*8));
            report output.all;
        end loop;
        
        if en_i = CHIP_DISABLE then
            data_o <= ZERO_DATA;
        elsif is_read_i = IS_READ_RAM then
            data_o <= ram_array(to_integer(unsigned(addr_i(RAM_SIZE_LOG2+1 downto 2))));
        else
            data_o <= ZERO_DATA;
        end if;
    end process read;

    write: process (clk'event)
    begin
        if rising_edge(clk) then
            if en_i = CHIP_DISABLE then
            elsif is_read_i = IS_WRITE_RAM then
                -- 根据data_sel_i的内容给RAM选择性赋值
                if data_sel_i(3) = IS_SELECTED then
                    ram_array(to_integer(unsigned(addr_i(RAM_SIZE_LOG2+1 downto 2))))(4*BYTE_LEN-1 downto 3*BYTE_LEN) 
                        := data_i(4*BYTE_LEN-1 downto 3*BYTE_LEN);
                end if;
                if data_sel_i(2) = IS_SELECTED then
                    ram_array(to_integer(unsigned(addr_i(RAM_SIZE_LOG2+1 downto 2))))(3*BYTE_LEN-1 downto 2*BYTE_LEN) 
                        := data_i(3*BYTE_LEN-1 downto 2*BYTE_LEN);
                end if;
                if data_sel_i(1) = IS_SELECTED then
                    ram_array(to_integer(unsigned(addr_i(RAM_SIZE_LOG2+1 downto 2))))(2*BYTE_LEN-1 downto BYTE_LEN) 
                        := data_i(2*BYTE_LEN-1 downto BYTE_LEN);
                end if;
                if data_sel_i(0) = IS_SELECTED then
                    ram_array(to_integer(unsigned(addr_i(RAM_SIZE_LOG2+1 downto 2))))(BYTE_LEN-1 downto 0) 
                        := data_i(BYTE_LEN-1 downto 0);
                end if;
            end if;
        end if;
    end process write;
    
end Behavioral;
