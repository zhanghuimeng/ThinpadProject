-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
-- Date        : Mon Nov 20 14:30:45 2017
-- Host        : zhanghuimeng-ThinkPad-T430 running 64-bit Ubuntu 16.04.3 LTS
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /home/zhanghuimeng/Computer_Architecture/ThinpadProject/ThinpadProject.sim/sim_1/synth/func/MIPS_CPU_min_sopc_testbench_func_synth.vhd
-- Design      : MIPS_CPU
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PC is
  port (
    Q : out STD_LOGIC_VECTOR ( 29 downto 0 );
    rom_en_o_OBUF : out STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC
  );
end PC;

architecture STRUCTURE of PC is
  signal clear : STD_LOGIC;
  signal en_o_i_1_n_0 : STD_LOGIC;
  signal \pc[10]_i_2_n_0\ : STD_LOGIC;
  signal \pc[10]_i_3_n_0\ : STD_LOGIC;
  signal \pc[10]_i_4_n_0\ : STD_LOGIC;
  signal \pc[10]_i_5_n_0\ : STD_LOGIC;
  signal \pc[14]_i_2_n_0\ : STD_LOGIC;
  signal \pc[14]_i_3_n_0\ : STD_LOGIC;
  signal \pc[14]_i_4_n_0\ : STD_LOGIC;
  signal \pc[14]_i_5_n_0\ : STD_LOGIC;
  signal \pc[18]_i_2_n_0\ : STD_LOGIC;
  signal \pc[18]_i_3_n_0\ : STD_LOGIC;
  signal \pc[18]_i_4_n_0\ : STD_LOGIC;
  signal \pc[18]_i_5_n_0\ : STD_LOGIC;
  signal \pc[22]_i_2_n_0\ : STD_LOGIC;
  signal \pc[22]_i_3_n_0\ : STD_LOGIC;
  signal \pc[22]_i_4_n_0\ : STD_LOGIC;
  signal \pc[22]_i_5_n_0\ : STD_LOGIC;
  signal \pc[26]_i_2_n_0\ : STD_LOGIC;
  signal \pc[26]_i_3_n_0\ : STD_LOGIC;
  signal \pc[26]_i_4_n_0\ : STD_LOGIC;
  signal \pc[26]_i_5_n_0\ : STD_LOGIC;
  signal \pc[2]_i_2_n_0\ : STD_LOGIC;
  signal \pc[2]_i_3_n_0\ : STD_LOGIC;
  signal \pc[2]_i_4_n_0\ : STD_LOGIC;
  signal \pc[2]_i_5_n_0\ : STD_LOGIC;
  signal \pc[30]_i_2_n_0\ : STD_LOGIC;
  signal \pc[30]_i_3_n_0\ : STD_LOGIC;
  signal \pc[6]_i_2_n_0\ : STD_LOGIC;
  signal \pc[6]_i_3_n_0\ : STD_LOGIC;
  signal \pc[6]_i_4_n_0\ : STD_LOGIC;
  signal \pc[6]_i_5_n_0\ : STD_LOGIC;
  signal pc_reg : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \pc_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \pc_reg[10]_i_1_n_1\ : STD_LOGIC;
  signal \pc_reg[10]_i_1_n_2\ : STD_LOGIC;
  signal \pc_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \pc_reg[10]_i_1_n_4\ : STD_LOGIC;
  signal \pc_reg[10]_i_1_n_5\ : STD_LOGIC;
  signal \pc_reg[10]_i_1_n_6\ : STD_LOGIC;
  signal \pc_reg[10]_i_1_n_7\ : STD_LOGIC;
  signal \pc_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \pc_reg[14]_i_1_n_1\ : STD_LOGIC;
  signal \pc_reg[14]_i_1_n_2\ : STD_LOGIC;
  signal \pc_reg[14]_i_1_n_3\ : STD_LOGIC;
  signal \pc_reg[14]_i_1_n_4\ : STD_LOGIC;
  signal \pc_reg[14]_i_1_n_5\ : STD_LOGIC;
  signal \pc_reg[14]_i_1_n_6\ : STD_LOGIC;
  signal \pc_reg[14]_i_1_n_7\ : STD_LOGIC;
  signal \pc_reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \pc_reg[18]_i_1_n_1\ : STD_LOGIC;
  signal \pc_reg[18]_i_1_n_2\ : STD_LOGIC;
  signal \pc_reg[18]_i_1_n_3\ : STD_LOGIC;
  signal \pc_reg[18]_i_1_n_4\ : STD_LOGIC;
  signal \pc_reg[18]_i_1_n_5\ : STD_LOGIC;
  signal \pc_reg[18]_i_1_n_6\ : STD_LOGIC;
  signal \pc_reg[18]_i_1_n_7\ : STD_LOGIC;
  signal \pc_reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \pc_reg[22]_i_1_n_1\ : STD_LOGIC;
  signal \pc_reg[22]_i_1_n_2\ : STD_LOGIC;
  signal \pc_reg[22]_i_1_n_3\ : STD_LOGIC;
  signal \pc_reg[22]_i_1_n_4\ : STD_LOGIC;
  signal \pc_reg[22]_i_1_n_5\ : STD_LOGIC;
  signal \pc_reg[22]_i_1_n_6\ : STD_LOGIC;
  signal \pc_reg[22]_i_1_n_7\ : STD_LOGIC;
  signal \pc_reg[26]_i_1_n_0\ : STD_LOGIC;
  signal \pc_reg[26]_i_1_n_1\ : STD_LOGIC;
  signal \pc_reg[26]_i_1_n_2\ : STD_LOGIC;
  signal \pc_reg[26]_i_1_n_3\ : STD_LOGIC;
  signal \pc_reg[26]_i_1_n_4\ : STD_LOGIC;
  signal \pc_reg[26]_i_1_n_5\ : STD_LOGIC;
  signal \pc_reg[26]_i_1_n_6\ : STD_LOGIC;
  signal \pc_reg[26]_i_1_n_7\ : STD_LOGIC;
  signal \pc_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \pc_reg[2]_i_1_n_1\ : STD_LOGIC;
  signal \pc_reg[2]_i_1_n_2\ : STD_LOGIC;
  signal \pc_reg[2]_i_1_n_3\ : STD_LOGIC;
  signal \pc_reg[2]_i_1_n_4\ : STD_LOGIC;
  signal \pc_reg[2]_i_1_n_5\ : STD_LOGIC;
  signal \pc_reg[2]_i_1_n_6\ : STD_LOGIC;
  signal \pc_reg[2]_i_1_n_7\ : STD_LOGIC;
  signal \pc_reg[30]_i_1_n_3\ : STD_LOGIC;
  signal \pc_reg[30]_i_1_n_6\ : STD_LOGIC;
  signal \pc_reg[30]_i_1_n_7\ : STD_LOGIC;
  signal \pc_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \pc_reg[6]_i_1_n_1\ : STD_LOGIC;
  signal \pc_reg[6]_i_1_n_2\ : STD_LOGIC;
  signal \pc_reg[6]_i_1_n_3\ : STD_LOGIC;
  signal \pc_reg[6]_i_1_n_4\ : STD_LOGIC;
  signal \pc_reg[6]_i_1_n_5\ : STD_LOGIC;
  signal \pc_reg[6]_i_1_n_6\ : STD_LOGIC;
  signal \pc_reg[6]_i_1_n_7\ : STD_LOGIC;
  signal \^rom_en_o_obuf\ : STD_LOGIC;
  signal \NLW_pc_reg[30]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_pc_reg[30]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
