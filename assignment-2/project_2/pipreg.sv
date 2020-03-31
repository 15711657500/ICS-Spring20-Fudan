module regD(
    input logic clk,
    input logic en,
    input logic clr,
    input logic [31:0] instrF,
    output logic [31:0] instrD,
    input logic [31:0] pcplus4F,
    output logic [31:0] pcplus4D
);
    always_ff @(posedge clk)
        begin
            if (clr)
                begin
                    instrD <= 32'b0;
                    pcplus4D <= 32'b0;
                end
            else if (!en) begin
                instrD <= instrF;
                pcplus4D <= pcplus4F;
            end
        end
endmodule

module regE(
    input logic clk,
    input logic clr,
    input logic regwriteD, memtoregD, memwriteD, alusrcD, regdstD,
    input logic [2:0] alucontrolD,
    input logic [31:0] rd1D, rd2D,
    input logic [4:0] rsD, rtD, rdD,
    input logic [31:0] signimmD,
    output logic regwriteE, memtoregE, memwriteE, alusrcE, regdstE,
    output logic [2:0] alucontrolE,
    output logic [31:0] rd1E, rd2E,
    output logic [4:0] rsE, rtE, rdE,
    output logic [31:0] signimmE
);
    logic sig;
    always_ff @(posedge clk)
        begin
            sig <= 0;
            if (clr == 1)
                begin
                    regwriteE <= 0;
                    memtoregE <= 0;
                    memwriteE <= 0;
                    alusrcE <= 0;
                    regdstE <= 0;
                    alucontrolE <= 3'b0;
                    rd1E <= 32'b0;
                    rd2E <= 32'b0;
                    rsE <= 4'b0;
                    rtE <= 4'b0;
                    rdE <= 4'b0;
                    signimmE <= 32'b0;
                    sig <= 1;
                end
            else begin
                {regwriteE, memtoregE, memwriteE, alusrcE, regdstE, alucontrolE, rd1E, rd2E, rsE, rtE, rdE, signimmE}
                    <=
                {regwriteD, memtoregD, memwriteD, alusrcD, regdstD, alucontrolD, rd1D, rd2D, rsD, rtD, rdD, signimmD};
            end
        end
endmodule : regE

module regM(
    input logic clk,
    input logic regwriteE, memtoregE, memwriteE,
    input logic [31:0] aluoutE, writedataE,
    input logic [4:0] writeregE,
    output logic regwriteM, memtoregM, memwriteM,
    output logic [31:0] aluoutM, writedataM,
    output logic [4:0] writeregM
);
    always_ff @(posedge clk)
        begin
            {regwriteM, memtoregM, memwriteM, aluoutM, writedataM, writeregM}
                <=
            {regwriteE, memtoregE, memwriteE, aluoutE, writedataE, writeregE};
        end
endmodule

module regW(
    input logic clk,
    input logic regwriteM, memtoregM,
    input logic [31:0]readdataM, aluoutM,
    input logic [4:0]writeregM,
    output logic regwriteW, memtoregW,
    output logic [31:0]readdataW, aluoutW,
    output logic [4:0]writeregW
);
    always_ff @(posedge clk)
    begin
        {regwriteW, memtoregW, readdataW, aluoutW, writeregW}
    <=
        {regwriteM, memtoregM, readdataM, aluoutM, writeregM};
    end

endmodule : regW