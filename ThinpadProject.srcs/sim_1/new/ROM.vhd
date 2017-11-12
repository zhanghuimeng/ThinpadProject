----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2017/11/13 01:01:59
-- Design Name: 
-- Module Name: ROM - Behavioral
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

-- Rom Module for Test

entity ROM is
    Port ( en_i :       in STD_LOGIC;                                   -- input rom enable from PC
           addr_i :     in STD_LOGIC_VECTOR(ADDR_LEN-1 downto 0);       -- input instruction address from PC
           inst_o :     out STD_LOGIC_VECTOR(INST_LEN-1 downto 0));     -- output instruction to IF/ID
end ROM;

architecture Behavioral of ROM is
begin
    
    process (all)
    type rom_array_type is array(ROM_SIZE-1 downto 0) of STD_LOGIC_VECTOR(INST_LEN-1 downto 0);
    variable rom_array : rom_array_type;
    file filein : text;
    variable fstatus : FILE_OPEN_STATUS;
    variable buf : LINE;
    variable output : LINE;
    variable data : STD_LOGIC_VECTOR(INST_LEN-1 downto 0);
    variable index : STD_LOGIC_VECTOR(ADDR_LEN-1 downto 0) := x"00000000";
    begin
        -- In the process, first open the file
        file_open(fstatus, filein, "/home/zhanghuimeng/Computer_Architecture/ThinpadProject/rom.data", read_mode);
            while not endfile(filein) loop
                readline(filein, buf);
                if buf'length = 0 then
                    exit;
                end if;
                hread(buf, data);
                
                rom_array(to_integer(unsigned(index))) := data;
                
                -- print the value of rom_array(index)
                deallocate(output);
                write(output, string'("rom_array("));
                write(output, integer'(to_integer(unsigned(index))));
                write(output, string'(") = "));
                write(output, rom_array(to_integer(unsigned(index))));
                report output.all;
                
                index := index + x"00000001";
            end loop;
        
        -- Wait for en_i to change
        loop
            wait on en_i, addr_i;
            if en_i = ROM_ENABLE then
                inst_o <= x"00000000";
            else
                inst_o <= rom_array(to_integer(unsigned(addr_i)));
            end if;
        end loop;
    end process;

end Behavioral;


end Behavioral;
