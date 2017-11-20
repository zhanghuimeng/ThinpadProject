// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
// Date        : Mon Nov 20 14:31:21 2017
// Host        : zhanghuimeng-ThinkPad-T430 running 64-bit Ubuntu 16.04.3 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/zhanghuimeng/Computer_Architecture/ThinpadProject/ThinpadProject.sim/sim_1/synth/timing/MIPS_CPU_min_sopc_testbench_time_synth.v
// Design      : MIPS_CPU
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tfgg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module MIPS_CPU
   (rst,
    clk,
    inst_i,
    rom_en_o,
    rom_addr_o);
  input rst;
  input clk;
  input [31:0]inst_i;
  output rom_en_o;
  output [31:0]rom_addr_o;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [31:0]rom_addr_o;
  wire [31:2]rom_addr_o_OBUF;
  wire rom_en_o;
  wire rom_en_o_OBUF;
  wire rst;
  wire rst_IBUF;

initial begin
 $sdf_annotate("MIPS_CPU_min_sopc_testbench_time_synth.sdf",,,,"tool_control");
end
  PC PC_0
       (.Q(rom_addr_o_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .rom_en_o_OBUF(rom_en_o_OBUF),
        .rst_IBUF(rst_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF \rom_addr_o_OBUF[0]_inst 
       (.I(1'b0),
        .O(rom_addr_o[0]));
  OBUF \rom_addr_o_OBUF[10]_inst 
       (.I(rom_addr_o_OBUF[10]),
        .O(rom_addr_o[10]));
  OBUF \rom_addr_o_OBUF[11]_inst 
       (.I(rom_addr_o_OBUF[11]),
        .O(rom_addr_o[11]));
  OBUF \rom_addr_o_OBUF[12]_inst 
       (.I(rom_addr_o_OBUF[12]),
        .O(rom_addr_o[12]));
  OBUF \rom_addr_o_OBUF[13]_inst 
       (.I(rom_addr_o_OBUF[13]),
        .O(rom_addr_o[13]));
  OBUF \rom_addr_o_OBUF[14]_inst 
       (.I(rom_addr_o_OBUF[14]),
        .O(rom_addr_o[14]));
  OBUF \rom_addr_o_OBUF[15]_inst 
       (.I(rom_addr_o_OBUF[15]),
        .O(rom_addr_o[15]));
  OBUF \rom_addr_o_OBUF[16]_inst 
       (.I(rom_addr_o_OBUF[16]),
        .O(rom_addr_o[16]));
  OBUF \rom_addr_o_OBUF[17]_inst 
       (.I(rom_addr_o_OBUF[17]),
        .O(rom_addr_o[17]));
  OBUF \rom_addr_o_OBUF[18]_inst 
       (.I(rom_addr_o_OBUF[18]),
        .O(rom_addr_o[18]));
  OBUF \rom_addr_o_OBUF[19]_inst 
       (.I(rom_addr_o_OBUF[19]),
        .O(rom_addr_o[19]));
  OBUF \rom_addr_o_OBUF[1]_inst 
       (.I(1'b0),
        .O(rom_addr_o[1]));
  OBUF \rom_addr_o_OBUF[20]_inst 
       (.I(rom_addr_o_OBUF[20]),
        .O(rom_addr_o[20]));
  OBUF \rom_addr_o_OBUF[21]_inst 
       (.I(rom_addr_o_OBUF[21]),
        .O(rom_addr_o[21]));
  OBUF \rom_addr_o_OBUF[22]_inst 
       (.I(rom_addr_o_OBUF[22]),
        .O(rom_addr_o[22]));
  OBUF \rom_addr_o_OBUF[23]_inst 
       (.I(rom_addr_o_OBUF[23]),
        .O(rom_addr_o[23]));
  OBUF \rom_addr_o_OBUF[24]_inst 
       (.I(rom_addr_o_OBUF[24]),
        .O(rom_addr_o[24]));
  OBUF \rom_addr_o_OBUF[25]_inst 
       (.I(rom_addr_o_OBUF[25]),
        .O(rom_addr_o[25]));
  OBUF \rom_addr_o_OBUF[26]_inst 
       (.I(rom_addr_o_OBUF[26]),
        .O(rom_addr_o[26]));
  OBUF \rom_addr_o_OBUF[27]_inst 
       (.I(rom_addr_o_OBUF[27]),
        .O(rom_addr_o[27]));
  OBUF \rom_addr_o_OBUF[28]_inst 
       (.I(rom_addr_o_OBUF[28]),
        .O(rom_addr_o[28]));
  OBUF \rom_addr_o_OBUF[29]_inst 
       (.I(rom_addr_o_OBUF[29]),
        .O(rom_addr_o[29]));
  OBUF \rom_addr_o_OBUF[2]_inst 
       (.I(rom_addr_o_OBUF[2]),
        .O(rom_addr_o[2]));
  OBUF \rom_addr_o_OBUF[30]_inst 
       (.I(rom_addr_o_OBUF[30]),
        .O(rom_addr_o[30]));
  OBUF \rom_addr_o_OBUF[31]_inst 
       (.I(rom_addr_o_OBUF[31]),
        .O(rom_addr_o[31]));
  OBUF \rom_addr_o_OBUF[3]_inst 
       (.I(rom_addr_o_OBUF[3]),
        .O(rom_addr_o[3]));
  OBUF \rom_addr_o_OBUF[4]_inst 
       (.I(rom_addr_o_OBUF[4]),
        .O(rom_addr_o[4]));
  OBUF \rom_addr_o_OBUF[5]_inst 
       (.I(rom_addr_o_OBUF[5]),
        .O(rom_addr_o[5]));
  OBUF \rom_addr_o_OBUF[6]_inst 
       (.I(rom_addr_o_OBUF[6]),
        .O(rom_addr_o[6]));
  OBUF \rom_addr_o_OBUF[7]_inst 
       (.I(rom_addr_o_OBUF[7]),
        .O(rom_addr_o[7]));
  OBUF \rom_addr_o_OBUF[8]_inst 
       (.I(rom_addr_o_OBUF[8]),
        .O(rom_addr_o[8]));
  OBUF \rom_addr_o_OBUF[9]_inst 
       (.I(rom_addr_o_OBUF[9]),
        .O(rom_addr_o[9]));
  OBUF rom_en_o_OBUF_inst
       (.I(rom_en_o_OBUF),
        .O(rom_en_o));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
endmodule

module PC
   (Q,
    rom_en_o_OBUF,
    clk_IBUF_BUFG,
    rst_IBUF);
  output [29:0]Q;
  output rom_en_o_OBUF;
  input clk_IBUF_BUFG;
  input rst_IBUF;

  wire [29:0]Q;
  wire clear;
  wire clk_IBUF_BUFG;
  wire en_o_i_1_n_0;
  wire \pc[10]_i_2_n_0 ;
  wire \pc[10]_i_3_n_0 ;
  wire \pc[10]_i_4_n_0 ;
  wire \pc[10]_i_5_n_0 ;
  wire \pc[14]_i_2_n_0 ;
  wire \pc[14]_i_3_n_0 ;
  wire \pc[14]_i_4_n_0 ;
  wire \pc[14]_i_5_n_0 ;
  wire \pc[18]_i_2_n_0 ;
  wire \pc[18]_i_3_n_0 ;
  wire \pc[18]_i_4_n_0 ;
  wire \pc[18]_i_5_n_0 ;
  wire \pc[22]_i_2_n_0 ;
  wire \pc[22]_i_3_n_0 ;
  wire \pc[22]_i_4_n_0 ;
  wire \pc[22]_i_5_n_0 ;
  wire \pc[26]_i_2_n_0 ;
  wire \pc[26]_i_3_n_0 ;
  wire \pc[26]_i_4_n_0 ;
  wire \pc[26]_i_5_n_0 ;
  wire \pc[2]_i_2_n_0 ;
  wire \pc[2]_i_3_n_0 ;
  wire \pc[2]_i_4_n_0 ;
  wire \pc[2]_i_5_n_0 ;
  wire \pc[30]_i_2_n_0 ;
  wire \pc[30]_i_3_n_0 ;
  wire \pc[6]_i_2_n_0 ;
  wire \pc[6]_i_3_n_0 ;
  wire \pc[6]_i_4_n_0 ;
  wire \pc[6]_i_5_n_0 ;
  wire [31:2]pc_reg;
  wire \pc_reg[10]_i_1_n_0 ;
  wire \pc_reg[10]_i_1_n_1 ;
  wire \pc_reg[10]_i_1_n_2 ;
  wire \pc_reg[10]_i_1_n_3 ;
  wire \pc_reg[10]_i_1_n_4 ;
  wire \pc_reg[10]_i_1_n_5 ;
  wire \pc_reg[10]_i_1_n_6 ;
  wire \pc_reg[10]_i_1_n_7 ;
  wire \pc_reg[14]_i_1_n_0 ;
  wire \pc_reg[14]_i_1_n_1 ;
  wire \pc_reg[14]_i_1_n_2 ;
  wire \pc_reg[14]_i_1_n_3 ;
  wire \pc_reg[14]_i_1_n_4 ;
  wire \pc_reg[14]_i_1_n_5 ;
  wire \pc_reg[14]_i_1_n_6 ;
  wire \pc_reg[14]_i_1_n_7 ;
  wire \pc_reg[18]_i_1_n_0 ;
  wire \pc_reg[18]_i_1_n_1 ;
  wire \pc_reg[18]_i_1_n_2 ;
  wire \pc_reg[18]_i_1_n_3 ;
  wire \pc_reg[18]_i_1_n_4 ;
  wire \pc_reg[18]_i_1_n_5 ;
  wire \pc_reg[18]_i_1_n_6 ;
  wire \pc_reg[18]_i_1_n_7 ;
  wire \pc_reg[22]_i_1_n_0 ;
  wire \pc_reg[22]_i_1_n_1 ;
  wire \pc_reg[22]_i_1_n_2 ;
  wire \pc_reg[22]_i_1_n_3 ;
  wire \pc_reg[22]_i_1_n_4 ;
  wire \pc_reg[22]_i_1_n_5 ;
  wire \pc_reg[22]_i_1_n_6 ;
  wire \pc_reg[22]_i_1_n_7 ;
  wire \pc_reg[26]_i_1_n_0 ;
  wire \pc_reg[26]_i_1_n_1 ;
  wire \pc_reg[26]_i_1_n_2 ;
  wire \pc_reg[26]_i_1_n_3 ;
  wire \pc_reg[26]_i_1_n_4 ;
  wire \pc_reg[26]_i_1_n_5 ;
  wire \pc_reg[26]_i_1_n_6 ;
  wire \pc_reg[26]_i_1_n_7 ;
  wire \pc_reg[2]_i_1_n_0 ;
  wire \pc_reg[2]_i_1_n_1 ;
  wire \pc_reg[2]_i_1_n_2 ;
  wire \pc_reg[2]_i_1_n_3 ;
  wire \pc_reg[2]_i_1_n_4 ;
  wire \pc_reg[2]_i_1_n_5 ;
  wire \pc_reg[2]_i_1_n_6 ;
  wire \pc_reg[2]_i_1_n_7 ;
  wire \pc_reg[30]_i_1_n_3 ;
  wire \pc_reg[30]_i_1_n_6 ;
  wire \pc_reg[30]_i_1_n_7 ;
  wire \pc_reg[6]_i_1_n_0 ;
  wire \pc_reg[6]_i_1_n_1 ;
  wire \pc_reg[6]_i_1_n_2 ;
  wire \pc_reg[6]_i_1_n_3 ;
  wire \pc_reg[6]_i_1_n_4 ;
  wire \pc_reg[6]_i_1_n_5 ;
  wire \pc_reg[6]_i_1_n_6 ;
  wire \pc_reg[6]_i_1_n_7 ;
  wire rom_en_o_OBUF;
  wire rst_IBUF;
  wire [3:1]\NLW_pc_reg[30]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_pc_reg[30]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    en_o_i_1
       (.I0(rst_IBUF),
        .O(en_o_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    en_o_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(en_o_i_1_n_0),
        .Q(rom_en_o_OBUF),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    \pc[10]_i_2 
       (.I0(pc_reg[13]),
        .O(\pc[10]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \pc[10]_i_3 
       (.I0(pc_reg[12]),
        .O(\pc[10]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \pc[10]_i_4 
       (.I0(pc_reg[11]),
        .O(\pc[10]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \pc[10]_i_5 
       (.I0(pc_reg[10]),
        .O(\pc[10]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \pc[14]_i_2 
       (.I0(pc_reg[17]),
        .O(\pc[14]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \pc[14]_i_3 
       (.I0(pc_reg[16]),
        .O(\pc[14]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \pc[14]_i_4 
       (.I0(pc_reg[15]),
        .O(\pc[14]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \pc[14]_i_5 
       (.I0(pc_reg[14]),
        .O(\pc[14]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \pc[18]_i_2 
       (.I0(pc_reg[21]),
        .O(\pc[18]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \pc[18]_i_3 
       (.I0(pc_reg[20]),
        .O(\pc[18]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \pc[18]_i_4 
       (.I0(pc_reg[19]),
        .O(\pc[18]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \pc[18]_i_5 
       (.I0(pc_reg[18]),
        .O(\pc[18]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \pc[22]_i_2 
       (.I0(pc_reg[25]),
        .O(\pc[22]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \pc[22]_i_3 
       (.I0(pc_reg[24]),
        .O(\pc[22]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \pc[22]_i_4 
       (.I0(pc_reg[23]),
        .O(\pc[22]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \pc[22]_i_5 
       (.I0(pc_reg[22]),
        .O(\pc[22]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \pc[26]_i_2 
       (.I0(pc_reg[29]),
        .O(\pc[26]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \pc[26]_i_3 
       (.I0(pc_reg[28]),
        .O(\pc[26]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \pc[26]_i_4 
       (.I0(pc_reg[27]),
        .O(\pc[26]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \pc[26]_i_5 
       (.I0(pc_reg[26]),
        .O(\pc[26]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \pc[2]_i_2 
       (.I0(pc_reg[5]),
        .O(\pc[2]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \pc[2]_i_3 
       (.I0(pc_reg[4]),
        .O(\pc[2]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \pc[2]_i_4 
       (.I0(pc_reg[3]),
        .O(\pc[2]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pc[2]_i_5 
       (.I0(pc_reg[2]),
        .O(\pc[2]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \pc[30]_i_2 
       (.I0(pc_reg[31]),
        .O(\pc[30]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \pc[30]_i_3 
       (.I0(pc_reg[30]),
        .O(\pc[30]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \pc[6]_i_2 
       (.I0(pc_reg[9]),
        .O(\pc[6]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \pc[6]_i_3 
       (.I0(pc_reg[8]),
        .O(\pc[6]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \pc[6]_i_4 
       (.I0(pc_reg[7]),
        .O(\pc[6]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \pc[6]_i_5 
       (.I0(pc_reg[6]),
        .O(\pc[6]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pc_o[31]_i_1 
       (.I0(rom_en_o_OBUF),
        .O(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_o_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pc_reg[10]),
        .Q(Q[8]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_o_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pc_reg[11]),
        .Q(Q[9]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_o_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pc_reg[12]),
        .Q(Q[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_o_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pc_reg[13]),
        .Q(Q[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_o_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pc_reg[14]),
        .Q(Q[12]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_o_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pc_reg[15]),
        .Q(Q[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_o_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pc_reg[16]),
        .Q(Q[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_o_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pc_reg[17]),
        .Q(Q[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_o_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pc_reg[18]),
        .Q(Q[16]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_o_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pc_reg[19]),
        .Q(Q[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_o_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pc_reg[20]),
        .Q(Q[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_o_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pc_reg[21]),
        .Q(Q[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_o_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pc_reg[22]),
        .Q(Q[20]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_o_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pc_reg[23]),
        .Q(Q[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_o_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pc_reg[24]),
        .Q(Q[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_o_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pc_reg[25]),
        .Q(Q[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_o_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pc_reg[26]),
        .Q(Q[24]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_o_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pc_reg[27]),
        .Q(Q[25]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_o_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pc_reg[28]),
        .Q(Q[26]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_o_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pc_reg[29]),
        .Q(Q[27]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_o_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pc_reg[2]),
        .Q(Q[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_o_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pc_reg[30]),
        .Q(Q[28]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_o_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pc_reg[31]),
        .Q(Q[29]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_o_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pc_reg[3]),
        .Q(Q[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_o_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pc_reg[4]),
        .Q(Q[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_o_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pc_reg[5]),
        .Q(Q[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_o_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pc_reg[6]),
        .Q(Q[4]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_o_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pc_reg[7]),
        .Q(Q[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_o_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pc_reg[8]),
        .Q(Q[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_o_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pc_reg[9]),
        .Q(Q[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[10]_i_1_n_7 ),
        .Q(pc_reg[10]),
        .R(clear));
  CARRY4 \pc_reg[10]_i_1 
       (.CI(\pc_reg[6]_i_1_n_0 ),
        .CO({\pc_reg[10]_i_1_n_0 ,\pc_reg[10]_i_1_n_1 ,\pc_reg[10]_i_1_n_2 ,\pc_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[10]_i_1_n_4 ,\pc_reg[10]_i_1_n_5 ,\pc_reg[10]_i_1_n_6 ,\pc_reg[10]_i_1_n_7 }),
        .S({\pc[10]_i_2_n_0 ,\pc[10]_i_3_n_0 ,\pc[10]_i_4_n_0 ,\pc[10]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[10]_i_1_n_6 ),
        .Q(pc_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[10]_i_1_n_5 ),
        .Q(pc_reg[12]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[10]_i_1_n_4 ),
        .Q(pc_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[14]_i_1_n_7 ),
        .Q(pc_reg[14]),
        .R(clear));
  CARRY4 \pc_reg[14]_i_1 
       (.CI(\pc_reg[10]_i_1_n_0 ),
        .CO({\pc_reg[14]_i_1_n_0 ,\pc_reg[14]_i_1_n_1 ,\pc_reg[14]_i_1_n_2 ,\pc_reg[14]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[14]_i_1_n_4 ,\pc_reg[14]_i_1_n_5 ,\pc_reg[14]_i_1_n_6 ,\pc_reg[14]_i_1_n_7 }),
        .S({\pc[14]_i_2_n_0 ,\pc[14]_i_3_n_0 ,\pc[14]_i_4_n_0 ,\pc[14]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[14]_i_1_n_6 ),
        .Q(pc_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[14]_i_1_n_5 ),
        .Q(pc_reg[16]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[14]_i_1_n_4 ),
        .Q(pc_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[18]_i_1_n_7 ),
        .Q(pc_reg[18]),
        .R(clear));
  CARRY4 \pc_reg[18]_i_1 
       (.CI(\pc_reg[14]_i_1_n_0 ),
        .CO({\pc_reg[18]_i_1_n_0 ,\pc_reg[18]_i_1_n_1 ,\pc_reg[18]_i_1_n_2 ,\pc_reg[18]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[18]_i_1_n_4 ,\pc_reg[18]_i_1_n_5 ,\pc_reg[18]_i_1_n_6 ,\pc_reg[18]_i_1_n_7 }),
        .S({\pc[18]_i_2_n_0 ,\pc[18]_i_3_n_0 ,\pc[18]_i_4_n_0 ,\pc[18]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[18]_i_1_n_6 ),
        .Q(pc_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[18]_i_1_n_5 ),
        .Q(pc_reg[20]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[18]_i_1_n_4 ),
        .Q(pc_reg[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[22]_i_1_n_7 ),
        .Q(pc_reg[22]),
        .R(clear));
  CARRY4 \pc_reg[22]_i_1 
       (.CI(\pc_reg[18]_i_1_n_0 ),
        .CO({\pc_reg[22]_i_1_n_0 ,\pc_reg[22]_i_1_n_1 ,\pc_reg[22]_i_1_n_2 ,\pc_reg[22]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[22]_i_1_n_4 ,\pc_reg[22]_i_1_n_5 ,\pc_reg[22]_i_1_n_6 ,\pc_reg[22]_i_1_n_7 }),
        .S({\pc[22]_i_2_n_0 ,\pc[22]_i_3_n_0 ,\pc[22]_i_4_n_0 ,\pc[22]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[22]_i_1_n_6 ),
        .Q(pc_reg[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[22]_i_1_n_5 ),
        .Q(pc_reg[24]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[22]_i_1_n_4 ),
        .Q(pc_reg[25]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[26]_i_1_n_7 ),
        .Q(pc_reg[26]),
        .R(clear));
  CARRY4 \pc_reg[26]_i_1 
       (.CI(\pc_reg[22]_i_1_n_0 ),
        .CO({\pc_reg[26]_i_1_n_0 ,\pc_reg[26]_i_1_n_1 ,\pc_reg[26]_i_1_n_2 ,\pc_reg[26]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[26]_i_1_n_4 ,\pc_reg[26]_i_1_n_5 ,\pc_reg[26]_i_1_n_6 ,\pc_reg[26]_i_1_n_7 }),
        .S({\pc[26]_i_2_n_0 ,\pc[26]_i_3_n_0 ,\pc[26]_i_4_n_0 ,\pc[26]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[26]_i_1_n_6 ),
        .Q(pc_reg[27]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[26]_i_1_n_5 ),
        .Q(pc_reg[28]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[26]_i_1_n_4 ),
        .Q(pc_reg[29]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[2]_i_1_n_7 ),
        .Q(pc_reg[2]),
        .R(clear));
  CARRY4 \pc_reg[2]_i_1 
       (.CI(1'b0),
        .CO({\pc_reg[2]_i_1_n_0 ,\pc_reg[2]_i_1_n_1 ,\pc_reg[2]_i_1_n_2 ,\pc_reg[2]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\pc_reg[2]_i_1_n_4 ,\pc_reg[2]_i_1_n_5 ,\pc_reg[2]_i_1_n_6 ,\pc_reg[2]_i_1_n_7 }),
        .S({\pc[2]_i_2_n_0 ,\pc[2]_i_3_n_0 ,\pc[2]_i_4_n_0 ,\pc[2]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[30]_i_1_n_7 ),
        .Q(pc_reg[30]),
        .R(clear));
  CARRY4 \pc_reg[30]_i_1 
       (.CI(\pc_reg[26]_i_1_n_0 ),
        .CO({\NLW_pc_reg[30]_i_1_CO_UNCONNECTED [3:1],\pc_reg[30]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_pc_reg[30]_i_1_O_UNCONNECTED [3:2],\pc_reg[30]_i_1_n_6 ,\pc_reg[30]_i_1_n_7 }),
        .S({1'b0,1'b0,\pc[30]_i_2_n_0 ,\pc[30]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[30]_i_1_n_6 ),
        .Q(pc_reg[31]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[2]_i_1_n_6 ),
        .Q(pc_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[2]_i_1_n_5 ),
        .Q(pc_reg[4]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[2]_i_1_n_4 ),
        .Q(pc_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[6]_i_1_n_7 ),
        .Q(pc_reg[6]),
        .R(clear));
  CARRY4 \pc_reg[6]_i_1 
       (.CI(\pc_reg[2]_i_1_n_0 ),
        .CO({\pc_reg[6]_i_1_n_0 ,\pc_reg[6]_i_1_n_1 ,\pc_reg[6]_i_1_n_2 ,\pc_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[6]_i_1_n_4 ,\pc_reg[6]_i_1_n_5 ,\pc_reg[6]_i_1_n_6 ,\pc_reg[6]_i_1_n_7 }),
        .S({\pc[6]_i_2_n_0 ,\pc[6]_i_3_n_0 ,\pc[6]_i_4_n_0 ,\pc[6]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[6]_i_1_n_6 ),
        .Q(pc_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[6]_i_1_n_5 ),
        .Q(pc_reg[8]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[6]_i_1_n_4 ),
        .Q(pc_reg[9]),
        .R(clear));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
