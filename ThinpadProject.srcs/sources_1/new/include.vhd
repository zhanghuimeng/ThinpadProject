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
	constant INST_ADDR_LEN   : integer   := 32;
	constant INST_LEN        : integer   := 32;
	constant REG_ADDR_LEN    : integer   := 5;
	constant REG_DATA_LEN    : integer   := 32;
	constant DATA_LEN        : integer   := 32;
	constant ADDR_LEN        : integer   := 32;
	constant DOUBLE_DATA_LEN : integer   := 64;
	constant EXCEPT_TYPE_LEN : integer   := 32;

	-- Pause
	constant CTRL_PAUSE_LEN  : integer   := 6;
	constant PAUSE			 : STD_LOGIC := '1';
	constant PAUSE_NOT		 : STD_LOGIC := '0';
	constant FLUSH			 : STD_LOGIC := '1';
    constant FLUSH_NOT		 : STD_LOGIC := '0';
    constant PC_PAUSE_INDEX  : integer   := 0;
    constant IF_PAUSE_INDEX  : integer   := 1;
    constant ID_PAUSE_INDEX  : integer   := 2;
    constant EX_PAUSE_INDEX  : integer   := 3;
    constant MEM_PAUSE_INDEX : integer   := 4;
    constant WB_PAUSE_INDEX  : integer   := 5;
    
    -- Accumulation inst constants
    constant ACCU_CNT_LEN 	 : integer	 := 2;
    
    -- Load/Store
    constant BYTE_IN_DATA	 : integer	 := 4;
    constant IS_READ		 : STD_LOGIC := '1';
    constant IS_WRITE		 : STD_LOGIC := '0';
    constant BYTE_LEN		 : integer   := 8;
    constant HALF_LEN		 : integer   := 16;
    constant WORD_LEN		 : integer   := 32;
    
    -- Branch/Jump
    constant BRANCH			 : STD_LOGIC := '1';
    constant BRANCH_NOT		 : STD_LOGIC := '0';
    constant DELAYSLOT		 : STD_LOGIC := '1';
    constant DELAYSLOT_NOT	 : STD_LOGIC := '0';
    
    constant OP_LEN          : integer   := 6;
	constant FUNCT_LEN       : integer   := 6;
	constant IMM_LEN         : integer   := 16;
	constant SHAMT_LEN       : integer   := 5;
	constant JUMP_ADDR_LEN   : integer   := 26;
	constant CP0_SEL_LEN     : integer   := 3;
	constant REG_NUM         : integer   := 32;
	constant ROM_SIZE        : integer   := 131072;
	constant ROM_SIZE_LOG2   : integer   := 17;
	constant RAM_SIZE        : integer   := 131072;
    constant RAM_SIZE_LOG2   : integer   := 17;
	constant RST_ENABLE      : STD_LOGIC := '1';
	constant RST_DISABLE     : STD_LOGIC := '0';
	constant CHIP_ENABLE     : STD_LOGIC := '1';
	constant CHIP_DISABLE    : STD_LOGIC := '0';
	constant REG_RD_ENABLE   : STD_LOGIC := '1';
	constant REG_RD_DISABLE  : STD_LOGIC := '0';
	constant INST_VALID      : STD_LOGIC_vector(0 downto 0) := b"1";
	constant INST_INVALID    : STD_LOGIC_vector(0 downto 0) := b"0";
	constant TRUE			 : STD_LOGIC_vector(0 downto 0) := b"1";
	constant FALSE		     : STD_LOGIC_vector(0 downto 0) := b"0";
	constant REG_WT_ENABLE   : STD_LOGIC := '1';
	constant REG_WT_DISABLE  : STD_LOGIC := '0';
	constant IS_LOAD_STORE	 : STD_LOGIC := '1';
	constant NOT_LOAD_STORE	 : STD_LOGIC := '0';
	
	-- RAM simulation source
	constant IS_READ_RAM	 : STD_LOGIC := '1';
    constant IS_WRITE_RAM    : STD_LOGIC := '0';
    constant IS_SELECTED     : STD_LOGIC := '1';

	constant REG_ZERO_ADDR : STD_LOGIC_VECTOR(REG_ADDR_LEN - 1 downto 0) := b"00000";
	constant REG_31_ADDR : STD_LOGIC_VECTOR(REG_ADDR_LEN - 1 downto 0) := b"11111";
	constant REG_ZERO_DATA : STD_LOGIC_VECTOR(REG_DATA_LEN - 1 downto 0) := x"00000000";
	constant ZERO_DATA : STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0) := x"00000000";
	constant ZERO_ADDR : STD_LOGIC_VECTOR(ADDR_LEN - 1 downto 0) := x"00000000";
	constant INST_ZERO_ADDR : STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0) := x"00000000";
	constant ZERO_INST : STD_LOGIC_VECTOR(INST_LEN - 1 downto 0) := x"00000000";
	constant DOUBLE_ZERO_DATA : STD_LOGIC_VECTOR(DOUBLE_DATA_LEN - 1 downto 0) := x"0000000000000000";

	-- Instruction type for EX Module
	constant OP_TYPE_NOP    : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"000000";
	constant OP_TYPE_ARITH  : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"000001";
	constant OP_TYPE_LOGIC  : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"000010";
	constant OP_TYPE_SHIFT  : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"000011";
	constant OP_TYPE_MOVE   : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"000100";
	constant OP_TYPE_BRANCH : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"000101";
	constant OP_TYPE_LOAD_STORE: STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"000110";
	constant OP_TYPE_CP0    : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"000111";
	constant OP_TYPE_TRAP   : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"001000";
	constant OP_TYPE_SYSCALL: STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"001001";
	constant OP_TYPE_ERET   : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"001010";


	-- Instruction subtype for EX 
	-- No Operation
	constant FUNCT_TYPE_NOP               : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000000";
	-- Arithmetic
	constant FUNCT_TYPE_ADD               : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000001";
	constant FUNCT_TYPE_ADDI              : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000010";
	constant FUNCT_TYPE_ADDIU             : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000011";
	constant FUNCT_TYPE_ADDU              : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000100";
	constant FUNCT_TYPE_SUB               : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000101";
	constant FUNCT_TYPE_SUBU              : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000110";
	constant FUNCT_TYPE_CLO               : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000111";
	constant FUNCT_TYPE_CLZ               : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"001000";
	constant FUNCT_TYPE_SLT               : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"001001";
	constant FUNCT_TYPE_SLTI              : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"001010";
	constant FUNCT_TYPE_SLTIU             : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"001011";
	constant FUNCT_TYPE_SLTU              : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"001100";
	constant FUNCT_TYPE_MUL               : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"001101";
	constant FUNCT_TYPE_MULT              : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"001110";
	constant FUNCT_TYPE_MULTU             : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"001111";
	constant FUNCT_TYPE_MADD              : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"010000";
	constant FUNCT_TYPE_MADDU             : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"010001";
	constant FUNCT_TYPE_MSUB              : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"010010";
	constant FUNCT_TYPE_MSUBU             : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"010011";
	constant FUNCT_TYPE_DIV               : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"010100";
	constant FUNCT_TYPE_DIVU              : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"010101";
	-- Logic
	constant FUNCT_TYPE_AND               : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000010";
	constant FUNCT_TYPE_OR                : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000011";
	constant FUNCT_TYPE_XOR               : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000100";
	constant FUNCT_TYPE_NOR               : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000101";
	-- Shift
	constant FUNCT_TYPE_SHIFT_LEFT_LOGIC  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000001";
	constant FUNCT_TYPE_SHIFT_RIGHT_LOGIC : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000010";
	constant FUNCT_TYPE_SHIFT_RIGHT_ARITH : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000011";
	-- Move
	constant FUNCT_TYPE_MOVE_ZERO         : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000001";
	constant FUNCT_TYPE_MOVE_NOT_ZERO     : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000010";
	constant FUNCT_TYPE_MOVE_FROM_HI      : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000011";
	constant FUNCT_TYPE_MOVE_TO_HI        : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000100";
	constant FUNCT_TYPE_MOVE_FROM_LO      : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000101";
	constant FUNCT_TYPE_MOVE_TO_LO        : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000110";
	-- Branch
	constant FUNCT_TYPE_JR				  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000001";
	constant FUNCT_TYPE_JALR			  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000010";
	constant FUNCT_TYPE_J				  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000011";
	constant FUNCT_TYPE_JAL				  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000100";
	constant FUNCT_TYPE_B				  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000101";
	constant FUNCT_TYPE_BAL				  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000110";
	constant FUNCT_TYPE_BEQ				  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000111";
	constant FUNCT_TYPE_BGEZ			  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"001000";
	constant FUNCT_TYPE_BGEZAL			  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"001001";
	constant FUNCT_TYPE_BGTZ			  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"001010";
	constant FUNCT_TYPE_BLEZ			  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"001011";
	constant FUNCT_TYPE_BLTZ			  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"001100";
	constant FUNCT_TYPE_BLTZAL			  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"001101";
	constant FUNCT_TYPE_BNE				  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"001110";
	-- Load/Store
	constant FUNCT_TYPE_LB				  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000001";
	constant FUNCT_TYPE_LBU				  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000010";
	constant FUNCT_TYPE_LH				  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000011";
	constant FUNCT_TYPE_LHU				  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000100";
	constant FUNCT_TYPE_LW				  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000101";
	constant FUNCT_TYPE_LWL				  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000110";
	constant FUNCT_TYPE_LWR				  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000111";
	constant FUNCT_TYPE_SB				  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"001000";
	constant FUNCT_TYPE_SH				  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"001001";
	constant FUNCT_TYPE_SW				  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"001010";
	constant FUNCT_TYPE_SWL				  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"001011";
	constant FUNCT_TYPE_SWR				  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"001100";

	constant FUNCT_TYPE_MTC0				  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000001";
	constant FUNCT_TYPE_MFC0				  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000010";
	constant FUNCT_TYPE_ERET				  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000011";

	--trap
	constant FUNCT_TYPE_TEQ				  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"100001";
	constant FUNCT_TYPE_TGE				  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"100010";
	constant FUNCT_TYPE_TGEU			  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"100011";
	constant FUNCT_TYPE_TLT				  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"100100";
	constant FUNCT_TYPE_TLTU			  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"100101";
	constant FUNCT_TYPE_TNE				  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"100110";

	constant FUNCT_TYPE_TEQI			  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"110111";
	constant FUNCT_TYPE_TGEI			  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"111000";
	constant FUNCT_TYPE_TGEIU			  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"111001";
	constant FUNCT_TYPE_TLTI			  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"111010";
	constant FUNCT_TYPE_TLTIU			  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"111011";
	constant FUNCT_TYPE_TNEI			  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"111100";

	--syscall
	constant FUNCT_TYPE_SYSCALL			  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000001";

	-- Introduction to the MIPS32 Architecture
	-- Table A-2 MIPS32 Encoding of the Opcode Field (bits 31..26)
	constant OP_SPECIAL  : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"000000";
	constant OP_REGIMM   : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"000001";
	constant OP_J        : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"000010"; -- J target                             To branch within the current 256 MB-aligned region
	constant OP_JAL      : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"000011"; -- JAL target                           To execute a procedure call within the current 256 MB-aligned region
	constant OP_BEQ      : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"000100"; -- BEQ rs, rt, offset                   if rs = rt then branch
	constant OP_BNE      : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"000101"; -- BNE rs, rt, offset                   if rs ï¿?? rt then branch
	constant OP_BLEZ     : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"000110"; -- BLEZ rs, offset                      if rs ï¿?? 0 then branch
	constant OP_BGTZ     : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"000111"; -- BGTZ rs, offset                      if rs > 0 then branch
	constant OP_ADDI     : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"001000"; -- ADDI rt, rs, immediate               rt ï¿?? rs + immediate
	constant OP_ADDIU    : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"001001"; -- ADDIU rt, rs, immediate              rt ï¿?? rs + immediate
	constant OP_SLTI     : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"001010"; -- SLTI rt, rs, immediate               rt ï¿?? (rs < immediate)
	constant OP_SLTIU    : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"001011"; -- SLTIU rt, rs, immediate              rt ï¿?? (rs < immediate)
	constant OP_ANDI     : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"001100"; -- ANDI rt, rs, immediate               rt ï¿?? rs AND immediate
	constant OP_ORI      : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"001101"; -- ORI rt, rs, immediate                rt ï¿?? rs or immediate
	constant OP_XORI     : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"001110"; -- XORI rt, rs, immediate               rt ï¿?? rs XOR immediate
	constant OP_LUI      : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"001111"; -- LUI rt, immediate                    rt ï¿?? immediate || 0^16

	constant OP_COP0     : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"010000";
	constant OP_COP1     : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"010001";
	constant OP_COP2     : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"010010";
	constant OP_COP3     : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"010011";
	constant OP_BEQL     : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"010100"; -- BEQL rs, rt, offset                  if rs = rt then branch_likely
	constant OP_BNEL     : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"010101"; -- BNEL rs, rt, offset                  if rs ï¿?? rt then branch_likely
	constant OP_BLEZL    : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"010110"; -- BLEZL rs, rt, offset                 if rs ï¿?? 0 then branch_likely
	constant OP_BGTZL    : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"010111"; -- BGTZL rs, rt, offset                 if rs > 0 then branch_likely
	constant OP_SPECIAL2 : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"011100";
	constant OP_JALX     : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"011101";
	constant OP_LB       : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"100000"; -- LB rt, offset(base)                  rt ï¿?? memory[base+offset]
	constant OP_LH       : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"100001"; -- LH rt, offset(base)                  rt ï¿?? memory[base+offset]
	constant OP_LWL      : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"100010"; -- LWL rt, offset(base)                 rt ï¿?? rt MERGE memory[base+offset]
	constant OP_LW       : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"100011"; -- LW rt, offset(base)                  rt ï¿?? memory[base+offset]
	constant OP_LBU      : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"100100"; -- LBU rt, offset(base)                 rt ï¿?? memory[base+offset]
	constant OP_LHU      : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"100101"; -- LHU rt, offset(base)                 rt ï¿?? memory[base+offset]
	constant OP_LWR      : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"100110"; -- LWR rt, offset(base)                 rt ï¿?? rt MERGE memory[base+offset]
	constant OP_SB       : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"101000"; -- SB rt, offset(base)                  memory[base+offset] ï¿?? rt
	constant OP_SH       : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"101001"; -- SH rt, offset(base)                  memory[base+offset] ï¿?? rt
	constant OP_SWL      : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"101010"; -- SWL rt, offset(base)                 memory[base+offset] ï¿?? rt
	constant OP_SW       : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"101011"; -- SW rt, offset(base)                  memory[base+offset] ï¿?? rt
	constant OP_SWR      : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"101110"; -- SWR rt, offset(base)                 memory[base+offset] ï¿?? rt
	constant OP_CACHE    : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"101111";
	constant OP_LL       : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"110000";
	constant OP_LWC1     : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"110001";
	constant OP_LWC2     : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"110010";
	constant OP_PREF     : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"110011";
	constant OP_LDC1     : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"110101";
	constant OP_LDC2     : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"110110";
	constant OP_SC       : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"111000";
	constant OP_SWC1     : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"111001";
	constant OP_SWC2     : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"111010";
	constant OP_SDC1     : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"111101";
	constant OP_SDC2     : STD_LOGIC_VECTOR(OP_LEN - 1 downto 0) := b"111110";

	-- Introduction to the MIPS32 Architecture
	-- Table A-3 MIPS32 SPECIAL Opcode Encoding of Function Field (bits 5..0)
	constant FUNCT_SLL     : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000000"; -- SLL $rd, $rt, imm        rd é–??? rt << sa
	constant FUNCT_MOVCI   : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000001";
	constant FUNCT_SRL     : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000010"; -- SRL rd, rt, sa           rd é–??? rt >> sa (logical)
	constant FUNCT_SRA     : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000011"; -- SRA rd, rt, sa           rd é–??? rt >> sa (arithmatic)
	constant FUNCT_SLLV    : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000100"; -- SLLV rd, rt, rs          rd é–??? rt << rs
	constant FUNCT_SRLV    : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000110"; -- SRLV rd, rt, rs          rd é–??? rt >> rs (logical)
	constant FUNCT_SRAV    : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000111"; -- SRAV rd, rt, rs          rd é–??? rt >> rs (arithmetic)
	constant FUNCT_JR      : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"001000"; -- JR rs                    PC é–??? rs
	constant FUNCT_JALR    : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"001001"; -- JALR (rd, = 31) rs       rd é–??? return_addr, PC é–??? rs
	constant FUNCT_MOVZ    : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"001010"; -- MOVZ rd, rs, rt          if rt = 0 then rd é–??? rs
	constant FUNCT_MOVN    : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"001011"; -- MOVN rd, rs, rt          if rt é–??? 0 then rd é–??? rs
	constant FUNCT_SYSCALL : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"001100"; -- SYSCALL                  A system call exception occurs
	constant FUNCT_BREAK   : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"001101"; -- BREAK                    A breakpoint exception occurs
	constant FUNCT_SYNC    : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"001111"; -- SYNC (stype = 0 implied) To order loads and stores.
	constant FUNCT_MFHI    : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"010000"; -- MFHI rd                  rd é–??? HI
	constant FUNCT_MTHI    : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"010001"; -- MTHI rs                  HI é–??? rs
	constant FUNCT_MFLO    : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"010010"; -- MFLO rd                  rd é–??? LO
	constant FUNCT_MTLO    : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"010011"; -- MTLO rs                  LO é–??? rs
	constant FUNCT_MULT    : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"011000"; -- MULT rs, rt              (LO, HI) é–??? rs é‘?? rt
	constant FUNCT_MULTU   : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"011001"; -- MULTU rs, rt             (LO, HI) é–??? rs é‘?? rt
	constant FUNCT_DIV     : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"011010"; -- DIV rs, rt               (LO, HI) é–??? rs / rt
	constant FUNCT_DIVU    : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"011011"; -- DIVU rs, rt              (LO, HI) é–??? rs / rt
	constant FUNCT_ADD     : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"100000"; -- ADD rd, rs, rt           rd é–??? rs + rt
	constant FUNCT_ADDU    : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"100001"; -- ADDU rd, rs, rt          rd é–??? rs + rt
	constant FUNCT_SUB     : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"100010"; -- SUB rd, rs, rt           rd é–??? rs - rt
	constant FUNCT_SUBU    : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"100011"; -- SUBU rd, rs, rt          rd é–??? rs - rt
	constant FUNCT_AND     : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"100100"; -- AND rd, rs, rt           rd é–??? rs AND rt
	constant FUNCT_OR      : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"100101"; -- OR rd, rs, rt            rd é–??? rs or rt
	constant FUNCT_XOR     : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"100110"; -- XOR rd, rs, rt           rd é–??? rs XOR rt
	constant FUNCT_NOR     : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"100111"; -- NOR rd, rs, rt           rd é–??? rs NOR rt
	constant FUNCT_SLT     : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"101010"; -- SLT rd, rs, rt           rd é–??? (rs < rt)
	constant FUNCT_SLTU    : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"101011"; -- SLTU rd, rs, rt          rd é–??? (rs < rt)
	constant FUNCT_TGE     : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"110000"; -- TGE rs, rt               if rs é–??? rt then Trap
	constant FUNCT_TGEU    : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"110001"; -- TGEU rs, rt              if rs é–??? rt then Trap
	constant FUNCT_TLT     : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"110010"; -- TLT rs, rt               if rs < rt then Trap
	constant FUNCT_TLTU    : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"110011"; -- TLTU rs, rt              if rs < rt then Trap
	constant FUNCT_TEQ     : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"110100"; -- TEQ rs, rt               if rs = rt then Trap
	constant FUNCT_TNE     : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"110110"; -- TNE rs, rt               if rs é–??? rt then Trap
	constant FUNCT_ERET    : STD_Logic_vector(FUNCT_LEN - 1 downto 0) := b"011000";
	-- mfc0 mtc0
	constant RS_MTC0    : STD_LOGIC_VECTOR(REG_ADDR_LEN - 1 downto 0) := b"00100";
	constant RS_MFC0    : STD_LOGIC_VECTOR(REG_ADDR_LEN - 1 downto 0) := b"00000";

	-- Introduction to the MIPS32 Architecture
	-- Table A-4 MIPS32 REGIMM Encoding of rt Field (bits 20..16)
	constant RT_BLTZ    : STD_LOGIC_VECTOR(REG_ADDR_LEN - 1 downto 0) := b"00000";
	constant RT_BGEZ    : STD_LOGIC_VECTOR(REG_ADDR_LEN - 1 downto 0) := b"00001";
	constant RT_BLTZL   : STD_LOGIC_VECTOR(REG_ADDR_LEN - 1 downto 0) := b"00010";
	constant RT_BGEZL   : STD_LOGIC_VECTOR(REG_ADDR_LEN - 1 downto 0) := b"00011";
	constant RT_TGEI    : STD_LOGIC_VECTOR(REG_ADDR_LEN - 1 downto 0) := b"01000";
	constant RT_TGEIU   : STD_LOGIC_VECTOR(REG_ADDR_LEN - 1 downto 0) := b"01001";
	constant RT_TLTI    : STD_LOGIC_VECTOR(REG_ADDR_LEN - 1 downto 0) := b"01010";
	constant RT_TLTIU   : STD_LOGIC_VECTOR(REG_ADDR_LEN - 1 downto 0) := b"01011";
	constant RT_TEQI    : STD_LOGIC_VECTOR(REG_ADDR_LEN - 1 downto 0) := b"01100";
	constant RT_TNEI    : STD_LOGIC_VECTOR(REG_ADDR_LEN - 1 downto 0) := b"01110";
	constant RT_BLTZAL  : STD_LOGIC_VECTOR(REG_ADDR_LEN - 1 downto 0) := b"10000";
	constant RT_BGEZAL  : STD_LOGIC_VECTOR(REG_ADDR_LEN - 1 downto 0) := b"10001";
	constant RT_BLTZALL : STD_LOGIC_VECTOR(REG_ADDR_LEN - 1 downto 0) := b"10010";
	constant RT_BGEZALL : STD_LOGIC_VECTOR(REG_ADDR_LEN - 1 downto 0) := b"10011";

	-- Introduction to the MIPS32 Architecture
	-- Table A-5 MIPS32 SPECIAL2 Encoding of Function Field (bits 5..0)
	constant FUNCT_MADD  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000000";	-- MADD rs, rt              (LO,HI) ï¿?? (rs x rt) + (LO,HI)
	constant FUNCT_MADDU : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000001";	-- MADDU rs, rt             (LO,HI) ï¿?? (rs x rt) + (LO,HI)
	constant FUNCT_MUL   : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000010";	-- MUL rd, rs, rt           rd ï¿?? rs Ã— rt
	constant FUNCT_MSUB  : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000100";	-- MSUB rs, rt              (LO,HI) ï¿?? (rs x rt) - (LO,HI)
	constant FUNCT_MSUBU : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"000101";	-- MSUBU rs, rt             (LO,HI) ï¿?? (rs x rt) - (LO,HI)
	constant FUNCT_CLZ   : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"100000";	-- CLZ rd, rs               rd ï¿?? count_leading_zeros rs
	constant FUNCT_CLO   : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"100001";	-- CLO rd, rs               rd ï¿?? count_leading_ones rs
	constant FUNCT_SDBBP : STD_LOGIC_VECTOR(FUNCT_LEN - 1 downto 0) := b"111111";

	-- Introduction to the MIPS32 Architecture
	-- Table A-6 MIPS32 MOVCI Encoding of tf Bit (bit 16)
	constant TF_MOVF : STD_LOGIC := '0';
	constant TF_MOVT : STD_LOGIC := '1';
	
	constant STATE_LEN : integer := 2;
	constant STATE_IDLE : STD_LOGIC_VECTOR(STATE_LEN - 1 downto 0) := b"00";
	constant STATE_DATA : STD_LOGIC_VECTOR(STATE_LEN - 1 downto 0) := b"01";
	constant STATE_INST : STD_LOGIC_VECTOR(STATE_LEN - 1 downto 0) := b"10";
	constant STATE_DEBUG : STD_LOGIC_VECTOR(STATE_LEN - 1 downto 0) := b"11";
	constant CE_ENABLE : STD_LOGIC := '1';
	constant CE_DISABLE : STD_LOGIC := '0';
	constant ACK : STD_LOGIC := '1';
	constant ACK_NOT : STD_LOGIC := '0';
	constant HIGH_Z : STD_LOGIC_VECTOR(DATA_LEN - 1 downto 0) := x"ZZZZZZZZ";
	
	constant RAM_ADDR_LEN : integer := 20;
	constant SRAM_STATE_LEN : integer := 2;
	constant SRAM_IDLE : STD_LOGIC_VECTOR(SRAM_STATE_LEN - 1 downto 0) := b"00";
	constant SRAM_WRITE : STD_LOGIC_VECTOR(SRAM_STATE_LEN - 1 downto 0) := b"01";
	constant SRAM_READ : STD_LOGIC_VECTOR(SRAM_STATE_LEN - 1 downto 0) := b"10";
	constant SRAM_BYTE_CHOOSE_NOT : STD_LOGIC_VECTOR(BYTE_LEN - 1 downto 0) := b"11111111";
    constant SRAM_BYTE_CHOOSE : STD_LOGIC_VECTOR(BYTE_LEN - 1 downto 0) := b"00000000";
    constant SRAM_BYTE_HIGH_Z : STD_LOGIC_VECTOR(BYTE_LEN - 1 downto 0) := b"ZZZZZZZZ";
    constant SRAM_WORD_HIGH_Z : STD_LOGIC_VECTOR(WORD_LEN - 1 downto 0) := b"ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
    constant BYTE_SEL : STD_LOGIC := '1';
    constant BYTE_SEL_NOT : STD_LOGIC := '0';
    constant WORD_SEL : STD_LOGIC_VECTOR(1 downto 0) := b"11";
    constant WORD_SEL_NOT : STD_LOGIC_VECTOR(1 downto 0) := b"00";
    
    constant SERIAL_STATE_LEN : integer := 2;
    constant SERIAL_IDLE : STD_LOGIC_VECTOR(SERIAL_STATE_LEN - 1 downto 0) := b"00";
    constant SERIAL_READ : STD_LOGIC_VECTOR(SERIAL_STATE_LEN - 1 downto 0) := b"01";
    constant SERIAL_WRITE : STD_LOGIC_VECTOR(SERIAL_STATE_LEN - 1 downto 0) := b"10";
    
    constant TYPE_LEN : integer := 3;
 --s   constant TYPE_NULL : STD_LOGIC_VECTOR(TYPE_LEN - 1 downto 0) := b"000";
    constant TYPE_BASE_RAM : STD_LOGIC_VECTOR(TYPE_LEN - 1 downto 0) := b"001";
