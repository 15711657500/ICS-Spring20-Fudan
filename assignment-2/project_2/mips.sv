module mips(
    input logic clk, reset,
    output logic [31:0] pc,
    input logic [31:0] instr,
    output logic memwrite,
    output logic [31:0] aluout,
    output logic [31:0] writedata,
    input logic [31:0] readdata
);
    //datapath dp(clk, reset, pc, instr, memwrite, aluout, writedata, readdata);
    logic [5:0] opD, functD;
    logic regdstE, alusrcE, pcsrcD, memtoregE, memtoregM, memtoregW,
          regwriteE, regwriteM, regwriteW;
    logic [2:0] alucontrolE;
    logic flushE, equalD;
    logic jumpD;
    controller c(clk, reset, opD, functD, flushE, equalD, memtoregE, memtoregM,
        memtoregW, memwrite, pcsrcD, branchD, alusrcE, regdstE, regwriteE,
        regwriteM, regwriteW, jumpD, alucontrolE);
    datapath dp(clk, reset, memtoregE, memtoregM, memtoregW, pcsrcD, branchD, alusrcE, regdstE, regwriteE, regwriteM, regwriteW, jumpD,
        alucontrolE, equalD, pc, instr, aluout, writedata, readdata, opD, functD, flushE);
endmodule: mips

