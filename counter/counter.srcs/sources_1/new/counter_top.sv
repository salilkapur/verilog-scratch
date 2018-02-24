`timescale 1ns / 1ps

module counter_top(
    input clk,
    input i_inc,
    input i_reset,
    output [3:0] an,
    output dp,
    output [6:0] seg
);

logic clk_25;

// Logic to downsample 100 MHz clock to 50 MHz
FDCE #(
    .INIT(1'b0) // Initial value of register (1'b0 or 1'b1)
) FDCE_0 (
    .Q(clk_25),      // Data output
    .C(clk),      // Clock input
    .CE(1'b1),    // Clock enable input
    .CLR(1'b0),  // Asynchronous clear input
    .D(!clk_25)       // Data input
);

reg [0:31] out;
counter counter_instance(.clk(clk_25),
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
