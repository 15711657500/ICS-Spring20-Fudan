module mips(
    input logic clk, reset,
    output logic [31:0] pc,
    input logic [31:0] instr,
    output logic memwrite,
    output logic [31:0] aluout,
    output logic [31:0] writedata,
    input logic [31:0] readdata
);
    // Fetch
    logic [31:0] pcnext, pcF, pcplus4F, rdF;
    logic stallF;
    // Decode
    logic [31:0] instrD, pcplus4D, pcbranchD, signimmD, signimmshD, rd1D, rd2D, temp1D, temp2D;
    logic [4:0] rsD, rtD, rdD;
    logic regwriteD, memtoregD, memwriteD, alusrcD, regdstD, branchD;
    logic forwardAD, forwardBD;
    logic equalD, pcsrcD;
    logic [2:0] alucontrolD;

    // Execute
    logic regwriteE, memtoregE, memwriteE, alusrcE, regdstE;
    logic [2:0] alucontrolE;
    logic [4:0] rsE, rtE, rdE;
    logic [31:0] rd1E, rd2E;
    logic [1:0] forwardAE, forwardBE;
    logic flushE;
    logic [31:0] signimmE, srcAE, srcBE, writedataE;
    logic [31:0] aluoutE;
    logic [4:0] writeregE;
    // Memory

    // Writeback

    // Fetch
    mux2#(32) pcmux(.d0(pcplus4F), .d1(pcbranchD), .out(pcnext), .s(pcsrcD));// todo:
    flopr#(32) pcff(.en(StallF), .d(pcnext), .clk(clk), .out(pcF), .reset(reset));
    adder pcadder(.a(pcF), .b(32'b100), .out(pcplus4F));
    regD rD(.clk(clk), .en(stallD), .clr(pcsrcD), .pcplus4D(pcplus4D), .pcplus4F(pcplus4F), .instrF(instr), .instrD(instrD));
    // Decode
    sl2 sl(.a(signimmD), .out(signimmshD));
    adder adder2(.a(signimmshD), .b(pcplus4D), .out(pcbranchD));
    signext se(.a(instrD[15:0]), .out(signimmD));
    assign rsD = instrD[25:21];
    assign rtD = instrD[20:16];
    assign rdD = instrD[15:11];
    controller ctl(.op(instrD[31:26]), .funct(instrD[5:0]), .regwrite(regwriteD), .memtoreg(memtoregD),
        .memwrite(memwriteD), .alucontrol(alucontrolD), .alusrc(alusrcD), .regdst(regdstD), .branch(branchD));
    regfile rf(.clk(clk), .ra1(instrD[25:21]), .ra2(instrD[20:16]), .wa3(writeregW), .wd3(resultW), .rd1(rd1D), .rd2(rd2D));
    mux2#(32) rd1mux(.d0(rd1D), .d1(aluoutM), .s(forwardAD), .out(temp1D));
    mux2#(32) rd2mux(.d0(rd2D), .d1(aluoutM), .s(forwardBD), .out(temp2D));
    eqer#(32) eq(.a(temp1D), .b(temp2D), .eq(pcsrcD));
    assign pcsrcD = branchD & equalD;
    regE re(clk, flushE,
        regwriteD, memtoregD, memwriteD, alusrcD, regdstD, alucontrolD, rd1D, rd2D, rsD, rtD, rdD, signimmD,
        regwriteE, memtoregE, memwriteE, alusrcE, regdstE, alucontrolE, rd1E, rd2E, rsE, rtE, rdE, signimmE);
    // Execute
    mux2#(5) wrmux(.d0(rtE), .d1(rdE), .s(regdstE), .out(writeregE));
    mux4#(32) srcAmux(.d0(rd1E), .d1(resultW), .d2(aluoutM), .d3(32'b0), .s(forwardAE), .out(srcAE));
    mux4#(32) wdmux(.d0(rd2E), .d1(resultW), .d2(aluoutM), .d3(32'b0), .s(forwardBE), .out(writedataE));
    mux2#(32) srcBmux(.d0(writedataE), .d1(signimmE), .s(alusrcE), .out(srcBE));
    alu al(.srca(srcAE), .srcb(srcBE), .alucontrol(alucontrolE), .aluout(aluoutE));
    regM rm(clk, regwriteE, memtoregE, memwriteE, aluoutE, writedataE, writeregE, regwriteM, memtoregM, memwriteM, aluoutM, writedataM, writeregM);
    
// Memory

// Writeback

// conflict
conflict c1(branchD, memtoregE, regwriteE, memtoregM, regwriteM, regwriteW,
    rsD, rtD, rsE, rtE, writeregE, writeregM, writeregW,
    stallF, stallD, forwardAD, forwardBD, flushE, forwardAE, forwardBE);
endmodule:mips

module controller(
    input logic [5:0] op, funct,
    input logic zero,
    output logic memtoreg, memwrite,
    output logic pcsrc, alusrc,
    output logic regdst, regwrite,
    output logic jump,
    output logic [2:0] alucontrol,
    output logic [1:0] shift,
    output logic jr,
    output logic andi_ori
);
    logic [2:0] aluop;
    logic branch;
    maindec md(op, memtoreg, memwrite, branch, alusrc, regdst, regwrite, jump, aluop);
    aludec ad(funct, aluop, alucontrol);
    shiftdec sd(op, funct, shift);
    jrdec jd(op, funct, jr);
    assign pcsrc = branch & (op[0] ^ zero);//beq and bne
    assign andi_ori = (op[5:1] == 5'b00110);
endmodule

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


