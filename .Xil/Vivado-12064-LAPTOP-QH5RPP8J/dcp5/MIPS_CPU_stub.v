// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module MIPS_CPU(rst, clk, inst_i, ram_rd_data_i, rom_en_o, 
  rom_addr_o, ram_en_o, ram_is_read_o, ram_addr_o, ram_data_o, ram_data_sel_o);
  input rst;
  input clk;
  input [31:0]inst_i;
  input [31:0]ram_rd_data_i;
  output rom_en_o;
  output [31:0]rom_addr_o;
  output ram_en_o;
  output ram_is_read_o;
  output [31:0]ram_addr_o;
  output [31:0]ram_data_o;
  output [3:0]ram_data_sel_o;
endmodule
