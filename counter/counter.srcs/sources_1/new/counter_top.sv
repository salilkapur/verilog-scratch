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
        input i_inc,
        input i_reset,
        output [3:0] an,
        output dp,
        output [6:0] seg
    );
    
    reg [0:31] out;
    counter counter_instance(.clk(clk),
                            .i__inc(i_inc),
                            .i__reset(i_reset),
                            .o__count__next(out));
                            
    display u (                    
        .x(out),
        .clk(clk),
        .clr(i_reset),
        .a_to_g(seg),
        .an(an),
        .dp(dp)
    );
endmodule