begin
  rom_en_o_OBUF <= \^rom_en_o_obuf\;
en_o_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_IBUF,
      O => en_o_i_1_n_0
    );
en_o_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => en_o_i_1_n_0,
      Q => \^rom_en_o_obuf\,
      R => '0'
    );
\pc[10]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pc_reg(13),
      O => \pc[10]_i_2_n_0\
    );
\pc[10]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pc_reg(12),
      O => \pc[10]_i_3_n_0\
    );
\pc[10]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pc_reg(11),
      O => \pc[10]_i_4_n_0\
    );
\pc[10]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pc_reg(10),
      O => \pc[10]_i_5_n_0\
    );
\pc[14]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pc_reg(17),
      O => \pc[14]_i_2_n_0\
    );
\pc[14]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pc_reg(16),
      O => \pc[14]_i_3_n_0\
    );
\pc[14]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pc_reg(15),
      O => \pc[14]_i_4_n_0\
    );
\pc[14]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pc_reg(14),
      O => \pc[14]_i_5_n_0\
    );
\pc[18]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pc_reg(21),
      O => \pc[18]_i_2_n_0\
    );
\pc[18]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pc_reg(20),
      O => \pc[18]_i_3_n_0\
    );
\pc[18]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pc_reg(19),
      O => \pc[18]_i_4_n_0\
    );
