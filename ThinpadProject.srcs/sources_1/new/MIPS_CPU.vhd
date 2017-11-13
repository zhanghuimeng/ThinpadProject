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
    Port ( rst :            in STD_LOGIC;                                   -- Reset
           clk :            in STD_LOGIC;                                   -- Clock
           inst_i :         in STD_LOGIC_VECTOR(INST_LEN-1 downto 0);       -- input instruction from ROM
           rom_en_o :       out STD_LOGIC;                                  -- output enable to ROM
           rom_addr_o :     out STD_LOGIC_VECTOR(INST_LEN-1 downto 0));     -- output instruction address to ROM
end MIPS_CPU;

architecture Behavioral of MIPS_CPU is

component PC
    Port ( rst :    in STD_LOGIC;                                       -- Reset
           clk :    in STD_LOGIC;                                       -- Clock
           pc_o :   out STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);     -- output program counter (instruction address) to ROM
           en_o :   out STD_LOGIC);                                     -- output enable signal to ROM
end component;

component IF_to_ID is
    Port ( rst :    in STD_LOGIC;                                       -- Reset
           clk :    in STD_LOGIC;                                       -- Clock
           pc_i :   in STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);      -- input program counter (instruction address) from ROM
           inst_i : in STD_LOGIC_VECTOR(INST_LEN-1 downto 0);           -- input instruction from ROM
           pc_o :   out STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);     -- output program counter (instruction address) to ID
           inst_o : out STD_LOGIC_VECTOR(INST_LEN-1 downto 0));         -- output instruction to ID
end component;

component ID is
    Port ( rst :                in STD_LOGIC;                                       -- Reset
           pc_i :               in STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);      -- input program counter (instruction address) from IF_to_ID
           inst_i :             in STD_LOGIC_VECTOR(INST_LEN-1 downto 0);           -- input instruction from IF_to_ID
           reg_rd_data_1_i :    in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input register 1 read data from REGISTERS
           reg_rd_data_2_i :    in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input register 2 read data from REGISTERS
           op_o :               out STD_LOGIC_VECTOR(OP_LEN-1 downto 0);            -- output custom op type to ID_to_EX
           funct_o :            out STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0);         -- output custom funct type to ID_to_EX
           reg_rd_en_1_o :      out STD_LOGIC;                                      -- output register 1 read enable to REGISTERS
           reg_rd_en_2_o :      out STD_LOGIC;                                      -- output register 2 read enable to REGISTERS
           reg_rd_addr_1_o :    out STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);      -- output register 1 read address to REGISTERS
           reg_rd_addr_2_o :    out STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);      -- output register 2 read address to REGISTERS
           operand_1_o :        out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);      -- output operand 1 to ID_to_EX
           operand_2_o :        out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);      -- output operand 2 to ID_to_EX
           reg_wt_en_o :        out STD_LOGIC;                                      -- output register write enable to ID_to_EX
           reg_wt_addr_o :      out STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0));     -- output register write address to ID_to_EX
end component;

component ID_to_EX is
    Port ( rst :            in STD_LOGIC;                                       -- Reset
           clk :            in STD_LOGIC;                                       -- Clock
           op_i :           in STD_LOGIC_VECTOR(OP_LEN-1 downto 0);             -- input custom op type from ID
           funct_i :        in STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0);          -- input custom funct type from ID
           operand_1_i :    in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input operand 1 data from ID
           operand_2_i :    in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input operand 2 read data from ID
           reg_wt_en_i :    in STD_LOGIC;                                       -- input register write enable from ID
           reg_wt_addr_i :  in STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);       -- input register write address from ID
           op_o :           out STD_LOGIC_VECTOR(OP_LEN-1 downto 0);            -- output custom op type to EX
           funct_o :        out STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0);         -- output custom funct type to EX
           operand_1_o :    out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);      -- output operand 1 read data to EX
           operand_2_o :    out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);      -- output operand 2 read data to EX
           reg_wt_en_o :    out STD_LOGIC;                                      -- output register write enable to EX
           reg_wt_addr_o :  out STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0));     -- output register write address to EX
end component;

component EX is
    Port ( rst :            in STD_LOGIC;                                       -- Reset
           op_i :           in STD_LOGIC_VECTOR(OP_LEN-1 downto 0);             -- input custom op type from ID_to_EX
           funct_i :        in STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0);          -- input custom op type from ID_to_EX
           operand_1_i :    in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input operand 1 from ID_to_EX
           operand_2_i :    in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input operand 2 from ID_to_EX
           reg_wt_en_i :    in STD_LOGIC;                                       -- input register write enable from ID_to_EX
           reg_wt_addr_i :  in STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);       -- input register write address from ID_to_EX
           reg_wt_en_o :    out STD_LOGIC;                                      -- output register write enable to EX_to_MEM
           reg_wt_addr_o :  out STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);      -- output register write address to EX_to_MEM
           reg_wt_data_o :  out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0));     -- output register write data to EX_to_MEM
