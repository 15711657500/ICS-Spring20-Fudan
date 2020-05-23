`include "bpb.vh"
module branch_controller #(
    parameter ENTRIES = `BPB_E,
    parameter TAG_WIDTH = `BPB_T
)(
    input logic clk, reset, stall, flush,
    input logic isbranch,
    input logic [TAG_WIDTH-1:0]instr_adr,
    input logic [31:0]real_adr,
    input logic hit, conflict,
    output logic w_en, sw,
    output logic set_valid,
    output logic [TAG_WIDTH-1:0]set_tag,
    output logic [31:0]set_addr
);
    logic [1:0]state;
    assign set_valid = 1'b1;
    assign w_en = (state == 1);
    assign sw = (state == 2);
    // assign set_tag = instr_adr;
    always_ff @( posedge clk, posedge reset ) begin 
        if (reset) begin
            {state, set_tag, set_addr} <= 0;
        end
        else if (~stall) begin
            case(state)
                0:begin
                    if(hit) begin
                        state <= 2;
                        set_tag <= instr_adr;
                    end
                        
                    else if(isbranch)begin
                        state <= 1;
                        set_addr <= real_adr;
                    end 
                    else
                        set_tag <= instr_adr;
                end
                1:begin
                    state <= 0;
                    set_tag <= instr_adr;
                    set_addr <= 0;
                end
                2:begin
                    if (~conflict) begin
                        state <= 0;
                        set_tag <= instr_adr;
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
