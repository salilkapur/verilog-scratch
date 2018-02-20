//--------------------------------------------
// Source: https://github.com/packet-transactions/atomsyn/blob/master/counter.v
// -------------------------------------------


module counter(
    clk,
    i__inc,
    reset,
    o__count__next
);

// Parameters
parameter COUNT_WIDTH                   = 8;
parameter INIT_VALUE                    = 1'b0;

// Global signals
input  logic                            clk;
input  logic                            i__inc;
input  logic                            reset;
output logic [0:COUNT_WIDTH-1]          o__count__next;

logic [0:COUNT_WIDTH-1]                 r__count__pff;

always_comb
begin
    o__count__next = r__count__pff;

    if(i__inc == 1'b1)
    begin
        if(r__count__pff == 128)
        begin
            o__count__next = '0;
        end
        else
        begin
            // [START] Experiment - 1
            
            o__count__next = r__count__pff + 1'b1;
            
            // [END] Experiment - 1


            // [START] Experiment - 2
            /*
            if (r__count__pff % 2 == 0)
                o__count__next = r__count__pff + 2'b01;
            else
                o__count__next = r__count__pff / 2'b10;
            */
            // [END] Experiment - 2


            // [START] Experiment - 3
            /*
            if (r__count__pff % 2 == 0)
            begin
                if (r__count__pff % 4 == 0)
                    o__count__next = r__count__pff + 2'b01;
                else
                    o__count__next = r__count__pff * 2'b11;
            end
            else
                o__count__next = r__count__pff / 2'b10;
            */
            // [END] Experiment - 3
        
        end
    end
end

always_ff @ (posedge clk)
begin
    if (reset == 1'b1)
        r__count__pff = 0;
    else
        r__count__pff <= o__count__next;
end

endmodule
