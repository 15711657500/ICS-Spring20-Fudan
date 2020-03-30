`timescale 1ns/1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/03/02 16:27:22
// Design Name: 
// Module Name: mipsparts
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module flopr#(parameter W=8)
    (
        input logic clk, reset,
        input logic [W-1:0] d,
        output logic [W-1:0] out
    );
    always_ff @(posedge clk, posedge reset)
        begin
            if (reset)
                out <= 0;
            else
                out <= d;
        end
endmodule

module flopenr#(parameter W=8)
    (
        input logic clk, reset ,en,
        input logic [W-1:0] d,
        output logic [W-1:0] out
    );
    always_ff @(posedge clk, posedge reset)
        begin
            if (reset)
                out <= 0;
            else if (en)
                out <= d;
        end
endmodule: flopenr
module adder(
    input logic [31:0] a, [31:0] b,
    output logic [31:0] out
);

    assign out = a+b;

endmodule

module sl2(
    input logic [31:0] a,
    output logic [31:0] out
);
    assign out = {a[29:0], 2'b00};
endmodule

module mux2#(parameter W=8)
    (
        input logic [W-1:0] d0, d1,
        input logic s,
        output logic [W-1:0] out
    );
    assign out = s ? d1:d0;

endmodule
module mux4#(parameter W=8)(
    input logic [W-1:0] d0, d1, d2, d3,
    input logic [1:0] s,
    output logic [W-1:0] out
);
    always_comb
        begin
            case (s)
                2'b00: out <= d0;
                2'b01: out <= d1;
                2'b10: out <= d2;
                2'b11: out <= d3;
            endcase
        end
endmodule
module regfile(
    input logic clk,
    input logic we3,
    input logic [4:0] ra1, ra2, wa3,
    input logic [31:0] wd3,
    output logic [31:0] rd1, rd2,
    input logic [1:0] shift,
    input logic [4:0] shamt
);
    logic [31:0] rf [31:0];
    always_ff @(negedge clk)
        begin
            if (we3)
                case (shift)
                    2'b00: rf[wa3] <= wd3;
                    2'b01:
                        rf[wa3] <= rf[ra2] << shamt;
                    2'b10:
                        rf[wa3] <= rf[ra2] >> shamt;
                    2'b11:
                        rf[wa3] <= rf[ra2] >>> shamt;
                endcase
        end
    assign rd1 = (ra1 != 0) ? rf[ra1]:32'b0;
    assign rd2 = (ra2 != 0) ? rf[ra2]:32'b0;
endmodule

module signext(
    input logic [15:0] a,
    output logic [31:0] out
);
    assign out = {{16{a[15]}}, a};

endmodule

module zeroext(
    input logic [15:0] a,
    output logic [31:0] out
);
    assign out = {16'b0, a};
endmodule: zeroext

module eqcmp#(parameter W=32)
    (input logic [W-1:0] a, b, output logic eq);
    assign eq = (a == b);
endmodule

module floprc#(parameter W=8)(input logic clk, reset, clear, input logic [W-1:0] d, output logic [W-1:0] q);
    always_ff @(posedge clk, posedge reset)
        begin
            if (reset)
                q <= #1 0;
            else if (clear)
                q <= #1 0;
            else
                q <= #1 d;
        end
endmodule: floprc

module flopenrc#(parameter W=8)
    (
        input logic clk, reset, en, clear,
        input logic [W-1:0] d,
        output logic [W-1:0] q
    );
    always_ff @(posedge clk, posedge reset)
        begin
            if (reset)
                q <= #1 0;
            else if (clear)
                q <= #1 0;
            else if (en)
                q <= #1 d;
        end
endmodule: flopenrc
