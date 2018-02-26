`timescale 1ns / 1ps

module display(  
    input [0:31] in_count,
    input clk,
    input clr,
    output reg [6:0] a_to_g,
    output reg [3:0] an,
    output wire dp
);

logic [0:31] x;
wire [1:0] s;     
reg [3:0] digit;
wire [3:0] aen;
reg [19:0] clkdiv;

assign dp = 1;
assign s = clkdiv[19:18];
assign aen = 4'b1111; // all turned off initially

always_ff @(posedge clk)
    x <= in_count;

always_ff @(posedge clk)
begin
    if (x >= 32'h3b9aca00)
        digit <= 0;
    else
        digit <= 1;
end

always_comb
begin
    case(digit)       
        // Seven segment display pins - gfedcba
        0:a_to_g = 7'b1000000;////0000                                                                     
        1:a_to_g = 7'b1111001;////0001                                                
    endcase
end

always_comb
begin    
    an=4'b1111;
    if(aen[s] == 1)
        an[s] = 0;
end

always_ff @(posedge clk)
begin
    if ( clr == 1)
        clkdiv <= 0;
    else
        clkdiv <= clkdiv+1;
    end
endmodule
