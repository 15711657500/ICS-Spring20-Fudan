module conflict(
    input logic branchD, memtoregE, regwriteE, memtoregM, regwriteM, regwriteW,
    input logic [4:0] rsD, rtD, rsE, rtE, writeregE, writeregM, writeregW,
    output logic stallF, stallD, flushE, forwardBD,
    output logic [1:0] forwardAD, forwardAE, forwardBE,
    input logic jumpD
);
    always_comb
        begin
            if ((rsE != 0) && (rsE == writeregM) && regwriteM)
                forwardAE = 2'b10;
            else if ((rsE != 0) && (rsE == writeregW) && regwriteW)
                forwardAE = 2'b01;
            else
                forwardAE = 2'b00;
            if ((rtE != 0) && (rtE == writeregM) && regwriteM)
                forwardBE = 2'b10;
            else if ((rtE != 0) && (rtE == writeregW) && regwriteW)
                forwardBE = 2'b01;
            else
                forwardBE = 2'b00;
            if ((rsD != 0) && (rsD == writeregE) && regwriteE)
                forwardAD = 2'b11;
            else if ((rsD != 0) && (rsD == writeregM) && memtoregM)
                forwardAD = 2'b10;
            else if ((rsD != 0) && (rsD == writeregM) && regwriteM)
                forwardAD = 2'b01;

            else
                forwardAD = 2'b00;
//            if ((rtD != 0) && (rtD == writeregM) && memtoregM)
//                forwardBD = 2'b10;
//            else if ((rtD != 0) && (rtD == writeregM) && regwriteM)
//                forwardBD = 2'b01;
//            else
//                forwardBD = 2'b00;
        end
    logic lwstall;
    assign #1 lwstall = ((rsD == rtE) || (rtD == rtE)) && memtoregE;


//    assign forwardAD = (rsD != 0) && (rsD == writeregM) && regwriteM;
    assign forwardBD = (rtD != 0) && (rtD == writeregM) && regwriteM;
    logic branchstall;
    assign #1 branchstall = (branchD && regwriteE && (writeregE == rsD || writeregE == rtD))
        ||
        (branchD && memtoregM && (writeregM == rsD || writeregM == rtD));

    assign #1 stallD = lwstall || branchstall;
    assign #1 stallF = stallD;
    assign #1 flushE = stallD;

endmodule: conflict