module datapath(
//    input logic clk, reset,
//    output logic [31:0] pc,
//    input logic [31:0] instr,
//    output logic memwrite,
//    output logic [31:0] aluout,
//    output logic [31:0] writedata,
//    input logic [31:0] readdata
    input logic clk, reset, memtoregE, memtoregM, memtoregW, pcsrcD, branchD, alusrcE, regdstE, regwriteE, regwriteM, regwriteW, jumpD,
    input logic [2:0] alucontrolE,
    output logic equalD,
    output logic [31:0] pcF,
    input logic [31:0] instrF,
    output logic [31:0] aluoutM, writedataM,
    input logic [31:0] readdataM,
    output logic [5:0] opD, functD,
    output logic flushE
);

    logic [31:0] pcnextFD, pcnextbrFD, pcplus4F, pcbranchD;
    logic stallF;
    logic [4:0] rsD, rtD, rdD;
    logic [31:0] signimmD, signimmE, signimmshD;
    logic [31:0] srcaD, srca2D, srcaE, srca2E;
    logic [31:0] srcbD, srcb2D, srcbE, srcb2E, srcb3E;
    logic [31:0] pcplus4D, instrD;
    logic [31:0] aluoutE, aluoutW;
    logic [31:0] readdataW, resultW;
    logic forwardAD, forwardBD;
    logic stallD;
    logic flushD;
    logic [4:0] rsE, rtE, rdE;
    logic [1:0] forwardAE, forwardBE;
    logic [4:0] writeregE;
    logic [4:0] writeregM;
    logic [4:0] writeregW;
    mux2#(32) pcbrmux(.d0(pcplus4F), .d1(pcbranchD), .out(pcnextbrFD), .s(pcsrcD));// todo:
    mux2#(32) pcmux(.d0(pcnextbrFD), .d1({pcplus4D[31:28], instrD[25:0], 2'b00}), .s(jumpD), .out(pcnextFD));
    flopenr#(32) pcreg(.en(~stallF), .d(pcnextFD), .clk(clk), .out(pcF), .reset(reset));
    adder pcadd1(.a(pcF), .b(32'b100), .out(pcplus4F));

    assign opD = instrD[31:26];
    assign functD = instrD[5:0];
    assign rsD = instrD[25:21];
    assign rtD = instrD[20:16];
    assign rdD = instrD[15:11];
    flopenr#(32) r1D(clk, reset, ~stallD, pcplus4F, pcplus4D);
    flopenrc#(32) r2D(clk, reset, ~stallD, flushD, instrF, instrD);
    signext se(.a(instrD[15:0]), .out(signimmD));
    sl2 sl(.a(signimmD), .out(signimmshD));
    adder pcadd2(.a(signimmshD), .b(pcplus4D), .out(pcbranchD));

    regfile rf(.clk(clk), .ra1(rsD), .ra2(rtD), .wa3(writeregW), .wd3(resultW), .rd1(srcaD), .rd2(srcbD), .we3(regwriteW), .shift(2'b00));
    mux2#(32) forwardadmux(.d0(srcaD), .d1(aluoutM), .s(forwardAD), .out(srca2D));
    mux2#(32) forwardbdmux(.d0(srcbD), .d1(aluoutM), .s(forwardBD), .out(srcb2D));
    eqcmp comp(srca2D, srcb2D, equalD);
    assign flushD = pcsrcD | jumpD;

//    // Execute
    mux2#(5) wrmux(.d0(rtE), .d1(rdE), .s(regdstE), .out(writeregE));
    mux4#(32) forwardaemux(.d0(srcaE), .d1(resultW), .d2(aluoutM), .d3(32'b0), .s(forwardAE), .out(srca2E));
    mux4#(32) forwardbemux(.d0(srcbE), .d1(resultW), .d2(aluoutM), .d3(32'b0), .s(forwardBE), .out(srcb2E));
    mux2#(32) srcBmux(.d0(srcb2E), .d1(signimmE), .s(alusrcE), .out(srcb3E));
    alu alu(.srca(srca2E), .srcb(srcb3E), .alucontrol(alucontrolE), .aluout(aluoutE));
    floprc#(32) r1E(clk, reset, flushE, srcaD, srcaE);
    floprc#(32) r2E(clk, reset, flushE, srcbD, srcbE);
    floprc#(32) r3E(clk, reset, flushE, signimmD, signimmE);
    floprc#(5) r4E(clk, reset, flushE, rsD, rsE);
    floprc#(5) r5E(clk, reset, flushE, rtD, rtE);
    floprc#(5) r6E(clk, reset, flushE, rdD, rdE);

    flopr#(32) r1M(clk, reset, srcb2E, writedataM);
    flopr#(32) r2M(clk, reset, aluoutE, aluoutM);
    flopr#(5) r3M(clk, reset, writeregE, writeregM);
    mux2#(32) resmux(.d0(aluoutW), .d1(readdataW), .s(memtoregW), .out(resultW));
    flopr#(32) r1W(clk, reset, aluoutM, aluoutW);
    flopr#(32) r2W(clk, reset, readdataM, readdataW);
    flopr#(5) r3W(clk, reset, writeregM, writeregW);

    conflict haz(.rsD(rsD), .rtD(rtD), .rsE(rsE), .rtE(rtE), .writeregE(writeregE), .writeregM(writeregM),
        .writeregW(writeregW), .regwriteE(regwriteE), .regwriteM(regwriteM), .regwriteW(regwriteW),
        .memtoregE(memtoregE), .memtoregM(memtoregM), .branchD(branchD), .forwardAD(forwardAD), .forwardBD(forwardBD), .forwardAE(forwardAE), .forwardBE(forwardBE),
        .stallF(stallF), .stallD(stallD), .flushE(flushE));
endmodule: datapath
module controller(
//    input logic [5:0] op, funct,
//    input logic zero,
//    output logic memtoreg, memwrite,
//    output logic pcsrc, alusrc,
//    output logic regdst, regwrite,
//    output logic jump,
//    output logic [2:0] alucontrol,
//    output logic [1:0] shift,
//    output logic jr,
//    output logic andi_ori,
//    output logic branch
    input logic clk, reset,
    input logic [5:0] opD, functD,
    input logic flushE, equalD,
    output logic memtoregE, memtoregM,
    output logic memtoregW, memwriteM, pcsrcD, branchD, alusrcE, regdstE, regwriteE, regwriteM, regwriteW, jumpD,
    output logic [2:0] alucontrolE
);
//    logic [2:0] aluop;
//    logic branch;
//    maindec md(op, memtoreg, memwrite, branch, alusrc, regdst, regwrite, jump, aluop);
//    aludec ad(funct, aluop, alucontrol);
//    shiftdec sd(op, funct, shift);
//    jrdec jd(op, funct, jr);
//    assign pcsrc = branch & (op[0] ^ zero);//beq and bne
//    assign andi_ori = (op[5:1] == 5'b00110);
    logic [2:0] aluopD;
    logic memtoregD, memwriteD, alusrcD, regdstD, regwriteD;
    logic [2:0] alucontrolD;
    logic memwriteE;
    maindec md(opD, memtoregD, memwriteD, branchD, alusrcD, regdstD, regwriteD, jumpD, aluopD);
    aludec ad(functD, aluopD, alucontrolD);
    assign pcsrcD = branchD & equalD;

    // pipeline registers
    floprc#(8) regE(clk, reset, flushE,
        {memtoregD, memwriteD, alusrcD, regdstD, regwriteD, alucontrolD},
        {memtoregE, memwriteE, alusrcE, regdstE, regwriteE, alucontrolE});
    flopr#(3) regM(clk, reset,
        {memtoregE, memwriteE, regwriteE},
        {memtoregM, memwriteM, regwriteM});
    flopr#(2) regW(clk, reset,
        {memtoregM, regwriteM},
        {memtoregW, regwriteW});
endmodule: controller

module maindec(
    input logic [5:0] op,
    output logic memtoreg, memwrite,
    output logic branch, alusrc,
    output logic regdst, regwrite,
    output logic jump,
    output logic [2:0] aluop
);
    logic [9:0] controls;
    assign {regwrite, regdst, alusrc, branch, memwrite, memtoreg, jump, aluop} = controls;
    always_comb
        begin
            case (op)
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

module aludec(
    input logic [5:0] funct,
    input logic [2:0] aluop,
    output logic [2:0] alucontrol
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
                    case (funct)
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

module shiftdec(
    input logic [5:0] op, func,
    output logic [1:0] shift
);
    always_comb
        begin
            if (op == 6'b000000)
                begin
                    case (func)
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

module jrdec(
    input logic [5:0] op, func,
    output logic jr
);
    always_comb
        begin
            if (op == 6'b000000 && func == 6'b001000)
                jr <= 1;
            else
                jr <= 0;
        end
endmodule


