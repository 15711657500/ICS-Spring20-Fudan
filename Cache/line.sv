 `include "cache.vh"
 /**
  * w_en: write enable
  */
 module line#(
     parameter TAG_WIDTH=`CACHE_T,
               OFFSET_WIDTH=`CACHE_B
 )(
     input clk, reset,
     input [OFFSET_WIDTH-3:0] offset,
     input w_en, set_valid, set_dirty,
     input [TAG_WIDTH-1:0] set_tag,
     input [31:0] write_data,
     output reg valid,
     output reg dirty,
     output reg [TAG_WIDTH-1:0] tag,
     output [31:0] read_data
 );

     /**
      * TODO: Your code here
      */
     logic [31:0] RAM [2 ** (OFFSET_WIDTH-2) - 1:0];
     always_ff @(posedge clk, posedge reset)
         begin
             if (reset) begin
                RAM <= '{ default: '0 };
                {valid, tag, dirty} <= 0;
             end
                
             else if(w_en)begin
                valid <= set_valid | valid;
                dirty <= (tag == set_tag)?set_dirty:1'b0;
                tag <= set_tag;
                RAM[offset]<=write_data;
                //  {valid, dirty, tag, RAM[offset]} <= {set_valid, (tag == set_tag)?set_dirty:0, set_tag, write_data};
             end
         end
     assign read_data = (valid) ? RAM[offset]:0;
 endmodule
