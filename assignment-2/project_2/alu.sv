`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/03/02 16:27:22
// Design Name: 
// Module Name: alu
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


module alu(
    input logic [31:0]srca,
    input logic [31:0]srcb,
    input logic [2:0]alucontrol,
    output logic [31:0]aluout
    );
    always_comb 
    begin
        case(alucontrol)
            3'b010: aluout <= srca + srcb;
            3'b110: aluout <= srca - srcb;
            3'b000: aluout <= srca & srcb;
            3'b001: aluout <= srca | srcb;
            3'b111: aluout <= ((srca < srcb) ? 32'b1: 32'b0);
            3'b011: aluout <= srcb << srca;
            3'b100: aluout <= srcb >> srca;
            3'b101: aluout <= srcb >>> srca;
            default: aluout <= 32'b0;
        endcase
    end
    
endmodule
