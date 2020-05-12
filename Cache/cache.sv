`include "cache.vh"

/**
 * NOTE: The sum of TAG_WIDTH, SET_WIDTH and OFFSET_WIDTH should be 32
 *
 * TAG_WIDTH    : (t) tag bits
 * SET_WIDTH    : (s) set index bits, the number of sets is 2**SET_WIDTH
 * OFFSET_WIDTH : (b) block offset bits
 * LINES        : number of lines per set
 *
 * stall        : inorder to synchronize instruction memroy cache and data memroy cache, you may need this so that two caches will write data at most once per instruction respectively.
 *
 * input_ready  : whether input data from processor are ready
 * addr         : cache read/write address from processor
 * write_data   : cache write data from processor
 * w_en         : cache write enable
 * hit          : whether cache hits
 * read_data    : data read from cache
 *
 * maddr        : memory address 
 * mwrite_data  : data written to memory
 * m_wen        : memory write enable
 * mread_data   : data read from memory
 */
module cache #(
	parameter TAG_WIDTH    = `CACHE_T,
		      SET_WIDTH    = `CACHE_S,
		      OFFSET_WIDTH = `CACHE_B,
		      LINES        = `CACHE_E
)(
	input         clk, reset, stall,

	// interface with CPU
	input input_ready,
	input [31:0]  addr, write_data,
	input         w_en,
	output        hit,
	output [31:0] read_data,

	// interface with memory
	output [31:0] maddr, mwrite_data,
	output        m_wen,
	input [31:0]  mread_data,
	output [31:0] testRAM,
	output testdirty
	/* input         mready // memory ready ? */
);

/**
 * TODO: Your code here
 */
	logic [2**SET_WIDTH-1:0]hits, dirtys;
	logic dirty;
	logic set_valid, set_dirty;
    logic [OFFSET_WIDTH - 3:0] offset;
    logic strategy_en, offset_sel;
    logic [4 + OFFSET_WIDTH-2:0] ctls;
	logic [4 + OFFSET_WIDTH-2:0]ctlss[2**SET_WIDTH-1:0];
	logic lw_en;
	logic [31:0]read_datas[2**SET_WIDTH-1:0];
	logic [SET_WIDTH-1:0]setbits;
	logic [TAG_WIDTH-1:0]tags[2**SET_WIDTH-1:0];
	assign setbits = addr[31-TAG_WIDTH:OFFSET_WIDTH];
	logic st;
	cache_controller controller(.clk(clk),.reset(reset),.en(~stall & input_ready), .cw_en(w_en), .hit(hit), .dirty(dirty),
								.w_en(lw_en),.set_valid(set_valid), .set_dirty(set_dirty), 
								.mw_en(m_wen), .block_offset(offset),
								.strategy_en(strategy_en), .offset_sel(offset_sel), .st(st)
								);
	set2 sets[2**SET_WIDTH - 1:0] (.clk(clk), .reset(reset),.ctls(ctlss), .addr(maddr), 
								.write_data(write_data),.mread_data(mread_data),
								.hit(hits),.dirty(dirtys),.read_data(read_datas),
								.tag(tags));
	assign testdirty = dirtys[0];
	assign testRAM = read_datas[0];							
    assign hit = (hits[setbits] & ~st) | ~input_ready;
	assign dirty = dirtys[setbits];
	assign ctls = {lw_en, set_valid, set_dirty, offset, strategy_en, offset_sel};
	always_comb begin
		ctlss <= '{ default: '0 };
		ctlss[setbits]<=ctls;
	end
	assign maddr = {m_wen?tags[setbits]:addr[31:32-TAG_WIDTH], setbits, offset_sel?offset:addr[OFFSET_WIDTH-1:2], 2'b00};
	assign read_data = read_datas[setbits];
	assign mwrite_data = read_data;
endmodule : cache
