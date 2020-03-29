`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/03/02 16:27:22
// Design Name: 
// Module Name: mipsmem
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

module imem (
    input logic [5:0]a,
    output logic [31:0]rd
);
    logic [31:0] RAM[63:0];
    assign rd=RAM[a];
endmodule

module dmem (
    input logic clk,
    input logic we,
    input logic [31:0]a,
    input logic [31:0]wd,
    output logic [31:0]rd
);
    logic [31:0] RAM[63:0];
    assign rd = RAM[a[31:2]];

    always_ff @( posedge clk ) 
    begin
        if(we)
            RAM[a[31:2]] <= wd;
    end
endmodule