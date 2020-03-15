`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/03/02 16:18:50
// Design Name: 
// Module Name: mipstop
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


module top(
    input logic clk,reset,
    output logic writedata,dataadr,
    output memwrite
    );
    logic [31:0]pc, instr, readdata;
    mips mips(clk, instr, readdata, reset, dataadr, memwrite, pc, writedata);
    imem imem(pc[7:2], instr);
    dmem dmem(dataadr, clk, writedata, memwrite, readdata);
endmodule

