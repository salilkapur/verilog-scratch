`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/17/2018 01:20:28 PM
// Design Name: 
// Module Name: testbench
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


module testbench(
    );
    reg clk = 1'b0;
    reg reset = 1'b1;
    
    logic [2:0] count_out;
    
    counter counter_instance(.clk(clk),
                            .i__inc(1'b1),
                            .reset(reset),
                            .o__count__next(count_out));
    
    initial
    begin
        #10 clk = ~clk;
        #10 clk = ~clk;
        reset = ~reset;
        #10 clk = ~clk;
        #10 clk = ~clk;
        #10 clk = ~clk;
        #10 clk = ~clk;
        #10 clk = ~clk;
        #10 clk = ~clk;
    end
endmodule