\pc[18]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pc_reg(18),
      O => \pc[18]_i_5_n_0\
    );
\pc[22]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pc_reg(25),
      O => \pc[22]_i_2_n_0\
    );
\pc[22]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pc_reg(24),
      O => \pc[22]_i_3_n_0\
    );
\pc[22]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pc_reg(23),
      O => \pc[22]_i_4_n_0\
    );
\pc[22]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pc_reg(22),
      O => \pc[22]_i_5_n_0\
    );
\pc[26]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pc_reg(29),
      O => \pc[26]_i_2_n_0\
    );
\pc[26]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pc_reg(28),
      O => \pc[26]_i_3_n_0\
    );
\pc[26]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pc_reg(27),
      O => \pc[26]_i_4_n_0\
    );
\pc[26]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pc_reg(26),
      O => \pc[26]_i_5_n_0\
    );
\pc[2]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pc_reg(5),
      O => \pc[2]_i_2_n_0\
    );
\pc[2]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pc_reg(4),
      O => \pc[2]_i_3_n_0\
    );
\pc[2]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pc_reg(3),
      O => \pc[2]_i_4_n_0\
    );
\pc[2]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pc_reg(2),
      O => \pc[2]_i_5_n_0\
    );
\pc[30]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pc_reg(31),
      O => \pc[30]_i_2_n_0\
    );
\pc[30]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pc_reg(30),
      O => \pc[30]_i_3_n_0\
    );
\pc[6]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pc_reg(9),
      O => \pc[6]_i_2_n_0\
    );
\pc[6]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pc_reg(8),
      O => \pc[6]_i_3_n_0\
    );
\pc[6]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pc_reg(7),
      O => \pc[6]_i_4_n_0\
    );
\pc[6]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pc_reg(6),
      O => \pc[6]_i_5_n_0\
    );
\pc_o[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^rom_en_o_obuf\,
      O => clear
    );
\pc_o_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pc_reg(10),
      Q => Q(8),
      R => clear
    );
\pc_o_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pc_reg(11),
      Q => Q(9),
      R => clear
    );
\pc_o_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pc_reg(12),
      Q => Q(10),
      R => clear
    );
\pc_o_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pc_reg(13),
      Q => Q(11),
      R => clear
    );
\pc_o_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pc_reg(14),
      Q => Q(12),
      R => clear
    );
\pc_o_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pc_reg(15),
      Q => Q(13),
      R => clear
    );
\pc_o_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pc_reg(16),
      Q => Q(14),
      R => clear
    );
\pc_o_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pc_reg(17),
      Q => Q(15),
      R => clear
    );
\pc_o_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pc_reg(18),
      Q => Q(16),
      R => clear
    );
\pc_o_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pc_reg(19),
      Q => Q(17),
      R => clear
    );
