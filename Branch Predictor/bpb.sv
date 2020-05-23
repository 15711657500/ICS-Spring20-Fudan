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
module bpb #(
    parameter ENTRIES = `BPB_E,
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
    
    int i1, i2, i3;
    assign conflict = isbranch & (real_adr != addrs[i1next]);
    always@({valids,tags,instr_adr}) begin
        for (i1 = 0; i1 < ENTRIES; i1 = i1 + 1) begin
            if (valids[i1] && tags[i1] == instr_adr) begin
                break;
            end
        end
    end
    assign hit = (i1 < ENTRIES);
    logic [ENTRIES-1:0]w_enext;
    assign w_enext[0] = w_en;
    assign w_enext[ENTRIES-1:1] = 0;
    assign w_ens = hit ? (w_enext << i1) : (full?(w_enext << i3):(w_enext << i2));
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
    int i1next;
    always_ff @( posedge clk, posedge reset ) begin 
        if (reset) begin
            i1next <= 0;
        end
        else if(~stall)
            i1next <= i1;
    end
    assign sws = swext << i1next;
    
    always@(valids) begin
        for (i2 = 0; i2 < ENTRIES; i2 = i2 + 1) begin
            if (~valids[i2]) begin
                break;
            end
        end
    end
    assign full = (i2 >= ENTRIES);
    replacement re(.clk(clk), .reset(reset), .en(strategy_en), .i1(i1), .hit(hit), .full(full), .i3(i3));
    assign predict_taken = hit ? predict_takens[i1] : 0;
    assign predict_adr = hit ? addrs[i1] : 0;

endmodule

module replacement #(
	parameter ENTRIES = `BPB_E
) (
	input logic clk, reset, en,
    input int i1,
    input logic hit, full,
    output int i3
);
	logic [31:0]ages[ENTRIES-1:0];
    int i;
    int i4;
    always_ff @( posedge clk, posedge reset ) begin 
        if (reset) begin
            ages <= '{ default: '0 };
        end
        else if (en) begin
            for (i = 0; i < ENTRIES; i = i + 1) begin
                ages[i] <= ages[i] >>> 1;
            end
            
            ages[i1][30] <= 1;
        end
        
    end
    always_comb begin 
        for (i4 = 0; i4 < ENTRIES; i4 = i4 + 1) begin
            if (ages[i4] < ages[i3]) begin
                i3 = i4;
            end
        end
    end
endmodule