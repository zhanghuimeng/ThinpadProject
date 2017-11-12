----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2017/11/12 01:20:17
-- Design Name: 
-- Module Name: include - Behavioral
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

-- Constants Declaration Package
-- Usage: use WORK.INCLUDE.ALL;
-- WORK is the current working directory
package INCLUDE is
    constant INST_ADDR_LEN : integer := 32;
    constant INST_LEN : integer := 32;
    constant REG_ADDR_LEN : integer := 5;
    constant REG_DATA_LEN : integer := 32;
    constant OP_LEN : integer := 6;
    constant FUNCT_LEN : integer := 6;
    constant IMM_LEN : integer := 16;
    constant SHAMT_LEN : integer := 5;
    constant JUMP_ADDR_LEN : integer := 26;
    constant REG_NUM : integer := 32;
    constant ROM_SIZE : integer := 131072;
    constant RST_ENABLE : STD_LOGIC := '1';
    constant RST_DISABLE : STD_LOGIC := '0';
    constant CHIP_ENABLE : STD_LOGIC := '1';
    constant CHIP_DISABLE : STD_LOGIC := '0';
    constant REG_RD_ENABLE : STD_LOGIC := '1';
    constant REG_RD_DISABLE : STD_LOGIC := '0';
    constant REG_WT_ENABLE : STD_LOGIC := '1';
    constant REG_WT_DISABLE : STD_LOGIC := '0';
    
    constant REG_ZERO_ADDR : STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0) := b"00000";
    constant REG_ZERO_DATA : STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0) := x"00000000";
    
    -- Instruction type for EX Module
    constant OP_TYPE_NOP :           STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"000000";
    constant OP_TYPE_ARITH :         STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"000001";
    constant OP_TYPE_LOGIC :         STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"000010";
    constant OP_TYPE_MOVE :          STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"000011";
    constant OP_TYPE_BRANCH :        STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"000100";
    
    -- Instruction subtype for EX 
    constant FUNCT_TYPE_NOP :        STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"000000";
    -- Arithmetic
    -- Logic
    constant FUNCT_TYPE_SHIFT_LEFT :         STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"000001";
    
    constant FUNCT_TYPE_OR :         STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"000010";
    
    -- Introduction to the MIPS32 Architecture
    -- Table A-2 MIPS32 Encoding of the Opcode Field (bits 31..26)
    constant OP_SPECIAL :       STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"000000";
    constant OP_REGIMM :        STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"000001";
    constant OP_J :             STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"000010";
    constant OP_JAL :           STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"000011";
    constant OP_BEQ :           STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"000100";
    constant OP_BNE :           STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"000101";
    constant OP_BLEZ :          STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"000110";
    constant OP_BGTZ :          STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"000111";
    constant OP_ADDI :          STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"001000";
    constant OP_ADDIU :         STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"001001";
    constant OP_SLTI :          STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"001010";
    constant OP_SLTIU :         STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"001011";
    constant OP_ANDI :          STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"001100"; 
    constant OP_ORI :           STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"001101";
    constant OP_XORI :          STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"001110";
    constant OP_LUI :           STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"001111";
    constant OP_COP0 :          STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"010000";
    constant OP_COP1 :          STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"010001";
    constant OP_COP2 :          STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"010010";
    constant OP_COP3 :          STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"010011";
    constant OP_BEQL :          STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"010100";
    constant OP_BNEL :          STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"010101";
    constant OP_BLEZL :         STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"010110";
    constant OP_BGTZL :         STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"010111";
    constant OP_SPECIAL2 :      STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"011100";
    constant OP_JALX :          STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"011101";
    constant OP_LB :            STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"100000";
    constant OP_LH :            STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"100001";
    constant OP_LWL :           STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"100010";
    constant OP_LW :            STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"100011";
    constant OP_LBU :           STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"100100";
    constant OP_LHU :           STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"100101";
    constant OP_LWR :           STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"100110";
    constant OP_SB :            STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"101000";
    constant OP_SH :            STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"101001";
    constant OP_SWL :           STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"101010";
    constant OP_SW :            STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"101011";
    constant OP_SWR :           STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"101110";
    constant OP_CACHE :         STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"101111";
    constant OP_LL :            STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"110000";
    constant OP_LWC1 :          STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"110001";
    constant OP_LWC2 :          STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"110010";
    constant OP_PREF :          STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"110011";
    constant OP_LDC1 :          STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"110101";
    constant OP_LDC2 :          STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"110110";
    constant OP_SC :            STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"111000";
    constant OP_SWC1 :          STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"111001";
    constant OP_SWC2 :          STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"111010";
    constant OP_SDC1 :          STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"111101";
    constant OP_SDC2 :          STD_LOGIC_VECTOR(OP_LEN-1 downto 0) := b"111110";
    
    -- Introduction to the MIPS32 Architecture
    -- Table A-3 MIPS32 SPECIAL Opcode Encoding of Function Field (bits 5..0)
    constant FUNCT_SLL :        STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"000000";
    constant FUNCT_MOVCI :      STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"000001";
    constant FUNCT_SRL :        STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"000010";
    constant FUNCT_SRA :        STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"000011";
    constant FUNCT_SLLV :       STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"000100";
    constant FUNCT_SRLV :       STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"000110";
    constant FUNCT_SRAV :       STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"000111";
    constant FUNCT_JR :         STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"001000";
    constant FUNCT_JALR :       STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"001001";
    constant FUNCT_MOVZ :       STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"001010";
    constant FUNCT_MOVN :       STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"001011";
    constant FUNCT_SYSCALL :    STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"001100";
    constant FUNCT_BREAK :      STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"001101";
    constant FUNCT_SYNC :       STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"001111";
    constant FUNCT_MFHI :       STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"010000";
    constant FUNCT_MTHI :       STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"010001";
    constant FUNCT_MFLO :       STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"010010";
    constant FUNCT_MTLO :       STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"010011";
    constant FUNCT_MULT :       STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"011000";
    constant FUNCT_MULTU :      STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"011001";
    constant FUNCT_DIV :        STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"011010";
    constant FUNCT_DIVU :       STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"011011";
    constant FUNCT_ADD :        STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"100000";
    constant FUNCT_ADDU :       STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"100001";
    constant FUNCT_SUB :        STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"100010";
    constant FUNCT_SUBU :       STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"100011";
    constant FUNCT_AND :        STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"100100";
    constant FUNCT_OR :         STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"100101";
    constant FUNCT_XOR :        STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"100110";
    constant FUNCT_NOR :        STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"100111";
    constant FUNCT_SLT :        STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"101010";
    constant FUNCT_SLTU :       STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"101011";
    constant FUNCT_TGE :        STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"110000";
    constant FUNCT_TGEU :       STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"110001";
    constant FUNCT_TLT :        STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"110010";
    constant FUNCT_TLTU :       STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"110011";
    constant FUNCT_TEQ :        STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"110100";
    constant FUNCT_TNE :        STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"110110";
    
    -- Introduction to the MIPS32 Architecture
    -- Table A-4 MIPS32 REGIMM Encoding of rt Field (bits 20..16)
    constant RT_BLTZ :          STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0) := b"00000";
    constant RT_BGEZ :          STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0) := b"00001";
    constant RT_BLTZL :         STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0) := b"00010";
    constant RT_BGEZL :         STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0) := b"00011";
    constant RT_TGEI :          STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0) := b"01000";
    constant RT_TGEIU :         STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0) := b"01001";
    constant RT_TLTI :          STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0) := b"01010";
    constant RT_TLTIU :         STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0) := b"01011";
    constant RT_TEQI :          STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0) := b"01100";
    constant RT_TNEI :          STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0) := b"01110";
    constant RT_BLTZAL :        STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0) := b"10000";
    constant RT_BGEZAL :        STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0) := b"10001";
    constant RT_BLTZALL :       STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0) := b"10010";
    constant RT_BGEZALL :       STD_LOGIC_VECTOR(REG_DATA_LEN-1 downto 0) := b"10011";
    
    -- Introduction to the MIPS32 Architecture
    -- Table A-5 MIPS32 SPECIAL2 Encoding of Function Field (bits 5..0)
    constant FUNCT_MADD :       STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"000000";
    constant FUNCT_MADDU :      STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"000001";
    constant FUNCT_MUL :        STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"000010";
    constant FUNCT_MSUB :       STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"000100";
    constant FUNCT_MSUBU :      STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"000101";
    constant FUNCT_CLZ :        STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"100000";
    constant FUNCT_CLO :        STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"100001";
    constant FUNCT_SDBRP :      STD_LOGIC_VECTOR(FUNCT_LEN-1 downto 0) := b"111111";
    
    -- Introduction to the MIPS32 Architecture
    -- Table A-6 MIPS32 MOVCI Encoding of tf Bit (bit 16)
    constant TF_MOVF :          STD_LOGIC := '0';
    constant TF_MOVT :          STD_LOGIC := '1';
    
end INCLUDE;