\pc_o_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pc_reg(20),
      Q => Q(18),
      R => clear
    );
\pc_o_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pc_reg(21),
      Q => Q(19),
      R => clear
    );
\pc_o_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pc_reg(22),
      Q => Q(20),
      R => clear
    );
\pc_o_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pc_reg(23),
      Q => Q(21),
      R => clear
    );
\pc_o_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pc_reg(24),
      Q => Q(22),
      R => clear
    );
\pc_o_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pc_reg(25),
      Q => Q(23),
      R => clear
    );
\pc_o_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pc_reg(26),
      Q => Q(24),
      R => clear
    );
\pc_o_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pc_reg(27),
      Q => Q(25),
      R => clear
    );
\pc_o_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pc_reg(28),
      Q => Q(26),
      R => clear
    );
\pc_o_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pc_reg(29),
      Q => Q(27),
      R => clear
    );
\pc_o_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pc_reg(2),
      Q => Q(0),
      R => clear
    );
\pc_o_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pc_reg(30),
      Q => Q(28),
      R => clear
    );
\pc_o_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pc_reg(31),
      Q => Q(29),
      R => clear
    );
\pc_o_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pc_reg(3),
      Q => Q(1),
      R => clear
    );
\pc_o_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pc_reg(4),
      Q => Q(2),
      R => clear
    );
\pc_o_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pc_reg(5),
      Q => Q(3),
      R => clear
    );
\pc_o_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pc_reg(6),
      Q => Q(4),
      R => clear
    );
\pc_o_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pc_reg(7),
      Q => Q(5),
      R => clear
    );
\pc_o_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pc_reg(8),
      Q => Q(6),
      R => clear
    );
\pc_o_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pc_reg(9),
      Q => Q(7),
      R => clear
    );
\pc_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \pc_reg[10]_i_1_n_7\,
      Q => pc_reg(10),
      R => clear
    );
\pc_reg[10]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pc_reg[6]_i_1_n_0\,
      CO(3) => \pc_reg[10]_i_1_n_0\,
      CO(2) => \pc_reg[10]_i_1_n_1\,
      CO(1) => \pc_reg[10]_i_1_n_2\,
      CO(0) => \pc_reg[10]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pc_reg[10]_i_1_n_4\,
      O(2) => \pc_reg[10]_i_1_n_5\,
      O(1) => \pc_reg[10]_i_1_n_6\,
      O(0) => \pc_reg[10]_i_1_n_7\,
      S(3) => \pc[10]_i_2_n_0\,
      S(2) => \pc[10]_i_3_n_0\,
      S(1) => \pc[10]_i_4_n_0\,
      S(0) => \pc[10]_i_5_n_0\
    );
\pc_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \pc_reg[10]_i_1_n_6\,
      Q => pc_reg(11),
      R => clear
    );
\pc_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \pc_reg[10]_i_1_n_5\,
      Q => pc_reg(12),
      R => clear
    );
\pc_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \pc_reg[10]_i_1_n_4\,
      Q => pc_reg(13),
      R => clear
    );
\pc_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \pc_reg[14]_i_1_n_7\,
      Q => pc_reg(14),
      R => clear
    );
\pc_reg[14]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pc_reg[10]_i_1_n_0\,
      CO(3) => \pc_reg[14]_i_1_n_0\,
      CO(2) => \pc_reg[14]_i_1_n_1\,
      CO(1) => \pc_reg[14]_i_1_n_2\,
      CO(0) => \pc_reg[14]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pc_reg[14]_i_1_n_4\,
      O(2) => \pc_reg[14]_i_1_n_5\,
      O(1) => \pc_reg[14]_i_1_n_6\,
      O(0) => \pc_reg[14]_i_1_n_7\,
      S(3) => \pc[14]_i_2_n_0\,
      S(2) => \pc[14]_i_3_n_0\,
      S(1) => \pc[14]_i_4_n_0\,
      S(0) => \pc[14]_i_5_n_0\
    );
