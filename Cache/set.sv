`include "cache.vh"
/**
* ctls       : control signals from cache_controller
* addr       : cache read/write address from processor
* write_data : cache write data from processor
* mread_data : data read from memory
* 
* hit        : whether cache set hits
* dirty      : from the cache line selected by addr (cache line's tag is equal to addr's tag)
*/
module set #(
	parameter TAG_WIDTH    = `CACHE_T,
		      OFFSET_WIDTH = `CACHE_B,
		      LINES        = `CACHE_E
)(
	input                         clk, reset,
	input  [4 + OFFSET_WIDTH-2:0] ctls,
	input  [31:0]                 addr, write_data, mread_data,
	output logic                       hit, dirty,
	output [31:0]                 read_data,
    output [TAG_WIDTH-1:0] tag
);

wire w_en, set_valid, set_dirty, init, offset_sel, strategy_en;
wire [OFFSET_WIDTH - 3:0] offset;

// control signals will be assigned to the target line instance.
assign {w_en, set_valid, set_dirty, offset, strategy_en, offset_sel} = ctls;

/**
* TODO: Your code here
*/
	logic [LINES-1:0]w_ens, valids, dirtys;
	logic [TAG_WIDTH-1:0]tags[LINES-1:0];
	logic [31:0]read_datas[LINES-1:0];
	logic [31:0]wd;
	logic [OFFSET_WIDTH - 3:0] offsett;
    logic full;
    int i1;
	assign wd = (hit & set_dirty) ? write_data : mread_data;
	assign offsett = offset_sel ? offset : addr[OFFSET_WIDTH-1:2] ;
	line lines[LINES - 1:0] (.clk(clk),.reset(reset), .offset(offsett), .w_en(w_ens),
	                      .set_valid(set_valid), .set_dirty(set_dirty),.set_tag(addr[31:32-TAG_WIDTH]),
	                      .write_data(wd),
						  .valid(valids),.dirty(dirtys),.tag(tags),.read_data(read_datas));
    
    // assign hit = (i1 < LINES) & ~set_valid;
    assign hit = (i1 < LINES);
    assign read_data = (i1 < LINES) ? read_datas[i1] : 0;
    // assign dirty = |dirtys;

    int i2;//not full
    int i3;//full
    // always_comb begin
    //     w_ens = 0;
    //     dirty = 0;
    //     for (i1 = 0; i1 < LINES; i1 = i1 + 1)
    //         if (valids[i1] && tags[i1] == addr[31:32-TAG_WIDTH])begin
    //             w_ens[i1] = w_en;
    //             dirty = 0;
    //             break;
    //         end
    //     if (~hit) begin
    //         for (i2 = 0; i2 < LINES; i2 = i2 + 1) begin
    //             if (~valids[i2]) begin
    //                 w_ens[i2] = w_en;
    //                 dirty = 0;
    //                 break;
    //             end
    //         end
    //         if (full) begin
    //             w_ens[i3] = w_en;
    //             dirty = dirtys[i3];
    //         end
    //     end
    // end
    // always_ff @( posedge clk ) begin
    //     dirty <= 0;
    //     if ((~hit) & full) begin
    //         dirty <= dirtys[i3];
    //     end
    // end

    always_comb begin
        for (i1 = 0; i1 < LINES; i1 = i1 + 1) begin
            if (valids[i1] && tags[i1] == addr[31:32-TAG_WIDTH]) begin
                break;
            end
        end
    end
    always_comb begin
        w_ens <= 0;
        dirty <= 0;
        if (hit) begin
            w_ens[i1] <= w_en;
        end 
        else begin
            if (~full) begin
                w_ens[i2] <= w_en;
            end
            else begin
                w_ens[i3] <= w_en;
                dirty <= dirtys[i3];
            end
        end
    end
    always_comb begin
        for (i2 = 0; i2 < LINES; i2 = i2 + 1) begin
            if (~valids[i2]) begin
                break;
            end
        end
    end
    
    assign full = (i2 >= LINES);
    assign tag = hit ? tags[i1]:(full?tags[i3]:tags[i2]);
    replacement re(.clk(clk), .reset(reset), .en(strategy_en), .i1(i1), .i2(i2), .hit(hit), .full(full), .i3(i3));
endmodule

// module replacement #(
// 	parameter TAG_WIDTH    = `CACHE_T,
// 		      OFFSET_WIDTH = `CACHE_B,
// 		      LINES        = `CACHE_E
// ) (
// 	input logic clk, reset, en,
//     input int i1, i2,
//     input logic hit, full,
//     output int i3
// );
// 	logic [31:0]ages[LINES-1:0];
//     int i;
//     always_ff @( posedge clk, posedge reset ) begin 
//         if (reset) begin
//             ages <= '{ default: '0 };
//             i3 <= 0;
//         end
//         else if (en) begin
//                 for (i = 0; i < LINES; i = i + 1) begin
//                     ages[i] <= ages[i] >>> 1;
//                 end
            
//             ages[i1][31] <= 1;
//         end
//     end
//     logic [31:0]young;
//     assign young = ages[i3];
//     int i4;
//     always_comb begin 
//         for (i4 = 0; i4 < LINES; i4 = i4 + 1) begin
//             if (ages[i4] < ages[i3]) begin
//                 i3 = i4;
//             end
//         end
//     end
// endmodule