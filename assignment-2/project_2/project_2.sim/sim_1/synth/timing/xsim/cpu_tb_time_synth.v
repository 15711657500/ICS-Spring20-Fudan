// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sun Apr  5 09:52:47 2020
// Host        : ubuntu running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/tanyifan/Desktop/ICS-Spring20-Fudan/assignment-2/project_2/project_2.sim/sim_1/synth/timing/xsim/cpu_tb_time_synth.v
// Design      : mips
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a12ticsg325-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module RAM32M_UNIQ_BASE_
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD1
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD10
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD11
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD2
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD3
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD4
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD5
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD6
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD7
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD8
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD9
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module adder
   (D,
    Q);
  output [28:0]D;
  input [29:0]Q;

  wire [28:0]D;
  wire [29:0]Q;
  wire out_carry__0_n_0;
  wire out_carry__0_n_1;
  wire out_carry__0_n_2;
  wire out_carry__0_n_3;
  wire out_carry__1_n_0;
  wire out_carry__1_n_1;
  wire out_carry__1_n_2;
  wire out_carry__1_n_3;
  wire out_carry__2_n_0;
  wire out_carry__2_n_1;
  wire out_carry__2_n_2;
  wire out_carry__2_n_3;
  wire out_carry__3_n_0;
  wire out_carry__3_n_1;
  wire out_carry__3_n_2;
  wire out_carry__3_n_3;
  wire out_carry__4_n_0;
  wire out_carry__4_n_1;
  wire out_carry__4_n_2;
  wire out_carry__4_n_3;
  wire out_carry__5_n_0;
  wire out_carry__5_n_1;
  wire out_carry__5_n_2;
  wire out_carry__5_n_3;
  wire out_carry_n_0;
  wire out_carry_n_1;
  wire out_carry_n_2;
  wire out_carry_n_3;
  wire [3:0]NLW_out_carry__6_CO_UNCONNECTED;
  wire [3:1]NLW_out_carry__6_O_UNCONNECTED;

  CARRY4 out_carry
       (.CI(1'b0),
        .CO({out_carry_n_0,out_carry_n_1,out_carry_n_2,out_carry_n_3}),
        .CYINIT(Q[0]),
        .DI(Q[4:1]),
        .O(D[3:0]),
        .S(Q[4:1]));
  CARRY4 out_carry__0
       (.CI(out_carry_n_0),
        .CO({out_carry__0_n_0,out_carry__0_n_1,out_carry__0_n_2,out_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[8:5]),
        .O(D[7:4]),
        .S(Q[8:5]));
  CARRY4 out_carry__1
       (.CI(out_carry__0_n_0),
        .CO({out_carry__1_n_0,out_carry__1_n_1,out_carry__1_n_2,out_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[12:9]),
        .O(D[11:8]),
        .S(Q[12:9]));
  CARRY4 out_carry__2
       (.CI(out_carry__1_n_0),
        .CO({out_carry__2_n_0,out_carry__2_n_1,out_carry__2_n_2,out_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(Q[16:13]),
        .O(D[15:12]),
        .S(Q[16:13]));
  CARRY4 out_carry__3
       (.CI(out_carry__2_n_0),
        .CO({out_carry__3_n_0,out_carry__3_n_1,out_carry__3_n_2,out_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(Q[20:17]),
        .O(D[19:16]),
        .S(Q[20:17]));
  CARRY4 out_carry__4
       (.CI(out_carry__3_n_0),
        .CO({out_carry__4_n_0,out_carry__4_n_1,out_carry__4_n_2,out_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(Q[24:21]),
        .O(D[23:20]),
        .S(Q[24:21]));
  CARRY4 out_carry__5
       (.CI(out_carry__4_n_0),
        .CO({out_carry__5_n_0,out_carry__5_n_1,out_carry__5_n_2,out_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(Q[28:25]),
        .O(D[27:24]),
        .S(Q[28:25]));
  CARRY4 out_carry__6
       (.CI(out_carry__5_n_0),
        .CO(NLW_out_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_out_carry__6_O_UNCONNECTED[3:1],D[28]}),
        .S({1'b0,1'b0,1'b0,Q[29]}));
endmodule

(* ORIG_REF_NAME = "adder" *) 
module adder_0
   (pcbranchD,
    Q,
    S,
    \out[6]_i_3 ,
    \out[10]_i_3 ,
    \out[14]_i_3 ,
    signimmD,
    \out[18]_i_3 ,
    \out[22]_i_3 ,
    \out[26]_i_3 ,
    \out[30]_i_3 );
  output [28:0]pcbranchD;
  input [15:0]Q;
  input [3:0]S;
  input [3:0]\out[6]_i_3 ;
  input [3:0]\out[10]_i_3 ;
  input [3:0]\out[14]_i_3 ;
  input [0:0]signimmD;
  input [3:0]\out[18]_i_3 ;
  input [3:0]\out[22]_i_3 ;
  input [3:0]\out[26]_i_3 ;
  input [1:0]\out[30]_i_3 ;

  wire [15:0]Q;
  wire [3:0]S;
  wire [3:0]\out[10]_i_3 ;
  wire [3:0]\out[14]_i_3 ;
  wire [3:0]\out[18]_i_3 ;
  wire [3:0]\out[22]_i_3 ;
  wire [3:0]\out[26]_i_3 ;
  wire [1:0]\out[30]_i_3 ;
  wire [3:0]\out[6]_i_3 ;
  wire out_carry__0_n_0;
  wire out_carry__0_n_1;
  wire out_carry__0_n_2;
  wire out_carry__0_n_3;
  wire out_carry__1_n_0;
  wire out_carry__1_n_1;
  wire out_carry__1_n_2;
  wire out_carry__1_n_3;
  wire out_carry__2_n_0;
  wire out_carry__2_n_1;
  wire out_carry__2_n_2;
  wire out_carry__2_n_3;
  wire out_carry__3_n_0;
  wire out_carry__3_n_1;
  wire out_carry__3_n_2;
  wire out_carry__3_n_3;
  wire out_carry__4_n_0;
  wire out_carry__4_n_1;
  wire out_carry__4_n_2;
  wire out_carry__4_n_3;
  wire out_carry__5_n_0;
  wire out_carry__5_n_1;
  wire out_carry__5_n_2;
  wire out_carry__5_n_3;
  wire out_carry__6_n_3;
  wire out_carry_n_0;
  wire out_carry_n_1;
  wire out_carry_n_2;
  wire out_carry_n_3;
  wire [28:0]pcbranchD;
  wire [0:0]signimmD;
  wire [0:0]NLW_out_carry_O_UNCONNECTED;
  wire [3:1]NLW_out_carry__6_CO_UNCONNECTED;
  wire [3:2]NLW_out_carry__6_O_UNCONNECTED;

  CARRY4 out_carry
       (.CI(1'b0),
        .CO({out_carry_n_0,out_carry_n_1,out_carry_n_2,out_carry_n_3}),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O({pcbranchD[2:0],NLW_out_carry_O_UNCONNECTED[0]}),
        .S(S));
  CARRY4 out_carry__0
       (.CI(out_carry_n_0),
        .CO({out_carry__0_n_0,out_carry__0_n_1,out_carry__0_n_2,out_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(pcbranchD[6:3]),
        .S(\out[6]_i_3 ));
  CARRY4 out_carry__1
       (.CI(out_carry__0_n_0),
        .CO({out_carry__1_n_0,out_carry__1_n_1,out_carry__1_n_2,out_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O(pcbranchD[10:7]),
        .S(\out[10]_i_3 ));
  CARRY4 out_carry__2
       (.CI(out_carry__1_n_0),
        .CO({out_carry__2_n_0,out_carry__2_n_1,out_carry__2_n_2,out_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(Q[15:12]),
        .O(pcbranchD[14:11]),
        .S(\out[14]_i_3 ));
  CARRY4 out_carry__3
       (.CI(out_carry__2_n_0),
        .CO({out_carry__3_n_0,out_carry__3_n_1,out_carry__3_n_2,out_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({signimmD,signimmD,signimmD,signimmD}),
        .O(pcbranchD[18:15]),
        .S(\out[18]_i_3 ));
  CARRY4 out_carry__4
       (.CI(out_carry__3_n_0),
        .CO({out_carry__4_n_0,out_carry__4_n_1,out_carry__4_n_2,out_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({signimmD,signimmD,signimmD,signimmD}),
        .O(pcbranchD[22:19]),
        .S(\out[22]_i_3 ));
  CARRY4 out_carry__5
       (.CI(out_carry__4_n_0),
        .CO({out_carry__5_n_0,out_carry__5_n_1,out_carry__5_n_2,out_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({signimmD,signimmD,signimmD,signimmD}),
        .O(pcbranchD[26:23]),
        .S(\out[26]_i_3 ));
  CARRY4 out_carry__6
       (.CI(out_carry__5_n_0),
        .CO({NLW_out_carry__6_CO_UNCONNECTED[3:1],out_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,signimmD}),
        .O({NLW_out_carry__6_O_UNCONNECTED[3:2],pcbranchD[28:27]}),
        .S({1'b0,1'b0,\out[30]_i_3 }));
endmodule

module alu
   (data0,
    data1,
    CO,
    Q,
    S,
    \out[4]_i_4 ,
    \out[8]_i_4 ,
    \out[12]_i_4 ,
    \out[16]_i_4 ,
    \out[20]_i_4 ,
    \out[24]_i_4 ,
    \out[28]_i_4 ,
    \out[0]_i_6 ,
    \out[4]_i_2 ,
    \out[8]_i_2__0 ,
    \out[12]_i_2__0 ,
    \out[16]_i_2__0 ,
    \out[20]_i_2__0 ,
    \out[24]_i_2__0 ,
    \out[28]_i_2__0 ,
    DI,
    aluout2_carry__0_0,
    aluout2_carry__1_0,
    aluout2_carry__1_1,
    aluout2_carry__2_0,
    aluout2_carry__2_1,
    \out[0]_i_6_0 ,
    \out[0]_i_6_1 );
  output [31:0]data0;
  output [31:0]data1;
  output [0:0]CO;
  input [30:0]Q;
  input [3:0]S;
  input [3:0]\out[4]_i_4 ;
  input [3:0]\out[8]_i_4 ;
  input [3:0]\out[12]_i_4 ;
  input [3:0]\out[16]_i_4 ;
  input [3:0]\out[20]_i_4 ;
  input [3:0]\out[24]_i_4 ;
  input [3:0]\out[28]_i_4 ;
  input [3:0]\out[0]_i_6 ;
  input [3:0]\out[4]_i_2 ;
  input [3:0]\out[8]_i_2__0 ;
  input [3:0]\out[12]_i_2__0 ;
  input [3:0]\out[16]_i_2__0 ;
  input [3:0]\out[20]_i_2__0 ;
  input [3:0]\out[24]_i_2__0 ;
  input [3:0]\out[28]_i_2__0 ;
  input [3:0]DI;
  input [3:0]aluout2_carry__0_0;
  input [3:0]aluout2_carry__1_0;
  input [3:0]aluout2_carry__1_1;
  input [3:0]aluout2_carry__2_0;
  input [3:0]aluout2_carry__2_1;
  input [3:0]\out[0]_i_6_0 ;
  input [3:0]\out[0]_i_6_1 ;

  wire [0:0]CO;
  wire [3:0]DI;
  wire [30:0]Q;
  wire [3:0]S;
  wire aluout0_carry__0_n_0;
  wire aluout0_carry__0_n_1;
  wire aluout0_carry__0_n_2;
  wire aluout0_carry__0_n_3;
  wire aluout0_carry__1_n_0;
  wire aluout0_carry__1_n_1;
  wire aluout0_carry__1_n_2;
  wire aluout0_carry__1_n_3;
  wire aluout0_carry__2_n_0;
  wire aluout0_carry__2_n_1;
  wire aluout0_carry__2_n_2;
  wire aluout0_carry__2_n_3;
  wire aluout0_carry__3_n_0;
  wire aluout0_carry__3_n_1;
  wire aluout0_carry__3_n_2;
  wire aluout0_carry__3_n_3;
  wire aluout0_carry__4_n_0;
  wire aluout0_carry__4_n_1;
  wire aluout0_carry__4_n_2;
  wire aluout0_carry__4_n_3;
  wire aluout0_carry__5_n_0;
  wire aluout0_carry__5_n_1;
  wire aluout0_carry__5_n_2;
  wire aluout0_carry__5_n_3;
  wire aluout0_carry__6_n_1;
  wire aluout0_carry__6_n_2;
  wire aluout0_carry__6_n_3;
  wire aluout0_carry_n_0;
  wire aluout0_carry_n_1;
  wire aluout0_carry_n_2;
  wire aluout0_carry_n_3;
  wire \aluout0_inferred__0/i__carry__0_n_0 ;
  wire \aluout0_inferred__0/i__carry__0_n_1 ;
  wire \aluout0_inferred__0/i__carry__0_n_2 ;
  wire \aluout0_inferred__0/i__carry__0_n_3 ;
  wire \aluout0_inferred__0/i__carry__1_n_0 ;
  wire \aluout0_inferred__0/i__carry__1_n_1 ;
  wire \aluout0_inferred__0/i__carry__1_n_2 ;
  wire \aluout0_inferred__0/i__carry__1_n_3 ;
  wire \aluout0_inferred__0/i__carry__2_n_0 ;
  wire \aluout0_inferred__0/i__carry__2_n_1 ;
  wire \aluout0_inferred__0/i__carry__2_n_2 ;
  wire \aluout0_inferred__0/i__carry__2_n_3 ;
  wire \aluout0_inferred__0/i__carry__3_n_0 ;
  wire \aluout0_inferred__0/i__carry__3_n_1 ;
  wire \aluout0_inferred__0/i__carry__3_n_2 ;
  wire \aluout0_inferred__0/i__carry__3_n_3 ;
  wire \aluout0_inferred__0/i__carry__4_n_0 ;
  wire \aluout0_inferred__0/i__carry__4_n_1 ;
  wire \aluout0_inferred__0/i__carry__4_n_2 ;
  wire \aluout0_inferred__0/i__carry__4_n_3 ;
  wire \aluout0_inferred__0/i__carry__5_n_0 ;
  wire \aluout0_inferred__0/i__carry__5_n_1 ;
  wire \aluout0_inferred__0/i__carry__5_n_2 ;
  wire \aluout0_inferred__0/i__carry__5_n_3 ;
  wire \aluout0_inferred__0/i__carry__6_n_1 ;
  wire \aluout0_inferred__0/i__carry__6_n_2 ;
  wire \aluout0_inferred__0/i__carry__6_n_3 ;
  wire \aluout0_inferred__0/i__carry_n_0 ;
  wire \aluout0_inferred__0/i__carry_n_1 ;
  wire \aluout0_inferred__0/i__carry_n_2 ;
  wire \aluout0_inferred__0/i__carry_n_3 ;
  wire [3:0]aluout2_carry__0_0;
  wire aluout2_carry__0_n_0;
  wire aluout2_carry__0_n_1;
  wire aluout2_carry__0_n_2;
  wire aluout2_carry__0_n_3;
  wire [3:0]aluout2_carry__1_0;
  wire [3:0]aluout2_carry__1_1;
  wire aluout2_carry__1_n_0;
  wire aluout2_carry__1_n_1;
  wire aluout2_carry__1_n_2;
  wire aluout2_carry__1_n_3;
  wire [3:0]aluout2_carry__2_0;
  wire [3:0]aluout2_carry__2_1;
  wire aluout2_carry__2_n_1;
  wire aluout2_carry__2_n_2;
  wire aluout2_carry__2_n_3;
  wire aluout2_carry_n_0;
  wire aluout2_carry_n_1;
  wire aluout2_carry_n_2;
  wire aluout2_carry_n_3;
  wire [31:0]data0;
  wire [31:0]data1;
  wire [3:0]\out[0]_i_6 ;
  wire [3:0]\out[0]_i_6_0 ;
  wire [3:0]\out[0]_i_6_1 ;
  wire [3:0]\out[12]_i_2__0 ;
  wire [3:0]\out[12]_i_4 ;
  wire [3:0]\out[16]_i_2__0 ;
  wire [3:0]\out[16]_i_4 ;
  wire [3:0]\out[20]_i_2__0 ;
  wire [3:0]\out[20]_i_4 ;
  wire [3:0]\out[24]_i_2__0 ;
  wire [3:0]\out[24]_i_4 ;
  wire [3:0]\out[28]_i_2__0 ;
  wire [3:0]\out[28]_i_4 ;
  wire [3:0]\out[4]_i_2 ;
  wire [3:0]\out[4]_i_4 ;
  wire [3:0]\out[8]_i_2__0 ;
  wire [3:0]\out[8]_i_4 ;
  wire [3:3]NLW_aluout0_carry__6_CO_UNCONNECTED;
  wire [3:3]\NLW_aluout0_inferred__0/i__carry__6_CO_UNCONNECTED ;
  wire [3:0]NLW_aluout2_carry_O_UNCONNECTED;
  wire [3:0]NLW_aluout2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_aluout2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_aluout2_carry__2_O_UNCONNECTED;

  CARRY4 aluout0_carry
       (.CI(1'b0),
        .CO({aluout0_carry_n_0,aluout0_carry_n_1,aluout0_carry_n_2,aluout0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O(data0[3:0]),
        .S(S));
  CARRY4 aluout0_carry__0
       (.CI(aluout0_carry_n_0),
        .CO({aluout0_carry__0_n_0,aluout0_carry__0_n_1,aluout0_carry__0_n_2,aluout0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(data0[7:4]),
        .S(\out[4]_i_4 ));
  CARRY4 aluout0_carry__1
       (.CI(aluout0_carry__0_n_0),
        .CO({aluout0_carry__1_n_0,aluout0_carry__1_n_1,aluout0_carry__1_n_2,aluout0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O(data0[11:8]),
        .S(\out[8]_i_4 ));
  CARRY4 aluout0_carry__2
       (.CI(aluout0_carry__1_n_0),
        .CO({aluout0_carry__2_n_0,aluout0_carry__2_n_1,aluout0_carry__2_n_2,aluout0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(Q[15:12]),
        .O(data0[15:12]),
        .S(\out[12]_i_4 ));
  CARRY4 aluout0_carry__3
       (.CI(aluout0_carry__2_n_0),
        .CO({aluout0_carry__3_n_0,aluout0_carry__3_n_1,aluout0_carry__3_n_2,aluout0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(Q[19:16]),
        .O(data0[19:16]),
        .S(\out[16]_i_4 ));
  CARRY4 aluout0_carry__4
       (.CI(aluout0_carry__3_n_0),
        .CO({aluout0_carry__4_n_0,aluout0_carry__4_n_1,aluout0_carry__4_n_2,aluout0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(Q[23:20]),
        .O(data0[23:20]),
        .S(\out[20]_i_4 ));
  CARRY4 aluout0_carry__5
       (.CI(aluout0_carry__4_n_0),
        .CO({aluout0_carry__5_n_0,aluout0_carry__5_n_1,aluout0_carry__5_n_2,aluout0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(Q[27:24]),
        .O(data0[27:24]),
        .S(\out[24]_i_4 ));
  CARRY4 aluout0_carry__6
       (.CI(aluout0_carry__5_n_0),
        .CO({NLW_aluout0_carry__6_CO_UNCONNECTED[3],aluout0_carry__6_n_1,aluout0_carry__6_n_2,aluout0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[30:28]}),
        .O(data0[31:28]),
        .S(\out[28]_i_4 ));
  CARRY4 \aluout0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\aluout0_inferred__0/i__carry_n_0 ,\aluout0_inferred__0/i__carry_n_1 ,\aluout0_inferred__0/i__carry_n_2 ,\aluout0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(Q[3:0]),
        .O(data1[3:0]),
        .S(\out[0]_i_6 ));
  CARRY4 \aluout0_inferred__0/i__carry__0 
       (.CI(\aluout0_inferred__0/i__carry_n_0 ),
        .CO({\aluout0_inferred__0/i__carry__0_n_0 ,\aluout0_inferred__0/i__carry__0_n_1 ,\aluout0_inferred__0/i__carry__0_n_2 ,\aluout0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(data1[7:4]),
        .S(\out[4]_i_2 ));
  CARRY4 \aluout0_inferred__0/i__carry__1 
       (.CI(\aluout0_inferred__0/i__carry__0_n_0 ),
        .CO({\aluout0_inferred__0/i__carry__1_n_0 ,\aluout0_inferred__0/i__carry__1_n_1 ,\aluout0_inferred__0/i__carry__1_n_2 ,\aluout0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O(data1[11:8]),
        .S(\out[8]_i_2__0 ));
  CARRY4 \aluout0_inferred__0/i__carry__2 
       (.CI(\aluout0_inferred__0/i__carry__1_n_0 ),
        .CO({\aluout0_inferred__0/i__carry__2_n_0 ,\aluout0_inferred__0/i__carry__2_n_1 ,\aluout0_inferred__0/i__carry__2_n_2 ,\aluout0_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[15:12]),
        .O(data1[15:12]),
        .S(\out[12]_i_2__0 ));
  CARRY4 \aluout0_inferred__0/i__carry__3 
       (.CI(\aluout0_inferred__0/i__carry__2_n_0 ),
        .CO({\aluout0_inferred__0/i__carry__3_n_0 ,\aluout0_inferred__0/i__carry__3_n_1 ,\aluout0_inferred__0/i__carry__3_n_2 ,\aluout0_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[19:16]),
        .O(data1[19:16]),
        .S(\out[16]_i_2__0 ));
  CARRY4 \aluout0_inferred__0/i__carry__4 
       (.CI(\aluout0_inferred__0/i__carry__3_n_0 ),
        .CO({\aluout0_inferred__0/i__carry__4_n_0 ,\aluout0_inferred__0/i__carry__4_n_1 ,\aluout0_inferred__0/i__carry__4_n_2 ,\aluout0_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[23:20]),
        .O(data1[23:20]),
        .S(\out[20]_i_2__0 ));
  CARRY4 \aluout0_inferred__0/i__carry__5 
       (.CI(\aluout0_inferred__0/i__carry__4_n_0 ),
        .CO({\aluout0_inferred__0/i__carry__5_n_0 ,\aluout0_inferred__0/i__carry__5_n_1 ,\aluout0_inferred__0/i__carry__5_n_2 ,\aluout0_inferred__0/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[27:24]),
        .O(data1[27:24]),
        .S(\out[24]_i_2__0 ));
  CARRY4 \aluout0_inferred__0/i__carry__6 
       (.CI(\aluout0_inferred__0/i__carry__5_n_0 ),
        .CO({\NLW_aluout0_inferred__0/i__carry__6_CO_UNCONNECTED [3],\aluout0_inferred__0/i__carry__6_n_1 ,\aluout0_inferred__0/i__carry__6_n_2 ,\aluout0_inferred__0/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,Q[30:28]}),
        .O(data1[31:28]),
        .S(\out[28]_i_2__0 ));
  CARRY4 aluout2_carry
       (.CI(1'b0),
        .CO({aluout2_carry_n_0,aluout2_carry_n_1,aluout2_carry_n_2,aluout2_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_aluout2_carry_O_UNCONNECTED[3:0]),
        .S(aluout2_carry__0_0));
  CARRY4 aluout2_carry__0
       (.CI(aluout2_carry_n_0),
        .CO({aluout2_carry__0_n_0,aluout2_carry__0_n_1,aluout2_carry__0_n_2,aluout2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(aluout2_carry__1_0),
        .O(NLW_aluout2_carry__0_O_UNCONNECTED[3:0]),
        .S(aluout2_carry__1_1));
  CARRY4 aluout2_carry__1
       (.CI(aluout2_carry__0_n_0),
        .CO({aluout2_carry__1_n_0,aluout2_carry__1_n_1,aluout2_carry__1_n_2,aluout2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(aluout2_carry__2_0),
        .O(NLW_aluout2_carry__1_O_UNCONNECTED[3:0]),
        .S(aluout2_carry__2_1));
  CARRY4 aluout2_carry__2
       (.CI(aluout2_carry__1_n_0),
        .CO({CO,aluout2_carry__2_n_1,aluout2_carry__2_n_2,aluout2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(\out[0]_i_6_0 ),
        .O(NLW_aluout2_carry__2_O_UNCONNECTED[3:0]),
        .S(\out[0]_i_6_1 ));
endmodule

module controller
   (aluoutE1,
    \q_reg[8] ,
    D,
    rtE1,
    \q_reg[4] ,
    \q_reg[4]_0 ,
    \q_reg[3] ,
    \q_reg[1] ,
    \q_reg[1]_0 ,
    \q_reg[1]_1 ,
    \q_reg[1]_2 ,
    \q_reg[1]_3 ,
    \q_reg[1]_4 ,
    \q_reg[1]_5 ,
    \q_reg[1]_6 ,
    \q_reg[1]_7 ,
    \q_reg[1]_8 ,
    \q_reg[1]_9 ,
    \q_reg[1]_10 ,
    \q_reg[1]_11 ,
    \q_reg[1]_12 ,
    \q_reg[2] ,
    \out_reg[2] ,
    \out_reg[1] ,
    \out_reg[30] ,
    \out_reg[30]_0 ,
    Q,
    data1,
    \out_reg[31] ,
    \out_reg[31]_0 ,
    \out_reg[27] ,
    \out_reg[27]_0 ,
    \out_reg[28] ,
    \out_reg[28]_0 ,
    \out_reg[29] ,
    \out_reg[29]_0 ,
    \out_reg[24] ,
    \out_reg[24]_0 ,
    \out_reg[25] ,
    \out_reg[25]_0 ,
    \out_reg[26] ,
    \out_reg[26]_0 ,
    \out_reg[21] ,
    \out_reg[21]_0 ,
    \out_reg[22] ,
    \out_reg[22]_0 ,
    \out_reg[23] ,
    \out_reg[23]_0 ,
    \out_reg[18] ,
    \out_reg[18]_0 ,
    \out_reg[19] ,
    \out_reg[19]_0 ,
    \out_reg[20] ,
    \out_reg[20]_0 ,
    \out_reg[16] ,
    \out_reg[16]_0 ,
    \out_reg[15] ,
    \out_reg[15]_0 ,
    \out_reg[17] ,
    \out_reg[17]_0 ,
    \out_reg[12] ,
    \out_reg[12]_0 ,
    \out_reg[13] ,
    \out_reg[13]_0 ,
    \out_reg[14] ,
    \out_reg[14]_0 ,
    \out_reg[9] ,
    \out_reg[9]_0 ,
    \out_reg[10] ,
    \out_reg[10]_0 ,
    \out_reg[11] ,
    \out_reg[11]_0 ,
    \out_reg[6] ,
    \out_reg[6]_0 ,
    \out_reg[7] ,
    \out_reg[7]_0 ,
    \out_reg[8] ,
    \out_reg[8]_0 ,
    \out_reg[3] ,
    \out_reg[3]_0 ,
    \out_reg[4] ,
    \out_reg[4]_0 ,
    \out_reg[5] ,
    \out_reg[5]_0 ,
    \out_reg[2]_0 ,
    \out_reg[2]_1 ,
    \out_reg[1]_0 ,
    \out_reg[1]_1 ,
    \out_reg[0] ,
    \out_reg[0]_0 ,
    CO,
    rdE,
    \out_reg[4]_1 ,
    forwardBD30_in,
    \q[31]_i_7 ,
    forwardAD32_in,
    \out_reg[30]_1 ,
    \out_reg[30]_2 ,
    \out_reg[29]_1 ,
    \q_reg[8]_0 ,
    CLK,
    AR);
  output [31:0]aluoutE1;
  output [5:0]\q_reg[8] ;
  output [4:0]D;
  output [0:0]rtE1;
  output \q_reg[4] ;
  output \q_reg[4]_0 ;
  output \q_reg[3] ;
  output \q_reg[1] ;
  output \q_reg[1]_0 ;
  output \q_reg[1]_1 ;
  output \q_reg[1]_2 ;
  output \q_reg[1]_3 ;
  output \q_reg[1]_4 ;
  output \q_reg[1]_5 ;
  output \q_reg[1]_6 ;
  output \q_reg[1]_7 ;
  output \q_reg[1]_8 ;
  output \q_reg[1]_9 ;
  output \q_reg[1]_10 ;
  output \q_reg[1]_11 ;
  output \q_reg[1]_12 ;
  output \q_reg[2] ;
  output [2:0]\out_reg[2] ;
  output [1:0]\out_reg[1] ;
  input \out_reg[30] ;
  input \out_reg[30]_0 ;
  input [31:0]Q;
  input [31:0]data1;
  input \out_reg[31] ;
  input \out_reg[31]_0 ;
  input \out_reg[27] ;
  input \out_reg[27]_0 ;
  input \out_reg[28] ;
  input \out_reg[28]_0 ;
  input \out_reg[29] ;
  input \out_reg[29]_0 ;
  input \out_reg[24] ;
  input \out_reg[24]_0 ;
  input \out_reg[25] ;
  input \out_reg[25]_0 ;
  input \out_reg[26] ;
  input \out_reg[26]_0 ;
  input \out_reg[21] ;
  input \out_reg[21]_0 ;
  input \out_reg[22] ;
  input \out_reg[22]_0 ;
  input \out_reg[23] ;
  input \out_reg[23]_0 ;
  input \out_reg[18] ;
  input \out_reg[18]_0 ;
  input \out_reg[19] ;
  input \out_reg[19]_0 ;
  input \out_reg[20] ;
  input \out_reg[20]_0 ;
  input \out_reg[16] ;
  input \out_reg[16]_0 ;
  input \out_reg[15] ;
  input \out_reg[15]_0 ;
  input \out_reg[17] ;
  input \out_reg[17]_0 ;
  input \out_reg[12] ;
  input \out_reg[12]_0 ;
  input \out_reg[13] ;
  input \out_reg[13]_0 ;
  input \out_reg[14] ;
  input \out_reg[14]_0 ;
  input \out_reg[9] ;
  input \out_reg[9]_0 ;
  input \out_reg[10] ;
  input \out_reg[10]_0 ;
  input \out_reg[11] ;
  input \out_reg[11]_0 ;
  input \out_reg[6] ;
  input \out_reg[6]_0 ;
  input \out_reg[7] ;
  input \out_reg[7]_0 ;
  input \out_reg[8] ;
  input \out_reg[8]_0 ;
  input \out_reg[3] ;
  input \out_reg[3]_0 ;
  input \out_reg[4] ;
  input \out_reg[4]_0 ;
  input \out_reg[5] ;
  input \out_reg[5]_0 ;
  input \out_reg[2]_0 ;
  input \out_reg[2]_1 ;
  input \out_reg[1]_0 ;
  input \out_reg[1]_1 ;
  input \out_reg[0] ;
  input \out_reg[0]_0 ;
  input [0:0]CO;
  input [4:0]rdE;
  input [4:0]\out_reg[4]_1 ;
  input forwardBD30_in;
  input [1:0]\q[31]_i_7 ;
  input forwardAD32_in;
  input [29:0]\out_reg[30]_1 ;
  input [29:0]\out_reg[30]_2 ;
  input [10:0]\out_reg[29]_1 ;
  input [8:0]\q_reg[8]_0 ;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]CO;
  wire [4:0]D;
  wire [31:0]Q;
  wire [31:0]aluoutE1;
  wire [1:1]d;
  wire [31:0]data1;
  wire forwardAD32_in;
  wire forwardBD30_in;
  wire \out_reg[0] ;
  wire \out_reg[0]_0 ;
  wire \out_reg[10] ;
  wire \out_reg[10]_0 ;
  wire \out_reg[11] ;
  wire \out_reg[11]_0 ;
  wire \out_reg[12] ;
  wire \out_reg[12]_0 ;
  wire \out_reg[13] ;
  wire \out_reg[13]_0 ;
  wire \out_reg[14] ;
  wire \out_reg[14]_0 ;
  wire \out_reg[15] ;
  wire \out_reg[15]_0 ;
  wire \out_reg[16] ;
  wire \out_reg[16]_0 ;
  wire \out_reg[17] ;
  wire \out_reg[17]_0 ;
  wire \out_reg[18] ;
  wire \out_reg[18]_0 ;
  wire \out_reg[19] ;
  wire \out_reg[19]_0 ;
  wire [1:0]\out_reg[1] ;
  wire \out_reg[1]_0 ;
  wire \out_reg[1]_1 ;
  wire \out_reg[20] ;
  wire \out_reg[20]_0 ;
  wire \out_reg[21] ;
  wire \out_reg[21]_0 ;
  wire \out_reg[22] ;
  wire \out_reg[22]_0 ;
  wire \out_reg[23] ;
  wire \out_reg[23]_0 ;
  wire \out_reg[24] ;
  wire \out_reg[24]_0 ;
  wire \out_reg[25] ;
  wire \out_reg[25]_0 ;
  wire \out_reg[26] ;
  wire \out_reg[26]_0 ;
  wire \out_reg[27] ;
  wire \out_reg[27]_0 ;
  wire \out_reg[28] ;
  wire \out_reg[28]_0 ;
  wire \out_reg[29] ;
  wire \out_reg[29]_0 ;
  wire [10:0]\out_reg[29]_1 ;
  wire [2:0]\out_reg[2] ;
  wire \out_reg[2]_0 ;
  wire \out_reg[2]_1 ;
  wire \out_reg[30] ;
  wire \out_reg[30]_0 ;
  wire [29:0]\out_reg[30]_1 ;
  wire [29:0]\out_reg[30]_2 ;
  wire \out_reg[31] ;
  wire \out_reg[31]_0 ;
  wire \out_reg[3] ;
  wire \out_reg[3]_0 ;
  wire \out_reg[4] ;
  wire \out_reg[4]_0 ;
  wire [4:0]\out_reg[4]_1 ;
  wire \out_reg[5] ;
  wire \out_reg[5]_0 ;
  wire \out_reg[6] ;
  wire \out_reg[6]_0 ;
  wire \out_reg[7] ;
  wire \out_reg[7]_0 ;
  wire \out_reg[8] ;
  wire \out_reg[8]_0 ;
  wire \out_reg[9] ;
  wire \out_reg[9]_0 ;
  wire [1:0]\q[31]_i_7 ;
  wire \q_reg[1] ;
  wire \q_reg[1]_0 ;
  wire \q_reg[1]_1 ;
  wire \q_reg[1]_10 ;
  wire \q_reg[1]_11 ;
  wire \q_reg[1]_12 ;
  wire \q_reg[1]_2 ;
  wire \q_reg[1]_3 ;
  wire \q_reg[1]_4 ;
  wire \q_reg[1]_5 ;
  wire \q_reg[1]_6 ;
  wire \q_reg[1]_7 ;
  wire \q_reg[1]_8 ;
  wire \q_reg[1]_9 ;
  wire \q_reg[2] ;
  wire \q_reg[3] ;
  wire \q_reg[4] ;
  wire \q_reg[4]_0 ;
  wire [5:0]\q_reg[8] ;
  wire [8:0]\q_reg[8]_0 ;
  wire [4:0]rdE;
  wire [0:0]rtE1;

  floprc regE
       (.AR(AR),
        .CLK(CLK),
        .CO(CO),
        .D(D),
        .Q(Q),
        .aluoutE1(aluoutE1),
        .data1(data1),
        .forwardAD32_in(forwardAD32_in),
        .forwardBD30_in(forwardBD30_in),
        .\out_reg[0] (\out_reg[0] ),
        .\out_reg[0]_0 (\out_reg[0]_0 ),
        .\out_reg[10] (\out_reg[10] ),
        .\out_reg[10]_0 (\out_reg[10]_0 ),
        .\out_reg[11] (\out_reg[11] ),
        .\out_reg[11]_0 (\out_reg[11]_0 ),
        .\out_reg[12] (\out_reg[12] ),
        .\out_reg[12]_0 (\out_reg[12]_0 ),
        .\out_reg[13] (\out_reg[13] ),
        .\out_reg[13]_0 (\out_reg[13]_0 ),
        .\out_reg[14] (\out_reg[14] ),
        .\out_reg[14]_0 (\out_reg[14]_0 ),
        .\out_reg[15] (\out_reg[15] ),
        .\out_reg[15]_0 (\out_reg[15]_0 ),
        .\out_reg[16] (\out_reg[16] ),
        .\out_reg[16]_0 (\out_reg[16]_0 ),
        .\out_reg[17] (\out_reg[17] ),
        .\out_reg[17]_0 (\out_reg[17]_0 ),
        .\out_reg[18] (\out_reg[18] ),
        .\out_reg[18]_0 (\out_reg[18]_0 ),
        .\out_reg[19] (\out_reg[19] ),
        .\out_reg[19]_0 (\out_reg[19]_0 ),
        .\out_reg[1] (\out_reg[1]_0 ),
        .\out_reg[1]_0 (\out_reg[1]_1 ),
        .\out_reg[20] (\out_reg[20] ),
        .\out_reg[20]_0 (\out_reg[20]_0 ),
        .\out_reg[21] (\out_reg[21] ),
        .\out_reg[21]_0 (\out_reg[21]_0 ),
        .\out_reg[22] (\out_reg[22] ),
        .\out_reg[22]_0 (\out_reg[22]_0 ),
        .\out_reg[23] (\out_reg[23] ),
        .\out_reg[23]_0 (\out_reg[23]_0 ),
        .\out_reg[24] (\out_reg[24] ),
        .\out_reg[24]_0 (\out_reg[24]_0 ),
        .\out_reg[25] (\out_reg[25] ),
        .\out_reg[25]_0 (\out_reg[25]_0 ),
        .\out_reg[26] (\out_reg[26] ),
        .\out_reg[26]_0 (\out_reg[26]_0 ),
        .\out_reg[27] (\out_reg[27] ),
        .\out_reg[27]_0 (\out_reg[27]_0 ),
        .\out_reg[28] (\out_reg[28] ),
        .\out_reg[28]_0 (\out_reg[28]_0 ),
        .\out_reg[29] (\out_reg[29] ),
        .\out_reg[29]_0 (\out_reg[29]_0 ),
        .\out_reg[29]_1 (\out_reg[29]_1 ),
        .\out_reg[2] (\out_reg[2]_0 ),
        .\out_reg[2]_0 (\out_reg[2]_1 ),
        .\out_reg[30] (\out_reg[30] ),
        .\out_reg[30]_0 (\out_reg[30]_0 ),
        .\out_reg[30]_1 (\out_reg[30]_1 ),
        .\out_reg[30]_2 (\out_reg[30]_2 ),
        .\out_reg[31] (\out_reg[31] ),
        .\out_reg[31]_0 (\out_reg[31]_0 ),
        .\out_reg[3] (\out_reg[3] ),
        .\out_reg[3]_0 (\out_reg[3]_0 ),
        .\out_reg[4] (\out_reg[4] ),
        .\out_reg[4]_0 (\out_reg[4]_0 ),
        .\out_reg[4]_1 (\out_reg[4]_1 ),
        .\out_reg[5] (\out_reg[5] ),
        .\out_reg[5]_0 (\out_reg[5]_0 ),
        .\out_reg[6] (\out_reg[6] ),
        .\out_reg[6]_0 (\out_reg[6]_0 ),
        .\out_reg[7] (\out_reg[7] ),
        .\out_reg[7]_0 (\out_reg[7]_0 ),
        .\out_reg[8] (\out_reg[8] ),
        .\out_reg[8]_0 (\out_reg[8]_0 ),
        .\out_reg[9] (\out_reg[9] ),
        .\out_reg[9]_0 (\out_reg[9]_0 ),
        .\q[31]_i_7 (\q[31]_i_7 ),
        .\q_reg[1]_0 (\q_reg[1] ),
        .\q_reg[1]_1 (\q_reg[1]_0 ),
        .\q_reg[1]_10 (\q_reg[1]_9 ),
        .\q_reg[1]_11 (\q_reg[1]_10 ),
        .\q_reg[1]_12 (\q_reg[1]_11 ),
        .\q_reg[1]_13 (\q_reg[1]_12 ),
        .\q_reg[1]_2 (\q_reg[1]_1 ),
        .\q_reg[1]_3 (\q_reg[1]_2 ),
        .\q_reg[1]_4 (\q_reg[1]_3 ),
        .\q_reg[1]_5 (\q_reg[1]_4 ),
        .\q_reg[1]_6 (\q_reg[1]_5 ),
        .\q_reg[1]_7 (\q_reg[1]_6 ),
        .\q_reg[1]_8 (\q_reg[1]_7 ),
        .\q_reg[1]_9 (\q_reg[1]_8 ),
        .\q_reg[2]_0 (\q_reg[2] ),
        .\q_reg[3]_0 (\q_reg[3] ),
        .\q_reg[4]_0 (\q_reg[4] ),
        .\q_reg[4]_1 (\q_reg[4]_0 ),
        .\q_reg[8]_0 ({\q_reg[8] [5],d,\q_reg[8] [4:0]}),
        .\q_reg[8]_1 (\q_reg[8]_0 ),
        .rdE(rdE),
        .rtE1(rtE1));
  flopr regM
       (.AR(AR),
        .CLK(CLK),
        .D({\q_reg[8] [5],d,\q_reg[8] [3]}),
        .\out_reg[2]_0 (\out_reg[2] ));
  flopr__parameterized0 regW
       (.AR(AR),
        .CLK(CLK),
        .\out_reg[1]_0 (\out_reg[1] ),
        .\out_reg[1]_1 ({\out_reg[2] [2],\out_reg[2] [0]}));
endmodule

module datapath
   (Q,
    \q_reg[22] ,
    \q_reg[30] ,
    data1,
    CO,
    rdE,
    \q_reg[31] ,
    \q_reg[30]_0 ,
    flushD_OBUF,
    forwardBD30_in,
    \out_reg[31] ,
    \q_reg[29] ,
    \q_reg[4] ,
    stallD_OBUF,
    \q_reg[1] ,
    \q_reg[0] ,
    \q_reg[0]_0 ,
    \q_reg[0]_1 ,
    \q_reg[0]_2 ,
    \q_reg[0]_3 ,
    \q_reg[0]_4 ,
    \q_reg[0]_5 ,
    \q_reg[0]_6 ,
    \q_reg[0]_7 ,
    \q_reg[0]_8 ,
    \q_reg[0]_9 ,
    \q_reg[0]_10 ,
    \q_reg[0]_11 ,
    \q_reg[0]_12 ,
    \q_reg[31]_0 ,
    \q_reg[2] ,
    \q_reg[1]_0 ,
    \q_reg[1]_1 ,
    \q_reg[1]_2 ,
    \q_reg[1]_3 ,
    \q_reg[1]_4 ,
    \q_reg[1]_5 ,
    \q_reg[1]_6 ,
    \q_reg[1]_7 ,
    \q_reg[1]_8 ,
    \q_reg[1]_9 ,
    \q_reg[1]_10 ,
    \q_reg[2]_0 ,
    \q_reg[1]_11 ,
    \q_reg[1]_12 ,
    \q_reg[1]_13 ,
    \q_reg[1]_14 ,
    \q_reg[1]_15 ,
    \q_reg[1]_16 ,
    \q_reg[1]_17 ,
    \q_reg[1]_18 ,
    \q_reg[1]_19 ,
    \q_reg[1]_20 ,
    \q_reg[1]_21 ,
    \q_reg[1]_22 ,
    \q_reg[1]_23 ,
    \q_reg[1]_24 ,
    \q_reg[1]_25 ,
    \q_reg[1]_26 ,
    \q_reg[1]_27 ,
    \q_reg[1]_28 ,
    \q_reg[1]_29 ,
    \q_reg[1]_30 ,
    \q_reg[1]_31 ,
    \q_reg[1]_32 ,
    \q_reg[1]_33 ,
    \q_reg[1]_34 ,
    \q_reg[1]_35 ,
    \q_reg[1]_36 ,
    \q_reg[1]_37 ,
    \q_reg[1]_38 ,
    \q_reg[1]_39 ,
    \q_reg[1]_40 ,
    \q_reg[1]_41 ,
    forwardAD32_in,
    \q_reg[1]_42 ,
    \q_reg[1]_43 ,
    \q_reg[1]_44 ,
    \q_reg[1]_45 ,
    \q_reg[31]_1 ,
    \out_reg[31]_0 ,
    CLK,
    AR,
    \q_reg[0]_13 ,
    aluoutE1,
    D,
    \q[31]_i_5 ,
    \out_reg[4] ,
    \q[31]_i_3 ,
    \q[31]_i_8__0 ,
    rtE1,
    \out_reg[31]_1 ,
    \out_reg[27] ,
    \out_reg[28] ,
    \out_reg[24] ,
    \out_reg[25] ,
    \out_reg[26] ,
    \out_reg[21] ,
    \out_reg[22] ,
    \out_reg[23] ,
    \out_reg[18] ,
    \out_reg[19] ,
    \out_reg[20] ,
    \out_reg[16] ,
    \out_reg[17] ,
    \out_reg[5] ,
    \out_reg[0] ,
    instr_IBUF,
    rf_reg_r1_0_31_0_5);
  output [31:0]Q;
  output [1:0]\q_reg[22] ;
  output [29:0]\q_reg[30] ;
  output [31:0]data1;
  output [0:0]CO;
  output [4:0]rdE;
  output [10:0]\q_reg[31] ;
  output [29:0]\q_reg[30]_0 ;
  output flushD_OBUF;
  output forwardBD30_in;
  output [31:0]\out_reg[31] ;
  output [8:0]\q_reg[29] ;
  output [4:0]\q_reg[4] ;
  output stallD_OBUF;
  output \q_reg[1] ;
  output \q_reg[0] ;
  output \q_reg[0]_0 ;
  output \q_reg[0]_1 ;
  output \q_reg[0]_2 ;
  output \q_reg[0]_3 ;
  output \q_reg[0]_4 ;
  output \q_reg[0]_5 ;
  output \q_reg[0]_6 ;
  output \q_reg[0]_7 ;
  output \q_reg[0]_8 ;
  output \q_reg[0]_9 ;
  output \q_reg[0]_10 ;
  output \q_reg[0]_11 ;
  output \q_reg[0]_12 ;
  output \q_reg[31]_0 ;
  output \q_reg[2] ;
  output \q_reg[1]_0 ;
  output \q_reg[1]_1 ;
  output \q_reg[1]_2 ;
  output \q_reg[1]_3 ;
  output \q_reg[1]_4 ;
  output \q_reg[1]_5 ;
  output \q_reg[1]_6 ;
  output \q_reg[1]_7 ;
  output \q_reg[1]_8 ;
  output \q_reg[1]_9 ;
  output \q_reg[1]_10 ;
  output \q_reg[2]_0 ;
  output \q_reg[1]_11 ;
  output \q_reg[1]_12 ;
  output \q_reg[1]_13 ;
  output \q_reg[1]_14 ;
  output \q_reg[1]_15 ;
  output \q_reg[1]_16 ;
  output \q_reg[1]_17 ;
  output \q_reg[1]_18 ;
  output \q_reg[1]_19 ;
  output \q_reg[1]_20 ;
  output \q_reg[1]_21 ;
  output \q_reg[1]_22 ;
  output \q_reg[1]_23 ;
  output \q_reg[1]_24 ;
  output \q_reg[1]_25 ;
  output \q_reg[1]_26 ;
  output \q_reg[1]_27 ;
  output \q_reg[1]_28 ;
  output \q_reg[1]_29 ;
  output \q_reg[1]_30 ;
  output \q_reg[1]_31 ;
  output \q_reg[1]_32 ;
  output \q_reg[1]_33 ;
  output \q_reg[1]_34 ;
  output \q_reg[1]_35 ;
  output \q_reg[1]_36 ;
  output \q_reg[1]_37 ;
  output \q_reg[1]_38 ;
  output \q_reg[1]_39 ;
  output \q_reg[1]_40 ;
  output \q_reg[1]_41 ;
  output forwardAD32_in;
  output \q_reg[1]_42 ;
  output \q_reg[1]_43 ;
  output \q_reg[1]_44 ;
  output \q_reg[1]_45 ;
  output [31:0]\q_reg[31]_1 ;
  output [31:0]\out_reg[31]_0 ;
  input CLK;
  input [0:0]AR;
  input [5:0]\q_reg[0]_13 ;
  input [31:0]aluoutE1;
  input [31:0]D;
  input [1:0]\q[31]_i_5 ;
  input [4:0]\out_reg[4] ;
  input \q[31]_i_3 ;
  input \q[31]_i_8__0 ;
  input [0:0]rtE1;
  input \out_reg[31]_1 ;
  input \out_reg[27] ;
  input \out_reg[28] ;
  input \out_reg[24] ;
  input \out_reg[25] ;
  input \out_reg[26] ;
  input \out_reg[21] ;
  input \out_reg[22] ;
  input \out_reg[23] ;
  input \out_reg[18] ;
  input \out_reg[19] ;
  input \out_reg[20] ;
  input \out_reg[16] ;
  input \out_reg[17] ;
  input \out_reg[5] ;
  input \out_reg[0] ;
  input [31:0]instr_IBUF;
  input [1:0]rf_reg_r1_0_31_0_5;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]CO;
  wire [31:0]D;
  wire [31:0]Q;
  wire [31:0]aluoutE1;
  wire [31:0]aluoutW;
  wire [31:0]data0;
  wire [31:0]data1;
  wire en0;
  wire equalD;
  wire flushD_OBUF;
  wire forwardAD32_in;
  wire forwardBD30_in;
  wire [5:0]functD;
  wire [25:6]instrD;
  wire [31:0]instr_IBUF;
  wire \out_reg[0] ;
  wire \out_reg[16] ;
  wire \out_reg[17] ;
  wire \out_reg[18] ;
  wire \out_reg[19] ;
  wire \out_reg[20] ;
  wire \out_reg[21] ;
  wire \out_reg[22] ;
  wire \out_reg[23] ;
  wire \out_reg[24] ;
  wire \out_reg[25] ;
  wire \out_reg[26] ;
  wire \out_reg[27] ;
  wire \out_reg[28] ;
  wire [31:0]\out_reg[31] ;
  wire [31:0]\out_reg[31]_0 ;
  wire \out_reg[31]_1 ;
  wire [4:0]\out_reg[4] ;
  wire \out_reg[5] ;
  wire [31:0]p_0_in;
  wire [31:0]p_0_in_0;
  wire [31:0]p_0_in_1;
  wire [31:0]p_0_in_2;
  wire [31:2]pcbranchD;
  wire [31:0]pcnextFD;
  wire [31:0]pcplus4D;
  wire [31:2]pcplus4F;
  wire \q[31]_i_3 ;
  wire [1:0]\q[31]_i_5 ;
  wire \q[31]_i_8__0 ;
  wire \q_reg[0] ;
  wire \q_reg[0]_0 ;
  wire \q_reg[0]_1 ;
  wire \q_reg[0]_10 ;
  wire \q_reg[0]_11 ;
  wire \q_reg[0]_12 ;
  wire [5:0]\q_reg[0]_13 ;
  wire \q_reg[0]_2 ;
  wire \q_reg[0]_3 ;
  wire \q_reg[0]_4 ;
  wire \q_reg[0]_5 ;
  wire \q_reg[0]_6 ;
  wire \q_reg[0]_7 ;
  wire \q_reg[0]_8 ;
  wire \q_reg[0]_9 ;
  wire \q_reg[1] ;
  wire \q_reg[1]_0 ;
  wire \q_reg[1]_1 ;
  wire \q_reg[1]_10 ;
  wire \q_reg[1]_11 ;
  wire \q_reg[1]_12 ;
  wire \q_reg[1]_13 ;
  wire \q_reg[1]_14 ;
  wire \q_reg[1]_15 ;
  wire \q_reg[1]_16 ;
  wire \q_reg[1]_17 ;
  wire \q_reg[1]_18 ;
  wire \q_reg[1]_19 ;
  wire \q_reg[1]_2 ;
  wire \q_reg[1]_20 ;
  wire \q_reg[1]_21 ;
  wire \q_reg[1]_22 ;
  wire \q_reg[1]_23 ;
  wire \q_reg[1]_24 ;
  wire \q_reg[1]_25 ;
  wire \q_reg[1]_26 ;
  wire \q_reg[1]_27 ;
  wire \q_reg[1]_28 ;
  wire \q_reg[1]_29 ;
  wire \q_reg[1]_3 ;
  wire \q_reg[1]_30 ;
  wire \q_reg[1]_31 ;
  wire \q_reg[1]_32 ;
  wire \q_reg[1]_33 ;
  wire \q_reg[1]_34 ;
  wire \q_reg[1]_35 ;
  wire \q_reg[1]_36 ;
  wire \q_reg[1]_37 ;
  wire \q_reg[1]_38 ;
  wire \q_reg[1]_39 ;
  wire \q_reg[1]_4 ;
  wire \q_reg[1]_40 ;
  wire \q_reg[1]_41 ;
  wire \q_reg[1]_42 ;
  wire \q_reg[1]_43 ;
  wire \q_reg[1]_44 ;
  wire \q_reg[1]_45 ;
  wire \q_reg[1]_5 ;
  wire \q_reg[1]_6 ;
  wire \q_reg[1]_7 ;
  wire \q_reg[1]_8 ;
  wire \q_reg[1]_9 ;
  wire [1:0]\q_reg[22] ;
  wire [8:0]\q_reg[29] ;
  wire \q_reg[2] ;
  wire \q_reg[2]_0 ;
  wire [29:0]\q_reg[30] ;
  wire [29:0]\q_reg[30]_0 ;
  wire [10:0]\q_reg[31] ;
  wire \q_reg[31]_0 ;
  wire [31:0]\q_reg[31]_1 ;
  wire [4:0]\q_reg[4] ;
  wire r1E_n_0;
  wire r1E_n_100;
  wire r1E_n_101;
  wire r1E_n_102;
  wire r1E_n_103;
  wire r1E_n_104;
  wire r1E_n_105;
  wire r1E_n_106;
  wire r1E_n_107;
  wire r1E_n_108;
  wire r1E_n_109;
  wire r1E_n_110;
  wire r1E_n_111;
  wire r1E_n_112;
  wire r1E_n_113;
  wire r1E_n_114;
  wire r1E_n_115;
  wire r1E_n_116;
  wire r1E_n_117;
  wire r1E_n_118;
  wire r1E_n_119;
  wire r1E_n_33;
  wire r1E_n_35;
  wire r1E_n_37;
  wire r1E_n_52;
  wire r1E_n_87;
  wire r1E_n_88;
  wire r1E_n_89;
  wire r1E_n_90;
  wire r1E_n_91;
  wire r1E_n_92;
  wire r1E_n_93;
  wire r1E_n_94;
  wire r1E_n_95;
  wire r1E_n_96;
  wire r1E_n_97;
  wire r1E_n_98;
  wire r1E_n_99;
  wire r2D_n_126;
  wire r2D_n_127;
  wire r2D_n_128;
  wire r2D_n_129;
  wire r2D_n_130;
  wire r2D_n_131;
  wire r2D_n_132;
  wire r2D_n_133;
  wire r2D_n_158;
  wire r2D_n_159;
  wire r2D_n_160;
  wire r2D_n_161;
  wire r2D_n_162;
  wire r2D_n_163;
  wire r2D_n_164;
  wire r2D_n_165;
  wire r2D_n_166;
  wire r2D_n_167;
  wire r2D_n_169;
  wire r2D_n_170;
  wire r2D_n_172;
  wire r2D_n_173;
  wire r2D_n_174;
  wire r2D_n_176;
  wire r2D_n_177;
  wire r2D_n_178;
  wire r2D_n_179;
  wire r2D_n_180;
  wire r2D_n_181;
  wire r2D_n_182;
  wire r2D_n_183;
  wire r2D_n_184;
  wire r2D_n_185;
  wire r2D_n_186;
  wire r2D_n_187;
  wire r2D_n_188;
  wire r2D_n_189;
  wire r2D_n_190;
  wire r2D_n_191;
  wire r2D_n_192;
  wire r2D_n_193;
  wire r2D_n_194;
  wire r2D_n_195;
  wire r2D_n_196;
  wire r2D_n_197;
  wire r2D_n_198;
  wire r2D_n_199;
  wire r2D_n_91;
  wire r2D_n_92;
  wire r2D_n_93;
  wire r2E_n_0;
  wire r2E_n_1;
  wire r2E_n_100;
  wire r2E_n_101;
  wire r2E_n_102;
  wire r2E_n_103;
  wire r2E_n_104;
  wire r2E_n_105;
  wire r2E_n_106;
  wire r2E_n_107;
  wire r2E_n_108;
  wire r2E_n_109;
  wire r2E_n_110;
  wire r2E_n_111;
  wire r2E_n_112;
  wire r2E_n_113;
  wire r2E_n_114;
  wire r2E_n_115;
  wire r2E_n_116;
  wire r2E_n_117;
  wire r2E_n_2;
  wire r2E_n_3;
  wire r2E_n_36;
  wire r2E_n_37;
  wire r2E_n_38;
  wire r2E_n_39;
  wire r2E_n_40;
  wire r2E_n_41;
  wire r2E_n_42;
  wire r2E_n_43;
  wire r2E_n_44;
  wire r2E_n_45;
  wire r2E_n_46;
  wire r2E_n_47;
  wire r2E_n_52;
  wire r2E_n_57;
  wire r2E_n_60;
  wire r2E_n_61;
  wire r2E_n_62;
  wire r2E_n_63;
  wire r2E_n_64;
  wire r2E_n_80;
  wire r2E_n_82;
  wire r2E_n_83;
  wire r2E_n_84;
  wire r2E_n_85;
  wire r2E_n_86;
  wire r2E_n_87;
  wire r2E_n_88;
  wire r2E_n_89;
  wire r2E_n_90;
  wire r2E_n_91;
  wire r2E_n_92;
  wire r2E_n_93;
  wire r2E_n_94;
  wire r2E_n_95;
  wire r2E_n_96;
  wire r2E_n_97;
  wire r2E_n_98;
  wire r2E_n_99;
  wire r3E_n_0;
  wire r3E_n_1;
  wire r3E_n_2;
  wire r3E_n_27;
  wire r3E_n_28;
  wire r3E_n_29;
  wire r3E_n_3;
  wire r3E_n_30;
  wire r3E_n_31;
  wire r3E_n_32;
  wire r3E_n_33;
  wire r3E_n_34;
  wire r3E_n_35;
  wire r3E_n_36;
  wire r3E_n_37;
  wire r3E_n_38;
  wire r3E_n_39;
  wire r3E_n_40;
  wire r3E_n_41;
  wire r3E_n_42;
  wire r3E_n_43;
  wire r3E_n_44;
  wire r3E_n_45;
  wire r3E_n_46;
  wire r3E_n_47;
  wire r3E_n_48;
  wire r3E_n_49;
  wire r3E_n_50;
  wire r3E_n_51;
  wire r3E_n_52;
  wire r3E_n_53;
  wire r3E_n_54;
  wire r3E_n_55;
  wire r3E_n_56;
  wire r3E_n_57;
  wire r3E_n_58;
  wire r3E_n_59;
  wire r3E_n_60;
  wire r3E_n_61;
  wire r3M_n_0;
  wire r3M_n_6;
  wire r6E_n_12;
  wire r6E_n_13;
  wire r6E_n_14;
  wire r6E_n_15;
  wire r6E_n_16;
  wire r6E_n_17;
  wire r6E_n_18;
  wire r6E_n_5;
  wire r6E_n_6;
  wire [31:0]rd10;
  wire [31:0]rd20;
  wire [4:0]rdE;
  wire [31:0]readdataW;
  wire [31:0]resultW;
  wire [1:0]rf_reg_r1_0_31_0_5;
  wire [0:0]rtE1;
  wire [29:29]signimmD;
  wire [0:0]signimmE;
  wire [31:0]srcaE;
  wire [30:0]srcb3E;
  wire [31:31]srcb3E__0;
  wire [31:0]srcbE;
  wire stallD_OBUF;
  wire [4:0]writeregM;
  wire [4:0]writeregW;

  alu alu
       (.CO(CO),
        .DI({r3E_n_27,r3E_n_28,r3E_n_29,r3E_n_30}),
        .Q({\q_reg[30] ,srcaE[0]}),
        .S({r1E_n_92,r1E_n_93,r1E_n_94,r1E_n_95}),
        .aluout2_carry__0_0({r3E_n_0,r3E_n_1,r3E_n_2,r3E_n_3}),
        .aluout2_carry__1_0({r6E_n_12,r6E_n_13,r1E_n_33,r3E_n_32}),
        .aluout2_carry__1_1({r6E_n_5,r6E_n_6,r1E_n_0,r3E_n_31}),
        .aluout2_carry__2_0({r2E_n_36,r2E_n_37,r2E_n_38,r2E_n_39}),
        .aluout2_carry__2_1({r2E_n_0,r2E_n_1,r2E_n_2,r2E_n_3}),
        .data0(data0),
        .data1(data1),
        .\out[0]_i_6 ({r3E_n_51,r3E_n_52,r3E_n_53,r3E_n_54}),
        .\out[0]_i_6_0 ({r2E_n_44,r2E_n_45,r2E_n_46,r2E_n_47}),
        .\out[0]_i_6_1 ({r2E_n_40,r2E_n_41,r2E_n_42,r2E_n_43}),
        .\out[12]_i_2__0 ({r6E_n_15,r6E_n_16,r6E_n_17,r6E_n_18}),
        .\out[12]_i_4 ({r1E_n_104,r1E_n_105,r1E_n_106,r1E_n_107}),
        .\out[16]_i_2__0 ({r2E_n_103,r2E_n_104,r2E_n_105,r2E_n_106}),
        .\out[16]_i_4 ({r1E_n_108,r1E_n_109,r1E_n_110,r1E_n_111}),
        .\out[20]_i_2__0 ({r2E_n_107,r2E_n_108,r2E_n_109,r2E_n_110}),
        .\out[20]_i_4 ({r1E_n_112,r1E_n_113,r1E_n_114,r1E_n_115}),
        .\out[24]_i_2__0 ({r2E_n_111,r2E_n_112,r2E_n_113,r2E_n_114}),
        .\out[24]_i_4 ({r1E_n_116,r1E_n_117,r1E_n_118,r1E_n_119}),
        .\out[28]_i_2__0 ({r1E_n_91,r2E_n_115,r2E_n_116,r2E_n_117}),
        .\out[28]_i_4 ({r1E_n_87,r1E_n_88,r1E_n_89,r1E_n_90}),
        .\out[4]_i_2 ({r3E_n_55,r3E_n_56,r3E_n_57,r3E_n_58}),
        .\out[4]_i_4 ({r1E_n_96,r1E_n_97,r1E_n_98,r1E_n_99}),
        .\out[8]_i_2__0 ({r6E_n_14,r3E_n_59,r3E_n_60,r3E_n_61}),
        .\out[8]_i_4 ({r1E_n_100,r1E_n_101,r1E_n_102,r1E_n_103}));
  eqcmp comp
       (.CO(equalD),
        .S({r2D_n_130,r2D_n_131,r2D_n_132,r2D_n_133}),
        .eq_carry__1_0({r2D_n_126,r2D_n_127,r2D_n_128,r2D_n_129}),
        .\out[1]_i_2__0 ({r2D_n_91,r2D_n_92,r2D_n_93}));
  adder pcadd1
       (.D(pcplus4F[31:3]),
        .Q(Q[31:2]));
  adder_0 pcadd2
       (.Q({instrD[15:6],functD}),
        .S({r2D_n_172,r2D_n_173,r2D_n_174,pcbranchD[2]}),
        .\out[10]_i_3 ({r2D_n_180,r2D_n_181,r2D_n_182,r2D_n_183}),
        .\out[14]_i_3 ({r2D_n_184,r2D_n_185,r2D_n_186,r2D_n_187}),
        .\out[18]_i_3 ({r2D_n_188,r2D_n_189,r2D_n_190,r2D_n_191}),
        .\out[22]_i_3 ({r2D_n_192,r2D_n_193,r2D_n_194,r2D_n_195}),
        .\out[26]_i_3 ({r2D_n_196,r2D_n_197,r2D_n_198,r2D_n_199}),
        .\out[30]_i_3 ({r2D_n_169,r2D_n_170}),
        .\out[6]_i_3 ({r2D_n_176,r2D_n_177,r2D_n_178,r2D_n_179}),
        .pcbranchD(pcbranchD[31:3]),
        .signimmD(signimmD));
  flopenr pcreg
       (.AR(AR),
        .CLK(CLK),
        .D({pcplus4F[2],Q[1:0]}),
        .E(en0),
        .Q(Q[31:2]),
        .\out_reg[31]_0 (pcnextFD));
  flopenr_1 r1D
       (.AR(AR),
        .CLK(CLK),
        .D(p_0_in),
        .E(en0),
        .Q(pcplus4D),
        .\out_reg[31]_0 ({pcplus4F,Q[1:0]}),
        .\q_reg[0] (flushD_OBUF));
  floprc__parameterized0 r1E
       (.AR(AR),
        .CLK(CLK),
        .D(p_0_in_1),
        .Q({srcbE[31],\q_reg[30]_0 ,srcbE[0]}),
        .S({r1E_n_92,r1E_n_93,r1E_n_94,r1E_n_95}),
        .aluout0_carry({\q_reg[0]_13 [4],\q_reg[0]_13 [2:1]}),
        .aluout0_carry__2(rdE[1]),
        .aluout0_carry__2_0(rdE[2]),
        .aluout0_carry__2_1(rdE[3]),
        .aluout0_carry__2_2(rdE[4]),
        .aluout0_carry__3({\q_reg[31] ,signimmE}),
        .aluout2_carry__0(rdE[0]),
        .data0(data0),
        .\out[0]_i_5_0 (r2E_n_101),
        .\out[0]_i_5_1 (r3E_n_33),
        .\out[12]_i_4_0 (r3E_n_37),
        .\out[12]_i_4_1 (r3E_n_42),
        .\out[13]_i_4_0 (r3E_n_43),
        .\out[15]_i_4_0 (r3E_n_39),
        .\out[16]_i_4_0 (r3E_n_44),
        .\out[16]_i_4_1 (r3E_n_40),
        .\out[18]_i_3__0_0 (r2E_n_100),
        .\out[18]_i_3__0_1 (r2E_n_94),
        .\out[18]_i_3__0_2 (r2E_n_99),
        .\out[18]_i_3__0_3 (r2E_n_97),
        .\out[18]_i_4_0 (r3E_n_49),
        .\out[19]_i_3__0_0 (r2E_n_95),
        .\out[19]_i_3__0_1 (r2E_n_91),
        .\out[21]_i_3__0_0 (r2E_n_98),
        .\out[21]_i_3__0_1 (r2E_n_92),
        .\out[24]_i_4_0 (r3E_n_50),
        .\out[25]_i_4_0 (r2E_n_85),
        .\out[27]_i_4_0 (r2E_n_62),
        .\out[27]_i_4_1 (r2E_n_63),
        .\out[28]_i_4_0 (r2E_n_64),
        .\out[30]_i_5_0 (r2E_n_84),
        .\out[30]_i_5_1 (r2E_n_86),
        .\out_reg[0] (r2E_n_60),
        .\out_reg[0]_0 (r2E_n_102),
        .\out_reg[0]_1 (\out_reg[0] ),
        .\out_reg[10] (r3E_n_36),
        .\out_reg[16] (r2E_n_93),
        .\out_reg[16]_0 (r2E_n_96),
        .\out_reg[16]_1 (\out_reg[16] ),
        .\out_reg[17] (\out_reg[17] ),
        .\out_reg[18] (\out_reg[18] ),
        .\out_reg[19] (\out_reg[19] ),
        .\out_reg[20] (\out_reg[20] ),
        .\out_reg[21] (r2E_n_90),
        .\out_reg[21]_0 (\out_reg[21] ),
        .\out_reg[22] (r2E_n_89),
        .\out_reg[22]_0 (\out_reg[22] ),
        .\out_reg[23] (\out_reg[23] ),
        .\out_reg[24] (r2E_n_88),
        .\out_reg[24]_0 (r2E_n_80),
        .\out_reg[24]_1 (\out_reg[24] ),
        .\out_reg[25] (\out_reg[25] ),
        .\out_reg[25]_0 (r2E_n_87),
        .\out_reg[26] (\out_reg[26] ),
        .\out_reg[27] (r2E_n_82),
        .\out_reg[27]_0 (\out_reg[27] ),
        .\out_reg[28] (\out_reg[28] ),
        .\out_reg[30] (r2E_n_61),
        .\out_reg[31] (\out_reg[31]_1 ),
        .\out_reg[31]_0 (r2E_n_83),
        .\out_reg[4] (r3E_n_35),
        .\out_reg[5] (r2E_n_57),
        .\out_reg[5]_0 (r2E_n_52),
        .\out_reg[5]_1 (\out_reg[5] ),
        .\out_reg[6] (r3E_n_34),
        .\out_reg[6]_0 (r3E_n_46),
        .\out_reg[7] (r3E_n_45),
        .\out_reg[9] (r3E_n_41),
        .\out_reg[9]_0 (r3E_n_38),
        .\q_reg[0]_0 (r1E_n_0),
        .\q_reg[0]_1 (r1E_n_35),
        .\q_reg[0]_10 (\q_reg[0]_6 ),
        .\q_reg[0]_11 (\q_reg[0]_7 ),
        .\q_reg[0]_12 (\q_reg[0]_8 ),
        .\q_reg[0]_13 (\q_reg[0]_9 ),
        .\q_reg[0]_14 (\q_reg[0]_10 ),
        .\q_reg[0]_15 (\q_reg[0]_11 ),
        .\q_reg[0]_16 (\q_reg[0]_12 ),
        .\q_reg[0]_2 (\q_reg[0] ),
        .\q_reg[0]_3 (r1E_n_37),
        .\q_reg[0]_4 (\q_reg[0]_0 ),
        .\q_reg[0]_5 (\q_reg[0]_1 ),
        .\q_reg[0]_6 (\q_reg[0]_2 ),
        .\q_reg[0]_7 (\q_reg[0]_3 ),
        .\q_reg[0]_8 (\q_reg[0]_4 ),
        .\q_reg[0]_9 (\q_reg[0]_5 ),
        .\q_reg[10]_0 (r1E_n_33),
        .\q_reg[11]_0 ({r1E_n_100,r1E_n_101,r1E_n_102,r1E_n_103}),
        .\q_reg[15]_0 ({r1E_n_104,r1E_n_105,r1E_n_106,r1E_n_107}),
        .\q_reg[19]_0 ({r1E_n_108,r1E_n_109,r1E_n_110,r1E_n_111}),
        .\q_reg[1]_0 (\q_reg[1] ),
        .\q_reg[1]_1 (\q_reg[1]_10 ),
        .\q_reg[1]_10 (\q_reg[1]_19 ),
        .\q_reg[1]_11 (\q_reg[1]_20 ),
        .\q_reg[1]_12 (\q_reg[1]_21 ),
        .\q_reg[1]_13 (\q_reg[1]_22 ),
        .\q_reg[1]_14 (\q_reg[1]_23 ),
        .\q_reg[1]_15 (\q_reg[1]_24 ),
        .\q_reg[1]_16 (\q_reg[1]_25 ),
        .\q_reg[1]_17 (\q_reg[1]_26 ),
        .\q_reg[1]_18 (\q_reg[1]_27 ),
        .\q_reg[1]_19 (\q_reg[1]_28 ),
        .\q_reg[1]_2 (\q_reg[1]_11 ),
        .\q_reg[1]_20 (\q_reg[1]_29 ),
        .\q_reg[1]_21 (\q_reg[1]_30 ),
        .\q_reg[1]_22 (\q_reg[1]_31 ),
        .\q_reg[1]_23 (\q_reg[1]_32 ),
        .\q_reg[1]_24 (\q_reg[1]_33 ),
        .\q_reg[1]_25 (\q_reg[1]_34 ),
        .\q_reg[1]_26 (\q_reg[1]_35 ),
        .\q_reg[1]_27 (\q_reg[1]_36 ),
        .\q_reg[1]_28 (\q_reg[1]_37 ),
        .\q_reg[1]_29 (\q_reg[1]_38 ),
        .\q_reg[1]_3 (\q_reg[1]_12 ),
        .\q_reg[1]_30 (\q_reg[1]_39 ),
        .\q_reg[1]_31 (\q_reg[1]_40 ),
        .\q_reg[1]_32 (\q_reg[1]_41 ),
        .\q_reg[1]_4 (\q_reg[1]_13 ),
        .\q_reg[1]_5 (\q_reg[1]_14 ),
        .\q_reg[1]_6 (\q_reg[1]_15 ),
        .\q_reg[1]_7 (\q_reg[1]_16 ),
        .\q_reg[1]_8 (\q_reg[1]_17 ),
        .\q_reg[1]_9 (\q_reg[1]_18 ),
        .\q_reg[23]_0 ({r1E_n_112,r1E_n_113,r1E_n_114,r1E_n_115}),
        .\q_reg[27]_0 ({r1E_n_116,r1E_n_117,r1E_n_118,r1E_n_119}),
        .\q_reg[2]_0 (\q_reg[2] ),
        .\q_reg[2]_1 (\q_reg[2]_0 ),
        .\q_reg[31]_0 ({srcaE[31],\q_reg[30] ,srcaE[0]}),
        .\q_reg[31]_1 (\q_reg[31]_0 ),
        .\q_reg[31]_2 ({r1E_n_87,r1E_n_88,r1E_n_89,r1E_n_90}),
        .\q_reg[31]_3 (r1E_n_91),
        .\q_reg[3]_0 (r1E_n_52),
        .\q_reg[7]_0 ({r1E_n_96,r1E_n_97,r1E_n_98,r1E_n_99}),
        .srcb3E({srcb3E[30:19],srcb3E[15:10],srcb3E[7:0]}),
        .srcb3E__0(srcb3E__0));
  flopr__parameterized1 r1M
       (.AR(AR),
        .CLK(CLK),
        .Q({srcbE[31],\q_reg[30]_0 ,srcbE[0]}),
        .\out_reg[31]_0 (\out_reg[31]_0 ));
  flopr__parameterized1_2 r1W
       (.AR(AR),
        .CLK(CLK),
        .Q(aluoutW),
        .\out_reg[31]_0 (\out_reg[31] ));
  flopenrc r2D
       (.AR(AR),
        .CLK(CLK),
        .CO(equalD),
        .D(p_0_in_2),
        .E(en0),
        .Q({instrD[25:23],\q_reg[22] [1],instrD[21:18],\q_reg[22] [0],instrD[16:6],functD}),
        .S({r2D_n_130,r2D_n_131,r2D_n_132,r2D_n_133}),
        .aluoutE1(aluoutE1),
        .flushD_OBUF_inst_i_1_0(\q_reg[4] ),
        .forwardBD30_in(forwardBD30_in),
        .instr_IBUF(instr_IBUF),
        .\out_reg[21] ({r2D_n_188,r2D_n_189,r2D_n_190,r2D_n_191}),
        .\out_reg[25] ({r2D_n_192,r2D_n_193,r2D_n_194,r2D_n_195}),
        .\out_reg[29] ({r2D_n_196,r2D_n_197,r2D_n_198,r2D_n_199}),
        .\out_reg[2] (Q[2:0]),
        .\out_reg[31] (pcnextFD),
        .\out_reg[31]_0 ({r2D_n_169,r2D_n_170}),
        .\out_reg[31]_1 (pcplus4D),
        .\out_reg[31]_2 (pcplus4F[31:3]),
        .pcbranchD(pcbranchD[31:3]),
        .\q[23]_i_2_0 ({r2D_n_126,r2D_n_127,r2D_n_128,r2D_n_129}),
        .\q[31]_i_2_0 ({r2D_n_91,r2D_n_92,r2D_n_93}),
        .\q[31]_i_2__0_0 (D),
        .\q[31]_i_2__0_1 (\out_reg[31] ),
        .\q[31]_i_3_0 (\q[31]_i_3 ),
        .\q[31]_i_3_1 (r3M_n_0),
        .\q[31]_i_5_0 (\q[31]_i_5 ),
        .\q[31]_i_8_0 ({\out_reg[4] [4:2],\out_reg[4] [0]}),
        .\q[31]_i_8__0_0 (\q[31]_i_8__0 ),
        .\q[31]_i_8__0_1 (writeregM[1:0]),
        .\q[31]_i_8__0_2 (r3M_n_6),
        .\q_reg[0]_0 ({\q_reg[0]_13 [5],\q_reg[0]_13 [3],\q_reg[0]_13 [0]}),
        .\q_reg[11]_0 (r2D_n_167),
        .\q_reg[11]_1 ({r2D_n_180,r2D_n_181,r2D_n_182,r2D_n_183}),
        .\q_reg[12]_0 (r2D_n_166),
        .\q_reg[13]_0 (r2D_n_165),
        .\q_reg[14]_0 (r2D_n_164),
        .\q_reg[15]_0 ({p_0_in_0[31],p_0_in_0[10:0]}),
        .\q_reg[15]_1 (r2D_n_163),
        .\q_reg[15]_2 ({r2D_n_184,r2D_n_185,r2D_n_186,r2D_n_187}),
        .\q_reg[18]_0 (flushD_OBUF),
        .\q_reg[18]_1 (p_0_in_1),
        .\q_reg[20]_0 ({r2D_n_158,r2D_n_159,r2D_n_160,r2D_n_161,r2D_n_162}),
        .\q_reg[25]_0 (forwardAD32_in),
        .\q_reg[29]_0 (\q_reg[29] ),
        .\q_reg[3]_0 ({r2D_n_172,r2D_n_173,r2D_n_174,pcbranchD[2]}),
        .\q_reg[7]_0 ({r2D_n_176,r2D_n_177,r2D_n_178,r2D_n_179}),
        .rd10(rd10),
        .rd20(rd20),
        .rtE1(rtE1),
        .signimmD(signimmD),
        .stallD_OBUF(stallD_OBUF));
  floprc__parameterized0_3 r2E
       (.AR(AR),
        .CLK(CLK),
        .D(p_0_in_2),
        .Q({srcbE[31],\q_reg[30]_0 ,srcbE[0]}),
        .\aluout0_inferred__0/i__carry__3 (\q_reg[0]_13 [4]),
        .\aluout0_inferred__0/i__carry__3_0 (\q_reg[31] [10]),
        .aluout2_carry__2({srcaE[31],\q_reg[30] [29:15],\q_reg[30] [3:0]}),
        .\out[0]_i_5 (r3E_n_47),
        .\out[0]_i_5_0 (r3E_n_48),
        .\out[11]_i_7_0 (srcb3E[15:0]),
        .\out[12]_i_9_0 (rdE[1]),
        .\out[13]_i_7_0 (rdE[2]),
        .\out[14]_i_9_0 (rdE[3]),
        .\out[15]_i_8_0 (rdE[4]),
        .\out[24]_i_5_0 (r1E_n_52),
        .\out_reg[9] (r1E_n_37),
        .\out_reg[9]_0 (r1E_n_35),
        .\q_reg[19]_0 ({r2E_n_103,r2E_n_104,r2E_n_105,r2E_n_106}),
        .\q_reg[1]_0 (\q_reg[1]_0 ),
        .\q_reg[1]_1 (\q_reg[1]_1 ),
        .\q_reg[1]_10 (\q_reg[1]_8 ),
        .\q_reg[1]_11 (\q_reg[1]_9 ),
        .\q_reg[1]_12 (r2E_n_60),
        .\q_reg[1]_13 (r2E_n_61),
        .\q_reg[1]_14 (r2E_n_82),
        .\q_reg[1]_15 (r2E_n_83),
        .\q_reg[1]_16 (r2E_n_87),
        .\q_reg[1]_17 (r2E_n_93),
        .\q_reg[1]_18 (r2E_n_96),
        .\q_reg[1]_19 (\q_reg[1]_42 ),
        .\q_reg[1]_2 (\q_reg[1]_2 ),
        .\q_reg[1]_20 (\q_reg[1]_43 ),
        .\q_reg[1]_21 (\q_reg[1]_44 ),
        .\q_reg[1]_22 (\q_reg[1]_45 ),
        .\q_reg[1]_3 (\q_reg[1]_3 ),
        .\q_reg[1]_4 (r2E_n_52),
        .\q_reg[1]_5 (\q_reg[1]_4 ),
        .\q_reg[1]_6 (\q_reg[1]_5 ),
        .\q_reg[1]_7 (\q_reg[1]_6 ),
        .\q_reg[1]_8 (\q_reg[1]_7 ),
        .\q_reg[1]_9 (r2E_n_57),
        .\q_reg[22]_0 ({r2E_n_36,r2E_n_37,r2E_n_38,r2E_n_39}),
        .\q_reg[23]_0 ({r2E_n_0,r2E_n_1,r2E_n_2,r2E_n_3}),
        .\q_reg[23]_1 ({r2E_n_107,r2E_n_108,r2E_n_109,r2E_n_110}),
        .\q_reg[27]_0 ({r2E_n_111,r2E_n_112,r2E_n_113,r2E_n_114}),
        .\q_reg[28]_0 (r2E_n_100),
        .\q_reg[29]_0 (r2E_n_99),
        .\q_reg[2]_0 (r2E_n_80),
        .\q_reg[2]_1 (r2E_n_88),
        .\q_reg[2]_2 (r2E_n_89),
        .\q_reg[2]_3 (r2E_n_90),
        .\q_reg[2]_4 (r2E_n_91),
        .\q_reg[2]_5 (r2E_n_92),
        .\q_reg[2]_6 (r2E_n_102),
        .\q_reg[30]_0 ({r2E_n_44,r2E_n_45,r2E_n_46,r2E_n_47}),
        .\q_reg[30]_1 (r2E_n_95),
        .\q_reg[30]_2 ({r2E_n_115,r2E_n_116,r2E_n_117}),
        .\q_reg[31]_0 ({r2E_n_40,r2E_n_41,r2E_n_42,r2E_n_43}),
        .\q_reg[31]_1 (r2E_n_98),
        .\q_reg[3]_0 (r2E_n_62),
        .\q_reg[3]_1 (r2E_n_63),
        .\q_reg[3]_2 (r2E_n_64),
        .\q_reg[3]_3 (r2E_n_84),
        .\q_reg[3]_4 (r2E_n_85),
        .\q_reg[3]_5 (r2E_n_86),
        .\q_reg[3]_6 (r2E_n_94),
        .\q_reg[3]_7 (r2E_n_97),
        .\q_reg[3]_8 (r2E_n_101),
        .srcb3E(srcb3E[30:16]),
        .srcb3E__0(srcb3E__0));
  flopr__parameterized1_4 r2M
       (.AR(AR),
        .CLK(CLK),
        .aluoutE1(aluoutE1),
        .\out_reg[31]_0 (\out_reg[31] ));
  flopr__parameterized1_5 r2W
       (.AR(AR),
        .CLK(CLK),
        .D(D),
        .Q(readdataW));
  floprc__parameterized0_6 r3E
       (.AR(AR),
        .CLK(CLK),
        .D({p_0_in_0[31],p_0_in_0[10:0]}),
        .DI({r3E_n_27,r3E_n_28,r3E_n_29,r3E_n_30}),
        .Q({\q_reg[31] ,signimmE}),
        .\aluout0_inferred__0/i__carry (\q_reg[0]_13 [4]),
        .\aluout0_inferred__0/i__carry__1 ({\q_reg[30]_0 [9:0],srcbE[0]}),
        .\aluout0_inferred__0/i__carry__1_0 ({\q_reg[30] [9:0],srcaE[0]}),
        .\out[5]_i_4 (r1E_n_52),
        .\q_reg[0]_0 (r3E_n_39),
        .\q_reg[10]_0 (srcb3E[10:0]),
        .\q_reg[10]_1 ({r3E_n_59,r3E_n_60,r3E_n_61}),
        .\q_reg[1]_0 (r3E_n_35),
        .\q_reg[1]_1 (r3E_n_36),
        .\q_reg[1]_2 (r3E_n_43),
        .\q_reg[1]_3 (r3E_n_46),
        .\q_reg[2]_0 (r3E_n_34),
        .\q_reg[2]_1 (r3E_n_37),
        .\q_reg[2]_2 (r3E_n_38),
        .\q_reg[2]_3 (r3E_n_41),
        .\q_reg[2]_4 (r3E_n_42),
        .\q_reg[2]_5 (r3E_n_44),
        .\q_reg[2]_6 (r3E_n_45),
        .\q_reg[3]_0 (r3E_n_33),
        .\q_reg[3]_1 (r3E_n_40),
        .\q_reg[3]_2 (r3E_n_47),
        .\q_reg[3]_3 (r3E_n_48),
        .\q_reg[3]_4 (r3E_n_49),
        .\q_reg[3]_5 (r3E_n_50),
        .\q_reg[3]_6 ({r3E_n_51,r3E_n_52,r3E_n_53,r3E_n_54}),
        .\q_reg[7]_0 ({r3E_n_0,r3E_n_1,r3E_n_2,r3E_n_3}),
        .\q_reg[7]_1 ({r3E_n_55,r3E_n_56,r3E_n_57,r3E_n_58}),
        .\q_reg[8]_0 (r3E_n_32),
        .\q_reg[9]_0 (r3E_n_31),
        .srcb3E({srcb3E[26:24],srcb3E[18:16]}));
  flopr__parameterized2 r3M
       (.AR(AR),
        .CLK(CLK),
        .Q(writeregM),
        .\out_reg[4]_0 (r3M_n_0),
        .\out_reg[4]_1 (r3M_n_6),
        .\out_reg[4]_2 (\out_reg[4] ),
        .\q[31]_i_6__0 ({instrD[25:23],instrD[20:18]}));
  flopr__parameterized2_7 r3W
       (.AR(AR),
        .CLK(CLK),
        .D(writeregM),
        .Q(writeregW));
  floprc__parameterized1 r5E
       (.AR(AR),
        .CLK(CLK),
        .D({r2D_n_158,r2D_n_159,r2D_n_160,r2D_n_161,r2D_n_162}),
        .\q_reg[4]_0 (\q_reg[4] ));
  floprc__parameterized1_8 r6E
       (.AR(AR),
        .CLK(CLK),
        .Q(\q_reg[30]_0 [14:10]),
        .\aluout0_inferred__0/i__carry__1 (\q_reg[0]_13 [4]),
        .aluout2_carry__0(\q_reg[30] [14:10]),
        .\q_reg[0]_0 (rdE[0]),
        .\q_reg[0]_1 (r6E_n_14),
        .\q_reg[0]_2 (r2D_n_167),
        .\q_reg[1]_0 (rdE[1]),
        .\q_reg[1]_1 (r2D_n_166),
        .\q_reg[2]_0 (rdE[2]),
        .\q_reg[2]_1 (r2D_n_165),
        .\q_reg[3]_0 (rdE[3]),
        .\q_reg[3]_1 ({r6E_n_12,r6E_n_13}),
        .\q_reg[3]_2 (r2D_n_164),
        .\q_reg[4]_0 (rdE[4]),
        .\q_reg[4]_1 ({r6E_n_5,r6E_n_6}),
        .\q_reg[4]_2 (srcb3E[15:11]),
        .\q_reg[4]_3 ({r6E_n_15,r6E_n_16,r6E_n_17,r6E_n_18}),
        .\q_reg[4]_4 (r2D_n_163));
  floprc__parameterized0_9 r7E
       (.AR(AR),
        .CLK(CLK),
        .D(p_0_in),
        .\q_reg[31]_0 (\q_reg[31]_1 ));
  mux2 resmux
       (.Q(readdataW),
        .rf_reg_r1_0_31_0_5(rf_reg_r1_0_31_0_5[1]),
        .rf_reg_r1_0_31_30_31(aluoutW),
        .wd3(resultW));
  regfile rf
       (.CLK(CLK),
        .Q({instrD[25:23],\q_reg[22] [1],instrD[21:18],\q_reg[22] [0],instrD[16]}),
        .eq_carry_i_10(writeregW),
        .\q[30]_i_2__0 (rf_reg_r1_0_31_0_5[0]),
        .rd10(rd10),
        .rd20(rd20),
        .wd3(resultW));
endmodule

module eqcmp
   (CO,
    S,
    eq_carry__1_0,
    \out[1]_i_2__0 );
  output [0:0]CO;
  input [3:0]S;
  input [3:0]eq_carry__1_0;
  input [2:0]\out[1]_i_2__0 ;

  wire [0:0]CO;
  wire [3:0]S;
  wire eq_carry__0_n_0;
  wire eq_carry__0_n_1;
  wire eq_carry__0_n_2;
  wire eq_carry__0_n_3;
  wire [3:0]eq_carry__1_0;
  wire eq_carry__1_n_2;
  wire eq_carry__1_n_3;
  wire eq_carry_n_0;
  wire eq_carry_n_1;
  wire eq_carry_n_2;
  wire eq_carry_n_3;
  wire [2:0]\out[1]_i_2__0 ;
  wire [3:0]NLW_eq_carry_O_UNCONNECTED;
  wire [3:0]NLW_eq_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_eq_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_eq_carry__1_O_UNCONNECTED;

  CARRY4 eq_carry
       (.CI(1'b0),
        .CO({eq_carry_n_0,eq_carry_n_1,eq_carry_n_2,eq_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_eq_carry_O_UNCONNECTED[3:0]),
        .S(S));
  CARRY4 eq_carry__0
       (.CI(eq_carry_n_0),
        .CO({eq_carry__0_n_0,eq_carry__0_n_1,eq_carry__0_n_2,eq_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_eq_carry__0_O_UNCONNECTED[3:0]),
        .S(eq_carry__1_0));
  CARRY4 eq_carry__1
       (.CI(eq_carry__0_n_0),
        .CO({NLW_eq_carry__1_CO_UNCONNECTED[3],CO,eq_carry__1_n_2,eq_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_eq_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,\out[1]_i_2__0 }));
endmodule

module flopenr
   (D,
    Q,
    E,
    \out_reg[31]_0 ,
    CLK,
    AR);
  output [2:0]D;
  output [29:0]Q;
  input [0:0]E;
  input [31:0]\out_reg[31]_0 ;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [2:0]D;
  wire [0:0]E;
  wire [29:0]Q;
  wire [31:0]\out_reg[31]_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    \out[2]_i_1__0 
       (.I0(Q[0]),
        .O(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [0]),
        .Q(D[0]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[10] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [10]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[11] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [11]),
        .Q(Q[9]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[12] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [12]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[13] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [13]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[14] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [14]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[15] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [15]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[16] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [16]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[17] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [17]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[18] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [18]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[19] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [19]),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [1]),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[20] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [20]),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[21] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [21]),
        .Q(Q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[22] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [22]),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[23] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [23]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[24] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [24]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[25] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [25]),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[26] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [26]),
        .Q(Q[24]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[27] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [27]),
        .Q(Q[25]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[28] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [28]),
        .Q(Q[26]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[29] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [29]),
        .Q(Q[27]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [2]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[30] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [30]),
        .Q(Q[28]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[31] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [31]),
        .Q(Q[29]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [3]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [4]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [5]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [6]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [7]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[8] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [8]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[9] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [9]),
        .Q(Q[7]));
endmodule

(* ORIG_REF_NAME = "flopenr" *) 
module flopenr_1
   (D,
    Q,
    \q_reg[0] ,
    E,
    \out_reg[31]_0 ,
    CLK,
    AR);
  output [31:0]D;
  output [31:0]Q;
  input \q_reg[0] ;
  input [0:0]E;
  input [31:0]\out_reg[31]_0 ;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [31:0]D;
  wire [0:0]E;
  wire [31:0]Q;
  wire [31:0]\out_reg[31]_0 ;
  wire \q_reg[0] ;

  FDCE #(
    .INIT(1'b0)) 
    \out_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[10] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[11] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[12] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[13] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[14] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[15] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[16] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [16]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[17] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [17]),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[18] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [18]),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[19] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [19]),
        .Q(Q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[20] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [20]),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[21] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [21]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[22] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [22]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[23] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [23]),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[24] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [24]),
        .Q(Q[24]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[25] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [25]),
        .Q(Q[25]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[26] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [26]),
        .Q(Q[26]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[27] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [27]),
        .Q(Q[27]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[28] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [28]),
        .Q(Q[28]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[29] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [29]),
        .Q(Q[29]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[30] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [30]),
        .Q(Q[30]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[31] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [31]),
        .Q(Q[31]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[8] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[9] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\out_reg[31]_0 [9]),
        .Q(Q[9]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[0]_i_1__5 
       (.I0(Q[0]),
        .I1(\q_reg[0] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[10]_i_1__2 
       (.I0(Q[10]),
        .I1(\q_reg[0] ),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[11]_i_1__1 
       (.I0(Q[11]),
        .I1(\q_reg[0] ),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[12]_i_1__1 
       (.I0(Q[12]),
        .I1(\q_reg[0] ),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[13]_i_1__1 
       (.I0(Q[13]),
        .I1(\q_reg[0] ),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[14]_i_1__1 
       (.I0(Q[14]),
        .I1(\q_reg[0] ),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[15]_i_1__1 
       (.I0(Q[15]),
        .I1(\q_reg[0] ),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[16]_i_1__1 
       (.I0(Q[16]),
        .I1(\q_reg[0] ),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[17]_i_1__1 
       (.I0(Q[17]),
        .I1(\q_reg[0] ),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[18]_i_1__1 
       (.I0(Q[18]),
        .I1(\q_reg[0] ),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[19]_i_1__1 
       (.I0(Q[19]),
        .I1(\q_reg[0] ),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[1]_i_1__5 
       (.I0(Q[1]),
        .I1(\q_reg[0] ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[20]_i_1__1 
       (.I0(Q[20]),
        .I1(\q_reg[0] ),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[21]_i_1__1 
       (.I0(Q[21]),
        .I1(\q_reg[0] ),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[22]_i_1__1 
       (.I0(Q[22]),
        .I1(\q_reg[0] ),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[23]_i_1__1 
       (.I0(Q[23]),
        .I1(\q_reg[0] ),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[24]_i_1__1 
       (.I0(Q[24]),
        .I1(\q_reg[0] ),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[25]_i_1__1 
       (.I0(Q[25]),
        .I1(\q_reg[0] ),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[26]_i_1__1 
       (.I0(Q[26]),
        .I1(\q_reg[0] ),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[27]_i_1__1 
       (.I0(Q[27]),
        .I1(\q_reg[0] ),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[28]_i_1__1 
       (.I0(Q[28]),
        .I1(\q_reg[0] ),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[29]_i_1__1 
       (.I0(Q[29]),
        .I1(\q_reg[0] ),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[2]_i_1__5 
       (.I0(Q[2]),
        .I1(\q_reg[0] ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[30]_i_1__1 
       (.I0(Q[30]),
        .I1(\q_reg[0] ),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[31]_i_1__2 
       (.I0(Q[31]),
        .I1(\q_reg[0] ),
        .O(D[31]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[3]_i_1__5 
       (.I0(Q[3]),
        .I1(\q_reg[0] ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[4]_i_1__5 
       (.I0(Q[4]),
        .I1(\q_reg[0] ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[5]_i_1__3 
       (.I0(Q[5]),
        .I1(\q_reg[0] ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[6]_i_1__3 
       (.I0(Q[6]),
        .I1(\q_reg[0] ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[7]_i_1__3 
       (.I0(Q[7]),
        .I1(\q_reg[0] ),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[8]_i_1__3 
       (.I0(Q[8]),
        .I1(\q_reg[0] ),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[9]_i_1__2 
       (.I0(Q[9]),
        .I1(\q_reg[0] ),
        .O(D[9]));
endmodule

module flopenrc
   (\out_reg[31] ,
    Q,
    D,
    \q_reg[18]_0 ,
    \q[31]_i_2_0 ,
    \q_reg[18]_1 ,
    \q[23]_i_2_0 ,
    S,
    forwardBD30_in,
    E,
    \q_reg[29]_0 ,
    \q_reg[15]_0 ,
    signimmD,
    \q_reg[20]_0 ,
    \q_reg[15]_1 ,
    \q_reg[14]_0 ,
    \q_reg[13]_0 ,
    \q_reg[12]_0 ,
    \q_reg[11]_0 ,
    stallD_OBUF,
    \out_reg[31]_0 ,
    \q_reg[25]_0 ,
    \q_reg[3]_0 ,
    \q_reg[7]_0 ,
    \q_reg[11]_1 ,
    \q_reg[15]_2 ,
    \out_reg[21] ,
    \out_reg[25] ,
    \out_reg[29] ,
    \out_reg[31]_1 ,
    \out_reg[2] ,
    rd10,
    aluoutE1,
    \q[31]_i_2__0_0 ,
    \q[31]_i_2__0_1 ,
    \q[31]_i_5_0 ,
    \q[31]_i_8_0 ,
    \q[31]_i_3_0 ,
    \q[31]_i_8__0_0 ,
    rtE1,
    \q_reg[0]_0 ,
    flushD_OBUF_inst_i_1_0,
    pcbranchD,
    \out_reg[31]_2 ,
    CO,
    \q[31]_i_8__0_1 ,
    \q[31]_i_3_1 ,
    \q[31]_i_8__0_2 ,
    rd20,
    instr_IBUF,
    CLK,
    AR);
  output [31:0]\out_reg[31] ;
  output [25:0]Q;
  output [31:0]D;
  output \q_reg[18]_0 ;
  output [2:0]\q[31]_i_2_0 ;
  output [31:0]\q_reg[18]_1 ;
  output [3:0]\q[23]_i_2_0 ;
  output [3:0]S;
  output forwardBD30_in;
  output [0:0]E;
  output [8:0]\q_reg[29]_0 ;
  output [11:0]\q_reg[15]_0 ;
  output [0:0]signimmD;
  output [4:0]\q_reg[20]_0 ;
  output \q_reg[15]_1 ;
  output \q_reg[14]_0 ;
  output \q_reg[13]_0 ;
  output \q_reg[12]_0 ;
  output \q_reg[11]_0 ;
  output stallD_OBUF;
  output [1:0]\out_reg[31]_0 ;
  output \q_reg[25]_0 ;
  output [3:0]\q_reg[3]_0 ;
  output [3:0]\q_reg[7]_0 ;
  output [3:0]\q_reg[11]_1 ;
  output [3:0]\q_reg[15]_2 ;
  output [3:0]\out_reg[21] ;
  output [3:0]\out_reg[25] ;
  output [3:0]\out_reg[29] ;
  input [31:0]\out_reg[31]_1 ;
  input [2:0]\out_reg[2] ;
  input [31:0]rd10;
  input [31:0]aluoutE1;
  input [31:0]\q[31]_i_2__0_0 ;
  input [31:0]\q[31]_i_2__0_1 ;
  input [1:0]\q[31]_i_5_0 ;
  input [3:0]\q[31]_i_8_0 ;
  input \q[31]_i_3_0 ;
  input \q[31]_i_8__0_0 ;
  input [0:0]rtE1;
  input [2:0]\q_reg[0]_0 ;
  input [4:0]flushD_OBUF_inst_i_1_0;
  input [28:0]pcbranchD;
  input [28:0]\out_reg[31]_2 ;
  input [0:0]CO;
  input [1:0]\q[31]_i_8__0_1 ;
  input \q[31]_i_3_1 ;
  input \q[31]_i_8__0_2 ;
  input [31:0]rd20;
  input [31:0]instr_IBUF;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]CO;
  wire [31:0]D;
  wire [0:0]E;
  wire [25:0]Q;
  wire [3:0]S;
  wire [31:0]aluoutE1;
  wire [2:0]\c/md/controls__46 ;
  wire eq_carry_i_10_n_0;
  wire eq_carry_i_11_n_0;
  wire eq_carry_i_12_n_0;
  wire eq_carry_i_13_n_0;
  wire eq_carry_i_14_n_0;
  wire [4:0]flushD_OBUF_inst_i_1_0;
  wire flushD_OBUF_inst_i_2_n_0;
  wire flushD_OBUF_inst_i_4_n_0;
  wire flushD_OBUF_inst_i_5_n_0;
  wire flushD_OBUF_inst_i_6_n_0;
  wire flushD_OBUF_inst_i_7_n_0;
  wire [0:0]forwardAD;
  wire [1:0]forwardBD;
  wire forwardBD30_in;
  wire \haz/forwardAD1__0 ;
  wire \haz/forwardBD1__0 ;
  wire \haz/p_6_in ;
  wire \haz/p_9_in ;
  wire [31:0]instr_IBUF;
  wire jrD;
  wire jumpD;
  wire [5:0]opD;
  wire \out[10]_i_3_n_0 ;
  wire \out[11]_i_3_n_0 ;
  wire \out[12]_i_3_n_0 ;
  wire \out[13]_i_3_n_0 ;
  wire \out[14]_i_3_n_0 ;
  wire \out[15]_i_3_n_0 ;
  wire \out[16]_i_3_n_0 ;
  wire \out[17]_i_3_n_0 ;
  wire \out[18]_i_3_n_0 ;
  wire \out[19]_i_3_n_0 ;
  wire \out[20]_i_3_n_0 ;
  wire \out[21]_i_3_n_0 ;
  wire \out[22]_i_3_n_0 ;
  wire \out[23]_i_3_n_0 ;
  wire \out[24]_i_3_n_0 ;
  wire \out[25]_i_3_n_0 ;
  wire \out[26]_i_3_n_0 ;
  wire \out[27]_i_3_n_0 ;
  wire \out[28]_i_3_n_0 ;
  wire \out[29]_i_3_n_0 ;
  wire \out[2]_i_2_n_0 ;
  wire \out[30]_i_3_n_0 ;
  wire \out[31]_i_5_n_0 ;
  wire \out[31]_i_6__0_n_0 ;
  wire \out[3]_i_2__0_n_0 ;
  wire \out[4]_i_2__0_n_0 ;
  wire \out[5]_i_3_n_0 ;
  wire \out[6]_i_3_n_0 ;
  wire \out[7]_i_3_n_0 ;
  wire \out[8]_i_3_n_0 ;
  wire \out[9]_i_3_n_0 ;
  wire [3:0]\out_reg[21] ;
  wire [3:0]\out_reg[25] ;
  wire [3:0]\out_reg[29] ;
  wire [2:0]\out_reg[2] ;
  wire [31:0]\out_reg[31] ;
  wire [1:0]\out_reg[31]_0 ;
  wire [31:0]\out_reg[31]_1 ;
  wire [28:0]\out_reg[31]_2 ;
  wire [31:0]p_1_in;
  wire [28:0]pcbranchD;
  wire pcsrcD;
  wire \q[0]_i_3__0_n_0 ;
  wire \q[0]_i_3_n_0 ;
  wire \q[10]_i_3__0_n_0 ;
  wire \q[10]_i_3_n_0 ;
  wire \q[11]_i_3__0_n_0 ;
  wire \q[11]_i_3_n_0 ;
  wire \q[12]_i_3__0_n_0 ;
  wire \q[12]_i_3_n_0 ;
  wire \q[13]_i_3__0_n_0 ;
  wire \q[13]_i_3_n_0 ;
  wire \q[14]_i_3__0_n_0 ;
  wire \q[14]_i_3_n_0 ;
  wire \q[15]_i_3__0_n_0 ;
  wire \q[15]_i_3_n_0 ;
  wire \q[16]_i_3__0_n_0 ;
  wire \q[16]_i_3_n_0 ;
  wire \q[17]_i_3__0_n_0 ;
  wire \q[17]_i_3_n_0 ;
  wire \q[18]_i_3__0_n_0 ;
  wire \q[18]_i_3_n_0 ;
  wire \q[19]_i_3__0_n_0 ;
  wire \q[19]_i_3_n_0 ;
  wire \q[1]_i_2__0_n_0 ;
  wire \q[1]_i_3__0_n_0 ;
  wire \q[1]_i_3__1_n_0 ;
  wire \q[1]_i_3_n_0 ;
  wire \q[20]_i_3__0_n_0 ;
  wire \q[20]_i_3_n_0 ;
  wire \q[21]_i_3__0_n_0 ;
  wire \q[21]_i_3_n_0 ;
  wire \q[22]_i_3__0_n_0 ;
  wire \q[22]_i_3_n_0 ;
  wire [3:0]\q[23]_i_2_0 ;
  wire \q[23]_i_3__0_n_0 ;
  wire \q[23]_i_3_n_0 ;
  wire \q[24]_i_3__0_n_0 ;
  wire \q[24]_i_3_n_0 ;
  wire \q[25]_i_3__0_n_0 ;
  wire \q[25]_i_3_n_0 ;
  wire \q[26]_i_3__0_n_0 ;
  wire \q[26]_i_3_n_0 ;
  wire \q[27]_i_3__0_n_0 ;
  wire \q[27]_i_3_n_0 ;
  wire \q[28]_i_3__0_n_0 ;
  wire \q[28]_i_3_n_0 ;
  wire \q[29]_i_3__0_n_0 ;
  wire \q[29]_i_3_n_0 ;
  wire \q[2]_i_2__0_n_0 ;
  wire \q[2]_i_3__0_n_0 ;
  wire \q[2]_i_3__1_n_0 ;
  wire \q[2]_i_3_n_0 ;
  wire \q[30]_i_3__0_n_0 ;
  wire \q[30]_i_3_n_0 ;
  wire \q[31]_i_11__0_n_0 ;
  wire \q[31]_i_11_n_0 ;
  wire \q[31]_i_1__3_n_0 ;
  wire [2:0]\q[31]_i_2_0 ;
  wire [31:0]\q[31]_i_2__0_0 ;
  wire [31:0]\q[31]_i_2__0_1 ;
  wire \q[31]_i_3_0 ;
  wire \q[31]_i_3_1 ;
  wire \q[31]_i_3__0_n_0 ;
  wire \q[31]_i_4__0_n_0 ;
  wire [1:0]\q[31]_i_5_0 ;
  wire \q[31]_i_5__0_n_0 ;
  wire \q[31]_i_5_n_0 ;
  wire \q[31]_i_6_n_0 ;
  wire [3:0]\q[31]_i_8_0 ;
  wire \q[31]_i_8__0_0 ;
  wire [1:0]\q[31]_i_8__0_1 ;
  wire \q[31]_i_8__0_2 ;
  wire \q[3]_i_3__1_n_0 ;
  wire \q[3]_i_3_n_0 ;
  wire \q[4]_i_3_n_0 ;
  wire \q[4]_i_4_n_0 ;
  wire \q[4]_i_5_n_0 ;
  wire \q[4]_i_6_n_0 ;
  wire \q[5]_i_2__0_n_0 ;
  wire \q[5]_i_3__0_n_0 ;
  wire \q[5]_i_3_n_0 ;
  wire \q[6]_i_3__0_n_0 ;
  wire \q[6]_i_3_n_0 ;
  wire \q[7]_i_3__0_n_0 ;
  wire \q[7]_i_3_n_0 ;
  wire \q[8]_i_2__0_n_0 ;
  wire \q[8]_i_3__0_n_0 ;
  wire \q[8]_i_3_n_0 ;
  wire \q[9]_i_3__0_n_0 ;
  wire \q[9]_i_3_n_0 ;
  wire [2:0]\q_reg[0]_0 ;
  wire \q_reg[11]_0 ;
  wire [3:0]\q_reg[11]_1 ;
  wire \q_reg[12]_0 ;
  wire \q_reg[13]_0 ;
  wire \q_reg[14]_0 ;
  wire [11:0]\q_reg[15]_0 ;
  wire \q_reg[15]_1 ;
  wire [3:0]\q_reg[15]_2 ;
  wire \q_reg[18]_0 ;
  wire [31:0]\q_reg[18]_1 ;
  wire [4:0]\q_reg[20]_0 ;
  wire \q_reg[25]_0 ;
  wire [8:0]\q_reg[29]_0 ;
  wire [3:0]\q_reg[3]_0 ;
  wire [3:0]\q_reg[7]_0 ;
  wire [31:0]rd10;
  wire [31:0]rd20;
  wire [0:0]rtE1;
  wire shiftD;
  wire [0:0]signimmD;
  wire [31:0]srca2D;
  wire [31:0]srca3D;
  wire [31:0]srcb2D;
  wire stallD_OBUF;
  wire stallD_OBUF_inst_i_2_n_0;
  wire stallD_OBUF_inst_i_4_n_0;
  wire stallD_OBUF_inst_i_5_n_0;

  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eq_carry__0_i_1
       (.I0(srca3D[22]),
        .I1(srcb2D[22]),
        .I2(srca3D[21]),
        .I3(srcb2D[21]),
        .I4(srcb2D[23]),
        .I5(srca3D[23]),
        .O(\q[23]_i_2_0 [3]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eq_carry__0_i_2
       (.I0(srca3D[19]),
        .I1(srcb2D[19]),
        .I2(srca3D[18]),
        .I3(srcb2D[18]),
        .I4(srcb2D[20]),
        .I5(srca3D[20]),
        .O(\q[23]_i_2_0 [2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eq_carry__0_i_3
       (.I0(srca3D[15]),
        .I1(srcb2D[15]),
        .I2(srca3D[16]),
        .I3(srcb2D[16]),
        .I4(srcb2D[17]),
        .I5(srca3D[17]),
        .O(\q[23]_i_2_0 [1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eq_carry__0_i_4
       (.I0(srca3D[13]),
        .I1(srcb2D[13]),
        .I2(srca3D[12]),
        .I3(srcb2D[12]),
        .I4(srcb2D[14]),
        .I5(srca3D[14]),
        .O(\q[23]_i_2_0 [0]));
  LUT4 #(
    .INIT(16'h8241)) 
    eq_carry__1_i_1
       (.I0(srcb2D[31]),
        .I1(srcb2D[30]),
        .I2(srca3D[30]),
        .I3(srca3D[31]),
        .O(\q[31]_i_2_0 [2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eq_carry__1_i_2
       (.I0(srca3D[28]),
        .I1(srcb2D[28]),
        .I2(srca3D[27]),
        .I3(srcb2D[27]),
        .I4(srcb2D[29]),
        .I5(srca3D[29]),
        .O(\q[31]_i_2_0 [1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eq_carry__1_i_3
       (.I0(srca3D[25]),
        .I1(srcb2D[25]),
        .I2(srca3D[24]),
        .I3(srcb2D[24]),
        .I4(srcb2D[26]),
        .I5(srca3D[26]),
        .O(\q[31]_i_2_0 [0]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eq_carry_i_1
       (.I0(srca3D[10]),
        .I1(srcb2D[10]),
        .I2(srca3D[9]),
        .I3(srcb2D[9]),
        .I4(srcb2D[11]),
        .I5(srca3D[11]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h0000070000000000)) 
    eq_carry_i_10
       (.I0(\haz/p_9_in ),
        .I1(\q[31]_i_5_0 [1]),
        .I2(\haz/forwardAD1__0 ),
        .I3(\q_reg[25]_0 ),
        .I4(forwardAD),
        .I5(rd10[4]),
        .O(eq_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'h0000070000000000)) 
    eq_carry_i_11
       (.I0(\haz/p_9_in ),
        .I1(\q[31]_i_5_0 [1]),
        .I2(\haz/forwardAD1__0 ),
        .I3(\q_reg[25]_0 ),
        .I4(forwardAD),
        .I5(rd10[3]),
        .O(eq_carry_i_11_n_0));
  LUT6 #(
    .INIT(64'h0000070000000000)) 
    eq_carry_i_12
       (.I0(\haz/p_9_in ),
        .I1(\q[31]_i_5_0 [1]),
        .I2(\haz/forwardAD1__0 ),
        .I3(\q_reg[25]_0 ),
        .I4(forwardAD),
        .I5(rd10[1]),
        .O(eq_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'h0000070000000000)) 
    eq_carry_i_13
       (.I0(\haz/p_9_in ),
        .I1(\q[31]_i_5_0 [1]),
        .I2(\haz/forwardAD1__0 ),
        .I3(\q_reg[25]_0 ),
        .I4(forwardAD),
        .I5(rd10[2]),
        .O(eq_carry_i_13_n_0));
  LUT6 #(
    .INIT(64'h0000070000000000)) 
    eq_carry_i_14
       (.I0(\haz/p_9_in ),
        .I1(\q[31]_i_5_0 [1]),
        .I2(\haz/forwardAD1__0 ),
        .I3(\q_reg[25]_0 ),
        .I4(forwardAD),
        .I5(rd10[0]),
        .O(eq_carry_i_14_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eq_carry_i_2
       (.I0(srca3D[7]),
        .I1(srcb2D[7]),
        .I2(srca3D[6]),
        .I3(srcb2D[6]),
        .I4(srcb2D[8]),
        .I5(srca3D[8]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eq_carry_i_3
       (.I0(srca3D[4]),
        .I1(srcb2D[4]),
        .I2(srca3D[3]),
        .I3(srcb2D[3]),
        .I4(srcb2D[5]),
        .I5(srca3D[5]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eq_carry_i_4
       (.I0(srca3D[1]),
        .I1(srcb2D[1]),
        .I2(srca3D[2]),
        .I3(srcb2D[2]),
        .I4(srcb2D[0]),
        .I5(srca3D[0]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBB888)) 
    eq_carry_i_5
       (.I0(Q[10]),
        .I1(shiftD),
        .I2(aluoutE1[4]),
        .I3(\q[31]_i_5__0_n_0 ),
        .I4(eq_carry_i_10_n_0),
        .I5(\q[4]_i_4_n_0 ),
        .O(srca3D[4]));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBB888)) 
    eq_carry_i_6
       (.I0(Q[9]),
        .I1(shiftD),
        .I2(aluoutE1[3]),
        .I3(\q[31]_i_5__0_n_0 ),
        .I4(eq_carry_i_11_n_0),
        .I5(\q[3]_i_3__1_n_0 ),
        .O(srca3D[3]));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBB888)) 
    eq_carry_i_7
       (.I0(Q[7]),
        .I1(shiftD),
        .I2(aluoutE1[1]),
        .I3(\q[31]_i_5__0_n_0 ),
        .I4(eq_carry_i_12_n_0),
        .I5(\q[1]_i_3__1_n_0 ),
        .O(srca3D[1]));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBB888)) 
    eq_carry_i_8
       (.I0(Q[8]),
        .I1(shiftD),
        .I2(\q[31]_i_5__0_n_0 ),
        .I3(aluoutE1[2]),
        .I4(eq_carry_i_13_n_0),
        .I5(\q[2]_i_3__1_n_0 ),
        .O(srca3D[2]));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBB888)) 
    eq_carry_i_9
       (.I0(Q[6]),
        .I1(shiftD),
        .I2(aluoutE1[0]),
        .I3(\q[31]_i_5__0_n_0 ),
        .I4(eq_carry_i_14_n_0),
        .I5(\q[0]_i_3__0_n_0 ),
        .O(srca3D[0]));
  LUT6 #(
    .INIT(64'hEBAAAAAA00000000)) 
    flushD_OBUF_inst_i_1
       (.I0(flushD_OBUF_inst_i_2_n_0),
        .I1(Q[18]),
        .I2(rtE1),
        .I3(flushD_OBUF_inst_i_4_n_0),
        .I4(flushD_OBUF_inst_i_5_n_0),
        .I5(\q_reg[0]_0 [2]),
        .O(\q_reg[18]_0 ));
  LUT6 #(
    .INIT(64'hEA15000000000000)) 
    flushD_OBUF_inst_i_2
       (.I0(flushD_OBUF_inst_i_1_0[2]),
        .I1(\q_reg[0]_0 [1]),
        .I2(\q_reg[0]_0 [0]),
        .I3(Q[23]),
        .I4(flushD_OBUF_inst_i_6_n_0),
        .I5(flushD_OBUF_inst_i_7_n_0),
        .O(flushD_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'hA0909090A0090909)) 
    flushD_OBUF_inst_i_4
       (.I0(Q[19]),
        .I1(flushD_OBUF_inst_i_1_0[3]),
        .I2(Q[20]),
        .I3(\q_reg[0]_0 [0]),
        .I4(\q_reg[0]_0 [1]),
        .I5(flushD_OBUF_inst_i_1_0[4]),
        .O(flushD_OBUF_inst_i_4_n_0));
  LUT6 #(
    .INIT(64'hA0909090A0090909)) 
    flushD_OBUF_inst_i_5
       (.I0(Q[16]),
        .I1(flushD_OBUF_inst_i_1_0[0]),
        .I2(Q[17]),
        .I3(\q_reg[0]_0 [0]),
        .I4(\q_reg[0]_0 [1]),
        .I5(flushD_OBUF_inst_i_1_0[1]),
        .O(flushD_OBUF_inst_i_5_n_0));
  LUT6 #(
    .INIT(64'hA0909090A0090909)) 
    flushD_OBUF_inst_i_6
       (.I0(Q[24]),
        .I1(flushD_OBUF_inst_i_1_0[3]),
        .I2(Q[25]),
        .I3(\q_reg[0]_0 [0]),
        .I4(\q_reg[0]_0 [1]),
        .I5(flushD_OBUF_inst_i_1_0[4]),
        .O(flushD_OBUF_inst_i_6_n_0));
  LUT6 #(
    .INIT(64'hA0909090A0090909)) 
    flushD_OBUF_inst_i_7
       (.I0(Q[21]),
        .I1(flushD_OBUF_inst_i_1_0[0]),
        .I2(Q[22]),
        .I3(\q_reg[0]_0 [0]),
        .I4(\q_reg[0]_0 [1]),
        .I5(flushD_OBUF_inst_i_1_0[1]),
        .O(flushD_OBUF_inst_i_7_n_0));
  LUT6 #(
    .INIT(64'h8B888B8B8B888888)) 
    \out[0]_i_1 
       (.I0(srca2D[0]),
        .I1(jrD),
        .I2(jumpD),
        .I3(\out_reg[31]_1 [0]),
        .I4(pcsrcD),
        .I5(\out_reg[2] [0]),
        .O(\out_reg[31] [0]));
  LUT5 #(
    .INIT(32'hAA00AACF)) 
    \out[10]_i_1 
       (.I0(srca2D[10]),
        .I1(Q[8]),
        .I2(jumpD),
        .I3(jrD),
        .I4(\out[10]_i_3_n_0 ),
        .O(\out_reg[31] [10]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \out[10]_i_2 
       (.I0(aluoutE1[10]),
        .I1(\q[31]_i_5__0_n_0 ),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(rd10[10]),
        .I4(\q[10]_i_3__0_n_0 ),
        .O(srca2D[10]));
  LUT4 #(
    .INIT(16'h444F)) 
    \out[10]_i_3 
       (.I0(pcbranchD[7]),
        .I1(\out[31]_i_6__0_n_0 ),
        .I2(\out_reg[31]_2 [7]),
        .I3(stallD_OBUF_inst_i_2_n_0),
        .O(\out[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAA00AACF)) 
    \out[11]_i_1 
       (.I0(srca2D[11]),
        .I1(Q[9]),
        .I2(jumpD),
        .I3(jrD),
        .I4(\out[11]_i_3_n_0 ),
        .O(\out_reg[31] [11]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \out[11]_i_2 
       (.I0(aluoutE1[11]),
        .I1(\q[31]_i_5__0_n_0 ),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(rd10[11]),
        .I4(\q[11]_i_3__0_n_0 ),
        .O(srca2D[11]));
  LUT4 #(
    .INIT(16'h444F)) 
    \out[11]_i_3 
       (.I0(pcbranchD[8]),
        .I1(\out[31]_i_6__0_n_0 ),
        .I2(\out_reg[31]_2 [8]),
        .I3(stallD_OBUF_inst_i_2_n_0),
        .O(\out[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAA00AACF)) 
    \out[12]_i_1 
       (.I0(srca2D[12]),
        .I1(Q[10]),
        .I2(jumpD),
        .I3(jrD),
        .I4(\out[12]_i_3_n_0 ),
        .O(\out_reg[31] [12]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \out[12]_i_2 
       (.I0(aluoutE1[12]),
        .I1(\q[31]_i_5__0_n_0 ),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(rd10[12]),
        .I4(\q[12]_i_3__0_n_0 ),
        .O(srca2D[12]));
  LUT4 #(
    .INIT(16'h444F)) 
    \out[12]_i_3 
       (.I0(pcbranchD[9]),
        .I1(\out[31]_i_6__0_n_0 ),
        .I2(\out_reg[31]_2 [9]),
        .I3(stallD_OBUF_inst_i_2_n_0),
        .O(\out[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAA00AACF)) 
    \out[13]_i_1 
       (.I0(srca2D[13]),
        .I1(Q[11]),
        .I2(jumpD),
        .I3(jrD),
        .I4(\out[13]_i_3_n_0 ),
        .O(\out_reg[31] [13]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \out[13]_i_2 
       (.I0(aluoutE1[13]),
        .I1(\q[31]_i_5__0_n_0 ),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(rd10[13]),
        .I4(\q[13]_i_3__0_n_0 ),
        .O(srca2D[13]));
  LUT4 #(
    .INIT(16'h444F)) 
    \out[13]_i_3 
       (.I0(pcbranchD[10]),
        .I1(\out[31]_i_6__0_n_0 ),
        .I2(\out_reg[31]_2 [10]),
        .I3(stallD_OBUF_inst_i_2_n_0),
        .O(\out[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAA00AACF)) 
    \out[14]_i_1 
       (.I0(srca2D[14]),
        .I1(Q[12]),
        .I2(jumpD),
        .I3(jrD),
        .I4(\out[14]_i_3_n_0 ),
        .O(\out_reg[31] [14]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \out[14]_i_2 
       (.I0(aluoutE1[14]),
        .I1(\q[31]_i_5__0_n_0 ),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(rd10[14]),
        .I4(\q[14]_i_3__0_n_0 ),
        .O(srca2D[14]));
  LUT4 #(
    .INIT(16'h444F)) 
    \out[14]_i_3 
       (.I0(pcbranchD[11]),
        .I1(\out[31]_i_6__0_n_0 ),
        .I2(\out_reg[31]_2 [11]),
        .I3(stallD_OBUF_inst_i_2_n_0),
        .O(\out[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAA00AACF)) 
    \out[15]_i_1 
       (.I0(srca2D[15]),
        .I1(Q[13]),
        .I2(jumpD),
        .I3(jrD),
        .I4(\out[15]_i_3_n_0 ),
        .O(\out_reg[31] [15]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \out[15]_i_2 
       (.I0(aluoutE1[15]),
        .I1(\q[31]_i_5__0_n_0 ),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(rd10[15]),
        .I4(\q[15]_i_3__0_n_0 ),
        .O(srca2D[15]));
  LUT4 #(
    .INIT(16'h444F)) 
    \out[15]_i_3 
       (.I0(pcbranchD[12]),
        .I1(\out[31]_i_6__0_n_0 ),
        .I2(\out_reg[31]_2 [12]),
        .I3(stallD_OBUF_inst_i_2_n_0),
        .O(\out[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAA00AACF)) 
    \out[16]_i_1 
       (.I0(srca2D[16]),
        .I1(Q[14]),
        .I2(jumpD),
        .I3(jrD),
        .I4(\out[16]_i_3_n_0 ),
        .O(\out_reg[31] [16]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \out[16]_i_2 
       (.I0(aluoutE1[16]),
        .I1(\q[31]_i_5__0_n_0 ),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(rd10[16]),
        .I4(\q[16]_i_3__0_n_0 ),
        .O(srca2D[16]));
  LUT4 #(
    .INIT(16'h444F)) 
    \out[16]_i_3 
       (.I0(pcbranchD[13]),
        .I1(\out[31]_i_6__0_n_0 ),
        .I2(\out_reg[31]_2 [13]),
        .I3(stallD_OBUF_inst_i_2_n_0),
        .O(\out[16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAA00AACF)) 
    \out[17]_i_1 
       (.I0(srca2D[17]),
        .I1(Q[15]),
        .I2(jumpD),
        .I3(jrD),
        .I4(\out[17]_i_3_n_0 ),
        .O(\out_reg[31] [17]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \out[17]_i_2 
       (.I0(aluoutE1[17]),
        .I1(\q[31]_i_5__0_n_0 ),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(rd10[17]),
        .I4(\q[17]_i_3__0_n_0 ),
        .O(srca2D[17]));
  LUT4 #(
    .INIT(16'h444F)) 
    \out[17]_i_3 
       (.I0(pcbranchD[14]),
        .I1(\out[31]_i_6__0_n_0 ),
        .I2(\out_reg[31]_2 [14]),
        .I3(stallD_OBUF_inst_i_2_n_0),
        .O(\out[17]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAA00AACF)) 
    \out[18]_i_1 
       (.I0(srca2D[18]),
        .I1(Q[16]),
        .I2(jumpD),
        .I3(jrD),
        .I4(\out[18]_i_3_n_0 ),
        .O(\out_reg[31] [18]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \out[18]_i_2 
       (.I0(aluoutE1[18]),
        .I1(\q[31]_i_5__0_n_0 ),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(rd10[18]),
        .I4(\q[18]_i_3__0_n_0 ),
        .O(srca2D[18]));
  LUT4 #(
    .INIT(16'h444F)) 
    \out[18]_i_3 
       (.I0(pcbranchD[15]),
        .I1(\out[31]_i_6__0_n_0 ),
        .I2(\out_reg[31]_2 [15]),
        .I3(stallD_OBUF_inst_i_2_n_0),
        .O(\out[18]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAA00AACF)) 
    \out[19]_i_1 
       (.I0(srca2D[19]),
        .I1(Q[17]),
        .I2(jumpD),
        .I3(jrD),
        .I4(\out[19]_i_3_n_0 ),
        .O(\out_reg[31] [19]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \out[19]_i_2 
       (.I0(aluoutE1[19]),
        .I1(\q[31]_i_5__0_n_0 ),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(rd10[19]),
        .I4(\q[19]_i_3__0_n_0 ),
        .O(srca2D[19]));
  LUT4 #(
    .INIT(16'h444F)) 
    \out[19]_i_3 
       (.I0(pcbranchD[16]),
        .I1(\out[31]_i_6__0_n_0 ),
        .I2(\out_reg[31]_2 [16]),
        .I3(stallD_OBUF_inst_i_2_n_0),
        .O(\out[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8B888B8B8B888888)) 
    \out[1]_i_1 
       (.I0(srca2D[1]),
        .I1(jrD),
        .I2(jumpD),
        .I3(\out_reg[31]_1 [1]),
        .I4(pcsrcD),
        .I5(\out_reg[2] [1]),
        .O(\out_reg[31] [1]));
  LUT6 #(
    .INIT(64'h0000000400040000)) 
    \out[1]_i_2__0 
       (.I0(opD[1]),
        .I1(opD[2]),
        .I2(opD[3]),
        .I3(\q[5]_i_2__0_n_0 ),
        .I4(CO),
        .I5(opD[0]),
        .O(pcsrcD));
  LUT5 #(
    .INIT(32'hAA00AACF)) 
    \out[20]_i_1 
       (.I0(srca2D[20]),
        .I1(Q[18]),
        .I2(jumpD),
        .I3(jrD),
        .I4(\out[20]_i_3_n_0 ),
        .O(\out_reg[31] [20]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \out[20]_i_2 
       (.I0(aluoutE1[20]),
        .I1(\q[31]_i_5__0_n_0 ),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(rd10[20]),
        .I4(\q[20]_i_3__0_n_0 ),
        .O(srca2D[20]));
  LUT4 #(
    .INIT(16'h444F)) 
    \out[20]_i_3 
       (.I0(pcbranchD[17]),
        .I1(\out[31]_i_6__0_n_0 ),
        .I2(\out_reg[31]_2 [17]),
        .I3(stallD_OBUF_inst_i_2_n_0),
        .O(\out[20]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAA00AACF)) 
    \out[21]_i_1 
       (.I0(srca2D[21]),
        .I1(Q[19]),
        .I2(jumpD),
        .I3(jrD),
        .I4(\out[21]_i_3_n_0 ),
        .O(\out_reg[31] [21]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \out[21]_i_2 
       (.I0(aluoutE1[21]),
        .I1(\q[31]_i_5__0_n_0 ),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(rd10[21]),
        .I4(\q[21]_i_3__0_n_0 ),
        .O(srca2D[21]));
  LUT4 #(
    .INIT(16'h444F)) 
    \out[21]_i_3 
       (.I0(pcbranchD[18]),
        .I1(\out[31]_i_6__0_n_0 ),
        .I2(\out_reg[31]_2 [18]),
        .I3(stallD_OBUF_inst_i_2_n_0),
        .O(\out[21]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAA00AACF)) 
    \out[22]_i_1 
       (.I0(srca2D[22]),
        .I1(Q[20]),
        .I2(jumpD),
        .I3(jrD),
        .I4(\out[22]_i_3_n_0 ),
        .O(\out_reg[31] [22]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \out[22]_i_2 
       (.I0(aluoutE1[22]),
        .I1(\q[31]_i_5__0_n_0 ),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(rd10[22]),
        .I4(\q[22]_i_3__0_n_0 ),
        .O(srca2D[22]));
  LUT4 #(
    .INIT(16'h444F)) 
    \out[22]_i_3 
       (.I0(pcbranchD[19]),
        .I1(\out[31]_i_6__0_n_0 ),
        .I2(\out_reg[31]_2 [19]),
        .I3(stallD_OBUF_inst_i_2_n_0),
        .O(\out[22]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAA00AACF)) 
    \out[23]_i_1 
       (.I0(srca2D[23]),
        .I1(Q[21]),
        .I2(jumpD),
        .I3(jrD),
        .I4(\out[23]_i_3_n_0 ),
        .O(\out_reg[31] [23]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \out[23]_i_2 
       (.I0(aluoutE1[23]),
        .I1(\q[31]_i_5__0_n_0 ),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(rd10[23]),
        .I4(\q[23]_i_3__0_n_0 ),
        .O(srca2D[23]));
  LUT4 #(
    .INIT(16'h444F)) 
    \out[23]_i_3 
       (.I0(pcbranchD[20]),
        .I1(\out[31]_i_6__0_n_0 ),
        .I2(\out_reg[31]_2 [20]),
        .I3(stallD_OBUF_inst_i_2_n_0),
        .O(\out[23]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAA00AACF)) 
    \out[24]_i_1 
       (.I0(srca2D[24]),
        .I1(Q[22]),
        .I2(jumpD),
        .I3(jrD),
        .I4(\out[24]_i_3_n_0 ),
        .O(\out_reg[31] [24]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \out[24]_i_2 
       (.I0(aluoutE1[24]),
        .I1(\q[31]_i_5__0_n_0 ),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(rd10[24]),
        .I4(\q[24]_i_3__0_n_0 ),
        .O(srca2D[24]));
  LUT4 #(
    .INIT(16'h444F)) 
    \out[24]_i_3 
       (.I0(pcbranchD[21]),
        .I1(\out[31]_i_6__0_n_0 ),
        .I2(\out_reg[31]_2 [21]),
        .I3(stallD_OBUF_inst_i_2_n_0),
        .O(\out[24]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAA00AACF)) 
    \out[25]_i_1 
       (.I0(srca2D[25]),
        .I1(Q[23]),
        .I2(jumpD),
        .I3(jrD),
        .I4(\out[25]_i_3_n_0 ),
        .O(\out_reg[31] [25]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \out[25]_i_2 
       (.I0(aluoutE1[25]),
        .I1(\q[31]_i_5__0_n_0 ),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(rd10[25]),
        .I4(\q[25]_i_3__0_n_0 ),
        .O(srca2D[25]));
  LUT4 #(
    .INIT(16'h444F)) 
    \out[25]_i_3 
       (.I0(pcbranchD[22]),
        .I1(\out[31]_i_6__0_n_0 ),
        .I2(\out_reg[31]_2 [22]),
        .I3(stallD_OBUF_inst_i_2_n_0),
        .O(\out[25]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAA00AACF)) 
    \out[26]_i_1 
       (.I0(srca2D[26]),
        .I1(Q[24]),
        .I2(jumpD),
        .I3(jrD),
        .I4(\out[26]_i_3_n_0 ),
        .O(\out_reg[31] [26]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \out[26]_i_2 
       (.I0(aluoutE1[26]),
        .I1(\q[31]_i_5__0_n_0 ),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(rd10[26]),
        .I4(\q[26]_i_3__0_n_0 ),
        .O(srca2D[26]));
  LUT4 #(
    .INIT(16'h444F)) 
    \out[26]_i_3 
       (.I0(pcbranchD[23]),
        .I1(\out[31]_i_6__0_n_0 ),
        .I2(\out_reg[31]_2 [23]),
        .I3(stallD_OBUF_inst_i_2_n_0),
        .O(\out[26]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAA00AACF)) 
    \out[27]_i_1 
       (.I0(srca2D[27]),
        .I1(Q[25]),
        .I2(jumpD),
        .I3(jrD),
        .I4(\out[27]_i_3_n_0 ),
        .O(\out_reg[31] [27]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \out[27]_i_2 
       (.I0(aluoutE1[27]),
        .I1(\q[31]_i_5__0_n_0 ),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(rd10[27]),
        .I4(\q[27]_i_3__0_n_0 ),
        .O(srca2D[27]));
  LUT4 #(
    .INIT(16'h444F)) 
    \out[27]_i_3 
       (.I0(pcbranchD[24]),
        .I1(\out[31]_i_6__0_n_0 ),
        .I2(\out_reg[31]_2 [24]),
        .I3(stallD_OBUF_inst_i_2_n_0),
        .O(\out[27]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAA00AACF)) 
    \out[28]_i_1 
       (.I0(srca2D[28]),
        .I1(\out_reg[31]_1 [28]),
        .I2(jumpD),
        .I3(jrD),
        .I4(\out[28]_i_3_n_0 ),
        .O(\out_reg[31] [28]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \out[28]_i_2 
       (.I0(aluoutE1[28]),
        .I1(\q[31]_i_5__0_n_0 ),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(rd10[28]),
        .I4(\q[28]_i_3__0_n_0 ),
        .O(srca2D[28]));
  LUT4 #(
    .INIT(16'h444F)) 
    \out[28]_i_3 
       (.I0(pcbranchD[25]),
        .I1(\out[31]_i_6__0_n_0 ),
        .I2(\out_reg[31]_2 [25]),
        .I3(stallD_OBUF_inst_i_2_n_0),
        .O(\out[28]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAA00AACF)) 
    \out[29]_i_1 
       (.I0(srca2D[29]),
        .I1(\out_reg[31]_1 [29]),
        .I2(jumpD),
        .I3(jrD),
        .I4(\out[29]_i_3_n_0 ),
        .O(\out_reg[31] [29]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \out[29]_i_2 
       (.I0(aluoutE1[29]),
        .I1(\q[31]_i_5__0_n_0 ),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(rd10[29]),
        .I4(\q[29]_i_3__0_n_0 ),
        .O(srca2D[29]));
  LUT4 #(
    .INIT(16'h444F)) 
    \out[29]_i_3 
       (.I0(pcbranchD[26]),
        .I1(\out[31]_i_6__0_n_0 ),
        .I2(\out_reg[31]_2 [26]),
        .I3(stallD_OBUF_inst_i_2_n_0),
        .O(\out[29]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAA00AACF)) 
    \out[2]_i_1 
       (.I0(srca2D[2]),
        .I1(Q[0]),
        .I2(jumpD),
        .I3(jrD),
        .I4(\out[2]_i_2_n_0 ),
        .O(\out_reg[31] [2]));
  LUT5 #(
    .INIT(32'h90FF9090)) 
    \out[2]_i_2 
       (.I0(Q[0]),
        .I1(\out_reg[31]_1 [2]),
        .I2(\out[31]_i_6__0_n_0 ),
        .I3(stallD_OBUF_inst_i_2_n_0),
        .I4(\out_reg[2] [2]),
        .O(\out[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAA00AACF)) 
    \out[30]_i_1 
       (.I0(srca2D[30]),
        .I1(\out_reg[31]_1 [30]),
        .I2(jumpD),
        .I3(jrD),
        .I4(\out[30]_i_3_n_0 ),
        .O(\out_reg[31] [30]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \out[30]_i_2 
       (.I0(aluoutE1[30]),
        .I1(\q[31]_i_5__0_n_0 ),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(rd10[30]),
        .I4(\q[30]_i_3__0_n_0 ),
        .O(srca2D[30]));
  LUT4 #(
    .INIT(16'h444F)) 
    \out[30]_i_3 
       (.I0(pcbranchD[27]),
        .I1(\out[31]_i_6__0_n_0 ),
        .I2(\out_reg[31]_2 [27]),
        .I3(stallD_OBUF_inst_i_2_n_0),
        .O(\out[30]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \out[31]_i_1__0 
       (.I0(\q_reg[18]_0 ),
        .O(E));
  LUT5 #(
    .INIT(32'hAA00AACF)) 
    \out[31]_i_2 
       (.I0(srca2D[31]),
        .I1(\out_reg[31]_1 [31]),
        .I2(jumpD),
        .I3(jrD),
        .I4(\out[31]_i_5_n_0 ),
        .O(\out_reg[31] [31]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \out[31]_i_3 
       (.I0(aluoutE1[31]),
        .I1(\q[31]_i_5__0_n_0 ),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(rd10[31]),
        .I4(\q[31]_i_3__0_n_0 ),
        .O(srca2D[31]));
  LUT5 #(
    .INIT(32'h00000100)) 
    \out[31]_i_4 
       (.I0(opD[2]),
        .I1(opD[4]),
        .I2(opD[5]),
        .I3(opD[1]),
        .I4(opD[3]),
        .O(jumpD));
  LUT4 #(
    .INIT(16'h444F)) 
    \out[31]_i_5 
       (.I0(pcbranchD[28]),
        .I1(\out[31]_i_6__0_n_0 ),
        .I2(\out_reg[31]_2 [28]),
        .I3(stallD_OBUF_inst_i_2_n_0),
        .O(\out[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000600000000)) 
    \out[31]_i_6__0 
       (.I0(opD[0]),
        .I1(CO),
        .I2(opD[3]),
        .I3(opD[1]),
        .I4(\q[5]_i_2__0_n_0 ),
        .I5(opD[2]),
        .O(\out[31]_i_6__0_n_0 ));
  LUT5 #(
    .INIT(32'hAA00AACF)) 
    \out[3]_i_1 
       (.I0(srca2D[3]),
        .I1(Q[1]),
        .I2(jumpD),
        .I3(jrD),
        .I4(\out[3]_i_2__0_n_0 ),
        .O(\out_reg[31] [3]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h444F)) 
    \out[3]_i_2__0 
       (.I0(pcbranchD[0]),
        .I1(\out[31]_i_6__0_n_0 ),
        .I2(\out_reg[31]_2 [0]),
        .I3(stallD_OBUF_inst_i_2_n_0),
        .O(\out[3]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hAA00AACF)) 
    \out[4]_i_1 
       (.I0(srca2D[4]),
        .I1(Q[2]),
        .I2(jumpD),
        .I3(jrD),
        .I4(\out[4]_i_2__0_n_0 ),
        .O(\out_reg[31] [4]));
  LUT4 #(
    .INIT(16'h444F)) 
    \out[4]_i_2__0 
       (.I0(pcbranchD[1]),
        .I1(\out[31]_i_6__0_n_0 ),
        .I2(\out_reg[31]_2 [1]),
        .I3(stallD_OBUF_inst_i_2_n_0),
        .O(\out[4]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hAA00AACF)) 
    \out[5]_i_1 
       (.I0(srca2D[5]),
        .I1(Q[3]),
        .I2(jumpD),
        .I3(jrD),
        .I4(\out[5]_i_3_n_0 ),
        .O(\out_reg[31] [5]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \out[5]_i_2 
       (.I0(aluoutE1[5]),
        .I1(\q[31]_i_5__0_n_0 ),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(rd10[5]),
        .I4(\q[5]_i_3__0_n_0 ),
        .O(srca2D[5]));
  LUT4 #(
    .INIT(16'h444F)) 
    \out[5]_i_3 
       (.I0(pcbranchD[2]),
        .I1(\out[31]_i_6__0_n_0 ),
        .I2(\out_reg[31]_2 [2]),
        .I3(stallD_OBUF_inst_i_2_n_0),
        .O(\out[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAA00AACF)) 
    \out[6]_i_1 
       (.I0(srca2D[6]),
        .I1(Q[4]),
        .I2(jumpD),
        .I3(jrD),
        .I4(\out[6]_i_3_n_0 ),
        .O(\out_reg[31] [6]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \out[6]_i_2 
       (.I0(aluoutE1[6]),
        .I1(\q[31]_i_5__0_n_0 ),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(rd10[6]),
        .I4(\q[6]_i_3__0_n_0 ),
        .O(srca2D[6]));
  LUT4 #(
    .INIT(16'h444F)) 
    \out[6]_i_3 
       (.I0(pcbranchD[3]),
        .I1(\out[31]_i_6__0_n_0 ),
        .I2(\out_reg[31]_2 [3]),
        .I3(stallD_OBUF_inst_i_2_n_0),
        .O(\out[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAA00AACF)) 
    \out[7]_i_1 
       (.I0(srca2D[7]),
        .I1(Q[5]),
        .I2(jumpD),
        .I3(jrD),
        .I4(\out[7]_i_3_n_0 ),
        .O(\out_reg[31] [7]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \out[7]_i_2 
       (.I0(aluoutE1[7]),
        .I1(\q[31]_i_5__0_n_0 ),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(rd10[7]),
        .I4(\q[7]_i_3__0_n_0 ),
        .O(srca2D[7]));
  LUT4 #(
    .INIT(16'h444F)) 
    \out[7]_i_3 
       (.I0(pcbranchD[4]),
        .I1(\out[31]_i_6__0_n_0 ),
        .I2(\out_reg[31]_2 [4]),
        .I3(stallD_OBUF_inst_i_2_n_0),
        .O(\out[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAA00AACF)) 
    \out[8]_i_1 
       (.I0(srca2D[8]),
        .I1(Q[6]),
        .I2(jumpD),
        .I3(jrD),
        .I4(\out[8]_i_3_n_0 ),
        .O(\out_reg[31] [8]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \out[8]_i_2 
       (.I0(aluoutE1[8]),
        .I1(\q[31]_i_5__0_n_0 ),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(rd10[8]),
        .I4(\q[8]_i_3__0_n_0 ),
        .O(srca2D[8]));
  LUT4 #(
    .INIT(16'h444F)) 
    \out[8]_i_3 
       (.I0(pcbranchD[5]),
        .I1(\out[31]_i_6__0_n_0 ),
        .I2(\out_reg[31]_2 [5]),
        .I3(stallD_OBUF_inst_i_2_n_0),
        .O(\out[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAA00AACF)) 
    \out[9]_i_1 
       (.I0(srca2D[9]),
        .I1(Q[7]),
        .I2(jumpD),
        .I3(jrD),
        .I4(\out[9]_i_3_n_0 ),
        .O(\out_reg[31] [9]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \out[9]_i_2 
       (.I0(aluoutE1[9]),
        .I1(\q[31]_i_5__0_n_0 ),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(rd10[9]),
        .I4(\q[9]_i_3__0_n_0 ),
        .O(srca2D[9]));
  LUT4 #(
    .INIT(16'h444F)) 
    \out[9]_i_3 
       (.I0(pcbranchD[6]),
        .I1(\out[31]_i_6__0_n_0 ),
        .I2(\out_reg[31]_2 [6]),
        .I3(stallD_OBUF_inst_i_2_n_0),
        .O(\out[9]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__0_i_1
       (.I0(Q[7]),
        .I1(\out_reg[31]_1 [9]),
        .O(\q_reg[7]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__0_i_2
       (.I0(Q[6]),
        .I1(\out_reg[31]_1 [8]),
        .O(\q_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__0_i_3
       (.I0(Q[5]),
        .I1(\out_reg[31]_1 [7]),
        .O(\q_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__0_i_4
       (.I0(Q[4]),
        .I1(\out_reg[31]_1 [6]),
        .O(\q_reg[7]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__1_i_1
       (.I0(Q[11]),
        .I1(\out_reg[31]_1 [13]),
        .O(\q_reg[11]_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__1_i_2
       (.I0(Q[10]),
        .I1(\out_reg[31]_1 [12]),
        .O(\q_reg[11]_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__1_i_3
       (.I0(Q[9]),
        .I1(\out_reg[31]_1 [11]),
        .O(\q_reg[11]_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__1_i_4
       (.I0(Q[8]),
        .I1(\out_reg[31]_1 [10]),
        .O(\q_reg[11]_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__2_i_1
       (.I0(Q[15]),
        .I1(\out_reg[31]_1 [17]),
        .O(\q_reg[15]_2 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__2_i_2
       (.I0(Q[14]),
        .I1(\out_reg[31]_1 [16]),
        .O(\q_reg[15]_2 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__2_i_3
       (.I0(Q[13]),
        .I1(\out_reg[31]_1 [15]),
        .O(\q_reg[15]_2 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__2_i_4
       (.I0(Q[12]),
        .I1(\out_reg[31]_1 [14]),
        .O(\q_reg[15]_2 [0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA2AA)) 
    out_carry__3_i_1
       (.I0(Q[15]),
        .I1(opD[3]),
        .I2(opD[1]),
        .I3(opD[2]),
        .I4(opD[5]),
        .I5(opD[4]),
        .O(signimmD));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__3_i_2
       (.I0(signimmD),
        .I1(\out_reg[31]_1 [21]),
        .O(\out_reg[21] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__3_i_3
       (.I0(signimmD),
        .I1(\out_reg[31]_1 [20]),
        .O(\out_reg[21] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__3_i_4
       (.I0(signimmD),
        .I1(\out_reg[31]_1 [19]),
        .O(\out_reg[21] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__3_i_5
       (.I0(signimmD),
        .I1(\out_reg[31]_1 [18]),
        .O(\out_reg[21] [0]));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__4_i_1
       (.I0(signimmD),
        .I1(\out_reg[31]_1 [25]),
        .O(\out_reg[25] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__4_i_2
       (.I0(signimmD),
        .I1(\out_reg[31]_1 [24]),
        .O(\out_reg[25] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__4_i_3
       (.I0(signimmD),
        .I1(\out_reg[31]_1 [23]),
        .O(\out_reg[25] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__4_i_4
       (.I0(signimmD),
        .I1(\out_reg[31]_1 [22]),
        .O(\out_reg[25] [0]));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__5_i_1
       (.I0(signimmD),
        .I1(\out_reg[31]_1 [29]),
        .O(\out_reg[29] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__5_i_2
       (.I0(signimmD),
        .I1(\out_reg[31]_1 [28]),
        .O(\out_reg[29] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__5_i_3
       (.I0(signimmD),
        .I1(\out_reg[31]_1 [27]),
        .O(\out_reg[29] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__5_i_4
       (.I0(signimmD),
        .I1(\out_reg[31]_1 [26]),
        .O(\out_reg[29] [0]));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__6_i_1
       (.I0(signimmD),
        .I1(\out_reg[31]_1 [31]),
        .O(\out_reg[31]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry__6_i_2
       (.I0(signimmD),
        .I1(\out_reg[31]_1 [30]),
        .O(\out_reg[31]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry_i_1
       (.I0(Q[3]),
        .I1(\out_reg[31]_1 [5]),
        .O(\q_reg[3]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry_i_2
       (.I0(Q[2]),
        .I1(\out_reg[31]_1 [4]),
        .O(\q_reg[3]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry_i_3
       (.I0(Q[1]),
        .I1(\out_reg[31]_1 [3]),
        .O(\q_reg[3]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    out_carry_i_4
       (.I0(Q[0]),
        .I1(\out_reg[31]_1 [2]),
        .O(\q_reg[3]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[0]_i_1 
       (.I0(srcb2D[0]),
        .I1(\q_reg[18]_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \q[0]_i_1__0 
       (.I0(srca2D[0]),
        .I1(shiftD),
        .I2(Q[6]),
        .I3(\q_reg[18]_0 ),
        .O(\q_reg[18]_1 [0]));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \q[0]_i_1__1 
       (.I0(opD[3]),
        .I1(opD[1]),
        .I2(opD[5]),
        .I3(opD[4]),
        .I4(opD[2]),
        .I5(\q_reg[18]_0 ),
        .O(\q_reg[29]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[0]_i_1__2 
       (.I0(Q[0]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[15]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[0]_i_1__3 
       (.I0(Q[16]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[20]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[0]_i_1__4 
       (.I0(Q[11]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[11]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \q[0]_i_1__6 
       (.I0(jrD),
        .I1(stallD_OBUF_inst_i_2_n_0),
        .I2(\q_reg[18]_0 ),
        .I3(instr_IBUF[0]),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \q[0]_i_2 
       (.I0(aluoutE1[0]),
        .I1(\q[31]_i_5__0_n_0 ),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(rd10[0]),
        .I4(\q[0]_i_3__0_n_0 ),
        .O(srca2D[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \q[0]_i_2__0 
       (.I0(forwardBD[0]),
        .I1(forwardBD[1]),
        .I2(aluoutE1[0]),
        .I3(\q[31]_i_5_n_0 ),
        .I4(rd20[0]),
        .I5(\q[0]_i_3_n_0 ),
        .O(srcb2D[0]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \q[0]_i_3 
       (.I0(\q[31]_i_2__0_0 [0]),
        .I1(forwardBD[0]),
        .I2(forwardBD[1]),
        .I3(\q[31]_i_2__0_1 [0]),
        .O(\q[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0707F8000000F800)) 
    \q[0]_i_3__0 
       (.I0(\haz/p_9_in ),
        .I1(\q[31]_i_5_0 [1]),
        .I2(\haz/forwardAD1__0 ),
        .I3(\q[31]_i_2__0_0 [0]),
        .I4(forwardAD),
        .I5(\q[31]_i_2__0_1 [0]),
        .O(\q[0]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[10]_i_1 
       (.I0(srcb2D[10]),
        .I1(\q_reg[18]_0 ),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[10]_i_1__0 
       (.I0(srca3D[10]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[18]_1 [10]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[10]_i_1__1 
       (.I0(Q[10]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[15]_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \q[10]_i_1__3 
       (.I0(jrD),
        .I1(stallD_OBUF_inst_i_2_n_0),
        .I2(\q_reg[18]_0 ),
        .I3(instr_IBUF[10]),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'h00000000FFEAEAEA)) 
    \q[10]_i_2 
       (.I0(\q[10]_i_3__0_n_0 ),
        .I1(rd10[10]),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(\q[31]_i_5__0_n_0 ),
        .I4(aluoutE1[10]),
        .I5(shiftD),
        .O(srca3D[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \q[10]_i_2__0 
       (.I0(forwardBD[0]),
        .I1(forwardBD[1]),
        .I2(aluoutE1[10]),
        .I3(\q[31]_i_5_n_0 ),
        .I4(rd20[10]),
        .I5(\q[10]_i_3_n_0 ),
        .O(srcb2D[10]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \q[10]_i_3 
       (.I0(\q[31]_i_2__0_0 [10]),
        .I1(forwardBD[0]),
        .I2(forwardBD[1]),
        .I3(\q[31]_i_2__0_1 [10]),
        .O(\q[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0707F8000000F800)) 
    \q[10]_i_3__0 
       (.I0(\haz/p_9_in ),
        .I1(\q[31]_i_5_0 [1]),
        .I2(\haz/forwardAD1__0 ),
        .I3(\q[31]_i_2__0_0 [10]),
        .I4(forwardAD),
        .I5(\q[31]_i_2__0_1 [10]),
        .O(\q[10]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[11]_i_1 
       (.I0(srcb2D[11]),
        .I1(\q_reg[18]_0 ),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[11]_i_1__0 
       (.I0(srca3D[11]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[18]_1 [11]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \q[11]_i_1__2 
       (.I0(jrD),
        .I1(stallD_OBUF_inst_i_2_n_0),
        .I2(\q_reg[18]_0 ),
        .I3(instr_IBUF[11]),
        .O(p_1_in[11]));
  LUT6 #(
    .INIT(64'h00000000FFEAEAEA)) 
    \q[11]_i_2 
       (.I0(\q[11]_i_3__0_n_0 ),
        .I1(rd10[11]),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(\q[31]_i_5__0_n_0 ),
        .I4(aluoutE1[11]),
        .I5(shiftD),
        .O(srca3D[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \q[11]_i_2__0 
       (.I0(forwardBD[0]),
        .I1(forwardBD[1]),
        .I2(aluoutE1[11]),
        .I3(\q[31]_i_5_n_0 ),
        .I4(rd20[11]),
        .I5(\q[11]_i_3_n_0 ),
        .O(srcb2D[11]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \q[11]_i_3 
       (.I0(\q[31]_i_2__0_0 [11]),
        .I1(forwardBD[0]),
        .I2(forwardBD[1]),
        .I3(\q[31]_i_2__0_1 [11]),
        .O(\q[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0707F8000000F800)) 
    \q[11]_i_3__0 
       (.I0(\haz/p_9_in ),
        .I1(\q[31]_i_5_0 [1]),
        .I2(\haz/forwardAD1__0 ),
        .I3(\q[31]_i_2__0_0 [11]),
        .I4(forwardAD),
        .I5(\q[31]_i_2__0_1 [11]),
        .O(\q[11]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[12]_i_1 
       (.I0(srcb2D[12]),
        .I1(\q_reg[18]_0 ),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[12]_i_1__0 
       (.I0(srca3D[12]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[18]_1 [12]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \q[12]_i_1__2 
       (.I0(jrD),
        .I1(stallD_OBUF_inst_i_2_n_0),
        .I2(\q_reg[18]_0 ),
        .I3(instr_IBUF[12]),
        .O(p_1_in[12]));
  LUT6 #(
    .INIT(64'h00000000FFEAEAEA)) 
    \q[12]_i_2 
       (.I0(\q[12]_i_3__0_n_0 ),
        .I1(rd10[12]),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(\q[31]_i_5__0_n_0 ),
        .I4(aluoutE1[12]),
        .I5(shiftD),
        .O(srca3D[12]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \q[12]_i_2__0 
       (.I0(forwardBD[0]),
        .I1(forwardBD[1]),
        .I2(aluoutE1[12]),
        .I3(\q[31]_i_5_n_0 ),
        .I4(rd20[12]),
        .I5(\q[12]_i_3_n_0 ),
        .O(srcb2D[12]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \q[12]_i_3 
       (.I0(\q[31]_i_2__0_0 [12]),
        .I1(forwardBD[0]),
        .I2(forwardBD[1]),
        .I3(\q[31]_i_2__0_1 [12]),
        .O(\q[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0707F8000000F800)) 
    \q[12]_i_3__0 
       (.I0(\haz/p_9_in ),
        .I1(\q[31]_i_5_0 [1]),
        .I2(\haz/forwardAD1__0 ),
        .I3(\q[31]_i_2__0_0 [12]),
        .I4(forwardAD),
        .I5(\q[31]_i_2__0_1 [12]),
        .O(\q[12]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[13]_i_1 
       (.I0(srcb2D[13]),
        .I1(\q_reg[18]_0 ),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[13]_i_1__0 
       (.I0(srca3D[13]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[18]_1 [13]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \q[13]_i_1__2 
       (.I0(jrD),
        .I1(stallD_OBUF_inst_i_2_n_0),
        .I2(\q_reg[18]_0 ),
        .I3(instr_IBUF[13]),
        .O(p_1_in[13]));
  LUT6 #(
    .INIT(64'h00000000FFEAEAEA)) 
    \q[13]_i_2 
       (.I0(\q[13]_i_3__0_n_0 ),
        .I1(rd10[13]),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(\q[31]_i_5__0_n_0 ),
        .I4(aluoutE1[13]),
        .I5(shiftD),
        .O(srca3D[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \q[13]_i_2__0 
       (.I0(forwardBD[0]),
        .I1(forwardBD[1]),
        .I2(aluoutE1[13]),
        .I3(\q[31]_i_5_n_0 ),
        .I4(rd20[13]),
        .I5(\q[13]_i_3_n_0 ),
        .O(srcb2D[13]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \q[13]_i_3 
       (.I0(\q[31]_i_2__0_0 [13]),
        .I1(forwardBD[0]),
        .I2(forwardBD[1]),
        .I3(\q[31]_i_2__0_1 [13]),
        .O(\q[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0707F8000000F800)) 
    \q[13]_i_3__0 
       (.I0(\haz/p_9_in ),
        .I1(\q[31]_i_5_0 [1]),
        .I2(\haz/forwardAD1__0 ),
        .I3(\q[31]_i_2__0_0 [13]),
        .I4(forwardAD),
        .I5(\q[31]_i_2__0_1 [13]),
        .O(\q[13]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[14]_i_1 
       (.I0(srcb2D[14]),
        .I1(\q_reg[18]_0 ),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[14]_i_1__0 
       (.I0(srca3D[14]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[18]_1 [14]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \q[14]_i_1__2 
       (.I0(jrD),
        .I1(stallD_OBUF_inst_i_2_n_0),
        .I2(\q_reg[18]_0 ),
        .I3(instr_IBUF[14]),
        .O(p_1_in[14]));
  LUT6 #(
    .INIT(64'h00000000FFEAEAEA)) 
    \q[14]_i_2 
       (.I0(\q[14]_i_3__0_n_0 ),
        .I1(rd10[14]),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(\q[31]_i_5__0_n_0 ),
        .I4(aluoutE1[14]),
        .I5(shiftD),
        .O(srca3D[14]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \q[14]_i_2__0 
       (.I0(forwardBD[0]),
        .I1(forwardBD[1]),
        .I2(aluoutE1[14]),
        .I3(\q[31]_i_5_n_0 ),
        .I4(rd20[14]),
        .I5(\q[14]_i_3_n_0 ),
        .O(srcb2D[14]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \q[14]_i_3 
       (.I0(\q[31]_i_2__0_0 [14]),
        .I1(forwardBD[0]),
        .I2(forwardBD[1]),
        .I3(\q[31]_i_2__0_1 [14]),
        .O(\q[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0707F8000000F800)) 
    \q[14]_i_3__0 
       (.I0(\haz/p_9_in ),
        .I1(\q[31]_i_5_0 [1]),
        .I2(\haz/forwardAD1__0 ),
        .I3(\q[31]_i_2__0_0 [14]),
        .I4(forwardAD),
        .I5(\q[31]_i_2__0_1 [14]),
        .O(\q[14]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[15]_i_1 
       (.I0(srcb2D[15]),
        .I1(\q_reg[18]_0 ),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[15]_i_1__0 
       (.I0(srca3D[15]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[18]_1 [15]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \q[15]_i_1__2 
       (.I0(jrD),
        .I1(stallD_OBUF_inst_i_2_n_0),
        .I2(\q_reg[18]_0 ),
        .I3(instr_IBUF[15]),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'h00000000FFEAEAEA)) 
    \q[15]_i_2 
       (.I0(\q[15]_i_3__0_n_0 ),
        .I1(rd10[15]),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(\q[31]_i_5__0_n_0 ),
        .I4(aluoutE1[15]),
        .I5(shiftD),
        .O(srca3D[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \q[15]_i_2__0 
       (.I0(forwardBD[0]),
        .I1(forwardBD[1]),
        .I2(aluoutE1[15]),
        .I3(\q[31]_i_5_n_0 ),
        .I4(rd20[15]),
        .I5(\q[15]_i_3_n_0 ),
        .O(srcb2D[15]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \q[15]_i_3 
       (.I0(\q[31]_i_2__0_0 [15]),
        .I1(forwardBD[0]),
        .I2(forwardBD[1]),
        .I3(\q[31]_i_2__0_1 [15]),
        .O(\q[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0707F8000000F800)) 
    \q[15]_i_3__0 
       (.I0(\haz/p_9_in ),
        .I1(\q[31]_i_5_0 [1]),
        .I2(\haz/forwardAD1__0 ),
        .I3(\q[31]_i_2__0_0 [15]),
        .I4(forwardAD),
        .I5(\q[31]_i_2__0_1 [15]),
        .O(\q[15]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[16]_i_1 
       (.I0(srcb2D[16]),
        .I1(\q_reg[18]_0 ),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[16]_i_1__0 
       (.I0(srca3D[16]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[18]_1 [16]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \q[16]_i_1__2 
       (.I0(jrD),
        .I1(stallD_OBUF_inst_i_2_n_0),
        .I2(\q_reg[18]_0 ),
        .I3(instr_IBUF[16]),
        .O(p_1_in[16]));
  LUT6 #(
    .INIT(64'h00000000FFEAEAEA)) 
    \q[16]_i_2 
       (.I0(\q[16]_i_3__0_n_0 ),
        .I1(rd10[16]),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(\q[31]_i_5__0_n_0 ),
        .I4(aluoutE1[16]),
        .I5(shiftD),
        .O(srca3D[16]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \q[16]_i_2__0 
       (.I0(forwardBD[0]),
        .I1(forwardBD[1]),
        .I2(aluoutE1[16]),
        .I3(\q[31]_i_5_n_0 ),
        .I4(rd20[16]),
        .I5(\q[16]_i_3_n_0 ),
        .O(srcb2D[16]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \q[16]_i_3 
       (.I0(\q[31]_i_2__0_0 [16]),
        .I1(forwardBD[0]),
        .I2(forwardBD[1]),
        .I3(\q[31]_i_2__0_1 [16]),
        .O(\q[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0707F8000000F800)) 
    \q[16]_i_3__0 
       (.I0(\haz/p_9_in ),
        .I1(\q[31]_i_5_0 [1]),
        .I2(\haz/forwardAD1__0 ),
        .I3(\q[31]_i_2__0_0 [16]),
        .I4(forwardAD),
        .I5(\q[31]_i_2__0_1 [16]),
        .O(\q[16]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[17]_i_1 
       (.I0(srcb2D[17]),
        .I1(\q_reg[18]_0 ),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[17]_i_1__0 
       (.I0(srca3D[17]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[18]_1 [17]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \q[17]_i_1__2 
       (.I0(jrD),
        .I1(stallD_OBUF_inst_i_2_n_0),
        .I2(\q_reg[18]_0 ),
        .I3(instr_IBUF[17]),
        .O(p_1_in[17]));
  LUT6 #(
    .INIT(64'h00000000FFEAEAEA)) 
    \q[17]_i_2 
       (.I0(\q[17]_i_3__0_n_0 ),
        .I1(rd10[17]),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(\q[31]_i_5__0_n_0 ),
        .I4(aluoutE1[17]),
        .I5(shiftD),
        .O(srca3D[17]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \q[17]_i_2__0 
       (.I0(forwardBD[0]),
        .I1(forwardBD[1]),
        .I2(aluoutE1[17]),
        .I3(\q[31]_i_5_n_0 ),
        .I4(rd20[17]),
        .I5(\q[17]_i_3_n_0 ),
        .O(srcb2D[17]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \q[17]_i_3 
       (.I0(\q[31]_i_2__0_0 [17]),
        .I1(forwardBD[0]),
        .I2(forwardBD[1]),
        .I3(\q[31]_i_2__0_1 [17]),
        .O(\q[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0707F8000000F800)) 
    \q[17]_i_3__0 
       (.I0(\haz/p_9_in ),
        .I1(\q[31]_i_5_0 [1]),
        .I2(\haz/forwardAD1__0 ),
        .I3(\q[31]_i_2__0_0 [17]),
        .I4(forwardAD),
        .I5(\q[31]_i_2__0_1 [17]),
        .O(\q[17]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[18]_i_1 
       (.I0(srcb2D[18]),
        .I1(\q_reg[18]_0 ),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[18]_i_1__0 
       (.I0(srca3D[18]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[18]_1 [18]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \q[18]_i_1__2 
       (.I0(jrD),
        .I1(stallD_OBUF_inst_i_2_n_0),
        .I2(\q_reg[18]_0 ),
        .I3(instr_IBUF[18]),
        .O(p_1_in[18]));
  LUT6 #(
    .INIT(64'h00000000FFEAEAEA)) 
    \q[18]_i_2 
       (.I0(\q[18]_i_3__0_n_0 ),
        .I1(rd10[18]),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(\q[31]_i_5__0_n_0 ),
        .I4(aluoutE1[18]),
        .I5(shiftD),
        .O(srca3D[18]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \q[18]_i_2__0 
       (.I0(forwardBD[0]),
        .I1(forwardBD[1]),
        .I2(aluoutE1[18]),
        .I3(\q[31]_i_5_n_0 ),
        .I4(rd20[18]),
        .I5(\q[18]_i_3_n_0 ),
        .O(srcb2D[18]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \q[18]_i_3 
       (.I0(\q[31]_i_2__0_0 [18]),
        .I1(forwardBD[0]),
        .I2(forwardBD[1]),
        .I3(\q[31]_i_2__0_1 [18]),
        .O(\q[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0707F8000000F800)) 
    \q[18]_i_3__0 
       (.I0(\haz/p_9_in ),
        .I1(\q[31]_i_5_0 [1]),
        .I2(\haz/forwardAD1__0 ),
        .I3(\q[31]_i_2__0_0 [18]),
        .I4(forwardAD),
        .I5(\q[31]_i_2__0_1 [18]),
        .O(\q[18]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[19]_i_1 
       (.I0(srcb2D[19]),
        .I1(\q_reg[18]_0 ),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[19]_i_1__0 
       (.I0(srca3D[19]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[18]_1 [19]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \q[19]_i_1__2 
       (.I0(jrD),
        .I1(stallD_OBUF_inst_i_2_n_0),
        .I2(\q_reg[18]_0 ),
        .I3(instr_IBUF[19]),
        .O(p_1_in[19]));
  LUT6 #(
    .INIT(64'h00000000FFEAEAEA)) 
    \q[19]_i_2 
       (.I0(\q[19]_i_3__0_n_0 ),
        .I1(rd10[19]),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(\q[31]_i_5__0_n_0 ),
        .I4(aluoutE1[19]),
        .I5(shiftD),
        .O(srca3D[19]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \q[19]_i_2__0 
       (.I0(forwardBD[0]),
        .I1(forwardBD[1]),
        .I2(aluoutE1[19]),
        .I3(\q[31]_i_5_n_0 ),
        .I4(rd20[19]),
        .I5(\q[19]_i_3_n_0 ),
        .O(srcb2D[19]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \q[19]_i_3 
       (.I0(\q[31]_i_2__0_0 [19]),
        .I1(forwardBD[0]),
        .I2(forwardBD[1]),
        .I3(\q[31]_i_2__0_1 [19]),
        .O(\q[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0707F8000000F800)) 
    \q[19]_i_3__0 
       (.I0(\haz/p_9_in ),
        .I1(\q[31]_i_5_0 [1]),
        .I2(\haz/forwardAD1__0 ),
        .I3(\q[31]_i_2__0_0 [19]),
        .I4(forwardAD),
        .I5(\q[31]_i_2__0_1 [19]),
        .O(\q[19]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[1]_i_1 
       (.I0(srcb2D[1]),
        .I1(\q_reg[18]_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \q[1]_i_1__0 
       (.I0(srca2D[1]),
        .I1(shiftD),
        .I2(Q[7]),
        .I3(\q_reg[18]_0 ),
        .O(\q_reg[18]_1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h3222)) 
    \q[1]_i_1__1 
       (.I0(\q[1]_i_2__0_n_0 ),
        .I1(\q_reg[18]_0 ),
        .I2(\q[1]_i_3__0_n_0 ),
        .I3(\c/md/controls__46 [2]),
        .O(\q_reg[29]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[1]_i_1__2 
       (.I0(Q[1]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[15]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[1]_i_1__3 
       (.I0(Q[17]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[20]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[1]_i_1__4 
       (.I0(Q[12]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[12]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \q[1]_i_1__6 
       (.I0(jrD),
        .I1(stallD_OBUF_inst_i_2_n_0),
        .I2(\q_reg[18]_0 ),
        .I3(instr_IBUF[1]),
        .O(p_1_in[1]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \q[1]_i_2 
       (.I0(aluoutE1[1]),
        .I1(\q[31]_i_5__0_n_0 ),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(rd10[1]),
        .I4(\q[1]_i_3__1_n_0 ),
        .O(srca2D[1]));
  LUT6 #(
    .INIT(64'hFFFFEEEF00000000)) 
    \q[1]_i_2__0 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[5]),
        .I3(Q[1]),
        .I4(\q[2]_i_3__0_n_0 ),
        .I5(\c/md/controls__46 [1]),
        .O(\q[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \q[1]_i_2__1 
       (.I0(forwardBD[0]),
        .I1(forwardBD[1]),
        .I2(aluoutE1[1]),
        .I3(\q[31]_i_5_n_0 ),
        .I4(rd20[1]),
        .I5(\q[1]_i_3_n_0 ),
        .O(srcb2D[1]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \q[1]_i_3 
       (.I0(\q[31]_i_2__0_0 [1]),
        .I1(forwardBD[0]),
        .I2(forwardBD[1]),
        .I3(\q[31]_i_2__0_1 [1]),
        .O(\q[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000003100)) 
    \q[1]_i_3__0 
       (.I0(opD[3]),
        .I1(opD[1]),
        .I2(opD[0]),
        .I3(opD[2]),
        .I4(opD[5]),
        .I5(opD[4]),
        .O(\q[1]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0707F8000000F800)) 
    \q[1]_i_3__1 
       (.I0(\haz/p_9_in ),
        .I1(\q[31]_i_5_0 [1]),
        .I2(\haz/forwardAD1__0 ),
        .I3(\q[31]_i_2__0_0 [1]),
        .I4(forwardAD),
        .I5(\q[31]_i_2__0_1 [1]),
        .O(\q[1]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[20]_i_1 
       (.I0(srcb2D[20]),
        .I1(\q_reg[18]_0 ),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[20]_i_1__0 
       (.I0(srca3D[20]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[18]_1 [20]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \q[20]_i_1__2 
       (.I0(jrD),
        .I1(stallD_OBUF_inst_i_2_n_0),
        .I2(\q_reg[18]_0 ),
        .I3(instr_IBUF[20]),
        .O(p_1_in[20]));
  LUT6 #(
    .INIT(64'h00000000FFEAEAEA)) 
    \q[20]_i_2 
       (.I0(\q[20]_i_3__0_n_0 ),
        .I1(rd10[20]),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(\q[31]_i_5__0_n_0 ),
        .I4(aluoutE1[20]),
        .I5(shiftD),
        .O(srca3D[20]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \q[20]_i_2__0 
       (.I0(forwardBD[0]),
        .I1(forwardBD[1]),
        .I2(aluoutE1[20]),
        .I3(\q[31]_i_5_n_0 ),
        .I4(rd20[20]),
        .I5(\q[20]_i_3_n_0 ),
        .O(srcb2D[20]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \q[20]_i_3 
       (.I0(\q[31]_i_2__0_0 [20]),
        .I1(forwardBD[0]),
        .I2(forwardBD[1]),
        .I3(\q[31]_i_2__0_1 [20]),
        .O(\q[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0707F8000000F800)) 
    \q[20]_i_3__0 
       (.I0(\haz/p_9_in ),
        .I1(\q[31]_i_5_0 [1]),
        .I2(\haz/forwardAD1__0 ),
        .I3(\q[31]_i_2__0_0 [20]),
        .I4(forwardAD),
        .I5(\q[31]_i_2__0_1 [20]),
        .O(\q[20]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[21]_i_1 
       (.I0(srcb2D[21]),
        .I1(\q_reg[18]_0 ),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[21]_i_1__0 
       (.I0(srca3D[21]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[18]_1 [21]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \q[21]_i_1__2 
       (.I0(jrD),
        .I1(stallD_OBUF_inst_i_2_n_0),
        .I2(\q_reg[18]_0 ),
        .I3(instr_IBUF[21]),
        .O(p_1_in[21]));
  LUT6 #(
    .INIT(64'h00000000FFEAEAEA)) 
    \q[21]_i_2 
       (.I0(\q[21]_i_3__0_n_0 ),
        .I1(rd10[21]),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(\q[31]_i_5__0_n_0 ),
        .I4(aluoutE1[21]),
        .I5(shiftD),
        .O(srca3D[21]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \q[21]_i_2__0 
       (.I0(forwardBD[0]),
        .I1(forwardBD[1]),
        .I2(aluoutE1[21]),
        .I3(\q[31]_i_5_n_0 ),
        .I4(rd20[21]),
        .I5(\q[21]_i_3_n_0 ),
        .O(srcb2D[21]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \q[21]_i_3 
       (.I0(\q[31]_i_2__0_0 [21]),
        .I1(forwardBD[0]),
        .I2(forwardBD[1]),
        .I3(\q[31]_i_2__0_1 [21]),
        .O(\q[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0707F8000000F800)) 
    \q[21]_i_3__0 
       (.I0(\haz/p_9_in ),
        .I1(\q[31]_i_5_0 [1]),
        .I2(\haz/forwardAD1__0 ),
        .I3(\q[31]_i_2__0_0 [21]),
        .I4(forwardAD),
        .I5(\q[31]_i_2__0_1 [21]),
        .O(\q[21]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[22]_i_1 
       (.I0(srcb2D[22]),
        .I1(\q_reg[18]_0 ),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[22]_i_1__0 
       (.I0(srca3D[22]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[18]_1 [22]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \q[22]_i_1__2 
       (.I0(jrD),
        .I1(stallD_OBUF_inst_i_2_n_0),
        .I2(\q_reg[18]_0 ),
        .I3(instr_IBUF[22]),
        .O(p_1_in[22]));
  LUT6 #(
    .INIT(64'h00000000FFEAEAEA)) 
    \q[22]_i_2 
       (.I0(\q[22]_i_3__0_n_0 ),
        .I1(rd10[22]),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(\q[31]_i_5__0_n_0 ),
        .I4(aluoutE1[22]),
        .I5(shiftD),
        .O(srca3D[22]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \q[22]_i_2__0 
       (.I0(forwardBD[0]),
        .I1(forwardBD[1]),
        .I2(aluoutE1[22]),
        .I3(\q[31]_i_5_n_0 ),
        .I4(rd20[22]),
        .I5(\q[22]_i_3_n_0 ),
        .O(srcb2D[22]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \q[22]_i_3 
       (.I0(\q[31]_i_2__0_0 [22]),
        .I1(forwardBD[0]),
        .I2(forwardBD[1]),
        .I3(\q[31]_i_2__0_1 [22]),
        .O(\q[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0707F8000000F800)) 
    \q[22]_i_3__0 
       (.I0(\haz/p_9_in ),
        .I1(\q[31]_i_5_0 [1]),
        .I2(\haz/forwardAD1__0 ),
        .I3(\q[31]_i_2__0_0 [22]),
        .I4(forwardAD),
        .I5(\q[31]_i_2__0_1 [22]),
        .O(\q[22]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[23]_i_1 
       (.I0(srcb2D[23]),
        .I1(\q_reg[18]_0 ),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[23]_i_1__0 
       (.I0(srca3D[23]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[18]_1 [23]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \q[23]_i_1__2 
       (.I0(jrD),
        .I1(stallD_OBUF_inst_i_2_n_0),
        .I2(\q_reg[18]_0 ),
        .I3(instr_IBUF[23]),
        .O(p_1_in[23]));
  LUT6 #(
    .INIT(64'h00000000FFEAEAEA)) 
    \q[23]_i_2 
       (.I0(\q[23]_i_3__0_n_0 ),
        .I1(rd10[23]),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(\q[31]_i_5__0_n_0 ),
        .I4(aluoutE1[23]),
        .I5(shiftD),
        .O(srca3D[23]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \q[23]_i_2__0 
       (.I0(forwardBD[0]),
        .I1(forwardBD[1]),
        .I2(aluoutE1[23]),
        .I3(\q[31]_i_5_n_0 ),
        .I4(rd20[23]),
        .I5(\q[23]_i_3_n_0 ),
        .O(srcb2D[23]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \q[23]_i_3 
       (.I0(\q[31]_i_2__0_0 [23]),
        .I1(forwardBD[0]),
        .I2(forwardBD[1]),
        .I3(\q[31]_i_2__0_1 [23]),
        .O(\q[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0707F8000000F800)) 
    \q[23]_i_3__0 
       (.I0(\haz/p_9_in ),
        .I1(\q[31]_i_5_0 [1]),
        .I2(\haz/forwardAD1__0 ),
        .I3(\q[31]_i_2__0_0 [23]),
        .I4(forwardAD),
        .I5(\q[31]_i_2__0_1 [23]),
        .O(\q[23]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[24]_i_1 
       (.I0(srcb2D[24]),
        .I1(\q_reg[18]_0 ),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[24]_i_1__0 
       (.I0(srca3D[24]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[18]_1 [24]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \q[24]_i_1__2 
       (.I0(jrD),
        .I1(stallD_OBUF_inst_i_2_n_0),
        .I2(\q_reg[18]_0 ),
        .I3(instr_IBUF[24]),
        .O(p_1_in[24]));
  LUT6 #(
    .INIT(64'h00000000FFEAEAEA)) 
    \q[24]_i_2 
       (.I0(\q[24]_i_3__0_n_0 ),
        .I1(rd10[24]),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(\q[31]_i_5__0_n_0 ),
        .I4(aluoutE1[24]),
        .I5(shiftD),
        .O(srca3D[24]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \q[24]_i_2__0 
       (.I0(forwardBD[0]),
        .I1(forwardBD[1]),
        .I2(aluoutE1[24]),
        .I3(\q[31]_i_5_n_0 ),
        .I4(rd20[24]),
        .I5(\q[24]_i_3_n_0 ),
        .O(srcb2D[24]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \q[24]_i_3 
       (.I0(\q[31]_i_2__0_0 [24]),
        .I1(forwardBD[0]),
        .I2(forwardBD[1]),
        .I3(\q[31]_i_2__0_1 [24]),
        .O(\q[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0707F8000000F800)) 
    \q[24]_i_3__0 
       (.I0(\haz/p_9_in ),
        .I1(\q[31]_i_5_0 [1]),
        .I2(\haz/forwardAD1__0 ),
        .I3(\q[31]_i_2__0_0 [24]),
        .I4(forwardAD),
        .I5(\q[31]_i_2__0_1 [24]),
        .O(\q[24]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[25]_i_1 
       (.I0(srcb2D[25]),
        .I1(\q_reg[18]_0 ),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[25]_i_1__0 
       (.I0(srca3D[25]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[18]_1 [25]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \q[25]_i_1__2 
       (.I0(jrD),
        .I1(stallD_OBUF_inst_i_2_n_0),
        .I2(\q_reg[18]_0 ),
        .I3(instr_IBUF[25]),
        .O(p_1_in[25]));
  LUT6 #(
    .INIT(64'h00000000FFEAEAEA)) 
    \q[25]_i_2 
       (.I0(\q[25]_i_3__0_n_0 ),
        .I1(rd10[25]),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(\q[31]_i_5__0_n_0 ),
        .I4(aluoutE1[25]),
        .I5(shiftD),
        .O(srca3D[25]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \q[25]_i_2__0 
       (.I0(forwardBD[0]),
        .I1(forwardBD[1]),
        .I2(aluoutE1[25]),
        .I3(\q[31]_i_5_n_0 ),
        .I4(rd20[25]),
        .I5(\q[25]_i_3_n_0 ),
        .O(srcb2D[25]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \q[25]_i_3 
       (.I0(\q[31]_i_2__0_0 [25]),
        .I1(forwardBD[0]),
        .I2(forwardBD[1]),
        .I3(\q[31]_i_2__0_1 [25]),
        .O(\q[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0707F8000000F800)) 
    \q[25]_i_3__0 
       (.I0(\haz/p_9_in ),
        .I1(\q[31]_i_5_0 [1]),
        .I2(\haz/forwardAD1__0 ),
        .I3(\q[31]_i_2__0_0 [25]),
        .I4(forwardAD),
        .I5(\q[31]_i_2__0_1 [25]),
        .O(\q[25]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[26]_i_1 
       (.I0(srcb2D[26]),
        .I1(\q_reg[18]_0 ),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[26]_i_1__0 
       (.I0(srca3D[26]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[18]_1 [26]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \q[26]_i_1__2 
       (.I0(jrD),
        .I1(stallD_OBUF_inst_i_2_n_0),
        .I2(\q_reg[18]_0 ),
        .I3(instr_IBUF[26]),
        .O(p_1_in[26]));
  LUT6 #(
    .INIT(64'h00000000FFEAEAEA)) 
    \q[26]_i_2 
       (.I0(\q[26]_i_3__0_n_0 ),
        .I1(rd10[26]),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(\q[31]_i_5__0_n_0 ),
        .I4(aluoutE1[26]),
        .I5(shiftD),
        .O(srca3D[26]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \q[26]_i_2__0 
       (.I0(forwardBD[0]),
        .I1(forwardBD[1]),
        .I2(aluoutE1[26]),
        .I3(\q[31]_i_5_n_0 ),
        .I4(rd20[26]),
        .I5(\q[26]_i_3_n_0 ),
        .O(srcb2D[26]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \q[26]_i_3 
       (.I0(\q[31]_i_2__0_0 [26]),
        .I1(forwardBD[0]),
        .I2(forwardBD[1]),
        .I3(\q[31]_i_2__0_1 [26]),
        .O(\q[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0707F8000000F800)) 
    \q[26]_i_3__0 
       (.I0(\haz/p_9_in ),
        .I1(\q[31]_i_5_0 [1]),
        .I2(\haz/forwardAD1__0 ),
        .I3(\q[31]_i_2__0_0 [26]),
        .I4(forwardAD),
        .I5(\q[31]_i_2__0_1 [26]),
        .O(\q[26]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[27]_i_1 
       (.I0(srcb2D[27]),
        .I1(\q_reg[18]_0 ),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[27]_i_1__0 
       (.I0(srca3D[27]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[18]_1 [27]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \q[27]_i_1__2 
       (.I0(jrD),
        .I1(stallD_OBUF_inst_i_2_n_0),
        .I2(\q_reg[18]_0 ),
        .I3(instr_IBUF[27]),
        .O(p_1_in[27]));
  LUT6 #(
    .INIT(64'h00000000FFEAEAEA)) 
    \q[27]_i_2 
       (.I0(\q[27]_i_3__0_n_0 ),
        .I1(rd10[27]),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(\q[31]_i_5__0_n_0 ),
        .I4(aluoutE1[27]),
        .I5(shiftD),
        .O(srca3D[27]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \q[27]_i_2__0 
       (.I0(forwardBD[0]),
        .I1(forwardBD[1]),
        .I2(aluoutE1[27]),
        .I3(\q[31]_i_5_n_0 ),
        .I4(rd20[27]),
        .I5(\q[27]_i_3_n_0 ),
        .O(srcb2D[27]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \q[27]_i_3 
       (.I0(\q[31]_i_2__0_0 [27]),
        .I1(forwardBD[0]),
        .I2(forwardBD[1]),
        .I3(\q[31]_i_2__0_1 [27]),
        .O(\q[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0707F8000000F800)) 
    \q[27]_i_3__0 
       (.I0(\haz/p_9_in ),
        .I1(\q[31]_i_5_0 [1]),
        .I2(\haz/forwardAD1__0 ),
        .I3(\q[31]_i_2__0_0 [27]),
        .I4(forwardAD),
        .I5(\q[31]_i_2__0_1 [27]),
        .O(\q[27]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[28]_i_1 
       (.I0(srcb2D[28]),
        .I1(\q_reg[18]_0 ),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[28]_i_1__0 
       (.I0(srca3D[28]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[18]_1 [28]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \q[28]_i_1__2 
       (.I0(jrD),
        .I1(stallD_OBUF_inst_i_2_n_0),
        .I2(\q_reg[18]_0 ),
        .I3(instr_IBUF[28]),
        .O(p_1_in[28]));
  LUT6 #(
    .INIT(64'h00000000FFEAEAEA)) 
    \q[28]_i_2 
       (.I0(\q[28]_i_3__0_n_0 ),
        .I1(rd10[28]),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(\q[31]_i_5__0_n_0 ),
        .I4(aluoutE1[28]),
        .I5(shiftD),
        .O(srca3D[28]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \q[28]_i_2__0 
       (.I0(forwardBD[0]),
        .I1(forwardBD[1]),
        .I2(aluoutE1[28]),
        .I3(\q[31]_i_5_n_0 ),
        .I4(rd20[28]),
        .I5(\q[28]_i_3_n_0 ),
        .O(srcb2D[28]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \q[28]_i_3 
       (.I0(\q[31]_i_2__0_0 [28]),
        .I1(forwardBD[0]),
        .I2(forwardBD[1]),
        .I3(\q[31]_i_2__0_1 [28]),
        .O(\q[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0707F8000000F800)) 
    \q[28]_i_3__0 
       (.I0(\haz/p_9_in ),
        .I1(\q[31]_i_5_0 [1]),
        .I2(\haz/forwardAD1__0 ),
        .I3(\q[31]_i_2__0_0 [28]),
        .I4(forwardAD),
        .I5(\q[31]_i_2__0_1 [28]),
        .O(\q[28]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[29]_i_1 
       (.I0(srcb2D[29]),
        .I1(\q_reg[18]_0 ),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[29]_i_1__0 
       (.I0(srca3D[29]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[18]_1 [29]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \q[29]_i_1__2 
       (.I0(jrD),
        .I1(stallD_OBUF_inst_i_2_n_0),
        .I2(\q_reg[18]_0 ),
        .I3(instr_IBUF[29]),
        .O(p_1_in[29]));
  LUT6 #(
    .INIT(64'h00000000FFEAEAEA)) 
    \q[29]_i_2 
       (.I0(\q[29]_i_3__0_n_0 ),
        .I1(rd10[29]),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(\q[31]_i_5__0_n_0 ),
        .I4(aluoutE1[29]),
        .I5(shiftD),
        .O(srca3D[29]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \q[29]_i_2__0 
       (.I0(forwardBD[0]),
        .I1(forwardBD[1]),
        .I2(aluoutE1[29]),
        .I3(\q[31]_i_5_n_0 ),
        .I4(rd20[29]),
        .I5(\q[29]_i_3_n_0 ),
        .O(srcb2D[29]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \q[29]_i_3 
       (.I0(\q[31]_i_2__0_0 [29]),
        .I1(forwardBD[0]),
        .I2(forwardBD[1]),
        .I3(\q[31]_i_2__0_1 [29]),
        .O(\q[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0707F8000000F800)) 
    \q[29]_i_3__0 
       (.I0(\haz/p_9_in ),
        .I1(\q[31]_i_5_0 [1]),
        .I2(\haz/forwardAD1__0 ),
        .I3(\q[31]_i_2__0_0 [29]),
        .I4(forwardAD),
        .I5(\q[31]_i_2__0_1 [29]),
        .O(\q[29]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[2]_i_1 
       (.I0(srcb2D[2]),
        .I1(\q_reg[18]_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \q[2]_i_1__0 
       (.I0(srca2D[2]),
        .I1(shiftD),
        .I2(Q[8]),
        .I3(\q_reg[18]_0 ),
        .O(\q_reg[18]_1 [2]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[2]_i_1__1 
       (.I0(\q[2]_i_2__0_n_0 ),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[29]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[2]_i_1__2 
       (.I0(Q[2]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[15]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[2]_i_1__3 
       (.I0(Q[18]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[20]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[2]_i_1__4 
       (.I0(Q[13]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[13]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \q[2]_i_1__6 
       (.I0(jrD),
        .I1(stallD_OBUF_inst_i_2_n_0),
        .I2(\q_reg[18]_0 ),
        .I3(instr_IBUF[2]),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \q[2]_i_2 
       (.I0(\q[31]_i_5__0_n_0 ),
        .I1(aluoutE1[2]),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(rd10[2]),
        .I4(\q[2]_i_3__1_n_0 ),
        .O(srca2D[2]));
  LUT6 #(
    .INIT(64'hAAEFAAEF0000FFFF)) 
    \q[2]_i_2__0 
       (.I0(\q[2]_i_3__0_n_0 ),
        .I1(Q[5]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\c/md/controls__46 [2]),
        .I5(\c/md/controls__46 [1]),
        .O(\q[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \q[2]_i_2__1 
       (.I0(forwardBD[0]),
        .I1(forwardBD[1]),
        .I2(aluoutE1[2]),
        .I3(\q[31]_i_5_n_0 ),
        .I4(rd20[2]),
        .I5(\q[2]_i_3_n_0 ),
        .O(srcb2D[2]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \q[2]_i_3 
       (.I0(\q[31]_i_2__0_0 [2]),
        .I1(forwardBD[0]),
        .I2(forwardBD[1]),
        .I3(\q[31]_i_2__0_1 [2]),
        .O(\q[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000440)) 
    \q[2]_i_3__0 
       (.I0(opD[0]),
        .I1(opD[3]),
        .I2(opD[1]),
        .I3(opD[2]),
        .I4(opD[5]),
        .I5(opD[4]),
        .O(\q[2]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h07070000F800F800)) 
    \q[2]_i_3__1 
       (.I0(\haz/p_9_in ),
        .I1(\q[31]_i_5_0 [1]),
        .I2(\haz/forwardAD1__0 ),
        .I3(\q[31]_i_2__0_0 [2]),
        .I4(\q[31]_i_2__0_1 [2]),
        .I5(forwardAD),
        .O(\q[2]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[30]_i_1 
       (.I0(srcb2D[30]),
        .I1(\q_reg[18]_0 ),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[30]_i_1__0 
       (.I0(srca3D[30]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[18]_1 [30]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \q[30]_i_1__2 
       (.I0(jrD),
        .I1(stallD_OBUF_inst_i_2_n_0),
        .I2(\q_reg[18]_0 ),
        .I3(instr_IBUF[30]),
        .O(p_1_in[30]));
  LUT6 #(
    .INIT(64'h00000000FFEAEAEA)) 
    \q[30]_i_2 
       (.I0(\q[30]_i_3__0_n_0 ),
        .I1(rd10[30]),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(\q[31]_i_5__0_n_0 ),
        .I4(aluoutE1[30]),
        .I5(shiftD),
        .O(srca3D[30]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \q[30]_i_2__0 
       (.I0(forwardBD[0]),
        .I1(forwardBD[1]),
        .I2(aluoutE1[30]),
        .I3(\q[31]_i_5_n_0 ),
        .I4(rd20[30]),
        .I5(\q[30]_i_3_n_0 ),
        .O(srcb2D[30]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \q[30]_i_3 
       (.I0(\q[31]_i_2__0_0 [30]),
        .I1(forwardBD[0]),
        .I2(forwardBD[1]),
        .I3(\q[31]_i_2__0_1 [30]),
        .O(\q[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0707F8000000F800)) 
    \q[30]_i_3__0 
       (.I0(\haz/p_9_in ),
        .I1(\q[31]_i_5_0 [1]),
        .I2(\haz/forwardAD1__0 ),
        .I3(\q[31]_i_2__0_0 [30]),
        .I4(forwardAD),
        .I5(\q[31]_i_2__0_1 [30]),
        .O(\q[30]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[31]_i_1 
       (.I0(srcb2D[31]),
        .I1(\q_reg[18]_0 ),
        .O(D[31]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    \q[31]_i_11 
       (.I0(Q[20]),
        .I1(\q[31]_i_8_0 [3]),
        .I2(Q[16]),
        .I3(\q[31]_i_8_0 [0]),
        .O(\q[31]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \q[31]_i_11__0 
       (.I0(Q[25]),
        .I1(\q[31]_i_8_0 [3]),
        .I2(Q[21]),
        .I3(\q[31]_i_8_0 [0]),
        .O(\q[31]_i_11__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[31]_i_1__0 
       (.I0(srca3D[31]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[18]_1 [31]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[31]_i_1__1 
       (.I0(signimmD),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[15]_0 [11]));
  LUT1 #(
    .INIT(2'h1)) 
    \q[31]_i_1__3 
       (.I0(\q_reg[18]_0 ),
        .O(\q[31]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFEAEAEA)) 
    \q[31]_i_2 
       (.I0(\q[31]_i_3__0_n_0 ),
        .I1(rd10[31]),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(\q[31]_i_5__0_n_0 ),
        .I4(aluoutE1[31]),
        .I5(shiftD),
        .O(srca3D[31]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \q[31]_i_2__0 
       (.I0(forwardBD[0]),
        .I1(forwardBD[1]),
        .I2(aluoutE1[31]),
        .I3(\q[31]_i_5_n_0 ),
        .I4(rd20[31]),
        .I5(\q[31]_i_6_n_0 ),
        .O(srcb2D[31]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \q[31]_i_2__1 
       (.I0(jrD),
        .I1(stallD_OBUF_inst_i_2_n_0),
        .I2(\q_reg[18]_0 ),
        .I3(instr_IBUF[31]),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'hFF08)) 
    \q[31]_i_3 
       (.I0(\haz/p_6_in ),
        .I1(\q[31]_i_5_0 [0]),
        .I2(\q[31]_i_5_0 [1]),
        .I3(\haz/forwardBD1__0 ),
        .O(forwardBD[0]));
  LUT6 #(
    .INIT(64'h0707F8000000F800)) 
    \q[31]_i_3__0 
       (.I0(\haz/p_9_in ),
        .I1(\q[31]_i_5_0 [1]),
        .I2(\haz/forwardAD1__0 ),
        .I3(\q[31]_i_2__0_0 [31]),
        .I4(forwardAD),
        .I5(\q[31]_i_2__0_1 [31]),
        .O(\q[31]_i_3__0_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \q[31]_i_4 
       (.I0(\haz/p_6_in ),
        .I1(\q[31]_i_5_0 [1]),
        .I2(\haz/forwardBD1__0 ),
        .O(forwardBD[1]));
  LUT5 #(
    .INIT(32'h00070000)) 
    \q[31]_i_4__0 
       (.I0(\haz/p_9_in ),
        .I1(\q[31]_i_5_0 [1]),
        .I2(\haz/forwardAD1__0 ),
        .I3(forwardAD),
        .I4(\q_reg[25]_0 ),
        .O(\q[31]_i_4__0_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \q[31]_i_5 
       (.I0(forwardBD[1]),
        .I1(forwardBD[0]),
        .I2(forwardBD30_in),
        .O(\q[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF800)) 
    \q[31]_i_5__0 
       (.I0(\haz/p_9_in ),
        .I1(\q[31]_i_5_0 [1]),
        .I2(\haz/forwardAD1__0 ),
        .I3(forwardAD),
        .O(\q[31]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'h2C20)) 
    \q[31]_i_6 
       (.I0(\q[31]_i_2__0_0 [31]),
        .I1(forwardBD[0]),
        .I2(forwardBD[1]),
        .I3(\q[31]_i_2__0_1 [31]),
        .O(\q[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \q[31]_i_6__0 
       (.I0(Q[21]),
        .I1(\q[31]_i_8__0_1 [0]),
        .I2(Q[22]),
        .I3(\q[31]_i_8__0_1 [1]),
        .I4(\q[31]_i_8__0_2 ),
        .I5(\q_reg[25]_0 ),
        .O(\haz/p_9_in ));
  LUT6 #(
    .INIT(64'h8200008200000000)) 
    \q[31]_i_7 
       (.I0(\q[31]_i_11__0_n_0 ),
        .I1(Q[23]),
        .I2(\q[31]_i_8_0 [1]),
        .I3(Q[24]),
        .I4(\q[31]_i_8_0 [2]),
        .I5(\q[31]_i_8__0_0 ),
        .O(\haz/forwardAD1__0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \q[31]_i_7__0 
       (.I0(Q[16]),
        .I1(\q[31]_i_8__0_1 [0]),
        .I2(Q[17]),
        .I3(\q[31]_i_8__0_1 [1]),
        .I4(\q[31]_i_3_1 ),
        .I5(forwardBD30_in),
        .O(\haz/p_6_in ));
  LUT6 #(
    .INIT(64'h8200008200000000)) 
    \q[31]_i_8 
       (.I0(\q[31]_i_11_n_0 ),
        .I1(Q[18]),
        .I2(\q[31]_i_8_0 [1]),
        .I3(Q[19]),
        .I4(\q[31]_i_8_0 [2]),
        .I5(\q[31]_i_3_0 ),
        .O(\haz/forwardBD1__0 ));
  LUT4 #(
    .INIT(16'hFF08)) 
    \q[31]_i_8__0 
       (.I0(\haz/p_9_in ),
        .I1(\q[31]_i_5_0 [0]),
        .I2(\q[31]_i_5_0 [1]),
        .I3(\haz/forwardAD1__0 ),
        .O(forwardAD));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \q[31]_i_9 
       (.I0(Q[20]),
        .I1(Q[16]),
        .I2(Q[17]),
        .I3(Q[18]),
        .I4(Q[19]),
        .O(forwardBD30_in));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \q[31]_i_9__0 
       (.I0(Q[25]),
        .I1(Q[21]),
        .I2(Q[22]),
        .I3(Q[23]),
        .I4(Q[24]),
        .O(\q_reg[25]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[3]_i_1 
       (.I0(srcb2D[3]),
        .I1(\q_reg[18]_0 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \q[3]_i_1__0 
       (.I0(srca2D[3]),
        .I1(shiftD),
        .I2(Q[9]),
        .I3(\q_reg[18]_0 ),
        .O(\q_reg[18]_1 [3]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00008DA8)) 
    \q[3]_i_1__1 
       (.I0(\c/md/controls__46 [1]),
        .I1(Q[1]),
        .I2(\c/md/controls__46 [2]),
        .I3(\c/md/controls__46 [0]),
        .I4(\q_reg[18]_0 ),
        .O(\q_reg[29]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[3]_i_1__2 
       (.I0(Q[3]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[15]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[3]_i_1__3 
       (.I0(Q[19]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[20]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[3]_i_1__4 
       (.I0(Q[14]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[14]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \q[3]_i_1__6 
       (.I0(jrD),
        .I1(stallD_OBUF_inst_i_2_n_0),
        .I2(\q_reg[18]_0 ),
        .I3(instr_IBUF[3]),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \q[3]_i_2 
       (.I0(aluoutE1[3]),
        .I1(\q[31]_i_5__0_n_0 ),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(rd10[3]),
        .I4(\q[3]_i_3__1_n_0 ),
        .O(srca2D[3]));
  LUT6 #(
    .INIT(64'h0001000000000001)) 
    \q[3]_i_2__0 
       (.I0(opD[4]),
        .I1(opD[5]),
        .I2(opD[2]),
        .I3(opD[0]),
        .I4(opD[1]),
        .I5(opD[3]),
        .O(\c/md/controls__46 [1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \q[3]_i_2__1 
       (.I0(forwardBD[0]),
        .I1(forwardBD[1]),
        .I2(aluoutE1[3]),
        .I3(\q[31]_i_5_n_0 ),
        .I4(rd20[3]),
        .I5(\q[3]_i_3_n_0 ),
        .O(srcb2D[3]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \q[3]_i_3 
       (.I0(\q[31]_i_2__0_0 [3]),
        .I1(forwardBD[0]),
        .I2(forwardBD[1]),
        .I3(\q[31]_i_2__0_1 [3]),
        .O(\q[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000101000)) 
    \q[3]_i_3__0 
       (.I0(opD[4]),
        .I1(opD[5]),
        .I2(opD[3]),
        .I3(opD[1]),
        .I4(opD[2]),
        .I5(opD[0]),
        .O(\c/md/controls__46 [2]));
  LUT6 #(
    .INIT(64'h0707F8000000F800)) 
    \q[3]_i_3__1 
       (.I0(\haz/p_9_in ),
        .I1(\q[31]_i_5_0 [1]),
        .I2(\haz/forwardAD1__0 ),
        .I3(\q[31]_i_2__0_0 [3]),
        .I4(forwardAD),
        .I5(\q[31]_i_2__0_1 [3]),
        .O(\q[3]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h0010001000000010)) 
    \q[3]_i_4 
       (.I0(opD[4]),
        .I1(opD[5]),
        .I2(opD[2]),
        .I3(opD[1]),
        .I4(opD[3]),
        .I5(opD[0]),
        .O(\c/md/controls__46 [0]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[4]_i_1 
       (.I0(srcb2D[4]),
        .I1(\q_reg[18]_0 ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \q[4]_i_1__0 
       (.I0(srca2D[4]),
        .I1(shiftD),
        .I2(Q[10]),
        .I3(\q_reg[18]_0 ),
        .O(\q_reg[18]_1 [4]));
  LUT6 #(
    .INIT(64'h00000A0000802282)) 
    \q[4]_i_1__1 
       (.I0(\q[8]_i_2__0_n_0 ),
        .I1(opD[0]),
        .I2(opD[1]),
        .I3(opD[3]),
        .I4(opD[5]),
        .I5(opD[2]),
        .O(\q_reg[29]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[4]_i_1__2 
       (.I0(Q[4]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[15]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[4]_i_1__3 
       (.I0(Q[20]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[20]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[4]_i_1__4 
       (.I0(Q[15]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[15]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \q[4]_i_1__6 
       (.I0(jrD),
        .I1(stallD_OBUF_inst_i_2_n_0),
        .I2(\q_reg[18]_0 ),
        .I3(instr_IBUF[4]),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \q[4]_i_2 
       (.I0(aluoutE1[4]),
        .I1(\q[31]_i_5__0_n_0 ),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(rd10[4]),
        .I4(\q[4]_i_4_n_0 ),
        .O(srca2D[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \q[4]_i_2__0 
       (.I0(forwardBD[0]),
        .I1(forwardBD[1]),
        .I2(aluoutE1[4]),
        .I3(\q[31]_i_5_n_0 ),
        .I4(rd20[4]),
        .I5(\q[4]_i_3_n_0 ),
        .O(srcb2D[4]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \q[4]_i_3 
       (.I0(\q[31]_i_2__0_0 [4]),
        .I1(forwardBD[0]),
        .I2(forwardBD[1]),
        .I3(\q[31]_i_2__0_1 [4]),
        .O(\q[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \q[4]_i_3__0 
       (.I0(opD[3]),
        .I1(opD[4]),
        .I2(opD[1]),
        .I3(opD[2]),
        .I4(\q[4]_i_5_n_0 ),
        .I5(\q[4]_i_6_n_0 ),
        .O(shiftD));
  LUT6 #(
    .INIT(64'h0707F8000000F800)) 
    \q[4]_i_4 
       (.I0(\haz/p_9_in ),
        .I1(\q[31]_i_5_0 [1]),
        .I2(\haz/forwardAD1__0 ),
        .I3(\q[31]_i_2__0_0 [4]),
        .I4(forwardAD),
        .I5(\q[31]_i_2__0_1 [4]),
        .O(\q[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hFFF4)) 
    \q[4]_i_5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[5]),
        .I3(Q[4]),
        .O(\q[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[4]_i_6 
       (.I0(opD[0]),
        .I1(opD[5]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\q[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[5]_i_1 
       (.I0(srcb2D[5]),
        .I1(\q_reg[18]_0 ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[5]_i_1__0 
       (.I0(srca3D[5]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[18]_1 [5]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \q[5]_i_1__1 
       (.I0(opD[0]),
        .I1(opD[2]),
        .I2(opD[3]),
        .I3(opD[1]),
        .I4(\q[5]_i_2__0_n_0 ),
        .I5(\q_reg[18]_0 ),
        .O(\q_reg[29]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[5]_i_1__2 
       (.I0(Q[5]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[15]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \q[5]_i_1__4 
       (.I0(jrD),
        .I1(stallD_OBUF_inst_i_2_n_0),
        .I2(\q_reg[18]_0 ),
        .I3(instr_IBUF[5]),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'h00000000FFEAEAEA)) 
    \q[5]_i_2 
       (.I0(\q[5]_i_3__0_n_0 ),
        .I1(rd10[5]),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(\q[31]_i_5__0_n_0 ),
        .I4(aluoutE1[5]),
        .I5(shiftD),
        .O(srca3D[5]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \q[5]_i_2__0 
       (.I0(opD[4]),
        .I1(opD[5]),
        .O(\q[5]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \q[5]_i_2__1 
       (.I0(forwardBD[0]),
        .I1(forwardBD[1]),
        .I2(aluoutE1[5]),
        .I3(\q[31]_i_5_n_0 ),
        .I4(rd20[5]),
        .I5(\q[5]_i_3_n_0 ),
        .O(srcb2D[5]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \q[5]_i_3 
       (.I0(\q[31]_i_2__0_0 [5]),
        .I1(forwardBD[0]),
        .I2(forwardBD[1]),
        .I3(\q[31]_i_2__0_1 [5]),
        .O(\q[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0707F8000000F800)) 
    \q[5]_i_3__0 
       (.I0(\haz/p_9_in ),
        .I1(\q[31]_i_5_0 [1]),
        .I2(\haz/forwardAD1__0 ),
        .I3(\q[31]_i_2__0_0 [5]),
        .I4(forwardAD),
        .I5(\q[31]_i_2__0_1 [5]),
        .O(\q[5]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[6]_i_1 
       (.I0(srcb2D[6]),
        .I1(\q_reg[18]_0 ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[6]_i_1__0 
       (.I0(srca3D[6]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[18]_1 [6]));
  LUT6 #(
    .INIT(64'h0200808002000A00)) 
    \q[6]_i_1__1 
       (.I0(\q[8]_i_2__0_n_0 ),
        .I1(opD[1]),
        .I2(opD[5]),
        .I3(opD[3]),
        .I4(opD[2]),
        .I5(opD[0]),
        .O(\q_reg[29]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[6]_i_1__2 
       (.I0(Q[6]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[15]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \q[6]_i_1__4 
       (.I0(jrD),
        .I1(stallD_OBUF_inst_i_2_n_0),
        .I2(\q_reg[18]_0 ),
        .I3(instr_IBUF[6]),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'h00000000FFEAEAEA)) 
    \q[6]_i_2 
       (.I0(\q[6]_i_3__0_n_0 ),
        .I1(rd10[6]),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(\q[31]_i_5__0_n_0 ),
        .I4(aluoutE1[6]),
        .I5(shiftD),
        .O(srca3D[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \q[6]_i_2__0 
       (.I0(forwardBD[0]),
        .I1(forwardBD[1]),
        .I2(aluoutE1[6]),
        .I3(\q[31]_i_5_n_0 ),
        .I4(rd20[6]),
        .I5(\q[6]_i_3_n_0 ),
        .O(srcb2D[6]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \q[6]_i_3 
       (.I0(\q[31]_i_2__0_0 [6]),
        .I1(forwardBD[0]),
        .I2(forwardBD[1]),
        .I3(\q[31]_i_2__0_1 [6]),
        .O(\q[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0707F8000000F800)) 
    \q[6]_i_3__0 
       (.I0(\haz/p_9_in ),
        .I1(\q[31]_i_5_0 [1]),
        .I2(\haz/forwardAD1__0 ),
        .I3(\q[31]_i_2__0_0 [6]),
        .I4(forwardAD),
        .I5(\q[31]_i_2__0_1 [6]),
        .O(\q[6]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[7]_i_1 
       (.I0(srcb2D[7]),
        .I1(\q_reg[18]_0 ),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[7]_i_1__0 
       (.I0(srca3D[7]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[18]_1 [7]));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \q[7]_i_1__1 
       (.I0(opD[3]),
        .I1(opD[5]),
        .I2(opD[2]),
        .I3(opD[1]),
        .I4(opD[0]),
        .I5(\q[8]_i_2__0_n_0 ),
        .O(\q_reg[29]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[7]_i_1__2 
       (.I0(Q[7]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[15]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \q[7]_i_1__4 
       (.I0(jrD),
        .I1(stallD_OBUF_inst_i_2_n_0),
        .I2(\q_reg[18]_0 ),
        .I3(instr_IBUF[7]),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'h00000000FFEAEAEA)) 
    \q[7]_i_2 
       (.I0(\q[7]_i_3__0_n_0 ),
        .I1(rd10[7]),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(\q[31]_i_5__0_n_0 ),
        .I4(aluoutE1[7]),
        .I5(shiftD),
        .O(srca3D[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \q[7]_i_2__0 
       (.I0(forwardBD[0]),
        .I1(forwardBD[1]),
        .I2(aluoutE1[7]),
        .I3(\q[31]_i_5_n_0 ),
        .I4(rd20[7]),
        .I5(\q[7]_i_3_n_0 ),
        .O(srcb2D[7]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \q[7]_i_3 
       (.I0(\q[31]_i_2__0_0 [7]),
        .I1(forwardBD[0]),
        .I2(forwardBD[1]),
        .I3(\q[31]_i_2__0_1 [7]),
        .O(\q[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0707F8000000F800)) 
    \q[7]_i_3__0 
       (.I0(\haz/p_9_in ),
        .I1(\q[31]_i_5_0 [1]),
        .I2(\haz/forwardAD1__0 ),
        .I3(\q[31]_i_2__0_0 [7]),
        .I4(forwardAD),
        .I5(\q[31]_i_2__0_1 [7]),
        .O(\q[7]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[8]_i_1 
       (.I0(srcb2D[8]),
        .I1(\q_reg[18]_0 ),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[8]_i_1__0 
       (.I0(srca3D[8]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[18]_1 [8]));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \q[8]_i_1__1 
       (.I0(opD[3]),
        .I1(opD[1]),
        .I2(opD[2]),
        .I3(opD[5]),
        .I4(opD[0]),
        .I5(\q[8]_i_2__0_n_0 ),
        .O(\q_reg[29]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[8]_i_1__2 
       (.I0(Q[8]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[15]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \q[8]_i_1__4 
       (.I0(jrD),
        .I1(stallD_OBUF_inst_i_2_n_0),
        .I2(\q_reg[18]_0 ),
        .I3(instr_IBUF[8]),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'h00000000FFEAEAEA)) 
    \q[8]_i_2 
       (.I0(\q[8]_i_3__0_n_0 ),
        .I1(rd10[8]),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(\q[31]_i_5__0_n_0 ),
        .I4(aluoutE1[8]),
        .I5(shiftD),
        .O(srca3D[8]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \q[8]_i_2__0 
       (.I0(opD[4]),
        .I1(\q_reg[18]_0 ),
        .O(\q[8]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \q[8]_i_2__1 
       (.I0(forwardBD[0]),
        .I1(forwardBD[1]),
        .I2(aluoutE1[8]),
        .I3(\q[31]_i_5_n_0 ),
        .I4(rd20[8]),
        .I5(\q[8]_i_3_n_0 ),
        .O(srcb2D[8]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \q[8]_i_3 
       (.I0(\q[31]_i_2__0_0 [8]),
        .I1(forwardBD[0]),
        .I2(forwardBD[1]),
        .I3(\q[31]_i_2__0_1 [8]),
        .O(\q[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0707F8000000F800)) 
    \q[8]_i_3__0 
       (.I0(\haz/p_9_in ),
        .I1(\q[31]_i_5_0 [1]),
        .I2(\haz/forwardAD1__0 ),
        .I3(\q[31]_i_2__0_0 [8]),
        .I4(forwardAD),
        .I5(\q[31]_i_2__0_1 [8]),
        .O(\q[8]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[9]_i_1 
       (.I0(srcb2D[9]),
        .I1(\q_reg[18]_0 ),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[9]_i_1__0 
       (.I0(srca3D[9]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[18]_1 [9]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[9]_i_1__1 
       (.I0(Q[9]),
        .I1(\q_reg[18]_0 ),
        .O(\q_reg[15]_0 [9]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hF100)) 
    \q[9]_i_1__3 
       (.I0(jrD),
        .I1(stallD_OBUF_inst_i_2_n_0),
        .I2(\q_reg[18]_0 ),
        .I3(instr_IBUF[9]),
        .O(p_1_in[9]));
  LUT6 #(
    .INIT(64'h00000000FFEAEAEA)) 
    \q[9]_i_2 
       (.I0(\q[9]_i_3__0_n_0 ),
        .I1(rd10[9]),
        .I2(\q[31]_i_4__0_n_0 ),
        .I3(\q[31]_i_5__0_n_0 ),
        .I4(aluoutE1[9]),
        .I5(shiftD),
        .O(srca3D[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \q[9]_i_2__0 
       (.I0(forwardBD[0]),
        .I1(forwardBD[1]),
        .I2(aluoutE1[9]),
        .I3(\q[31]_i_5_n_0 ),
        .I4(rd20[9]),
        .I5(\q[9]_i_3_n_0 ),
        .O(srcb2D[9]));
  LUT4 #(
    .INIT(16'h2C20)) 
    \q[9]_i_3 
       (.I0(\q[31]_i_2__0_0 [9]),
        .I1(forwardBD[0]),
        .I2(forwardBD[1]),
        .I3(\q[31]_i_2__0_1 [9]),
        .O(\q[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0707F8000000F800)) 
    \q[9]_i_3__0 
       (.I0(\haz/p_9_in ),
        .I1(\q[31]_i_5_0 [1]),
        .I2(\haz/forwardAD1__0 ),
        .I3(\q[31]_i_2__0_0 [9]),
        .I4(forwardAD),
        .I5(\q[31]_i_2__0_1 [9]),
        .O(\q[9]_i_3__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(\q[31]_i_1__3_n_0 ),
        .CLR(AR),
        .D(p_1_in[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(CLK),
        .CE(\q[31]_i_1__3_n_0 ),
        .CLR(AR),
        .D(p_1_in[10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(CLK),
        .CE(\q[31]_i_1__3_n_0 ),
        .CLR(AR),
        .D(p_1_in[11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[12] 
       (.C(CLK),
        .CE(\q[31]_i_1__3_n_0 ),
        .CLR(AR),
        .D(p_1_in[12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[13] 
       (.C(CLK),
        .CE(\q[31]_i_1__3_n_0 ),
        .CLR(AR),
        .D(p_1_in[13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[14] 
       (.C(CLK),
        .CE(\q[31]_i_1__3_n_0 ),
        .CLR(AR),
        .D(p_1_in[14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[15] 
       (.C(CLK),
        .CE(\q[31]_i_1__3_n_0 ),
        .CLR(AR),
        .D(p_1_in[15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[16] 
       (.C(CLK),
        .CE(\q[31]_i_1__3_n_0 ),
        .CLR(AR),
        .D(p_1_in[16]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[17] 
       (.C(CLK),
        .CE(\q[31]_i_1__3_n_0 ),
        .CLR(AR),
        .D(p_1_in[17]),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[18] 
       (.C(CLK),
        .CE(\q[31]_i_1__3_n_0 ),
        .CLR(AR),
        .D(p_1_in[18]),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[19] 
       (.C(CLK),
        .CE(\q[31]_i_1__3_n_0 ),
        .CLR(AR),
        .D(p_1_in[19]),
        .Q(Q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(\q[31]_i_1__3_n_0 ),
        .CLR(AR),
        .D(p_1_in[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[20] 
       (.C(CLK),
        .CE(\q[31]_i_1__3_n_0 ),
        .CLR(AR),
        .D(p_1_in[20]),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[21] 
       (.C(CLK),
        .CE(\q[31]_i_1__3_n_0 ),
        .CLR(AR),
        .D(p_1_in[21]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[22] 
       (.C(CLK),
        .CE(\q[31]_i_1__3_n_0 ),
        .CLR(AR),
        .D(p_1_in[22]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[23] 
       (.C(CLK),
        .CE(\q[31]_i_1__3_n_0 ),
        .CLR(AR),
        .D(p_1_in[23]),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[24] 
       (.C(CLK),
        .CE(\q[31]_i_1__3_n_0 ),
        .CLR(AR),
        .D(p_1_in[24]),
        .Q(Q[24]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[25] 
       (.C(CLK),
        .CE(\q[31]_i_1__3_n_0 ),
        .CLR(AR),
        .D(p_1_in[25]),
        .Q(Q[25]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[26] 
       (.C(CLK),
        .CE(\q[31]_i_1__3_n_0 ),
        .CLR(AR),
        .D(p_1_in[26]),
        .Q(opD[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[27] 
       (.C(CLK),
        .CE(\q[31]_i_1__3_n_0 ),
        .CLR(AR),
        .D(p_1_in[27]),
        .Q(opD[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[28] 
       (.C(CLK),
        .CE(\q[31]_i_1__3_n_0 ),
        .CLR(AR),
        .D(p_1_in[28]),
        .Q(opD[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[29] 
       (.C(CLK),
        .CE(\q[31]_i_1__3_n_0 ),
        .CLR(AR),
        .D(p_1_in[29]),
        .Q(opD[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(\q[31]_i_1__3_n_0 ),
        .CLR(AR),
        .D(p_1_in[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[30] 
       (.C(CLK),
        .CE(\q[31]_i_1__3_n_0 ),
        .CLR(AR),
        .D(p_1_in[30]),
        .Q(opD[4]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[31] 
       (.C(CLK),
        .CE(\q[31]_i_1__3_n_0 ),
        .CLR(AR),
        .D(p_1_in[31]),
        .Q(opD[5]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(\q[31]_i_1__3_n_0 ),
        .CLR(AR),
        .D(p_1_in[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(CLK),
        .CE(\q[31]_i_1__3_n_0 ),
        .CLR(AR),
        .D(p_1_in[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(CLK),
        .CE(\q[31]_i_1__3_n_0 ),
        .CLR(AR),
        .D(p_1_in[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(CLK),
        .CE(\q[31]_i_1__3_n_0 ),
        .CLR(AR),
        .D(p_1_in[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(CLK),
        .CE(\q[31]_i_1__3_n_0 ),
        .CLR(AR),
        .D(p_1_in[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(CLK),
        .CE(\q[31]_i_1__3_n_0 ),
        .CLR(AR),
        .D(p_1_in[8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(CLK),
        .CE(\q[31]_i_1__3_n_0 ),
        .CLR(AR),
        .D(p_1_in[9]),
        .Q(Q[9]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'hE)) 
    stallD_OBUF_inst_i_1
       (.I0(stallD_OBUF_inst_i_2_n_0),
        .I1(jrD),
        .O(stallD_OBUF));
  LUT6 #(
    .INIT(64'h0000000600000F00)) 
    stallD_OBUF_inst_i_2
       (.I0(opD[0]),
        .I1(CO),
        .I2(opD[3]),
        .I3(opD[1]),
        .I4(\q[5]_i_2__0_n_0 ),
        .I5(opD[2]),
        .O(stallD_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    stallD_OBUF_inst_i_3
       (.I0(stallD_OBUF_inst_i_4_n_0),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(stallD_OBUF_inst_i_5_n_0),
        .O(jrD));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h1)) 
    stallD_OBUF_inst_i_4
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(stallD_OBUF_inst_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    stallD_OBUF_inst_i_5
       (.I0(opD[4]),
        .I1(opD[5]),
        .I2(opD[1]),
        .I3(opD[3]),
        .I4(opD[2]),
        .I5(opD[0]),
        .O(stallD_OBUF_inst_i_5_n_0));
endmodule

module flopr
   (\out_reg[2]_0 ,
    D,
    CLK,
    AR);
  output [2:0]\out_reg[2]_0 ;
  input [2:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [2:0]D;
  wire [2:0]\out_reg[2]_0 ;

  FDCE #(
    .INIT(1'b0)) 
    \out_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(\out_reg[2]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(\out_reg[2]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[2]),
        .Q(\out_reg[2]_0 [2]));
endmodule

(* ORIG_REF_NAME = "flopr" *) 
module flopr__parameterized0
   (\out_reg[1]_0 ,
    \out_reg[1]_1 ,
    CLK,
    AR);
  output [1:0]\out_reg[1]_0 ;
  input [1:0]\out_reg[1]_1 ;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [1:0]\out_reg[1]_0 ;
  wire [1:0]\out_reg[1]_1 ;

  FDCE #(
    .INIT(1'b0)) 
    \out_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\out_reg[1]_1 [0]),
        .Q(\out_reg[1]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\out_reg[1]_1 [1]),
        .Q(\out_reg[1]_0 [1]));
endmodule

(* ORIG_REF_NAME = "flopr" *) 
module flopr__parameterized1
   (\out_reg[31]_0 ,
    Q,
    CLK,
    AR);
  output [31:0]\out_reg[31]_0 ;
  input [31:0]Q;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [31:0]Q;
  wire [31:0]\out_reg[31]_0 ;

  FDCE #(
    .INIT(1'b0)) 
    \out_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[0]),
        .Q(\out_reg[31]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[10]),
        .Q(\out_reg[31]_0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[11]),
        .Q(\out_reg[31]_0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[12]),
        .Q(\out_reg[31]_0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[13]),
        .Q(\out_reg[31]_0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[14]),
        .Q(\out_reg[31]_0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[15]),
        .Q(\out_reg[31]_0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[16]),
        .Q(\out_reg[31]_0 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[17]),
        .Q(\out_reg[31]_0 [17]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[18]),
        .Q(\out_reg[31]_0 [18]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[19]),
        .Q(\out_reg[31]_0 [19]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[1]),
        .Q(\out_reg[31]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[20]),
        .Q(\out_reg[31]_0 [20]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[21]),
        .Q(\out_reg[31]_0 [21]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[22]),
        .Q(\out_reg[31]_0 [22]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[23]),
        .Q(\out_reg[31]_0 [23]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[24]),
        .Q(\out_reg[31]_0 [24]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[25]),
        .Q(\out_reg[31]_0 [25]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[26]),
        .Q(\out_reg[31]_0 [26]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[27]),
        .Q(\out_reg[31]_0 [27]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[28]),
        .Q(\out_reg[31]_0 [28]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[29]),
        .Q(\out_reg[31]_0 [29]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[2]),
        .Q(\out_reg[31]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[30]),
        .Q(\out_reg[31]_0 [30]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[31]),
        .Q(\out_reg[31]_0 [31]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[3]),
        .Q(\out_reg[31]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[4]),
        .Q(\out_reg[31]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[5]),
        .Q(\out_reg[31]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[6]),
        .Q(\out_reg[31]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[7]),
        .Q(\out_reg[31]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[8]),
        .Q(\out_reg[31]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[9]),
        .Q(\out_reg[31]_0 [9]));
endmodule

(* ORIG_REF_NAME = "flopr" *) 
module flopr__parameterized1_2
   (Q,
    \out_reg[31]_0 ,
    CLK,
    AR);
  output [31:0]Q;
  input [31:0]\out_reg[31]_0 ;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [31:0]Q;
  wire [31:0]\out_reg[31]_0 ;

  FDCE #(
    .INIT(1'b0)) 
    \out_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\out_reg[31]_0 [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\out_reg[31]_0 [10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\out_reg[31]_0 [11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\out_reg[31]_0 [12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\out_reg[31]_0 [13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\out_reg[31]_0 [14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\out_reg[31]_0 [15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\out_reg[31]_0 [16]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\out_reg[31]_0 [17]),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\out_reg[31]_0 [18]),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\out_reg[31]_0 [19]),
        .Q(Q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\out_reg[31]_0 [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\out_reg[31]_0 [20]),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\out_reg[31]_0 [21]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\out_reg[31]_0 [22]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\out_reg[31]_0 [23]),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\out_reg[31]_0 [24]),
        .Q(Q[24]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\out_reg[31]_0 [25]),
        .Q(Q[25]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\out_reg[31]_0 [26]),
        .Q(Q[26]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\out_reg[31]_0 [27]),
        .Q(Q[27]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\out_reg[31]_0 [28]),
        .Q(Q[28]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\out_reg[31]_0 [29]),
        .Q(Q[29]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\out_reg[31]_0 [2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\out_reg[31]_0 [30]),
        .Q(Q[30]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\out_reg[31]_0 [31]),
        .Q(Q[31]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\out_reg[31]_0 [3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\out_reg[31]_0 [4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\out_reg[31]_0 [5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\out_reg[31]_0 [6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\out_reg[31]_0 [7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\out_reg[31]_0 [8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\out_reg[31]_0 [9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "flopr" *) 
module flopr__parameterized1_4
   (\out_reg[31]_0 ,
    aluoutE1,
    CLK,
    AR);
  output [31:0]\out_reg[31]_0 ;
  input [31:0]aluoutE1;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [31:0]aluoutE1;
  wire [31:0]\out_reg[31]_0 ;

  FDCE #(
    .INIT(1'b0)) 
    \out_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(aluoutE1[0]),
        .Q(\out_reg[31]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(aluoutE1[10]),
        .Q(\out_reg[31]_0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(aluoutE1[11]),
        .Q(\out_reg[31]_0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(aluoutE1[12]),
        .Q(\out_reg[31]_0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(aluoutE1[13]),
        .Q(\out_reg[31]_0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(aluoutE1[14]),
        .Q(\out_reg[31]_0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(aluoutE1[15]),
        .Q(\out_reg[31]_0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(aluoutE1[16]),
        .Q(\out_reg[31]_0 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(aluoutE1[17]),
        .Q(\out_reg[31]_0 [17]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(aluoutE1[18]),
        .Q(\out_reg[31]_0 [18]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(aluoutE1[19]),
        .Q(\out_reg[31]_0 [19]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(aluoutE1[1]),
        .Q(\out_reg[31]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(aluoutE1[20]),
        .Q(\out_reg[31]_0 [20]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(aluoutE1[21]),
        .Q(\out_reg[31]_0 [21]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(aluoutE1[22]),
        .Q(\out_reg[31]_0 [22]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(aluoutE1[23]),
        .Q(\out_reg[31]_0 [23]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(aluoutE1[24]),
        .Q(\out_reg[31]_0 [24]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(aluoutE1[25]),
        .Q(\out_reg[31]_0 [25]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(aluoutE1[26]),
        .Q(\out_reg[31]_0 [26]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(aluoutE1[27]),
        .Q(\out_reg[31]_0 [27]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(aluoutE1[28]),
        .Q(\out_reg[31]_0 [28]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(aluoutE1[29]),
        .Q(\out_reg[31]_0 [29]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(aluoutE1[2]),
        .Q(\out_reg[31]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(aluoutE1[30]),
        .Q(\out_reg[31]_0 [30]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(aluoutE1[31]),
        .Q(\out_reg[31]_0 [31]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(aluoutE1[3]),
        .Q(\out_reg[31]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(aluoutE1[4]),
        .Q(\out_reg[31]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(aluoutE1[5]),
        .Q(\out_reg[31]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(aluoutE1[6]),
        .Q(\out_reg[31]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(aluoutE1[7]),
        .Q(\out_reg[31]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(aluoutE1[8]),
        .Q(\out_reg[31]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(aluoutE1[9]),
        .Q(\out_reg[31]_0 [9]));
endmodule

(* ORIG_REF_NAME = "flopr" *) 
module flopr__parameterized1_5
   (Q,
    D,
    CLK,
    AR);
  output [31:0]Q;
  input [31:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [31:0]D;
  wire [31:0]Q;

  FDCE #(
    .INIT(1'b0)) 
    \out_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[16]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[17]),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[18]),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[19]),
        .Q(Q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[20]),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[21]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[22]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[23]),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[24]),
        .Q(Q[24]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[25]),
        .Q(Q[25]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[26]),
        .Q(Q[26]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[27]),
        .Q(Q[27]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[28]),
        .Q(Q[28]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[29]),
        .Q(Q[29]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[30]),
        .Q(Q[30]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[31]),
        .Q(Q[31]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "flopr" *) 
module flopr__parameterized2
   (\out_reg[4]_0 ,
    Q,
    \out_reg[4]_1 ,
    \q[31]_i_6__0 ,
    \out_reg[4]_2 ,
    CLK,
    AR);
  output \out_reg[4]_0 ;
  output [4:0]Q;
  output \out_reg[4]_1 ;
  input [5:0]\q[31]_i_6__0 ;
  input [4:0]\out_reg[4]_2 ;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [4:0]Q;
  wire \out_reg[4]_0 ;
  wire \out_reg[4]_1 ;
  wire [4:0]\out_reg[4]_2 ;
  wire [5:0]\q[31]_i_6__0 ;

  FDCE #(
    .INIT(1'b0)) 
    \out_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\out_reg[4]_2 [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\out_reg[4]_2 [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\out_reg[4]_2 [2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\out_reg[4]_2 [3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\out_reg[4]_2 [4]),
        .Q(Q[4]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \q[31]_i_10 
       (.I0(Q[4]),
        .I1(\q[31]_i_6__0 [2]),
        .I2(Q[3]),
        .I3(\q[31]_i_6__0 [1]),
        .I4(\q[31]_i_6__0 [0]),
        .I5(Q[2]),
        .O(\out_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \q[31]_i_10__0 
       (.I0(Q[4]),
        .I1(\q[31]_i_6__0 [5]),
        .I2(Q[3]),
        .I3(\q[31]_i_6__0 [4]),
        .I4(\q[31]_i_6__0 [3]),
        .I5(Q[2]),
        .O(\out_reg[4]_1 ));
endmodule

(* ORIG_REF_NAME = "flopr" *) 
module flopr__parameterized2_7
   (Q,
    D,
    CLK,
    AR);
  output [4:0]Q;
  input [4:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [4:0]D;
  wire [4:0]Q;

  FDCE #(
    .INIT(1'b0)) 
    \out_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[4]),
        .Q(Q[4]));
endmodule

module floprc
   (aluoutE1,
    \q_reg[8]_0 ,
    D,
    rtE1,
    \q_reg[4]_0 ,
    \q_reg[4]_1 ,
    \q_reg[3]_0 ,
    \q_reg[1]_0 ,
    \q_reg[1]_1 ,
    \q_reg[1]_2 ,
    \q_reg[1]_3 ,
    \q_reg[1]_4 ,
    \q_reg[1]_5 ,
    \q_reg[1]_6 ,
    \q_reg[1]_7 ,
    \q_reg[1]_8 ,
    \q_reg[1]_9 ,
    \q_reg[1]_10 ,
    \q_reg[1]_11 ,
    \q_reg[1]_12 ,
    \q_reg[1]_13 ,
    \q_reg[2]_0 ,
    \out_reg[30] ,
    \out_reg[30]_0 ,
    Q,
    data1,
    \out_reg[31] ,
    \out_reg[31]_0 ,
    \out_reg[27] ,
    \out_reg[27]_0 ,
    \out_reg[28] ,
    \out_reg[28]_0 ,
    \out_reg[29] ,
    \out_reg[29]_0 ,
    \out_reg[24] ,
    \out_reg[24]_0 ,
    \out_reg[25] ,
    \out_reg[25]_0 ,
    \out_reg[26] ,
    \out_reg[26]_0 ,
    \out_reg[21] ,
    \out_reg[21]_0 ,
    \out_reg[22] ,
    \out_reg[22]_0 ,
    \out_reg[23] ,
    \out_reg[23]_0 ,
    \out_reg[18] ,
    \out_reg[18]_0 ,
    \out_reg[19] ,
    \out_reg[19]_0 ,
    \out_reg[20] ,
    \out_reg[20]_0 ,
    \out_reg[16] ,
    \out_reg[16]_0 ,
    \out_reg[15] ,
    \out_reg[15]_0 ,
    \out_reg[17] ,
    \out_reg[17]_0 ,
    \out_reg[12] ,
    \out_reg[12]_0 ,
    \out_reg[13] ,
    \out_reg[13]_0 ,
    \out_reg[14] ,
    \out_reg[14]_0 ,
    \out_reg[9] ,
    \out_reg[9]_0 ,
    \out_reg[10] ,
    \out_reg[10]_0 ,
    \out_reg[11] ,
    \out_reg[11]_0 ,
    \out_reg[6] ,
    \out_reg[6]_0 ,
    \out_reg[7] ,
    \out_reg[7]_0 ,
    \out_reg[8] ,
    \out_reg[8]_0 ,
    \out_reg[3] ,
    \out_reg[3]_0 ,
    \out_reg[4] ,
    \out_reg[4]_0 ,
    \out_reg[5] ,
    \out_reg[5]_0 ,
    \out_reg[2] ,
    \out_reg[2]_0 ,
    \out_reg[1] ,
    \out_reg[1]_0 ,
    \out_reg[0] ,
    \out_reg[0]_0 ,
    CO,
    rdE,
    \out_reg[4]_1 ,
    forwardBD30_in,
    \q[31]_i_7 ,
    forwardAD32_in,
    \out_reg[30]_1 ,
    \out_reg[30]_2 ,
    \out_reg[29]_1 ,
    \q_reg[8]_1 ,
    CLK,
    AR);
  output [31:0]aluoutE1;
  output [6:0]\q_reg[8]_0 ;
  output [4:0]D;
  output [0:0]rtE1;
  output \q_reg[4]_0 ;
  output \q_reg[4]_1 ;
  output \q_reg[3]_0 ;
  output \q_reg[1]_0 ;
  output \q_reg[1]_1 ;
  output \q_reg[1]_2 ;
  output \q_reg[1]_3 ;
  output \q_reg[1]_4 ;
  output \q_reg[1]_5 ;
  output \q_reg[1]_6 ;
  output \q_reg[1]_7 ;
  output \q_reg[1]_8 ;
  output \q_reg[1]_9 ;
  output \q_reg[1]_10 ;
  output \q_reg[1]_11 ;
  output \q_reg[1]_12 ;
  output \q_reg[1]_13 ;
  output \q_reg[2]_0 ;
  input \out_reg[30] ;
  input \out_reg[30]_0 ;
  input [31:0]Q;
  input [31:0]data1;
  input \out_reg[31] ;
  input \out_reg[31]_0 ;
  input \out_reg[27] ;
  input \out_reg[27]_0 ;
  input \out_reg[28] ;
  input \out_reg[28]_0 ;
  input \out_reg[29] ;
  input \out_reg[29]_0 ;
  input \out_reg[24] ;
  input \out_reg[24]_0 ;
  input \out_reg[25] ;
  input \out_reg[25]_0 ;
  input \out_reg[26] ;
  input \out_reg[26]_0 ;
  input \out_reg[21] ;
  input \out_reg[21]_0 ;
  input \out_reg[22] ;
  input \out_reg[22]_0 ;
  input \out_reg[23] ;
  input \out_reg[23]_0 ;
  input \out_reg[18] ;
  input \out_reg[18]_0 ;
  input \out_reg[19] ;
  input \out_reg[19]_0 ;
  input \out_reg[20] ;
  input \out_reg[20]_0 ;
  input \out_reg[16] ;
  input \out_reg[16]_0 ;
  input \out_reg[15] ;
  input \out_reg[15]_0 ;
  input \out_reg[17] ;
  input \out_reg[17]_0 ;
  input \out_reg[12] ;
  input \out_reg[12]_0 ;
  input \out_reg[13] ;
  input \out_reg[13]_0 ;
  input \out_reg[14] ;
  input \out_reg[14]_0 ;
  input \out_reg[9] ;
  input \out_reg[9]_0 ;
  input \out_reg[10] ;
  input \out_reg[10]_0 ;
  input \out_reg[11] ;
  input \out_reg[11]_0 ;
  input \out_reg[6] ;
  input \out_reg[6]_0 ;
  input \out_reg[7] ;
  input \out_reg[7]_0 ;
  input \out_reg[8] ;
  input \out_reg[8]_0 ;
  input \out_reg[3] ;
  input \out_reg[3]_0 ;
  input \out_reg[4] ;
  input \out_reg[4]_0 ;
  input \out_reg[5] ;
  input \out_reg[5]_0 ;
  input \out_reg[2] ;
  input \out_reg[2]_0 ;
  input \out_reg[1] ;
  input \out_reg[1]_0 ;
  input \out_reg[0] ;
  input \out_reg[0]_0 ;
  input [0:0]CO;
  input [4:0]rdE;
  input [4:0]\out_reg[4]_1 ;
  input forwardBD30_in;
  input [1:0]\q[31]_i_7 ;
  input forwardAD32_in;
  input [29:0]\out_reg[30]_1 ;
  input [29:0]\out_reg[30]_2 ;
  input [10:0]\out_reg[29]_1 ;
  input [8:0]\q_reg[8]_1 ;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]CO;
  wire [4:0]D;
  wire [31:0]Q;
  wire [2:2]alucontrolE;
  wire [31:0]aluoutE1;
  wire [31:0]data1;
  wire forwardAD32_in;
  wire forwardBD30_in;
  wire \out[0]_i_2_n_0 ;
  wire \out[0]_i_3_n_0 ;
  wire \out[0]_i_6_n_0 ;
  wire \out[10]_i_2__0_n_0 ;
  wire \out[10]_i_3__0_n_0 ;
  wire \out[11]_i_2__0_n_0 ;
  wire \out[11]_i_3__0_n_0 ;
  wire \out[12]_i_2__0_n_0 ;
  wire \out[12]_i_3__0_n_0 ;
  wire \out[13]_i_2__0_n_0 ;
  wire \out[13]_i_3__0_n_0 ;
  wire \out[14]_i_2__0_n_0 ;
  wire \out[14]_i_3__0_n_0 ;
  wire \out[15]_i_2__0_n_0 ;
  wire \out[15]_i_3__0_n_0 ;
  wire \out[16]_i_2__0_n_0 ;
  wire \out[17]_i_2__0_n_0 ;
  wire \out[18]_i_2__0_n_0 ;
  wire \out[19]_i_2__0_n_0 ;
  wire \out[1]_i_2_n_0 ;
  wire \out[1]_i_3_n_0 ;
  wire \out[20]_i_2__0_n_0 ;
  wire \out[21]_i_2__0_n_0 ;
  wire \out[22]_i_2__0_n_0 ;
  wire \out[23]_i_2__0_n_0 ;
  wire \out[24]_i_2__0_n_0 ;
  wire \out[25]_i_2__0_n_0 ;
  wire \out[26]_i_2__0_n_0 ;
  wire \out[27]_i_2__0_n_0 ;
  wire \out[28]_i_2__0_n_0 ;
  wire \out[29]_i_2__0_n_0 ;
  wire \out[29]_i_3__0_n_0 ;
  wire \out[2]_i_2__0_n_0 ;
  wire \out[2]_i_3_n_0 ;
  wire \out[30]_i_2__0_n_0 ;
  wire \out[30]_i_3__0_n_0 ;
  wire \out[31]_i_2__0_n_0 ;
  wire \out[31]_i_5__0_n_0 ;
  wire \out[31]_i_6_n_0 ;
  wire \out[3]_i_2_n_0 ;
  wire \out[3]_i_3_n_0 ;
  wire \out[4]_i_2_n_0 ;
  wire \out[4]_i_3_n_0 ;
  wire \out[5]_i_2__0_n_0 ;
  wire \out[6]_i_2__0_n_0 ;
  wire \out[6]_i_3__0_n_0 ;
  wire \out[7]_i_2__0_n_0 ;
  wire \out[7]_i_3__0_n_0 ;
  wire \out[8]_i_2__0_n_0 ;
  wire \out[8]_i_3__0_n_0 ;
  wire \out[9]_i_2__0_n_0 ;
  wire \out[9]_i_3__0_n_0 ;
  wire \out_reg[0] ;
  wire \out_reg[0]_0 ;
  wire \out_reg[10] ;
  wire \out_reg[10]_0 ;
  wire \out_reg[11] ;
  wire \out_reg[11]_0 ;
  wire \out_reg[12] ;
  wire \out_reg[12]_0 ;
  wire \out_reg[13] ;
  wire \out_reg[13]_0 ;
  wire \out_reg[14] ;
  wire \out_reg[14]_0 ;
  wire \out_reg[15] ;
  wire \out_reg[15]_0 ;
  wire \out_reg[16] ;
  wire \out_reg[16]_0 ;
  wire \out_reg[17] ;
  wire \out_reg[17]_0 ;
  wire \out_reg[18] ;
  wire \out_reg[18]_0 ;
  wire \out_reg[19] ;
  wire \out_reg[19]_0 ;
  wire \out_reg[1] ;
  wire \out_reg[1]_0 ;
  wire \out_reg[20] ;
  wire \out_reg[20]_0 ;
  wire \out_reg[21] ;
  wire \out_reg[21]_0 ;
  wire \out_reg[22] ;
  wire \out_reg[22]_0 ;
  wire \out_reg[23] ;
  wire \out_reg[23]_0 ;
  wire \out_reg[24] ;
  wire \out_reg[24]_0 ;
  wire \out_reg[25] ;
  wire \out_reg[25]_0 ;
  wire \out_reg[26] ;
  wire \out_reg[26]_0 ;
  wire \out_reg[27] ;
  wire \out_reg[27]_0 ;
  wire \out_reg[28] ;
  wire \out_reg[28]_0 ;
  wire \out_reg[29] ;
  wire \out_reg[29]_0 ;
  wire [10:0]\out_reg[29]_1 ;
  wire \out_reg[2] ;
  wire \out_reg[2]_0 ;
  wire \out_reg[30] ;
  wire \out_reg[30]_0 ;
  wire [29:0]\out_reg[30]_1 ;
  wire [29:0]\out_reg[30]_2 ;
  wire \out_reg[31] ;
  wire \out_reg[31]_0 ;
  wire \out_reg[3] ;
  wire \out_reg[3]_0 ;
  wire \out_reg[4] ;
  wire \out_reg[4]_0 ;
  wire [4:0]\out_reg[4]_1 ;
  wire \out_reg[5] ;
  wire \out_reg[5]_0 ;
  wire \out_reg[6] ;
  wire \out_reg[6]_0 ;
  wire \out_reg[7] ;
  wire \out_reg[7]_0 ;
  wire \out_reg[8] ;
  wire \out_reg[8]_0 ;
  wire \out_reg[9] ;
  wire \out_reg[9]_0 ;
  wire [1:0]\q[31]_i_7 ;
  wire \q_reg[1]_0 ;
  wire \q_reg[1]_1 ;
  wire \q_reg[1]_10 ;
  wire \q_reg[1]_11 ;
  wire \q_reg[1]_12 ;
  wire \q_reg[1]_13 ;
  wire \q_reg[1]_2 ;
  wire \q_reg[1]_3 ;
  wire \q_reg[1]_4 ;
  wire \q_reg[1]_5 ;
  wire \q_reg[1]_6 ;
  wire \q_reg[1]_7 ;
  wire \q_reg[1]_8 ;
  wire \q_reg[1]_9 ;
  wire \q_reg[2]_0 ;
  wire \q_reg[3]_0 ;
  wire \q_reg[4]_0 ;
  wire \q_reg[4]_1 ;
  wire [6:0]\q_reg[8]_0 ;
  wire [8:0]\q_reg[8]_1 ;
  wire [4:0]rdE;
  wire regdstE;
  wire [0:0]rtE1;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    flushD_OBUF_inst_i_3
       (.I0(\q_reg[8]_0 [0]),
        .I1(\q_reg[8]_0 [3]),
        .I2(\out_reg[4]_1 [2]),
        .O(rtE1));
  LUT6 #(
    .INIT(64'h88888888FFFFFF8F)) 
    \out[0]_i_1__0 
       (.I0(\out[0]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(\out[0]_i_3_n_0 ),
        .I3(\out_reg[0] ),
        .I4(\out_reg[0]_0 ),
        .I5(\out[0]_i_6_n_0 ),
        .O(aluoutE1[0]));
  LUT5 #(
    .INIT(32'hBBBBB888)) 
    \out[0]_i_1__1 
       (.I0(rdE[0]),
        .I1(regdstE),
        .I2(\q_reg[8]_0 [0]),
        .I3(\q_reg[8]_0 [3]),
        .I4(\out_reg[4]_1 [0]),
        .O(D[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \out[0]_i_2 
       (.I0(\q_reg[8]_0 [3]),
        .I1(\q_reg[8]_0 [0]),
        .O(\out[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \out[0]_i_3 
       (.I0(\q_reg[8]_0 [2]),
        .I1(alucontrolE),
        .O(\out[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAABAAAAAFABAAAAA)) 
    \out[0]_i_6 
       (.I0(\out[0]_i_2_n_0 ),
        .I1(data1[0]),
        .I2(\q_reg[8]_0 [2]),
        .I3(\q_reg[8]_0 [1]),
        .I4(alucontrolE),
        .I5(CO),
        .O(\out[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \out[0]_i_9 
       (.I0(\q_reg[8]_0 [2]),
        .I1(\q_reg[8]_0 [1]),
        .I2(alucontrolE),
        .O(\q_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEAAAAAAAA)) 
    \out[10]_i_1__0 
       (.I0(\out[10]_i_2__0_n_0 ),
        .I1(\out[10]_i_3__0_n_0 ),
        .I2(\out[31]_i_5__0_n_0 ),
        .I3(\out_reg[10] ),
        .I4(\out_reg[10]_0 ),
        .I5(\out[31]_i_6_n_0 ),
        .O(aluoutE1[10]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00C00000)) 
    \out[10]_i_2__0 
       (.I0(Q[10]),
        .I1(data1[10]),
        .I2(\q_reg[8]_0 [2]),
        .I3(\q_reg[8]_0 [1]),
        .I4(alucontrolE),
        .I5(\out[0]_i_2_n_0 ),
        .O(\out[10]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hA880A8A8A8808080)) 
    \out[10]_i_3__0 
       (.I0(\q_reg[3]_0 ),
        .I1(\q_reg[8]_0 [1]),
        .I2(\out_reg[30]_1 [9]),
        .I3(\out_reg[29]_1 [9]),
        .I4(\q_reg[8]_0 [4]),
        .I5(\out_reg[30]_2 [9]),
        .O(\out[10]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEAAAAAAAA)) 
    \out[11]_i_1__0 
       (.I0(\out[11]_i_2__0_n_0 ),
        .I1(\out[11]_i_3__0_n_0 ),
        .I2(\out[31]_i_5__0_n_0 ),
        .I3(\out_reg[11] ),
        .I4(\out_reg[11]_0 ),
        .I5(\out[31]_i_6_n_0 ),
        .O(aluoutE1[11]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00C00000)) 
    \out[11]_i_2__0 
       (.I0(Q[11]),
        .I1(data1[11]),
        .I2(\q_reg[8]_0 [2]),
        .I3(\q_reg[8]_0 [1]),
        .I4(alucontrolE),
        .I5(\out[0]_i_2_n_0 ),
        .O(\out[11]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hA880A8A8A8808080)) 
    \out[11]_i_3__0 
       (.I0(\q_reg[3]_0 ),
        .I1(\q_reg[8]_0 [1]),
        .I2(\out_reg[30]_1 [10]),
        .I3(rdE[0]),
        .I4(\q_reg[8]_0 [4]),
        .I5(\out_reg[30]_2 [10]),
        .O(\out[11]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEAAAAAAAA)) 
    \out[12]_i_1__0 
       (.I0(\out[12]_i_2__0_n_0 ),
        .I1(\out[12]_i_3__0_n_0 ),
        .I2(\out[31]_i_5__0_n_0 ),
        .I3(\out_reg[12] ),
        .I4(\out_reg[12]_0 ),
        .I5(\out[31]_i_6_n_0 ),
        .O(aluoutE1[12]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00C00000)) 
    \out[12]_i_2__0 
       (.I0(Q[12]),
        .I1(data1[12]),
        .I2(\q_reg[8]_0 [2]),
        .I3(\q_reg[8]_0 [1]),
        .I4(alucontrolE),
        .I5(\out[0]_i_2_n_0 ),
        .O(\out[12]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hA880A8A8A8808080)) 
    \out[12]_i_3__0 
       (.I0(\q_reg[3]_0 ),
        .I1(\q_reg[8]_0 [1]),
        .I2(\out_reg[30]_1 [11]),
        .I3(rdE[1]),
        .I4(\q_reg[8]_0 [4]),
        .I5(\out_reg[30]_2 [11]),
        .O(\out[12]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEAAAAAAAA)) 
    \out[13]_i_1__0 
       (.I0(\out[13]_i_2__0_n_0 ),
        .I1(\out[13]_i_3__0_n_0 ),
        .I2(\out[31]_i_5__0_n_0 ),
        .I3(\out_reg[13] ),
        .I4(\out_reg[13]_0 ),
        .I5(\out[31]_i_6_n_0 ),
        .O(aluoutE1[13]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00C00000)) 
    \out[13]_i_2__0 
       (.I0(Q[13]),
        .I1(data1[13]),
        .I2(\q_reg[8]_0 [2]),
        .I3(\q_reg[8]_0 [1]),
        .I4(alucontrolE),
        .I5(\out[0]_i_2_n_0 ),
        .O(\out[13]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hA880A8A8A8808080)) 
    \out[13]_i_3__0 
       (.I0(\q_reg[3]_0 ),
        .I1(\q_reg[8]_0 [1]),
        .I2(\out_reg[30]_1 [12]),
        .I3(rdE[2]),
        .I4(\q_reg[8]_0 [4]),
        .I5(\out_reg[30]_2 [12]),
        .O(\out[13]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEAAAAAAAA)) 
    \out[14]_i_1__0 
       (.I0(\out[14]_i_2__0_n_0 ),
        .I1(\out[14]_i_3__0_n_0 ),
        .I2(\out[31]_i_5__0_n_0 ),
        .I3(\out_reg[14] ),
        .I4(\out_reg[14]_0 ),
        .I5(\out[31]_i_6_n_0 ),
        .O(aluoutE1[14]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00C00000)) 
    \out[14]_i_2__0 
       (.I0(Q[14]),
        .I1(data1[14]),
        .I2(\q_reg[8]_0 [2]),
        .I3(\q_reg[8]_0 [1]),
        .I4(alucontrolE),
        .I5(\out[0]_i_2_n_0 ),
        .O(\out[14]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hA880A8A8A8808080)) 
    \out[14]_i_3__0 
       (.I0(\q_reg[3]_0 ),
        .I1(\q_reg[8]_0 [1]),
        .I2(\out_reg[30]_1 [13]),
        .I3(rdE[3]),
        .I4(\q_reg[8]_0 [4]),
        .I5(\out_reg[30]_2 [13]),
        .O(\out[14]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEAAAAAAAA)) 
    \out[15]_i_1__0 
       (.I0(\out[15]_i_2__0_n_0 ),
        .I1(\out[15]_i_3__0_n_0 ),
        .I2(\out[31]_i_5__0_n_0 ),
        .I3(\out_reg[15] ),
        .I4(\out_reg[15]_0 ),
        .I5(\out[31]_i_6_n_0 ),
        .O(aluoutE1[15]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00C00000)) 
    \out[15]_i_2__0 
       (.I0(Q[15]),
        .I1(data1[15]),
        .I2(\q_reg[8]_0 [2]),
        .I3(\q_reg[8]_0 [1]),
        .I4(alucontrolE),
        .I5(\out[0]_i_2_n_0 ),
        .O(\out[15]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hA880A8A8A8808080)) 
    \out[15]_i_3__0 
       (.I0(\q_reg[3]_0 ),
        .I1(\q_reg[8]_0 [1]),
        .I2(\out_reg[30]_1 [14]),
        .I3(rdE[4]),
        .I4(\q_reg[8]_0 [4]),
        .I5(\out_reg[30]_2 [14]),
        .O(\out[15]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'hFEEEAAAA)) 
    \out[16]_i_1__0 
       (.I0(\out[16]_i_2__0_n_0 ),
        .I1(\out_reg[16] ),
        .I2(\out_reg[16]_0 ),
        .I3(\out[31]_i_5__0_n_0 ),
        .I4(\out[31]_i_6_n_0 ),
        .O(aluoutE1[16]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00C00000)) 
    \out[16]_i_2__0 
       (.I0(Q[16]),
        .I1(data1[16]),
        .I2(\q_reg[8]_0 [2]),
        .I3(\q_reg[8]_0 [1]),
        .I4(alucontrolE),
        .I5(\out[0]_i_2_n_0 ),
        .O(\out[16]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8808080A880)) 
    \out[16]_i_6 
       (.I0(\q_reg[3]_0 ),
        .I1(\q_reg[8]_0 [1]),
        .I2(\out_reg[30]_1 [15]),
        .I3(\out_reg[30]_2 [15]),
        .I4(\q_reg[8]_0 [4]),
        .I5(\out_reg[29]_1 [10]),
        .O(\q_reg[1]_11 ));
  LUT5 #(
    .INIT(32'hFEEEAAAA)) 
    \out[17]_i_1__0 
       (.I0(\out[17]_i_2__0_n_0 ),
        .I1(\out_reg[17] ),
        .I2(\out_reg[17]_0 ),
        .I3(\out[31]_i_5__0_n_0 ),
        .I4(\out[31]_i_6_n_0 ),
        .O(aluoutE1[17]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00C00000)) 
    \out[17]_i_2__0 
       (.I0(Q[17]),
        .I1(data1[17]),
        .I2(\q_reg[8]_0 [2]),
        .I3(\q_reg[8]_0 [1]),
        .I4(alucontrolE),
        .I5(\out[0]_i_2_n_0 ),
        .O(\out[17]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8808080A880)) 
    \out[17]_i_6 
       (.I0(\q_reg[3]_0 ),
        .I1(\q_reg[8]_0 [1]),
        .I2(\out_reg[30]_1 [16]),
        .I3(\out_reg[30]_2 [16]),
        .I4(\q_reg[8]_0 [4]),
        .I5(\out_reg[29]_1 [10]),
        .O(\q_reg[1]_12 ));
  LUT5 #(
    .INIT(32'hFEEEAAAA)) 
    \out[18]_i_1__0 
       (.I0(\out[18]_i_2__0_n_0 ),
        .I1(\out_reg[18] ),
        .I2(\out_reg[18]_0 ),
        .I3(\out[31]_i_5__0_n_0 ),
        .I4(\out[31]_i_6_n_0 ),
        .O(aluoutE1[18]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00C00000)) 
    \out[18]_i_2__0 
       (.I0(Q[18]),
        .I1(data1[18]),
        .I2(\q_reg[8]_0 [2]),
        .I3(\q_reg[8]_0 [1]),
        .I4(alucontrolE),
        .I5(\out[0]_i_2_n_0 ),
        .O(\out[18]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8808080A880)) 
    \out[18]_i_6 
       (.I0(\q_reg[3]_0 ),
        .I1(\q_reg[8]_0 [1]),
        .I2(\out_reg[30]_1 [17]),
        .I3(\out_reg[30]_2 [17]),
        .I4(\q_reg[8]_0 [4]),
        .I5(\out_reg[29]_1 [10]),
        .O(\q_reg[1]_8 ));
  LUT5 #(
    .INIT(32'hFEEEAAAA)) 
    \out[19]_i_1__0 
       (.I0(\out[19]_i_2__0_n_0 ),
        .I1(\out_reg[19] ),
        .I2(\out_reg[19]_0 ),
        .I3(\out[31]_i_5__0_n_0 ),
        .I4(\out[31]_i_6_n_0 ),
        .O(aluoutE1[19]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00C00000)) 
    \out[19]_i_2__0 
       (.I0(Q[19]),
        .I1(data1[19]),
        .I2(\q_reg[8]_0 [2]),
        .I3(\q_reg[8]_0 [1]),
        .I4(alucontrolE),
        .I5(\out[0]_i_2_n_0 ),
        .O(\out[19]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8808080A880)) 
    \out[19]_i_6 
       (.I0(\q_reg[3]_0 ),
        .I1(\q_reg[8]_0 [1]),
        .I2(\out_reg[30]_1 [18]),
        .I3(\out_reg[30]_2 [18]),
        .I4(\q_reg[8]_0 [4]),
        .I5(\out_reg[29]_1 [10]),
        .O(\q_reg[1]_9 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEAAAAAAAA)) 
    \out[1]_i_1__0 
       (.I0(\out[1]_i_2_n_0 ),
        .I1(\out[1]_i_3_n_0 ),
        .I2(\out[31]_i_5__0_n_0 ),
        .I3(\out_reg[1] ),
        .I4(\out_reg[1]_0 ),
        .I5(\out[31]_i_6_n_0 ),
        .O(aluoutE1[1]));
  LUT5 #(
    .INIT(32'hBBBBB888)) 
    \out[1]_i_1__1 
       (.I0(rdE[1]),
        .I1(regdstE),
        .I2(\q_reg[8]_0 [0]),
        .I3(\q_reg[8]_0 [3]),
        .I4(\out_reg[4]_1 [1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00C00000)) 
    \out[1]_i_2 
       (.I0(Q[1]),
        .I1(data1[1]),
        .I2(\q_reg[8]_0 [2]),
        .I3(\q_reg[8]_0 [1]),
        .I4(alucontrolE),
        .I5(\out[0]_i_2_n_0 ),
        .O(\out[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA880A8A8A8808080)) 
    \out[1]_i_3 
       (.I0(\q_reg[3]_0 ),
        .I1(\q_reg[8]_0 [1]),
        .I2(\out_reg[30]_1 [0]),
        .I3(\out_reg[29]_1 [0]),
        .I4(\q_reg[8]_0 [4]),
        .I5(\out_reg[30]_2 [0]),
        .O(\out[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFEEEAAAA)) 
    \out[20]_i_1__0 
       (.I0(\out[20]_i_2__0_n_0 ),
        .I1(\out_reg[20] ),
        .I2(\out_reg[20]_0 ),
        .I3(\out[31]_i_5__0_n_0 ),
        .I4(\out[31]_i_6_n_0 ),
        .O(aluoutE1[20]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00C00000)) 
    \out[20]_i_2__0 
       (.I0(Q[20]),
        .I1(data1[20]),
        .I2(\q_reg[8]_0 [2]),
        .I3(\q_reg[8]_0 [1]),
        .I4(alucontrolE),
        .I5(\out[0]_i_2_n_0 ),
        .O(\out[20]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8808080A880)) 
    \out[20]_i_6 
       (.I0(\q_reg[3]_0 ),
        .I1(\q_reg[8]_0 [1]),
        .I2(\out_reg[30]_1 [19]),
        .I3(\out_reg[30]_2 [19]),
        .I4(\q_reg[8]_0 [4]),
        .I5(\out_reg[29]_1 [10]),
        .O(\q_reg[1]_10 ));
  LUT5 #(
    .INIT(32'hFEEEAAAA)) 
    \out[21]_i_1__0 
       (.I0(\out[21]_i_2__0_n_0 ),
        .I1(\out_reg[21] ),
        .I2(\out_reg[21]_0 ),
        .I3(\out[31]_i_5__0_n_0 ),
        .I4(\out[31]_i_6_n_0 ),
        .O(aluoutE1[21]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00C00000)) 
    \out[21]_i_2__0 
       (.I0(Q[21]),
        .I1(data1[21]),
        .I2(\q_reg[8]_0 [2]),
        .I3(\q_reg[8]_0 [1]),
        .I4(alucontrolE),
        .I5(\out[0]_i_2_n_0 ),
        .O(\out[21]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8808080A880)) 
    \out[21]_i_6 
       (.I0(\q_reg[3]_0 ),
        .I1(\q_reg[8]_0 [1]),
        .I2(\out_reg[30]_1 [20]),
        .I3(\out_reg[30]_2 [20]),
        .I4(\q_reg[8]_0 [4]),
        .I5(\out_reg[29]_1 [10]),
        .O(\q_reg[1]_5 ));
  LUT5 #(
    .INIT(32'hFEEEAAAA)) 
    \out[22]_i_1__0 
       (.I0(\out[22]_i_2__0_n_0 ),
        .I1(\out_reg[22] ),
        .I2(\out_reg[22]_0 ),
        .I3(\out[31]_i_5__0_n_0 ),
        .I4(\out[31]_i_6_n_0 ),
        .O(aluoutE1[22]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00C00000)) 
    \out[22]_i_2__0 
       (.I0(Q[22]),
        .I1(data1[22]),
        .I2(\q_reg[8]_0 [2]),
        .I3(\q_reg[8]_0 [1]),
        .I4(alucontrolE),
        .I5(\out[0]_i_2_n_0 ),
        .O(\out[22]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8808080A880)) 
    \out[22]_i_6 
       (.I0(\q_reg[3]_0 ),
        .I1(\q_reg[8]_0 [1]),
        .I2(\out_reg[30]_1 [21]),
        .I3(\out_reg[30]_2 [21]),
        .I4(\q_reg[8]_0 [4]),
        .I5(\out_reg[29]_1 [10]),
        .O(\q_reg[1]_6 ));
  LUT5 #(
    .INIT(32'hFEEEAAAA)) 
    \out[23]_i_1__0 
       (.I0(\out[23]_i_2__0_n_0 ),
        .I1(\out_reg[23] ),
        .I2(\out_reg[23]_0 ),
        .I3(\out[31]_i_5__0_n_0 ),
        .I4(\out[31]_i_6_n_0 ),
        .O(aluoutE1[23]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00C00000)) 
    \out[23]_i_2__0 
       (.I0(Q[23]),
        .I1(data1[23]),
        .I2(\q_reg[8]_0 [2]),
        .I3(\q_reg[8]_0 [1]),
        .I4(alucontrolE),
        .I5(\out[0]_i_2_n_0 ),
        .O(\out[23]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8808080A880)) 
    \out[23]_i_6 
       (.I0(\q_reg[3]_0 ),
        .I1(\q_reg[8]_0 [1]),
        .I2(\out_reg[30]_1 [22]),
        .I3(\out_reg[30]_2 [22]),
        .I4(\q_reg[8]_0 [4]),
        .I5(\out_reg[29]_1 [10]),
        .O(\q_reg[1]_7 ));
  LUT5 #(
    .INIT(32'hFEEEAAAA)) 
    \out[24]_i_1__0 
       (.I0(\out[24]_i_2__0_n_0 ),
        .I1(\out_reg[24] ),
        .I2(\out_reg[24]_0 ),
        .I3(\out[31]_i_5__0_n_0 ),
        .I4(\out[31]_i_6_n_0 ),
        .O(aluoutE1[24]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00C00000)) 
    \out[24]_i_2__0 
       (.I0(Q[24]),
        .I1(data1[24]),
        .I2(\q_reg[8]_0 [2]),
        .I3(\q_reg[8]_0 [1]),
        .I4(alucontrolE),
        .I5(\out[0]_i_2_n_0 ),
        .O(\out[24]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8808080A880)) 
    \out[24]_i_6 
       (.I0(\q_reg[3]_0 ),
        .I1(\q_reg[8]_0 [1]),
        .I2(\out_reg[30]_1 [23]),
        .I3(\out_reg[30]_2 [23]),
        .I4(\q_reg[8]_0 [4]),
        .I5(\out_reg[29]_1 [10]),
        .O(\q_reg[1]_2 ));
  LUT5 #(
    .INIT(32'hFEEEAAAA)) 
    \out[25]_i_1__0 
       (.I0(\out[25]_i_2__0_n_0 ),
        .I1(\out_reg[25] ),
        .I2(\out_reg[25]_0 ),
        .I3(\out[31]_i_5__0_n_0 ),
        .I4(\out[31]_i_6_n_0 ),
        .O(aluoutE1[25]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00C00000)) 
    \out[25]_i_2__0 
       (.I0(Q[25]),
        .I1(data1[25]),
        .I2(\q_reg[8]_0 [2]),
        .I3(\q_reg[8]_0 [1]),
        .I4(alucontrolE),
        .I5(\out[0]_i_2_n_0 ),
        .O(\out[25]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8808080A880)) 
    \out[25]_i_6 
       (.I0(\q_reg[3]_0 ),
        .I1(\q_reg[8]_0 [1]),
        .I2(\out_reg[30]_1 [24]),
        .I3(\out_reg[30]_2 [24]),
        .I4(\q_reg[8]_0 [4]),
        .I5(\out_reg[29]_1 [10]),
        .O(\q_reg[1]_3 ));
  LUT5 #(
    .INIT(32'hFEEEAAAA)) 
    \out[26]_i_1__0 
       (.I0(\out[26]_i_2__0_n_0 ),
        .I1(\out_reg[26] ),
        .I2(\out_reg[26]_0 ),
        .I3(\out[31]_i_5__0_n_0 ),
        .I4(\out[31]_i_6_n_0 ),
        .O(aluoutE1[26]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00C00000)) 
    \out[26]_i_2__0 
       (.I0(Q[26]),
        .I1(data1[26]),
        .I2(\q_reg[8]_0 [2]),
        .I3(\q_reg[8]_0 [1]),
        .I4(alucontrolE),
        .I5(\out[0]_i_2_n_0 ),
        .O(\out[26]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8808080A880)) 
    \out[26]_i_6 
       (.I0(\q_reg[3]_0 ),
        .I1(\q_reg[8]_0 [1]),
        .I2(\out_reg[30]_1 [25]),
        .I3(\out_reg[30]_2 [25]),
        .I4(\q_reg[8]_0 [4]),
        .I5(\out_reg[29]_1 [10]),
        .O(\q_reg[1]_4 ));
  LUT5 #(
    .INIT(32'hFEEEAAAA)) 
    \out[27]_i_1__0 
       (.I0(\out[27]_i_2__0_n_0 ),
        .I1(\out_reg[27] ),
        .I2(\out_reg[27]_0 ),
        .I3(\out[31]_i_5__0_n_0 ),
        .I4(\out[31]_i_6_n_0 ),
        .O(aluoutE1[27]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00C00000)) 
    \out[27]_i_2__0 
       (.I0(Q[27]),
        .I1(data1[27]),
        .I2(\q_reg[8]_0 [2]),
        .I3(\q_reg[8]_0 [1]),
        .I4(alucontrolE),
        .I5(\out[0]_i_2_n_0 ),
        .O(\out[27]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8808080A880)) 
    \out[27]_i_6 
       (.I0(\q_reg[3]_0 ),
        .I1(\q_reg[8]_0 [1]),
        .I2(\out_reg[30]_1 [26]),
        .I3(\out_reg[30]_2 [26]),
        .I4(\q_reg[8]_0 [4]),
        .I5(\out_reg[29]_1 [10]),
        .O(\q_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hFEEEAAAA)) 
    \out[28]_i_1__0 
       (.I0(\out[28]_i_2__0_n_0 ),
        .I1(\out_reg[28] ),
        .I2(\out_reg[28]_0 ),
        .I3(\out[31]_i_5__0_n_0 ),
        .I4(\out[31]_i_6_n_0 ),
        .O(aluoutE1[28]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00C00000)) 
    \out[28]_i_2__0 
       (.I0(Q[28]),
        .I1(data1[28]),
        .I2(\q_reg[8]_0 [2]),
        .I3(\q_reg[8]_0 [1]),
        .I4(alucontrolE),
        .I5(\out[0]_i_2_n_0 ),
        .O(\out[28]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8808080A880)) 
    \out[28]_i_6 
       (.I0(\q_reg[3]_0 ),
        .I1(\q_reg[8]_0 [1]),
        .I2(\out_reg[30]_1 [27]),
        .I3(\out_reg[30]_2 [27]),
        .I4(\q_reg[8]_0 [4]),
        .I5(\out_reg[29]_1 [10]),
        .O(\q_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEAAAAAAAA)) 
    \out[29]_i_1__0 
       (.I0(\out[29]_i_2__0_n_0 ),
        .I1(\out[29]_i_3__0_n_0 ),
        .I2(\out_reg[29] ),
        .I3(\out_reg[29]_0 ),
        .I4(\out[31]_i_5__0_n_0 ),
        .I5(\out[31]_i_6_n_0 ),
        .O(aluoutE1[29]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00C00000)) 
    \out[29]_i_2__0 
       (.I0(Q[29]),
        .I1(data1[29]),
        .I2(\q_reg[8]_0 [2]),
        .I3(\q_reg[8]_0 [1]),
        .I4(alucontrolE),
        .I5(\out[0]_i_2_n_0 ),
        .O(\out[29]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8808080A880)) 
    \out[29]_i_3__0 
       (.I0(\q_reg[3]_0 ),
        .I1(\q_reg[8]_0 [1]),
        .I2(\out_reg[30]_1 [28]),
        .I3(\out_reg[30]_2 [28]),
        .I4(\q_reg[8]_0 [4]),
        .I5(\out_reg[29]_1 [10]),
        .O(\out[29]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEAAAAAAAA)) 
    \out[2]_i_1__1 
       (.I0(\out[2]_i_2__0_n_0 ),
        .I1(\out[2]_i_3_n_0 ),
        .I2(\out[31]_i_5__0_n_0 ),
        .I3(\out_reg[2] ),
        .I4(\out_reg[2]_0 ),
        .I5(\out[31]_i_6_n_0 ),
        .O(aluoutE1[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hBBBBB888)) 
    \out[2]_i_1__2 
       (.I0(rdE[2]),
        .I1(regdstE),
        .I2(\q_reg[8]_0 [0]),
        .I3(\q_reg[8]_0 [3]),
        .I4(\out_reg[4]_1 [2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00C00000)) 
    \out[2]_i_2__0 
       (.I0(Q[2]),
        .I1(data1[2]),
        .I2(\q_reg[8]_0 [2]),
        .I3(\q_reg[8]_0 [1]),
        .I4(alucontrolE),
        .I5(\out[0]_i_2_n_0 ),
        .O(\out[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hA880A8A8A8808080)) 
    \out[2]_i_3 
       (.I0(\q_reg[3]_0 ),
        .I1(\q_reg[8]_0 [1]),
        .I2(\out_reg[30]_1 [1]),
        .I3(\out_reg[29]_1 [1]),
        .I4(\q_reg[8]_0 [4]),
        .I5(\out_reg[30]_2 [1]),
        .O(\out[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEAAAAAAAA)) 
    \out[30]_i_1__0 
       (.I0(\out[30]_i_2__0_n_0 ),
        .I1(\out[30]_i_3__0_n_0 ),
        .I2(\out_reg[30] ),
        .I3(\out_reg[30]_0 ),
        .I4(\out[31]_i_5__0_n_0 ),
        .I5(\out[31]_i_6_n_0 ),
        .O(aluoutE1[30]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00C00000)) 
    \out[30]_i_2__0 
       (.I0(Q[30]),
        .I1(data1[30]),
        .I2(\q_reg[8]_0 [2]),
        .I3(\q_reg[8]_0 [1]),
        .I4(alucontrolE),
        .I5(\out[0]_i_2_n_0 ),
        .O(\out[30]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8808080A880)) 
    \out[30]_i_3__0 
       (.I0(\q_reg[3]_0 ),
        .I1(\q_reg[8]_0 [1]),
        .I2(\out_reg[30]_1 [29]),
        .I3(\out_reg[30]_2 [29]),
        .I4(\q_reg[8]_0 [4]),
        .I5(\out_reg[29]_1 [10]),
        .O(\out[30]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'hFEEEAAAA)) 
    \out[31]_i_1 
       (.I0(\out[31]_i_2__0_n_0 ),
        .I1(\out_reg[31] ),
        .I2(\out_reg[31]_0 ),
        .I3(\out[31]_i_5__0_n_0 ),
        .I4(\out[31]_i_6_n_0 ),
        .O(aluoutE1[31]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00C00000)) 
    \out[31]_i_2__0 
       (.I0(Q[31]),
        .I1(data1[31]),
        .I2(\q_reg[8]_0 [2]),
        .I3(\q_reg[8]_0 [1]),
        .I4(alucontrolE),
        .I5(\out[0]_i_2_n_0 ),
        .O(\out[31]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \out[31]_i_5__0 
       (.I0(alucontrolE),
        .I1(\q_reg[8]_0 [1]),
        .I2(\q_reg[8]_0 [2]),
        .O(\out[31]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'h0777)) 
    \out[31]_i_6 
       (.I0(alucontrolE),
        .I1(\q_reg[8]_0 [2]),
        .I2(\q_reg[8]_0 [0]),
        .I3(\q_reg[8]_0 [3]),
        .O(\out[31]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \out[31]_i_8 
       (.I0(alucontrolE),
        .I1(\q_reg[8]_0 [2]),
        .O(\q_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEAAAAAAAA)) 
    \out[3]_i_1__0 
       (.I0(\out[3]_i_2_n_0 ),
        .I1(\out[3]_i_3_n_0 ),
        .I2(\out[31]_i_5__0_n_0 ),
        .I3(\out_reg[3] ),
        .I4(\out_reg[3]_0 ),
        .I5(\out[31]_i_6_n_0 ),
        .O(aluoutE1[3]));
  LUT5 #(
    .INIT(32'hBBBBB888)) 
    \out[3]_i_1__1 
       (.I0(rdE[3]),
        .I1(regdstE),
        .I2(\q_reg[8]_0 [0]),
        .I3(\q_reg[8]_0 [3]),
        .I4(\out_reg[4]_1 [3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00C00000)) 
    \out[3]_i_2 
       (.I0(Q[3]),
        .I1(data1[3]),
        .I2(\q_reg[8]_0 [2]),
        .I3(\q_reg[8]_0 [1]),
        .I4(alucontrolE),
        .I5(\out[0]_i_2_n_0 ),
        .O(\out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA880A8A8A8808080)) 
    \out[3]_i_3 
       (.I0(\q_reg[3]_0 ),
        .I1(\q_reg[8]_0 [1]),
        .I2(\out_reg[30]_1 [2]),
        .I3(\out_reg[29]_1 [2]),
        .I4(\q_reg[8]_0 [4]),
        .I5(\out_reg[30]_2 [2]),
        .O(\out[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEAAAAAAAA)) 
    \out[4]_i_1__0 
       (.I0(\out[4]_i_2_n_0 ),
        .I1(\out[4]_i_3_n_0 ),
        .I2(\out[31]_i_5__0_n_0 ),
        .I3(\out_reg[4] ),
        .I4(\out_reg[4]_0 ),
        .I5(\out[31]_i_6_n_0 ),
        .O(aluoutE1[4]));
  LUT5 #(
    .INIT(32'hBBBBB888)) 
    \out[4]_i_1__1 
       (.I0(rdE[4]),
        .I1(regdstE),
        .I2(\q_reg[8]_0 [0]),
        .I3(\q_reg[8]_0 [3]),
        .I4(\out_reg[4]_1 [4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00C00000)) 
    \out[4]_i_2 
       (.I0(Q[4]),
        .I1(data1[4]),
        .I2(\q_reg[8]_0 [2]),
        .I3(\q_reg[8]_0 [1]),
        .I4(alucontrolE),
        .I5(\out[0]_i_2_n_0 ),
        .O(\out[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA880A8A8A8808080)) 
    \out[4]_i_3 
       (.I0(\q_reg[3]_0 ),
        .I1(\q_reg[8]_0 [1]),
        .I2(\out_reg[30]_1 [3]),
        .I3(\out_reg[29]_1 [3]),
        .I4(\q_reg[8]_0 [4]),
        .I5(\out_reg[30]_2 [3]),
        .O(\out[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFEEEAAAA)) 
    \out[5]_i_1__0 
       (.I0(\out[5]_i_2__0_n_0 ),
        .I1(\out_reg[5] ),
        .I2(\out_reg[5]_0 ),
        .I3(\out[31]_i_5__0_n_0 ),
        .I4(\out[31]_i_6_n_0 ),
        .O(aluoutE1[5]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00C00000)) 
    \out[5]_i_2__0 
       (.I0(Q[5]),
        .I1(data1[5]),
        .I2(\q_reg[8]_0 [2]),
        .I3(\q_reg[8]_0 [1]),
        .I4(alucontrolE),
        .I5(\out[0]_i_2_n_0 ),
        .O(\out[5]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hA880A8A8A8808080)) 
    \out[5]_i_6 
       (.I0(\q_reg[3]_0 ),
        .I1(\q_reg[8]_0 [1]),
        .I2(\out_reg[30]_1 [4]),
        .I3(\out_reg[29]_1 [4]),
        .I4(\q_reg[8]_0 [4]),
        .I5(\out_reg[30]_2 [4]),
        .O(\q_reg[1]_13 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEAAAAAAAA)) 
    \out[6]_i_1__0 
       (.I0(\out[6]_i_2__0_n_0 ),
        .I1(\out[6]_i_3__0_n_0 ),
        .I2(\out[31]_i_5__0_n_0 ),
        .I3(\out_reg[6] ),
        .I4(\out_reg[6]_0 ),
        .I5(\out[31]_i_6_n_0 ),
        .O(aluoutE1[6]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00C00000)) 
    \out[6]_i_2__0 
       (.I0(Q[6]),
        .I1(data1[6]),
        .I2(\q_reg[8]_0 [2]),
        .I3(\q_reg[8]_0 [1]),
        .I4(alucontrolE),
        .I5(\out[0]_i_2_n_0 ),
        .O(\out[6]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hA880A8A8A8808080)) 
    \out[6]_i_3__0 
       (.I0(\q_reg[3]_0 ),
        .I1(\q_reg[8]_0 [1]),
        .I2(\out_reg[30]_1 [5]),
        .I3(\out_reg[29]_1 [5]),
        .I4(\q_reg[8]_0 [4]),
        .I5(\out_reg[30]_2 [5]),
        .O(\out[6]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEAAAAAAAA)) 
    \out[7]_i_1__0 
       (.I0(\out[7]_i_2__0_n_0 ),
        .I1(\out[7]_i_3__0_n_0 ),
        .I2(\out[31]_i_5__0_n_0 ),
        .I3(\out_reg[7] ),
        .I4(\out_reg[7]_0 ),
        .I5(\out[31]_i_6_n_0 ),
        .O(aluoutE1[7]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00C00000)) 
    \out[7]_i_2__0 
       (.I0(Q[7]),
        .I1(data1[7]),
        .I2(\q_reg[8]_0 [2]),
        .I3(\q_reg[8]_0 [1]),
        .I4(alucontrolE),
        .I5(\out[0]_i_2_n_0 ),
        .O(\out[7]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hA880A8A8A8808080)) 
    \out[7]_i_3__0 
       (.I0(\q_reg[3]_0 ),
        .I1(\q_reg[8]_0 [1]),
        .I2(\out_reg[30]_1 [6]),
        .I3(\out_reg[29]_1 [6]),
        .I4(\q_reg[8]_0 [4]),
        .I5(\out_reg[30]_2 [6]),
        .O(\out[7]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEAAAAAAAA)) 
    \out[8]_i_1__0 
       (.I0(\out[8]_i_2__0_n_0 ),
        .I1(\out[8]_i_3__0_n_0 ),
        .I2(\out[31]_i_5__0_n_0 ),
        .I3(\out_reg[8] ),
        .I4(\out_reg[8]_0 ),
        .I5(\out[31]_i_6_n_0 ),
        .O(aluoutE1[8]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00C00000)) 
    \out[8]_i_2__0 
       (.I0(Q[8]),
        .I1(data1[8]),
        .I2(\q_reg[8]_0 [2]),
        .I3(\q_reg[8]_0 [1]),
        .I4(alucontrolE),
        .I5(\out[0]_i_2_n_0 ),
        .O(\out[8]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hA880A8A8A8808080)) 
    \out[8]_i_3__0 
       (.I0(\q_reg[3]_0 ),
        .I1(\q_reg[8]_0 [1]),
        .I2(\out_reg[30]_1 [7]),
        .I3(\out_reg[29]_1 [7]),
        .I4(\q_reg[8]_0 [4]),
        .I5(\out_reg[30]_2 [7]),
        .O(\out[8]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEAAAAAAAA)) 
    \out[9]_i_1__0 
       (.I0(\out[9]_i_2__0_n_0 ),
        .I1(\out[9]_i_3__0_n_0 ),
        .I2(\out[31]_i_5__0_n_0 ),
        .I3(\out_reg[9] ),
        .I4(\out_reg[9]_0 ),
        .I5(\out[31]_i_6_n_0 ),
        .O(aluoutE1[9]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00C00000)) 
    \out[9]_i_2__0 
       (.I0(Q[9]),
        .I1(data1[9]),
        .I2(\q_reg[8]_0 [2]),
        .I3(\q_reg[8]_0 [1]),
        .I4(alucontrolE),
        .I5(\out[0]_i_2_n_0 ),
        .O(\out[9]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hA880A8A8A8808080)) 
    \out[9]_i_3__0 
       (.I0(\q_reg[3]_0 ),
        .I1(\q_reg[8]_0 [1]),
        .I2(\out_reg[30]_1 [8]),
        .I3(\out_reg[29]_1 [8]),
        .I4(\q_reg[8]_0 [4]),
        .I5(\out_reg[30]_2 [8]),
        .O(\out[9]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'h8008)) 
    \q[31]_i_12 
       (.I0(\q_reg[8]_0 [3]),
        .I1(forwardBD30_in),
        .I2(\q[31]_i_7 [0]),
        .I3(D[1]),
        .O(\q_reg[4]_0 ));
  LUT4 #(
    .INIT(16'h8008)) 
    \q[31]_i_12__0 
       (.I0(\q_reg[8]_0 [3]),
        .I1(forwardAD32_in),
        .I2(\q[31]_i_7 [1]),
        .I3(D[1]),
        .O(\q_reg[4]_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[8]_1 [0]),
        .Q(\q_reg[8]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[8]_1 [1]),
        .Q(\q_reg[8]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[8]_1 [2]),
        .Q(\q_reg[8]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[8]_1 [3]),
        .Q(alucontrolE));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[8]_1 [4]),
        .Q(\q_reg[8]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[8]_1 [5]),
        .Q(regdstE));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[8]_1 [6]),
        .Q(\q_reg[8]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[8]_1 [7]),
        .Q(\q_reg[8]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[8]_1 [8]),
        .Q(\q_reg[8]_0 [6]));
endmodule

(* ORIG_REF_NAME = "floprc" *) 
module floprc__parameterized0
   (\q_reg[0]_0 ,
    \q_reg[31]_0 ,
    \q_reg[10]_0 ,
    \q_reg[1]_0 ,
    \q_reg[0]_1 ,
    \q_reg[0]_2 ,
    \q_reg[0]_3 ,
    \q_reg[0]_4 ,
    \q_reg[0]_5 ,
    \q_reg[0]_6 ,
    \q_reg[0]_7 ,
    \q_reg[0]_8 ,
    \q_reg[0]_9 ,
    \q_reg[0]_10 ,
    \q_reg[0]_11 ,
    \q_reg[0]_12 ,
    \q_reg[0]_13 ,
    \q_reg[0]_14 ,
    \q_reg[0]_15 ,
    \q_reg[0]_16 ,
    \q_reg[31]_1 ,
    \q_reg[3]_0 ,
    \q_reg[2]_0 ,
    \q_reg[1]_1 ,
    \q_reg[2]_1 ,
    \q_reg[1]_2 ,
    \q_reg[1]_3 ,
    \q_reg[1]_4 ,
    \q_reg[1]_5 ,
    \q_reg[1]_6 ,
    \q_reg[1]_7 ,
    \q_reg[1]_8 ,
    \q_reg[1]_9 ,
    \q_reg[1]_10 ,
    \q_reg[1]_11 ,
    \q_reg[1]_12 ,
    \q_reg[1]_13 ,
    \q_reg[1]_14 ,
    \q_reg[1]_15 ,
    \q_reg[1]_16 ,
    \q_reg[1]_17 ,
    \q_reg[1]_18 ,
    \q_reg[1]_19 ,
    \q_reg[1]_20 ,
    \q_reg[1]_21 ,
    \q_reg[1]_22 ,
    \q_reg[1]_23 ,
    \q_reg[1]_24 ,
    \q_reg[1]_25 ,
    \q_reg[1]_26 ,
    \q_reg[1]_27 ,
    \q_reg[1]_28 ,
    \q_reg[1]_29 ,
    \q_reg[1]_30 ,
    \q_reg[1]_31 ,
    \q_reg[1]_32 ,
    \q_reg[31]_2 ,
    \q_reg[31]_3 ,
    S,
    \q_reg[7]_0 ,
    \q_reg[11]_0 ,
    \q_reg[15]_0 ,
    \q_reg[19]_0 ,
    \q_reg[23]_0 ,
    \q_reg[27]_0 ,
    aluout2_carry__0,
    aluout0_carry,
    Q,
    srcb3E,
    aluout0_carry__3,
    srcb3E__0,
    \out_reg[31] ,
    \out_reg[27] ,
    \out_reg[27]_0 ,
    \out_reg[28] ,
    \out_reg[24] ,
    \out_reg[24]_0 ,
    \out_reg[24]_1 ,
    \out_reg[25] ,
    \out_reg[25]_0 ,
    \out_reg[26] ,
    \out_reg[21] ,
    \out_reg[21]_0 ,
    \out_reg[22] ,
    \out_reg[22]_0 ,
    \out_reg[23] ,
    \out_reg[18] ,
    \out_reg[19] ,
    \out_reg[20] ,
    \out_reg[16] ,
    \out_reg[16]_0 ,
    \out_reg[16]_1 ,
    \out_reg[17] ,
    \out_reg[5] ,
    \out_reg[5]_0 ,
    \out_reg[5]_1 ,
    \out_reg[0] ,
    \out_reg[0]_0 ,
    \out_reg[0]_1 ,
    data0,
    \out_reg[30] ,
    \out_reg[31]_0 ,
    \out_reg[9] ,
    \out_reg[9]_0 ,
    \out_reg[10] ,
    \out_reg[6] ,
    \out_reg[6]_0 ,
    \out_reg[7] ,
    \out_reg[4] ,
    \out[0]_i_5_0 ,
    \out[0]_i_5_1 ,
    \out[12]_i_4_0 ,
    \out[15]_i_4_0 ,
    \out[16]_i_4_0 ,
    \out[27]_i_4_0 ,
    \out[27]_i_4_1 ,
    \out[28]_i_4_0 ,
    \out[18]_i_4_0 ,
    \out[16]_i_4_1 ,
    \out[21]_i_3__0_0 ,
    \out[21]_i_3__0_1 ,
    \out[25]_i_4_0 ,
    \out[30]_i_5_0 ,
    \out[30]_i_5_1 ,
    \out[19]_i_3__0_0 ,
    \out[19]_i_3__0_1 ,
    \out[18]_i_3__0_0 ,
    \out[18]_i_3__0_1 ,
    \out[18]_i_3__0_2 ,
    \out[18]_i_3__0_3 ,
    \out[24]_i_4_0 ,
    \out[13]_i_4_0 ,
    \out[12]_i_4_1 ,
    aluout0_carry__2,
    aluout0_carry__2_0,
    aluout0_carry__2_1,
    aluout0_carry__2_2,
    D,
    CLK,
    AR);
  output [0:0]\q_reg[0]_0 ;
  output [31:0]\q_reg[31]_0 ;
  output [0:0]\q_reg[10]_0 ;
  output \q_reg[1]_0 ;
  output \q_reg[0]_1 ;
  output \q_reg[0]_2 ;
  output \q_reg[0]_3 ;
  output \q_reg[0]_4 ;
  output \q_reg[0]_5 ;
  output \q_reg[0]_6 ;
  output \q_reg[0]_7 ;
  output \q_reg[0]_8 ;
  output \q_reg[0]_9 ;
  output \q_reg[0]_10 ;
  output \q_reg[0]_11 ;
  output \q_reg[0]_12 ;
  output \q_reg[0]_13 ;
  output \q_reg[0]_14 ;
  output \q_reg[0]_15 ;
  output \q_reg[0]_16 ;
  output \q_reg[31]_1 ;
  output \q_reg[3]_0 ;
  output \q_reg[2]_0 ;
  output \q_reg[1]_1 ;
  output \q_reg[2]_1 ;
  output \q_reg[1]_2 ;
  output \q_reg[1]_3 ;
  output \q_reg[1]_4 ;
  output \q_reg[1]_5 ;
  output \q_reg[1]_6 ;
  output \q_reg[1]_7 ;
  output \q_reg[1]_8 ;
  output \q_reg[1]_9 ;
  output \q_reg[1]_10 ;
  output \q_reg[1]_11 ;
  output \q_reg[1]_12 ;
  output \q_reg[1]_13 ;
  output \q_reg[1]_14 ;
  output \q_reg[1]_15 ;
  output \q_reg[1]_16 ;
  output \q_reg[1]_17 ;
  output \q_reg[1]_18 ;
  output \q_reg[1]_19 ;
  output \q_reg[1]_20 ;
  output \q_reg[1]_21 ;
  output \q_reg[1]_22 ;
  output \q_reg[1]_23 ;
  output \q_reg[1]_24 ;
  output \q_reg[1]_25 ;
  output \q_reg[1]_26 ;
  output \q_reg[1]_27 ;
  output \q_reg[1]_28 ;
  output \q_reg[1]_29 ;
  output \q_reg[1]_30 ;
  output \q_reg[1]_31 ;
  output \q_reg[1]_32 ;
  output [3:0]\q_reg[31]_2 ;
  output [0:0]\q_reg[31]_3 ;
  output [3:0]S;
  output [3:0]\q_reg[7]_0 ;
  output [3:0]\q_reg[11]_0 ;
  output [3:0]\q_reg[15]_0 ;
  output [3:0]\q_reg[19]_0 ;
  output [3:0]\q_reg[23]_0 ;
  output [3:0]\q_reg[27]_0 ;
  input aluout2_carry__0;
  input [2:0]aluout0_carry;
  input [31:0]Q;
  input [25:0]srcb3E;
  input [11:0]aluout0_carry__3;
  input [0:0]srcb3E__0;
  input \out_reg[31] ;
  input \out_reg[27] ;
  input \out_reg[27]_0 ;
  input \out_reg[28] ;
  input \out_reg[24] ;
  input \out_reg[24]_0 ;
  input \out_reg[24]_1 ;
  input \out_reg[25] ;
  input \out_reg[25]_0 ;
  input \out_reg[26] ;
  input \out_reg[21] ;
  input \out_reg[21]_0 ;
  input \out_reg[22] ;
  input \out_reg[22]_0 ;
  input \out_reg[23] ;
  input \out_reg[18] ;
  input \out_reg[19] ;
  input \out_reg[20] ;
  input \out_reg[16] ;
  input \out_reg[16]_0 ;
  input \out_reg[16]_1 ;
  input \out_reg[17] ;
  input \out_reg[5] ;
  input \out_reg[5]_0 ;
  input \out_reg[5]_1 ;
  input \out_reg[0] ;
  input \out_reg[0]_0 ;
  input \out_reg[0]_1 ;
  input [31:0]data0;
  input \out_reg[30] ;
  input \out_reg[31]_0 ;
  input \out_reg[9] ;
  input \out_reg[9]_0 ;
  input \out_reg[10] ;
  input \out_reg[6] ;
  input \out_reg[6]_0 ;
  input \out_reg[7] ;
  input \out_reg[4] ;
  input \out[0]_i_5_0 ;
  input \out[0]_i_5_1 ;
  input \out[12]_i_4_0 ;
  input \out[15]_i_4_0 ;
  input \out[16]_i_4_0 ;
  input \out[27]_i_4_0 ;
  input \out[27]_i_4_1 ;
  input \out[28]_i_4_0 ;
  input \out[18]_i_4_0 ;
  input \out[16]_i_4_1 ;
  input \out[21]_i_3__0_0 ;
  input \out[21]_i_3__0_1 ;
  input \out[25]_i_4_0 ;
  input \out[30]_i_5_0 ;
  input \out[30]_i_5_1 ;
  input \out[19]_i_3__0_0 ;
  input \out[19]_i_3__0_1 ;
  input \out[18]_i_3__0_0 ;
  input \out[18]_i_3__0_1 ;
  input \out[18]_i_3__0_2 ;
  input \out[18]_i_3__0_3 ;
  input \out[24]_i_4_0 ;
  input \out[13]_i_4_0 ;
  input \out[12]_i_4_1 ;
  input aluout0_carry__2;
  input aluout0_carry__2_0;
  input aluout0_carry__2_1;
  input aluout0_carry__2_2;
  input [31:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [31:0]D;
  wire [31:0]Q;
  wire [3:0]S;
  wire [2:0]aluout0_carry;
  wire aluout0_carry__2;
  wire aluout0_carry__2_0;
  wire aluout0_carry__2_1;
  wire aluout0_carry__2_2;
  wire [11:0]aluout0_carry__3;
  wire aluout2_carry__0;
  wire [31:0]data0;
  wire \out[0]_i_10_n_0 ;
  wire \out[0]_i_5_0 ;
  wire \out[0]_i_5_1 ;
  wire \out[0]_i_7_n_0 ;
  wire \out[0]_i_8_n_0 ;
  wire \out[12]_i_4_0 ;
  wire \out[12]_i_4_1 ;
  wire \out[12]_i_6_n_0 ;
  wire \out[13]_i_4_0 ;
  wire \out[13]_i_6_n_0 ;
  wire \out[14]_i_6_n_0 ;
  wire \out[14]_i_8_n_0 ;
  wire \out[15]_i_4_0 ;
  wire \out[15]_i_6_n_0 ;
  wire \out[16]_i_4_0 ;
  wire \out[16]_i_4_1 ;
  wire \out[16]_i_7_n_0 ;
  wire \out[17]_i_7_n_0 ;
  wire \out[18]_i_10_n_0 ;
  wire \out[18]_i_3__0_0 ;
  wire \out[18]_i_3__0_1 ;
  wire \out[18]_i_3__0_2 ;
  wire \out[18]_i_3__0_3 ;
  wire \out[18]_i_4_0 ;
  wire \out[18]_i_5_n_0 ;
  wire \out[18]_i_7_n_0 ;
  wire \out[19]_i_10_n_0 ;
  wire \out[19]_i_3__0_0 ;
  wire \out[19]_i_3__0_1 ;
  wire \out[19]_i_5_n_0 ;
  wire \out[19]_i_7_n_0 ;
  wire \out[1]_i_6_n_0 ;
  wire \out[20]_i_10_n_0 ;
  wire \out[20]_i_5_n_0 ;
  wire \out[20]_i_7_n_0 ;
  wire \out[21]_i_10_n_0 ;
  wire \out[21]_i_3__0_0 ;
  wire \out[21]_i_3__0_1 ;
  wire \out[21]_i_5_n_0 ;
  wire \out[21]_i_7_n_0 ;
  wire \out[22]_i_10_n_0 ;
  wire \out[22]_i_7_n_0 ;
  wire \out[23]_i_7_n_0 ;
  wire \out[24]_i_4_0 ;
  wire \out[24]_i_7_n_0 ;
  wire \out[25]_i_4_0 ;
  wire \out[25]_i_7_n_0 ;
  wire \out[26]_i_7_n_0 ;
  wire \out[26]_i_9_n_0 ;
  wire \out[27]_i_4_0 ;
  wire \out[27]_i_4_1 ;
  wire \out[27]_i_7_n_0 ;
  wire \out[27]_i_9_n_0 ;
  wire \out[28]_i_4_0 ;
  wire \out[28]_i_5_n_0 ;
  wire \out[28]_i_7_n_0 ;
  wire \out[28]_i_9_n_0 ;
  wire \out[29]_i_10_n_0 ;
  wire \out[29]_i_6_n_0 ;
  wire \out[29]_i_7_n_0 ;
  wire \out[29]_i_8_n_0 ;
  wire \out[2]_i_6_n_0 ;
  wire \out[30]_i_10_n_0 ;
  wire \out[30]_i_11_n_0 ;
  wire \out[30]_i_5_0 ;
  wire \out[30]_i_5_1 ;
  wire \out[30]_i_7_n_0 ;
  wire \out[31]_i_11_n_0 ;
  wire \out[31]_i_14_n_0 ;
  wire \out[31]_i_15_n_0 ;
  wire \out[31]_i_16_n_0 ;
  wire \out[31]_i_17_n_0 ;
  wire \out[31]_i_26_n_0 ;
  wire \out[31]_i_27_n_0 ;
  wire \out[31]_i_28_n_0 ;
  wire \out[31]_i_29_n_0 ;
  wire \out[31]_i_9_n_0 ;
  wire \out[3]_i_6_n_0 ;
  wire \out[4]_i_6_n_0 ;
  wire \out_reg[0] ;
  wire \out_reg[0]_0 ;
  wire \out_reg[0]_1 ;
  wire \out_reg[10] ;
  wire \out_reg[16] ;
  wire \out_reg[16]_0 ;
  wire \out_reg[16]_1 ;
  wire \out_reg[17] ;
  wire \out_reg[18] ;
  wire \out_reg[19] ;
  wire \out_reg[20] ;
  wire \out_reg[21] ;
  wire \out_reg[21]_0 ;
  wire \out_reg[22] ;
  wire \out_reg[22]_0 ;
  wire \out_reg[23] ;
  wire \out_reg[24] ;
  wire \out_reg[24]_0 ;
  wire \out_reg[24]_1 ;
  wire \out_reg[25] ;
  wire \out_reg[25]_0 ;
  wire \out_reg[26] ;
  wire \out_reg[27] ;
  wire \out_reg[27]_0 ;
  wire \out_reg[28] ;
  wire \out_reg[30] ;
  wire \out_reg[31] ;
  wire \out_reg[31]_0 ;
  wire \out_reg[4] ;
  wire \out_reg[5] ;
  wire \out_reg[5]_0 ;
  wire \out_reg[5]_1 ;
  wire \out_reg[6] ;
  wire \out_reg[6]_0 ;
  wire \out_reg[7] ;
  wire \out_reg[9] ;
  wire \out_reg[9]_0 ;
  wire [0:0]\q_reg[0]_0 ;
  wire \q_reg[0]_1 ;
  wire \q_reg[0]_10 ;
  wire \q_reg[0]_11 ;
  wire \q_reg[0]_12 ;
  wire \q_reg[0]_13 ;
  wire \q_reg[0]_14 ;
  wire \q_reg[0]_15 ;
  wire \q_reg[0]_16 ;
  wire \q_reg[0]_2 ;
  wire \q_reg[0]_3 ;
  wire \q_reg[0]_4 ;
  wire \q_reg[0]_5 ;
  wire \q_reg[0]_6 ;
  wire \q_reg[0]_7 ;
  wire \q_reg[0]_8 ;
  wire \q_reg[0]_9 ;
  wire [0:0]\q_reg[10]_0 ;
  wire [3:0]\q_reg[11]_0 ;
  wire [3:0]\q_reg[15]_0 ;
  wire [3:0]\q_reg[19]_0 ;
  wire \q_reg[1]_0 ;
  wire \q_reg[1]_1 ;
  wire \q_reg[1]_10 ;
  wire \q_reg[1]_11 ;
  wire \q_reg[1]_12 ;
  wire \q_reg[1]_13 ;
  wire \q_reg[1]_14 ;
  wire \q_reg[1]_15 ;
  wire \q_reg[1]_16 ;
  wire \q_reg[1]_17 ;
  wire \q_reg[1]_18 ;
  wire \q_reg[1]_19 ;
  wire \q_reg[1]_2 ;
  wire \q_reg[1]_20 ;
  wire \q_reg[1]_21 ;
  wire \q_reg[1]_22 ;
  wire \q_reg[1]_23 ;
  wire \q_reg[1]_24 ;
  wire \q_reg[1]_25 ;
  wire \q_reg[1]_26 ;
  wire \q_reg[1]_27 ;
  wire \q_reg[1]_28 ;
  wire \q_reg[1]_29 ;
  wire \q_reg[1]_3 ;
  wire \q_reg[1]_30 ;
  wire \q_reg[1]_31 ;
  wire \q_reg[1]_32 ;
  wire \q_reg[1]_4 ;
  wire \q_reg[1]_5 ;
  wire \q_reg[1]_6 ;
  wire \q_reg[1]_7 ;
  wire \q_reg[1]_8 ;
  wire \q_reg[1]_9 ;
  wire [3:0]\q_reg[23]_0 ;
  wire [3:0]\q_reg[27]_0 ;
  wire \q_reg[2]_0 ;
  wire \q_reg[2]_1 ;
  wire [31:0]\q_reg[31]_0 ;
  wire \q_reg[31]_1 ;
  wire [3:0]\q_reg[31]_2 ;
  wire [0:0]\q_reg[31]_3 ;
  wire \q_reg[3]_0 ;
  wire [3:0]\q_reg[7]_0 ;
  wire [25:0]srcb3E;
  wire [0:0]srcb3E__0;

  LUT4 #(
    .INIT(16'h56A6)) 
    aluout0_carry__0_i_1
       (.I0(\q_reg[31]_0 [7]),
        .I1(Q[7]),
        .I2(aluout0_carry[2]),
        .I3(aluout0_carry__3[7]),
        .O(\q_reg[7]_0 [3]));
  LUT4 #(
    .INIT(16'h56A6)) 
    aluout0_carry__0_i_2
       (.I0(\q_reg[31]_0 [6]),
        .I1(Q[6]),
        .I2(aluout0_carry[2]),
        .I3(aluout0_carry__3[6]),
        .O(\q_reg[7]_0 [2]));
  LUT4 #(
    .INIT(16'h56A6)) 
    aluout0_carry__0_i_3
       (.I0(\q_reg[31]_0 [5]),
        .I1(Q[5]),
        .I2(aluout0_carry[2]),
        .I3(aluout0_carry__3[5]),
        .O(\q_reg[7]_0 [1]));
  LUT4 #(
    .INIT(16'h56A6)) 
    aluout0_carry__0_i_4
       (.I0(\q_reg[31]_0 [4]),
        .I1(Q[4]),
        .I2(aluout0_carry[2]),
        .I3(aluout0_carry__3[4]),
        .O(\q_reg[7]_0 [0]));
  LUT4 #(
    .INIT(16'h56A6)) 
    aluout0_carry__1_i_1
       (.I0(\q_reg[31]_0 [11]),
        .I1(Q[11]),
        .I2(aluout0_carry[2]),
        .I3(aluout2_carry__0),
        .O(\q_reg[11]_0 [3]));
  LUT4 #(
    .INIT(16'h56A6)) 
    aluout0_carry__1_i_2
       (.I0(\q_reg[31]_0 [10]),
        .I1(Q[10]),
        .I2(aluout0_carry[2]),
        .I3(aluout0_carry__3[10]),
        .O(\q_reg[11]_0 [2]));
  LUT4 #(
    .INIT(16'h56A6)) 
    aluout0_carry__1_i_3
       (.I0(\q_reg[31]_0 [9]),
        .I1(Q[9]),
        .I2(aluout0_carry[2]),
        .I3(aluout0_carry__3[9]),
        .O(\q_reg[11]_0 [1]));
  LUT4 #(
    .INIT(16'h56A6)) 
    aluout0_carry__1_i_4
       (.I0(\q_reg[31]_0 [8]),
        .I1(Q[8]),
        .I2(aluout0_carry[2]),
        .I3(aluout0_carry__3[8]),
        .O(\q_reg[11]_0 [0]));
  LUT4 #(
    .INIT(16'h56A6)) 
    aluout0_carry__2_i_1
       (.I0(\q_reg[31]_0 [15]),
        .I1(Q[15]),
        .I2(aluout0_carry[2]),
        .I3(aluout0_carry__2_2),
        .O(\q_reg[15]_0 [3]));
  LUT4 #(
    .INIT(16'h56A6)) 
    aluout0_carry__2_i_2
       (.I0(\q_reg[31]_0 [14]),
        .I1(Q[14]),
        .I2(aluout0_carry[2]),
        .I3(aluout0_carry__2_1),
        .O(\q_reg[15]_0 [2]));
  LUT4 #(
    .INIT(16'h56A6)) 
    aluout0_carry__2_i_3
       (.I0(\q_reg[31]_0 [13]),
        .I1(Q[13]),
        .I2(aluout0_carry[2]),
        .I3(aluout0_carry__2_0),
        .O(\q_reg[15]_0 [1]));
  LUT4 #(
    .INIT(16'h56A6)) 
    aluout0_carry__2_i_4
       (.I0(\q_reg[31]_0 [12]),
        .I1(Q[12]),
        .I2(aluout0_carry[2]),
        .I3(aluout0_carry__2),
        .O(\q_reg[15]_0 [0]));
  LUT4 #(
    .INIT(16'h656A)) 
    aluout0_carry__3_i_1
       (.I0(\q_reg[31]_0 [19]),
        .I1(aluout0_carry__3[11]),
        .I2(aluout0_carry[2]),
        .I3(Q[19]),
        .O(\q_reg[19]_0 [3]));
  LUT4 #(
    .INIT(16'h656A)) 
    aluout0_carry__3_i_2
       (.I0(\q_reg[31]_0 [18]),
        .I1(aluout0_carry__3[11]),
        .I2(aluout0_carry[2]),
        .I3(Q[18]),
        .O(\q_reg[19]_0 [2]));
  LUT4 #(
    .INIT(16'h656A)) 
    aluout0_carry__3_i_3
       (.I0(\q_reg[31]_0 [17]),
        .I1(aluout0_carry__3[11]),
        .I2(aluout0_carry[2]),
        .I3(Q[17]),
        .O(\q_reg[19]_0 [1]));
  LUT4 #(
    .INIT(16'h656A)) 
    aluout0_carry__3_i_4
       (.I0(\q_reg[31]_0 [16]),
        .I1(aluout0_carry__3[11]),
        .I2(aluout0_carry[2]),
        .I3(Q[16]),
        .O(\q_reg[19]_0 [0]));
  LUT4 #(
    .INIT(16'h656A)) 
    aluout0_carry__4_i_1
       (.I0(\q_reg[31]_0 [23]),
        .I1(aluout0_carry__3[11]),
        .I2(aluout0_carry[2]),
        .I3(Q[23]),
        .O(\q_reg[23]_0 [3]));
  LUT4 #(
    .INIT(16'h656A)) 
    aluout0_carry__4_i_2
       (.I0(\q_reg[31]_0 [22]),
        .I1(aluout0_carry__3[11]),
        .I2(aluout0_carry[2]),
        .I3(Q[22]),
        .O(\q_reg[23]_0 [2]));
  LUT4 #(
    .INIT(16'h656A)) 
    aluout0_carry__4_i_3
       (.I0(\q_reg[31]_0 [21]),
        .I1(aluout0_carry__3[11]),
        .I2(aluout0_carry[2]),
        .I3(Q[21]),
        .O(\q_reg[23]_0 [1]));
  LUT4 #(
    .INIT(16'h656A)) 
    aluout0_carry__4_i_4
       (.I0(\q_reg[31]_0 [20]),
        .I1(aluout0_carry__3[11]),
        .I2(aluout0_carry[2]),
        .I3(Q[20]),
        .O(\q_reg[23]_0 [0]));
  LUT4 #(
    .INIT(16'h656A)) 
    aluout0_carry__5_i_1
       (.I0(\q_reg[31]_0 [27]),
        .I1(aluout0_carry__3[11]),
        .I2(aluout0_carry[2]),
        .I3(Q[27]),
        .O(\q_reg[27]_0 [3]));
  LUT4 #(
    .INIT(16'h656A)) 
    aluout0_carry__5_i_2
       (.I0(\q_reg[31]_0 [26]),
        .I1(aluout0_carry__3[11]),
        .I2(aluout0_carry[2]),
        .I3(Q[26]),
        .O(\q_reg[27]_0 [2]));
  LUT4 #(
    .INIT(16'h656A)) 
    aluout0_carry__5_i_3
       (.I0(\q_reg[31]_0 [25]),
        .I1(aluout0_carry__3[11]),
        .I2(aluout0_carry[2]),
        .I3(Q[25]),
        .O(\q_reg[27]_0 [1]));
  LUT4 #(
    .INIT(16'h656A)) 
    aluout0_carry__5_i_4
       (.I0(\q_reg[31]_0 [24]),
        .I1(aluout0_carry__3[11]),
        .I2(aluout0_carry[2]),
        .I3(Q[24]),
        .O(\q_reg[27]_0 [0]));
  LUT4 #(
    .INIT(16'h656A)) 
    aluout0_carry__6_i_1
       (.I0(\q_reg[31]_0 [31]),
        .I1(aluout0_carry__3[11]),
        .I2(aluout0_carry[2]),
        .I3(Q[31]),
        .O(\q_reg[31]_2 [3]));
  LUT4 #(
    .INIT(16'h656A)) 
    aluout0_carry__6_i_2
       (.I0(\q_reg[31]_0 [30]),
        .I1(aluout0_carry__3[11]),
        .I2(aluout0_carry[2]),
        .I3(Q[30]),
        .O(\q_reg[31]_2 [2]));
  LUT4 #(
    .INIT(16'h656A)) 
    aluout0_carry__6_i_3
       (.I0(\q_reg[31]_0 [29]),
        .I1(aluout0_carry__3[11]),
        .I2(aluout0_carry[2]),
        .I3(Q[29]),
        .O(\q_reg[31]_2 [1]));
  LUT4 #(
    .INIT(16'h656A)) 
    aluout0_carry__6_i_4
       (.I0(\q_reg[31]_0 [28]),
        .I1(aluout0_carry__3[11]),
        .I2(aluout0_carry[2]),
        .I3(Q[28]),
        .O(\q_reg[31]_2 [0]));
  LUT4 #(
    .INIT(16'h56A6)) 
    aluout0_carry_i_1
       (.I0(\q_reg[31]_0 [3]),
        .I1(Q[3]),
        .I2(aluout0_carry[2]),
        .I3(aluout0_carry__3[3]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h56A6)) 
    aluout0_carry_i_2
       (.I0(\q_reg[31]_0 [2]),
        .I1(Q[2]),
        .I2(aluout0_carry[2]),
        .I3(aluout0_carry__3[2]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h56A6)) 
    aluout0_carry_i_3
       (.I0(\q_reg[31]_0 [1]),
        .I1(Q[1]),
        .I2(aluout0_carry[2]),
        .I3(aluout0_carry__3[1]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h56A6)) 
    aluout0_carry_i_4
       (.I0(\q_reg[31]_0 [0]),
        .I1(Q[0]),
        .I2(aluout0_carry[2]),
        .I3(aluout0_carry__3[0]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h00B8FFFF000000B8)) 
    aluout2_carry__0_i_3
       (.I0(aluout0_carry__3[10]),
        .I1(aluout0_carry[2]),
        .I2(Q[10]),
        .I3(\q_reg[31]_0 [10]),
        .I4(\q_reg[31]_0 [11]),
        .I5(srcb3E[9]),
        .O(\q_reg[10]_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    aluout2_carry__0_i_7
       (.I0(aluout2_carry__0),
        .I1(aluout0_carry[2]),
        .I2(Q[11]),
        .I3(\q_reg[31]_0 [11]),
        .I4(srcb3E[8]),
        .I5(\q_reg[31]_0 [10]),
        .O(\q_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hA959)) 
    i__carry__6_i_1
       (.I0(\q_reg[31]_0 [31]),
        .I1(Q[31]),
        .I2(aluout0_carry[2]),
        .I3(aluout0_carry__3[11]),
        .O(\q_reg[31]_3 ));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \out[0]_i_10 
       (.I0(\out[0]_i_5_0 ),
        .I1(\out[0]_i_5_1 ),
        .I2(\q_reg[31]_0 [1]),
        .I3(\q_reg[31]_0 [2]),
        .O(\out[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    \out[0]_i_4 
       (.I0(aluout0_carry[1]),
        .I1(\out[30]_i_7_n_0 ),
        .I2(\out[0]_i_7_n_0 ),
        .I3(\out[31]_i_11_n_0 ),
        .I4(\out[0]_i_8_n_0 ),
        .I5(\out_reg[0]_1 ),
        .O(\q_reg[2]_1 ));
  LUT6 #(
    .INIT(64'hFFF8F8F888888888)) 
    \out[0]_i_5 
       (.I0(\out_reg[0] ),
        .I1(\q_reg[0]_3 ),
        .I2(\out[0]_i_10_n_0 ),
        .I3(\q_reg[31]_0 [1]),
        .I4(\out_reg[0]_0 ),
        .I5(\q_reg[0]_1 ),
        .O(\q_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h11100010)) 
    \out[0]_i_7 
       (.I0(\q_reg[31]_0 [4]),
        .I1(\q_reg[31]_0 [3]),
        .I2(Q[0]),
        .I3(aluout0_carry[2]),
        .I4(aluout0_carry__3[0]),
        .O(\out[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h3330B888)) 
    \out[0]_i_8 
       (.I0(data0[0]),
        .I1(aluout0_carry[1]),
        .I2(srcb3E[0]),
        .I3(\q_reg[31]_0 [0]),
        .I4(aluout0_carry[0]),
        .O(\out[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \out[10]_i_4 
       (.I0(data0[10]),
        .I1(aluout0_carry[0]),
        .I2(\out[31]_i_11_n_0 ),
        .I3(\out_reg[10] ),
        .I4(\out_reg[9] ),
        .I5(\out[31]_i_14_n_0 ),
        .O(\q_reg[1]_23 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \out[11]_i_4 
       (.I0(data0[11]),
        .I1(aluout0_carry[0]),
        .I2(\out[31]_i_11_n_0 ),
        .I3(\out[12]_i_6_n_0 ),
        .I4(\out_reg[10] ),
        .I5(\out[31]_i_14_n_0 ),
        .O(\q_reg[1]_24 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \out[12]_i_4 
       (.I0(data0[12]),
        .I1(aluout0_carry[0]),
        .I2(\out[31]_i_11_n_0 ),
        .I3(\out[13]_i_6_n_0 ),
        .I4(\out[12]_i_6_n_0 ),
        .I5(\out[31]_i_14_n_0 ),
        .O(\q_reg[1]_19 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out[12]_i_6 
       (.I0(\out[12]_i_4_1 ),
        .I1(\q_reg[31]_0 [1]),
        .I2(\out[14]_i_8_n_0 ),
        .O(\out[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \out[13]_i_4 
       (.I0(data0[13]),
        .I1(aluout0_carry[0]),
        .I2(\out[31]_i_11_n_0 ),
        .I3(\out[14]_i_6_n_0 ),
        .I4(\out[13]_i_6_n_0 ),
        .I5(\out[31]_i_14_n_0 ),
        .O(\q_reg[1]_20 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \out[13]_i_6 
       (.I0(\out[12]_i_4_0 ),
        .I1(\q_reg[31]_0 [1]),
        .I2(\out[15]_i_4_0 ),
        .I3(\q_reg[31]_0 [2]),
        .I4(\out[19]_i_10_n_0 ),
        .O(\out[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \out[14]_i_4 
       (.I0(data0[14]),
        .I1(aluout0_carry[0]),
        .I2(\out[31]_i_11_n_0 ),
        .I3(\out[15]_i_6_n_0 ),
        .I4(\out[14]_i_6_n_0 ),
        .I5(\out[31]_i_14_n_0 ),
        .O(\q_reg[1]_21 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \out[14]_i_6 
       (.I0(\out[14]_i_8_n_0 ),
        .I1(\q_reg[31]_0 [1]),
        .I2(\out[13]_i_4_0 ),
        .I3(\q_reg[31]_0 [2]),
        .I4(\out[20]_i_10_n_0 ),
        .O(\out[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    \out[14]_i_8 
       (.I0(srcb3E[7]),
        .I1(\q_reg[31]_0 [2]),
        .I2(srcb3E[3]),
        .I3(srcb3E[9]),
        .I4(\q_reg[31]_0 [3]),
        .I5(\q_reg[31]_0 [4]),
        .O(\out[14]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \out[15]_i_4 
       (.I0(data0[15]),
        .I1(aluout0_carry[0]),
        .I2(\out[31]_i_11_n_0 ),
        .I3(\out[16]_i_7_n_0 ),
        .I4(\out[15]_i_6_n_0 ),
        .I5(\out[31]_i_14_n_0 ),
        .O(\q_reg[1]_17 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[15]_i_6 
       (.I0(\out[15]_i_4_0 ),
        .I1(\out[19]_i_10_n_0 ),
        .I2(\q_reg[31]_0 [1]),
        .I3(\out[16]_i_4_0 ),
        .I4(\q_reg[31]_0 [2]),
        .I5(\out[21]_i_10_n_0 ),
        .O(\out[15]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \out[16]_i_3__0 
       (.I0(\q_reg[0]_1 ),
        .I1(\out_reg[16] ),
        .I2(\q_reg[0]_3 ),
        .I3(\out_reg[16]_0 ),
        .I4(\out_reg[16]_1 ),
        .O(\q_reg[0]_14 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \out[16]_i_4 
       (.I0(data0[16]),
        .I1(aluout0_carry[0]),
        .I2(\out[31]_i_14_n_0 ),
        .I3(\out[16]_i_7_n_0 ),
        .I4(\out[17]_i_7_n_0 ),
        .I5(\out[31]_i_11_n_0 ),
        .O(\q_reg[1]_16 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[16]_i_7 
       (.I0(\out[13]_i_4_0 ),
        .I1(\out[20]_i_10_n_0 ),
        .I2(\q_reg[31]_0 [1]),
        .I3(\out[18]_i_10_n_0 ),
        .I4(\q_reg[31]_0 [2]),
        .I5(\out[22]_i_10_n_0 ),
        .O(\out[16]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \out[17]_i_3__0 
       (.I0(\q_reg[0]_1 ),
        .I1(\out_reg[16]_0 ),
        .I2(\q_reg[0]_3 ),
        .I3(\out[18]_i_5_n_0 ),
        .I4(\out_reg[17] ),
        .O(\q_reg[0]_15 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \out[17]_i_4 
       (.I0(data0[17]),
        .I1(aluout0_carry[0]),
        .I2(\out[31]_i_11_n_0 ),
        .I3(\out[18]_i_7_n_0 ),
        .I4(\out[17]_i_7_n_0 ),
        .I5(\out[31]_i_14_n_0 ),
        .O(\q_reg[1]_18 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[17]_i_7 
       (.I0(\out[16]_i_4_0 ),
        .I1(\out[21]_i_10_n_0 ),
        .I2(\q_reg[31]_0 [1]),
        .I3(\out[19]_i_10_n_0 ),
        .I4(\q_reg[31]_0 [2]),
        .I5(\out[16]_i_4_1 ),
        .O(\out[17]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B8B8FF00)) 
    \out[18]_i_10 
       (.I0(aluout0_carry__3[3]),
        .I1(aluout0_carry[2]),
        .I2(Q[3]),
        .I3(srcb3E[9]),
        .I4(\q_reg[31]_0 [3]),
        .I5(\q_reg[31]_0 [4]),
        .O(\out[18]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \out[18]_i_3__0 
       (.I0(\q_reg[0]_1 ),
        .I1(\out[18]_i_5_n_0 ),
        .I2(\q_reg[0]_3 ),
        .I3(\out[19]_i_5_n_0 ),
        .I4(\out_reg[18] ),
        .O(\q_reg[0]_11 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \out[18]_i_4 
       (.I0(data0[18]),
        .I1(aluout0_carry[0]),
        .I2(\out[31]_i_11_n_0 ),
        .I3(\out[19]_i_7_n_0 ),
        .I4(\out[18]_i_7_n_0 ),
        .I5(\out[31]_i_14_n_0 ),
        .O(\q_reg[1]_13 ));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \out[18]_i_5 
       (.I0(\q_reg[3]_0 ),
        .I1(srcb3E[19]),
        .I2(\q_reg[31]_0 [2]),
        .I3(\out[18]_i_3__0_0 ),
        .I4(\q_reg[31]_0 [1]),
        .I5(\out[18]_i_3__0_1 ),
        .O(\out[18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[18]_i_7 
       (.I0(\out[18]_i_10_n_0 ),
        .I1(\out[22]_i_10_n_0 ),
        .I2(\q_reg[31]_0 [1]),
        .I3(\out[20]_i_10_n_0 ),
        .I4(\q_reg[31]_0 [2]),
        .I5(\out[24]_i_4_0 ),
        .O(\out[18]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B8B8FF00)) 
    \out[19]_i_10 
       (.I0(aluout0_carry__3[4]),
        .I1(aluout0_carry[2]),
        .I2(Q[4]),
        .I3(srcb3E[10]),
        .I4(\q_reg[31]_0 [3]),
        .I5(\q_reg[31]_0 [4]),
        .O(\out[19]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \out[19]_i_3__0 
       (.I0(\q_reg[0]_1 ),
        .I1(\out[19]_i_5_n_0 ),
        .I2(\q_reg[0]_3 ),
        .I3(\out[20]_i_5_n_0 ),
        .I4(\out_reg[19] ),
        .O(\q_reg[0]_12 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \out[19]_i_4 
       (.I0(data0[19]),
        .I1(aluout0_carry[0]),
        .I2(\out[31]_i_11_n_0 ),
        .I3(\out[20]_i_7_n_0 ),
        .I4(\out[19]_i_7_n_0 ),
        .I5(\out[31]_i_14_n_0 ),
        .O(\q_reg[1]_14 ));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \out[19]_i_5 
       (.I0(\q_reg[3]_0 ),
        .I1(srcb3E[20]),
        .I2(\q_reg[31]_0 [2]),
        .I3(\out[18]_i_3__0_2 ),
        .I4(\q_reg[31]_0 [1]),
        .I5(\out[18]_i_3__0_3 ),
        .O(\out[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[19]_i_7 
       (.I0(\out[19]_i_10_n_0 ),
        .I1(\out[16]_i_4_1 ),
        .I2(\q_reg[31]_0 [1]),
        .I3(\out[21]_i_10_n_0 ),
        .I4(\q_reg[31]_0 [2]),
        .I5(\out[18]_i_4_0 ),
        .O(\out[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \out[1]_i_4 
       (.I0(data0[1]),
        .I1(aluout0_carry[0]),
        .I2(\out[31]_i_11_n_0 ),
        .I3(\out[2]_i_6_n_0 ),
        .I4(\out[1]_i_6_n_0 ),
        .I5(\out[31]_i_14_n_0 ),
        .O(\q_reg[1]_32 ));
  LUT6 #(
    .INIT(64'h1011100000000000)) 
    \out[1]_i_6 
       (.I0(\q_reg[31]_0 [2]),
        .I1(\q_reg[31]_0 [1]),
        .I2(aluout0_carry__3[0]),
        .I3(aluout0_carry[2]),
        .I4(Q[0]),
        .I5(\q_reg[3]_0 ),
        .O(\out[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B8B8FF00)) 
    \out[20]_i_10 
       (.I0(aluout0_carry__3[5]),
        .I1(aluout0_carry[2]),
        .I2(Q[5]),
        .I3(srcb3E[11]),
        .I4(\q_reg[31]_0 [3]),
        .I5(\q_reg[31]_0 [4]),
        .O(\out[20]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \out[20]_i_3__0 
       (.I0(\q_reg[0]_1 ),
        .I1(\out[20]_i_5_n_0 ),
        .I2(\q_reg[0]_3 ),
        .I3(\out[21]_i_5_n_0 ),
        .I4(\out_reg[20] ),
        .O(\q_reg[0]_13 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \out[20]_i_4 
       (.I0(data0[20]),
        .I1(aluout0_carry[0]),
        .I2(\out[31]_i_11_n_0 ),
        .I3(\out[21]_i_7_n_0 ),
        .I4(\out[20]_i_7_n_0 ),
        .I5(\out[31]_i_14_n_0 ),
        .O(\q_reg[1]_15 ));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \out[20]_i_5 
       (.I0(\q_reg[3]_0 ),
        .I1(srcb3E[21]),
        .I2(\q_reg[31]_0 [2]),
        .I3(\out[19]_i_3__0_0 ),
        .I4(\q_reg[31]_0 [1]),
        .I5(\out[19]_i_3__0_1 ),
        .O(\out[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[20]_i_7 
       (.I0(\out[20]_i_10_n_0 ),
        .I1(\out[24]_i_4_0 ),
        .I2(\q_reg[31]_0 [1]),
        .I3(\out[22]_i_10_n_0 ),
        .I4(\q_reg[31]_0 [2]),
        .I5(\out[26]_i_9_n_0 ),
        .O(\out[20]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B8B8FF00)) 
    \out[21]_i_10 
       (.I0(aluout0_carry__3[6]),
        .I1(aluout0_carry[2]),
        .I2(Q[6]),
        .I3(srcb3E[12]),
        .I4(\q_reg[31]_0 [3]),
        .I5(\q_reg[31]_0 [4]),
        .O(\out[21]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \out[21]_i_3__0 
       (.I0(\q_reg[0]_1 ),
        .I1(\out[21]_i_5_n_0 ),
        .I2(\q_reg[0]_3 ),
        .I3(\out_reg[21] ),
        .I4(\out_reg[21]_0 ),
        .O(\q_reg[0]_8 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \out[21]_i_4 
       (.I0(data0[21]),
        .I1(aluout0_carry[0]),
        .I2(\out[31]_i_11_n_0 ),
        .I3(\out[22]_i_7_n_0 ),
        .I4(\out[21]_i_7_n_0 ),
        .I5(\out[31]_i_14_n_0 ),
        .O(\q_reg[1]_10 ));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \out[21]_i_5 
       (.I0(\q_reg[3]_0 ),
        .I1(srcb3E[22]),
        .I2(\q_reg[31]_0 [2]),
        .I3(\out[21]_i_3__0_0 ),
        .I4(\q_reg[31]_0 [1]),
        .I5(\out[21]_i_3__0_1 ),
        .O(\out[21]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[21]_i_7 
       (.I0(\out[21]_i_10_n_0 ),
        .I1(\out[18]_i_4_0 ),
        .I2(\q_reg[31]_0 [1]),
        .I3(\out[16]_i_4_1 ),
        .I4(\q_reg[31]_0 [2]),
        .I5(\out[27]_i_9_n_0 ),
        .O(\out[21]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B8B8FF00)) 
    \out[22]_i_10 
       (.I0(aluout0_carry__3[7]),
        .I1(aluout0_carry[2]),
        .I2(Q[7]),
        .I3(srcb3E[13]),
        .I4(\q_reg[31]_0 [3]),
        .I5(\q_reg[31]_0 [4]),
        .O(\out[22]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \out[22]_i_3__0 
       (.I0(\q_reg[0]_1 ),
        .I1(\out_reg[21] ),
        .I2(\q_reg[0]_3 ),
        .I3(\out_reg[22] ),
        .I4(\out_reg[22]_0 ),
        .O(\q_reg[0]_9 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \out[22]_i_4 
       (.I0(data0[22]),
        .I1(aluout0_carry[0]),
        .I2(\out[31]_i_11_n_0 ),
        .I3(\out[23]_i_7_n_0 ),
        .I4(\out[22]_i_7_n_0 ),
        .I5(\out[31]_i_14_n_0 ),
        .O(\q_reg[1]_11 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[22]_i_7 
       (.I0(\out[22]_i_10_n_0 ),
        .I1(\out[26]_i_9_n_0 ),
        .I2(\q_reg[31]_0 [1]),
        .I3(\out[24]_i_4_0 ),
        .I4(\q_reg[31]_0 [2]),
        .I5(\out[28]_i_9_n_0 ),
        .O(\out[22]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \out[23]_i_3__0 
       (.I0(\q_reg[0]_1 ),
        .I1(\out_reg[22] ),
        .I2(\q_reg[0]_3 ),
        .I3(\out_reg[24] ),
        .I4(\out_reg[23] ),
        .O(\q_reg[0]_10 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \out[23]_i_4 
       (.I0(data0[23]),
        .I1(aluout0_carry[0]),
        .I2(\out[31]_i_11_n_0 ),
        .I3(\out[24]_i_7_n_0 ),
        .I4(\out[23]_i_7_n_0 ),
        .I5(\out[31]_i_14_n_0 ),
        .O(\q_reg[1]_12 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[23]_i_7 
       (.I0(\out[16]_i_4_1 ),
        .I1(\out[27]_i_9_n_0 ),
        .I2(\q_reg[31]_0 [1]),
        .I3(\out[18]_i_4_0 ),
        .I4(\q_reg[31]_0 [2]),
        .I5(\out[29]_i_10_n_0 ),
        .O(\out[23]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \out[24]_i_3__0 
       (.I0(\q_reg[0]_1 ),
        .I1(\out_reg[24] ),
        .I2(\q_reg[0]_3 ),
        .I3(\out_reg[24]_0 ),
        .I4(\out_reg[24]_1 ),
        .O(\q_reg[0]_5 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \out[24]_i_4 
       (.I0(data0[24]),
        .I1(aluout0_carry[0]),
        .I2(\out[31]_i_11_n_0 ),
        .I3(\out[25]_i_7_n_0 ),
        .I4(\out[24]_i_7_n_0 ),
        .I5(\out[31]_i_14_n_0 ),
        .O(\q_reg[1]_7 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[24]_i_7 
       (.I0(\out[24]_i_4_0 ),
        .I1(\out[28]_i_9_n_0 ),
        .I2(\q_reg[31]_0 [1]),
        .I3(\out[26]_i_9_n_0 ),
        .I4(\q_reg[31]_0 [2]),
        .I5(\out[30]_i_11_n_0 ),
        .O(\out[24]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    \out[25]_i_3__0 
       (.I0(\q_reg[0]_1 ),
        .I1(\out_reg[24]_0 ),
        .I2(\out_reg[25] ),
        .I3(\out_reg[25]_0 ),
        .I4(\q_reg[0]_3 ),
        .O(\q_reg[0]_6 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \out[25]_i_4 
       (.I0(data0[25]),
        .I1(aluout0_carry[0]),
        .I2(\out[31]_i_11_n_0 ),
        .I3(\out[26]_i_7_n_0 ),
        .I4(\out[25]_i_7_n_0 ),
        .I5(\out[31]_i_14_n_0 ),
        .O(\q_reg[1]_8 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[25]_i_7 
       (.I0(\out[18]_i_4_0 ),
        .I1(\out[29]_i_10_n_0 ),
        .I2(\q_reg[31]_0 [1]),
        .I3(\out[27]_i_9_n_0 ),
        .I4(\q_reg[31]_0 [2]),
        .I5(\out[27]_i_4_1 ),
        .O(\out[25]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \out[26]_i_3__0 
       (.I0(\q_reg[0]_1 ),
        .I1(\out_reg[25]_0 ),
        .I2(\q_reg[0]_3 ),
        .I3(\out_reg[27] ),
        .I4(\out_reg[26] ),
        .O(\q_reg[0]_7 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \out[26]_i_4 
       (.I0(data0[26]),
        .I1(aluout0_carry[0]),
        .I2(\out[31]_i_11_n_0 ),
        .I3(\out[27]_i_7_n_0 ),
        .I4(\out[26]_i_7_n_0 ),
        .I5(\out[31]_i_14_n_0 ),
        .O(\q_reg[1]_9 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[26]_i_7 
       (.I0(\out[26]_i_9_n_0 ),
        .I1(\out[30]_i_11_n_0 ),
        .I2(\q_reg[31]_0 [1]),
        .I3(\out[28]_i_9_n_0 ),
        .I4(\q_reg[31]_0 [2]),
        .I5(\out[25]_i_4_0 ),
        .O(\out[26]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out[26]_i_9 
       (.I0(srcb3E[9]),
        .I1(\q_reg[31]_0 [3]),
        .I2(srcb3E[3]),
        .I3(\q_reg[31]_0 [4]),
        .I4(srcb3E[14]),
        .O(\out[26]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \out[27]_i_3__0 
       (.I0(\q_reg[0]_1 ),
        .I1(\out_reg[27] ),
        .I2(\q_reg[0]_3 ),
        .I3(\out[28]_i_5_n_0 ),
        .I4(\out_reg[27]_0 ),
        .O(\q_reg[0]_2 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \out[27]_i_4 
       (.I0(data0[27]),
        .I1(aluout0_carry[0]),
        .I2(\out[31]_i_11_n_0 ),
        .I3(\out[28]_i_7_n_0 ),
        .I4(\out[27]_i_7_n_0 ),
        .I5(\out[31]_i_14_n_0 ),
        .O(\q_reg[1]_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[27]_i_7 
       (.I0(\out[27]_i_9_n_0 ),
        .I1(\out[27]_i_4_1 ),
        .I2(\q_reg[31]_0 [1]),
        .I3(\out[29]_i_10_n_0 ),
        .I4(\q_reg[31]_0 [2]),
        .I5(\out[27]_i_4_0 ),
        .O(\out[27]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out[27]_i_9 
       (.I0(srcb3E[10]),
        .I1(\q_reg[31]_0 [3]),
        .I2(srcb3E[4]),
        .I3(\q_reg[31]_0 [4]),
        .I4(srcb3E[15]),
        .O(\out[27]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \out[28]_i_3__0 
       (.I0(\q_reg[0]_1 ),
        .I1(\out[28]_i_5_n_0 ),
        .I2(\q_reg[0]_3 ),
        .I3(\out[29]_i_7_n_0 ),
        .I4(\out_reg[28] ),
        .O(\q_reg[0]_4 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \out[28]_i_4 
       (.I0(data0[28]),
        .I1(aluout0_carry[0]),
        .I2(\out[31]_i_11_n_0 ),
        .I3(\out[29]_i_8_n_0 ),
        .I4(\out[28]_i_7_n_0 ),
        .I5(\out[31]_i_14_n_0 ),
        .O(\q_reg[1]_5 ));
  LUT6 #(
    .INIT(64'h0000000002020300)) 
    \out[28]_i_5 
       (.I0(srcb3E[25]),
        .I1(\q_reg[31]_0 [4]),
        .I2(\q_reg[31]_0 [3]),
        .I3(srcb3E[23]),
        .I4(\q_reg[31]_0 [1]),
        .I5(\q_reg[31]_0 [2]),
        .O(\out[28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[28]_i_7 
       (.I0(\out[28]_i_9_n_0 ),
        .I1(\out[25]_i_4_0 ),
        .I2(\q_reg[31]_0 [1]),
        .I3(\out[30]_i_11_n_0 ),
        .I4(\q_reg[31]_0 [2]),
        .I5(\out[30]_i_5_0 ),
        .O(\out[28]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out[28]_i_9 
       (.I0(srcb3E[11]),
        .I1(\q_reg[31]_0 [3]),
        .I2(srcb3E[5]),
        .I3(\q_reg[31]_0 [4]),
        .I4(srcb3E[16]),
        .O(\out[28]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out[29]_i_10 
       (.I0(srcb3E[12]),
        .I1(\q_reg[31]_0 [3]),
        .I2(srcb3E[6]),
        .I3(\q_reg[31]_0 [4]),
        .I4(srcb3E[17]),
        .O(\out[29]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF100010001000)) 
    \out[29]_i_4 
       (.I0(\q_reg[31]_0 [2]),
        .I1(\q_reg[31]_0 [1]),
        .I2(\out[29]_i_6_n_0 ),
        .I3(\q_reg[0]_3 ),
        .I4(\out[29]_i_7_n_0 ),
        .I5(\q_reg[0]_1 ),
        .O(\q_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \out[29]_i_5 
       (.I0(data0[29]),
        .I1(aluout0_carry[0]),
        .I2(\out[31]_i_11_n_0 ),
        .I3(\out[30]_i_10_n_0 ),
        .I4(\out[29]_i_8_n_0 ),
        .I5(\out[31]_i_14_n_0 ),
        .O(\q_reg[1]_6 ));
  LUT5 #(
    .INIT(32'h10111000)) 
    \out[29]_i_6 
       (.I0(\q_reg[31]_0 [4]),
        .I1(\q_reg[31]_0 [3]),
        .I2(aluout0_carry__3[11]),
        .I3(aluout0_carry[2]),
        .I4(Q[30]),
        .O(\out[29]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002020300)) 
    \out[29]_i_7 
       (.I0(srcb3E__0),
        .I1(\q_reg[31]_0 [4]),
        .I2(\q_reg[31]_0 [3]),
        .I3(srcb3E[24]),
        .I4(\q_reg[31]_0 [1]),
        .I5(\q_reg[31]_0 [2]),
        .O(\out[29]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[29]_i_8 
       (.I0(\out[29]_i_10_n_0 ),
        .I1(\out[27]_i_4_0 ),
        .I2(\q_reg[31]_0 [1]),
        .I3(\out[27]_i_4_1 ),
        .I4(\q_reg[31]_0 [2]),
        .I5(\out[28]_i_4_0 ),
        .O(\out[29]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \out[2]_i_4 
       (.I0(data0[2]),
        .I1(aluout0_carry[0]),
        .I2(\out[31]_i_11_n_0 ),
        .I3(\out[3]_i_6_n_0 ),
        .I4(\out[2]_i_6_n_0 ),
        .I5(\out[31]_i_14_n_0 ),
        .O(\q_reg[1]_31 ));
  LUT6 #(
    .INIT(64'h1011100000000000)) 
    \out[2]_i_6 
       (.I0(\q_reg[31]_0 [2]),
        .I1(\q_reg[31]_0 [1]),
        .I2(aluout0_carry__3[1]),
        .I3(aluout0_carry[2]),
        .I4(Q[1]),
        .I5(\q_reg[3]_0 ),
        .O(\out[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[30]_i_10 
       (.I0(\out[30]_i_11_n_0 ),
        .I1(\out[30]_i_5_0 ),
        .I2(\q_reg[31]_0 [1]),
        .I3(\out[25]_i_4_0 ),
        .I4(\q_reg[31]_0 [2]),
        .I5(\out[30]_i_5_1 ),
        .O(\out[30]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out[30]_i_11 
       (.I0(srcb3E[13]),
        .I1(\q_reg[31]_0 [3]),
        .I2(srcb3E[7]),
        .I3(\q_reg[31]_0 [4]),
        .I4(srcb3E[18]),
        .O(\out[30]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF080000080800000)) 
    \out[30]_i_4 
       (.I0(srcb3E__0),
        .I1(\q_reg[0]_3 ),
        .I2(\out[30]_i_7_n_0 ),
        .I3(srcb3E[25]),
        .I4(\q_reg[3]_0 ),
        .I5(\q_reg[0]_1 ),
        .O(\q_reg[31]_1 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \out[30]_i_5 
       (.I0(data0[30]),
        .I1(aluout0_carry[0]),
        .I2(\out[31]_i_14_n_0 ),
        .I3(\out[30]_i_10_n_0 ),
        .I4(\out_reg[30] ),
        .I5(\out[31]_i_11_n_0 ),
        .O(\q_reg[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \out[30]_i_6 
       (.I0(\q_reg[31]_0 [0]),
        .I1(\out[31]_i_15_n_0 ),
        .I2(\out[31]_i_16_n_0 ),
        .I3(\out[31]_i_17_n_0 ),
        .I4(\out_reg[0]_1 ),
        .O(\q_reg[0]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \out[30]_i_7 
       (.I0(\q_reg[31]_0 [1]),
        .I1(\q_reg[31]_0 [2]),
        .O(\out[30]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \out[30]_i_9 
       (.I0(\q_reg[31]_0 [3]),
        .I1(\q_reg[31]_0 [4]),
        .O(\q_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \out[31]_i_10 
       (.I0(\q_reg[31]_0 [0]),
        .I1(\out[31]_i_15_n_0 ),
        .I2(\out[31]_i_16_n_0 ),
        .I3(\out[31]_i_17_n_0 ),
        .I4(\out_reg[0]_1 ),
        .O(\q_reg[0]_1 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \out[31]_i_11 
       (.I0(\q_reg[31]_0 [0]),
        .I1(\out[31]_i_15_n_0 ),
        .I2(\out[31]_i_16_n_0 ),
        .I3(\out[31]_i_17_n_0 ),
        .I4(aluout0_carry[0]),
        .O(\out[31]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \out[31]_i_14 
       (.I0(\q_reg[31]_0 [0]),
        .I1(\out[31]_i_15_n_0 ),
        .I2(\out[31]_i_16_n_0 ),
        .I3(\out[31]_i_17_n_0 ),
        .I4(aluout0_carry[0]),
        .O(\out[31]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \out[31]_i_15 
       (.I0(\q_reg[31]_0 [17]),
        .I1(\q_reg[31]_0 [18]),
        .I2(\q_reg[31]_0 [19]),
        .I3(\q_reg[31]_0 [20]),
        .I4(\out[31]_i_26_n_0 ),
        .O(\out[31]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \out[31]_i_16 
       (.I0(\q_reg[31]_0 [7]),
        .I1(\q_reg[31]_0 [8]),
        .I2(\q_reg[31]_0 [5]),
        .I3(\q_reg[31]_0 [6]),
        .I4(\out[31]_i_27_n_0 ),
        .O(\out[31]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \out[31]_i_17 
       (.I0(\q_reg[31]_0 [29]),
        .I1(\q_reg[31]_0 [30]),
        .I2(\q_reg[31]_0 [22]),
        .I3(\out[31]_i_28_n_0 ),
        .I4(\out[31]_i_29_n_0 ),
        .O(\out[31]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \out[31]_i_26 
       (.I0(\q_reg[31]_0 [16]),
        .I1(\q_reg[31]_0 [15]),
        .I2(\q_reg[31]_0 [14]),
        .I3(\q_reg[31]_0 [13]),
        .O(\out[31]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \out[31]_i_27 
       (.I0(\q_reg[31]_0 [12]),
        .I1(\q_reg[31]_0 [11]),
        .I2(\q_reg[31]_0 [10]),
        .I3(\q_reg[31]_0 [9]),
        .O(\out[31]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out[31]_i_28 
       (.I0(\q_reg[31]_0 [28]),
        .I1(\q_reg[31]_0 [25]),
        .I2(\q_reg[31]_0 [31]),
        .I3(\q_reg[31]_0 [27]),
        .O(\out[31]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out[31]_i_29 
       (.I0(\q_reg[31]_0 [24]),
        .I1(\q_reg[31]_0 [21]),
        .I2(\q_reg[31]_0 [26]),
        .I3(\q_reg[31]_0 [23]),
        .O(\out[31]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE800E800E800)) 
    \out[31]_i_3__0 
       (.I0(aluout0_carry[0]),
        .I1(\q_reg[31]_0 [31]),
        .I2(srcb3E__0),
        .I3(\out_reg[31] ),
        .I4(\out[31]_i_9_n_0 ),
        .I5(\q_reg[0]_1 ),
        .O(\q_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \out[31]_i_4__0 
       (.I0(data0[31]),
        .I1(aluout0_carry[0]),
        .I2(\out[31]_i_11_n_0 ),
        .I3(\out_reg[31]_0 ),
        .I4(\out_reg[30] ),
        .I5(\out[31]_i_14_n_0 ),
        .O(\q_reg[1]_3 ));
  LUT6 #(
    .INIT(64'h1110001000000000)) 
    \out[31]_i_9 
       (.I0(\q_reg[31]_0 [2]),
        .I1(\q_reg[31]_0 [1]),
        .I2(Q[31]),
        .I3(aluout0_carry[2]),
        .I4(aluout0_carry__3[11]),
        .I5(\q_reg[3]_0 ),
        .O(\out[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \out[3]_i_4 
       (.I0(data0[3]),
        .I1(aluout0_carry[0]),
        .I2(\out[31]_i_11_n_0 ),
        .I3(\out[4]_i_6_n_0 ),
        .I4(\out[3]_i_6_n_0 ),
        .I5(\out[31]_i_14_n_0 ),
        .O(\q_reg[1]_28 ));
  LUT6 #(
    .INIT(64'h0000000002020300)) 
    \out[3]_i_6 
       (.I0(srcb3E[0]),
        .I1(\q_reg[31]_0 [4]),
        .I2(\q_reg[31]_0 [3]),
        .I3(srcb3E[2]),
        .I4(\q_reg[31]_0 [1]),
        .I5(\q_reg[31]_0 [2]),
        .O(\out[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \out[4]_i_4 
       (.I0(data0[4]),
        .I1(aluout0_carry[0]),
        .I2(\out[31]_i_14_n_0 ),
        .I3(\out[4]_i_6_n_0 ),
        .I4(\out_reg[4] ),
        .I5(\out[31]_i_11_n_0 ),
        .O(\q_reg[1]_29 ));
  LUT6 #(
    .INIT(64'h0000000002020300)) 
    \out[4]_i_6 
       (.I0(srcb3E[1]),
        .I1(\q_reg[31]_0 [4]),
        .I2(\q_reg[31]_0 [3]),
        .I3(srcb3E[3]),
        .I4(\q_reg[31]_0 [1]),
        .I5(\q_reg[31]_0 [2]),
        .O(\out[4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \out[5]_i_3__0 
       (.I0(\q_reg[0]_1 ),
        .I1(\out_reg[5] ),
        .I2(\q_reg[0]_3 ),
        .I3(\out_reg[5]_0 ),
        .I4(\out_reg[5]_1 ),
        .O(\q_reg[0]_16 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \out[5]_i_4 
       (.I0(data0[5]),
        .I1(aluout0_carry[0]),
        .I2(\out[31]_i_11_n_0 ),
        .I3(\out_reg[6]_0 ),
        .I4(\out_reg[4] ),
        .I5(\out[31]_i_14_n_0 ),
        .O(\q_reg[1]_30 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \out[6]_i_4 
       (.I0(data0[6]),
        .I1(aluout0_carry[0]),
        .I2(\out[31]_i_11_n_0 ),
        .I3(\out_reg[6] ),
        .I4(\out_reg[6]_0 ),
        .I5(\out[31]_i_14_n_0 ),
        .O(\q_reg[1]_25 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \out[7]_i_4 
       (.I0(data0[7]),
        .I1(aluout0_carry[0]),
        .I2(\out[31]_i_11_n_0 ),
        .I3(\out_reg[7] ),
        .I4(\out_reg[6] ),
        .I5(\out[31]_i_14_n_0 ),
        .O(\q_reg[1]_26 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \out[8]_i_4 
       (.I0(data0[8]),
        .I1(aluout0_carry[0]),
        .I2(\out[31]_i_11_n_0 ),
        .I3(\out_reg[9]_0 ),
        .I4(\out_reg[7] ),
        .I5(\out[31]_i_14_n_0 ),
        .O(\q_reg[1]_27 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \out[9]_i_4 
       (.I0(data0[9]),
        .I1(aluout0_carry[0]),
        .I2(\out[31]_i_11_n_0 ),
        .I3(\out_reg[9] ),
        .I4(\out_reg[9]_0 ),
        .I5(\out[31]_i_14_n_0 ),
        .O(\q_reg[1]_22 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(\q_reg[31]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[10]),
        .Q(\q_reg[31]_0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[11]),
        .Q(\q_reg[31]_0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[12]),
        .Q(\q_reg[31]_0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[13]),
        .Q(\q_reg[31]_0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[14]),
        .Q(\q_reg[31]_0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[15]),
        .Q(\q_reg[31]_0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[16]),
        .Q(\q_reg[31]_0 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[17]),
        .Q(\q_reg[31]_0 [17]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[18]),
        .Q(\q_reg[31]_0 [18]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[19]),
        .Q(\q_reg[31]_0 [19]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(\q_reg[31]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[20]),
        .Q(\q_reg[31]_0 [20]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[21]),
        .Q(\q_reg[31]_0 [21]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[22]),
        .Q(\q_reg[31]_0 [22]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[23]),
        .Q(\q_reg[31]_0 [23]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[24]),
        .Q(\q_reg[31]_0 [24]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[25]),
        .Q(\q_reg[31]_0 [25]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[26]),
        .Q(\q_reg[31]_0 [26]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[27]),
        .Q(\q_reg[31]_0 [27]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[28]),
        .Q(\q_reg[31]_0 [28]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[29]),
        .Q(\q_reg[31]_0 [29]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[2]),
        .Q(\q_reg[31]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[30]),
        .Q(\q_reg[31]_0 [30]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[31]),
        .Q(\q_reg[31]_0 [31]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[3]),
        .Q(\q_reg[31]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[4]),
        .Q(\q_reg[31]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[5]),
        .Q(\q_reg[31]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[6]),
        .Q(\q_reg[31]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[7]),
        .Q(\q_reg[31]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[8]),
        .Q(\q_reg[31]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[9]),
        .Q(\q_reg[31]_0 [9]));
endmodule

(* ORIG_REF_NAME = "floprc" *) 
module floprc__parameterized0_3
   (\q_reg[23]_0 ,
    Q,
    \q_reg[22]_0 ,
    \q_reg[31]_0 ,
    \q_reg[30]_0 ,
    \q_reg[1]_0 ,
    \q_reg[1]_1 ,
    \q_reg[1]_2 ,
    \q_reg[1]_3 ,
    \q_reg[1]_4 ,
    \q_reg[1]_5 ,
    \q_reg[1]_6 ,
    \q_reg[1]_7 ,
    \q_reg[1]_8 ,
    \q_reg[1]_9 ,
    \q_reg[1]_10 ,
    \q_reg[1]_11 ,
    \q_reg[1]_12 ,
    \q_reg[1]_13 ,
    \q_reg[3]_0 ,
    \q_reg[3]_1 ,
    \q_reg[3]_2 ,
    srcb3E,
    \q_reg[2]_0 ,
    srcb3E__0,
    \q_reg[1]_14 ,
    \q_reg[1]_15 ,
    \q_reg[3]_3 ,
    \q_reg[3]_4 ,
    \q_reg[3]_5 ,
    \q_reg[1]_16 ,
    \q_reg[2]_1 ,
    \q_reg[2]_2 ,
    \q_reg[2]_3 ,
    \q_reg[2]_4 ,
    \q_reg[2]_5 ,
    \q_reg[1]_17 ,
    \q_reg[3]_6 ,
    \q_reg[30]_1 ,
    \q_reg[1]_18 ,
    \q_reg[3]_7 ,
    \q_reg[31]_1 ,
    \q_reg[29]_0 ,
    \q_reg[28]_0 ,
    \q_reg[3]_8 ,
    \q_reg[2]_6 ,
    \q_reg[19]_0 ,
    \q_reg[23]_1 ,
    \q_reg[27]_0 ,
    \q_reg[30]_2 ,
    \q_reg[1]_19 ,
    \q_reg[1]_20 ,
    \q_reg[1]_21 ,
    \q_reg[1]_22 ,
    aluout2_carry__2,
    \aluout0_inferred__0/i__carry__3 ,
    \aluout0_inferred__0/i__carry__3_0 ,
    \out_reg[9] ,
    \out_reg[9]_0 ,
    \out[11]_i_7_0 ,
    \out[24]_i_5_0 ,
    \out[0]_i_5 ,
    \out[0]_i_5_0 ,
    \out[13]_i_7_0 ,
    \out[15]_i_8_0 ,
    \out[12]_i_9_0 ,
    \out[14]_i_9_0 ,
    D,
    CLK,
    AR);
  output [3:0]\q_reg[23]_0 ;
  output [31:0]Q;
  output [3:0]\q_reg[22]_0 ;
  output [3:0]\q_reg[31]_0 ;
  output [3:0]\q_reg[30]_0 ;
  output \q_reg[1]_0 ;
  output \q_reg[1]_1 ;
  output \q_reg[1]_2 ;
  output \q_reg[1]_3 ;
  output \q_reg[1]_4 ;
  output \q_reg[1]_5 ;
  output \q_reg[1]_6 ;
  output \q_reg[1]_7 ;
  output \q_reg[1]_8 ;
  output \q_reg[1]_9 ;
  output \q_reg[1]_10 ;
  output \q_reg[1]_11 ;
  output \q_reg[1]_12 ;
  output \q_reg[1]_13 ;
  output \q_reg[3]_0 ;
  output \q_reg[3]_1 ;
  output \q_reg[3]_2 ;
  output [14:0]srcb3E;
  output \q_reg[2]_0 ;
  output [0:0]srcb3E__0;
  output \q_reg[1]_14 ;
  output \q_reg[1]_15 ;
  output \q_reg[3]_3 ;
  output \q_reg[3]_4 ;
  output \q_reg[3]_5 ;
  output \q_reg[1]_16 ;
  output \q_reg[2]_1 ;
  output \q_reg[2]_2 ;
  output \q_reg[2]_3 ;
  output \q_reg[2]_4 ;
  output \q_reg[2]_5 ;
  output \q_reg[1]_17 ;
  output \q_reg[3]_6 ;
  output \q_reg[30]_1 ;
  output \q_reg[1]_18 ;
  output \q_reg[3]_7 ;
  output \q_reg[31]_1 ;
  output \q_reg[29]_0 ;
  output \q_reg[28]_0 ;
  output \q_reg[3]_8 ;
  output \q_reg[2]_6 ;
  output [3:0]\q_reg[19]_0 ;
  output [3:0]\q_reg[23]_1 ;
  output [3:0]\q_reg[27]_0 ;
  output [2:0]\q_reg[30]_2 ;
  output \q_reg[1]_19 ;
  output \q_reg[1]_20 ;
  output \q_reg[1]_21 ;
  output \q_reg[1]_22 ;
  input [19:0]aluout2_carry__2;
  input [0:0]\aluout0_inferred__0/i__carry__3 ;
  input [0:0]\aluout0_inferred__0/i__carry__3_0 ;
  input \out_reg[9] ;
  input \out_reg[9]_0 ;
  input [15:0]\out[11]_i_7_0 ;
  input \out[24]_i_5_0 ;
  input \out[0]_i_5 ;
  input \out[0]_i_5_0 ;
  input \out[13]_i_7_0 ;
  input \out[15]_i_8_0 ;
  input \out[12]_i_9_0 ;
  input \out[14]_i_9_0 ;
  input [31:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [31:0]D;
  wire [31:0]Q;
  wire [0:0]\aluout0_inferred__0/i__carry__3 ;
  wire [0:0]\aluout0_inferred__0/i__carry__3_0 ;
  wire [19:0]aluout2_carry__2;
  wire \out[0]_i_5 ;
  wire \out[0]_i_5_0 ;
  wire \out[10]_i_7_n_0 ;
  wire \out[10]_i_8_n_0 ;
  wire \out[10]_i_9_n_0 ;
  wire \out[11]_i_10_n_0 ;
  wire [15:0]\out[11]_i_7_0 ;
  wire \out[11]_i_7_n_0 ;
  wire \out[11]_i_9_n_0 ;
  wire \out[12]_i_10_n_0 ;
  wire \out[12]_i_7_n_0 ;
  wire \out[12]_i_9_0 ;
  wire \out[12]_i_9_n_0 ;
  wire \out[13]_i_7_0 ;
  wire \out[13]_i_7_n_0 ;
  wire \out[13]_i_9_n_0 ;
  wire \out[14]_i_10_n_0 ;
  wire \out[14]_i_7_n_0 ;
  wire \out[14]_i_9_0 ;
  wire \out[14]_i_9_n_0 ;
  wire \out[15]_i_11_n_0 ;
  wire \out[15]_i_12_n_0 ;
  wire \out[15]_i_14_n_0 ;
  wire \out[15]_i_7_n_0 ;
  wire \out[15]_i_8_0 ;
  wire \out[15]_i_8_n_0 ;
  wire \out[16]_i_10_n_0 ;
  wire \out[16]_i_8_n_0 ;
  wire \out[18]_i_11_n_0 ;
  wire \out[22]_i_9_n_0 ;
  wire \out[23]_i_9_n_0 ;
  wire \out[24]_i_5_0 ;
  wire \out[24]_i_8_n_0 ;
  wire \out[25]_i_8_n_0 ;
  wire \out[2]_i_7_n_0 ;
  wire \out[31]_i_18_n_0 ;
  wire \out[31]_i_22_n_0 ;
  wire \out[3]_i_7_n_0 ;
  wire \out[3]_i_8_n_0 ;
  wire \out[4]_i_7_n_0 ;
  wire \out[5]_i_8_n_0 ;
  wire \out[6]_i_8_n_0 ;
  wire \out[7]_i_7_n_0 ;
  wire \out[7]_i_9_n_0 ;
  wire \out[8]_i_10_n_0 ;
  wire \out[8]_i_7_n_0 ;
  wire \out[8]_i_9_n_0 ;
  wire \out[9]_i_7_n_0 ;
  wire \out[9]_i_8_n_0 ;
  wire \out[9]_i_9_n_0 ;
  wire \out_reg[9] ;
  wire \out_reg[9]_0 ;
  wire [3:0]\q_reg[19]_0 ;
  wire \q_reg[1]_0 ;
  wire \q_reg[1]_1 ;
  wire \q_reg[1]_10 ;
  wire \q_reg[1]_11 ;
  wire \q_reg[1]_12 ;
  wire \q_reg[1]_13 ;
  wire \q_reg[1]_14 ;
  wire \q_reg[1]_15 ;
  wire \q_reg[1]_16 ;
  wire \q_reg[1]_17 ;
  wire \q_reg[1]_18 ;
  wire \q_reg[1]_19 ;
  wire \q_reg[1]_2 ;
  wire \q_reg[1]_20 ;
  wire \q_reg[1]_21 ;
  wire \q_reg[1]_22 ;
  wire \q_reg[1]_3 ;
  wire \q_reg[1]_4 ;
  wire \q_reg[1]_5 ;
  wire \q_reg[1]_6 ;
  wire \q_reg[1]_7 ;
  wire \q_reg[1]_8 ;
  wire \q_reg[1]_9 ;
  wire [3:0]\q_reg[22]_0 ;
  wire [3:0]\q_reg[23]_0 ;
  wire [3:0]\q_reg[23]_1 ;
  wire [3:0]\q_reg[27]_0 ;
  wire \q_reg[28]_0 ;
  wire \q_reg[29]_0 ;
  wire \q_reg[2]_0 ;
  wire \q_reg[2]_1 ;
  wire \q_reg[2]_2 ;
  wire \q_reg[2]_3 ;
  wire \q_reg[2]_4 ;
  wire \q_reg[2]_5 ;
  wire \q_reg[2]_6 ;
  wire [3:0]\q_reg[30]_0 ;
  wire \q_reg[30]_1 ;
  wire [2:0]\q_reg[30]_2 ;
  wire [3:0]\q_reg[31]_0 ;
  wire \q_reg[31]_1 ;
  wire \q_reg[3]_0 ;
  wire \q_reg[3]_1 ;
  wire \q_reg[3]_2 ;
  wire \q_reg[3]_3 ;
  wire \q_reg[3]_4 ;
  wire \q_reg[3]_5 ;
  wire \q_reg[3]_6 ;
  wire \q_reg[3]_7 ;
  wire \q_reg[3]_8 ;
  wire [14:0]srcb3E;
  wire [0:0]srcb3E__0;

  LUT6 #(
    .INIT(64'h3F3F2F0200002F02)) 
    aluout2_carry__1_i_1
       (.I0(Q[22]),
        .I1(aluout2_carry__2[10]),
        .I2(aluout2_carry__2[11]),
        .I3(Q[23]),
        .I4(\aluout0_inferred__0/i__carry__3 ),
        .I5(\aluout0_inferred__0/i__carry__3_0 ),
        .O(\q_reg[22]_0 [3]));
  LUT6 #(
    .INIT(64'h3F3F2F0200002F02)) 
    aluout2_carry__1_i_2
       (.I0(Q[20]),
        .I1(aluout2_carry__2[8]),
        .I2(aluout2_carry__2[9]),
        .I3(Q[21]),
        .I4(\aluout0_inferred__0/i__carry__3 ),
        .I5(\aluout0_inferred__0/i__carry__3_0 ),
        .O(\q_reg[22]_0 [2]));
  LUT6 #(
    .INIT(64'h3F3F2F0200002F02)) 
    aluout2_carry__1_i_3
       (.I0(Q[18]),
        .I1(aluout2_carry__2[6]),
        .I2(aluout2_carry__2[7]),
        .I3(Q[19]),
        .I4(\aluout0_inferred__0/i__carry__3 ),
        .I5(\aluout0_inferred__0/i__carry__3_0 ),
        .O(\q_reg[22]_0 [1]));
  LUT6 #(
    .INIT(64'h3F3F2F0200002F02)) 
    aluout2_carry__1_i_4
       (.I0(Q[16]),
        .I1(aluout2_carry__2[4]),
        .I2(aluout2_carry__2[5]),
        .I3(Q[17]),
        .I4(\aluout0_inferred__0/i__carry__3 ),
        .I5(\aluout0_inferred__0/i__carry__3_0 ),
        .O(\q_reg[22]_0 [0]));
  LUT6 #(
    .INIT(64'hCC90009000093309)) 
    aluout2_carry__1_i_5
       (.I0(Q[23]),
        .I1(aluout2_carry__2[11]),
        .I2(Q[22]),
        .I3(\aluout0_inferred__0/i__carry__3 ),
        .I4(\aluout0_inferred__0/i__carry__3_0 ),
        .I5(aluout2_carry__2[10]),
        .O(\q_reg[23]_0 [3]));
  LUT6 #(
    .INIT(64'hCC90009000093309)) 
    aluout2_carry__1_i_6
       (.I0(Q[21]),
        .I1(aluout2_carry__2[9]),
        .I2(Q[20]),
        .I3(\aluout0_inferred__0/i__carry__3 ),
        .I4(\aluout0_inferred__0/i__carry__3_0 ),
        .I5(aluout2_carry__2[8]),
        .O(\q_reg[23]_0 [2]));
  LUT6 #(
    .INIT(64'hCC90009000093309)) 
    aluout2_carry__1_i_7
       (.I0(Q[19]),
        .I1(aluout2_carry__2[7]),
        .I2(Q[18]),
        .I3(\aluout0_inferred__0/i__carry__3 ),
        .I4(\aluout0_inferred__0/i__carry__3_0 ),
        .I5(aluout2_carry__2[6]),
        .O(\q_reg[23]_0 [1]));
  LUT6 #(
    .INIT(64'hCC90009000093309)) 
    aluout2_carry__1_i_8
       (.I0(Q[17]),
        .I1(aluout2_carry__2[5]),
        .I2(Q[16]),
        .I3(\aluout0_inferred__0/i__carry__3 ),
        .I4(\aluout0_inferred__0/i__carry__3_0 ),
        .I5(aluout2_carry__2[4]),
        .O(\q_reg[23]_0 [0]));
  LUT6 #(
    .INIT(64'h3F3F2F0200002F02)) 
    aluout2_carry__2_i_1
       (.I0(Q[30]),
        .I1(aluout2_carry__2[18]),
        .I2(aluout2_carry__2[19]),
        .I3(Q[31]),
        .I4(\aluout0_inferred__0/i__carry__3 ),
        .I5(\aluout0_inferred__0/i__carry__3_0 ),
        .O(\q_reg[30]_0 [3]));
  LUT6 #(
    .INIT(64'h3F3F2F0200002F02)) 
    aluout2_carry__2_i_2
       (.I0(Q[28]),
        .I1(aluout2_carry__2[16]),
        .I2(aluout2_carry__2[17]),
        .I3(Q[29]),
        .I4(\aluout0_inferred__0/i__carry__3 ),
        .I5(\aluout0_inferred__0/i__carry__3_0 ),
        .O(\q_reg[30]_0 [2]));
  LUT6 #(
    .INIT(64'h3F3F2F0200002F02)) 
    aluout2_carry__2_i_3
       (.I0(Q[26]),
        .I1(aluout2_carry__2[14]),
        .I2(aluout2_carry__2[15]),
        .I3(Q[27]),
        .I4(\aluout0_inferred__0/i__carry__3 ),
        .I5(\aluout0_inferred__0/i__carry__3_0 ),
        .O(\q_reg[30]_0 [1]));
  LUT6 #(
    .INIT(64'h3F3F2F0200002F02)) 
    aluout2_carry__2_i_4
       (.I0(Q[24]),
        .I1(aluout2_carry__2[12]),
        .I2(aluout2_carry__2[13]),
        .I3(Q[25]),
        .I4(\aluout0_inferred__0/i__carry__3 ),
        .I5(\aluout0_inferred__0/i__carry__3_0 ),
        .O(\q_reg[30]_0 [0]));
  LUT6 #(
    .INIT(64'hCC90009000093309)) 
    aluout2_carry__2_i_5
       (.I0(Q[31]),
        .I1(aluout2_carry__2[19]),
        .I2(Q[30]),
        .I3(\aluout0_inferred__0/i__carry__3 ),
        .I4(\aluout0_inferred__0/i__carry__3_0 ),
        .I5(aluout2_carry__2[18]),
        .O(\q_reg[31]_0 [3]));
  LUT6 #(
    .INIT(64'hCC90009000093309)) 
    aluout2_carry__2_i_6
       (.I0(Q[29]),
        .I1(aluout2_carry__2[17]),
        .I2(Q[28]),
        .I3(\aluout0_inferred__0/i__carry__3 ),
        .I4(\aluout0_inferred__0/i__carry__3_0 ),
        .I5(aluout2_carry__2[16]),
        .O(\q_reg[31]_0 [2]));
  LUT6 #(
    .INIT(64'hCC90009000093309)) 
    aluout2_carry__2_i_7
       (.I0(Q[27]),
        .I1(aluout2_carry__2[15]),
        .I2(Q[26]),
        .I3(\aluout0_inferred__0/i__carry__3 ),
        .I4(\aluout0_inferred__0/i__carry__3_0 ),
        .I5(aluout2_carry__2[14]),
        .O(\q_reg[31]_0 [1]));
  LUT6 #(
    .INIT(64'hCC90009000093309)) 
    aluout2_carry__2_i_8
       (.I0(Q[25]),
        .I1(aluout2_carry__2[13]),
        .I2(Q[24]),
        .I3(\aluout0_inferred__0/i__carry__3 ),
        .I4(\aluout0_inferred__0/i__carry__3_0 ),
        .I5(aluout2_carry__2[12]),
        .O(\q_reg[31]_0 [0]));
  LUT4 #(
    .INIT(16'hE21D)) 
    i__carry__3_i_1
       (.I0(Q[19]),
        .I1(\aluout0_inferred__0/i__carry__3 ),
        .I2(\aluout0_inferred__0/i__carry__3_0 ),
        .I3(aluout2_carry__2[7]),
        .O(\q_reg[19]_0 [3]));
  LUT4 #(
    .INIT(16'hE21D)) 
    i__carry__3_i_2
       (.I0(Q[18]),
        .I1(\aluout0_inferred__0/i__carry__3 ),
        .I2(\aluout0_inferred__0/i__carry__3_0 ),
        .I3(aluout2_carry__2[6]),
        .O(\q_reg[19]_0 [2]));
  LUT4 #(
    .INIT(16'hE21D)) 
    i__carry__3_i_3
       (.I0(Q[17]),
        .I1(\aluout0_inferred__0/i__carry__3 ),
        .I2(\aluout0_inferred__0/i__carry__3_0 ),
        .I3(aluout2_carry__2[5]),
        .O(\q_reg[19]_0 [1]));
  LUT4 #(
    .INIT(16'hE21D)) 
    i__carry__3_i_4
       (.I0(Q[16]),
        .I1(\aluout0_inferred__0/i__carry__3 ),
        .I2(\aluout0_inferred__0/i__carry__3_0 ),
        .I3(aluout2_carry__2[4]),
        .O(\q_reg[19]_0 [0]));
  LUT4 #(
    .INIT(16'hE21D)) 
    i__carry__4_i_1
       (.I0(Q[23]),
        .I1(\aluout0_inferred__0/i__carry__3 ),
        .I2(\aluout0_inferred__0/i__carry__3_0 ),
        .I3(aluout2_carry__2[11]),
        .O(\q_reg[23]_1 [3]));
  LUT4 #(
    .INIT(16'hE21D)) 
    i__carry__4_i_2
       (.I0(Q[22]),
        .I1(\aluout0_inferred__0/i__carry__3 ),
        .I2(\aluout0_inferred__0/i__carry__3_0 ),
        .I3(aluout2_carry__2[10]),
        .O(\q_reg[23]_1 [2]));
  LUT4 #(
    .INIT(16'hE21D)) 
    i__carry__4_i_3
       (.I0(Q[21]),
        .I1(\aluout0_inferred__0/i__carry__3 ),
        .I2(\aluout0_inferred__0/i__carry__3_0 ),
        .I3(aluout2_carry__2[9]),
        .O(\q_reg[23]_1 [1]));
  LUT4 #(
    .INIT(16'hE21D)) 
    i__carry__4_i_4
       (.I0(Q[20]),
        .I1(\aluout0_inferred__0/i__carry__3 ),
        .I2(\aluout0_inferred__0/i__carry__3_0 ),
        .I3(aluout2_carry__2[8]),
        .O(\q_reg[23]_1 [0]));
  LUT4 #(
    .INIT(16'hE21D)) 
    i__carry__5_i_1
       (.I0(Q[27]),
        .I1(\aluout0_inferred__0/i__carry__3 ),
        .I2(\aluout0_inferred__0/i__carry__3_0 ),
        .I3(aluout2_carry__2[15]),
        .O(\q_reg[27]_0 [3]));
  LUT4 #(
    .INIT(16'hE21D)) 
    i__carry__5_i_2
       (.I0(Q[26]),
        .I1(\aluout0_inferred__0/i__carry__3 ),
        .I2(\aluout0_inferred__0/i__carry__3_0 ),
        .I3(aluout2_carry__2[14]),
        .O(\q_reg[27]_0 [2]));
  LUT4 #(
    .INIT(16'hE21D)) 
    i__carry__5_i_3
       (.I0(Q[25]),
        .I1(\aluout0_inferred__0/i__carry__3 ),
        .I2(\aluout0_inferred__0/i__carry__3_0 ),
        .I3(aluout2_carry__2[13]),
        .O(\q_reg[27]_0 [1]));
  LUT4 #(
    .INIT(16'hE21D)) 
    i__carry__5_i_4
       (.I0(Q[24]),
        .I1(\aluout0_inferred__0/i__carry__3 ),
        .I2(\aluout0_inferred__0/i__carry__3_0 ),
        .I3(aluout2_carry__2[12]),
        .O(\q_reg[27]_0 [0]));
  LUT4 #(
    .INIT(16'hE21D)) 
    i__carry__6_i_2
       (.I0(Q[30]),
        .I1(\aluout0_inferred__0/i__carry__3 ),
        .I2(\aluout0_inferred__0/i__carry__3_0 ),
        .I3(aluout2_carry__2[18]),
        .O(\q_reg[30]_2 [2]));
  LUT4 #(
    .INIT(16'hE21D)) 
    i__carry__6_i_3
       (.I0(Q[29]),
        .I1(\aluout0_inferred__0/i__carry__3 ),
        .I2(\aluout0_inferred__0/i__carry__3_0 ),
        .I3(aluout2_carry__2[17]),
        .O(\q_reg[30]_2 [1]));
  LUT4 #(
    .INIT(16'hE21D)) 
    i__carry__6_i_4
       (.I0(Q[28]),
        .I1(\aluout0_inferred__0/i__carry__3 ),
        .I2(\aluout0_inferred__0/i__carry__3_0 ),
        .I3(aluout2_carry__2[16]),
        .O(\q_reg[30]_2 [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \out[0]_i_11 
       (.I0(\out[6]_i_8_n_0 ),
        .I1(aluout2_carry__2[1]),
        .I2(\out[0]_i_5 ),
        .O(\q_reg[2]_6 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \out[10]_i_5 
       (.I0(\out[11]_i_7_n_0 ),
        .I1(\out_reg[9] ),
        .I2(\out[10]_i_7_n_0 ),
        .I3(\out_reg[9]_0 ),
        .O(\q_reg[1]_1 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \out[10]_i_7 
       (.I0(\out[12]_i_9_n_0 ),
        .I1(aluout2_carry__2[0]),
        .I2(\out[10]_i_8_n_0 ),
        .I3(aluout2_carry__2[1]),
        .I4(\out[10]_i_9_n_0 ),
        .O(\out[10]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out[10]_i_8 
       (.I0(srcb3E[6]),
        .I1(aluout2_carry__2[2]),
        .I2(srcb3E[14]),
        .I3(aluout2_carry__2[3]),
        .I4(\out[11]_i_7_0 [14]),
        .O(\out[10]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out[10]_i_9 
       (.I0(srcb3E[2]),
        .I1(aluout2_carry__2[2]),
        .I2(srcb3E[10]),
        .I3(aluout2_carry__2[3]),
        .I4(\out[11]_i_7_0 [10]),
        .O(\out[10]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out[11]_i_10 
       (.I0(srcb3E[3]),
        .I1(aluout2_carry__2[2]),
        .I2(srcb3E[11]),
        .I3(aluout2_carry__2[3]),
        .I4(\out[11]_i_7_0 [11]),
        .O(\out[11]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \out[11]_i_5 
       (.I0(\out[12]_i_7_n_0 ),
        .I1(\out_reg[9] ),
        .I2(\out[11]_i_7_n_0 ),
        .I3(\out_reg[9]_0 ),
        .O(\q_reg[1]_2 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \out[11]_i_7 
       (.I0(\out[13]_i_7_n_0 ),
        .I1(aluout2_carry__2[0]),
        .I2(\out[11]_i_9_n_0 ),
        .I3(aluout2_carry__2[1]),
        .I4(\out[11]_i_10_n_0 ),
        .O(\out[11]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out[11]_i_9 
       (.I0(srcb3E[7]),
        .I1(aluout2_carry__2[2]),
        .I2(srcb3E__0),
        .I3(aluout2_carry__2[3]),
        .I4(\out[11]_i_7_0 [15]),
        .O(\out[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \out[12]_i_10 
       (.I0(Q[28]),
        .I1(\aluout0_inferred__0/i__carry__3_0 ),
        .I2(aluout2_carry__2[3]),
        .I3(\out[12]_i_9_0 ),
        .I4(\aluout0_inferred__0/i__carry__3 ),
        .I5(Q[12]),
        .O(\out[12]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \out[12]_i_5 
       (.I0(\out[15]_i_8_n_0 ),
        .I1(aluout2_carry__2[0]),
        .I2(\out[13]_i_7_n_0 ),
        .I3(\out_reg[9] ),
        .I4(\out[12]_i_7_n_0 ),
        .I5(\out_reg[9]_0 ),
        .O(\q_reg[1]_22 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out[12]_i_7 
       (.I0(\out[14]_i_9_n_0 ),
        .I1(aluout2_carry__2[0]),
        .I2(\out[12]_i_9_n_0 ),
        .O(\out[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \out[12]_i_9 
       (.I0(\out[16]_i_10_n_0 ),
        .I1(aluout2_carry__2[1]),
        .I2(srcb3E[4]),
        .I3(aluout2_carry__2[3]),
        .I4(aluout2_carry__2[2]),
        .I5(\out[12]_i_10_n_0 ),
        .O(\out[12]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFB8B8B8FF000000)) 
    \out[13]_i_5 
       (.I0(\out[15]_i_8_n_0 ),
        .I1(aluout2_carry__2[0]),
        .I2(\out[13]_i_7_n_0 ),
        .I3(\out[14]_i_7_n_0 ),
        .I4(\out_reg[9] ),
        .I5(\out_reg[9]_0 ),
        .O(\q_reg[1]_21 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \out[13]_i_7 
       (.I0(\out[15]_i_11_n_0 ),
        .I1(aluout2_carry__2[1]),
        .I2(srcb3E[5]),
        .I3(aluout2_carry__2[3]),
        .I4(aluout2_carry__2[2]),
        .I5(\out[13]_i_9_n_0 ),
        .O(\out[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \out[13]_i_9 
       (.I0(Q[29]),
        .I1(\aluout0_inferred__0/i__carry__3_0 ),
        .I2(aluout2_carry__2[3]),
        .I3(\out[13]_i_7_0 ),
        .I4(\aluout0_inferred__0/i__carry__3 ),
        .I5(Q[13]),
        .O(\out[13]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \out[14]_i_10 
       (.I0(Q[30]),
        .I1(\aluout0_inferred__0/i__carry__3_0 ),
        .I2(aluout2_carry__2[3]),
        .I3(\out[14]_i_9_0 ),
        .I4(\aluout0_inferred__0/i__carry__3 ),
        .I5(Q[14]),
        .O(\out[14]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \out[14]_i_5 
       (.I0(\out[15]_i_7_n_0 ),
        .I1(aluout2_carry__2[0]),
        .I2(\out[15]_i_8_n_0 ),
        .I3(\out_reg[9] ),
        .I4(\out[14]_i_7_n_0 ),
        .I5(\out_reg[9]_0 ),
        .O(\q_reg[1]_19 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out[14]_i_7 
       (.I0(\out[16]_i_8_n_0 ),
        .I1(aluout2_carry__2[0]),
        .I2(\out[14]_i_9_n_0 ),
        .O(\out[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \out[14]_i_9 
       (.I0(\out[18]_i_11_n_0 ),
        .I1(aluout2_carry__2[1]),
        .I2(srcb3E[6]),
        .I3(aluout2_carry__2[3]),
        .I4(aluout2_carry__2[2]),
        .I5(\out[14]_i_10_n_0 ),
        .O(\out[14]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \out[15]_i_10 
       (.I0(Q[21]),
        .I1(\aluout0_inferred__0/i__carry__3 ),
        .I2(\aluout0_inferred__0/i__carry__3_0 ),
        .O(srcb3E[5]));
  LUT6 #(
    .INIT(64'h00000000FA0AFC0C)) 
    \out[15]_i_11 
       (.I0(Q[25]),
        .I1(Q[17]),
        .I2(\aluout0_inferred__0/i__carry__3 ),
        .I3(\aluout0_inferred__0/i__carry__3_0 ),
        .I4(aluout2_carry__2[2]),
        .I5(aluout2_carry__2[3]),
        .O(\out[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FA0AFC0C)) 
    \out[15]_i_12 
       (.I0(Q[27]),
        .I1(Q[19]),
        .I2(\aluout0_inferred__0/i__carry__3 ),
        .I3(\aluout0_inferred__0/i__carry__3_0 ),
        .I4(aluout2_carry__2[2]),
        .I5(aluout2_carry__2[3]),
        .O(\out[15]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \out[15]_i_13 
       (.I0(Q[23]),
        .I1(\aluout0_inferred__0/i__carry__3 ),
        .I2(\aluout0_inferred__0/i__carry__3_0 ),
        .O(srcb3E[7]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \out[15]_i_14 
       (.I0(Q[31]),
        .I1(\aluout0_inferred__0/i__carry__3_0 ),
        .I2(aluout2_carry__2[3]),
        .I3(\out[15]_i_8_0 ),
        .I4(\aluout0_inferred__0/i__carry__3 ),
        .I5(Q[15]),
        .O(\out[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFB8B8B8FF000000)) 
    \out[15]_i_5 
       (.I0(\out[15]_i_7_n_0 ),
        .I1(aluout2_carry__2[0]),
        .I2(\out[15]_i_8_n_0 ),
        .I3(\q_reg[1]_17 ),
        .I4(\out_reg[9] ),
        .I5(\out_reg[9]_0 ),
        .O(\q_reg[1]_20 ));
  LUT6 #(
    .INIT(64'h00ACFFFF00AC0000)) 
    \out[15]_i_7 
       (.I0(srcb3E[13]),
        .I1(srcb3E[5]),
        .I2(aluout2_carry__2[2]),
        .I3(aluout2_carry__2[3]),
        .I4(aluout2_carry__2[1]),
        .I5(\out[15]_i_11_n_0 ),
        .O(\out[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \out[15]_i_8 
       (.I0(\out[15]_i_12_n_0 ),
        .I1(aluout2_carry__2[1]),
        .I2(srcb3E[7]),
        .I3(aluout2_carry__2[3]),
        .I4(aluout2_carry__2[2]),
        .I5(\out[15]_i_14_n_0 ),
        .O(\out[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FA0AFC0C)) 
    \out[16]_i_10 
       (.I0(Q[24]),
        .I1(Q[16]),
        .I2(\aluout0_inferred__0/i__carry__3 ),
        .I3(\aluout0_inferred__0/i__carry__3_0 ),
        .I4(aluout2_carry__2[2]),
        .I5(aluout2_carry__2[3]),
        .O(\out[16]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out[16]_i_5 
       (.I0(\q_reg[3]_6 ),
        .I1(aluout2_carry__2[0]),
        .I2(\out[16]_i_8_n_0 ),
        .O(\q_reg[1]_17 ));
  LUT6 #(
    .INIT(64'h00ACFFFF00AC0000)) 
    \out[16]_i_8 
       (.I0(srcb3E[12]),
        .I1(srcb3E[4]),
        .I2(aluout2_carry__2[2]),
        .I3(aluout2_carry__2[3]),
        .I4(aluout2_carry__2[1]),
        .I5(\out[16]_i_10_n_0 ),
        .O(\out[16]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out[17]_i_5 
       (.I0(\q_reg[3]_7 ),
        .I1(aluout2_carry__2[0]),
        .I2(\out[15]_i_7_n_0 ),
        .O(\q_reg[1]_18 ));
  LUT6 #(
    .INIT(64'h00000000FA0AFC0C)) 
    \out[18]_i_11 
       (.I0(Q[26]),
        .I1(Q[18]),
        .I2(\aluout0_inferred__0/i__carry__3 ),
        .I3(\aluout0_inferred__0/i__carry__3_0 ),
        .I4(aluout2_carry__2[2]),
        .I5(aluout2_carry__2[3]),
        .O(\out[18]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FA0AFC0C)) 
    \out[18]_i_8 
       (.I0(Q[28]),
        .I1(Q[20]),
        .I2(\aluout0_inferred__0/i__carry__3 ),
        .I3(\aluout0_inferred__0/i__carry__3_0 ),
        .I4(aluout2_carry__2[2]),
        .I5(aluout2_carry__2[3]),
        .O(\q_reg[28]_0 ));
  LUT6 #(
    .INIT(64'h00ACFFFF00AC0000)) 
    \out[18]_i_9 
       (.I0(srcb3E[14]),
        .I1(srcb3E[6]),
        .I2(aluout2_carry__2[2]),
        .I3(aluout2_carry__2[3]),
        .I4(aluout2_carry__2[1]),
        .I5(\out[18]_i_11_n_0 ),
        .O(\q_reg[3]_6 ));
  LUT6 #(
    .INIT(64'h00000000FA0AFC0C)) 
    \out[19]_i_8 
       (.I0(Q[29]),
        .I1(Q[21]),
        .I2(\aluout0_inferred__0/i__carry__3 ),
        .I3(\aluout0_inferred__0/i__carry__3_0 ),
        .I4(aluout2_carry__2[2]),
        .I5(aluout2_carry__2[3]),
        .O(\q_reg[29]_0 ));
  LUT6 #(
    .INIT(64'h00ACFFFF00AC0000)) 
    \out[19]_i_9 
       (.I0(srcb3E__0),
        .I1(srcb3E[7]),
        .I2(aluout2_carry__2[2]),
        .I3(aluout2_carry__2[3]),
        .I4(aluout2_carry__2[1]),
        .I5(\out[15]_i_12_n_0 ),
        .O(\q_reg[3]_7 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \out[1]_i_5 
       (.I0(\out[2]_i_7_n_0 ),
        .I1(\out_reg[9] ),
        .I2(\q_reg[1]_12 ),
        .I3(\out_reg[9]_0 ),
        .O(\q_reg[1]_11 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \out[1]_i_7 
       (.I0(\out[0]_i_5_0 ),
        .I1(\out[5]_i_8_n_0 ),
        .I2(aluout2_carry__2[0]),
        .I3(\out[7]_i_9_n_0 ),
        .I4(aluout2_carry__2[1]),
        .I5(\out[3]_i_8_n_0 ),
        .O(\q_reg[1]_12 ));
  LUT6 #(
    .INIT(64'h00000000FA0AFC0C)) 
    \out[20]_i_8 
       (.I0(Q[30]),
        .I1(Q[22]),
        .I2(\aluout0_inferred__0/i__carry__3 ),
        .I3(\aluout0_inferred__0/i__carry__3_0 ),
        .I4(aluout2_carry__2[2]),
        .I5(aluout2_carry__2[3]),
        .O(\q_reg[30]_1 ));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    \out[20]_i_9 
       (.I0(srcb3E[8]),
        .I1(aluout2_carry__2[1]),
        .I2(srcb3E[12]),
        .I3(srcb3E[4]),
        .I4(aluout2_carry__2[2]),
        .I5(aluout2_carry__2[3]),
        .O(\q_reg[2]_4 ));
  LUT6 #(
    .INIT(64'h00000000FA0AFC0C)) 
    \out[21]_i_8 
       (.I0(Q[31]),
        .I1(Q[23]),
        .I2(\aluout0_inferred__0/i__carry__3 ),
        .I3(\aluout0_inferred__0/i__carry__3_0 ),
        .I4(aluout2_carry__2[2]),
        .I5(aluout2_carry__2[3]),
        .O(\q_reg[31]_1 ));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    \out[21]_i_9 
       (.I0(srcb3E[9]),
        .I1(aluout2_carry__2[1]),
        .I2(srcb3E[13]),
        .I3(srcb3E[5]),
        .I4(aluout2_carry__2[2]),
        .I5(aluout2_carry__2[3]),
        .O(\q_reg[2]_5 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \out[22]_i_5 
       (.I0(srcb3E[12]),
        .I1(aluout2_carry__2[1]),
        .I2(\out[24]_i_5_0 ),
        .I3(srcb3E[8]),
        .I4(aluout2_carry__2[0]),
        .I5(\out[22]_i_9_n_0 ),
        .O(\q_reg[2]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \out[22]_i_8 
       (.I0(Q[24]),
        .I1(\aluout0_inferred__0/i__carry__3 ),
        .I2(\aluout0_inferred__0/i__carry__3_0 ),
        .O(srcb3E[8]));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    \out[22]_i_9 
       (.I0(srcb3E[10]),
        .I1(aluout2_carry__2[1]),
        .I2(srcb3E[14]),
        .I3(srcb3E[6]),
        .I4(aluout2_carry__2[2]),
        .I5(aluout2_carry__2[3]),
        .O(\out[22]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \out[23]_i_5 
       (.I0(srcb3E[13]),
        .I1(aluout2_carry__2[1]),
        .I2(\out[24]_i_5_0 ),
        .I3(srcb3E[9]),
        .I4(aluout2_carry__2[0]),
        .I5(\out[23]_i_9_n_0 ),
        .O(\q_reg[2]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \out[23]_i_8 
       (.I0(Q[25]),
        .I1(\aluout0_inferred__0/i__carry__3 ),
        .I2(\aluout0_inferred__0/i__carry__3_0 ),
        .O(srcb3E[9]));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    \out[23]_i_9 
       (.I0(srcb3E[11]),
        .I1(aluout2_carry__2[1]),
        .I2(srcb3E__0),
        .I3(srcb3E[7]),
        .I4(aluout2_carry__2[2]),
        .I5(aluout2_carry__2[3]),
        .O(\out[23]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \out[24]_i_5 
       (.I0(srcb3E[14]),
        .I1(aluout2_carry__2[1]),
        .I2(\out[24]_i_5_0 ),
        .I3(srcb3E[10]),
        .I4(aluout2_carry__2[0]),
        .I5(\out[24]_i_8_n_0 ),
        .O(\q_reg[2]_1 ));
  LUT6 #(
    .INIT(64'hF000B0B0F0008080)) 
    \out[24]_i_8 
       (.I0(Q[28]),
        .I1(aluout2_carry__2[1]),
        .I2(\out[24]_i_5_0 ),
        .I3(\aluout0_inferred__0/i__carry__3_0 ),
        .I4(\aluout0_inferred__0/i__carry__3 ),
        .I5(Q[24]),
        .O(\out[24]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \out[25]_i_5 
       (.I0(srcb3E__0),
        .I1(aluout2_carry__2[1]),
        .I2(\out[24]_i_5_0 ),
        .I3(srcb3E[11]),
        .I4(aluout2_carry__2[0]),
        .I5(\out[25]_i_8_n_0 ),
        .O(\q_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hF000B0B0F0008080)) 
    \out[25]_i_8 
       (.I0(Q[29]),
        .I1(aluout2_carry__2[1]),
        .I2(\out[24]_i_5_0 ),
        .I3(\aluout0_inferred__0/i__carry__3_0 ),
        .I4(\aluout0_inferred__0/i__carry__3 ),
        .I5(Q[25]),
        .O(\out[25]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h30BB000030880000)) 
    \out[26]_i_5 
       (.I0(srcb3E[12]),
        .I1(aluout2_carry__2[0]),
        .I2(srcb3E[14]),
        .I3(aluout2_carry__2[1]),
        .I4(\out[24]_i_5_0 ),
        .I5(srcb3E[10]),
        .O(\q_reg[1]_16 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \out[26]_i_8 
       (.I0(Q[26]),
        .I1(\aluout0_inferred__0/i__carry__3 ),
        .I2(\aluout0_inferred__0/i__carry__3_0 ),
        .O(srcb3E[10]));
  LUT6 #(
    .INIT(64'h30BB000030880000)) 
    \out[27]_i_5 
       (.I0(srcb3E[13]),
        .I1(aluout2_carry__2[0]),
        .I2(srcb3E__0),
        .I3(aluout2_carry__2[1]),
        .I4(\out[24]_i_5_0 ),
        .I5(srcb3E[11]),
        .O(\q_reg[1]_14 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \out[27]_i_8 
       (.I0(Q[27]),
        .I1(\aluout0_inferred__0/i__carry__3 ),
        .I2(\aluout0_inferred__0/i__carry__3_0 ),
        .O(srcb3E[11]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \out[28]_i_8 
       (.I0(Q[28]),
        .I1(\aluout0_inferred__0/i__carry__3 ),
        .I2(\aluout0_inferred__0/i__carry__3_0 ),
        .O(srcb3E[12]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \out[29]_i_9 
       (.I0(Q[29]),
        .I1(\aluout0_inferred__0/i__carry__3 ),
        .I2(\aluout0_inferred__0/i__carry__3_0 ),
        .O(srcb3E[13]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \out[2]_i_5 
       (.I0(\out[3]_i_7_n_0 ),
        .I1(\out_reg[9] ),
        .I2(\out[2]_i_7_n_0 ),
        .I3(\out_reg[9]_0 ),
        .O(\q_reg[1]_10 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[2]_i_7 
       (.I0(\out[8]_i_10_n_0 ),
        .I1(\q_reg[3]_8 ),
        .I2(aluout2_carry__2[0]),
        .I3(\out[6]_i_8_n_0 ),
        .I4(aluout2_carry__2[1]),
        .I5(\out[0]_i_5 ),
        .O(\out[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \out[30]_i_8 
       (.I0(Q[30]),
        .I1(\aluout0_inferred__0/i__carry__3 ),
        .I2(\aluout0_inferred__0/i__carry__3_0 ),
        .O(srcb3E[14]));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \out[31]_i_12 
       (.I0(\out[31]_i_18_n_0 ),
        .I1(\q_reg[3]_3 ),
        .I2(aluout2_carry__2[0]),
        .I3(\q_reg[3]_4 ),
        .I4(aluout2_carry__2[1]),
        .I5(\q_reg[3]_5 ),
        .O(\q_reg[1]_15 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \out[31]_i_13 
       (.I0(\out[31]_i_22_n_0 ),
        .I1(\q_reg[3]_0 ),
        .I2(aluout2_carry__2[0]),
        .I3(\q_reg[3]_1 ),
        .I4(aluout2_carry__2[1]),
        .I5(\q_reg[3]_2 ),
        .O(\q_reg[1]_13 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \out[31]_i_18 
       (.I0(srcb3E__0),
        .I1(\out[11]_i_7_0 [15]),
        .I2(aluout2_carry__2[2]),
        .I3(\out[11]_i_7_0 [7]),
        .I4(aluout2_carry__2[3]),
        .I5(srcb3E[7]),
        .O(\out[31]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \out[31]_i_19 
       (.I0(srcb3E[11]),
        .I1(\out[11]_i_7_0 [11]),
        .I2(aluout2_carry__2[2]),
        .I3(\out[11]_i_7_0 [3]),
        .I4(aluout2_carry__2[3]),
        .I5(srcb3E[3]),
        .O(\q_reg[3]_3 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \out[31]_i_20 
       (.I0(srcb3E[9]),
        .I1(\out[11]_i_7_0 [9]),
        .I2(aluout2_carry__2[2]),
        .I3(\out[11]_i_7_0 [1]),
        .I4(aluout2_carry__2[3]),
        .I5(srcb3E[1]),
        .O(\q_reg[3]_4 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \out[31]_i_21 
       (.I0(srcb3E[13]),
        .I1(\out[11]_i_7_0 [13]),
        .I2(aluout2_carry__2[2]),
        .I3(\out[11]_i_7_0 [5]),
        .I4(aluout2_carry__2[3]),
        .I5(srcb3E[5]),
        .O(\q_reg[3]_5 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \out[31]_i_22 
       (.I0(srcb3E[14]),
        .I1(\out[11]_i_7_0 [14]),
        .I2(aluout2_carry__2[2]),
        .I3(\out[11]_i_7_0 [6]),
        .I4(aluout2_carry__2[3]),
        .I5(srcb3E[6]),
        .O(\out[31]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \out[31]_i_23 
       (.I0(srcb3E[10]),
        .I1(\out[11]_i_7_0 [10]),
        .I2(aluout2_carry__2[2]),
        .I3(\out[11]_i_7_0 [2]),
        .I4(aluout2_carry__2[3]),
        .I5(srcb3E[2]),
        .O(\q_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \out[31]_i_24 
       (.I0(srcb3E[8]),
        .I1(\out[11]_i_7_0 [8]),
        .I2(aluout2_carry__2[2]),
        .I3(\out[11]_i_7_0 [0]),
        .I4(aluout2_carry__2[3]),
        .I5(srcb3E[0]),
        .O(\q_reg[3]_1 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \out[31]_i_25 
       (.I0(srcb3E[12]),
        .I1(\out[11]_i_7_0 [12]),
        .I2(aluout2_carry__2[2]),
        .I3(\out[11]_i_7_0 [4]),
        .I4(aluout2_carry__2[3]),
        .I5(srcb3E[4]),
        .O(\q_reg[3]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \out[31]_i_30 
       (.I0(Q[19]),
        .I1(\aluout0_inferred__0/i__carry__3 ),
        .I2(\aluout0_inferred__0/i__carry__3_0 ),
        .O(srcb3E[3]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \out[31]_i_31 
       (.I0(Q[17]),
        .I1(\aluout0_inferred__0/i__carry__3 ),
        .I2(\aluout0_inferred__0/i__carry__3_0 ),
        .O(srcb3E[1]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \out[31]_i_32 
       (.I0(Q[22]),
        .I1(\aluout0_inferred__0/i__carry__3 ),
        .I2(\aluout0_inferred__0/i__carry__3_0 ),
        .O(srcb3E[6]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \out[31]_i_33 
       (.I0(Q[18]),
        .I1(\aluout0_inferred__0/i__carry__3 ),
        .I2(\aluout0_inferred__0/i__carry__3_0 ),
        .O(srcb3E[2]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \out[31]_i_34 
       (.I0(Q[16]),
        .I1(\aluout0_inferred__0/i__carry__3 ),
        .I2(\aluout0_inferred__0/i__carry__3_0 ),
        .O(srcb3E[0]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \out[31]_i_35 
       (.I0(Q[20]),
        .I1(\aluout0_inferred__0/i__carry__3 ),
        .I2(\aluout0_inferred__0/i__carry__3_0 ),
        .O(srcb3E[4]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \out[31]_i_7 
       (.I0(Q[31]),
        .I1(\aluout0_inferred__0/i__carry__3 ),
        .I2(\aluout0_inferred__0/i__carry__3_0 ),
        .O(srcb3E__0));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \out[3]_i_5 
       (.I0(\out[4]_i_7_n_0 ),
        .I1(\out_reg[9] ),
        .I2(\out[3]_i_7_n_0 ),
        .I3(\out_reg[9]_0 ),
        .O(\q_reg[1]_7 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[3]_i_7 
       (.I0(\out[9]_i_9_n_0 ),
        .I1(\out[5]_i_8_n_0 ),
        .I2(aluout2_carry__2[0]),
        .I3(\out[7]_i_9_n_0 ),
        .I4(aluout2_carry__2[1]),
        .I5(\out[3]_i_8_n_0 ),
        .O(\out[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \out[3]_i_8 
       (.I0(\out[11]_i_7_0 [3]),
        .I1(srcb3E[3]),
        .I2(aluout2_carry__2[2]),
        .I3(srcb3E[11]),
        .I4(aluout2_carry__2[3]),
        .I5(\out[11]_i_7_0 [11]),
        .O(\out[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \out[4]_i_5 
       (.I0(\q_reg[1]_9 ),
        .I1(\out_reg[9] ),
        .I2(\out[4]_i_7_n_0 ),
        .I3(\out_reg[9]_0 ),
        .O(\q_reg[1]_8 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[4]_i_7 
       (.I0(\out[10]_i_9_n_0 ),
        .I1(\out[6]_i_8_n_0 ),
        .I2(aluout2_carry__2[0]),
        .I3(\out[8]_i_10_n_0 ),
        .I4(aluout2_carry__2[1]),
        .I5(\q_reg[3]_8 ),
        .O(\out[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \out[4]_i_8 
       (.I0(\out[11]_i_7_0 [4]),
        .I1(srcb3E[4]),
        .I2(aluout2_carry__2[2]),
        .I3(srcb3E[12]),
        .I4(aluout2_carry__2[3]),
        .I5(\out[11]_i_7_0 [12]),
        .O(\q_reg[3]_8 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[5]_i_5 
       (.I0(\out[11]_i_10_n_0 ),
        .I1(\out[7]_i_9_n_0 ),
        .I2(aluout2_carry__2[0]),
        .I3(\out[9]_i_9_n_0 ),
        .I4(aluout2_carry__2[1]),
        .I5(\out[5]_i_8_n_0 ),
        .O(\q_reg[1]_9 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \out[5]_i_8 
       (.I0(\out[11]_i_7_0 [5]),
        .I1(srcb3E[5]),
        .I2(aluout2_carry__2[2]),
        .I3(srcb3E[13]),
        .I4(aluout2_carry__2[3]),
        .I5(\out[11]_i_7_0 [13]),
        .O(\out[5]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \out[6]_i_5 
       (.I0(\out[7]_i_7_n_0 ),
        .I1(\out_reg[9] ),
        .I2(\q_reg[1]_4 ),
        .I3(\out_reg[9]_0 ),
        .O(\q_reg[1]_3 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[6]_i_7 
       (.I0(\out[8]_i_9_n_0 ),
        .I1(\out[8]_i_10_n_0 ),
        .I2(aluout2_carry__2[0]),
        .I3(\out[10]_i_9_n_0 ),
        .I4(aluout2_carry__2[1]),
        .I5(\out[6]_i_8_n_0 ),
        .O(\q_reg[1]_4 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \out[6]_i_8 
       (.I0(\out[11]_i_7_0 [6]),
        .I1(srcb3E[6]),
        .I2(aluout2_carry__2[2]),
        .I3(srcb3E[14]),
        .I4(aluout2_carry__2[3]),
        .I5(\out[11]_i_7_0 [14]),
        .O(\out[6]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \out[7]_i_5 
       (.I0(\out[8]_i_7_n_0 ),
        .I1(\out_reg[9] ),
        .I2(\out[7]_i_7_n_0 ),
        .I3(\out_reg[9]_0 ),
        .O(\q_reg[1]_5 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[7]_i_7 
       (.I0(\out[9]_i_8_n_0 ),
        .I1(\out[9]_i_9_n_0 ),
        .I2(aluout2_carry__2[0]),
        .I3(\out[11]_i_10_n_0 ),
        .I4(aluout2_carry__2[1]),
        .I5(\out[7]_i_9_n_0 ),
        .O(\out[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \out[7]_i_9 
       (.I0(\out[11]_i_7_0 [7]),
        .I1(srcb3E[7]),
        .I2(aluout2_carry__2[2]),
        .I3(srcb3E__0),
        .I4(aluout2_carry__2[3]),
        .I5(\out[11]_i_7_0 [15]),
        .O(\out[7]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out[8]_i_10 
       (.I0(srcb3E[0]),
        .I1(aluout2_carry__2[2]),
        .I2(srcb3E[8]),
        .I3(aluout2_carry__2[3]),
        .I4(\out[11]_i_7_0 [8]),
        .O(\out[8]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \out[8]_i_5 
       (.I0(\out[9]_i_7_n_0 ),
        .I1(\out_reg[9] ),
        .I2(\out[8]_i_7_n_0 ),
        .I3(\out_reg[9]_0 ),
        .O(\q_reg[1]_6 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[8]_i_7 
       (.I0(\out[10]_i_8_n_0 ),
        .I1(\out[10]_i_9_n_0 ),
        .I2(aluout2_carry__2[0]),
        .I3(\out[8]_i_9_n_0 ),
        .I4(aluout2_carry__2[1]),
        .I5(\out[8]_i_10_n_0 ),
        .O(\out[8]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out[8]_i_9 
       (.I0(srcb3E[4]),
        .I1(aluout2_carry__2[2]),
        .I2(srcb3E[12]),
        .I3(aluout2_carry__2[3]),
        .I4(\out[11]_i_7_0 [12]),
        .O(\out[8]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \out[9]_i_5 
       (.I0(\out[10]_i_7_n_0 ),
        .I1(\out_reg[9] ),
        .I2(\out[9]_i_7_n_0 ),
        .I3(\out_reg[9]_0 ),
        .O(\q_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[9]_i_7 
       (.I0(\out[11]_i_9_n_0 ),
        .I1(\out[11]_i_10_n_0 ),
        .I2(aluout2_carry__2[0]),
        .I3(\out[9]_i_8_n_0 ),
        .I4(aluout2_carry__2[1]),
        .I5(\out[9]_i_9_n_0 ),
        .O(\out[9]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out[9]_i_8 
       (.I0(srcb3E[5]),
        .I1(aluout2_carry__2[2]),
        .I2(srcb3E[13]),
        .I3(aluout2_carry__2[3]),
        .I4(\out[11]_i_7_0 [13]),
        .O(\out[9]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out[9]_i_9 
       (.I0(srcb3E[1]),
        .I1(aluout2_carry__2[2]),
        .I2(srcb3E[9]),
        .I3(aluout2_carry__2[3]),
        .I4(\out[11]_i_7_0 [9]),
        .O(\out[9]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[16]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[17]),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[18]),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[19]),
        .Q(Q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[20]),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[21]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[22]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[23]),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[24]),
        .Q(Q[24]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[25]),
        .Q(Q[25]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[26]),
        .Q(Q[26]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[27]),
        .Q(Q[27]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[28]),
        .Q(Q[28]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[29]),
        .Q(Q[29]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[30]),
        .Q(Q[30]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[31]),
        .Q(Q[31]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "floprc" *) 
module floprc__parameterized0_6
   (\q_reg[7]_0 ,
    Q,
    \q_reg[10]_0 ,
    DI,
    \q_reg[9]_0 ,
    \q_reg[8]_0 ,
    \q_reg[3]_0 ,
    \q_reg[2]_0 ,
    \q_reg[1]_0 ,
    \q_reg[1]_1 ,
    \q_reg[2]_1 ,
    \q_reg[2]_2 ,
    \q_reg[0]_0 ,
    \q_reg[3]_1 ,
    \q_reg[2]_3 ,
    \q_reg[2]_4 ,
    \q_reg[1]_2 ,
    \q_reg[2]_5 ,
    \q_reg[2]_6 ,
    \q_reg[1]_3 ,
    \q_reg[3]_2 ,
    \q_reg[3]_3 ,
    \q_reg[3]_4 ,
    \q_reg[3]_5 ,
    \q_reg[3]_6 ,
    \q_reg[7]_1 ,
    \q_reg[10]_1 ,
    \aluout0_inferred__0/i__carry ,
    \aluout0_inferred__0/i__carry__1 ,
    \aluout0_inferred__0/i__carry__1_0 ,
    srcb3E,
    \out[5]_i_4 ,
    D,
    CLK,
    AR);
  output [3:0]\q_reg[7]_0 ;
  output [11:0]Q;
  output [10:0]\q_reg[10]_0 ;
  output [3:0]DI;
  output [0:0]\q_reg[9]_0 ;
  output [0:0]\q_reg[8]_0 ;
  output \q_reg[3]_0 ;
  output \q_reg[2]_0 ;
  output \q_reg[1]_0 ;
  output \q_reg[1]_1 ;
  output \q_reg[2]_1 ;
  output \q_reg[2]_2 ;
  output \q_reg[0]_0 ;
  output \q_reg[3]_1 ;
  output \q_reg[2]_3 ;
  output \q_reg[2]_4 ;
  output \q_reg[1]_2 ;
  output \q_reg[2]_5 ;
  output \q_reg[2]_6 ;
  output \q_reg[1]_3 ;
  output \q_reg[3]_2 ;
  output \q_reg[3]_3 ;
  output \q_reg[3]_4 ;
  output \q_reg[3]_5 ;
  output [3:0]\q_reg[3]_6 ;
  output [3:0]\q_reg[7]_1 ;
  output [2:0]\q_reg[10]_1 ;
  input [0:0]\aluout0_inferred__0/i__carry ;
  input [10:0]\aluout0_inferred__0/i__carry__1 ;
  input [10:0]\aluout0_inferred__0/i__carry__1_0 ;
  input [5:0]srcb3E;
  input \out[5]_i_4 ;
  input [11:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [11:0]D;
  wire [3:0]DI;
  wire [11:0]Q;
  wire [0:0]\aluout0_inferred__0/i__carry ;
  wire [10:0]\aluout0_inferred__0/i__carry__1 ;
  wire [10:0]\aluout0_inferred__0/i__carry__1_0 ;
  wire \out[11]_i_8_n_0 ;
  wire \out[5]_i_4 ;
  wire \out[7]_i_8_n_0 ;
  wire \out[8]_i_8_n_0 ;
  wire \q_reg[0]_0 ;
  wire [10:0]\q_reg[10]_0 ;
  wire [2:0]\q_reg[10]_1 ;
  wire \q_reg[1]_0 ;
  wire \q_reg[1]_1 ;
  wire \q_reg[1]_2 ;
  wire \q_reg[1]_3 ;
  wire \q_reg[2]_0 ;
  wire \q_reg[2]_1 ;
  wire \q_reg[2]_2 ;
  wire \q_reg[2]_3 ;
  wire \q_reg[2]_4 ;
  wire \q_reg[2]_5 ;
  wire \q_reg[2]_6 ;
  wire \q_reg[3]_0 ;
  wire \q_reg[3]_1 ;
  wire \q_reg[3]_2 ;
  wire \q_reg[3]_3 ;
  wire \q_reg[3]_4 ;
  wire \q_reg[3]_5 ;
  wire [3:0]\q_reg[3]_6 ;
  wire [3:0]\q_reg[7]_0 ;
  wire [3:0]\q_reg[7]_1 ;
  wire [0:0]\q_reg[8]_0 ;
  wire [0:0]\q_reg[9]_0 ;
  wire [5:0]srcb3E;

  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    aluout2_carry__0_i_12
       (.I0(Q[9]),
        .I1(\aluout0_inferred__0/i__carry ),
        .I2(\aluout0_inferred__0/i__carry__1 [9]),
        .O(\q_reg[10]_0 [9]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    aluout2_carry__0_i_15
       (.I0(Q[10]),
        .I1(\aluout0_inferred__0/i__carry ),
        .I2(\aluout0_inferred__0/i__carry__1 [10]),
        .O(\q_reg[10]_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    aluout2_carry__0_i_16
       (.I0(Q[8]),
        .I1(\aluout0_inferred__0/i__carry ),
        .I2(\aluout0_inferred__0/i__carry__1 [8]),
        .O(\q_reg[10]_0 [8]));
  LUT6 #(
    .INIT(64'h00B8FFFF000000B8)) 
    aluout2_carry__0_i_4
       (.I0(Q[8]),
        .I1(\aluout0_inferred__0/i__carry ),
        .I2(\aluout0_inferred__0/i__carry__1 [8]),
        .I3(\aluout0_inferred__0/i__carry__1_0 [8]),
        .I4(\aluout0_inferred__0/i__carry__1_0 [9]),
        .I5(\q_reg[10]_0 [9]),
        .O(\q_reg[8]_0 ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    aluout2_carry__0_i_8
       (.I0(Q[9]),
        .I1(\aluout0_inferred__0/i__carry ),
        .I2(\aluout0_inferred__0/i__carry__1 [9]),
        .I3(\aluout0_inferred__0/i__carry__1_0 [9]),
        .I4(\q_reg[10]_0 [8]),
        .I5(\aluout0_inferred__0/i__carry__1_0 [8]),
        .O(\q_reg[9]_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF000000B8)) 
    aluout2_carry_i_1
       (.I0(Q[6]),
        .I1(\aluout0_inferred__0/i__carry ),
        .I2(\aluout0_inferred__0/i__carry__1 [6]),
        .I3(\aluout0_inferred__0/i__carry__1_0 [6]),
        .I4(\aluout0_inferred__0/i__carry__1_0 [7]),
        .I5(\q_reg[10]_0 [7]),
        .O(DI[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    aluout2_carry_i_10
       (.I0(Q[5]),
        .I1(\aluout0_inferred__0/i__carry ),
        .I2(\aluout0_inferred__0/i__carry__1 [5]),
        .O(\q_reg[10]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    aluout2_carry_i_11
       (.I0(Q[3]),
        .I1(\aluout0_inferred__0/i__carry ),
        .I2(\aluout0_inferred__0/i__carry__1 [3]),
        .O(\q_reg[10]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    aluout2_carry_i_12
       (.I0(Q[1]),
        .I1(\aluout0_inferred__0/i__carry ),
        .I2(\aluout0_inferred__0/i__carry__1 [1]),
        .O(\q_reg[10]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    aluout2_carry_i_13
       (.I0(Q[6]),
        .I1(\aluout0_inferred__0/i__carry ),
        .I2(\aluout0_inferred__0/i__carry__1 [6]),
        .O(\q_reg[10]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    aluout2_carry_i_14
       (.I0(Q[4]),
        .I1(\aluout0_inferred__0/i__carry ),
        .I2(\aluout0_inferred__0/i__carry__1 [4]),
        .O(\q_reg[10]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    aluout2_carry_i_15
       (.I0(Q[2]),
        .I1(\aluout0_inferred__0/i__carry ),
        .I2(\aluout0_inferred__0/i__carry__1 [2]),
        .O(\q_reg[10]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    aluout2_carry_i_16
       (.I0(Q[0]),
        .I1(\aluout0_inferred__0/i__carry ),
        .I2(\aluout0_inferred__0/i__carry__1 [0]),
        .O(\q_reg[10]_0 [0]));
  LUT6 #(
    .INIT(64'h00B8FFFF000000B8)) 
    aluout2_carry_i_2
       (.I0(Q[4]),
        .I1(\aluout0_inferred__0/i__carry ),
        .I2(\aluout0_inferred__0/i__carry__1 [4]),
        .I3(\aluout0_inferred__0/i__carry__1_0 [4]),
        .I4(\aluout0_inferred__0/i__carry__1_0 [5]),
        .I5(\q_reg[10]_0 [5]),
        .O(DI[2]));
  LUT6 #(
    .INIT(64'h00B8FFFF000000B8)) 
    aluout2_carry_i_3
       (.I0(Q[2]),
        .I1(\aluout0_inferred__0/i__carry ),
        .I2(\aluout0_inferred__0/i__carry__1 [2]),
        .I3(\aluout0_inferred__0/i__carry__1_0 [2]),
        .I4(\aluout0_inferred__0/i__carry__1_0 [3]),
        .I5(\q_reg[10]_0 [3]),
        .O(DI[1]));
  LUT6 #(
    .INIT(64'h00B8FFFF000000B8)) 
    aluout2_carry_i_4
       (.I0(Q[0]),
        .I1(\aluout0_inferred__0/i__carry ),
        .I2(\aluout0_inferred__0/i__carry__1 [0]),
        .I3(\aluout0_inferred__0/i__carry__1_0 [0]),
        .I4(\aluout0_inferred__0/i__carry__1_0 [1]),
        .I5(\q_reg[10]_0 [1]),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    aluout2_carry_i_5
       (.I0(Q[7]),
        .I1(\aluout0_inferred__0/i__carry ),
        .I2(\aluout0_inferred__0/i__carry__1 [7]),
        .I3(\aluout0_inferred__0/i__carry__1_0 [7]),
        .I4(\q_reg[10]_0 [6]),
        .I5(\aluout0_inferred__0/i__carry__1_0 [6]),
        .O(\q_reg[7]_0 [3]));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    aluout2_carry_i_6
       (.I0(Q[5]),
        .I1(\aluout0_inferred__0/i__carry ),
        .I2(\aluout0_inferred__0/i__carry__1 [5]),
        .I3(\aluout0_inferred__0/i__carry__1_0 [5]),
        .I4(\q_reg[10]_0 [4]),
        .I5(\aluout0_inferred__0/i__carry__1_0 [4]),
        .O(\q_reg[7]_0 [2]));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    aluout2_carry_i_7
       (.I0(Q[3]),
        .I1(\aluout0_inferred__0/i__carry ),
        .I2(\aluout0_inferred__0/i__carry__1 [3]),
        .I3(\aluout0_inferred__0/i__carry__1_0 [3]),
        .I4(\q_reg[10]_0 [2]),
        .I5(\aluout0_inferred__0/i__carry__1_0 [2]),
        .O(\q_reg[7]_0 [1]));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    aluout2_carry_i_8
       (.I0(Q[1]),
        .I1(\aluout0_inferred__0/i__carry ),
        .I2(\aluout0_inferred__0/i__carry__1 [1]),
        .I3(\aluout0_inferred__0/i__carry__1_0 [1]),
        .I4(\q_reg[10]_0 [0]),
        .I5(\aluout0_inferred__0/i__carry__1_0 [0]),
        .O(\q_reg[7]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    aluout2_carry_i_9
       (.I0(Q[7]),
        .I1(\aluout0_inferred__0/i__carry ),
        .I2(\aluout0_inferred__0/i__carry__1 [7]),
        .O(\q_reg[10]_0 [7]));
  LUT4 #(
    .INIT(16'hB847)) 
    i__carry__0_i_1
       (.I0(Q[7]),
        .I1(\aluout0_inferred__0/i__carry ),
        .I2(\aluout0_inferred__0/i__carry__1 [7]),
        .I3(\aluout0_inferred__0/i__carry__1_0 [7]),
        .O(\q_reg[7]_1 [3]));
  LUT4 #(
    .INIT(16'hB847)) 
    i__carry__0_i_2
       (.I0(Q[6]),
        .I1(\aluout0_inferred__0/i__carry ),
        .I2(\aluout0_inferred__0/i__carry__1 [6]),
        .I3(\aluout0_inferred__0/i__carry__1_0 [6]),
        .O(\q_reg[7]_1 [2]));
  LUT4 #(
    .INIT(16'hB847)) 
    i__carry__0_i_3
       (.I0(Q[5]),
        .I1(\aluout0_inferred__0/i__carry ),
        .I2(\aluout0_inferred__0/i__carry__1 [5]),
        .I3(\aluout0_inferred__0/i__carry__1_0 [5]),
        .O(\q_reg[7]_1 [1]));
  LUT4 #(
    .INIT(16'hB847)) 
    i__carry__0_i_4
       (.I0(Q[4]),
        .I1(\aluout0_inferred__0/i__carry ),
        .I2(\aluout0_inferred__0/i__carry__1 [4]),
        .I3(\aluout0_inferred__0/i__carry__1_0 [4]),
        .O(\q_reg[7]_1 [0]));
  LUT4 #(
    .INIT(16'hB847)) 
    i__carry__1_i_2
       (.I0(Q[10]),
        .I1(\aluout0_inferred__0/i__carry ),
        .I2(\aluout0_inferred__0/i__carry__1 [10]),
        .I3(\aluout0_inferred__0/i__carry__1_0 [10]),
        .O(\q_reg[10]_1 [2]));
  LUT4 #(
    .INIT(16'hB847)) 
    i__carry__1_i_3
       (.I0(Q[9]),
        .I1(\aluout0_inferred__0/i__carry ),
        .I2(\aluout0_inferred__0/i__carry__1 [9]),
        .I3(\aluout0_inferred__0/i__carry__1_0 [9]),
        .O(\q_reg[10]_1 [1]));
  LUT4 #(
    .INIT(16'hB847)) 
    i__carry__1_i_4
       (.I0(Q[8]),
        .I1(\aluout0_inferred__0/i__carry ),
        .I2(\aluout0_inferred__0/i__carry__1 [8]),
        .I3(\aluout0_inferred__0/i__carry__1_0 [8]),
        .O(\q_reg[10]_1 [0]));
  LUT4 #(
    .INIT(16'hB847)) 
    i__carry_i_1
       (.I0(Q[3]),
        .I1(\aluout0_inferred__0/i__carry ),
        .I2(\aluout0_inferred__0/i__carry__1 [3]),
        .I3(\aluout0_inferred__0/i__carry__1_0 [3]),
        .O(\q_reg[3]_6 [3]));
  LUT4 #(
    .INIT(16'hB847)) 
    i__carry_i_2
       (.I0(Q[2]),
        .I1(\aluout0_inferred__0/i__carry ),
        .I2(\aluout0_inferred__0/i__carry__1 [2]),
        .I3(\aluout0_inferred__0/i__carry__1_0 [2]),
        .O(\q_reg[3]_6 [2]));
  LUT4 #(
    .INIT(16'hB847)) 
    i__carry_i_3
       (.I0(Q[1]),
        .I1(\aluout0_inferred__0/i__carry ),
        .I2(\aluout0_inferred__0/i__carry__1 [1]),
        .I3(\aluout0_inferred__0/i__carry__1_0 [1]),
        .O(\q_reg[3]_6 [1]));
  LUT4 #(
    .INIT(16'hB847)) 
    i__carry_i_4
       (.I0(Q[0]),
        .I1(\aluout0_inferred__0/i__carry ),
        .I2(\aluout0_inferred__0/i__carry__1 [0]),
        .I3(\aluout0_inferred__0/i__carry__1_0 [0]),
        .O(\q_reg[3]_6 [0]));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \out[0]_i_12 
       (.I0(\q_reg[10]_0 [0]),
        .I1(srcb3E[0]),
        .I2(\aluout0_inferred__0/i__carry__1_0 [3]),
        .I3(srcb3E[3]),
        .I4(\aluout0_inferred__0/i__carry__1_0 [4]),
        .I5(\q_reg[10]_0 [8]),
        .O(\q_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \out[10]_i_6 
       (.I0(\q_reg[10]_0 [3]),
        .I1(\aluout0_inferred__0/i__carry__1_0 [2]),
        .I2(\out[5]_i_4 ),
        .I3(\q_reg[10]_0 [7]),
        .I4(\aluout0_inferred__0/i__carry__1_0 [1]),
        .I5(\q_reg[2]_4 ),
        .O(\q_reg[2]_3 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out[11]_i_6 
       (.I0(\out[11]_i_8_n_0 ),
        .I1(\aluout0_inferred__0/i__carry__1_0 [1]),
        .I2(\q_reg[2]_1 ),
        .O(\q_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    \out[11]_i_8 
       (.I0(\q_reg[10]_0 [4]),
        .I1(\aluout0_inferred__0/i__carry__1_0 [2]),
        .I2(\q_reg[10]_0 [0]),
        .I3(\q_reg[10]_0 [8]),
        .I4(\aluout0_inferred__0/i__carry__1_0 [3]),
        .I5(\aluout0_inferred__0/i__carry__1_0 [4]),
        .O(\out[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    \out[12]_i_8 
       (.I0(\q_reg[10]_0 [5]),
        .I1(\aluout0_inferred__0/i__carry__1_0 [2]),
        .I2(\q_reg[10]_0 [1]),
        .I3(\q_reg[10]_0 [9]),
        .I4(\aluout0_inferred__0/i__carry__1_0 [3]),
        .I5(\aluout0_inferred__0/i__carry__1_0 [4]),
        .O(\q_reg[2]_4 ));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    \out[13]_i_8 
       (.I0(\q_reg[10]_0 [6]),
        .I1(\aluout0_inferred__0/i__carry__1_0 [2]),
        .I2(\q_reg[10]_0 [2]),
        .I3(\q_reg[10]_0 [10]),
        .I4(\aluout0_inferred__0/i__carry__1_0 [3]),
        .I5(\aluout0_inferred__0/i__carry__1_0 [4]),
        .O(\q_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h00000000B8B8FF00)) 
    \out[15]_i_9 
       (.I0(Q[0]),
        .I1(\aluout0_inferred__0/i__carry ),
        .I2(\aluout0_inferred__0/i__carry__1 [0]),
        .I3(\q_reg[10]_0 [8]),
        .I4(\aluout0_inferred__0/i__carry__1_0 [3]),
        .I5(\aluout0_inferred__0/i__carry__1_0 [4]),
        .O(\q_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h00000000B8B8FF00)) 
    \out[16]_i_9 
       (.I0(Q[1]),
        .I1(\aluout0_inferred__0/i__carry ),
        .I2(\aluout0_inferred__0/i__carry__1 [1]),
        .I3(\q_reg[10]_0 [9]),
        .I4(\aluout0_inferred__0/i__carry__1_0 [3]),
        .I5(\aluout0_inferred__0/i__carry__1_0 [4]),
        .O(\q_reg[1]_2 ));
  LUT6 #(
    .INIT(64'h00000000B8B8FF00)) 
    \out[17]_i_8 
       (.I0(Q[2]),
        .I1(\aluout0_inferred__0/i__carry ),
        .I2(\aluout0_inferred__0/i__carry__1 [2]),
        .I3(\q_reg[10]_0 [10]),
        .I4(\aluout0_inferred__0/i__carry__1_0 [3]),
        .I5(\aluout0_inferred__0/i__carry__1_0 [4]),
        .O(\q_reg[2]_5 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \out[1]_i_8 
       (.I0(\q_reg[10]_0 [1]),
        .I1(srcb3E[1]),
        .I2(\aluout0_inferred__0/i__carry__1_0 [3]),
        .I3(srcb3E[4]),
        .I4(\aluout0_inferred__0/i__carry__1_0 [4]),
        .I5(\q_reg[10]_0 [9]),
        .O(\q_reg[3]_3 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out[23]_i_10 
       (.I0(\q_reg[10]_0 [8]),
        .I1(\aluout0_inferred__0/i__carry__1_0 [3]),
        .I2(\q_reg[10]_0 [0]),
        .I3(\aluout0_inferred__0/i__carry__1_0 [4]),
        .I4(srcb3E[0]),
        .O(\q_reg[3]_1 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out[24]_i_9 
       (.I0(\q_reg[10]_0 [9]),
        .I1(\aluout0_inferred__0/i__carry__1_0 [3]),
        .I2(\q_reg[10]_0 [1]),
        .I3(\aluout0_inferred__0/i__carry__1_0 [4]),
        .I4(srcb3E[1]),
        .O(\q_reg[3]_5 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out[25]_i_9 
       (.I0(\q_reg[10]_0 [10]),
        .I1(\aluout0_inferred__0/i__carry__1_0 [3]),
        .I2(\q_reg[10]_0 [2]),
        .I3(\aluout0_inferred__0/i__carry__1_0 [4]),
        .I4(srcb3E[2]),
        .O(\q_reg[3]_4 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \out[2]_i_8 
       (.I0(\q_reg[10]_0 [2]),
        .I1(srcb3E[2]),
        .I2(\aluout0_inferred__0/i__carry__1_0 [3]),
        .I3(srcb3E[5]),
        .I4(\aluout0_inferred__0/i__carry__1_0 [4]),
        .I5(\q_reg[10]_0 [10]),
        .O(\q_reg[3]_2 ));
  LUT6 #(
    .INIT(64'h30BB000030880000)) 
    \out[5]_i_7 
       (.I0(\q_reg[10]_0 [2]),
        .I1(\aluout0_inferred__0/i__carry__1_0 [1]),
        .I2(\q_reg[10]_0 [0]),
        .I3(\aluout0_inferred__0/i__carry__1_0 [2]),
        .I4(\out[5]_i_4 ),
        .I5(\q_reg[10]_0 [4]),
        .O(\q_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h30BB000030880000)) 
    \out[6]_i_6 
       (.I0(\q_reg[10]_0 [3]),
        .I1(\aluout0_inferred__0/i__carry__1_0 [1]),
        .I2(\q_reg[10]_0 [1]),
        .I3(\aluout0_inferred__0/i__carry__1_0 [2]),
        .I4(\out[5]_i_4 ),
        .I5(\q_reg[10]_0 [5]),
        .O(\q_reg[1]_3 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \out[7]_i_6 
       (.I0(\q_reg[10]_0 [0]),
        .I1(\aluout0_inferred__0/i__carry__1_0 [2]),
        .I2(\out[5]_i_4 ),
        .I3(\q_reg[10]_0 [4]),
        .I4(\aluout0_inferred__0/i__carry__1_0 [1]),
        .I5(\out[7]_i_8_n_0 ),
        .O(\q_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hE2FF0000E2000000)) 
    \out[7]_i_8 
       (.I0(\aluout0_inferred__0/i__carry__1 [2]),
        .I1(\aluout0_inferred__0/i__carry ),
        .I2(Q[2]),
        .I3(\aluout0_inferred__0/i__carry__1_0 [2]),
        .I4(\out[5]_i_4 ),
        .I5(\q_reg[10]_0 [6]),
        .O(\out[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \out[8]_i_6 
       (.I0(\q_reg[10]_0 [1]),
        .I1(\aluout0_inferred__0/i__carry__1_0 [2]),
        .I2(\out[5]_i_4 ),
        .I3(\q_reg[10]_0 [5]),
        .I4(\aluout0_inferred__0/i__carry__1_0 [1]),
        .I5(\out[8]_i_8_n_0 ),
        .O(\q_reg[2]_6 ));
  LUT6 #(
    .INIT(64'hE2FF0000E2000000)) 
    \out[8]_i_8 
       (.I0(\aluout0_inferred__0/i__carry__1 [3]),
        .I1(\aluout0_inferred__0/i__carry ),
        .I2(Q[3]),
        .I3(\aluout0_inferred__0/i__carry__1_0 [2]),
        .I4(\out[5]_i_4 ),
        .I5(\q_reg[10]_0 [7]),
        .O(\out[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \out[9]_i_6 
       (.I0(\q_reg[10]_0 [2]),
        .I1(\aluout0_inferred__0/i__carry__1_0 [2]),
        .I2(\out[5]_i_4 ),
        .I3(\q_reg[10]_0 [6]),
        .I4(\aluout0_inferred__0/i__carry__1_0 [1]),
        .I5(\out[11]_i_8_n_0 ),
        .O(\q_reg[2]_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "floprc" *) 
module floprc__parameterized0_9
   (\q_reg[31]_0 ,
    D,
    CLK,
    AR);
  output [31:0]\q_reg[31]_0 ;
  input [31:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [31:0]D;
  wire [31:0]\q_reg[31]_0 ;

  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(\q_reg[31]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[10]),
        .Q(\q_reg[31]_0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[11]),
        .Q(\q_reg[31]_0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[12]),
        .Q(\q_reg[31]_0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[13]),
        .Q(\q_reg[31]_0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[14]),
        .Q(\q_reg[31]_0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[15]),
        .Q(\q_reg[31]_0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[16]),
        .Q(\q_reg[31]_0 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[17]),
        .Q(\q_reg[31]_0 [17]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[18]),
        .Q(\q_reg[31]_0 [18]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[19]),
        .Q(\q_reg[31]_0 [19]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(\q_reg[31]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[20]),
        .Q(\q_reg[31]_0 [20]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[21]),
        .Q(\q_reg[31]_0 [21]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[22]),
        .Q(\q_reg[31]_0 [22]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[23]),
        .Q(\q_reg[31]_0 [23]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[24]),
        .Q(\q_reg[31]_0 [24]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[25]),
        .Q(\q_reg[31]_0 [25]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[26]),
        .Q(\q_reg[31]_0 [26]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[27]),
        .Q(\q_reg[31]_0 [27]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[28]),
        .Q(\q_reg[31]_0 [28]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[29]),
        .Q(\q_reg[31]_0 [29]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[2]),
        .Q(\q_reg[31]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[30]),
        .Q(\q_reg[31]_0 [30]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[31]),
        .Q(\q_reg[31]_0 [31]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[3]),
        .Q(\q_reg[31]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[4]),
        .Q(\q_reg[31]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[5]),
        .Q(\q_reg[31]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[6]),
        .Q(\q_reg[31]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[7]),
        .Q(\q_reg[31]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[8]),
        .Q(\q_reg[31]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[9]),
        .Q(\q_reg[31]_0 [9]));
endmodule

(* ORIG_REF_NAME = "floprc" *) 
module floprc__parameterized1
   (\q_reg[4]_0 ,
    D,
    CLK,
    AR);
  output [4:0]\q_reg[4]_0 ;
  input [4:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [4:0]D;
  wire [4:0]\q_reg[4]_0 ;

  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(\q_reg[4]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(\q_reg[4]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[2]),
        .Q(\q_reg[4]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[3]),
        .Q(\q_reg[4]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[4]),
        .Q(\q_reg[4]_0 [4]));
endmodule

(* ORIG_REF_NAME = "floprc" *) 
module floprc__parameterized1_8
   (\q_reg[0]_0 ,
    \q_reg[2]_0 ,
    \q_reg[4]_0 ,
    \q_reg[3]_0 ,
    \q_reg[1]_0 ,
    \q_reg[4]_1 ,
    \q_reg[4]_2 ,
    \q_reg[3]_1 ,
    \q_reg[0]_1 ,
    \q_reg[4]_3 ,
    \q_reg[0]_2 ,
    CLK,
    AR,
    \q_reg[2]_1 ,
    \q_reg[4]_4 ,
    \q_reg[3]_2 ,
    \q_reg[1]_1 ,
    \aluout0_inferred__0/i__carry__1 ,
    Q,
    aluout2_carry__0);
  output \q_reg[0]_0 ;
  output \q_reg[2]_0 ;
  output \q_reg[4]_0 ;
  output \q_reg[3]_0 ;
  output \q_reg[1]_0 ;
  output [1:0]\q_reg[4]_1 ;
  output [4:0]\q_reg[4]_2 ;
  output [1:0]\q_reg[3]_1 ;
  output [0:0]\q_reg[0]_1 ;
  output [3:0]\q_reg[4]_3 ;
  input \q_reg[0]_2 ;
  input CLK;
  input [0:0]AR;
  input \q_reg[2]_1 ;
  input \q_reg[4]_4 ;
  input \q_reg[3]_2 ;
  input \q_reg[1]_1 ;
  input [0:0]\aluout0_inferred__0/i__carry__1 ;
  input [4:0]Q;
  input [4:0]aluout2_carry__0;

  wire [0:0]AR;
  wire CLK;
  wire [4:0]Q;
  wire [0:0]\aluout0_inferred__0/i__carry__1 ;
  wire [4:0]aluout2_carry__0;
  wire \q_reg[0]_0 ;
  wire [0:0]\q_reg[0]_1 ;
  wire \q_reg[0]_2 ;
  wire \q_reg[1]_0 ;
  wire \q_reg[1]_1 ;
  wire \q_reg[2]_0 ;
  wire \q_reg[2]_1 ;
  wire \q_reg[3]_0 ;
  wire [1:0]\q_reg[3]_1 ;
  wire \q_reg[3]_2 ;
  wire \q_reg[4]_0 ;
  wire [1:0]\q_reg[4]_1 ;
  wire [4:0]\q_reg[4]_2 ;
  wire [3:0]\q_reg[4]_3 ;
  wire \q_reg[4]_4 ;

  LUT6 #(
    .INIT(64'h00B8FFFF000000B8)) 
    aluout2_carry__0_i_1
       (.I0(\q_reg[3]_0 ),
        .I1(\aluout0_inferred__0/i__carry__1 ),
        .I2(Q[3]),
        .I3(aluout2_carry__0[3]),
        .I4(aluout2_carry__0[4]),
        .I5(\q_reg[4]_2 [4]),
        .O(\q_reg[3]_1 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    aluout2_carry__0_i_10
       (.I0(\q_reg[2]_0 ),
        .I1(\aluout0_inferred__0/i__carry__1 ),
        .I2(Q[2]),
        .O(\q_reg[4]_2 [2]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    aluout2_carry__0_i_11
       (.I0(\q_reg[0]_0 ),
        .I1(\aluout0_inferred__0/i__carry__1 ),
        .I2(Q[0]),
        .O(\q_reg[4]_2 [0]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    aluout2_carry__0_i_13
       (.I0(\q_reg[3]_0 ),
        .I1(\aluout0_inferred__0/i__carry__1 ),
        .I2(Q[3]),
        .O(\q_reg[4]_2 [3]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    aluout2_carry__0_i_14
       (.I0(\q_reg[1]_0 ),
        .I1(\aluout0_inferred__0/i__carry__1 ),
        .I2(Q[1]),
        .O(\q_reg[4]_2 [1]));
  LUT6 #(
    .INIT(64'h00B8FFFF000000B8)) 
    aluout2_carry__0_i_2
       (.I0(\q_reg[1]_0 ),
        .I1(\aluout0_inferred__0/i__carry__1 ),
        .I2(Q[1]),
        .I3(aluout2_carry__0[1]),
        .I4(aluout2_carry__0[2]),
        .I5(\q_reg[4]_2 [2]),
        .O(\q_reg[3]_1 [0]));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    aluout2_carry__0_i_5
       (.I0(\q_reg[4]_0 ),
        .I1(\aluout0_inferred__0/i__carry__1 ),
        .I2(Q[4]),
        .I3(aluout2_carry__0[4]),
        .I4(\q_reg[4]_2 [3]),
        .I5(aluout2_carry__0[3]),
        .O(\q_reg[4]_1 [1]));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    aluout2_carry__0_i_6
       (.I0(\q_reg[2]_0 ),
        .I1(\aluout0_inferred__0/i__carry__1 ),
        .I2(Q[2]),
        .I3(aluout2_carry__0[2]),
        .I4(\q_reg[4]_2 [1]),
        .I5(aluout2_carry__0[1]),
        .O(\q_reg[4]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    aluout2_carry__0_i_9
       (.I0(\q_reg[4]_0 ),
        .I1(\aluout0_inferred__0/i__carry__1 ),
        .I2(Q[4]),
        .O(\q_reg[4]_2 [4]));
  LUT4 #(
    .INIT(16'hB847)) 
    i__carry__1_i_1
       (.I0(\q_reg[0]_0 ),
        .I1(\aluout0_inferred__0/i__carry__1 ),
        .I2(Q[0]),
        .I3(aluout2_carry__0[0]),
        .O(\q_reg[0]_1 ));
  LUT4 #(
    .INIT(16'hB847)) 
    i__carry__2_i_1
       (.I0(\q_reg[4]_0 ),
        .I1(\aluout0_inferred__0/i__carry__1 ),
        .I2(Q[4]),
        .I3(aluout2_carry__0[4]),
        .O(\q_reg[4]_3 [3]));
  LUT4 #(
    .INIT(16'hB847)) 
    i__carry__2_i_2
       (.I0(\q_reg[3]_0 ),
        .I1(\aluout0_inferred__0/i__carry__1 ),
        .I2(Q[3]),
        .I3(aluout2_carry__0[3]),
        .O(\q_reg[4]_3 [2]));
  LUT4 #(
    .INIT(16'hB847)) 
    i__carry__2_i_3
       (.I0(\q_reg[2]_0 ),
        .I1(\aluout0_inferred__0/i__carry__1 ),
        .I2(Q[2]),
        .I3(aluout2_carry__0[2]),
        .O(\q_reg[4]_3 [1]));
  LUT4 #(
    .INIT(16'hB847)) 
    i__carry__2_i_4
       (.I0(\q_reg[1]_0 ),
        .I1(\aluout0_inferred__0/i__carry__1 ),
        .I2(Q[1]),
        .I3(aluout2_carry__0[1]),
        .O(\q_reg[4]_3 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[0]_2 ),
        .Q(\q_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[1]_1 ),
        .Q(\q_reg[1]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[2]_1 ),
        .Q(\q_reg[2]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[3]_2 ),
        .Q(\q_reg[3]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[4]_4 ),
        .Q(\q_reg[4]_0 ));
endmodule

(* NotValidForBitStream *)
module mips
   (clk,
    reset,
    pc,
    instr,
    memwrite,
    aluout,
    writedata,
    readdata,
    flushD,
    stallD);
  input clk;
  input reset;
  output [31:0]pc;
  input [31:0]instr;
  output memwrite;
  output [31:0]aluout;
  output [31:0]writedata;
  input [31:0]readdata;
  output flushD;
  output stallD;

  wire [31:0]\alu/data1 ;
  wire \alu/data4 ;
  wire [1:0]alucontrolE;
  wire [31:0]aluout;
  wire [31:0]aluoutE1;
  wire [31:0]aluout_OBUF;
  wire alusrcE;
  wire c_n_44;
  wire c_n_45;
  wire c_n_46;
  wire c_n_47;
  wire c_n_48;
  wire c_n_49;
  wire c_n_50;
  wire c_n_51;
  wire c_n_52;
  wire c_n_53;
  wire c_n_54;
  wire c_n_55;
  wire c_n_56;
  wire c_n_57;
  wire c_n_58;
  wire c_n_59;
  wire c_n_60;
  wire c_n_61;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire dp_n_192;
  wire dp_n_193;
  wire dp_n_194;
  wire dp_n_195;
  wire dp_n_196;
  wire dp_n_197;
  wire dp_n_198;
  wire dp_n_199;
  wire dp_n_200;
  wire dp_n_201;
  wire dp_n_202;
  wire dp_n_203;
  wire dp_n_204;
  wire dp_n_205;
  wire dp_n_206;
  wire dp_n_207;
  wire dp_n_208;
  wire dp_n_209;
  wire dp_n_210;
  wire dp_n_211;
  wire dp_n_212;
  wire dp_n_213;
  wire dp_n_214;
  wire dp_n_215;
  wire dp_n_216;
  wire dp_n_217;
  wire dp_n_218;
  wire dp_n_219;
  wire dp_n_220;
  wire dp_n_221;
  wire dp_n_222;
  wire dp_n_223;
  wire dp_n_224;
  wire dp_n_225;
  wire dp_n_226;
  wire dp_n_227;
  wire dp_n_228;
  wire dp_n_229;
  wire dp_n_230;
  wire dp_n_231;
  wire dp_n_232;
  wire dp_n_233;
  wire dp_n_234;
  wire dp_n_235;
  wire dp_n_236;
  wire dp_n_237;
  wire dp_n_238;
  wire dp_n_239;
  wire dp_n_240;
  wire dp_n_241;
  wire dp_n_242;
  wire dp_n_243;
  wire dp_n_244;
  wire dp_n_245;
  wire dp_n_246;
  wire dp_n_247;
  wire dp_n_248;
  wire dp_n_249;
  wire dp_n_250;
  wire dp_n_251;
  wire dp_n_253;
  wire dp_n_254;
  wire dp_n_255;
  wire dp_n_256;
  wire flushD;
  wire flushD_OBUF;
  wire \haz/forwardAD32_in ;
  wire \haz/forwardBD30_in ;
  wire [31:0]instr;
  wire [22:17]instrD;
  wire [31:0]instr_IBUF;
  wire jumpE;
  wire memtoregE;
  wire memtoregM;
  wire memtoregW;
  wire memwrite;
  wire memwrite_OBUF;
  wire [8:0]p_0_in;
  wire [31:0]pc;
  wire [31:0]pc_OBUF;
  wire [31:0]pcplus4E;
  wire [4:0]rdE;
  wire [31:0]readdata;
  wire [31:0]readdata_IBUF;
  wire regwriteE;
  wire regwriteM;
  wire regwriteW;
  wire reset;
  wire reset_IBUF;
  wire [4:0]rtE;
  wire [2:2]rtE1;
  wire [31:1]signimmE;
  wire [30:1]srcaE;
  wire [30:1]srcbE;
  wire stallD;
  wire stallD_OBUF;
  wire [31:0]writedata;
  wire [31:0]writedata_OBUF;
  wire [4:0]writeregE;

initial begin
 $sdf_annotate("cpu_tb_time_synth.sdf",,,,"tool_control");
end
  OBUF \aluout_OBUF[0]_inst 
       (.I(aluout_OBUF[0]),
        .O(aluout[0]));
  OBUF \aluout_OBUF[10]_inst 
       (.I(aluout_OBUF[10]),
        .O(aluout[10]));
  OBUF \aluout_OBUF[11]_inst 
       (.I(aluout_OBUF[11]),
        .O(aluout[11]));
  OBUF \aluout_OBUF[12]_inst 
       (.I(aluout_OBUF[12]),
        .O(aluout[12]));
  OBUF \aluout_OBUF[13]_inst 
       (.I(aluout_OBUF[13]),
        .O(aluout[13]));
  OBUF \aluout_OBUF[14]_inst 
       (.I(aluout_OBUF[14]),
        .O(aluout[14]));
  OBUF \aluout_OBUF[15]_inst 
       (.I(aluout_OBUF[15]),
        .O(aluout[15]));
  OBUF \aluout_OBUF[16]_inst 
       (.I(aluout_OBUF[16]),
        .O(aluout[16]));
  OBUF \aluout_OBUF[17]_inst 
       (.I(aluout_OBUF[17]),
        .O(aluout[17]));
  OBUF \aluout_OBUF[18]_inst 
       (.I(aluout_OBUF[18]),
        .O(aluout[18]));
  OBUF \aluout_OBUF[19]_inst 
       (.I(aluout_OBUF[19]),
        .O(aluout[19]));
  OBUF \aluout_OBUF[1]_inst 
       (.I(aluout_OBUF[1]),
        .O(aluout[1]));
  OBUF \aluout_OBUF[20]_inst 
       (.I(aluout_OBUF[20]),
        .O(aluout[20]));
  OBUF \aluout_OBUF[21]_inst 
       (.I(aluout_OBUF[21]),
        .O(aluout[21]));
  OBUF \aluout_OBUF[22]_inst 
       (.I(aluout_OBUF[22]),
        .O(aluout[22]));
  OBUF \aluout_OBUF[23]_inst 
       (.I(aluout_OBUF[23]),
        .O(aluout[23]));
  OBUF \aluout_OBUF[24]_inst 
       (.I(aluout_OBUF[24]),
        .O(aluout[24]));
  OBUF \aluout_OBUF[25]_inst 
       (.I(aluout_OBUF[25]),
        .O(aluout[25]));
  OBUF \aluout_OBUF[26]_inst 
       (.I(aluout_OBUF[26]),
        .O(aluout[26]));
  OBUF \aluout_OBUF[27]_inst 
       (.I(aluout_OBUF[27]),
        .O(aluout[27]));
  OBUF \aluout_OBUF[28]_inst 
       (.I(aluout_OBUF[28]),
        .O(aluout[28]));
  OBUF \aluout_OBUF[29]_inst 
       (.I(aluout_OBUF[29]),
        .O(aluout[29]));
  OBUF \aluout_OBUF[2]_inst 
       (.I(aluout_OBUF[2]),
        .O(aluout[2]));
  OBUF \aluout_OBUF[30]_inst 
       (.I(aluout_OBUF[30]),
        .O(aluout[30]));
  OBUF \aluout_OBUF[31]_inst 
       (.I(aluout_OBUF[31]),
        .O(aluout[31]));
  OBUF \aluout_OBUF[3]_inst 
       (.I(aluout_OBUF[3]),
        .O(aluout[3]));
  OBUF \aluout_OBUF[4]_inst 
       (.I(aluout_OBUF[4]),
        .O(aluout[4]));
  OBUF \aluout_OBUF[5]_inst 
       (.I(aluout_OBUF[5]),
        .O(aluout[5]));
  OBUF \aluout_OBUF[6]_inst 
       (.I(aluout_OBUF[6]),
        .O(aluout[6]));
  OBUF \aluout_OBUF[7]_inst 
       (.I(aluout_OBUF[7]),
        .O(aluout[7]));
  OBUF \aluout_OBUF[8]_inst 
       (.I(aluout_OBUF[8]),
        .O(aluout[8]));
  OBUF \aluout_OBUF[9]_inst 
       (.I(aluout_OBUF[9]),
        .O(aluout[9]));
  controller c
       (.AR(reset_IBUF),
        .CLK(clk_IBUF_BUFG),
        .CO(\alu/data4 ),
        .D(writeregE),
        .Q(pcplus4E),
        .aluoutE1(aluoutE1),
        .data1(\alu/data1 ),
        .forwardAD32_in(\haz/forwardAD32_in ),
        .forwardBD30_in(\haz/forwardBD30_in ),
        .\out_reg[0] (dp_n_220),
        .\out_reg[0]_0 (dp_n_219),
        .\out_reg[10] (dp_n_242),
        .\out_reg[10]_0 (dp_n_210),
        .\out_reg[11] (dp_n_243),
        .\out_reg[11]_0 (dp_n_211),
        .\out_reg[12] (dp_n_238),
        .\out_reg[12]_0 (dp_n_256),
        .\out_reg[13] (dp_n_239),
        .\out_reg[13]_0 (dp_n_255),
        .\out_reg[14] (dp_n_240),
        .\out_reg[14]_0 (dp_n_253),
        .\out_reg[15] (dp_n_236),
        .\out_reg[15]_0 (dp_n_254),
        .\out_reg[16] (dp_n_204),
        .\out_reg[16]_0 (dp_n_235),
        .\out_reg[17] (dp_n_205),
        .\out_reg[17]_0 (dp_n_237),
        .\out_reg[18] (dp_n_201),
        .\out_reg[18]_0 (dp_n_232),
        .\out_reg[19] (dp_n_202),
        .\out_reg[19]_0 (dp_n_233),
        .\out_reg[1] ({memtoregW,regwriteW}),
        .\out_reg[1]_0 (dp_n_251),
        .\out_reg[1]_1 (dp_n_218),
        .\out_reg[20] (dp_n_203),
        .\out_reg[20]_0 (dp_n_234),
        .\out_reg[21] (dp_n_198),
        .\out_reg[21]_0 (dp_n_229),
        .\out_reg[22] (dp_n_199),
        .\out_reg[22]_0 (dp_n_230),
        .\out_reg[23] (dp_n_200),
        .\out_reg[23]_0 (dp_n_231),
        .\out_reg[24] (dp_n_195),
        .\out_reg[24]_0 (dp_n_226),
        .\out_reg[25] (dp_n_196),
        .\out_reg[25]_0 (dp_n_227),
        .\out_reg[26] (dp_n_197),
        .\out_reg[26]_0 (dp_n_228),
        .\out_reg[27] (dp_n_193),
        .\out_reg[27]_0 (dp_n_223),
        .\out_reg[28] (dp_n_194),
        .\out_reg[28]_0 (dp_n_224),
        .\out_reg[29] (dp_n_208),
        .\out_reg[29]_0 (dp_n_225),
        .\out_reg[29]_1 ({signimmE[31],signimmE[10:1]}),
        .\out_reg[2] ({memtoregM,memwrite_OBUF,regwriteM}),
        .\out_reg[2]_0 (dp_n_250),
        .\out_reg[2]_1 (dp_n_217),
        .\out_reg[30] (dp_n_207),
        .\out_reg[30]_0 (dp_n_221),
        .\out_reg[30]_1 (srcaE),
        .\out_reg[30]_2 (srcbE),
        .\out_reg[31] (dp_n_192),
        .\out_reg[31]_0 (dp_n_222),
        .\out_reg[3] (dp_n_247),
        .\out_reg[3]_0 (dp_n_215),
        .\out_reg[4] (dp_n_248),
        .\out_reg[4]_0 (dp_n_216),
        .\out_reg[4]_1 (rtE),
        .\out_reg[5] (dp_n_206),
        .\out_reg[5]_0 (dp_n_249),
        .\out_reg[6] (dp_n_244),
        .\out_reg[6]_0 (dp_n_212),
        .\out_reg[7] (dp_n_245),
        .\out_reg[7]_0 (dp_n_213),
        .\out_reg[8] (dp_n_246),
        .\out_reg[8]_0 (dp_n_214),
        .\out_reg[9] (dp_n_241),
        .\out_reg[9]_0 (dp_n_209),
        .\q[31]_i_7 ({instrD[22],instrD[17]}),
        .\q_reg[1] (c_n_47),
        .\q_reg[1]_0 (c_n_48),
        .\q_reg[1]_1 (c_n_49),
        .\q_reg[1]_10 (c_n_58),
        .\q_reg[1]_11 (c_n_59),
        .\q_reg[1]_12 (c_n_60),
        .\q_reg[1]_2 (c_n_50),
        .\q_reg[1]_3 (c_n_51),
        .\q_reg[1]_4 (c_n_52),
        .\q_reg[1]_5 (c_n_53),
        .\q_reg[1]_6 (c_n_54),
        .\q_reg[1]_7 (c_n_55),
        .\q_reg[1]_8 (c_n_56),
        .\q_reg[1]_9 (c_n_57),
        .\q_reg[2] (c_n_61),
        .\q_reg[3] (c_n_46),
        .\q_reg[4] (c_n_44),
        .\q_reg[4]_0 (c_n_45),
        .\q_reg[8] ({memtoregE,alusrcE,regwriteE,alucontrolE,jumpE}),
        .\q_reg[8]_0 (p_0_in),
        .rdE(rdE),
        .rtE1(rtE1));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  datapath dp
       (.AR(reset_IBUF),
        .CLK(clk_IBUF_BUFG),
        .CO(\alu/data4 ),
        .D(readdata_IBUF),
        .Q(pc_OBUF),
        .aluoutE1(aluoutE1),
        .data1(\alu/data1 ),
        .flushD_OBUF(flushD_OBUF),
        .forwardAD32_in(\haz/forwardAD32_in ),
        .forwardBD30_in(\haz/forwardBD30_in ),
        .instr_IBUF(instr_IBUF),
        .\out_reg[0] (c_n_61),
        .\out_reg[16] (c_n_58),
        .\out_reg[17] (c_n_59),
        .\out_reg[18] (c_n_55),
        .\out_reg[19] (c_n_56),
        .\out_reg[20] (c_n_57),
        .\out_reg[21] (c_n_52),
        .\out_reg[22] (c_n_53),
        .\out_reg[23] (c_n_54),
        .\out_reg[24] (c_n_49),
        .\out_reg[25] (c_n_50),
        .\out_reg[26] (c_n_51),
        .\out_reg[27] (c_n_47),
        .\out_reg[28] (c_n_48),
        .\out_reg[31] (aluout_OBUF),
        .\out_reg[31]_0 (writedata_OBUF),
        .\out_reg[31]_1 (c_n_46),
        .\out_reg[4] (writeregE),
        .\out_reg[5] (c_n_60),
        .\q[31]_i_3 (c_n_44),
        .\q[31]_i_5 ({memtoregM,regwriteM}),
        .\q[31]_i_8__0 (c_n_45),
        .\q_reg[0] (dp_n_193),
        .\q_reg[0]_0 (dp_n_194),
        .\q_reg[0]_1 (dp_n_195),
        .\q_reg[0]_10 (dp_n_204),
        .\q_reg[0]_11 (dp_n_205),
        .\q_reg[0]_12 (dp_n_206),
        .\q_reg[0]_13 ({memtoregE,alusrcE,regwriteE,alucontrolE,jumpE}),
        .\q_reg[0]_2 (dp_n_196),
        .\q_reg[0]_3 (dp_n_197),
        .\q_reg[0]_4 (dp_n_198),
        .\q_reg[0]_5 (dp_n_199),
        .\q_reg[0]_6 (dp_n_200),
        .\q_reg[0]_7 (dp_n_201),
        .\q_reg[0]_8 (dp_n_202),
        .\q_reg[0]_9 (dp_n_203),
        .\q_reg[1] (dp_n_192),
        .\q_reg[1]_0 (dp_n_209),
        .\q_reg[1]_1 (dp_n_210),
        .\q_reg[1]_10 (dp_n_219),
        .\q_reg[1]_11 (dp_n_221),
        .\q_reg[1]_12 (dp_n_222),
        .\q_reg[1]_13 (dp_n_223),
        .\q_reg[1]_14 (dp_n_224),
        .\q_reg[1]_15 (dp_n_225),
        .\q_reg[1]_16 (dp_n_226),
        .\q_reg[1]_17 (dp_n_227),
        .\q_reg[1]_18 (dp_n_228),
        .\q_reg[1]_19 (dp_n_229),
        .\q_reg[1]_2 (dp_n_211),
        .\q_reg[1]_20 (dp_n_230),
        .\q_reg[1]_21 (dp_n_231),
        .\q_reg[1]_22 (dp_n_232),
        .\q_reg[1]_23 (dp_n_233),
        .\q_reg[1]_24 (dp_n_234),
        .\q_reg[1]_25 (dp_n_235),
        .\q_reg[1]_26 (dp_n_236),
        .\q_reg[1]_27 (dp_n_237),
        .\q_reg[1]_28 (dp_n_238),
        .\q_reg[1]_29 (dp_n_239),
        .\q_reg[1]_3 (dp_n_212),
        .\q_reg[1]_30 (dp_n_240),
        .\q_reg[1]_31 (dp_n_241),
        .\q_reg[1]_32 (dp_n_242),
        .\q_reg[1]_33 (dp_n_243),
        .\q_reg[1]_34 (dp_n_244),
        .\q_reg[1]_35 (dp_n_245),
        .\q_reg[1]_36 (dp_n_246),
        .\q_reg[1]_37 (dp_n_247),
        .\q_reg[1]_38 (dp_n_248),
        .\q_reg[1]_39 (dp_n_249),
        .\q_reg[1]_4 (dp_n_213),
        .\q_reg[1]_40 (dp_n_250),
        .\q_reg[1]_41 (dp_n_251),
        .\q_reg[1]_42 (dp_n_253),
        .\q_reg[1]_43 (dp_n_254),
        .\q_reg[1]_44 (dp_n_255),
        .\q_reg[1]_45 (dp_n_256),
        .\q_reg[1]_5 (dp_n_214),
        .\q_reg[1]_6 (dp_n_215),
        .\q_reg[1]_7 (dp_n_216),
        .\q_reg[1]_8 (dp_n_217),
        .\q_reg[1]_9 (dp_n_218),
        .\q_reg[22] ({instrD[22],instrD[17]}),
        .\q_reg[29] (p_0_in),
        .\q_reg[2] (dp_n_208),
        .\q_reg[2]_0 (dp_n_220),
        .\q_reg[30] (srcaE),
        .\q_reg[30]_0 (srcbE),
        .\q_reg[31] ({signimmE[31],signimmE[10:1]}),
        .\q_reg[31]_0 (dp_n_207),
        .\q_reg[31]_1 (pcplus4E),
        .\q_reg[4] (rtE),
        .rdE(rdE),
        .rf_reg_r1_0_31_0_5({memtoregW,regwriteW}),
        .rtE1(rtE1),
        .stallD_OBUF(stallD_OBUF));
  OBUF flushD_OBUF_inst
       (.I(flushD_OBUF),
        .O(flushD));
  IBUF \instr_IBUF[0]_inst 
       (.I(instr[0]),
        .O(instr_IBUF[0]));
  IBUF \instr_IBUF[10]_inst 
       (.I(instr[10]),
        .O(instr_IBUF[10]));
  IBUF \instr_IBUF[11]_inst 
       (.I(instr[11]),
        .O(instr_IBUF[11]));
  IBUF \instr_IBUF[12]_inst 
       (.I(instr[12]),
        .O(instr_IBUF[12]));
  IBUF \instr_IBUF[13]_inst 
       (.I(instr[13]),
        .O(instr_IBUF[13]));
  IBUF \instr_IBUF[14]_inst 
       (.I(instr[14]),
        .O(instr_IBUF[14]));
  IBUF \instr_IBUF[15]_inst 
       (.I(instr[15]),
        .O(instr_IBUF[15]));
  IBUF \instr_IBUF[16]_inst 
       (.I(instr[16]),
        .O(instr_IBUF[16]));
  IBUF \instr_IBUF[17]_inst 
       (.I(instr[17]),
        .O(instr_IBUF[17]));
  IBUF \instr_IBUF[18]_inst 
       (.I(instr[18]),
        .O(instr_IBUF[18]));
  IBUF \instr_IBUF[19]_inst 
       (.I(instr[19]),
        .O(instr_IBUF[19]));
  IBUF \instr_IBUF[1]_inst 
       (.I(instr[1]),
        .O(instr_IBUF[1]));
  IBUF \instr_IBUF[20]_inst 
       (.I(instr[20]),
        .O(instr_IBUF[20]));
  IBUF \instr_IBUF[21]_inst 
       (.I(instr[21]),
        .O(instr_IBUF[21]));
  IBUF \instr_IBUF[22]_inst 
       (.I(instr[22]),
        .O(instr_IBUF[22]));
  IBUF \instr_IBUF[23]_inst 
       (.I(instr[23]),
        .O(instr_IBUF[23]));
  IBUF \instr_IBUF[24]_inst 
       (.I(instr[24]),
        .O(instr_IBUF[24]));
  IBUF \instr_IBUF[25]_inst 
       (.I(instr[25]),
        .O(instr_IBUF[25]));
  IBUF \instr_IBUF[26]_inst 
       (.I(instr[26]),
        .O(instr_IBUF[26]));
  IBUF \instr_IBUF[27]_inst 
       (.I(instr[27]),
        .O(instr_IBUF[27]));
  IBUF \instr_IBUF[28]_inst 
       (.I(instr[28]),
        .O(instr_IBUF[28]));
  IBUF \instr_IBUF[29]_inst 
       (.I(instr[29]),
        .O(instr_IBUF[29]));
  IBUF \instr_IBUF[2]_inst 
       (.I(instr[2]),
        .O(instr_IBUF[2]));
  IBUF \instr_IBUF[30]_inst 
       (.I(instr[30]),
        .O(instr_IBUF[30]));
  IBUF \instr_IBUF[31]_inst 
       (.I(instr[31]),
        .O(instr_IBUF[31]));
  IBUF \instr_IBUF[3]_inst 
       (.I(instr[3]),
        .O(instr_IBUF[3]));
  IBUF \instr_IBUF[4]_inst 
       (.I(instr[4]),
        .O(instr_IBUF[4]));
  IBUF \instr_IBUF[5]_inst 
       (.I(instr[5]),
        .O(instr_IBUF[5]));
  IBUF \instr_IBUF[6]_inst 
       (.I(instr[6]),
        .O(instr_IBUF[6]));
  IBUF \instr_IBUF[7]_inst 
       (.I(instr[7]),
        .O(instr_IBUF[7]));
  IBUF \instr_IBUF[8]_inst 
       (.I(instr[8]),
        .O(instr_IBUF[8]));
  IBUF \instr_IBUF[9]_inst 
       (.I(instr[9]),
        .O(instr_IBUF[9]));
  OBUF memwrite_OBUF_inst
       (.I(memwrite_OBUF),
        .O(memwrite));
  OBUF \pc_OBUF[0]_inst 
       (.I(pc_OBUF[0]),
        .O(pc[0]));
  OBUF \pc_OBUF[10]_inst 
       (.I(pc_OBUF[10]),
        .O(pc[10]));
  OBUF \pc_OBUF[11]_inst 
       (.I(pc_OBUF[11]),
        .O(pc[11]));
  OBUF \pc_OBUF[12]_inst 
       (.I(pc_OBUF[12]),
        .O(pc[12]));
  OBUF \pc_OBUF[13]_inst 
       (.I(pc_OBUF[13]),
        .O(pc[13]));
  OBUF \pc_OBUF[14]_inst 
       (.I(pc_OBUF[14]),
        .O(pc[14]));
  OBUF \pc_OBUF[15]_inst 
       (.I(pc_OBUF[15]),
        .O(pc[15]));
  OBUF \pc_OBUF[16]_inst 
       (.I(pc_OBUF[16]),
        .O(pc[16]));
  OBUF \pc_OBUF[17]_inst 
       (.I(pc_OBUF[17]),
        .O(pc[17]));
  OBUF \pc_OBUF[18]_inst 
       (.I(pc_OBUF[18]),
        .O(pc[18]));
  OBUF \pc_OBUF[19]_inst 
       (.I(pc_OBUF[19]),
        .O(pc[19]));
  OBUF \pc_OBUF[1]_inst 
       (.I(pc_OBUF[1]),
        .O(pc[1]));
  OBUF \pc_OBUF[20]_inst 
       (.I(pc_OBUF[20]),
        .O(pc[20]));
  OBUF \pc_OBUF[21]_inst 
       (.I(pc_OBUF[21]),
        .O(pc[21]));
  OBUF \pc_OBUF[22]_inst 
       (.I(pc_OBUF[22]),
        .O(pc[22]));
  OBUF \pc_OBUF[23]_inst 
       (.I(pc_OBUF[23]),
        .O(pc[23]));
  OBUF \pc_OBUF[24]_inst 
       (.I(pc_OBUF[24]),
        .O(pc[24]));
  OBUF \pc_OBUF[25]_inst 
       (.I(pc_OBUF[25]),
        .O(pc[25]));
  OBUF \pc_OBUF[26]_inst 
       (.I(pc_OBUF[26]),
        .O(pc[26]));
  OBUF \pc_OBUF[27]_inst 
       (.I(pc_OBUF[27]),
        .O(pc[27]));
  OBUF \pc_OBUF[28]_inst 
       (.I(pc_OBUF[28]),
        .O(pc[28]));
  OBUF \pc_OBUF[29]_inst 
       (.I(pc_OBUF[29]),
        .O(pc[29]));
  OBUF \pc_OBUF[2]_inst 
       (.I(pc_OBUF[2]),
        .O(pc[2]));
  OBUF \pc_OBUF[30]_inst 
       (.I(pc_OBUF[30]),
        .O(pc[30]));
  OBUF \pc_OBUF[31]_inst 
       (.I(pc_OBUF[31]),
        .O(pc[31]));
  OBUF \pc_OBUF[3]_inst 
       (.I(pc_OBUF[3]),
        .O(pc[3]));
  OBUF \pc_OBUF[4]_inst 
       (.I(pc_OBUF[4]),
        .O(pc[4]));
  OBUF \pc_OBUF[5]_inst 
       (.I(pc_OBUF[5]),
        .O(pc[5]));
  OBUF \pc_OBUF[6]_inst 
       (.I(pc_OBUF[6]),
        .O(pc[6]));
  OBUF \pc_OBUF[7]_inst 
       (.I(pc_OBUF[7]),
        .O(pc[7]));
  OBUF \pc_OBUF[8]_inst 
       (.I(pc_OBUF[8]),
        .O(pc[8]));
  OBUF \pc_OBUF[9]_inst 
       (.I(pc_OBUF[9]),
        .O(pc[9]));
  IBUF \readdata_IBUF[0]_inst 
       (.I(readdata[0]),
        .O(readdata_IBUF[0]));
  IBUF \readdata_IBUF[10]_inst 
       (.I(readdata[10]),
        .O(readdata_IBUF[10]));
  IBUF \readdata_IBUF[11]_inst 
       (.I(readdata[11]),
        .O(readdata_IBUF[11]));
  IBUF \readdata_IBUF[12]_inst 
       (.I(readdata[12]),
        .O(readdata_IBUF[12]));
  IBUF \readdata_IBUF[13]_inst 
       (.I(readdata[13]),
        .O(readdata_IBUF[13]));
  IBUF \readdata_IBUF[14]_inst 
       (.I(readdata[14]),
        .O(readdata_IBUF[14]));
  IBUF \readdata_IBUF[15]_inst 
       (.I(readdata[15]),
        .O(readdata_IBUF[15]));
  IBUF \readdata_IBUF[16]_inst 
       (.I(readdata[16]),
        .O(readdata_IBUF[16]));
  IBUF \readdata_IBUF[17]_inst 
       (.I(readdata[17]),
        .O(readdata_IBUF[17]));
  IBUF \readdata_IBUF[18]_inst 
       (.I(readdata[18]),
        .O(readdata_IBUF[18]));
  IBUF \readdata_IBUF[19]_inst 
       (.I(readdata[19]),
        .O(readdata_IBUF[19]));
  IBUF \readdata_IBUF[1]_inst 
       (.I(readdata[1]),
        .O(readdata_IBUF[1]));
  IBUF \readdata_IBUF[20]_inst 
       (.I(readdata[20]),
        .O(readdata_IBUF[20]));
  IBUF \readdata_IBUF[21]_inst 
       (.I(readdata[21]),
        .O(readdata_IBUF[21]));
  IBUF \readdata_IBUF[22]_inst 
       (.I(readdata[22]),
        .O(readdata_IBUF[22]));
  IBUF \readdata_IBUF[23]_inst 
       (.I(readdata[23]),
        .O(readdata_IBUF[23]));
  IBUF \readdata_IBUF[24]_inst 
       (.I(readdata[24]),
        .O(readdata_IBUF[24]));
  IBUF \readdata_IBUF[25]_inst 
       (.I(readdata[25]),
        .O(readdata_IBUF[25]));
  IBUF \readdata_IBUF[26]_inst 
       (.I(readdata[26]),
        .O(readdata_IBUF[26]));
  IBUF \readdata_IBUF[27]_inst 
       (.I(readdata[27]),
        .O(readdata_IBUF[27]));
  IBUF \readdata_IBUF[28]_inst 
       (.I(readdata[28]),
        .O(readdata_IBUF[28]));
  IBUF \readdata_IBUF[29]_inst 
       (.I(readdata[29]),
        .O(readdata_IBUF[29]));
  IBUF \readdata_IBUF[2]_inst 
       (.I(readdata[2]),
        .O(readdata_IBUF[2]));
  IBUF \readdata_IBUF[30]_inst 
       (.I(readdata[30]),
        .O(readdata_IBUF[30]));
  IBUF \readdata_IBUF[31]_inst 
       (.I(readdata[31]),
        .O(readdata_IBUF[31]));
  IBUF \readdata_IBUF[3]_inst 
       (.I(readdata[3]),
        .O(readdata_IBUF[3]));
  IBUF \readdata_IBUF[4]_inst 
       (.I(readdata[4]),
        .O(readdata_IBUF[4]));
  IBUF \readdata_IBUF[5]_inst 
       (.I(readdata[5]),
        .O(readdata_IBUF[5]));
  IBUF \readdata_IBUF[6]_inst 
       (.I(readdata[6]),
        .O(readdata_IBUF[6]));
  IBUF \readdata_IBUF[7]_inst 
       (.I(readdata[7]),
        .O(readdata_IBUF[7]));
  IBUF \readdata_IBUF[8]_inst 
       (.I(readdata[8]),
        .O(readdata_IBUF[8]));
  IBUF \readdata_IBUF[9]_inst 
       (.I(readdata[9]),
        .O(readdata_IBUF[9]));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  OBUF stallD_OBUF_inst
       (.I(stallD_OBUF),
        .O(stallD));
  OBUF \writedata_OBUF[0]_inst 
       (.I(writedata_OBUF[0]),
        .O(writedata[0]));
  OBUF \writedata_OBUF[10]_inst 
       (.I(writedata_OBUF[10]),
        .O(writedata[10]));
  OBUF \writedata_OBUF[11]_inst 
       (.I(writedata_OBUF[11]),
        .O(writedata[11]));
  OBUF \writedata_OBUF[12]_inst 
       (.I(writedata_OBUF[12]),
        .O(writedata[12]));
  OBUF \writedata_OBUF[13]_inst 
       (.I(writedata_OBUF[13]),
        .O(writedata[13]));
  OBUF \writedata_OBUF[14]_inst 
       (.I(writedata_OBUF[14]),
        .O(writedata[14]));
  OBUF \writedata_OBUF[15]_inst 
       (.I(writedata_OBUF[15]),
        .O(writedata[15]));
  OBUF \writedata_OBUF[16]_inst 
       (.I(writedata_OBUF[16]),
        .O(writedata[16]));
  OBUF \writedata_OBUF[17]_inst 
       (.I(writedata_OBUF[17]),
        .O(writedata[17]));
  OBUF \writedata_OBUF[18]_inst 
       (.I(writedata_OBUF[18]),
        .O(writedata[18]));
  OBUF \writedata_OBUF[19]_inst 
       (.I(writedata_OBUF[19]),
        .O(writedata[19]));
  OBUF \writedata_OBUF[1]_inst 
       (.I(writedata_OBUF[1]),
        .O(writedata[1]));
  OBUF \writedata_OBUF[20]_inst 
       (.I(writedata_OBUF[20]),
        .O(writedata[20]));
  OBUF \writedata_OBUF[21]_inst 
       (.I(writedata_OBUF[21]),
        .O(writedata[21]));
  OBUF \writedata_OBUF[22]_inst 
       (.I(writedata_OBUF[22]),
        .O(writedata[22]));
  OBUF \writedata_OBUF[23]_inst 
       (.I(writedata_OBUF[23]),
        .O(writedata[23]));
  OBUF \writedata_OBUF[24]_inst 
       (.I(writedata_OBUF[24]),
        .O(writedata[24]));
  OBUF \writedata_OBUF[25]_inst 
       (.I(writedata_OBUF[25]),
        .O(writedata[25]));
  OBUF \writedata_OBUF[26]_inst 
       (.I(writedata_OBUF[26]),
        .O(writedata[26]));
  OBUF \writedata_OBUF[27]_inst 
       (.I(writedata_OBUF[27]),
        .O(writedata[27]));
  OBUF \writedata_OBUF[28]_inst 
       (.I(writedata_OBUF[28]),
        .O(writedata[28]));
  OBUF \writedata_OBUF[29]_inst 
       (.I(writedata_OBUF[29]),
        .O(writedata[29]));
  OBUF \writedata_OBUF[2]_inst 
       (.I(writedata_OBUF[2]),
        .O(writedata[2]));
  OBUF \writedata_OBUF[30]_inst 
       (.I(writedata_OBUF[30]),
        .O(writedata[30]));
  OBUF \writedata_OBUF[31]_inst 
       (.I(writedata_OBUF[31]),
        .O(writedata[31]));
  OBUF \writedata_OBUF[3]_inst 
       (.I(writedata_OBUF[3]),
        .O(writedata[3]));
  OBUF \writedata_OBUF[4]_inst 
       (.I(writedata_OBUF[4]),
        .O(writedata[4]));
  OBUF \writedata_OBUF[5]_inst 
       (.I(writedata_OBUF[5]),
        .O(writedata[5]));
  OBUF \writedata_OBUF[6]_inst 
       (.I(writedata_OBUF[6]),
        .O(writedata[6]));
  OBUF \writedata_OBUF[7]_inst 
       (.I(writedata_OBUF[7]),
        .O(writedata[7]));
  OBUF \writedata_OBUF[8]_inst 
       (.I(writedata_OBUF[8]),
        .O(writedata[8]));
  OBUF \writedata_OBUF[9]_inst 
       (.I(writedata_OBUF[9]),
        .O(writedata[9]));
endmodule

module mux2
   (wd3,
    Q,
    rf_reg_r1_0_31_30_31,
    rf_reg_r1_0_31_0_5);
  output [31:0]wd3;
  input [31:0]Q;
  input [31:0]rf_reg_r1_0_31_30_31;
  input [0:0]rf_reg_r1_0_31_0_5;

  wire [31:0]Q;
  wire [0:0]rf_reg_r1_0_31_0_5;
  wire [31:0]rf_reg_r1_0_31_30_31;
  wire [31:0]wd3;

  LUT3 #(
    .INIT(8'hAC)) 
    rf_reg_r1_0_31_0_5_i_2
       (.I0(Q[1]),
        .I1(rf_reg_r1_0_31_30_31[1]),
        .I2(rf_reg_r1_0_31_0_5),
        .O(wd3[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    rf_reg_r1_0_31_0_5_i_3
       (.I0(Q[0]),
        .I1(rf_reg_r1_0_31_30_31[0]),
        .I2(rf_reg_r1_0_31_0_5),
        .O(wd3[0]));
  LUT3 #(
    .INIT(8'hAC)) 
    rf_reg_r1_0_31_0_5_i_4
       (.I0(Q[3]),
        .I1(rf_reg_r1_0_31_30_31[3]),
        .I2(rf_reg_r1_0_31_0_5),
        .O(wd3[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    rf_reg_r1_0_31_0_5_i_5
       (.I0(Q[2]),
        .I1(rf_reg_r1_0_31_30_31[2]),
        .I2(rf_reg_r1_0_31_0_5),
        .O(wd3[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    rf_reg_r1_0_31_0_5_i_6
       (.I0(Q[5]),
        .I1(rf_reg_r1_0_31_30_31[5]),
        .I2(rf_reg_r1_0_31_0_5),
        .O(wd3[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    rf_reg_r1_0_31_0_5_i_7
       (.I0(Q[4]),
        .I1(rf_reg_r1_0_31_30_31[4]),
        .I2(rf_reg_r1_0_31_0_5),
        .O(wd3[4]));
  LUT3 #(
    .INIT(8'hAC)) 
    rf_reg_r1_0_31_12_17_i_1
       (.I0(Q[13]),
        .I1(rf_reg_r1_0_31_30_31[13]),
        .I2(rf_reg_r1_0_31_0_5),
        .O(wd3[13]));
  LUT3 #(
    .INIT(8'hAC)) 
    rf_reg_r1_0_31_12_17_i_2
       (.I0(Q[12]),
        .I1(rf_reg_r1_0_31_30_31[12]),
        .I2(rf_reg_r1_0_31_0_5),
        .O(wd3[12]));
  LUT3 #(
    .INIT(8'hAC)) 
    rf_reg_r1_0_31_12_17_i_3
       (.I0(Q[15]),
        .I1(rf_reg_r1_0_31_30_31[15]),
        .I2(rf_reg_r1_0_31_0_5),
        .O(wd3[15]));
  LUT3 #(
    .INIT(8'hAC)) 
    rf_reg_r1_0_31_12_17_i_4
       (.I0(Q[14]),
        .I1(rf_reg_r1_0_31_30_31[14]),
        .I2(rf_reg_r1_0_31_0_5),
        .O(wd3[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    rf_reg_r1_0_31_12_17_i_5
       (.I0(Q[17]),
        .I1(rf_reg_r1_0_31_30_31[17]),
        .I2(rf_reg_r1_0_31_0_5),
        .O(wd3[17]));
  LUT3 #(
    .INIT(8'hAC)) 
    rf_reg_r1_0_31_12_17_i_6
       (.I0(Q[16]),
        .I1(rf_reg_r1_0_31_30_31[16]),
        .I2(rf_reg_r1_0_31_0_5),
        .O(wd3[16]));
  LUT3 #(
    .INIT(8'hAC)) 
    rf_reg_r1_0_31_18_23_i_1
       (.I0(Q[19]),
        .I1(rf_reg_r1_0_31_30_31[19]),
        .I2(rf_reg_r1_0_31_0_5),
        .O(wd3[19]));
  LUT3 #(
    .INIT(8'hAC)) 
    rf_reg_r1_0_31_18_23_i_2
       (.I0(Q[18]),
        .I1(rf_reg_r1_0_31_30_31[18]),
        .I2(rf_reg_r1_0_31_0_5),
        .O(wd3[18]));
  LUT3 #(
    .INIT(8'hAC)) 
    rf_reg_r1_0_31_18_23_i_3
       (.I0(Q[21]),
        .I1(rf_reg_r1_0_31_30_31[21]),
        .I2(rf_reg_r1_0_31_0_5),
        .O(wd3[21]));
  LUT3 #(
    .INIT(8'hAC)) 
    rf_reg_r1_0_31_18_23_i_4
       (.I0(Q[20]),
        .I1(rf_reg_r1_0_31_30_31[20]),
        .I2(rf_reg_r1_0_31_0_5),
        .O(wd3[20]));
  LUT3 #(
    .INIT(8'hAC)) 
    rf_reg_r1_0_31_18_23_i_5
       (.I0(Q[23]),
        .I1(rf_reg_r1_0_31_30_31[23]),
        .I2(rf_reg_r1_0_31_0_5),
        .O(wd3[23]));
  LUT3 #(
    .INIT(8'hAC)) 
    rf_reg_r1_0_31_18_23_i_6
       (.I0(Q[22]),
        .I1(rf_reg_r1_0_31_30_31[22]),
        .I2(rf_reg_r1_0_31_0_5),
        .O(wd3[22]));
  LUT3 #(
    .INIT(8'hAC)) 
    rf_reg_r1_0_31_24_29_i_1
       (.I0(Q[25]),
        .I1(rf_reg_r1_0_31_30_31[25]),
        .I2(rf_reg_r1_0_31_0_5),
        .O(wd3[25]));
  LUT3 #(
    .INIT(8'hAC)) 
    rf_reg_r1_0_31_24_29_i_2
       (.I0(Q[24]),
        .I1(rf_reg_r1_0_31_30_31[24]),
        .I2(rf_reg_r1_0_31_0_5),
        .O(wd3[24]));
  LUT3 #(
    .INIT(8'hAC)) 
    rf_reg_r1_0_31_24_29_i_3
       (.I0(Q[27]),
        .I1(rf_reg_r1_0_31_30_31[27]),
        .I2(rf_reg_r1_0_31_0_5),
        .O(wd3[27]));
  LUT3 #(
    .INIT(8'hAC)) 
    rf_reg_r1_0_31_24_29_i_4
       (.I0(Q[26]),
        .I1(rf_reg_r1_0_31_30_31[26]),
        .I2(rf_reg_r1_0_31_0_5),
        .O(wd3[26]));
  LUT3 #(
    .INIT(8'hAC)) 
    rf_reg_r1_0_31_24_29_i_5
       (.I0(Q[29]),
        .I1(rf_reg_r1_0_31_30_31[29]),
        .I2(rf_reg_r1_0_31_0_5),
        .O(wd3[29]));
  LUT3 #(
    .INIT(8'hAC)) 
    rf_reg_r1_0_31_24_29_i_6
       (.I0(Q[28]),
        .I1(rf_reg_r1_0_31_30_31[28]),
        .I2(rf_reg_r1_0_31_0_5),
        .O(wd3[28]));
  LUT3 #(
    .INIT(8'hAC)) 
    rf_reg_r1_0_31_30_31_i_1
       (.I0(Q[31]),
        .I1(rf_reg_r1_0_31_30_31[31]),
        .I2(rf_reg_r1_0_31_0_5),
        .O(wd3[31]));
  LUT3 #(
    .INIT(8'hAC)) 
    rf_reg_r1_0_31_30_31_i_2
       (.I0(Q[30]),
        .I1(rf_reg_r1_0_31_30_31[30]),
        .I2(rf_reg_r1_0_31_0_5),
        .O(wd3[30]));
  LUT3 #(
    .INIT(8'hAC)) 
    rf_reg_r1_0_31_6_11_i_1
       (.I0(Q[7]),
        .I1(rf_reg_r1_0_31_30_31[7]),
        .I2(rf_reg_r1_0_31_0_5),
        .O(wd3[7]));
  LUT3 #(
    .INIT(8'hAC)) 
    rf_reg_r1_0_31_6_11_i_2
       (.I0(Q[6]),
        .I1(rf_reg_r1_0_31_30_31[6]),
        .I2(rf_reg_r1_0_31_0_5),
        .O(wd3[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    rf_reg_r1_0_31_6_11_i_3
       (.I0(Q[9]),
        .I1(rf_reg_r1_0_31_30_31[9]),
        .I2(rf_reg_r1_0_31_0_5),
        .O(wd3[9]));
  LUT3 #(
    .INIT(8'hAC)) 
    rf_reg_r1_0_31_6_11_i_4
       (.I0(Q[8]),
        .I1(rf_reg_r1_0_31_30_31[8]),
        .I2(rf_reg_r1_0_31_0_5),
        .O(wd3[8]));
  LUT3 #(
    .INIT(8'hAC)) 
    rf_reg_r1_0_31_6_11_i_5
       (.I0(Q[11]),
        .I1(rf_reg_r1_0_31_30_31[11]),
        .I2(rf_reg_r1_0_31_0_5),
        .O(wd3[11]));
  LUT3 #(
    .INIT(8'hAC)) 
    rf_reg_r1_0_31_6_11_i_6
       (.I0(Q[10]),
        .I1(rf_reg_r1_0_31_30_31[10]),
        .I2(rf_reg_r1_0_31_0_5),
        .O(wd3[10]));
endmodule

module regfile
   (rd10,
    rd20,
    \q[30]_i_2__0 ,
    wd3,
    Q,
    eq_carry_i_10,
    CLK);
  output [31:0]rd10;
  output [31:0]rd20;
  input [0:0]\q[30]_i_2__0 ;
  input [31:0]wd3;
  input [9:0]Q;
  input [4:0]eq_carry_i_10;
  input CLK;

  wire CLK;
  wire [9:0]Q;
  wire [4:0]eq_carry_i_10;
  wire [0:0]\q[30]_i_2__0 ;
  wire [31:0]rd10;
  wire [31:0]rd20;
  wire [31:0]wd3;
  wire [1:0]NLW_rf_reg_r1_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_6_11_DOD_UNCONNECTED;

  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M_UNIQ_BASE_ rf_reg_r1_0_31_0_5
       (.ADDRA(Q[9:5]),
        .ADDRB(Q[9:5]),
        .ADDRC(Q[9:5]),
        .ADDRD(eq_carry_i_10),
        .DIA(wd3[1:0]),
        .DIB(wd3[3:2]),
        .DIC(wd3[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[1:0]),
        .DOB(rd10[3:2]),
        .DOC(rd10[5:4]),
        .DOD(NLW_rf_reg_r1_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(\q[30]_i_2__0 ));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M_HD1 rf_reg_r1_0_31_12_17
       (.ADDRA(Q[9:5]),
        .ADDRB(Q[9:5]),
        .ADDRC(Q[9:5]),
        .ADDRD(eq_carry_i_10),
        .DIA(wd3[13:12]),
        .DIB(wd3[15:14]),
        .DIC(wd3[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[13:12]),
        .DOB(rd10[15:14]),
        .DOC(rd10[17:16]),
        .DOD(NLW_rf_reg_r1_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(\q[30]_i_2__0 ));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M_HD2 rf_reg_r1_0_31_18_23
       (.ADDRA(Q[9:5]),
        .ADDRB(Q[9:5]),
        .ADDRC(Q[9:5]),
        .ADDRD(eq_carry_i_10),
        .DIA(wd3[19:18]),
        .DIB(wd3[21:20]),
        .DIC(wd3[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[19:18]),
        .DOB(rd10[21:20]),
        .DOC(rd10[23:22]),
        .DOD(NLW_rf_reg_r1_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(\q[30]_i_2__0 ));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M_HD3 rf_reg_r1_0_31_24_29
       (.ADDRA(Q[9:5]),
        .ADDRB(Q[9:5]),
        .ADDRC(Q[9:5]),
        .ADDRD(eq_carry_i_10),
        .DIA(wd3[25:24]),
        .DIB(wd3[27:26]),
        .DIC(wd3[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[25:24]),
        .DOB(rd10[27:26]),
        .DOC(rd10[29:28]),
        .DOD(NLW_rf_reg_r1_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(\q[30]_i_2__0 ));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32M_HD4 rf_reg_r1_0_31_30_31
       (.ADDRA(Q[9:5]),
        .ADDRB(Q[9:5]),
        .ADDRC(Q[9:5]),
        .ADDRD(eq_carry_i_10),
        .DIA(wd3[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(rd10[31:30]),
        .DOB(NLW_rf_reg_r1_0_31_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_rf_reg_r1_0_31_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_rf_reg_r1_0_31_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(\q[30]_i_2__0 ));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M_HD5 rf_reg_r1_0_31_6_11
       (.ADDRA(Q[9:5]),
        .ADDRB(Q[9:5]),
        .ADDRC(Q[9:5]),
        .ADDRD(eq_carry_i_10),
        .DIA(wd3[7:6]),
        .DIB(wd3[9:8]),
        .DIC(wd3[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[7:6]),
        .DOB(rd10[9:8]),
        .DOC(rd10[11:10]),
        .DOD(NLW_rf_reg_r1_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(\q[30]_i_2__0 ));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M_HD6 rf_reg_r2_0_31_0_5
       (.ADDRA(Q[4:0]),
        .ADDRB(Q[4:0]),
        .ADDRC(Q[4:0]),
        .ADDRD(eq_carry_i_10),
        .DIA(wd3[1:0]),
        .DIB(wd3[3:2]),
        .DIC(wd3[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[1:0]),
        .DOB(rd20[3:2]),
        .DOC(rd20[5:4]),
        .DOD(NLW_rf_reg_r2_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(\q[30]_i_2__0 ));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M_HD7 rf_reg_r2_0_31_12_17
       (.ADDRA(Q[4:0]),
        .ADDRB(Q[4:0]),
        .ADDRC(Q[4:0]),
        .ADDRD(eq_carry_i_10),
        .DIA(wd3[13:12]),
        .DIB(wd3[15:14]),
        .DIC(wd3[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[13:12]),
        .DOB(rd20[15:14]),
        .DOC(rd20[17:16]),
        .DOD(NLW_rf_reg_r2_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(\q[30]_i_2__0 ));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M_HD8 rf_reg_r2_0_31_18_23
       (.ADDRA(Q[4:0]),
        .ADDRB(Q[4:0]),
        .ADDRC(Q[4:0]),
        .ADDRD(eq_carry_i_10),
        .DIA(wd3[19:18]),
        .DIB(wd3[21:20]),
        .DIC(wd3[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[19:18]),
        .DOB(rd20[21:20]),
        .DOC(rd20[23:22]),
        .DOD(NLW_rf_reg_r2_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(\q[30]_i_2__0 ));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M_HD9 rf_reg_r2_0_31_24_29
       (.ADDRA(Q[4:0]),
        .ADDRB(Q[4:0]),
        .ADDRC(Q[4:0]),
        .ADDRD(eq_carry_i_10),
        .DIA(wd3[25:24]),
        .DIB(wd3[27:26]),
        .DIC(wd3[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[25:24]),
        .DOB(rd20[27:26]),
        .DOC(rd20[29:28]),
        .DOD(NLW_rf_reg_r2_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(\q[30]_i_2__0 ));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32M_HD10 rf_reg_r2_0_31_30_31
       (.ADDRA(Q[4:0]),
        .ADDRB(Q[4:0]),
        .ADDRC(Q[4:0]),
        .ADDRD(eq_carry_i_10),
        .DIA(wd3[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(rd20[31:30]),
        .DOB(NLW_rf_reg_r2_0_31_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_rf_reg_r2_0_31_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_rf_reg_r2_0_31_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(\q[30]_i_2__0 ));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M_HD11 rf_reg_r2_0_31_6_11
       (.ADDRA(Q[4:0]),
        .ADDRB(Q[4:0]),
        .ADDRC(Q[4:0]),
        .ADDRD(eq_carry_i_10),
        .DIA(wd3[7:6]),
        .DIB(wd3[9:8]),
        .DIC(wd3[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[7:6]),
        .DOB(rd20[9:8]),
        .DOC(rd20[11:10]),
        .DOD(NLW_rf_reg_r2_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(\q[30]_i_2__0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
