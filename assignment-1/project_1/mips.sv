`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/03/02 16:26:39
// Design Name: 
// Module Name: mips
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


module mips(
    input logic clk,
    input logic [31:0]instr,
    input logic [31:0]readdata,
    input logic reset,
    output logic [31:0]aluout,
    output logic memwrite,
    output logic [31:0]pc,
    output logic [31:0]writedata
    );
    logic memtoreg, alusrc, regdst, regwrite, jump, pcsrc, zero;
    logic [2:0]alucontrol;
    logic [1:0]shift;
    logic jr;
    datapath dp(clk, reset, memtoreg, pcsrc, alusrc, regdst, regwrite, jump, alucontrol, zero, pc, instr, 
                aluout, writedata, readdata, shift, jr);

    controller c(instr[31:26], instr[5:0], zero, memtoreg, memwrite, 
                 pcsrc, alusrc, regdst, regwrite, jump, alucontrol, shift, jr);
endmodule

module datapath (
    input logic clk,reset,
    input logic memtoreg,pcsrc,
    input logic alusrc, regdst,
    input logic regwrite, jump,
    input logic [2:0]alucontrol,
    output logic zero,
    output logic [31:0]pc,
    input logic [31:0]instr,
    output logic [31:0]aluout, writedata,
    input logic [31:0] readdata,
    input logic [1:0]shift,
    input logic jr
);
    logic [4:0] writereg;//which register to write
    logic [4:0] temp;
    logic [31:0] temp32;
    logic [31:0] temppc;
    logic [31:0] pcnext, pcnextbr, pcplus4, pcbranch;
    logic [31:0]signimm,signimmsh;
    logic [31:0] srca, srcb;
    logic [31:0] result;
    flopr #(32) pcreg(clk,reset,pcnext,pc);
    adder pcadd1(pc,32'b100,pcplus4);
    sl2 immsh(signimm,signimmsh);
    adder pcadd2(pcplus4, signimmsh,pcbranch);
    mux2 #(32) pcbrmux(pcplus4, pcbranch,pcsrc,pcnextbr);
    mux2 #(32) pcmux(pcnextbr, {pcplus4[31:28],instr[25:0],2'b00}, jump, temppc);
    mux2 #(32) pcmux1(temppc, srca, jr,pcnext);
    regfile rf(clk,regwrite,instr[25:21],instr[20:16],writereg,result,srca,writedata,shift,instr[10:6]);
    mux2 #(5) writeramux(instr[20:16],5'b11111,regwrite&jump,temp);//handling JAL
    mux2 #(5) wrmux(temp,instr[15:11],regdst,writereg);
    mux2 #(32) resmux1(aluout,readdata,memtoreg,temp32);
    mux2 #(32) resmux2(temp32,pcplus4,regwrite&jump,result);
    signext se(instr[15:0],signimm);
    mux2 #(32) srcbmux(writedata, signimm,alusrc,srcb);
    alu alu(srca, srcb, alucontrol, aluout, zero);
endmodule

module controller (
    input logic [5:0]op,funct,
    input logic zero,
    output logic memtoreg,memwrite,
    output logic pcsrc, alusrc,
    output logic regdst, regwrite,
    output logic jump,
    output logic [2:0] alucontrol,
    output logic [1:0] shift,
    output logic jr
);
    logic [2:0]aluop;
    logic branch;
    maindec md(op, memtoreg, memwrite, branch, alusrc, regdst, regwrite, jump, aluop);
    aludec ad(funct, aluop, alucontrol);
    shiftdec sd(op,funct,shift);
    jrdoc jd(op, funct, jr);
    assign pcsrc = branch & (op[0]^zero);//beq and bne

endmodule

module maindec (
    input logic [5:0]op,
    output logic memtoreg,memwrite,
    output logic branch,alusrc,
    output logic regdst, regwrite,
    output logic jump,
    output logic [2:0]aluop
);
    logic [9:0]controls;
    assign {regwrite, regdst, alusrc, branch, memwrite, memtoreg, jump, aluop} = controls;
    always_comb 
    begin
        case(op)
            6'b000000: controls <= 10'b1100000010; //rtype
            6'b100011: controls <= 10'b1010010000; //LW
            6'b101011: controls <= 10'b0010100000; //SW
            6'b000100: controls <= 10'b0001000001; //BEQ
            6'b000101: controls <= 10'b0001000001; //BNE
            6'b001000: controls <= 10'b1010000000; //ADDI
            6'b001100: controls <= 10'b1010000100; //ANDI
            6'b001101: controls <= 10'b1010000101; //ORI
            6'b001010: controls <= 10'b1010000110; //SLTI
            6'b000010: controls <= 10'b0000001000; //J
            6'b000011: controls <= 10'b1000001000; //JAL
            //6'b001000: controls <= 10'b0000001000; //JR
            default: controls <= 10'b0000000000;
        endcase
    end
endmodule

module aludec (
    input logic [5:0]funct,
    input logic [2:0]aluop,
    output logic [2:0]alucontrol
);
    always_comb 
    begin
        case (aluop)
            3'b000: alucontrol <= 3'b010; //add(for lw/sw/addi)
            3'b001: alucontrol <= 3'b110; //sub(for beq/bne)
            3'b100: alucontrol <= 3'b000; //andi
            3'b101: alucontrol <= 3'b001; //ori
            3'b110: alucontrol <= 3'b111; //slti
            default:
                case(funct)
                    6'b100000: alucontrol <= 3'b010;//add
                    6'b100010: alucontrol <= 3'b110;//sub
                    6'b100100: alucontrol <= 3'b000;//and
                    6'b100101: alucontrol <= 3'b001;//or
                    6'b101010: alucontrol <= 3'b111;//slt
                    default: alucontrol <= 3'bxxx;
                endcase
        endcase    
    end
    
endmodule

module shiftdec (
    input logic [5:0]op, func,
    output logic [1:0]shift
);
    always_comb 
    begin
        if(op == 6'b000000)
        begin
            case(func)
                6'b000000: shift <= 2'b01;//SLL
                6'b000010: shift <= 2'b10;//SRL
                6'b000011: shift <= 2'b11;//SRA
                default: shift <= 2'b00;
            endcase
        end
        else
            shift <= 2'b00;
    end
endmodule

module jrdoc (
    input logic [5:0]op,func,
    output logic jr
);
    always_comb 
    begin
        if(op==6'b000000 && func == 6'b001000)
            jr <= 1;
        else
            jr <= 0;    
    end
endmodule