\pc_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \pc_reg[14]_i_1_n_6\,
      Q => pc_reg(15),
      R => clear
    );
\pc_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \pc_reg[14]_i_1_n_5\,
      Q => pc_reg(16),
      R => clear
    );
\pc_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \pc_reg[14]_i_1_n_4\,
      Q => pc_reg(17),
      R => clear
    );
\pc_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \pc_reg[18]_i_1_n_7\,
      Q => pc_reg(18),
      R => clear
    );
\pc_reg[18]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pc_reg[14]_i_1_n_0\,
      CO(3) => \pc_reg[18]_i_1_n_0\,
      CO(2) => \pc_reg[18]_i_1_n_1\,
      CO(1) => \pc_reg[18]_i_1_n_2\,
      CO(0) => \pc_reg[18]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pc_reg[18]_i_1_n_4\,
      O(2) => \pc_reg[18]_i_1_n_5\,
      O(1) => \pc_reg[18]_i_1_n_6\,
      O(0) => \pc_reg[18]_i_1_n_7\,
      S(3) => \pc[18]_i_2_n_0\,
      S(2) => \pc[18]_i_3_n_0\,
      S(1) => \pc[18]_i_4_n_0\,
      S(0) => \pc[18]_i_5_n_0\
    );
\pc_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \pc_reg[18]_i_1_n_6\,
      Q => pc_reg(19),
      R => clear
    );
\pc_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \pc_reg[18]_i_1_n_5\,
      Q => pc_reg(20),
      R => clear
    );
\pc_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \pc_reg[18]_i_1_n_4\,
      Q => pc_reg(21),
      R => clear
    );
\pc_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \pc_reg[22]_i_1_n_7\,
      Q => pc_reg(22),
      R => clear
    );
\pc_reg[22]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pc_reg[18]_i_1_n_0\,
      CO(3) => \pc_reg[22]_i_1_n_0\,
      CO(2) => \pc_reg[22]_i_1_n_1\,
      CO(1) => \pc_reg[22]_i_1_n_2\,
      CO(0) => \pc_reg[22]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pc_reg[22]_i_1_n_4\,
      O(2) => \pc_reg[22]_i_1_n_5\,
      O(1) => \pc_reg[22]_i_1_n_6\,
      O(0) => \pc_reg[22]_i_1_n_7\,
      S(3) => \pc[22]_i_2_n_0\,
      S(2) => \pc[22]_i_3_n_0\,
      S(1) => \pc[22]_i_4_n_0\,
      S(0) => \pc[22]_i_5_n_0\
    );
\pc_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \pc_reg[22]_i_1_n_6\,
      Q => pc_reg(23),
      R => clear
    );
\pc_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \pc_reg[22]_i_1_n_5\,
      Q => pc_reg(24),
      R => clear
    );
\pc_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \pc_reg[22]_i_1_n_4\,
      Q => pc_reg(25),
      R => clear
    );
\pc_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \pc_reg[26]_i_1_n_7\,
      Q => pc_reg(26),
      R => clear
    );
\pc_reg[26]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pc_reg[22]_i_1_n_0\,
      CO(3) => \pc_reg[26]_i_1_n_0\,
      CO(2) => \pc_reg[26]_i_1_n_1\,
      CO(1) => \pc_reg[26]_i_1_n_2\,
      CO(0) => \pc_reg[26]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pc_reg[26]_i_1_n_4\,
      O(2) => \pc_reg[26]_i_1_n_5\,
      O(1) => \pc_reg[26]_i_1_n_6\,
      O(0) => \pc_reg[26]_i_1_n_7\,
      S(3) => \pc[26]_i_2_n_0\,
      S(2) => \pc[26]_i_3_n_0\,
      S(1) => \pc[26]_i_4_n_0\,
      S(0) => \pc[26]_i_5_n_0\
    );
