`include "cache.vh"
/**
* en         : en in cache module
* cw_en      : cache writing enable signal, from w_en in cache module
* hit, dirty : from set module
*
* w_en       : writing enable signal to cache line
* mw_en      : writing enable signal to memory , controls whether to write to memory
* set_valid  : control signal for cache line
* set_dirty  : control signal for cache line
* offset_sel : control signal for cache line and this may be used in other places
*/
module cache_controller #(
	parameter OFFSET_WIDTH = `CACHE_B
)(
	input  clk, reset, en, cw_en, hit, dirty, // mready,
	output logic w_en, set_valid, set_dirty, mw_en,
	output logic [OFFSET_WIDTH - 3:0] block_offset,
	output logic strategy_en,
	output reg offset_sel,
	output logic st
);

/**
* TODO: Your code here
*/
	logic [1:0] state;
	logic [OFFSET_WIDTH - 2:0] exblock_offset;
	assign st = (state != 0);
	assign block_offset = exblock_offset[OFFSET_WIDTH - 3:0];
	// 0: init
	// 1: read block from memory
	// 2: write block back to memory

	assign w_en = (((state == 0) && cw_en && hit && en) || (state == 1));
	assign set_dirty = cw_en && (state == 0);
	assign set_valid = ((state == 0) || (exblock_offset == 2 ** (OFFSET_WIDTH-2)-1));
	assign mw_en = ((state == 2));
	assign strategy_en = (state == 0) && en;
	always_ff @( posedge clk, posedge reset) begin 
		if(reset)
			// init
			{exblock_offset, offset_sel, state} <= 0;
		else case(state)
			0:begin
				{exblock_offset, offset_sel} <= 0;
				if(hit) begin
					
				end
				else begin
					offset_sel <= 1;
					if (dirty) begin
						state <= 2;
					end
					else begin
						state <= 1;
					end
				end
			end
			1:begin
				if(exblock_offset < 2 ** (OFFSET_WIDTH - 2) - 1)
					exblock_offset <= exblock_offset + 1;
				else if(offset_sel)
				begin
					offset_sel <= 0;
				end
					
				else
				begin
					state <= 0;
				end
			end

			2:begin
				
				if(exblock_offset < 2 ** (OFFSET_WIDTH - 2) - 1)
					exblock_offset <= exblock_offset + 1;
				else
				begin
					exblock_offset <= 0;
					state <= 1;
				end
			end
		endcase
	end
endmodule