--    constant TYPE_EXTEND_RAM : STD_LOGIC_VECTOR(TYPE_LEN - 1 downto 0) := b"010";
    constant TYPE_LED : STD_LOGIC_VECTOR(TYPE_LEN - 1 downto 0) := b"011";
    constant TYPE_NUM : STD_LOGIC_VECTOR(TYPE_LEN - 1 downto 0) := b"100";
    constant TYPE_SERIAL : STD_LOGIC_VECTOR(TYPE_LEN - 1 downto 0) := b"101";
    
    constant BASE_RAM_ADDR_MIN : STD_LOGIC_VECTOR(ADDR_LEN - 1 downto 0) := x"80000000";
    constant BASE_RAM_ADDR_MAX : STD_LOGIC_VECTOR(ADDR_LEN - 1 downto 0) := x"803FFFFF";
    constant EXTEND_RAM_ADDR_MIN : STD_LOGIC_VECTOR(ADDR_LEN - 1 downto 0) := x"80400000";
    constant EXTEND_RAM_ADDR_MAX : STD_LOGIC_VECTOR(ADDR_LEN - 1 downto 0) := x"807FFFFF";
    constant LED_ADDR : STD_LOGIC_VECTOR(ADDR_LEN - 1 downto 0) := x"bfd0f000"; -- For test
    constant NUM_ADDR : STD_LOGIC_VECTOR(ADDR_LEN - 1 downto 0) := x"bfd0f010"; -- For test
    constant SERIAL_ADDR : STD_LOGIC_VECTOR(ADDR_LEN - 1 downto 0) := x"BFD003F8";

	-- constant for cp0
	constant INTERRUPT_ASSERT      : STD_LOGIC := '1';
	constant INTERRUPT_NOT_ASSERT      : STD_LOGIC := '1';
	--reg status
	constant STATUS_CU_CP0 : STD_LOGIC_VECTOR(3 downto 0) := b"0001";


	--reg 

	constant CP0_REG_COUNT :   STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0) := b"01001"; --é™îˆî‡°é?
	constant CP0_REG_COMPARE :   STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0 ) := b"01011";      --é™îˆî‡°é?
	constant CP0_REG_STATUS  :  STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0) := b"01100";       --é™îˆî‡°é?
	constant CP0_REG_CAUSE  :  STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0) := b"01101";      --é™î‡î‡?
	constant CP0_REG_EPC :   STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0) := b"01110"     ;     --é™îˆî‡°é?
	constant CP0_REG_PrId   : STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0) := b"01111"     ;    --é™î‡î‡?
	constant CP0_REG_CONFIG  :  STD_LOGIC_VECTOR(REG_ADDR_LEN-1 downto 0) := b"10000"    ;   --é™î‡î‡?

	constant STATUS_EXL_INDEX : integer := 1;
	constant STATUS_IE_INDEX  : integer := 0;
	constant CAUSE_BD_INDEX : integer := 31;

	constant EXCEPT_TYPE_INTERRUPT : STD_LOGIC_VECTOR(EXCEPT_TYPE_LEN-1 downto 0) := x"00000001";
	constant EXCEPT_TYPE_SYSCALL   : STD_LOGIC_VECTOR(EXCEPT_TYPE_LEN-1 downto 0) := x"00000008";
	constant EXCEPT_TYPE_INST_INVALID : STD_LOGIC_VECTOR(EXCEPT_TYPE_LEN-1 downto 0) := x"0000000a";
	constant EXCEPT_TYPE_TRAP	   : STD_LOGIC_VECTOR(EXCEPT_TYPE_LEN-1 downto 0) := x"0000000d";
	constant EXCEPT_TYPE_OVERFLOW  : STD_LOGIC_VECTOR(EXCEPT_TYPE_LEN-1 downto 0) := x"0000000c";
	constant EXCEPT_TYPE_ERET      : STD_LOGIC_VECTOR(EXCEPT_TYPE_LEN-1 downto 0) := x"0000000e";
	
	--cause
	constant EXCCODE_INTERRUPT : STD_LOGIC_VECTOR(4 downto 0) := b"00000";
	constant EXCCODE_SYSCALL   : STD_LOGIC_VECTOR(4 downto 0) := b"01000";
	constant EXCCODE_INST_INVALID : STD_LOGIC_VECTOR(4 downto 0) := b"01010";
	constant EXCCODE_TRAP	   : STD_LOGIC_VECTOR(4 downto 0) := b"01101";
	constant EXCCODE_OVERFLOW  : STD_LOGIC_VECTOR(4 downto 0) := b"01100";

	constant EXCEPT_HANDLE_ADDRESS: STD_LOGIC_VECTOR(INST_ADDR_LEN-1 downto 0) := x"80001180";
    
	function count_leading(vector : STD_LOGIC_VECTOR; b : STD_LOGIC) return natural;

	function count_leading_ones(vector : STD_LOGIC_VECTOR) return natural;

	function count_leading_zeros(vector : STD_LOGIC_VECTOR) return natural;
		
	function sign_extend(vector: STD_LOGIC_VECTOR; newLen: integer) return STD_LOGIC_VECTOR;
		
	function zero_extend(vector: STD_LOGIC_VECTOR; newLen: integer) return STD_LOGIC_VECTOR;
    
    function reverse_vector(vector: STD_LOGIC_VECTOR) return STD_LOGIC_VECTOR;

