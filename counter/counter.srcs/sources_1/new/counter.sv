//--------------------------------------------
// Source: https://github.com/packet-transactions/atomsyn/blob/master/counter.v
// -------------------------------------------


module counter(
    clk,
    i__inc,
    i__reset,
    o__count__next
);

// Parameters
parameter COUNT_WIDTH                   = 32;
parameter INIT_VALUE                    = 1'b0;

// Global signals
input  logic                            clk;
input  logic                            i__inc;
input  logic                            i__reset;
output logic [0:COUNT_WIDTH-1]          o__count__next;

logic [0:COUNT_WIDTH-1]                 r__count__pff;
reg inc;
reg reset;

always_ff @(posedge clk)
begin
    inc <= i__inc;
    reset <= i__reset;
end

always_comb
begin
    o__count__next = r__count__pff;
    
    if(r__count__pff == 32'h3b9aca00 + 32'h3b9aca00)
        o__count__next = '0;
    else
        o__count__next = r__count__pff + 1'b1;
end

always_ff @ (posedge clk)
begin
    if (reset == 1'b1)
        r__count__pff = 0;
    else
        r__count__pff <= o__count__next;
end

endmodule