\pc_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \pc_reg[26]_i_1_n_6\,
      Q => pc_reg(27),
      R => clear
    );
\pc_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \pc_reg[26]_i_1_n_5\,
      Q => pc_reg(28),
      R => clear
    );
\pc_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \pc_reg[26]_i_1_n_4\,
      Q => pc_reg(29),
      R => clear
    );
\pc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \pc_reg[2]_i_1_n_7\,
      Q => pc_reg(2),
      R => clear
    );
\pc_reg[2]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pc_reg[2]_i_1_n_0\,
      CO(2) => \pc_reg[2]_i_1_n_1\,
      CO(1) => \pc_reg[2]_i_1_n_2\,
      CO(0) => \pc_reg[2]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \pc_reg[2]_i_1_n_4\,
      O(2) => \pc_reg[2]_i_1_n_5\,
      O(1) => \pc_reg[2]_i_1_n_6\,
      O(0) => \pc_reg[2]_i_1_n_7\,
      S(3) => \pc[2]_i_2_n_0\,
      S(2) => \pc[2]_i_3_n_0\,
      S(1) => \pc[2]_i_4_n_0\,
      S(0) => \pc[2]_i_5_n_0\
    );
\pc_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \pc_reg[30]_i_1_n_7\,
      Q => pc_reg(30),
      R => clear
    );
\pc_reg[30]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pc_reg[26]_i_1_n_0\,
      CO(3 downto 1) => \NLW_pc_reg[30]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \pc_reg[30]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_pc_reg[30]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \pc_reg[30]_i_1_n_6\,
      O(0) => \pc_reg[30]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \pc[30]_i_2_n_0\,
      S(0) => \pc[30]_i_3_n_0\
    );
\pc_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \pc_reg[30]_i_1_n_6\,
      Q => pc_reg(31),
      R => clear
    );
\pc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \pc_reg[2]_i_1_n_6\,
      Q => pc_reg(3),
      R => clear
    );
\pc_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \pc_reg[2]_i_1_n_5\,
      Q => pc_reg(4),
      R => clear
    );
\pc_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \pc_reg[2]_i_1_n_4\,
      Q => pc_reg(5),
      R => clear
    );
\pc_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \pc_reg[6]_i_1_n_7\,
      Q => pc_reg(6),
      R => clear
    );
\pc_reg[6]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pc_reg[2]_i_1_n_0\,
      CO(3) => \pc_reg[6]_i_1_n_0\,
      CO(2) => \pc_reg[6]_i_1_n_1\,
      CO(1) => \pc_reg[6]_i_1_n_2\,
      CO(0) => \pc_reg[6]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pc_reg[6]_i_1_n_4\,
      O(2) => \pc_reg[6]_i_1_n_5\,
      O(1) => \pc_reg[6]_i_1_n_6\,
      O(0) => \pc_reg[6]_i_1_n_7\,
      S(3) => \pc[6]_i_2_n_0\,
      S(2) => \pc[6]_i_3_n_0\,
      S(1) => \pc[6]_i_4_n_0\,
      S(0) => \pc[6]_i_5_n_0\
    );
\pc_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \pc_reg[6]_i_1_n_6\,
      Q => pc_reg(7),
      R => clear
    );
\pc_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \pc_reg[6]_i_1_n_5\,
      Q => pc_reg(8),
      R => clear
    );
\pc_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \pc_reg[6]_i_1_n_4\,
      Q => pc_reg(9),
      R => clear
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MIPS_CPU is
  port (
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    inst_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rom_en_o : out STD_LOGIC;
    rom_addr_o : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of MIPS_CPU : entity is true;
end MIPS_CPU;

architecture STRUCTURE of MIPS_CPU is
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal rom_addr_o_OBUF : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal rom_en_o_OBUF : STD_LOGIC;
  signal rst_IBUF : STD_LOGIC;
begin
PC_0: entity work.PC
     port map (
      Q(29 downto 0) => rom_addr_o_OBUF(31 downto 2),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      rom_en_o_OBUF => rom_en_o_OBUF,
      rst_IBUF => rst_IBUF
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
\rom_addr_o_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rom_addr_o(0)
    );
\rom_addr_o_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => rom_addr_o_OBUF(10),
      O => rom_addr_o(10)
    );
