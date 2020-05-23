`include "bpb.vh"

/**
 * ENTRIES          : number of entries in the branch predictor buffer
 * TAG_WIDTH        : index bits
 * instr_adr        : if this address has been recorded, then CPU can go as the BPB directs
 * isbranch         : in order to register the branch when first meeted
 * real_taken       : whether this branch should be taken according to the semantics of the instructions
 * real_adr         : where should this branch jumps to
 * predict_taken    : whether this branch should be taken according to the prediction of our BPB
 * predict_adr      : where should this branch jumps to if it's taken
 */
module bpb1 #(
    parameter ENTRIES = 2 ** `BPB_T,
    parameter TAG_WIDTH = `BPB_T
) (
    input                   clk, reset, stall, flush,
    input [TAG_WIDTH-1:0]   instr_adr,
    
    input                   isbranch,
    // reality
    input                   real_taken,
    input [31:0]            real_adr,
    // prediction
    output                  predict_taken,
    output     [31:0]       predict_adr
);

/**
 * TODO: Your code here
 */
    logic [ENTRIES - 1:0]predict_takens, valids;
    logic [ENTRIES-1:0][TAG_WIDTH-1:0]tags;
    logic [ENTRIES-1:0][31:0]addrs;
    logic set_valid;
    logic [TAG_WIDTH-1:0]set_tag;
    logic [31:0]set_addr;
    logic [ENTRIES-1:0]w_ens, sws;
    logic w_en, sw;
    logic hit;
    
    line lines[ENTRIES-1:0](.clk(clk),.reset(reset),.w_en(w_ens),.sw(sws),.taken(real_taken),
                            .set_valid(set_valid),.set_tag(set_tag),.set_addr(set_addr),
                            .valid(valids),.tag(tags),.addr(addrs),.predict_taken(predict_takens));
    branch_controller ctler(.clk(clk),.reset(reset),.stall(stall),.flush(flush),
                     .isbranch(isbranch),.instr_adr(instr_adr),.real_adr(real_adr),.hit(hit),.conflict(conflict),
                     .w_en(w_en),.sw(sw),.set_valid(set_valid),.set_tag(set_tag),.set_addr(set_addr));
    
    int instr_adrnext;
    assign conflict = isbranch & (real_adr != addrs[instr_adrnext]);
    logic [ENTRIES-1:0]w_enext;
    assign w_enext[0] = w_en;
    assign w_enext[ENTRIES-1:1] = 0;
    assign w_ens = w_enext << set_tag;
    logic [ENTRIES-1:0]swext;
    assign swext[0] = sw;
    assign swext[ENTRIES-1:1] = 0;
    // always_ff @( posedge clk, posedge reset ) begin 
    //     if (reset) begin
    //         sws <= 0;
    //     end
    //     else
    //         sws <= swext << i1;
    // end
    always_ff @( posedge clk, posedge reset ) begin 
        if (reset) begin
            instr_adrnext <= 0;
        end
        else if(~stall)
            instr_adrnext <= instr_adr;
    end
    assign sws = swext << instr_adrnext;
    assign hit = valids[instr_adr];

    assign predict_taken = valids[instr_adr]?predict_takens[instr_adr] : 0;
    assign predict_adr = valids[instr_adr]?addrs[instr_adr] : 0;

endmodule