end component;

component EX_to_MEM is
    Port ( rst :                in STD_LOGIC;                                       -- Reset
           clk :                in STD_LOGIC;                                       -- Clock
           reg_wt_en_i :        in STD_LOGIC;                                       -- input register write enable from EX
           reg_wt_addr_i :      in STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);       -- input register write address from EX
           reg_wt_data_i :      in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input register write data from EX
           reg_wt_en_o :        out STD_LOGIC;                                      -- output register write enable to MEM
           reg_wt_addr_o :      out STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);      -- output register write address to MEM
           reg_wt_data_o :      out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0));     -- output register write data to MEM
end component;

component MEM is
    Port ( rst :                in STD_LOGIC;                                       -- Reset
           reg_wt_en_i :        in STD_LOGIC;                                       -- input register write enable from EX_to_MEM
           reg_wt_addr_i :      in STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);       -- input register write address from EX_to_MEM
           reg_wt_data_i :      in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input register write data from EX_to_MEM
           reg_wt_en_o :        out STD_LOGIC;                                      -- output register write enable to MEM_to_WB
           reg_wt_addr_o :      out STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);      -- output register write address to MEM_to_WB
           reg_wt_data_o :      out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0));     -- output register write data to MEM_to_WB
end component;

component MEM_to_WB is
    Port ( rst :                in STD_LOGIC;                                       -- Reset
           clk :                in STD_LOGIC;                                       -- Clock
           reg_wt_en_i :        in STD_LOGIC;                                       -- input register write enable from MEM
           reg_wt_addr_i :      in STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);       -- input register write address from MEM
           reg_wt_data_i :      in STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);       -- input register write data from MEM
           reg_wt_en_o :        out STD_LOGIC;                                      -- output register write enable to REGISTERS
           reg_wt_addr_o :      out STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);      -- output register write address to REGISTERS
           reg_wt_data_o :      out STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0));     -- output register write data to REGISTERS
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

-- PC to IF/ID signals
signal pc_from_pc : STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);  -- Need to be mapped to two ports

-- IF/ID to ID signals
signal pc_to_id : STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0);
signal inst_to_id : STD_LOGIC_VECTOR(INST_LEN-1 downto 0);

-- ID to REGISTER and ID/EX signals
signal reg_rd_data_1_from_register: STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
signal reg_rd_data_2_from_register: STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
signal op_from_id: STD_LOGIC_VECTOR(OP_LEN-1 downto 0);
signal funct_from_id: STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0);
signal reg_rd_en_1_to_register: STD_LOGIC;
signal reg_rd_en_2_to_register: STD_LOGIC;
signal reg_rd_addr_1_to_register: STD_LOGIC_VECTOR (REG_ADDR_LEN-1 downto 0);
signal reg_rd_addr_2_to_register: STD_LOGIC_VECTOR (REG_ADDR_LEN-1 downto 0);
signal oprand_1_from_id: STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
signal oprand_2_from_id: STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
signal reg_wt_en_from_id: STD_LOGIC;
signal reg_wt_addr_from_id: STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);

-- ID/EX to EX signals
signal op_to_ex: STD_LOGIC_VECTOR(OP_LEN-1 downto 0);
signal funct_to_ex: STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0);
signal oprand_1_to_ex: STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
signal oprand_2_to_ex: STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);
signal reg_wt_en_to_ex: STD_LOGIC;
signal reg_wt_addr_to_ex: STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);

-- EX to EX/MEM signals
signal reg_wt_en_from_ex: STD_LOGIC;
signal reg_wt_addr_from_ex: STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);
signal reg_wt_data_from_ex: STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);

-- EX/MEM to MEM signals
signal reg_wt_en_to_mem: STD_LOGIC;
signal reg_wt_addr_to_mem: STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);
signal reg_wt_data_to_mem: STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);

-- MEM to MEM/WB signals
signal reg_wt_en_from_mem: STD_LOGIC;
signal reg_wt_addr_from_mem: STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);
signal reg_wt_data_from_mem: STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0);

-- MEM/WB to REGISTER signals
signal reg_wt_en_to_register: STD_LOGIC;
signal reg_wt_addr_to_register: STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0);
signal reg_wt_data_to_register: STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0); 