\rom_addr_o_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => rom_addr_o_OBUF(11),
      O => rom_addr_o(11)
    );
\rom_addr_o_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => rom_addr_o_OBUF(12),
      O => rom_addr_o(12)
    );
\rom_addr_o_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => rom_addr_o_OBUF(13),
      O => rom_addr_o(13)
    );
\rom_addr_o_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => rom_addr_o_OBUF(14),
      O => rom_addr_o(14)
    );
\rom_addr_o_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => rom_addr_o_OBUF(15),
      O => rom_addr_o(15)
    );
\rom_addr_o_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => rom_addr_o_OBUF(16),
      O => rom_addr_o(16)
    );
\rom_addr_o_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => rom_addr_o_OBUF(17),
      O => rom_addr_o(17)
    );
\rom_addr_o_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => rom_addr_o_OBUF(18),
      O => rom_addr_o(18)
    );
\rom_addr_o_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => rom_addr_o_OBUF(19),
      O => rom_addr_o(19)
    );
\rom_addr_o_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => rom_addr_o(1)
    );
\rom_addr_o_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => rom_addr_o_OBUF(20),
      O => rom_addr_o(20)
    );
\rom_addr_o_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => rom_addr_o_OBUF(21),
      O => rom_addr_o(21)
    );
\rom_addr_o_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => rom_addr_o_OBUF(22),
      O => rom_addr_o(22)
    );
\rom_addr_o_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => rom_addr_o_OBUF(23),
      O => rom_addr_o(23)
    );
\rom_addr_o_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => rom_addr_o_OBUF(24),
      O => rom_addr_o(24)
    );
\rom_addr_o_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => rom_addr_o_OBUF(25),
      O => rom_addr_o(25)
    );
\rom_addr_o_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => rom_addr_o_OBUF(26),
      O => rom_addr_o(26)
    );
\rom_addr_o_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => rom_addr_o_OBUF(27),
      O => rom_addr_o(27)
    );
\rom_addr_o_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => rom_addr_o_OBUF(28),
      O => rom_addr_o(28)
    );
\rom_addr_o_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => rom_addr_o_OBUF(29),
      O => rom_addr_o(29)
    );
\rom_addr_o_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => rom_addr_o_OBUF(2),
      O => rom_addr_o(2)
    );
\rom_addr_o_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => rom_addr_o_OBUF(30),
      O => rom_addr_o(30)
    );
\rom_addr_o_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => rom_addr_o_OBUF(31),
      O => rom_addr_o(31)
    );
\rom_addr_o_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => rom_addr_o_OBUF(3),
      O => rom_addr_o(3)
    );
\rom_addr_o_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => rom_addr_o_OBUF(4),
      O => rom_addr_o(4)
    );
\rom_addr_o_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => rom_addr_o_OBUF(5),
      O => rom_addr_o(5)
    );
\rom_addr_o_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => rom_addr_o_OBUF(6),
      O => rom_addr_o(6)
    );
\rom_addr_o_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => rom_addr_o_OBUF(7),
      O => rom_addr_o(7)
    );
\rom_addr_o_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => rom_addr_o_OBUF(8),
      O => rom_addr_o(8)
    );
\rom_addr_o_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => rom_addr_o_OBUF(9),
      O => rom_addr_o(9)
    );
rom_en_o_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => rom_en_o_OBUF,
      O => rom_en_o
    );
rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => rst,
      O => rst_IBUF
    );
end STRUCTURE;
