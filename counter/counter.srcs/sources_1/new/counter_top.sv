`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2018 03:21:38 PM
// Design Name: 
// Module Name: counter_top
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


module counter_top(
        input clk,
        input inc,
        input reset,
        output [3:0] an,
        output dp,
        output [6:0] seg
    );
    
    reg [0:7] out;
    counter counter_instance(.clk(clk),
                            .i__inc(inc),
                            .reset(reset),
                            .o__count__next(out));
                            
    display u (                    
        .x({8'b0, out}),
        .clk(clk),
        .clr(reset),
        .a_to_g(seg),
        .an(an),
        .dp(dp)
    );
endmodule
