`timescale 1ns / 1ps

module display(  
    input [0:31] x,
    input clk,
    input clr,
    output reg [6:0] a_to_g,
    output reg [3:0] an,
    output wire dp
);

wire [1:0] s;     
reg [3:0] digit;
wire [3:0] aen;
reg [19:0] clkdiv;

assign dp = 1;
assign s = clkdiv[19:18];
assign aen = 4'b1111; // all turned off initially

always @(posedge clk)
begin
    if (x >= 32'h3b9aca00)
        digit = 0;
    else
        digit = 1;
end

always @(*)
begin
    case(digit)       
        // Seven segment display pins - gfedcba
        0:a_to_g = 7'b1000000;////0000                                                                     
        1:a_to_g = 7'b1111001;////0001                                                
    endcase
end

always @(*)
begin
    an=4'b1111;
    if(aen[s] == 1)
        an[s] = 0;
end

always @(posedge clk or posedge clr) begin
if ( clr == 1)
    clkdiv <= 0;
else
    clkdiv <= clkdiv+1;
end
endmodule
