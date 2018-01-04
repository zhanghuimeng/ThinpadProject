`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/13 02:01:25
// Design Name: 
// Module Name: MIPS_CPU_min_sopc_testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MIPS_CPU_min_sopc_testbench();

    reg CLOCK_50;
    reg rst;
    
    // The CLOCK flips every 10 ns, so the frequency is 50MHZ
    initial begin
        CLOCK_50 = 1'b0;
        forever #10 CLOCK_50 = ~CLOCK_50;
    end 
    
    // rst is enabled at first
    // At 195ns, rst is disabled, minimal SOPC begins to run
    initial begin
        rst = 1'b1;
        #195 rst = 1'b0;
        #50000 $stop;
    end
    
    // Instantiate minimal SOPC
    MIPS_CPU_min_sopc MIPS_CPU_min_sopc0(
        .clk(CLOCK_50),
        .rst(rst)
    );
    
endmodule