end INCLUDE;

package body INCLUDE is
	-- Count leading
	function count_leading(vector : STD_LOGIC_VECTOR; b : STD_LOGIC) return natural is
		variable x     : natural;
		variable y     : natural;
		variable upper : STD_LOGIC_VECTOR(vector'length / 2 - 1 downto 0);
		variable lower : STD_LOGIC_VECTOR(vector'length / 2 - 1 downto 0);
	begin
		if vector'length = 1 then
			if vector(0) = b then
				return 1;
			else
				return 0;
			end if;
		end if;
		-- report("Bit width of vector is " & integer'image(vector'length));
		upper := vector(vector'length - 1 downto vector'length / 2);
		lower := vector(vector'length / 2 - 1 downto 0);
		x     := count_leading(upper, b);
		if x = vector'length / 2 then
			y := count_leading(lower, b);
			return x + y;
		else
			return x;
		end if;
	end function count_leading;

	function count_leading_ones(vector : STD_LOGIC_VECTOR) return natural is
	begin
		return count_leading(vector, '1');
	end function count_leading_ones;

	function count_leading_zeros(vector : STD_LOGIC_VECTOR) return natural is
	begin
		return count_leading(vector, '0');
	end function count_leading_zeros;

	function sign_extend(vector: STD_LOGIC_VECTOR; newLen: integer) return STD_LOGIC_VECTOR is
		variable extended: STD_LOGIC_VECTOR(newLen-1 downto 0);
		variable bit: STD_LOGIC;
	begin
		if newLen <= vector'length then
			return vector(newLen-1 downto 0);
		end if;
		bit := vector(vector'high);  -- æ³¨æ„è¿™é‡Œçš„è¯­æ³•ï¼Œå¦‚æžœç›´æŽ¥å†™vector(vector'length-1)ä¼šæŒ‚æŽ‰ã?‚ã??
		extended(newLen-1 downto vector'length) := (others => bit);
        extended(vector'length-1 downto 0) := vector;  -- sign extend vector
        return extended;
	end function sign_extend;
	
	function zero_extend(vector: STD_LOGIC_VECTOR; newLen: integer) return STD_LOGIC_VECTOR is
		variable extended: STD_LOGIC_VECTOR(newLen-1 downto 0);
	begin
		if newLen <= vector'length then
			return vector(newLen-1 downto 0);
		end if;
		extended(newLen-1 downto vector'length) := (others => '0');
        extended(vector'length-1 downto 0) := vector;  -- sign extend vector
        return extended;
	end function zero_extend;
	
	function reverse_vector(vector: in STD_LOGIC_VECTOR) return STD_LOGIC_VECTOR is
      variable result: STD_LOGIC_VECTOR(vector'RANGE);
      variable block_size: integer := vector'length / 4;
    begin
        result(block_size * 4 - 1 downto block_size * 3) := vector(block_size - 1 downto 0);
        result(block_size * 3 - 1 downto block_size * 2) := vector(block_size * 2 - 1 downto block_size);
        result(block_size * 2 - 1 downto block_size) := vector(block_size * 3 - 1 downto block_size * 2);
        result(block_size - 1 downto 0) := vector(block_size * 4 - 1 downto block_size * 3);
        return result;
    end function reverse_vector;
	
end INCLUDE;
