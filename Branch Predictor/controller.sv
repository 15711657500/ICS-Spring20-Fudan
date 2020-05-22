`include "bpb.vh"
module branch_controller #(
    parameter ENTRIES = `BPB_E,
    parameter TAG_WIDTH = `BPB_T
)(
    input logic clk, reset, stall, flush,
    input logic isbranch,
    input logic [TAG_WIDTH-1:0]instr_addr,
    input logic hit, conflict,
    output logic w_en, sw,
    output logic set_valid,
    output logic [TAG_WIDTH-1:0]set_tag
);
    logic [1:0]state;
    assign set_valid = 1'b1;
    assign w_en = (state == 1);
    always_ff @( posedge clk, posedge reset ) begin 
        if (reset) begin
            {state, set_tag, sw} <= 0;
        end
        else if (~stall) begin
            case(state)
                0:begin
                    sw <= 0;
                    if(hit)
                        state <= 2;
                    else if(isbranch)begin
                        state <= 1;
                        set_tag <= instr_addr;
                    end
                end
                1:begin
                    state <= 0;
                    set_tag <= 0;
                end
                2:begin
                    if (~conflict) begin
                        state <= 0;
                        sw <= 1;
                    end
                    else
                        state <= 1;
                end
                default:begin
                    
                end
            endcase
        end
    end
endmodule
