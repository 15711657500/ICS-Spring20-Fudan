`include "bpb.vh"

module line #(
    parameter ENTRIES = `BPB_E,
    parameter TAG_WIDTH = `BPB_T
) (
    input clk, reset, w_en, sw, taken,
    input set_valid,
    input [TAG_WIDTH-1:0]set_tag,
    input [31:0]set_addr,
    output reg valid,
    output reg [TAG_WIDTH-1:0]tag,
    output reg [31:0]addr,
    output predict_taken
);
    logic [1:0]state;
    assign predict_taken = state[1];
    always_ff @( posedge clk, posedge reset ) begin
        if (reset) begin
            {valid, tag, state, addr} <= 0;
        end
        else if (w_en) begin
            {addr} <= {set_addr};
            state <= 0;
            if (~valid) begin
                {valid, tag} <= {set_valid, set_tag};
            end
        end
        else if(sw) begin
            if(state != 2'b11 && taken)
                state <= state + 1;
            if(state != 2'b00 && ~taken)
                state <= state - 1;
        end
    end
endmodule