begin

    rom_addr_o <= pc_from_pc;

    PC_0 : PC port map(
        rst => rst, clk => clk, 
        pc_o => pc_from_pc, en_o => rom_en_o);
    
    IF_to_ID_0 : IF_to_ID port map(
        rst => rst, clk => clk, 
        pc_i => pc_from_pc, inst_i => inst_i, 
        pc_o => pc_to_id, inst_o => inst_to_id);
    
    ID_0 : ID port map(
        rst => rst, 
        pc_i => pc_to_id, inst_i => inst_to_id, 
        reg_rd_data_1_i => reg_rd_data_1_from_register, reg_rd_data_2_i => reg_rd_data_2_from_register, 
        op_o => op_from_id, funct_o => funct_from_id, 
        reg_rd_en_1_o => reg_rd_en_1_to_register, reg_rd_en_2_o => reg_rd_en_2_to_register, 
        reg_rd_addr_1_o => reg_rd_addr_1_to_register, reg_rd_addr_2_o => reg_rd_addr_2_to_register, 
        operand_1_o => oprand_1_from_id, operand_2_o => oprand_2_from_id, 
        reg_wt_en_o => reg_wt_en_from_id, reg_wt_addr_o => reg_wt_addr_from_id);

    ID_to_EX_0 : ID_to_EX port map(
        rst => rst, clk => clk,
        op_i => op_from_id, funct_i => funct_from_id,
        operand_1_i => oprand_1_from_id, operand_2_i => oprand_2_from_id,
        reg_wt_en_i => reg_wt_en_from_id, reg_wt_addr_i => reg_wt_addr_from_id,
        op_o => op_to_ex, funct_o => funct_to_ex,
        operand_1_o => oprand_1_to_ex, operand_2_o => oprand_2_to_ex,
        reg_wt_en_o => reg_wt_en_to_ex, reg_wt_addr_o => reg_wt_addr_to_ex);
    
    EX_0 : EX port map(
        rst => rst,
        op_i => op_to_ex, funct_i => funct_to_ex,
        operand_1_i => oprand_1_to_ex, operand_2_i => oprand_2_to_ex,
        reg_wt_en_i => reg_wt_en_to_ex, reg_wt_addr_i => reg_wt_addr_to_ex,
        reg_wt_en_o => reg_wt_en_from_ex, reg_wt_addr_o => reg_wt_addr_from_ex, reg_wt_data_o => reg_wt_data_from_ex);
    
    EX_to_MEM_0 : EX_to_MEM port map(
        rst => rst, clk => clk,
        reg_wt_en_i => reg_wt_en_from_ex, reg_wt_addr_i => reg_wt_addr_from_ex, reg_wt_data_i => reg_wt_data_from_ex,
        reg_wt_en_o => reg_wt_en_to_mem, reg_wt_addr_o => reg_wt_addr_to_mem, reg_wt_data_o => reg_wt_data_to_mem);
    
    MEM_0 : MEM port map(
        rst => rst, 
        reg_wt_en_i => reg_wt_en_to_mem, reg_wt_addr_i => reg_wt_addr_to_mem, reg_wt_data_i => reg_wt_data_to_mem,
        reg_wt_en_o => reg_wt_en_from_mem, reg_wt_addr_o => reg_wt_addr_from_mem, reg_wt_data_o => reg_wt_data_from_mem);
    
    MEM_to_WB_0 : MEM_to_WB port map(
        rst => rst, clk => clk,
        reg_wt_en_i => reg_wt_en_from_mem, reg_wt_addr_i => reg_wt_addr_from_mem, reg_wt_data_i => reg_wt_data_from_mem,
        reg_wt_en_o => reg_wt_en_to_register, reg_wt_addr_o => reg_wt_addr_to_register, reg_wt_data_o => reg_wt_data_to_register);
    
    REGISTERS_0 : REGISTERS port map(
        rst => rst, clk => clk,
        reg_rd_en_1_i => reg_rd_en_1_to_register, reg_rd_en_2_i => reg_rd_en_2_to_register,
        reg_rd_addr_1_i => reg_rd_addr_1_to_register, reg_rd_addr_2_i => reg_rd_addr_2_to_register,
        reg_wt_en_i => reg_wt_en_to_register, reg_wt_addr_i => reg_wt_addr_to_register, reg_wt_data_i => reg_wt_data_to_register,
        reg_rd_data_1_o => reg_rd_data_1_from_register, reg_rd_data_2_o => reg_rd_data_2_from_register);
        
end Behavioral;
