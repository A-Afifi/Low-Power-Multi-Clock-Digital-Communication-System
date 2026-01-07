/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Wed Oct  1 07:11:59 2025
/////////////////////////////////////////////////////////////


module mux2X1_1 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X6M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_4 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_3 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_2 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_0 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_6 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_5 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module SYS_CTRL_D_Width8_Addr_Size4_test_1 ( CLK, RST, Sync_Frame, 
        enable_pulse, Rd_D, Rd_D_Valid, Rd_En, Wr_En, Addr, Wr_D, ALU_OUT, 
        OUT_Valid, ALU_En, FUN, FIFO_FULL, WR_INC, WR_DATA, Gate_En, 
        CLK_DIV_EN, test_si, test_so, test_se );
  input [7:0] Sync_Frame;
  input [7:0] Rd_D;
  output [3:0] Addr;
  output [7:0] Wr_D;
  input [15:0] ALU_OUT;
  output [3:0] FUN;
  output [7:0] WR_DATA;
  input CLK, RST, enable_pulse, Rd_D_Valid, OUT_Valid, FIFO_FULL, test_si,
         test_se;
  output Rd_En, Wr_En, ALU_En, WR_INC, Gate_En, CLK_DIV_EN, test_so;
  wire   n40, n41, n42, n43, n44, n45, n46, n47, n50, n54, n58, n59, n60, n61,
         n62, n63, n64, n65, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n32, n33, n34, n35, n36, n37, n38, n39, n48, n49, n51,
         n52, n53, n55, n56, n57, n66, n67, n68, n70, n71, n72, n73, n74, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168;
  wire   [3:0] current_state;
  wire   [3:0] next_state;
  wire   [7:0] Stored_Frame1;
  assign test_so = current_state[3];

  SDFFRX1M \Stored_Frame2_reg[7]  ( .D(n137), .SI(n160), .SE(test_se), .CK(CLK), .RN(RST), .Q(n159), .QN(n40) );
  SDFFRX1M \Stored_Frame2_reg[6]  ( .D(n138), .SI(n161), .SE(test_se), .CK(CLK), .RN(RST), .Q(n160), .QN(n41) );
  SDFFRX1M \Stored_Frame2_reg[5]  ( .D(n139), .SI(n162), .SE(test_se), .CK(CLK), .RN(RST), .Q(n161), .QN(n42) );
  SDFFRX1M \Stored_Frame2_reg[4]  ( .D(n140), .SI(n163), .SE(test_se), .CK(CLK), .RN(RST), .Q(n162), .QN(n43) );
  SDFFRX1M \Stored_Frame3_reg[7]  ( .D(n129), .SI(n152), .SE(test_se), .CK(CLK), .RN(RST), .Q(n151), .QN(n58) );
  SDFFRX1M \Stored_Frame3_reg[6]  ( .D(n128), .SI(n153), .SE(test_se), .CK(CLK), .RN(RST), .Q(n152), .QN(n59) );
  SDFFRX1M \Stored_Frame3_reg[5]  ( .D(n127), .SI(n154), .SE(test_se), .CK(CLK), .RN(RST), .Q(n153), .QN(n60) );
  SDFFRX1M \Stored_Frame3_reg[4]  ( .D(n126), .SI(n155), .SE(test_se), .CK(CLK), .RN(RST), .Q(n154), .QN(n61) );
  SDFFRX1M \Stored_Frame3_reg[3]  ( .D(n125), .SI(n156), .SE(test_se), .CK(CLK), .RN(RST), .Q(n155), .QN(n62) );
  SDFFRX1M \Stored_Frame3_reg[2]  ( .D(n124), .SI(n157), .SE(test_se), .CK(CLK), .RN(RST), .Q(n156), .QN(n63) );
  SDFFRX1M \Stored_Frame3_reg[1]  ( .D(n123), .SI(n158), .SE(test_se), .CK(CLK), .RN(RST), .Q(n157), .QN(n64) );
  SDFFRX1M \Stored_Frame3_reg[0]  ( .D(n122), .SI(n159), .SE(test_se), .CK(CLK), .RN(RST), .Q(n158), .QN(n65) );
  SDFFRX1M \Stored_Frame1_reg[3]  ( .D(n134), .SI(n148), .SE(test_se), .CK(CLK), .RN(RST), .Q(n168), .QN(n54) );
  SDFFRQX2M \Stored_Frame1_reg[0]  ( .D(n145), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(Stored_Frame1[0]) );
  SDFFRQX2M \Stored_Frame1_reg[4]  ( .D(n133), .SI(n168), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(Stored_Frame1[4]) );
  SDFFRX1M \Stored_Frame2_reg[3]  ( .D(n141), .SI(n164), .SE(test_se), .CK(CLK), .RN(RST), .Q(n163), .QN(n44) );
  SDFFRX1M \Stored_Frame2_reg[2]  ( .D(n142), .SI(n165), .SE(test_se), .CK(CLK), .RN(RST), .Q(n164), .QN(n45) );
  SDFFRX1M \Stored_Frame2_reg[1]  ( .D(n143), .SI(n166), .SE(test_se), .CK(CLK), .RN(RST), .Q(n165), .QN(n46) );
  SDFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .SI(n151), .SE(test_se), .CK(CLK), .RN(RST), .Q(current_state[0]) );
  SDFFRQX2M \Stored_Frame1_reg[6]  ( .D(n131), .SI(Stored_Frame1[5]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(Stored_Frame1[6]) );
  SDFFRQX2M \Stored_Frame1_reg[5]  ( .D(n132), .SI(n147), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(Stored_Frame1[5]) );
  SDFFRQX2M \Stored_Frame1_reg[2]  ( .D(n135), .SI(Stored_Frame1[1]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(Stored_Frame1[2]) );
  SDFFRQX2M \Stored_Frame1_reg[1]  ( .D(n136), .SI(n57), .SE(test_se), .CK(CLK), .RN(RST), .Q(Stored_Frame1[1]) );
  SDFFRX1M \Stored_Frame2_reg[0]  ( .D(n144), .SI(n167), .SE(test_se), .CK(CLK), .RN(RST), .Q(n166), .QN(n47) );
  SDFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(n150), .SE(test_se), .CK(CLK), .RN(RST), .Q(current_state[1]) );
  SDFFRQX2M \current_state_reg[3]  ( .D(next_state[3]), .SI(n73), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state[3]) );
  SDFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(n72), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state[2]) );
  SDFFRX1M \Stored_Frame1_reg[7]  ( .D(n130), .SI(n74), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n167), .QN(n50) );
  OAI22X1M U33 ( .A0(n48), .A1(n118), .B0(n45), .B1(n119), .Y(FUN[2]) );
  NOR2X2M U35 ( .A(n121), .B(n45), .Y(Addr[2]) );
  NAND4X2M U36 ( .A(enable_pulse), .B(n150), .C(n101), .D(n72), .Y(n98) );
  OAI22X1M U37 ( .A0(n51), .A1(n118), .B0(n47), .B1(n119), .Y(FUN[0]) );
  OAI22X1M U38 ( .A0(n49), .A1(n118), .B0(n46), .B1(n119), .Y(FUN[1]) );
  INVX2M U39 ( .A(n76), .Y(n34) );
  NAND3BX2M U40 ( .AN(FIFO_FULL), .B(n82), .C(n71), .Y(n76) );
  INVX2M U41 ( .A(n32), .Y(n53) );
  INVX2M U42 ( .A(n33), .Y(n52) );
  INVX2M U43 ( .A(n79), .Y(n70) );
  NAND2BX2M U44 ( .AN(n116), .B(ALU_En), .Y(n118) );
  NAND2X2M U45 ( .A(n66), .B(ALU_En), .Y(n119) );
  NOR2BX2M U46 ( .AN(n102), .B(Rd_En), .Y(n121) );
  NOR3X2M U47 ( .A(n105), .B(FIFO_FULL), .C(n89), .Y(n108) );
  NAND3X2M U48 ( .A(n150), .B(n72), .C(n104), .Y(n79) );
  OAI21BX1M U49 ( .A0(FIFO_FULL), .A1(n105), .B0N(n106), .Y(WR_INC) );
  NOR4X1M U50 ( .A(n68), .B(n72), .C(n150), .D(n73), .Y(n106) );
  NAND2X2M U51 ( .A(n103), .B(n104), .Y(n80) );
  NAND4X2M U52 ( .A(n88), .B(n120), .C(n57), .D(n147), .Y(n116) );
  NAND2X2M U53 ( .A(n116), .B(n117), .Y(n82) );
  NAND3X2M U54 ( .A(n80), .B(n79), .C(n102), .Y(Wr_En) );
  INVX2M U55 ( .A(n105), .Y(n71) );
  AOI221XLM U56 ( .A0(n89), .A1(n71), .B0(n32), .B1(n67), .C0(Rd_En), .Y(n83)
         );
  INVX2M U57 ( .A(n89), .Y(n67) );
  OAI22X1M U58 ( .A0(n49), .A1(n98), .B0(n56), .B1(n149), .Y(n136) );
  OAI22X1M U59 ( .A0(n48), .A1(n98), .B0(n56), .B1(n148), .Y(n135) );
  OAI22X1M U60 ( .A0(n38), .A1(n98), .B0(n56), .B1(n147), .Y(n133) );
  OAI22X1M U61 ( .A0(n37), .A1(n98), .B0(n56), .B1(n146), .Y(n132) );
  OAI22X1M U62 ( .A0(n36), .A1(n98), .B0(n56), .B1(n74), .Y(n131) );
  OAI22X1M U63 ( .A0(n51), .A1(n98), .B0(n56), .B1(n57), .Y(n145) );
  INVX2M U64 ( .A(n98), .Y(n56) );
  NAND3X2M U65 ( .A(n73), .B(n68), .C(n103), .Y(n99) );
  BUFX2M U66 ( .A(n78), .Y(n32) );
  NOR2X2M U67 ( .A(n99), .B(n55), .Y(n78) );
  BUFX2M U68 ( .A(n100), .Y(n33) );
  NOR2X2M U69 ( .A(n80), .B(n55), .Y(n100) );
  INVX2M U70 ( .A(n75), .Y(ALU_En) );
  NAND4X2M U71 ( .A(n75), .B(n79), .C(n80), .D(n81), .Y(next_state[2]) );
  AOI21BX2M U72 ( .A0(n32), .A1(n82), .B0N(n83), .Y(n81) );
  INVX2M U73 ( .A(n117), .Y(n66) );
  OAI211X2M U74 ( .A0(n99), .A1(n117), .B0(n75), .C0(n79), .Y(Gate_En) );
  NOR2X2M U75 ( .A(n73), .B(current_state[3]), .Y(n104) );
  AND3X2M U76 ( .A(n104), .B(n150), .C(current_state[1]), .Y(Rd_En) );
  INVX2M U77 ( .A(current_state[2]), .Y(n73) );
  OAI21X2M U78 ( .A0(n121), .A1(n47), .B0(n79), .Y(Addr[0]) );
  NOR2X4M U79 ( .A(n121), .B(n44), .Y(Addr[3]) );
  NOR4X1M U80 ( .A(n74), .B(n148), .C(Stored_Frame1[1]), .D(Stored_Frame1[5]), 
        .Y(n120) );
  OAI222X1M U81 ( .A0(n80), .A1(n46), .B0(n79), .B1(n64), .C0(n49), .C1(n102), 
        .Y(Wr_D[1]) );
  OAI222X1M U82 ( .A0(n80), .A1(n45), .B0(n79), .B1(n63), .C0(n48), .C1(n102), 
        .Y(Wr_D[2]) );
  OAI222X1M U83 ( .A0(n80), .A1(n44), .B0(n79), .B1(n62), .C0(n39), .C1(n102), 
        .Y(Wr_D[3]) );
  OAI222X1M U84 ( .A0(n80), .A1(n47), .B0(n79), .B1(n65), .C0(n51), .C1(n102), 
        .Y(Wr_D[0]) );
  OAI222X1M U85 ( .A0(n80), .A1(n43), .B0(n79), .B1(n61), .C0(n38), .C1(n102), 
        .Y(Wr_D[4]) );
  OAI222X1M U86 ( .A0(n80), .A1(n42), .B0(n79), .B1(n60), .C0(n37), .C1(n102), 
        .Y(Wr_D[5]) );
  OAI222X1M U87 ( .A0(n80), .A1(n41), .B0(n79), .B1(n59), .C0(n36), .C1(n102), 
        .Y(Wr_D[6]) );
  OAI222X1M U88 ( .A0(n80), .A1(n40), .B0(n79), .B1(n58), .C0(n35), .C1(n102), 
        .Y(Wr_D[7]) );
  NOR4X1M U89 ( .A(n146), .B(n149), .C(Stored_Frame1[2]), .D(Stored_Frame1[6]), 
        .Y(n85) );
  NOR2X2M U90 ( .A(n150), .B(current_state[1]), .Y(n103) );
  NAND4X2M U91 ( .A(current_state[1]), .B(n150), .C(n73), .D(n68), .Y(n102) );
  NAND4X2M U92 ( .A(n85), .B(n88), .C(Stored_Frame1[4]), .D(Stored_Frame1[0]), 
        .Y(n89) );
  NAND4X2M U93 ( .A(n88), .B(Stored_Frame1[4]), .C(Stored_Frame1[0]), .D(n120), 
        .Y(n117) );
  INVX2M U94 ( .A(current_state[0]), .Y(n150) );
  NAND3X2M U95 ( .A(current_state[0]), .B(n104), .C(current_state[1]), .Y(n105) );
  INVX2M U96 ( .A(current_state[1]), .Y(n72) );
  OAI2BB1X2M U97 ( .A0N(ALU_OUT[8]), .A1N(n106), .B0(n115), .Y(WR_DATA[0]) );
  AOI22X1M U98 ( .A0(ALU_OUT[0]), .A1(n34), .B0(Rd_D[0]), .B1(n108), .Y(n115)
         );
  OAI2BB1X2M U99 ( .A0N(ALU_OUT[9]), .A1N(n106), .B0(n114), .Y(WR_DATA[1]) );
  AOI22X1M U100 ( .A0(ALU_OUT[1]), .A1(n34), .B0(Rd_D[1]), .B1(n108), .Y(n114)
         );
  OAI2BB1X2M U101 ( .A0N(ALU_OUT[10]), .A1N(n106), .B0(n113), .Y(WR_DATA[2])
         );
  AOI22X1M U102 ( .A0(ALU_OUT[2]), .A1(n34), .B0(Rd_D[2]), .B1(n108), .Y(n113)
         );
  OAI2BB1X2M U103 ( .A0N(ALU_OUT[11]), .A1N(n106), .B0(n112), .Y(WR_DATA[3])
         );
  AOI22X1M U104 ( .A0(ALU_OUT[3]), .A1(n34), .B0(Rd_D[3]), .B1(n108), .Y(n112)
         );
  OAI2BB1X2M U105 ( .A0N(ALU_OUT[12]), .A1N(n106), .B0(n111), .Y(WR_DATA[4])
         );
  AOI22X1M U106 ( .A0(ALU_OUT[4]), .A1(n34), .B0(Rd_D[4]), .B1(n108), .Y(n111)
         );
  OAI2BB1X2M U107 ( .A0N(ALU_OUT[13]), .A1N(n106), .B0(n110), .Y(WR_DATA[5])
         );
  AOI22X1M U108 ( .A0(ALU_OUT[5]), .A1(n34), .B0(Rd_D[5]), .B1(n108), .Y(n110)
         );
  OAI2BB1X2M U109 ( .A0N(ALU_OUT[14]), .A1N(n106), .B0(n109), .Y(WR_DATA[6])
         );
  AOI22X1M U110 ( .A0(ALU_OUT[6]), .A1(n34), .B0(Rd_D[6]), .B1(n108), .Y(n109)
         );
  OAI2BB1X2M U111 ( .A0N(ALU_OUT[15]), .A1N(n106), .B0(n107), .Y(WR_DATA[7])
         );
  AOI22X1M U112 ( .A0(ALU_OUT[7]), .A1(n34), .B0(Rd_D[7]), .B1(n108), .Y(n107)
         );
  INVX2M U113 ( .A(current_state[3]), .Y(n68) );
  NOR2X2M U114 ( .A(n121), .B(n46), .Y(Addr[1]) );
  INVX2M U115 ( .A(Stored_Frame1[2]), .Y(n148) );
  INVX2M U116 ( .A(Stored_Frame1[1]), .Y(n149) );
  INVX2M U117 ( .A(Stored_Frame1[6]), .Y(n74) );
  INVX2M U118 ( .A(Stored_Frame1[5]), .Y(n146) );
  AOI222X1M U119 ( .A0(Rd_D_Valid), .A1(Rd_En), .B0(n71), .B1(n89), .C0(
        enable_pulse), .C1(n70), .Y(n93) );
  AOI211X2M U120 ( .A0(n96), .A1(n97), .B0(n39), .C0(n98), .Y(n95) );
  NAND4X2M U121 ( .A(Sync_Frame[5]), .B(Sync_Frame[1]), .C(n48), .D(n36), .Y(
        n96) );
  NAND4X2M U122 ( .A(Sync_Frame[6]), .B(Sync_Frame[2]), .C(n49), .D(n37), .Y(
        n97) );
  NOR2X2M U123 ( .A(n50), .B(n54), .Y(n88) );
  NOR4X1M U124 ( .A(n72), .B(n150), .C(current_state[2]), .D(current_state[3]), 
        .Y(n87) );
  NAND3X2M U125 ( .A(n103), .B(current_state[2]), .C(current_state[3]), .Y(n75) );
  XNOR2X2M U126 ( .A(Sync_Frame[4]), .B(Sync_Frame[0]), .Y(n94) );
  OAI22X1M U127 ( .A0(n98), .A1(n39), .B0(n56), .B1(n54), .Y(n134) );
  OAI22X1M U128 ( .A0(n98), .A1(n35), .B0(n56), .B1(n50), .Y(n130) );
  OAI22X1M U129 ( .A0(n51), .A1(n52), .B0(n33), .B1(n65), .Y(n122) );
  OAI22X1M U130 ( .A0(n49), .A1(n52), .B0(n33), .B1(n64), .Y(n123) );
  OAI22X1M U131 ( .A0(n48), .A1(n52), .B0(n33), .B1(n63), .Y(n124) );
  OAI22X1M U132 ( .A0(n39), .A1(n52), .B0(n33), .B1(n62), .Y(n125) );
  OAI22X1M U133 ( .A0(n38), .A1(n52), .B0(n33), .B1(n61), .Y(n126) );
  OAI22X1M U134 ( .A0(n37), .A1(n52), .B0(n33), .B1(n60), .Y(n127) );
  OAI22X1M U135 ( .A0(n36), .A1(n52), .B0(n33), .B1(n59), .Y(n128) );
  OAI22X1M U136 ( .A0(n35), .A1(n52), .B0(n33), .B1(n58), .Y(n129) );
  OAI22X1M U137 ( .A0(n53), .A1(n38), .B0(n32), .B1(n43), .Y(n140) );
  OAI22X1M U138 ( .A0(n53), .A1(n37), .B0(n32), .B1(n42), .Y(n139) );
  OAI22X1M U139 ( .A0(n53), .A1(n36), .B0(n32), .B1(n41), .Y(n138) );
  OAI22X1M U140 ( .A0(n53), .A1(n35), .B0(n32), .B1(n40), .Y(n137) );
  OAI22X1M U141 ( .A0(n53), .A1(n51), .B0(n32), .B1(n47), .Y(n144) );
  OAI22X1M U142 ( .A0(n53), .A1(n49), .B0(n32), .B1(n46), .Y(n143) );
  OAI22X1M U143 ( .A0(n53), .A1(n48), .B0(n32), .B1(n45), .Y(n142) );
  OAI22X1M U144 ( .A0(n53), .A1(n39), .B0(n32), .B1(n44), .Y(n141) );
  OAI2B11X2M U145 ( .A1N(OUT_Valid), .A0(n75), .B0(n83), .C0(n84), .Y(
        next_state[1]) );
  AOI31X2M U146 ( .A0(n85), .A1(n32), .A2(n86), .B0(n87), .Y(n84) );
  AND3X2M U147 ( .A(n88), .B(n147), .C(n57), .Y(n86) );
  OAI211X2M U148 ( .A0(OUT_Valid), .A1(n75), .B0(n76), .C0(n77), .Y(
        next_state[3]) );
  AOI22X1M U149 ( .A0(enable_pulse), .A1(n70), .B0(n32), .B1(n66), .Y(n77) );
  NOR2X2M U150 ( .A(current_state[3]), .B(current_state[2]), .Y(n101) );
  NAND4X2M U151 ( .A(n90), .B(n91), .C(n92), .D(n93), .Y(next_state[0]) );
  OAI21BX1M U152 ( .A0(n55), .A1(n89), .B0N(n99), .Y(n90) );
  OAI2B1X2M U153 ( .A1N(n80), .A0(n87), .B0(n55), .Y(n91) );
  AOI31X2M U154 ( .A0(n94), .A1(Sync_Frame[7]), .A2(n95), .B0(ALU_En), .Y(n92)
         );
  INVX2M U155 ( .A(Sync_Frame[1]), .Y(n49) );
  INVX2M U156 ( .A(Sync_Frame[2]), .Y(n48) );
  INVX2M U157 ( .A(enable_pulse), .Y(n55) );
  INVX2M U158 ( .A(Sync_Frame[5]), .Y(n37) );
  INVX2M U159 ( .A(Sync_Frame[6]), .Y(n36) );
  INVX2M U160 ( .A(Sync_Frame[3]), .Y(n39) );
  INVX2M U161 ( .A(Sync_Frame[0]), .Y(n51) );
  INVX2M U162 ( .A(Stored_Frame1[0]), .Y(n57) );
  INVX2M U163 ( .A(Stored_Frame1[4]), .Y(n147) );
  INVX2M U164 ( .A(Sync_Frame[4]), .Y(n38) );
  INVX2M U165 ( .A(Sync_Frame[7]), .Y(n35) );
  OAI22X1M U166 ( .A0(n39), .A1(n118), .B0(n44), .B1(n119), .Y(FUN[3]) );
  INVX2M U3 ( .A(1'b0), .Y(CLK_DIV_EN) );
endmodule


module Integer_ClkDiv_ratio_Width8_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  CLKXOR2X2M U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module Integer_ClkDiv_ratio_Width8_test_1 ( i_ref_clk, i_rst_n, i_clk_en, 
        i_div_ratio, o_div_clk, test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N0, New_clk, Flag, N18, N19, N20, N21, N22, N23, N24, N39, N40, N41,
         N42, N43, N44, N45, n17, n29, n30, n1, n2, n3, n4, n5, n6, n16, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62;
  wire   [6:0] Half_Div;
  wire   [6:0] Count;
  assign test_so = New_clk;

  SDFFSX1M New_clk_reg ( .D(n30), .SI(Flag), .SE(test_se), .CK(i_ref_clk), 
        .SN(i_rst_n), .Q(New_clk), .QN(n17) );
  SDFFRQX2M Flag_reg ( .D(n29), .SI(n41), .SE(test_se), .CK(i_ref_clk), .RN(
        i_rst_n), .Q(Flag) );
  SDFFRQX2M \Count_reg[6]  ( .D(N45), .SI(Count[5]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(Count[6]) );
  SDFFRQX2M \Count_reg[5]  ( .D(N44), .SI(Count[4]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(Count[5]) );
  SDFFRQX2M \Count_reg[0]  ( .D(N39), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(Count[0]) );
  SDFFRQX2M \Count_reg[4]  ( .D(N43), .SI(n56), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(Count[4]) );
  SDFFRQX2M \Count_reg[1]  ( .D(N40), .SI(Count[0]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(Count[1]) );
  SDFFRQX2M \Count_reg[3]  ( .D(N42), .SI(Count[2]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(Count[3]) );
  SDFFRQX2M \Count_reg[2]  ( .D(N41), .SI(Count[1]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(Count[2]) );
  AOI21BX2M U5 ( .A0(n2), .A1(i_div_ratio[3]), .B0N(n3), .Y(n1) );
  OR2X2M U6 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n2) );
  INVX2M U14 ( .A(i_div_ratio[5]), .Y(n16) );
  MX2X2M U15 ( .A(i_ref_clk), .B(New_clk), .S0(N0), .Y(o_div_clk) );
  CLKINVX1M U16 ( .A(i_div_ratio[1]), .Y(Half_Div[0]) );
  OAI2BB1X1M U17 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n2), .Y(
        Half_Div[1]) );
  OR2X1M U18 ( .A(n2), .B(i_div_ratio[3]), .Y(n3) );
  NOR2X1M U19 ( .A(n3), .B(i_div_ratio[4]), .Y(n4) );
  AO21XLM U20 ( .A0(n3), .A1(i_div_ratio[4]), .B0(n4), .Y(Half_Div[3]) );
  CLKNAND2X2M U21 ( .A(n4), .B(n16), .Y(n5) );
  OAI21X1M U22 ( .A0(n4), .A1(n16), .B0(n5), .Y(Half_Div[4]) );
  XNOR2X1M U23 ( .A(i_div_ratio[6]), .B(n5), .Y(Half_Div[5]) );
  NOR2X1M U24 ( .A(i_div_ratio[6]), .B(n5), .Y(n6) );
  CLKXOR2X2M U25 ( .A(i_div_ratio[7]), .B(n6), .Y(Half_Div[6]) );
  MXI2X1M U26 ( .A(n17), .B(n18), .S0(n19), .Y(n30) );
  NOR2X1M U27 ( .A(n17), .B(n20), .Y(n18) );
  NOR2X1M U28 ( .A(n20), .B(n21), .Y(n29) );
  MXI2X1M U29 ( .A(n22), .B(n23), .S0(Flag), .Y(n21) );
  NOR2X1M U30 ( .A(n22), .B(n24), .Y(n23) );
  CLKINVX1M U31 ( .A(n25), .Y(n22) );
  NOR2BX1M U32 ( .AN(N24), .B(n19), .Y(N45) );
  NOR2BX1M U33 ( .AN(N23), .B(n19), .Y(N44) );
  NOR2BX1M U34 ( .AN(N22), .B(n19), .Y(N43) );
  NOR2BX1M U35 ( .AN(N21), .B(n19), .Y(N42) );
  NOR2BX1M U36 ( .AN(N20), .B(n19), .Y(N41) );
  NOR2BX1M U37 ( .AN(N19), .B(n19), .Y(N40) );
  NOR2BX1M U38 ( .AN(N18), .B(n19), .Y(N39) );
  OAI211X1M U39 ( .A0(i_div_ratio[0]), .A1(n26), .B0(n25), .C0(n27), .Y(n19)
         );
  NOR2X1M U40 ( .A(n24), .B(n20), .Y(n27) );
  CLKNAND2X2M U41 ( .A(n28), .B(i_div_ratio[0]), .Y(n25) );
  MXI2X1M U42 ( .A(n26), .B(n31), .S0(Flag), .Y(n28) );
  NAND4X1M U43 ( .A(n32), .B(n33), .C(n34), .D(n35), .Y(n31) );
  NOR4X1M U44 ( .A(n36), .B(n37), .C(n38), .D(n39), .Y(n35) );
  CLKXOR2X2M U45 ( .A(i_div_ratio[4]), .B(Count[3]), .Y(n39) );
  CLKXOR2X2M U46 ( .A(i_div_ratio[3]), .B(Count[2]), .Y(n38) );
  CLKXOR2X2M U47 ( .A(i_div_ratio[2]), .B(Count[1]), .Y(n37) );
  CLKXOR2X2M U48 ( .A(i_div_ratio[1]), .B(Count[0]), .Y(n36) );
  CLKXOR2X2M U49 ( .A(n40), .B(i_div_ratio[6]), .Y(n34) );
  CLKXOR2X2M U50 ( .A(n41), .B(i_div_ratio[7]), .Y(n33) );
  CLKXOR2X2M U51 ( .A(n42), .B(i_div_ratio[5]), .Y(n32) );
  NAND4BX1M U52 ( .AN(n24), .B(n43), .C(n44), .D(n45), .Y(n26) );
  NOR4X1M U53 ( .A(n46), .B(n47), .C(n48), .D(n49), .Y(n45) );
  AOI21X1M U54 ( .A0(Half_Div[0]), .A1(n50), .B0(n51), .Y(n44) );
  CLKNAND2X2M U55 ( .A(Half_Div[1]), .B(n52), .Y(n43) );
  OAI32X1M U56 ( .A0(n53), .A1(n48), .A2(n49), .B0(Half_Div[6]), .B1(n41), .Y(
        n24) );
  CLKINVX1M U57 ( .A(Count[6]), .Y(n41) );
  NOR2BX1M U58 ( .AN(Half_Div[5]), .B(Count[5]), .Y(n49) );
  NOR2BX1M U59 ( .AN(Half_Div[6]), .B(Count[6]), .Y(n48) );
  CLKINVX1M U60 ( .A(n54), .Y(n53) );
  OAI222X1M U61 ( .A0(n40), .A1(Half_Div[5]), .B0(n55), .B1(n46), .C0(n42), 
        .C1(Half_Div[4]), .Y(n54) );
  AND2X1M U62 ( .A(Half_Div[4]), .B(n42), .Y(n46) );
  CLKINVX1M U63 ( .A(Count[4]), .Y(n42) );
  OA22X1M U64 ( .A0(Half_Div[3]), .A1(n56), .B0(n51), .B1(n57), .Y(n55) );
  AOI32X1M U65 ( .A0(n58), .A1(n59), .A2(n60), .B0(Count[2]), .B1(n1), .Y(n57)
         );
  OAI21X1M U66 ( .A0(Half_Div[0]), .A1(n50), .B0(n52), .Y(n60) );
  CLKINVX1M U67 ( .A(n47), .Y(n59) );
  NOR2X1M U68 ( .A(n1), .B(Count[2]), .Y(n47) );
  OAI31X1M U69 ( .A0(n52), .A1(Half_Div[0]), .A2(n50), .B0(Half_Div[1]), .Y(
        n58) );
  CLKINVX1M U70 ( .A(Count[0]), .Y(n50) );
  CLKINVX1M U71 ( .A(Count[1]), .Y(n52) );
  NOR2BX1M U72 ( .AN(Half_Div[3]), .B(Count[3]), .Y(n51) );
  CLKINVX1M U73 ( .A(Count[3]), .Y(n56) );
  CLKINVX1M U74 ( .A(Count[5]), .Y(n40) );
  CLKINVX1M U75 ( .A(n20), .Y(N0) );
  OAI21X1M U76 ( .A0(n61), .A1(n62), .B0(i_clk_en), .Y(n20) );
  OR3X1M U77 ( .A(i_div_ratio[2]), .B(i_div_ratio[3]), .C(i_div_ratio[1]), .Y(
        n62) );
  OR4X1M U78 ( .A(i_div_ratio[4]), .B(i_div_ratio[5]), .C(i_div_ratio[6]), .D(
        i_div_ratio[7]), .Y(n61) );
  Integer_ClkDiv_ratio_Width8_DW01_inc_0 add_73 ( .A(Count), .SUM({N24, N23, 
        N22, N21, N20, N19, N18}) );
endmodule


module Integer_ClkDiv_ratio_Width4_test_1 ( i_ref_clk, i_rst_n, i_clk_en, 
        i_div_ratio, o_div_clk, test_si, test_so, test_se );
  input [3:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N0, New_clk, N31, N32, N33, n12, n13, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n2, n3, n4, n5,
         n6;
  wire   [2:0] Count;
  assign test_so = New_clk;

  SDFFRX1M Flag_reg ( .D(n33), .SI(n5), .SE(test_se), .CK(i_ref_clk), .RN(
        i_rst_n), .Q(n6), .QN(n12) );
  SDFFRQX2M \Count_reg[2]  ( .D(N33), .SI(n4), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(Count[2]) );
  SDFFRQX2M \Count_reg[0]  ( .D(N31), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(Count[0]) );
  SDFFRQX2M \Count_reg[1]  ( .D(N32), .SI(n3), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(Count[1]) );
  SDFFSX1M New_clk_reg ( .D(n34), .SI(n6), .SE(test_se), .CK(i_ref_clk), .SN(
        i_rst_n), .Q(New_clk), .QN(n13) );
  OAI32X1M U9 ( .A0(n29), .A1(n28), .A2(n30), .B0(n31), .B1(n5), .Y(n18) );
  OAI2B11X2M U10 ( .A1N(n24), .A0(i_div_ratio[0]), .B0(n20), .C0(n25), .Y(n21)
         );
  NOR2X2M U11 ( .A(n18), .B(n19), .Y(n25) );
  AOI21BX2M U12 ( .A0(i_div_ratio[1]), .A1(i_div_ratio[2]), .B0N(n32), .Y(n27)
         );
  OR2X2M U13 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n32) );
  AND2X2M U14 ( .A(i_div_ratio[3]), .B(n32), .Y(n31) );
  INVX2M U15 ( .A(n19), .Y(N0) );
  NOR2X2M U16 ( .A(Count[1]), .B(n27), .Y(n29) );
  AOI22X1M U17 ( .A0(Count[1]), .A1(n27), .B0(Count[0]), .B1(i_div_ratio[1]), 
        .Y(n30) );
  AOI211X2M U18 ( .A0(n2), .A1(n3), .B0(n18), .C0(n26), .Y(n24) );
  INVX2M U19 ( .A(i_div_ratio[1]), .Y(n2) );
  OAI21BX1M U20 ( .A0(n27), .A1(Count[1]), .B0N(n28), .Y(n26) );
  OAI32X1M U21 ( .A0(n21), .A1(n4), .A2(n3), .B0(n5), .B1(n21), .Y(N33) );
  INVX2M U22 ( .A(Count[1]), .Y(n4) );
  OAI21X2M U23 ( .A0(n13), .A1(n21), .B0(n22), .Y(n34) );
  OAI21X2M U24 ( .A0(n19), .A1(n13), .B0(n21), .Y(n22) );
  NAND3X2M U25 ( .A(n24), .B(n12), .C(i_div_ratio[0]), .Y(n20) );
  NOR2X2M U26 ( .A(n23), .B(n21), .Y(N32) );
  CLKXOR2X2M U27 ( .A(n3), .B(Count[1]), .Y(n23) );
  NOR2X2M U28 ( .A(Count[0]), .B(n21), .Y(N31) );
  NOR2BX2M U29 ( .AN(n31), .B(Count[2]), .Y(n28) );
  OAI21X2M U30 ( .A0(i_div_ratio[3]), .A1(n32), .B0(i_clk_en), .Y(n19) );
  OAI32X1M U31 ( .A0(n12), .A1(n18), .A2(n19), .B0(n20), .B1(n19), .Y(n33) );
  INVX2M U32 ( .A(Count[0]), .Y(n3) );
  INVX2M U33 ( .A(Count[2]), .Y(n5) );
  MX2X2M U34 ( .A(i_ref_clk), .B(New_clk), .S0(N0), .Y(o_div_clk) );
endmodule


module RX_CLKDIV_MUX_Width4 ( Input, MUX_Out );
  input [5:0] Input;
  output [3:0] MUX_Out;
  wire   n5, n6, n7, n8, n9, n1, n2, n3, n4;

  NAND4BX1M U3 ( .AN(Input[4]), .B(Input[3]), .C(n2), .D(n1), .Y(n6) );
  NAND4BX1M U4 ( .AN(Input[3]), .B(Input[4]), .C(n2), .D(n1), .Y(n7) );
  NOR3X2M U5 ( .A(n7), .B(Input[1]), .C(Input[0]), .Y(MUX_Out[1]) );
  NOR4X1M U6 ( .A(n5), .B(Input[3]), .C(Input[5]), .D(Input[4]), .Y(MUX_Out[3]) );
  NAND3X2M U7 ( .A(n4), .B(n3), .C(Input[2]), .Y(n5) );
  NOR3X2M U8 ( .A(n6), .B(Input[1]), .C(Input[0]), .Y(MUX_Out[2]) );
  INVX2M U9 ( .A(Input[2]), .Y(n2) );
  INVX2M U10 ( .A(Input[0]), .Y(n4) );
  INVX2M U11 ( .A(Input[1]), .Y(n3) );
  INVX2M U12 ( .A(Input[5]), .Y(n1) );
  OAI211X2M U13 ( .A0(n8), .A1(n9), .B0(n4), .C0(n3), .Y(MUX_Out[0]) );
  NOR4X1M U14 ( .A(Input[5]), .B(Input[4]), .C(Input[3]), .D(n2), .Y(n8) );
  NAND2X2M U15 ( .A(n7), .B(n6), .Y(n9) );
endmodule


module Data_Sampling_test_1 ( CLK, RST, En, Prescale, RX_In, Edge_Count, 
        Sampeld_Bit, test_si, test_so, test_se );
  input [5:0] Prescale;
  input [5:0] Edge_Count;
  input CLK, RST, En, RX_In, test_si, test_se;
  output Sampeld_Bit, test_so;
  wire   N25, n23, n24, n25, \add_28/carry[4] , \add_28/carry[3] ,
         \add_28/carry[2] , n1, n2, n3, n4, n5, n6, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41;
  wire   [4:0] Middle_Sample_Plus;
  wire   [4:0] Middle_Sample_minus;
  wire   [2:0] Samples;
  assign test_so = Samples[2];

  SDFFRQX2M \Samples_reg[2]  ( .D(n25), .SI(Samples[1]), .SE(test_se), .CK(CLK), .RN(RST), .Q(Samples[2]) );
  SDFFRQX2M \Samples_reg[1]  ( .D(n24), .SI(Samples[0]), .SE(test_se), .CK(CLK), .RN(RST), .Q(Samples[1]) );
  SDFFRQX2M \Samples_reg[0]  ( .D(n23), .SI(Sampeld_Bit), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(Samples[0]) );
  SDFFRQX2M Sampeld_Bit_reg ( .D(N25), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Sampeld_Bit) );
  INVX2M U4 ( .A(Prescale[3]), .Y(n4) );
  ADDHX1M U5 ( .A(Prescale[3]), .B(\add_28/carry[2] ), .CO(\add_28/carry[3] ), 
        .S(Middle_Sample_Plus[2]) );
  ADDHX1M U6 ( .A(Prescale[2]), .B(Prescale[1]), .CO(\add_28/carry[2] ), .S(
        Middle_Sample_Plus[1]) );
  ADDHX1M U10 ( .A(Prescale[4]), .B(\add_28/carry[3] ), .CO(\add_28/carry[4] ), 
        .S(Middle_Sample_Plus[3]) );
  CLKXOR2X2M U11 ( .A(\add_28/carry[4] ), .B(Prescale[5]), .Y(
        Middle_Sample_Plus[4]) );
  CLKINVX1M U12 ( .A(Prescale[1]), .Y(Middle_Sample_minus[0]) );
  NOR2X1M U13 ( .A(Prescale[2]), .B(Prescale[1]), .Y(n1) );
  AO21XLM U14 ( .A0(Prescale[1]), .A1(Prescale[2]), .B0(n1), .Y(
        Middle_Sample_minus[1]) );
  CLKNAND2X2M U15 ( .A(n1), .B(n4), .Y(n2) );
  OAI21X1M U16 ( .A0(n1), .A1(n4), .B0(n2), .Y(Middle_Sample_minus[2]) );
  XNOR2X1M U17 ( .A(Prescale[4]), .B(n2), .Y(Middle_Sample_minus[3]) );
  NOR2X1M U18 ( .A(Prescale[4]), .B(n2), .Y(n3) );
  CLKXOR2X2M U19 ( .A(Prescale[5]), .B(n3), .Y(Middle_Sample_minus[4]) );
  MXI2X1M U20 ( .A(n5), .B(n6), .S0(n11), .Y(n25) );
  NOR2X1M U21 ( .A(n12), .B(n13), .Y(n11) );
  NAND4X1M U22 ( .A(n14), .B(n15), .C(n16), .D(n17), .Y(n13) );
  CLKXOR2X2M U23 ( .A(n18), .B(Middle_Sample_Plus[1]), .Y(n17) );
  XNOR2X1M U24 ( .A(Edge_Count[2]), .B(Middle_Sample_Plus[2]), .Y(n16) );
  XNOR2X1M U25 ( .A(Edge_Count[3]), .B(Middle_Sample_Plus[3]), .Y(n15) );
  CLKXOR2X2M U26 ( .A(n19), .B(Middle_Sample_Plus[4]), .Y(n14) );
  NAND4BX1M U27 ( .AN(Edge_Count[5]), .B(n20), .C(n21), .D(n22), .Y(n12) );
  XNOR2X1M U28 ( .A(Edge_Count[0]), .B(Middle_Sample_minus[0]), .Y(n20) );
  CLKNAND2X2M U29 ( .A(Samples[2]), .B(En), .Y(n5) );
  MXI2X1M U30 ( .A(n6), .B(n26), .S0(n21), .Y(n24) );
  NAND4X1M U31 ( .A(n27), .B(n28), .C(n29), .D(n30), .Y(n21) );
  NOR4BX1M U32 ( .AN(n22), .B(Edge_Count[5]), .C(n31), .D(n32), .Y(n30) );
  CLKXOR2X2M U33 ( .A(Prescale[2]), .B(Edge_Count[1]), .Y(n32) );
  CLKXOR2X2M U34 ( .A(Prescale[1]), .B(Edge_Count[0]), .Y(n31) );
  XNOR2X1M U35 ( .A(Edge_Count[3]), .B(Prescale[4]), .Y(n29) );
  CLKXOR2X2M U36 ( .A(n19), .B(Prescale[5]), .Y(n28) );
  CLKINVX1M U37 ( .A(Edge_Count[4]), .Y(n19) );
  XNOR2X1M U38 ( .A(Edge_Count[2]), .B(Prescale[3]), .Y(n27) );
  CLKNAND2X2M U39 ( .A(Samples[1]), .B(En), .Y(n26) );
  MXI2X1M U40 ( .A(n6), .B(n33), .S0(n22), .Y(n23) );
  NAND4X1M U41 ( .A(n34), .B(n35), .C(n36), .D(n37), .Y(n22) );
  NOR3X1M U42 ( .A(n38), .B(Edge_Count[5]), .C(n39), .Y(n37) );
  CLKXOR2X2M U43 ( .A(Middle_Sample_minus[0]), .B(Edge_Count[0]), .Y(n39) );
  CLKXOR2X2M U44 ( .A(Middle_Sample_minus[4]), .B(Edge_Count[4]), .Y(n38) );
  XNOR2X1M U45 ( .A(Edge_Count[2]), .B(Middle_Sample_minus[2]), .Y(n36) );
  XNOR2X1M U46 ( .A(Edge_Count[3]), .B(Middle_Sample_minus[3]), .Y(n35) );
  CLKXOR2X2M U47 ( .A(n18), .B(Middle_Sample_minus[1]), .Y(n34) );
  CLKINVX1M U48 ( .A(Edge_Count[1]), .Y(n18) );
  CLKNAND2X2M U49 ( .A(Samples[0]), .B(En), .Y(n33) );
  CLKNAND2X2M U50 ( .A(RX_In), .B(En), .Y(n6) );
  AOI21BX1M U51 ( .A0(n40), .A1(n41), .B0N(En), .Y(N25) );
  OAI21X1M U52 ( .A0(Samples[0]), .A1(Samples[1]), .B0(Samples[2]), .Y(n41) );
  CLKNAND2X2M U53 ( .A(Samples[0]), .B(Samples[1]), .Y(n40) );
endmodule


module Deserializer_Data_Width8_test_1 ( CLK, RST, En, Prescale, S_In, 
        edge_count, P_out, Deser_Done, test_si, test_so, test_se );
  input [5:0] Prescale;
  input [5:0] edge_count;
  output [7:0] P_out;
  input CLK, RST, En, S_In, test_si, test_se;
  output Deser_Done, test_so;
  wire   N4, N5, N6, N7, N8, N9, N10, n15, n20, n21, n22, n23, n24, n25, n26,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n1, n2, n16, n17, n18, n19, n27, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n65, n66;
  wire   [3:0] N;
  assign test_so = n20;

  SDFFRX1M \P_out_reg[5]  ( .D(n41), .SI(n23), .SE(n66), .CK(CLK), .RN(n2), 
        .Q(P_out[5]), .QN(n22) );
  SDFFRX1M \P_out_reg[1]  ( .D(n37), .SI(P_out[0]), .SE(n66), .CK(CLK), .RN(n2), .Q(P_out[1]), .QN(n26) );
  SDFFRX1M \P_out_reg[4]  ( .D(n40), .SI(n24), .SE(n66), .CK(CLK), .RN(n2), 
        .Q(P_out[4]), .QN(n23) );
  SDFFRQX2M \P_out_reg[0]  ( .D(n36), .SI(n62), .SE(n66), .CK(CLK), .RN(n2), 
        .Q(P_out[0]) );
  SDFFRX1M \P_out_reg[3]  ( .D(n39), .SI(n25), .SE(n66), .CK(CLK), .RN(n2), 
        .Q(P_out[3]), .QN(n24) );
  SDFFRX1M \P_out_reg[2]  ( .D(n38), .SI(n26), .SE(n66), .CK(CLK), .RN(n2), 
        .Q(P_out[2]), .QN(n25) );
  SDFFRX1M \P_out_reg[6]  ( .D(n42), .SI(n22), .SE(n66), .CK(CLK), .RN(n2), 
        .Q(P_out[6]), .QN(n21) );
  SDFFRX1M \P_out_reg[7]  ( .D(n43), .SI(n21), .SE(n66), .CK(CLK), .RN(n2), 
        .Q(P_out[7]), .QN(n20) );
  SDFFRQX2M \N_reg[0]  ( .D(n46), .SI(test_si), .SE(n66), .CK(CLK), .RN(n2), 
        .Q(N[0]) );
  SDFFRQX2M \N_reg[2]  ( .D(n58), .SI(n60), .SE(n66), .CK(CLK), .RN(n2), .Q(
        N[2]) );
  SDFFRQX2M \N_reg[1]  ( .D(n45), .SI(n59), .SE(n66), .CK(CLK), .RN(n2), .Q(
        N[1]) );
  SDFFRX1M \N_reg[3]  ( .D(n44), .SI(n61), .SE(n66), .CK(CLK), .RN(n2), .Q(n62), .QN(n15) );
  BUFX2M U5 ( .A(n28), .Y(n1) );
  INVX2M U16 ( .A(n16), .Y(n2) );
  INVX2M U17 ( .A(RST), .Y(n16) );
  NOR2X2M U18 ( .A(n59), .B(n1), .Y(n31) );
  NAND2X2M U19 ( .A(En), .B(n1), .Y(n35) );
  INVX2M U20 ( .A(n1), .Y(n57) );
  OAI21X2M U21 ( .A0(N[1]), .A1(n1), .B0(n34), .Y(n32) );
  OAI22X1M U22 ( .A0(n59), .A1(n35), .B0(N[0]), .B1(n1), .Y(n46) );
  OAI22X1M U23 ( .A0(n57), .A1(n26), .B0(n1), .B1(n25), .Y(n37) );
  OAI22X1M U24 ( .A0(n57), .A1(n25), .B0(n1), .B1(n24), .Y(n38) );
  OAI22X1M U25 ( .A0(n57), .A1(n24), .B0(n1), .B1(n23), .Y(n39) );
  OAI22X1M U26 ( .A0(n57), .A1(n23), .B0(n1), .B1(n22), .Y(n40) );
  OAI22X1M U27 ( .A0(n57), .A1(n22), .B0(n1), .B1(n21), .Y(n41) );
  OAI22X1M U28 ( .A0(n57), .A1(n21), .B0(n1), .B1(n20), .Y(n42) );
  NAND2X2M U29 ( .A(N10), .B(En), .Y(n28) );
  OAI2BB2X1M U30 ( .B0(n34), .B1(n60), .A0N(n60), .A1N(n31), .Y(n45) );
  INVX2M U31 ( .A(N[1]), .Y(n60) );
  OAI2BB2X1M U32 ( .B0(n1), .B1(n26), .A0N(P_out[0]), .A1N(n1), .Y(n36) );
  OR2X2M U33 ( .A(Prescale[1]), .B(Prescale[0]), .Y(n17) );
  OAI2BB2X1M U34 ( .B0(n57), .B1(n20), .A0N(S_In), .A1N(n57), .Y(n43) );
  OAI21X2M U35 ( .A0(n29), .A1(n15), .B0(n30), .Y(n44) );
  NAND4X2M U36 ( .A(N[2]), .B(N[1]), .C(n31), .D(n15), .Y(n30) );
  AOI21X2M U37 ( .A0(n57), .A1(n61), .B0(n32), .Y(n29) );
  OA21X2M U38 ( .A0(N[0]), .A1(n1), .B0(n35), .Y(n34) );
  INVX2M U39 ( .A(Prescale[3]), .Y(n47) );
  INVX2M U40 ( .A(n33), .Y(n58) );
  AOI32X1M U41 ( .A0(N[1]), .A1(n61), .A2(n31), .B0(n32), .B1(N[2]), .Y(n33)
         );
  NOR4X1M U42 ( .A(N[2]), .B(N[1]), .C(N[0]), .D(n15), .Y(Deser_Done) );
  INVX2M U43 ( .A(N[0]), .Y(n59) );
  INVX2M U44 ( .A(N[2]), .Y(n61) );
  CLKINVX1M U45 ( .A(Prescale[0]), .Y(N4) );
  OAI2BB1X1M U46 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n17), .Y(N5) );
  NOR2X1M U47 ( .A(n17), .B(Prescale[2]), .Y(n18) );
  AO21XLM U48 ( .A0(n17), .A1(Prescale[2]), .B0(n18), .Y(N6) );
  CLKNAND2X2M U49 ( .A(n18), .B(n47), .Y(n19) );
  OAI21X1M U50 ( .A0(n18), .A1(n47), .B0(n19), .Y(N7) );
  XNOR2X1M U51 ( .A(Prescale[4]), .B(n19), .Y(N8) );
  NOR2X1M U52 ( .A(Prescale[4]), .B(n19), .Y(n27) );
  CLKXOR2X2M U53 ( .A(Prescale[5]), .B(n27), .Y(N9) );
  NOR2BX1M U54 ( .AN(edge_count[0]), .B(N4), .Y(n48) );
  OAI2B2X1M U55 ( .A1N(N5), .A0(n48), .B0(edge_count[1]), .B1(n48), .Y(n52) );
  NOR2BX1M U56 ( .AN(N4), .B(edge_count[0]), .Y(n49) );
  OAI2B2X1M U57 ( .A1N(edge_count[1]), .A0(n49), .B0(N5), .B1(n49), .Y(n51) );
  XNOR2X1M U58 ( .A(N9), .B(edge_count[5]), .Y(n50) );
  NAND3X1M U59 ( .A(n52), .B(n51), .C(n50), .Y(n56) );
  CLKXOR2X2M U60 ( .A(N8), .B(edge_count[4]), .Y(n55) );
  CLKXOR2X2M U61 ( .A(N6), .B(edge_count[2]), .Y(n54) );
  CLKXOR2X2M U62 ( .A(N7), .B(edge_count[3]), .Y(n53) );
  NOR4X1M U63 ( .A(n56), .B(n55), .C(n54), .D(n53), .Y(N10) );
  INVXLM U64 ( .A(test_se), .Y(n65) );
  INVXLM U65 ( .A(n65), .Y(n66) );
endmodule


module Edge_Bit_Counter_Data_Width8_test_1 ( CLK, RST, En, Prescale, Bit_Count, 
        Edge_Count, test_si, test_se );
  input [5:0] Prescale;
  output [3:0] Bit_Count;
  output [5:0] Edge_Count;
  input CLK, RST, En, test_si, test_se;
  wire   N4, N5, N6, N7, N8, N9, N10, N11, N15, N16, N17, N18, N19, N20, N27,
         N28, N29, N30, N31, N32, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, \add_39/carry[5] , \add_39/carry[4] , \add_39/carry[3] ,
         \add_39/carry[2] , n1, n2, n3, n4, n15, n16, n17, n18, n19, n20, n21,
         n32, n33, n34, n35, n36, n37, n38, n39, n40;

  SDFFRQX2M \Bit_Count_reg[2]  ( .D(n29), .SI(n38), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Bit_Count[2]) );
  SDFFRQX2M \Bit_Count_reg[3]  ( .D(n28), .SI(n39), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Bit_Count[3]) );
  SDFFRQX2M \Bit_Count_reg[1]  ( .D(n30), .SI(n37), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Bit_Count[1]) );
  SDFFRQX2M \Bit_Count_reg[0]  ( .D(n31), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Bit_Count[0]) );
  SDFFRQX2M \Edge_Count_reg[5]  ( .D(N32), .SI(Edge_Count[4]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(Edge_Count[5]) );
  SDFFRQX2M \Edge_Count_reg[0]  ( .D(N27), .SI(n40), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Edge_Count[0]) );
  SDFFRQX2M \Edge_Count_reg[4]  ( .D(N31), .SI(Edge_Count[3]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(Edge_Count[4]) );
  SDFFRQX2M \Edge_Count_reg[1]  ( .D(N28), .SI(N15), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Edge_Count[1]) );
  SDFFRQX2M \Edge_Count_reg[3]  ( .D(N30), .SI(Edge_Count[2]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(Edge_Count[3]) );
  SDFFRQX2M \Edge_Count_reg[2]  ( .D(N29), .SI(Edge_Count[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(Edge_Count[2]) );
  INVX2M U6 ( .A(n27), .Y(n34) );
  INVX2M U7 ( .A(En), .Y(n35) );
  NOR2X2M U15 ( .A(n35), .B(N11), .Y(n27) );
  AOI21X2M U16 ( .A0(n37), .A1(En), .B0(n27), .Y(n26) );
  AND2X2M U17 ( .A(N16), .B(n27), .Y(N28) );
  AND2X2M U18 ( .A(N17), .B(n27), .Y(N29) );
  AND2X2M U19 ( .A(N18), .B(n27), .Y(N30) );
  AND2X2M U20 ( .A(N19), .B(n27), .Y(N31) );
  NOR3X2M U21 ( .A(n38), .B(n37), .C(n39), .Y(n23) );
  OAI32X1M U22 ( .A0(n35), .A1(Bit_Count[0]), .A2(n27), .B0(n37), .B1(n34), 
        .Y(n31) );
  OAI32X1M U23 ( .A0(n24), .A1(Bit_Count[2]), .A2(n38), .B0(n25), .B1(n39), 
        .Y(n29) );
  OA21X2M U24 ( .A0(n35), .A1(Bit_Count[1]), .B0(n26), .Y(n25) );
  OAI22X1M U25 ( .A0(n40), .A1(n34), .B0(n22), .B1(n35), .Y(n28) );
  AOI32X1M U26 ( .A0(n23), .A1(n40), .A2(N11), .B0(Bit_Count[3]), .B1(n36), 
        .Y(n22) );
  INVX2M U27 ( .A(Bit_Count[3]), .Y(n40) );
  INVX2M U28 ( .A(n23), .Y(n36) );
  NAND3X2M U29 ( .A(Bit_Count[0]), .B(n34), .C(En), .Y(n24) );
  OAI22X1M U30 ( .A0(n26), .A1(n38), .B0(Bit_Count[1]), .B1(n24), .Y(n30) );
  OR2X2M U31 ( .A(Prescale[1]), .B(Prescale[0]), .Y(n1) );
  AND2X2M U32 ( .A(N20), .B(n27), .Y(N32) );
  AND2X2M U33 ( .A(N15), .B(n27), .Y(N27) );
  INVX2M U34 ( .A(Bit_Count[0]), .Y(n37) );
  INVX2M U35 ( .A(Bit_Count[1]), .Y(n38) );
  ADDHX1M U36 ( .A(Edge_Count[2]), .B(\add_39/carry[2] ), .CO(
        \add_39/carry[3] ), .S(N17) );
  ADDHX1M U37 ( .A(Edge_Count[3]), .B(\add_39/carry[3] ), .CO(
        \add_39/carry[4] ), .S(N18) );
  ADDHX1M U38 ( .A(Edge_Count[1]), .B(Edge_Count[0]), .CO(\add_39/carry[2] ), 
        .S(N16) );
  INVX2M U39 ( .A(Bit_Count[2]), .Y(n39) );
  ADDHX1M U40 ( .A(Edge_Count[4]), .B(\add_39/carry[4] ), .CO(
        \add_39/carry[5] ), .S(N19) );
  CLKINVX1M U41 ( .A(Prescale[0]), .Y(N4) );
  OAI2BB1X1M U42 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n1), .Y(N5) );
  OR2X1M U43 ( .A(n1), .B(Prescale[2]), .Y(n2) );
  OAI2BB1X1M U44 ( .A0N(n1), .A1N(Prescale[2]), .B0(n2), .Y(N6) );
  OR2X1M U45 ( .A(n2), .B(Prescale[3]), .Y(n3) );
  OAI2BB1X1M U46 ( .A0N(n2), .A1N(Prescale[3]), .B0(n3), .Y(N7) );
  OR2X1M U47 ( .A(n3), .B(Prescale[4]), .Y(n4) );
  OAI2BB1X1M U48 ( .A0N(n3), .A1N(Prescale[4]), .B0(n4), .Y(N8) );
  NOR2X1M U49 ( .A(n4), .B(Prescale[5]), .Y(N10) );
  AO21XLM U50 ( .A0(n4), .A1(Prescale[5]), .B0(N10), .Y(N9) );
  CLKINVX1M U51 ( .A(Edge_Count[0]), .Y(N15) );
  CLKXOR2X2M U52 ( .A(\add_39/carry[5] ), .B(Edge_Count[5]), .Y(N20) );
  NOR2BX1M U53 ( .AN(N4), .B(Edge_Count[0]), .Y(n15) );
  OAI2B2X1M U54 ( .A1N(Edge_Count[1]), .A0(n15), .B0(N5), .B1(n15), .Y(n19) );
  XNOR2X1M U55 ( .A(N9), .B(Edge_Count[5]), .Y(n18) );
  NOR2BX1M U56 ( .AN(Edge_Count[0]), .B(N4), .Y(n16) );
  OAI2B2X1M U57 ( .A1N(N5), .A0(n16), .B0(Edge_Count[1]), .B1(n16), .Y(n17) );
  NAND4BX1M U58 ( .AN(N10), .B(n19), .C(n18), .D(n17), .Y(n33) );
  CLKXOR2X2M U59 ( .A(N8), .B(Edge_Count[4]), .Y(n32) );
  CLKXOR2X2M U60 ( .A(N6), .B(Edge_Count[2]), .Y(n21) );
  CLKXOR2X2M U61 ( .A(N7), .B(Edge_Count[3]), .Y(n20) );
  NOR4X1M U62 ( .A(n33), .B(n32), .C(n21), .D(n20), .Y(N11) );
endmodule


module Parity_Check_Data_Width8_test_1 ( CLK, RST, En, Flags_Done, PAR_TYP, 
        R_Data, Deser_Done, Parity_In, par_err, test_si, test_se );
  input [7:0] R_Data;
  input CLK, RST, En, Flags_Done, PAR_TYP, Deser_Done, Parity_In, test_si,
         test_se;
  output par_err;
  wire   Calc_parity, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n3, n4;

  SDFFRQX2M Calc_parity_reg ( .D(n14), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Calc_parity) );
  SDFFRQX2M par_err_reg ( .D(n13), .SI(Calc_parity), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(par_err) );
  NOR2X2M U5 ( .A(Flags_Done), .B(En), .Y(n7) );
  OAI31X1M U6 ( .A0(n3), .A1(Deser_Done), .A2(n5), .B0(n6), .Y(n13) );
  XNOR2X2M U7 ( .A(Calc_parity), .B(Parity_In), .Y(n5) );
  OAI21X2M U8 ( .A0(n7), .A1(Deser_Done), .B0(par_err), .Y(n6) );
  INVX2M U9 ( .A(En), .Y(n3) );
  XNOR2X2M U10 ( .A(R_Data[3]), .B(R_Data[2]), .Y(n11) );
  XOR3XLM U11 ( .A(R_Data[5]), .B(R_Data[4]), .C(n12), .Y(n9) );
  CLKXOR2X2M U12 ( .A(R_Data[7]), .B(R_Data[6]), .Y(n12) );
  OAI2BB2X1M U13 ( .B0(n8), .B1(n4), .A0N(n4), .A1N(Calc_parity), .Y(n14) );
  INVX2M U14 ( .A(Deser_Done), .Y(n4) );
  XOR3XLM U15 ( .A(n9), .B(PAR_TYP), .C(n10), .Y(n8) );
  XOR3XLM U16 ( .A(R_Data[1]), .B(R_Data[0]), .C(n11), .Y(n10) );
endmodule


module Start_Check_test_1 ( CLK, RST, En, Start_bit, Str_err, test_si, test_se
 );
  input CLK, RST, En, Start_bit, test_si, test_se;
  output Str_err;
  wire   N4;

  SDFFRQX2M Str_err_reg ( .D(N4), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(Str_err) );
  AND2X2M U4 ( .A(Start_bit), .B(En), .Y(N4) );
endmodule


module Stop_Check_test_1 ( CLK, RST, En, Flags_Done, Stop_bit, Stp_err, 
        test_si, test_so, test_se );
  input CLK, RST, En, Flags_Done, Stop_bit, test_si, test_se;
  output Stp_err, test_so;
  wire   n2, n4, n3;
  assign test_so = n2;

  SDFFRX1M Stp_err_reg ( .D(n4), .SI(test_si), .SE(test_se), .CK(CLK), .RN(RST), .Q(Stp_err), .QN(n2) );
  OAI32X1M U4 ( .A0(n2), .A1(Flags_Done), .A2(En), .B0(Stop_bit), .B1(n3), .Y(
        n4) );
  INVX2M U5 ( .A(En), .Y(n3) );
endmodule


module RX_FSM_Data_Width8_test_1 ( CLK, RST, PAR_EN, Prescale, RX_In, 
        Bit_Count, edge_count, Par_err, Start_err, Stop_err, edge_bit_en, 
        data_samp_en, Deser_en, Par_chk_en, Str_chk_en, Stp_chk_en, Flags_Done, 
        Parity_Error, Stop_Error, Data_Valid, test_si, test_so, test_se );
  input [5:0] Prescale;
  input [3:0] Bit_Count;
  input [5:0] edge_count;
  input CLK, RST, PAR_EN, RX_In, Par_err, Start_err, Stop_err, test_si,
         test_se;
  output edge_bit_en, data_samp_en, Deser_en, Par_chk_en, Str_chk_en,
         Stp_chk_en, Flags_Done, Parity_Error, Stop_Error, Data_Valid, test_so;
  wire   Parity_Error_c, Stop_Error_c, Data_Valid_c, \add_78/carry[4] ,
         \add_78/carry[3] , \sub_77/carry[5] , \sub_77/carry[4] ,
         \sub_77/carry[3] , n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57;
  wire   [5:0] Final_edge;
  wire   [5:0] Flags_edge;
  wire   [5:0] Check_edge;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  assign Flags_edge[0] = Prescale[0];
  assign Check_edge[0] = Prescale[1];
  assign test_so = current_state[2];

  SDFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(current_state[1]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(current_state[2]) );
  SDFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .SI(Stop_Error), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(current_state[0]) );
  SDFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(current_state[0]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(current_state[1]) );
  SDFFRQX2M Stop_Error_reg ( .D(Stop_Error_c), .SI(Parity_Error), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(Stop_Error) );
  SDFFRQX2M Parity_Error_reg ( .D(Parity_Error_c), .SI(Data_Valid), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(Parity_Error) );
  SDFFRQX2M Data_Valid_reg ( .D(Data_Valid_c), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(Data_Valid) );
  INVX2M U7 ( .A(Prescale[2]), .Y(Check_edge[1]) );
  OR2X2M U8 ( .A(Check_edge[0]), .B(Flags_edge[0]), .Y(n2) );
  INVX2M U9 ( .A(Prescale[3]), .Y(n6) );
  INVX2M U10 ( .A(Check_edge[0]), .Y(Flags_edge[1]) );
  BUFX2M U11 ( .A(edge_bit_en), .Y(data_samp_en) );
  XNOR2X1M U14 ( .A(Prescale[5]), .B(\sub_77/carry[5] ), .Y(Flags_edge[5]) );
  OR2X1M U15 ( .A(Prescale[4]), .B(\sub_77/carry[4] ), .Y(\sub_77/carry[5] )
         );
  XNOR2X1M U16 ( .A(\sub_77/carry[4] ), .B(Prescale[4]), .Y(Flags_edge[4]) );
  OR2X1M U17 ( .A(Prescale[3]), .B(\sub_77/carry[3] ), .Y(\sub_77/carry[4] )
         );
  XNOR2X1M U18 ( .A(\sub_77/carry[3] ), .B(Prescale[3]), .Y(Flags_edge[3]) );
  OR2X1M U19 ( .A(Prescale[2]), .B(Check_edge[0]), .Y(\sub_77/carry[3] ) );
  XNOR2X1M U20 ( .A(Check_edge[0]), .B(Prescale[2]), .Y(Flags_edge[2]) );
  AND2X1M U21 ( .A(\add_78/carry[4] ), .B(Prescale[5]), .Y(Check_edge[5]) );
  CLKXOR2X2M U22 ( .A(Prescale[5]), .B(\add_78/carry[4] ), .Y(Check_edge[4])
         );
  AND2X1M U23 ( .A(\add_78/carry[3] ), .B(Prescale[4]), .Y(\add_78/carry[4] )
         );
  CLKXOR2X2M U24 ( .A(Prescale[4]), .B(\add_78/carry[3] ), .Y(Check_edge[3])
         );
  AND2X1M U25 ( .A(Prescale[2]), .B(Prescale[3]), .Y(\add_78/carry[3] ) );
  CLKXOR2X2M U26 ( .A(Prescale[3]), .B(Prescale[2]), .Y(Check_edge[2]) );
  CLKINVX1M U27 ( .A(Flags_edge[0]), .Y(Final_edge[0]) );
  OAI2BB1X1M U28 ( .A0N(Flags_edge[0]), .A1N(Check_edge[0]), .B0(n2), .Y(
        Final_edge[1]) );
  NOR2X1M U29 ( .A(n2), .B(Prescale[2]), .Y(n3) );
  AO21XLM U30 ( .A0(n2), .A1(Prescale[2]), .B0(n3), .Y(Final_edge[2]) );
  CLKNAND2X2M U31 ( .A(n3), .B(n6), .Y(n4) );
  OAI21X1M U32 ( .A0(n3), .A1(n6), .B0(n4), .Y(Final_edge[3]) );
  XNOR2X1M U33 ( .A(Prescale[4]), .B(n4), .Y(Final_edge[4]) );
  NOR2X1M U34 ( .A(Prescale[4]), .B(n4), .Y(n5) );
  CLKXOR2X2M U35 ( .A(Prescale[5]), .B(n5), .Y(Final_edge[5]) );
  OAI32X1M U36 ( .A0(n7), .A1(n8), .A2(n9), .B0(n10), .B1(n11), .Y(
        next_state[2]) );
  MXI2X1M U37 ( .A(n12), .B(n13), .S0(Bit_Count[0]), .Y(n7) );
  NOR2X1M U38 ( .A(PAR_EN), .B(n14), .Y(n12) );
  OAI21X1M U39 ( .A0(current_state[2]), .A1(n15), .B0(n22), .Y(next_state[1])
         );
  AOI32X1M U40 ( .A0(n23), .A1(n24), .A2(n25), .B0(n13), .B1(n26), .Y(n22) );
  NAND4X1M U41 ( .A(n27), .B(n28), .C(n29), .D(n30), .Y(n26) );
  NOR4X1M U42 ( .A(n31), .B(n32), .C(n33), .D(n34), .Y(n30) );
  CLKXOR2X2M U43 ( .A(edge_count[5]), .B(Flags_edge[5]), .Y(n34) );
  CLKXOR2X2M U44 ( .A(edge_count[4]), .B(Flags_edge[4]), .Y(n33) );
  CLKXOR2X2M U45 ( .A(edge_count[3]), .B(Flags_edge[3]), .Y(n32) );
  CLKXOR2X2M U46 ( .A(edge_count[2]), .B(Flags_edge[2]), .Y(n31) );
  NOR3X1M U47 ( .A(n9), .B(Bit_Count[2]), .C(n35), .Y(n29) );
  XNOR2X1M U48 ( .A(Bit_Count[1]), .B(Bit_Count[0]), .Y(n35) );
  CLKINVX1M U49 ( .A(Bit_Count[3]), .Y(n9) );
  CLKXOR2X2M U50 ( .A(n36), .B(Flags_edge[0]), .Y(n28) );
  CLKINVX1M U51 ( .A(edge_count[0]), .Y(n36) );
  CLKXOR2X2M U52 ( .A(n37), .B(Flags_edge[1]), .Y(n27) );
  CLKINVX1M U53 ( .A(edge_count[1]), .Y(n37) );
  NOR3X1M U54 ( .A(Bit_Count[0]), .B(Start_err), .C(Bit_Count[3]), .Y(n25) );
  CLKINVX1M U55 ( .A(n8), .Y(n23) );
  OAI211X1M U56 ( .A0(Bit_Count[3]), .A1(n14), .B0(n38), .C0(n39), .Y(
        next_state[0]) );
  OR3X1M U57 ( .A(RX_In), .B(current_state[1]), .C(current_state[0]), .Y(n39)
         );
  OAI31X1M U58 ( .A0(n40), .A1(Bit_Count[0]), .A2(n8), .B0(n24), .Y(n38) );
  CLKNAND2X2M U59 ( .A(n41), .B(n42), .Y(n8) );
  NOR4X1M U60 ( .A(Bit_Count[2]), .B(Bit_Count[1]), .C(n43), .D(n44), .Y(n42)
         );
  CLKXOR2X2M U61 ( .A(edge_count[0]), .B(Final_edge[0]), .Y(n44) );
  CLKXOR2X2M U62 ( .A(edge_count[4]), .B(Final_edge[4]), .Y(n43) );
  NOR4X1M U63 ( .A(n45), .B(n46), .C(n47), .D(n48), .Y(n41) );
  CLKXOR2X2M U64 ( .A(edge_count[3]), .B(Final_edge[3]), .Y(n48) );
  CLKXOR2X2M U65 ( .A(edge_count[2]), .B(Final_edge[2]), .Y(n47) );
  CLKXOR2X2M U66 ( .A(edge_count[5]), .B(Final_edge[5]), .Y(n46) );
  CLKXOR2X2M U67 ( .A(edge_count[1]), .B(Final_edge[1]), .Y(n45) );
  MXI2X1M U68 ( .A(Start_err), .B(current_state[1]), .S0(Bit_Count[3]), .Y(n40) );
  CLKNAND2X2M U69 ( .A(n49), .B(n10), .Y(edge_bit_en) );
  NOR3X1M U70 ( .A(n50), .B(current_state[1]), .C(n49), .Y(Str_chk_en) );
  NOR3X1M U71 ( .A(n50), .B(n10), .C(n11), .Y(Stp_chk_en) );
  AND2X1M U72 ( .A(Flags_Done), .B(Stop_err), .Y(Stop_Error_c) );
  AND2X1M U73 ( .A(Flags_Done), .B(Par_err), .Y(Parity_Error_c) );
  NOR3X1M U74 ( .A(n50), .B(current_state[2]), .C(n10), .Y(Par_chk_en) );
  CLKINVX1M U75 ( .A(n13), .Y(n10) );
  NOR2X1M U76 ( .A(n15), .B(current_state[0]), .Y(n13) );
  CLKINVX1M U77 ( .A(current_state[1]), .Y(n15) );
  NAND4X1M U78 ( .A(n51), .B(n52), .C(n53), .D(n54), .Y(n50) );
  NOR3X1M U79 ( .A(n55), .B(n56), .C(n57), .Y(n54) );
  CLKXOR2X2M U80 ( .A(edge_count[4]), .B(Check_edge[4]), .Y(n57) );
  CLKXOR2X2M U81 ( .A(edge_count[1]), .B(Check_edge[1]), .Y(n56) );
  CLKXOR2X2M U82 ( .A(edge_count[0]), .B(Check_edge[0]), .Y(n55) );
  XNOR2X1M U83 ( .A(edge_count[2]), .B(Check_edge[2]), .Y(n53) );
  XNOR2X1M U84 ( .A(edge_count[3]), .B(Check_edge[3]), .Y(n52) );
  XNOR2X1M U85 ( .A(edge_count[5]), .B(Check_edge[5]), .Y(n51) );
  CLKINVX1M U86 ( .A(n14), .Y(Deser_en) );
  CLKNAND2X2M U87 ( .A(current_state[1]), .B(n24), .Y(n14) );
  CLKINVX1M U88 ( .A(n49), .Y(n24) );
  CLKNAND2X2M U89 ( .A(current_state[0]), .B(n11), .Y(n49) );
  NOR3BX1M U90 ( .AN(Flags_Done), .B(Stop_err), .C(Par_err), .Y(Data_Valid_c)
         );
  NOR3X1M U91 ( .A(current_state[0]), .B(current_state[1]), .C(n11), .Y(
        Flags_Done) );
  CLKINVX1M U92 ( .A(current_state[2]), .Y(n11) );
endmodule


module UART_RX_TOP_Data_Width8_test_1 ( CLK, RST, PAR_EN, Prescale, PAR_TYP, 
        RX_IN, Paerity_Error, Stop_Error, Data_Valid, P_DATA, test_si, test_so, 
        test_se );
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input CLK, RST, PAR_EN, PAR_TYP, RX_IN, test_si, test_se;
  output Paerity_Error, Stop_Error, Data_Valid, test_so;
  wire   dat_samp_en, sampled_bit, deser_en, Deser_Done, edge_bit_en,
         Par_chk_en, Flags_Done, par_err, strt_chk_en, strt_glitch, stp_chk_en,
         stp_err, n1, n2, n4, n5, n6;
  wire   [5:0] edge_cnt;
  wire   [3:0] bit_cnt;

  INVX2M U8 ( .A(n2), .Y(n1) );
  INVX2M U9 ( .A(RST), .Y(n2) );
  Data_Sampling_test_1 U1 ( .CLK(CLK), .RST(n1), .En(dat_samp_en), .Prescale(
        Prescale), .RX_In(RX_IN), .Edge_Count(edge_cnt), .Sampeld_Bit(
        sampled_bit), .test_si(test_si), .test_so(n6), .test_se(test_se) );
  Deserializer_Data_Width8_test_1 U2 ( .CLK(CLK), .RST(n1), .En(deser_en), 
        .Prescale(Prescale), .S_In(sampled_bit), .edge_count(edge_cnt), 
        .P_out(P_DATA), .Deser_Done(Deser_Done), .test_si(n6), .test_so(n5), 
        .test_se(test_se) );
  Edge_Bit_Counter_Data_Width8_test_1 U3 ( .CLK(CLK), .RST(n1), .En(
        edge_bit_en), .Prescale(Prescale), .Bit_Count(bit_cnt), .Edge_Count(
        edge_cnt), .test_si(n5), .test_se(test_se) );
  Parity_Check_Data_Width8_test_1 U4 ( .CLK(CLK), .RST(n1), .En(Par_chk_en), 
        .Flags_Done(Flags_Done), .PAR_TYP(PAR_TYP), .R_Data(P_DATA), 
        .Deser_Done(Deser_Done), .Parity_In(sampled_bit), .par_err(par_err), 
        .test_si(edge_cnt[5]), .test_se(test_se) );
  Start_Check_test_1 U5 ( .CLK(CLK), .RST(n1), .En(strt_chk_en), .Start_bit(
        sampled_bit), .Str_err(strt_glitch), .test_si(par_err), .test_se(
        test_se) );
  Stop_Check_test_1 U6 ( .CLK(CLK), .RST(n1), .En(stp_chk_en), .Flags_Done(
        Flags_Done), .Stop_bit(sampled_bit), .Stp_err(stp_err), .test_si(
        strt_glitch), .test_so(n4), .test_se(test_se) );
  RX_FSM_Data_Width8_test_1 U7 ( .CLK(CLK), .RST(n1), .PAR_EN(PAR_EN), 
        .Prescale(Prescale), .RX_In(RX_IN), .Bit_Count(bit_cnt), .edge_count(
        edge_cnt), .Par_err(par_err), .Start_err(strt_glitch), .Stop_err(
        stp_err), .edge_bit_en(edge_bit_en), .data_samp_en(dat_samp_en), 
        .Deser_en(deser_en), .Par_chk_en(Par_chk_en), .Str_chk_en(strt_chk_en), 
        .Stp_chk_en(stp_chk_en), .Flags_Done(Flags_Done), .Parity_Error(
        Paerity_Error), .Stop_Error(Stop_Error), .Data_Valid(Data_Valid), 
        .test_si(n4), .test_so(test_so), .test_se(test_se) );
endmodule


module MUX_4x1_test_1 ( CLK, RST, mux_sel, input_1, input_2, input_3, input_4, 
        OUT, test_si, test_se );
  input [1:0] mux_sel;
  input CLK, RST, input_1, input_2, input_3, input_4, test_si, test_se;
  output OUT;
  wire   mux_out, n3, n4, n5;

  OAI2B2X1M U5 ( .A1N(mux_sel[1]), .A0(n3), .B0(mux_sel[1]), .B1(n4), .Y(
        mux_out) );
  AOI22X1M U6 ( .A0(input_1), .A1(n5), .B0(mux_sel[0]), .B1(input_2), .Y(n4)
         );
  AOI22X1M U7 ( .A0(input_3), .A1(n5), .B0(input_4), .B1(mux_sel[0]), .Y(n3)
         );
  INVX2M U8 ( .A(mux_sel[0]), .Y(n5) );
  SDFFSQX2M OUT_reg ( .D(mux_out), .SI(test_si), .SE(test_se), .CK(CLK), .SN(
        RST), .Q(OUT) );
endmodule


module Parity_Calc_test_1 ( CLK, RST, In_Data, Data_Valid, Basy_signal, 
        Parity_Calc_En, PAR_TYP, par_bit, test_si, test_se );
  input [7:0] In_Data;
  input CLK, RST, Data_Valid, Basy_signal, Parity_Calc_En, PAR_TYP, test_si,
         test_se;
  output par_bit;
  wire   n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25;
  wire   [7:0] DATA_V;

  SDFFRQX2M par_bit_reg ( .D(n17), .SI(DATA_V[7]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(par_bit) );
  SDFFRQX2M \DATA_V_reg[5]  ( .D(n23), .SI(DATA_V[4]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(DATA_V[5]) );
  SDFFRQX2M \DATA_V_reg[1]  ( .D(n19), .SI(DATA_V[0]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(DATA_V[1]) );
  SDFFRQX2M \DATA_V_reg[4]  ( .D(n22), .SI(DATA_V[3]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(DATA_V[4]) );
  SDFFRQX2M \DATA_V_reg[0]  ( .D(n18), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(DATA_V[0]) );
  SDFFRQX2M \DATA_V_reg[2]  ( .D(n20), .SI(DATA_V[1]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(DATA_V[2]) );
  SDFFRQX2M \DATA_V_reg[3]  ( .D(n21), .SI(DATA_V[2]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(DATA_V[3]) );
  SDFFRQX2M \DATA_V_reg[6]  ( .D(n24), .SI(DATA_V[5]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(DATA_V[6]) );
  SDFFRQX2M \DATA_V_reg[7]  ( .D(n25), .SI(DATA_V[6]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(DATA_V[7]) );
  NOR2BX2M U12 ( .AN(Data_Valid), .B(Basy_signal), .Y(n12) );
  XNOR2X2M U13 ( .A(DATA_V[2]), .B(DATA_V[3]), .Y(n15) );
  XOR3XLM U14 ( .A(DATA_V[5]), .B(DATA_V[4]), .C(n16), .Y(n13) );
  CLKXOR2X2M U15 ( .A(DATA_V[7]), .B(DATA_V[6]), .Y(n16) );
  OAI2BB2X1M U16 ( .B0(n10), .B1(n11), .A0N(par_bit), .A1N(n11), .Y(n17) );
  XOR3XLM U17 ( .A(n13), .B(PAR_TYP), .C(n14), .Y(n10) );
  NAND2BX2M U18 ( .AN(n12), .B(Parity_Calc_En), .Y(n11) );
  XOR3XLM U19 ( .A(DATA_V[1]), .B(DATA_V[0]), .C(n15), .Y(n14) );
  AO2B2X2M U20 ( .B0(In_Data[0]), .B1(n12), .A0(DATA_V[0]), .A1N(n12), .Y(n18)
         );
  AO2B2X2M U21 ( .B0(In_Data[1]), .B1(n12), .A0(DATA_V[1]), .A1N(n12), .Y(n19)
         );
  AO2B2X2M U22 ( .B0(In_Data[2]), .B1(n12), .A0(DATA_V[2]), .A1N(n12), .Y(n20)
         );
  AO2B2X2M U23 ( .B0(In_Data[3]), .B1(n12), .A0(DATA_V[3]), .A1N(n12), .Y(n21)
         );
  AO2B2X2M U24 ( .B0(In_Data[4]), .B1(n12), .A0(DATA_V[4]), .A1N(n12), .Y(n22)
         );
  AO2B2X2M U25 ( .B0(In_Data[5]), .B1(n12), .A0(DATA_V[5]), .A1N(n12), .Y(n23)
         );
  AO2B2X2M U26 ( .B0(In_Data[6]), .B1(n12), .A0(DATA_V[6]), .A1N(n12), .Y(n24)
         );
  AO2B2X2M U27 ( .B0(In_Data[7]), .B1(n12), .A0(DATA_V[7]), .A1N(n12), .Y(n25)
         );
endmodule


module Serializer_1byte_test_1 ( In_Data, Data_Valid, Basy_signal, CLK, RST, 
        ser_en, ser_done, Out_Data, test_si, test_se );
  input [7:0] In_Data;
  input Data_Valid, Basy_signal, CLK, RST, ser_en, test_si, test_se;
  output ser_done, Out_Data;
  wire   n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n14, n15, n16, n17, n18, n48;
  wire   [7:1] S_R_Data;
  wire   [3:0] counter;

  SDFFRQX2M \S_R_Data_reg[6]  ( .D(n38), .SI(S_R_Data[5]), .SE(test_se), .CK(
        CLK), .RN(n14), .Q(S_R_Data[6]) );
  SDFFRQX2M \S_R_Data_reg[5]  ( .D(n39), .SI(S_R_Data[4]), .SE(test_se), .CK(
        CLK), .RN(n14), .Q(S_R_Data[5]) );
  SDFFRQX2M \S_R_Data_reg[4]  ( .D(n40), .SI(S_R_Data[3]), .SE(test_se), .CK(
        CLK), .RN(n14), .Q(S_R_Data[4]) );
  SDFFRQX2M \S_R_Data_reg[3]  ( .D(n41), .SI(S_R_Data[2]), .SE(test_se), .CK(
        CLK), .RN(n14), .Q(S_R_Data[3]) );
  SDFFRQX2M \S_R_Data_reg[2]  ( .D(n42), .SI(S_R_Data[1]), .SE(test_se), .CK(
        CLK), .RN(n14), .Q(S_R_Data[2]) );
  SDFFRQX2M \S_R_Data_reg[1]  ( .D(n43), .SI(Out_Data), .SE(test_se), .CK(CLK), 
        .RN(n14), .Q(S_R_Data[1]) );
  SDFFRQX2M \S_R_Data_reg[0]  ( .D(n36), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(n14), .Q(Out_Data) );
  SDFFRQX2M \S_R_Data_reg[7]  ( .D(n37), .SI(S_R_Data[6]), .SE(test_se), .CK(
        CLK), .RN(n14), .Q(S_R_Data[7]) );
  SDFFRQX2M \counter_reg[3]  ( .D(n46), .SI(counter[2]), .SE(test_se), .CK(CLK), .RN(n14), .Q(counter[3]) );
  SDFFRQX2M \counter_reg[1]  ( .D(n45), .SI(n18), .SE(test_se), .CK(CLK), .RN(
        n14), .Q(counter[1]) );
  SDFFRQX2M \counter_reg[0]  ( .D(n47), .SI(S_R_Data[7]), .SE(test_se), .CK(
        CLK), .RN(n14), .Q(counter[0]) );
  SDFFRQX2M \counter_reg[2]  ( .D(n44), .SI(n48), .SE(test_se), .CK(CLK), .RN(
        n14), .Q(counter[2]) );
  SDFFRQX2M ser_done_reg ( .D(n15), .SI(counter[3]), .SE(test_se), .CK(CLK), 
        .RN(n14), .Q(ser_done) );
  NOR2X2M U16 ( .A(n17), .B(n16), .Y(n19) );
  BUFX2M U17 ( .A(RST), .Y(n14) );
  OAI21X2M U18 ( .A0(n33), .A1(n48), .B0(n32), .Y(n31) );
  OAI21X2M U19 ( .A0(n32), .A1(n48), .B0(n30), .Y(n45) );
  NAND3X2M U20 ( .A(n18), .B(n48), .C(n17), .Y(n30) );
  INVX2M U21 ( .A(n33), .Y(n17) );
  INVX2M U22 ( .A(n35), .Y(n16) );
  NAND2X2M U23 ( .A(n28), .B(n18), .Y(n29) );
  AOI21X2M U24 ( .A0(n17), .A1(counter[0]), .B0(n19), .Y(n32) );
  NAND2X2M U25 ( .A(ser_en), .B(n35), .Y(n33) );
  OAI211X2M U26 ( .A0(n33), .A1(n29), .B0(n34), .C0(n35), .Y(n46) );
  OAI21X2M U27 ( .A0(counter[2]), .A1(n31), .B0(counter[3]), .Y(n34) );
  NAND2BX2M U28 ( .AN(Basy_signal), .B(Data_Valid), .Y(n35) );
  OAI2BB2X1M U29 ( .B0(counter[2]), .B1(n30), .A0N(n31), .A1N(counter[2]), .Y(
        n44) );
  OAI2BB2X1M U30 ( .B0(counter[0]), .B1(n33), .A0N(n19), .A1N(counter[0]), .Y(
        n47) );
  INVX2M U31 ( .A(n27), .Y(n15) );
  AOI32X1M U32 ( .A0(n28), .A1(n29), .A2(n17), .B0(n19), .B1(ser_done), .Y(n27) );
  OAI2BB1X2M U33 ( .A0N(Out_Data), .A1N(n19), .B0(n20), .Y(n36) );
  AOI22X1M U34 ( .A0(In_Data[0]), .A1(n16), .B0(S_R_Data[1]), .B1(n17), .Y(n20) );
  OAI2BB1X2M U35 ( .A0N(S_R_Data[1]), .A1N(n19), .B0(n26), .Y(n43) );
  AOI22X1M U36 ( .A0(In_Data[1]), .A1(n16), .B0(S_R_Data[2]), .B1(n17), .Y(n26) );
  OAI2BB1X2M U37 ( .A0N(n19), .A1N(S_R_Data[2]), .B0(n25), .Y(n42) );
  AOI22X1M U38 ( .A0(In_Data[2]), .A1(n16), .B0(S_R_Data[3]), .B1(n17), .Y(n25) );
  OAI2BB1X2M U39 ( .A0N(n19), .A1N(S_R_Data[3]), .B0(n24), .Y(n41) );
  AOI22X1M U40 ( .A0(In_Data[3]), .A1(n16), .B0(S_R_Data[4]), .B1(n17), .Y(n24) );
  OAI2BB1X2M U41 ( .A0N(n19), .A1N(S_R_Data[4]), .B0(n23), .Y(n40) );
  AOI22X1M U42 ( .A0(In_Data[4]), .A1(n16), .B0(S_R_Data[5]), .B1(n17), .Y(n23) );
  OAI2BB1X2M U43 ( .A0N(n19), .A1N(S_R_Data[5]), .B0(n22), .Y(n39) );
  AOI22X1M U44 ( .A0(In_Data[5]), .A1(n16), .B0(S_R_Data[6]), .B1(n17), .Y(n22) );
  OAI2BB1X2M U45 ( .A0N(n19), .A1N(S_R_Data[6]), .B0(n21), .Y(n38) );
  AOI22X1M U46 ( .A0(In_Data[6]), .A1(n16), .B0(S_R_Data[7]), .B1(n17), .Y(n21) );
  AO22X1M U47 ( .A0(n19), .A1(S_R_Data[7]), .B0(In_Data[7]), .B1(n16), .Y(n37)
         );
  NOR3X2M U48 ( .A(counter[2]), .B(counter[3]), .C(counter[1]), .Y(n28) );
  INVX2M U49 ( .A(counter[0]), .Y(n18) );
  INVX2M U50 ( .A(counter[1]), .Y(n48) );
endmodule


module FSM_test_1 ( CLK, RST, Data_Valid, PAR_EN, ser_done, mux_sel, ser_en, 
        Basy, Parity_Calc_En, test_so, test_se );
  output [1:0] mux_sel;
  input CLK, RST, Data_Valid, PAR_EN, ser_done, test_se;
  output ser_en, Basy, Parity_Calc_En, test_so;
  wire   Basy_c, n8, n9, n10, n5, n6;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  assign test_so = current_state[2];
  assign Parity_Calc_En = next_state[1];

  SDFFRQX2M Basy_reg ( .D(Basy_c), .SI(ser_done), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(Basy) );
  SDFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .SI(Basy), .SE(test_se), .CK(CLK), .RN(RST), .Q(current_state[0]) );
  SDFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(n5), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state[1]) );
  SDFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(n6), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state[2]) );
  INVX2M U7 ( .A(n10), .Y(mux_sel[0]) );
  NOR4X1M U8 ( .A(ser_done), .B(current_state[2]), .C(n5), .D(n6), .Y(ser_en)
         );
  NOR2X2M U9 ( .A(n5), .B(current_state[2]), .Y(n10) );
  AOI21X2M U10 ( .A0(n6), .A1(n5), .B0(current_state[2]), .Y(next_state[1]) );
  OAI22X1M U11 ( .A0(ser_done), .A1(mux_sel[0]), .B0(current_state[1]), .B1(n9), .Y(next_state[0]) );
  AOI2B1X1M U12 ( .A1N(current_state[2]), .A0(Data_Valid), .B0(n10), .Y(n9) );
  NOR2X2M U13 ( .A(n6), .B(current_state[2]), .Y(mux_sel[1]) );
  OAI21X2M U14 ( .A0(current_state[0]), .A1(n6), .B0(mux_sel[0]), .Y(Basy_c)
         );
  INVX2M U15 ( .A(current_state[0]), .Y(n5) );
  INVX2M U16 ( .A(current_state[1]), .Y(n6) );
  NOR2BX2M U17 ( .AN(mux_sel[1]), .B(n8), .Y(next_state[2]) );
  AOI2B1X1M U18 ( .A1N(PAR_EN), .A0(ser_done), .B0(n5), .Y(n8) );
endmodule


module UART_TOP_test_1 ( CLK, RST, P_DATA, Data_Valid, PAR_EN, PAR_TYP, busy, 
        TX_OUT, test_si2, test_si1, test_so1, test_se );
  input [7:0] P_DATA;
  input CLK, RST, Data_Valid, PAR_EN, PAR_TYP, test_si2, test_si1, test_se;
  output busy, TX_OUT, test_so1;
  wire   ser_data, par_bit, Parity_Calc_En, ser_en, ser_done, n1, n2;
  wire   [1:0] mux_sel;

  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(RST), .Y(n2) );
  MUX_4x1_test_1 U1_MUX_4x1 ( .CLK(CLK), .RST(n1), .mux_sel(mux_sel), 
        .input_1(1'b0), .input_2(1'b1), .input_3(ser_data), .input_4(par_bit), 
        .OUT(TX_OUT), .test_si(test_si2), .test_se(test_se) );
  Parity_Calc_test_1 U2_Parity_Calc ( .CLK(CLK), .RST(n1), .In_Data(P_DATA), 
        .Data_Valid(Data_Valid), .Basy_signal(busy), .Parity_Calc_En(
        Parity_Calc_En), .PAR_TYP(PAR_TYP), .par_bit(par_bit), .test_si(
        test_si1), .test_se(test_se) );
  Serializer_1byte_test_1 U3_Serializer ( .In_Data(P_DATA), .Data_Valid(
        Data_Valid), .Basy_signal(busy), .CLK(CLK), .RST(n1), .ser_en(ser_en), 
        .ser_done(ser_done), .Out_Data(ser_data), .test_si(par_bit), .test_se(
        test_se) );
  FSM_test_1 U4_FSM ( .CLK(CLK), .RST(n1), .Data_Valid(Data_Valid), .PAR_EN(
        PAR_EN), .ser_done(ser_done), .mux_sel(mux_sel), .ser_en(ser_en), 
        .Basy(busy), .Parity_Calc_En(Parity_Calc_En), .test_so(test_so1), 
        .test_se(test_se) );
endmodule


module FIFO_W_Addr_Size3_test_1 ( W_CLK, W_RST, W_INC, GR_Ptr_Syn, FIFO_Full, 
        W_Addr, GW_Ptr, test_si, test_se );
  input [3:0] GR_Ptr_Syn;
  output [2:0] W_Addr;
  output [3:0] GW_Ptr;
  input W_CLK, W_RST, W_INC, test_si, test_se;
  output FIFO_Full;
  wire   \Address[3] , n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22;
  wire   [2:0] Comb_G_W_Ptr;

  SDFFRQX2M \Address_reg[3]  ( .D(n19), .SI(W_Addr[2]), .SE(test_se), .CK(
        W_CLK), .RN(W_RST), .Q(\Address[3] ) );
  SDFFRQX2M \Address_reg[2]  ( .D(n20), .SI(W_Addr[1]), .SE(test_se), .CK(
        W_CLK), .RN(W_RST), .Q(W_Addr[2]) );
  SDFFRQX2M \GW_Ptr_reg[3]  ( .D(\Address[3] ), .SI(GW_Ptr[2]), .SE(test_se), 
        .CK(W_CLK), .RN(W_RST), .Q(GW_Ptr[3]) );
  SDFFRQX2M \GW_Ptr_reg[2]  ( .D(Comb_G_W_Ptr[2]), .SI(GW_Ptr[1]), .SE(test_se), .CK(W_CLK), .RN(W_RST), .Q(GW_Ptr[2]) );
  SDFFRQX2M \GW_Ptr_reg[1]  ( .D(Comb_G_W_Ptr[1]), .SI(GW_Ptr[0]), .SE(test_se), .CK(W_CLK), .RN(W_RST), .Q(GW_Ptr[1]) );
  SDFFRQX2M \GW_Ptr_reg[0]  ( .D(Comb_G_W_Ptr[0]), .SI(\Address[3] ), .SE(
        test_se), .CK(W_CLK), .RN(W_RST), .Q(GW_Ptr[0]) );
  SDFFRQX2M \Address_reg[1]  ( .D(n21), .SI(W_Addr[0]), .SE(test_se), .CK(
        W_CLK), .RN(W_RST), .Q(W_Addr[1]) );
  SDFFRX1M \Address_reg[0]  ( .D(n22), .SI(test_si), .SE(test_se), .CK(W_CLK), 
        .RN(W_RST), .Q(W_Addr[0]), .QN(n9) );
  NAND2X2M U12 ( .A(W_INC), .B(n14), .Y(n13) );
  INVX2M U13 ( .A(n14), .Y(FIFO_Full) );
  XNOR2X2M U14 ( .A(Comb_G_W_Ptr[1]), .B(GR_Ptr_Syn[1]), .Y(n15) );
  XNOR2X2M U15 ( .A(n9), .B(W_Addr[1]), .Y(Comb_G_W_Ptr[0]) );
  NOR2X2M U16 ( .A(n13), .B(n9), .Y(n12) );
  XNOR2X2M U17 ( .A(W_Addr[2]), .B(n11), .Y(n20) );
  XNOR2X2M U18 ( .A(\Address[3] ), .B(n10), .Y(n19) );
  NAND2BX2M U19 ( .AN(n11), .B(W_Addr[2]), .Y(n10) );
  NAND4X2M U20 ( .A(n15), .B(n16), .C(n17), .D(n18), .Y(n14) );
  CLKXOR2X2M U21 ( .A(GR_Ptr_Syn[3]), .B(\Address[3] ), .Y(n18) );
  XNOR2X2M U22 ( .A(Comb_G_W_Ptr[0]), .B(GR_Ptr_Syn[0]), .Y(n16) );
  CLKXOR2X2M U23 ( .A(GR_Ptr_Syn[2]), .B(Comb_G_W_Ptr[2]), .Y(n17) );
  NAND2X2M U24 ( .A(n12), .B(W_Addr[1]), .Y(n11) );
  CLKXOR2X2M U25 ( .A(\Address[3] ), .B(W_Addr[2]), .Y(Comb_G_W_Ptr[2]) );
  CLKXOR2X2M U26 ( .A(W_Addr[1]), .B(W_Addr[2]), .Y(Comb_G_W_Ptr[1]) );
  CLKXOR2X2M U27 ( .A(W_Addr[1]), .B(n12), .Y(n21) );
  CLKXOR2X2M U28 ( .A(n9), .B(n13), .Y(n22) );
endmodule


module BIT_SYNC_2_00000004_test_0 ( CLK, RST, ASYNC, SYNC, test_se );
  input [3:0] ASYNC;
  output [3:0] SYNC;
  input CLK, RST, test_se;
  wire   \sync_reg[3][0] , \sync_reg[2][0] , \sync_reg[1][0] ,
         \sync_reg[0][0] ;

  SDFFRQX2M \sync_reg_reg[2][1]  ( .D(\sync_reg[2][0] ), .SI(\sync_reg[2][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[2]) );
  SDFFRQX2M \sync_reg_reg[1][1]  ( .D(\sync_reg[1][0] ), .SI(\sync_reg[1][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[1]) );
  SDFFRQX2M \sync_reg_reg[0][1]  ( .D(\sync_reg[0][0] ), .SI(\sync_reg[0][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[0]) );
  SDFFRQX2M \sync_reg_reg[3][0]  ( .D(ASYNC[3]), .SI(SYNC[2]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sync_reg[3][0] ) );
  SDFFRQX2M \sync_reg_reg[2][0]  ( .D(ASYNC[2]), .SI(SYNC[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sync_reg[2][0] ) );
  SDFFRQX2M \sync_reg_reg[1][0]  ( .D(ASYNC[1]), .SI(SYNC[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sync_reg[1][0] ) );
  SDFFRQX2M \sync_reg_reg[0][0]  ( .D(ASYNC[0]), .SI(ASYNC[3]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sync_reg[0][0] ) );
  SDFFRQX1M \sync_reg_reg[3][1]  ( .D(\sync_reg[3][0] ), .SI(\sync_reg[3][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[3]) );
endmodule


module FIFO_R_Addr_Size3_test_1 ( R_CLK, R_RST, R_INC, GW_Ptr_Syn, FIFO_Empty, 
        R_Addr, GR_Ptr, test_se );
  input [3:0] GW_Ptr_Syn;
  output [2:0] R_Addr;
  output [3:0] GR_Ptr;
  input R_CLK, R_RST, R_INC, test_se;
  output FIFO_Empty;
  wire   \Address[3] , n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22;
  wire   [2:0] Comb_G_R_Ptr;

  SDFFRQX2M \Address_reg[3]  ( .D(n19), .SI(R_Addr[2]), .SE(test_se), .CK(
        R_CLK), .RN(R_RST), .Q(\Address[3] ) );
  SDFFRX1M \Address_reg[0]  ( .D(n22), .SI(GW_Ptr_Syn[3]), .SE(test_se), .CK(
        R_CLK), .RN(R_RST), .Q(R_Addr[0]), .QN(n9) );
  SDFFRQX2M \Address_reg[2]  ( .D(n20), .SI(R_Addr[1]), .SE(test_se), .CK(
        R_CLK), .RN(R_RST), .Q(R_Addr[2]) );
  SDFFRQX2M \GR_Ptr_reg[3]  ( .D(\Address[3] ), .SI(GR_Ptr[2]), .SE(test_se), 
        .CK(R_CLK), .RN(R_RST), .Q(GR_Ptr[3]) );
  SDFFRQX2M \GR_Ptr_reg[2]  ( .D(Comb_G_R_Ptr[2]), .SI(GR_Ptr[1]), .SE(test_se), .CK(R_CLK), .RN(R_RST), .Q(GR_Ptr[2]) );
  SDFFRQX2M \GR_Ptr_reg[1]  ( .D(Comb_G_R_Ptr[1]), .SI(GR_Ptr[0]), .SE(test_se), .CK(R_CLK), .RN(R_RST), .Q(GR_Ptr[1]) );
  SDFFRQX2M \GR_Ptr_reg[0]  ( .D(Comb_G_R_Ptr[0]), .SI(\Address[3] ), .SE(
        test_se), .CK(R_CLK), .RN(R_RST), .Q(GR_Ptr[0]) );
  SDFFRQX2M \Address_reg[1]  ( .D(n21), .SI(R_Addr[0]), .SE(test_se), .CK(
        R_CLK), .RN(R_RST), .Q(R_Addr[1]) );
  INVX2M U11 ( .A(n14), .Y(FIFO_Empty) );
  XNOR2X2M U12 ( .A(Comb_G_R_Ptr[0]), .B(GW_Ptr_Syn[0]), .Y(n16) );
  XNOR2X2M U13 ( .A(n9), .B(R_Addr[1]), .Y(Comb_G_R_Ptr[0]) );
  NOR2X2M U14 ( .A(n13), .B(n9), .Y(n12) );
  XNOR2X2M U15 ( .A(\Address[3] ), .B(n10), .Y(n19) );
  NAND2BX2M U16 ( .AN(n11), .B(R_Addr[2]), .Y(n10) );
  NAND4X2M U17 ( .A(n15), .B(n16), .C(n17), .D(n18), .Y(n14) );
  XNOR2X2M U18 ( .A(\Address[3] ), .B(GW_Ptr_Syn[3]), .Y(n17) );
  XNOR2X2M U19 ( .A(Comb_G_R_Ptr[2]), .B(GW_Ptr_Syn[2]), .Y(n18) );
  XNOR2X2M U20 ( .A(Comb_G_R_Ptr[1]), .B(GW_Ptr_Syn[1]), .Y(n15) );
  NAND2X2M U21 ( .A(n12), .B(R_Addr[1]), .Y(n11) );
  NAND2X2M U22 ( .A(R_INC), .B(n14), .Y(n13) );
  CLKXOR2X2M U23 ( .A(R_Addr[1]), .B(R_Addr[2]), .Y(Comb_G_R_Ptr[1]) );
  CLKXOR2X2M U24 ( .A(\Address[3] ), .B(R_Addr[2]), .Y(Comb_G_R_Ptr[2]) );
  XNOR2X2M U25 ( .A(R_Addr[2]), .B(n11), .Y(n20) );
  CLKXOR2X2M U26 ( .A(R_Addr[1]), .B(n12), .Y(n21) );
  CLKXOR2X2M U27 ( .A(n9), .B(n13), .Y(n22) );
endmodule


module BIT_SYNC_2_00000004_test_1 ( CLK, RST, ASYNC, SYNC, test_se );
  input [3:0] ASYNC;
  output [3:0] SYNC;
  input CLK, RST, test_se;
  wire   \sync_reg[3][0] , \sync_reg[2][0] , \sync_reg[1][0] ,
         \sync_reg[0][0] ;

  SDFFRQX2M \sync_reg_reg[1][1]  ( .D(\sync_reg[1][0] ), .SI(\sync_reg[1][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[1]) );
  SDFFRQX2M \sync_reg_reg[0][1]  ( .D(\sync_reg[0][0] ), .SI(\sync_reg[0][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[0]) );
  SDFFRQX2M \sync_reg_reg[3][1]  ( .D(\sync_reg[3][0] ), .SI(\sync_reg[3][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[3]) );
  SDFFRQX2M \sync_reg_reg[2][1]  ( .D(\sync_reg[2][0] ), .SI(\sync_reg[2][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[2]) );
  SDFFRQX2M \sync_reg_reg[3][0]  ( .D(ASYNC[3]), .SI(SYNC[2]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sync_reg[3][0] ) );
  SDFFRQX2M \sync_reg_reg[2][0]  ( .D(ASYNC[2]), .SI(SYNC[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sync_reg[2][0] ) );
  SDFFRQX2M \sync_reg_reg[1][0]  ( .D(ASYNC[1]), .SI(SYNC[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sync_reg[1][0] ) );
  SDFFRQX2M \sync_reg_reg[0][0]  ( .D(ASYNC[0]), .SI(ASYNC[3]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sync_reg[0][0] ) );
endmodule


module FIFO_MEM_Data_Width8_Addr_Size3_FIFO_Dipth8_test_1 ( W_CLK, W_RST, 
        W_INC, FIFO_Full, W_Addr, W_Data, R_Addr, R_Data, test_si2, test_si1, 
        test_so2, test_so1, test_se );
  input [2:0] W_Addr;
  input [7:0] W_Data;
  input [2:0] R_Addr;
  output [7:0] R_Data;
  input W_CLK, W_RST, W_INC, FIFO_Full, test_si2, test_si1, test_se;
  output test_so2, test_so1;
  wire   N9, N10, N11, \memory[0][7] , \memory[0][6] , \memory[0][5] ,
         \memory[0][4] , \memory[0][3] , \memory[0][2] , \memory[0][1] ,
         \memory[0][0] , \memory[1][7] , \memory[1][6] , \memory[1][5] ,
         \memory[1][4] , \memory[1][3] , \memory[1][2] , \memory[1][1] ,
         \memory[1][0] , \memory[2][7] , \memory[2][6] , \memory[2][5] ,
         \memory[2][4] , \memory[2][3] , \memory[2][2] , \memory[2][1] ,
         \memory[2][0] , \memory[3][7] , \memory[3][6] , \memory[3][5] ,
         \memory[3][4] , \memory[3][3] , \memory[3][2] , \memory[3][1] ,
         \memory[3][0] , \memory[4][7] , \memory[4][6] , \memory[4][5] ,
         \memory[4][4] , \memory[4][3] , \memory[4][2] , \memory[4][1] ,
         \memory[4][0] , \memory[5][7] , \memory[5][6] , \memory[5][5] ,
         \memory[5][4] , \memory[5][3] , \memory[5][2] , \memory[5][1] ,
         \memory[5][0] , \memory[6][7] , \memory[6][6] , \memory[6][5] ,
         \memory[6][4] , \memory[6][3] , \memory[6][2] , \memory[6][1] ,
         \memory[6][0] , \memory[7][7] , \memory[7][6] , \memory[7][5] ,
         \memory[7][4] , \memory[7][3] , \memory[7][2] , \memory[7][1] ,
         \memory[7][0] , n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n184, n185, n186, n187, n188;
  assign N9 = R_Addr[0];
  assign N10 = R_Addr[1];
  assign N11 = R_Addr[2];
  assign test_so1 = \memory[6][1] ;
  assign test_so2 = \memory[7][7] ;

  SDFFRQX2M \memory_reg[1][7]  ( .D(n141), .SI(\memory[1][6] ), .SE(n188), 
        .CK(W_CLK), .RN(n165), .Q(\memory[1][7] ) );
  SDFFRQX2M \memory_reg[1][6]  ( .D(n140), .SI(\memory[1][5] ), .SE(n187), 
        .CK(W_CLK), .RN(n165), .Q(\memory[1][6] ) );
  SDFFRQX2M \memory_reg[1][5]  ( .D(n139), .SI(\memory[1][4] ), .SE(n186), 
        .CK(W_CLK), .RN(n165), .Q(\memory[1][5] ) );
  SDFFRQX2M \memory_reg[1][4]  ( .D(n138), .SI(\memory[1][3] ), .SE(n185), 
        .CK(W_CLK), .RN(n165), .Q(\memory[1][4] ) );
  SDFFRQX2M \memory_reg[1][3]  ( .D(n137), .SI(\memory[1][2] ), .SE(n188), 
        .CK(W_CLK), .RN(n166), .Q(\memory[1][3] ) );
  SDFFRQX2M \memory_reg[1][2]  ( .D(n136), .SI(\memory[1][1] ), .SE(n187), 
        .CK(W_CLK), .RN(n166), .Q(\memory[1][2] ) );
  SDFFRQX2M \memory_reg[1][1]  ( .D(n135), .SI(\memory[1][0] ), .SE(n186), 
        .CK(W_CLK), .RN(n166), .Q(\memory[1][1] ) );
  SDFFRQX2M \memory_reg[1][0]  ( .D(n134), .SI(\memory[0][7] ), .SE(n185), 
        .CK(W_CLK), .RN(n166), .Q(\memory[1][0] ) );
  SDFFRQX2M \memory_reg[5][7]  ( .D(n109), .SI(\memory[5][6] ), .SE(n188), 
        .CK(W_CLK), .RN(n168), .Q(\memory[5][7] ) );
  SDFFRQX2M \memory_reg[5][6]  ( .D(n108), .SI(\memory[5][5] ), .SE(n187), 
        .CK(W_CLK), .RN(n168), .Q(\memory[5][6] ) );
  SDFFRQX2M \memory_reg[5][5]  ( .D(n107), .SI(\memory[5][4] ), .SE(n186), 
        .CK(W_CLK), .RN(n168), .Q(\memory[5][5] ) );
  SDFFRQX2M \memory_reg[5][4]  ( .D(n106), .SI(\memory[5][3] ), .SE(n185), 
        .CK(W_CLK), .RN(n168), .Q(\memory[5][4] ) );
  SDFFRQX2M \memory_reg[5][3]  ( .D(n105), .SI(\memory[5][2] ), .SE(n188), 
        .CK(W_CLK), .RN(n168), .Q(\memory[5][3] ) );
  SDFFRQX2M \memory_reg[5][2]  ( .D(n104), .SI(\memory[5][1] ), .SE(n187), 
        .CK(W_CLK), .RN(n168), .Q(\memory[5][2] ) );
  SDFFRQX2M \memory_reg[5][1]  ( .D(n103), .SI(\memory[5][0] ), .SE(n186), 
        .CK(W_CLK), .RN(n168), .Q(\memory[5][1] ) );
  SDFFRQX2M \memory_reg[5][0]  ( .D(n102), .SI(\memory[4][7] ), .SE(n185), 
        .CK(W_CLK), .RN(n168), .Q(\memory[5][0] ) );
  SDFFRQX2M \memory_reg[3][7]  ( .D(n125), .SI(\memory[3][6] ), .SE(n188), 
        .CK(W_CLK), .RN(n167), .Q(\memory[3][7] ) );
  SDFFRQX2M \memory_reg[3][6]  ( .D(n124), .SI(\memory[3][5] ), .SE(n187), 
        .CK(W_CLK), .RN(n167), .Q(\memory[3][6] ) );
  SDFFRQX2M \memory_reg[3][5]  ( .D(n123), .SI(\memory[3][4] ), .SE(n186), 
        .CK(W_CLK), .RN(n167), .Q(\memory[3][5] ) );
  SDFFRQX2M \memory_reg[3][4]  ( .D(n122), .SI(\memory[3][3] ), .SE(n185), 
        .CK(W_CLK), .RN(n167), .Q(\memory[3][4] ) );
  SDFFRQX2M \memory_reg[3][3]  ( .D(n121), .SI(\memory[3][2] ), .SE(n188), 
        .CK(W_CLK), .RN(n167), .Q(\memory[3][3] ) );
  SDFFRQX2M \memory_reg[3][2]  ( .D(n120), .SI(\memory[3][1] ), .SE(n187), 
        .CK(W_CLK), .RN(n167), .Q(\memory[3][2] ) );
  SDFFRQX2M \memory_reg[3][1]  ( .D(n119), .SI(\memory[3][0] ), .SE(n186), 
        .CK(W_CLK), .RN(n167), .Q(\memory[3][1] ) );
  SDFFRQX2M \memory_reg[3][0]  ( .D(n118), .SI(\memory[2][7] ), .SE(n185), 
        .CK(W_CLK), .RN(n167), .Q(\memory[3][0] ) );
  SDFFRQX2M \memory_reg[7][7]  ( .D(n93), .SI(\memory[7][6] ), .SE(n188), .CK(
        W_CLK), .RN(n169), .Q(\memory[7][7] ) );
  SDFFRQX2M \memory_reg[7][6]  ( .D(n92), .SI(\memory[7][5] ), .SE(n187), .CK(
        W_CLK), .RN(n169), .Q(\memory[7][6] ) );
  SDFFRQX2M \memory_reg[7][5]  ( .D(n91), .SI(\memory[7][4] ), .SE(n186), .CK(
        W_CLK), .RN(n169), .Q(\memory[7][5] ) );
  SDFFRQX2M \memory_reg[7][4]  ( .D(n90), .SI(\memory[7][3] ), .SE(n185), .CK(
        W_CLK), .RN(n169), .Q(\memory[7][4] ) );
  SDFFRQX2M \memory_reg[7][3]  ( .D(n89), .SI(\memory[7][2] ), .SE(n188), .CK(
        W_CLK), .RN(n170), .Q(\memory[7][3] ) );
  SDFFRQX2M \memory_reg[7][2]  ( .D(n88), .SI(\memory[7][1] ), .SE(n187), .CK(
        W_CLK), .RN(n170), .Q(\memory[7][2] ) );
  SDFFRQX2M \memory_reg[7][1]  ( .D(n87), .SI(\memory[7][0] ), .SE(n186), .CK(
        W_CLK), .RN(n170), .Q(\memory[7][1] ) );
  SDFFRQX2M \memory_reg[7][0]  ( .D(n86), .SI(\memory[6][7] ), .SE(n185), .CK(
        W_CLK), .RN(n170), .Q(\memory[7][0] ) );
  SDFFRQX2M \memory_reg[2][7]  ( .D(n133), .SI(\memory[2][6] ), .SE(n188), 
        .CK(W_CLK), .RN(n166), .Q(\memory[2][7] ) );
  SDFFRQX2M \memory_reg[2][6]  ( .D(n132), .SI(\memory[2][5] ), .SE(n187), 
        .CK(W_CLK), .RN(n166), .Q(\memory[2][6] ) );
  SDFFRQX2M \memory_reg[2][5]  ( .D(n131), .SI(\memory[2][4] ), .SE(n186), 
        .CK(W_CLK), .RN(n166), .Q(\memory[2][5] ) );
  SDFFRQX2M \memory_reg[2][4]  ( .D(n130), .SI(\memory[2][3] ), .SE(n185), 
        .CK(W_CLK), .RN(n166), .Q(\memory[2][4] ) );
  SDFFRQX2M \memory_reg[2][3]  ( .D(n129), .SI(\memory[2][2] ), .SE(n188), 
        .CK(W_CLK), .RN(n166), .Q(\memory[2][3] ) );
  SDFFRQX2M \memory_reg[2][2]  ( .D(n128), .SI(\memory[2][1] ), .SE(n187), 
        .CK(W_CLK), .RN(n166), .Q(\memory[2][2] ) );
  SDFFRQX2M \memory_reg[2][1]  ( .D(n127), .SI(\memory[2][0] ), .SE(n186), 
        .CK(W_CLK), .RN(n166), .Q(\memory[2][1] ) );
  SDFFRQX2M \memory_reg[2][0]  ( .D(n126), .SI(\memory[1][7] ), .SE(n185), 
        .CK(W_CLK), .RN(n166), .Q(\memory[2][0] ) );
  SDFFRQX2M \memory_reg[6][7]  ( .D(n101), .SI(\memory[6][6] ), .SE(n188), 
        .CK(W_CLK), .RN(n169), .Q(\memory[6][7] ) );
  SDFFRQX2M \memory_reg[6][6]  ( .D(n100), .SI(\memory[6][5] ), .SE(n187), 
        .CK(W_CLK), .RN(n169), .Q(\memory[6][6] ) );
  SDFFRQX2M \memory_reg[6][5]  ( .D(n99), .SI(\memory[6][4] ), .SE(n186), .CK(
        W_CLK), .RN(n169), .Q(\memory[6][5] ) );
  SDFFRQX2M \memory_reg[6][4]  ( .D(n98), .SI(\memory[6][3] ), .SE(n185), .CK(
        W_CLK), .RN(n169), .Q(\memory[6][4] ) );
  SDFFRQX2M \memory_reg[6][3]  ( .D(n97), .SI(\memory[6][2] ), .SE(n188), .CK(
        W_CLK), .RN(n169), .Q(\memory[6][3] ) );
  SDFFRQX2M \memory_reg[6][2]  ( .D(n96), .SI(test_si2), .SE(n187), .CK(W_CLK), 
        .RN(n169), .Q(\memory[6][2] ) );
  SDFFRQX2M \memory_reg[6][1]  ( .D(n95), .SI(\memory[6][0] ), .SE(n186), .CK(
        W_CLK), .RN(n169), .Q(\memory[6][1] ) );
  SDFFRQX2M \memory_reg[6][0]  ( .D(n94), .SI(\memory[5][7] ), .SE(n185), .CK(
        W_CLK), .RN(n169), .Q(\memory[6][0] ) );
  SDFFRQX2M \memory_reg[0][7]  ( .D(n149), .SI(\memory[0][6] ), .SE(n188), 
        .CK(W_CLK), .RN(n165), .Q(\memory[0][7] ) );
  SDFFRQX2M \memory_reg[0][6]  ( .D(n148), .SI(\memory[0][5] ), .SE(n187), 
        .CK(W_CLK), .RN(n165), .Q(\memory[0][6] ) );
  SDFFRQX2M \memory_reg[0][5]  ( .D(n147), .SI(\memory[0][4] ), .SE(n186), 
        .CK(W_CLK), .RN(n165), .Q(\memory[0][5] ) );
  SDFFRQX2M \memory_reg[0][4]  ( .D(n146), .SI(\memory[0][3] ), .SE(n185), 
        .CK(W_CLK), .RN(n165), .Q(\memory[0][4] ) );
  SDFFRQX2M \memory_reg[0][3]  ( .D(n145), .SI(\memory[0][2] ), .SE(n188), 
        .CK(W_CLK), .RN(n165), .Q(\memory[0][3] ) );
  SDFFRQX2M \memory_reg[0][2]  ( .D(n144), .SI(\memory[0][1] ), .SE(n187), 
        .CK(W_CLK), .RN(n165), .Q(\memory[0][2] ) );
  SDFFRQX2M \memory_reg[0][1]  ( .D(n143), .SI(\memory[0][0] ), .SE(n186), 
        .CK(W_CLK), .RN(n165), .Q(\memory[0][1] ) );
  SDFFRQX2M \memory_reg[0][0]  ( .D(n142), .SI(test_si1), .SE(n185), .CK(W_CLK), .RN(n165), .Q(\memory[0][0] ) );
  SDFFRQX2M \memory_reg[4][7]  ( .D(n117), .SI(\memory[4][6] ), .SE(n188), 
        .CK(W_CLK), .RN(n167), .Q(\memory[4][7] ) );
  SDFFRQX2M \memory_reg[4][6]  ( .D(n116), .SI(\memory[4][5] ), .SE(n187), 
        .CK(W_CLK), .RN(n167), .Q(\memory[4][6] ) );
  SDFFRQX2M \memory_reg[4][5]  ( .D(n115), .SI(\memory[4][4] ), .SE(n186), 
        .CK(W_CLK), .RN(n167), .Q(\memory[4][5] ) );
  SDFFRQX2M \memory_reg[4][4]  ( .D(n114), .SI(\memory[4][3] ), .SE(n185), 
        .CK(W_CLK), .RN(n167), .Q(\memory[4][4] ) );
  SDFFRQX2M \memory_reg[4][3]  ( .D(n113), .SI(\memory[4][2] ), .SE(n188), 
        .CK(W_CLK), .RN(n168), .Q(\memory[4][3] ) );
  SDFFRQX2M \memory_reg[4][2]  ( .D(n112), .SI(\memory[4][1] ), .SE(n187), 
        .CK(W_CLK), .RN(n168), .Q(\memory[4][2] ) );
  SDFFRQX2M \memory_reg[4][1]  ( .D(n111), .SI(\memory[4][0] ), .SE(n186), 
        .CK(W_CLK), .RN(n168), .Q(\memory[4][1] ) );
  SDFFRQX2M \memory_reg[4][0]  ( .D(n110), .SI(\memory[3][7] ), .SE(n185), 
        .CK(W_CLK), .RN(n168), .Q(\memory[4][0] ) );
  BUFX2M U66 ( .A(n75), .Y(n162) );
  BUFX2M U67 ( .A(n83), .Y(n158) );
  BUFX2M U68 ( .A(n84), .Y(n157) );
  BUFX2M U69 ( .A(n81), .Y(n159) );
  BUFX2M U70 ( .A(n77), .Y(n161) );
  BUFX2M U71 ( .A(n78), .Y(n160) );
  BUFX2M U72 ( .A(n164), .Y(n169) );
  BUFX2M U73 ( .A(n164), .Y(n168) );
  BUFX2M U74 ( .A(n163), .Y(n167) );
  BUFX2M U75 ( .A(n163), .Y(n166) );
  BUFX2M U76 ( .A(n163), .Y(n165) );
  BUFX2M U77 ( .A(n164), .Y(n170) );
  NOR2BX2M U78 ( .AN(W_INC), .B(FIFO_Full), .Y(n80) );
  BUFX2M U79 ( .A(W_RST), .Y(n164) );
  BUFX2M U80 ( .A(W_RST), .Y(n163) );
  NAND3X2M U81 ( .A(n179), .B(n180), .C(n76), .Y(n79) );
  NAND3X2M U82 ( .A(n179), .B(n180), .C(n82), .Y(n85) );
  NOR2BX2M U83 ( .AN(n80), .B(W_Addr[2]), .Y(n82) );
  OAI2BB2X1M U84 ( .B0(n178), .B1(n85), .A0N(\memory[0][0] ), .A1N(n85), .Y(
        n142) );
  OAI2BB2X1M U85 ( .B0(n177), .B1(n85), .A0N(\memory[0][1] ), .A1N(n85), .Y(
        n143) );
  OAI2BB2X1M U86 ( .B0(n176), .B1(n85), .A0N(\memory[0][2] ), .A1N(n85), .Y(
        n144) );
  OAI2BB2X1M U87 ( .B0(n175), .B1(n85), .A0N(\memory[0][3] ), .A1N(n85), .Y(
        n145) );
  OAI2BB2X1M U88 ( .B0(n174), .B1(n85), .A0N(\memory[0][4] ), .A1N(n85), .Y(
        n146) );
  OAI2BB2X1M U89 ( .B0(n173), .B1(n85), .A0N(\memory[0][5] ), .A1N(n85), .Y(
        n147) );
  OAI2BB2X1M U90 ( .B0(n172), .B1(n85), .A0N(\memory[0][6] ), .A1N(n85), .Y(
        n148) );
  OAI2BB2X1M U91 ( .B0(n171), .B1(n85), .A0N(\memory[0][7] ), .A1N(n85), .Y(
        n149) );
  OAI2BB2X1M U92 ( .B0(n178), .B1(n79), .A0N(\memory[4][0] ), .A1N(n79), .Y(
        n110) );
  OAI2BB2X1M U93 ( .B0(n177), .B1(n79), .A0N(\memory[4][1] ), .A1N(n79), .Y(
        n111) );
  OAI2BB2X1M U94 ( .B0(n176), .B1(n79), .A0N(\memory[4][2] ), .A1N(n79), .Y(
        n112) );
  OAI2BB2X1M U95 ( .B0(n175), .B1(n79), .A0N(\memory[4][3] ), .A1N(n79), .Y(
        n113) );
  OAI2BB2X1M U96 ( .B0(n174), .B1(n79), .A0N(\memory[4][4] ), .A1N(n79), .Y(
        n114) );
  OAI2BB2X1M U97 ( .B0(n173), .B1(n79), .A0N(\memory[4][5] ), .A1N(n79), .Y(
        n115) );
  OAI2BB2X1M U98 ( .B0(n172), .B1(n79), .A0N(\memory[4][6] ), .A1N(n79), .Y(
        n116) );
  OAI2BB2X1M U99 ( .B0(n171), .B1(n79), .A0N(\memory[4][7] ), .A1N(n79), .Y(
        n117) );
  INVX2M U100 ( .A(W_Data[0]), .Y(n178) );
  INVX2M U101 ( .A(W_Data[1]), .Y(n177) );
  INVX2M U102 ( .A(W_Data[2]), .Y(n176) );
  INVX2M U103 ( .A(W_Data[3]), .Y(n175) );
  INVX2M U104 ( .A(W_Data[4]), .Y(n174) );
  INVX2M U105 ( .A(W_Data[5]), .Y(n173) );
  INVX2M U106 ( .A(W_Data[6]), .Y(n172) );
  INVX2M U107 ( .A(W_Data[7]), .Y(n171) );
  OAI2BB2X1M U108 ( .B0(n178), .B1(n161), .A0N(\memory[6][0] ), .A1N(n161), 
        .Y(n94) );
  OAI2BB2X1M U109 ( .B0(n177), .B1(n161), .A0N(\memory[6][1] ), .A1N(n161), 
        .Y(n95) );
  OAI2BB2X1M U110 ( .B0(n176), .B1(n161), .A0N(\memory[6][2] ), .A1N(n161), 
        .Y(n96) );
  OAI2BB2X1M U111 ( .B0(n175), .B1(n161), .A0N(\memory[6][3] ), .A1N(n161), 
        .Y(n97) );
  OAI2BB2X1M U112 ( .B0(n174), .B1(n161), .A0N(\memory[6][4] ), .A1N(n161), 
        .Y(n98) );
  OAI2BB2X1M U113 ( .B0(n173), .B1(n161), .A0N(\memory[6][5] ), .A1N(n161), 
        .Y(n99) );
  OAI2BB2X1M U114 ( .B0(n172), .B1(n161), .A0N(\memory[6][6] ), .A1N(n161), 
        .Y(n100) );
  OAI2BB2X1M U115 ( .B0(n171), .B1(n161), .A0N(\memory[6][7] ), .A1N(n161), 
        .Y(n101) );
  OAI2BB2X1M U116 ( .B0(n178), .B1(n160), .A0N(\memory[5][0] ), .A1N(n160), 
        .Y(n102) );
  OAI2BB2X1M U117 ( .B0(n177), .B1(n160), .A0N(\memory[5][1] ), .A1N(n160), 
        .Y(n103) );
  OAI2BB2X1M U118 ( .B0(n176), .B1(n160), .A0N(\memory[5][2] ), .A1N(n160), 
        .Y(n104) );
  OAI2BB2X1M U119 ( .B0(n175), .B1(n160), .A0N(\memory[5][3] ), .A1N(n160), 
        .Y(n105) );
  OAI2BB2X1M U120 ( .B0(n174), .B1(n160), .A0N(\memory[5][4] ), .A1N(n160), 
        .Y(n106) );
  OAI2BB2X1M U121 ( .B0(n173), .B1(n160), .A0N(\memory[5][5] ), .A1N(n160), 
        .Y(n107) );
  OAI2BB2X1M U122 ( .B0(n172), .B1(n160), .A0N(\memory[5][6] ), .A1N(n160), 
        .Y(n108) );
  OAI2BB2X1M U123 ( .B0(n171), .B1(n160), .A0N(\memory[5][7] ), .A1N(n160), 
        .Y(n109) );
  OAI2BB2X1M U124 ( .B0(n178), .B1(n159), .A0N(\memory[3][0] ), .A1N(n159), 
        .Y(n118) );
  OAI2BB2X1M U125 ( .B0(n177), .B1(n159), .A0N(\memory[3][1] ), .A1N(n159), 
        .Y(n119) );
  OAI2BB2X1M U126 ( .B0(n176), .B1(n159), .A0N(\memory[3][2] ), .A1N(n159), 
        .Y(n120) );
  OAI2BB2X1M U127 ( .B0(n175), .B1(n159), .A0N(\memory[3][3] ), .A1N(n159), 
        .Y(n121) );
  OAI2BB2X1M U128 ( .B0(n174), .B1(n159), .A0N(\memory[3][4] ), .A1N(n159), 
        .Y(n122) );
  OAI2BB2X1M U129 ( .B0(n173), .B1(n159), .A0N(\memory[3][5] ), .A1N(n159), 
        .Y(n123) );
  OAI2BB2X1M U130 ( .B0(n172), .B1(n159), .A0N(\memory[3][6] ), .A1N(n159), 
        .Y(n124) );
  OAI2BB2X1M U131 ( .B0(n171), .B1(n159), .A0N(\memory[3][7] ), .A1N(n159), 
        .Y(n125) );
  OAI2BB2X1M U132 ( .B0(n178), .B1(n158), .A0N(\memory[2][0] ), .A1N(n158), 
        .Y(n126) );
  OAI2BB2X1M U133 ( .B0(n177), .B1(n158), .A0N(\memory[2][1] ), .A1N(n158), 
        .Y(n127) );
  OAI2BB2X1M U134 ( .B0(n176), .B1(n158), .A0N(\memory[2][2] ), .A1N(n158), 
        .Y(n128) );
  OAI2BB2X1M U135 ( .B0(n175), .B1(n158), .A0N(\memory[2][3] ), .A1N(n158), 
        .Y(n129) );
  OAI2BB2X1M U136 ( .B0(n174), .B1(n158), .A0N(\memory[2][4] ), .A1N(n158), 
        .Y(n130) );
  OAI2BB2X1M U137 ( .B0(n173), .B1(n158), .A0N(\memory[2][5] ), .A1N(n158), 
        .Y(n131) );
  OAI2BB2X1M U138 ( .B0(n172), .B1(n158), .A0N(\memory[2][6] ), .A1N(n158), 
        .Y(n132) );
  OAI2BB2X1M U139 ( .B0(n171), .B1(n158), .A0N(\memory[2][7] ), .A1N(n158), 
        .Y(n133) );
  OAI2BB2X1M U140 ( .B0(n178), .B1(n157), .A0N(\memory[1][0] ), .A1N(n157), 
        .Y(n134) );
  OAI2BB2X1M U141 ( .B0(n177), .B1(n157), .A0N(\memory[1][1] ), .A1N(n157), 
        .Y(n135) );
  OAI2BB2X1M U142 ( .B0(n176), .B1(n157), .A0N(\memory[1][2] ), .A1N(n157), 
        .Y(n136) );
  OAI2BB2X1M U143 ( .B0(n175), .B1(n157), .A0N(\memory[1][3] ), .A1N(n157), 
        .Y(n137) );
  OAI2BB2X1M U144 ( .B0(n174), .B1(n157), .A0N(\memory[1][4] ), .A1N(n157), 
        .Y(n138) );
  OAI2BB2X1M U145 ( .B0(n173), .B1(n157), .A0N(\memory[1][5] ), .A1N(n157), 
        .Y(n139) );
  OAI2BB2X1M U146 ( .B0(n172), .B1(n157), .A0N(\memory[1][6] ), .A1N(n157), 
        .Y(n140) );
  OAI2BB2X1M U147 ( .B0(n171), .B1(n157), .A0N(\memory[1][7] ), .A1N(n157), 
        .Y(n141) );
  OAI2BB2X1M U148 ( .B0(n162), .B1(n178), .A0N(\memory[7][0] ), .A1N(n162), 
        .Y(n86) );
  OAI2BB2X1M U149 ( .B0(n162), .B1(n177), .A0N(\memory[7][1] ), .A1N(n162), 
        .Y(n87) );
  OAI2BB2X1M U150 ( .B0(n162), .B1(n176), .A0N(\memory[7][2] ), .A1N(n162), 
        .Y(n88) );
  OAI2BB2X1M U151 ( .B0(n162), .B1(n175), .A0N(\memory[7][3] ), .A1N(n162), 
        .Y(n89) );
  OAI2BB2X1M U152 ( .B0(n162), .B1(n174), .A0N(\memory[7][4] ), .A1N(n162), 
        .Y(n90) );
  OAI2BB2X1M U153 ( .B0(n162), .B1(n173), .A0N(\memory[7][5] ), .A1N(n162), 
        .Y(n91) );
  OAI2BB2X1M U154 ( .B0(n162), .B1(n172), .A0N(\memory[7][6] ), .A1N(n162), 
        .Y(n92) );
  OAI2BB2X1M U155 ( .B0(n162), .B1(n171), .A0N(\memory[7][7] ), .A1N(n162), 
        .Y(n93) );
  AND2X2M U156 ( .A(W_Addr[2]), .B(n80), .Y(n76) );
  NAND3X2M U157 ( .A(n76), .B(n180), .C(W_Addr[0]), .Y(n78) );
  NAND3X2M U158 ( .A(W_Addr[1]), .B(W_Addr[0]), .C(n82), .Y(n81) );
  NAND3X2M U159 ( .A(W_Addr[0]), .B(n180), .C(n82), .Y(n84) );
  NAND3X2M U160 ( .A(W_Addr[1]), .B(n179), .C(n82), .Y(n83) );
  NAND3X2M U161 ( .A(W_Addr[0]), .B(n76), .C(W_Addr[1]), .Y(n75) );
  NAND3X2M U162 ( .A(n76), .B(n179), .C(W_Addr[1]), .Y(n77) );
  INVX2M U163 ( .A(W_Addr[0]), .Y(n179) );
  INVX2M U164 ( .A(W_Addr[1]), .Y(n180) );
  BUFX4M U165 ( .A(N9), .Y(n156) );
  MX2X2M U166 ( .A(n155), .B(n154), .S0(N11), .Y(R_Data[7]) );
  MX4X1M U167 ( .A(\memory[0][7] ), .B(\memory[1][7] ), .C(\memory[2][7] ), 
        .D(\memory[3][7] ), .S0(n156), .S1(N10), .Y(n155) );
  MX4X1M U168 ( .A(\memory[4][7] ), .B(\memory[5][7] ), .C(\memory[6][7] ), 
        .D(\memory[7][7] ), .S0(n156), .S1(N10), .Y(n154) );
  MX2X2M U169 ( .A(n66), .B(n65), .S0(N11), .Y(R_Data[0]) );
  MX4X1M U170 ( .A(\memory[0][0] ), .B(\memory[1][0] ), .C(\memory[2][0] ), 
        .D(\memory[3][0] ), .S0(n156), .S1(N10), .Y(n66) );
  MX4X1M U171 ( .A(\memory[4][0] ), .B(\memory[5][0] ), .C(\memory[6][0] ), 
        .D(\memory[7][0] ), .S0(n156), .S1(N10), .Y(n65) );
  MX2X2M U172 ( .A(n68), .B(n67), .S0(N11), .Y(R_Data[1]) );
  MX4X1M U173 ( .A(\memory[0][1] ), .B(\memory[1][1] ), .C(\memory[2][1] ), 
        .D(\memory[3][1] ), .S0(n156), .S1(N10), .Y(n68) );
  MX4X1M U174 ( .A(\memory[4][1] ), .B(\memory[5][1] ), .C(\memory[6][1] ), 
        .D(\memory[7][1] ), .S0(n156), .S1(N10), .Y(n67) );
  MX2X2M U175 ( .A(n70), .B(n69), .S0(N11), .Y(R_Data[2]) );
  MX4X1M U176 ( .A(\memory[0][2] ), .B(\memory[1][2] ), .C(\memory[2][2] ), 
        .D(\memory[3][2] ), .S0(n156), .S1(N10), .Y(n70) );
  MX4X1M U177 ( .A(\memory[4][2] ), .B(\memory[5][2] ), .C(\memory[6][2] ), 
        .D(\memory[7][2] ), .S0(n156), .S1(N10), .Y(n69) );
  MX2X2M U178 ( .A(n72), .B(n71), .S0(N11), .Y(R_Data[3]) );
  MX4X1M U179 ( .A(\memory[0][3] ), .B(\memory[1][3] ), .C(\memory[2][3] ), 
        .D(\memory[3][3] ), .S0(n156), .S1(N10), .Y(n72) );
  MX4X1M U180 ( .A(\memory[4][3] ), .B(\memory[5][3] ), .C(\memory[6][3] ), 
        .D(\memory[7][3] ), .S0(n156), .S1(N10), .Y(n71) );
  MX2X2M U181 ( .A(n74), .B(n73), .S0(N11), .Y(R_Data[4]) );
  MX4X1M U182 ( .A(\memory[0][4] ), .B(\memory[1][4] ), .C(\memory[2][4] ), 
        .D(\memory[3][4] ), .S0(n156), .S1(N10), .Y(n74) );
  MX4X1M U183 ( .A(\memory[4][4] ), .B(\memory[5][4] ), .C(\memory[6][4] ), 
        .D(\memory[7][4] ), .S0(n156), .S1(N10), .Y(n73) );
  MX2X2M U184 ( .A(n151), .B(n150), .S0(N11), .Y(R_Data[5]) );
  MX4X1M U185 ( .A(\memory[0][5] ), .B(\memory[1][5] ), .C(\memory[2][5] ), 
        .D(\memory[3][5] ), .S0(n156), .S1(N10), .Y(n151) );
  MX4X1M U186 ( .A(\memory[4][5] ), .B(\memory[5][5] ), .C(\memory[6][5] ), 
        .D(\memory[7][5] ), .S0(n156), .S1(N10), .Y(n150) );
  MX2X2M U187 ( .A(n153), .B(n152), .S0(N11), .Y(R_Data[6]) );
  MX4X1M U188 ( .A(\memory[0][6] ), .B(\memory[1][6] ), .C(\memory[2][6] ), 
        .D(\memory[3][6] ), .S0(n156), .S1(N10), .Y(n153) );
  MX4X1M U189 ( .A(\memory[4][6] ), .B(\memory[5][6] ), .C(\memory[6][6] ), 
        .D(\memory[7][6] ), .S0(n156), .S1(N10), .Y(n152) );
  INVXLM U190 ( .A(test_se), .Y(n184) );
  INVXLM U191 ( .A(n184), .Y(n185) );
  INVXLM U192 ( .A(n184), .Y(n186) );
  INVXLM U193 ( .A(n184), .Y(n187) );
  INVXLM U194 ( .A(n184), .Y(n188) );
endmodule


module AS_FIFO_TOP_Data_Width8_Addr_Size3_FIFO_Dipth8_NUM_STAGES2_test_1 ( 
        I_W_CLK, I_W_RST, I_W_INC, I_Data, I_R_CLK, I_R_RST, I_R_INC, O_Data, 
        FIFO_Full, FIFO_Empty, test_si2, test_si1, test_so2, test_so1, test_se
 );
  input [7:0] I_Data;
  output [7:0] O_Data;
  input I_W_CLK, I_W_RST, I_W_INC, I_R_CLK, I_R_RST, I_R_INC, test_si2,
         test_si1, test_se;
  output FIFO_Full, FIFO_Empty, test_so2, test_so1;
  wire   n1, n2, n3, n4;
  wire   [3:0] GR_Ptr_Syn;
  wire   [2:0] W_Addr;
  wire   [3:0] GW_Ptr;
  wire   [3:0] GW_Ptr_Syn;
  wire   [2:0] R_Addr;
  wire   [3:0] GR_Ptr;

  INVX2M U1 ( .A(n4), .Y(n3) );
  INVX2M U2 ( .A(I_W_RST), .Y(n4) );
  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(I_R_RST), .Y(n2) );
  FIFO_W_Addr_Size3_test_1 U0_FIFO_W ( .W_CLK(I_W_CLK), .W_RST(n3), .W_INC(
        I_W_INC), .GR_Ptr_Syn(GR_Ptr_Syn), .FIFO_Full(FIFO_Full), .W_Addr(
        W_Addr), .GW_Ptr(GW_Ptr), .test_si(test_si1), .test_se(test_se) );
  BIT_SYNC_2_00000004_test_0 U1_W2R_SYNC ( .CLK(I_R_CLK), .RST(n1), .ASYNC(
        GW_Ptr), .SYNC(GW_Ptr_Syn), .test_se(test_se) );
  FIFO_R_Addr_Size3_test_1 U2_FIFO_R ( .R_CLK(I_R_CLK), .R_RST(n1), .R_INC(
        I_R_INC), .GW_Ptr_Syn(GW_Ptr_Syn), .FIFO_Empty(FIFO_Empty), .R_Addr(
        R_Addr), .GR_Ptr(GR_Ptr), .test_se(test_se) );
  BIT_SYNC_2_00000004_test_1 U3_R2W_SYNC ( .CLK(I_W_CLK), .RST(n3), .ASYNC(
        GR_Ptr), .SYNC(GR_Ptr_Syn), .test_se(test_se) );
  FIFO_MEM_Data_Width8_Addr_Size3_FIFO_Dipth8_test_1 U4_FIFO_MEM ( .W_CLK(
        I_W_CLK), .W_RST(n3), .W_INC(I_W_INC), .FIFO_Full(FIFO_Full), .W_Addr(
        W_Addr), .W_Data(I_Data), .R_Addr(R_Addr), .R_Data(O_Data), .test_si2(
        test_si2), .test_si1(GR_Ptr_Syn[3]), .test_so2(test_so2), .test_so1(
        test_so1), .test_se(test_se) );
endmodule


module PULSE_GEN_test_1 ( clk, rst, lvl_sig, pulse_sig, test_si, test_so, 
        test_se );
  input clk, rst, lvl_sig, test_si, test_se;
  output pulse_sig, test_so;
  wire   pls_flop, rcv_flop;
  assign test_so = rcv_flop;

  SDFFRQX2M rcv_flop_reg ( .D(lvl_sig), .SI(pls_flop), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(rcv_flop) );
  SDFFRQX2M pls_flop_reg ( .D(rcv_flop), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(pls_flop) );
  NOR2BX2M U5 ( .AN(rcv_flop), .B(pls_flop), .Y(pulse_sig) );
endmodule


module RST_SYN_NUM_STAGES2_test_0 ( RST, CLK, SYNC_RST, test_si, test_se );
  input RST, CLK, test_si, test_se;
  output SYNC_RST;
  wire   \sync_reg[0] ;

  SDFFRQX2M \sync_reg_reg[1]  ( .D(\sync_reg[0] ), .SI(\sync_reg[0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
  SDFFRQX2M \sync_reg_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(\sync_reg[0] ) );
endmodule


module RST_SYN_NUM_STAGES2_test_1 ( RST, CLK, SYNC_RST, test_si, test_se );
  input RST, CLK, test_si, test_se;
  output SYNC_RST;
  wire   \sync_reg[0] ;

  SDFFRQX2M \sync_reg_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(\sync_reg[0] ) );
  SDFFRQX1M \sync_reg_reg[1]  ( .D(\sync_reg[0] ), .SI(\sync_reg[0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
endmodule


module DATA_SYNC_NUM_STAGES2_BUS_WIDTH8_test_1 ( CLK, RST, unsync_bus, 
        bus_enable, sync_bus, enable_pulse_d, test_si, test_se );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input CLK, RST, bus_enable, test_si, test_se;
  output enable_pulse_d;
  wire   Pulse_FF_Out, n1, n4, n6, n8, n10, n12, n14, n16, n18, n22;
  wire   [1:0] en_sync_reg;

  SDFFRQX2M Pulse_FF_Out_reg ( .D(en_sync_reg[1]), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(Pulse_FF_Out) );
  SDFFRQX2M \en_sync_reg_reg[1]  ( .D(en_sync_reg[0]), .SI(en_sync_reg[0]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(en_sync_reg[1]) );
  SDFFRQX2M \sync_bus_reg[3]  ( .D(n10), .SI(sync_bus[2]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[3]) );
  SDFFRQX2M \sync_bus_reg[7]  ( .D(n18), .SI(sync_bus[6]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[7]) );
  SDFFRQX2M \sync_bus_reg[4]  ( .D(n12), .SI(sync_bus[3]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[4]) );
  SDFFRQX2M \sync_bus_reg[0]  ( .D(n4), .SI(enable_pulse_d), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(sync_bus[0]) );
  SDFFRQX2M \sync_bus_reg[2]  ( .D(n8), .SI(sync_bus[1]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[2]) );
  SDFFRQX2M \sync_bus_reg[1]  ( .D(n6), .SI(sync_bus[0]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[1]) );
  SDFFRQX2M \sync_bus_reg[6]  ( .D(n16), .SI(sync_bus[5]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[6]) );
  SDFFRQX2M \sync_bus_reg[5]  ( .D(n14), .SI(sync_bus[4]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[5]) );
  SDFFRQX2M enable_pulse_d_reg ( .D(n22), .SI(en_sync_reg[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(enable_pulse_d) );
  SDFFRQX2M \en_sync_reg_reg[0]  ( .D(bus_enable), .SI(Pulse_FF_Out), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(en_sync_reg[0]) );
  INVX2M U3 ( .A(n1), .Y(n22) );
  NAND2BX2M U4 ( .AN(Pulse_FF_Out), .B(en_sync_reg[1]), .Y(n1) );
  AO22X1M U5 ( .A0(unsync_bus[0]), .A1(n22), .B0(sync_bus[0]), .B1(n1), .Y(n4)
         );
  AO22X1M U6 ( .A0(unsync_bus[1]), .A1(n22), .B0(sync_bus[1]), .B1(n1), .Y(n6)
         );
  AO22X1M U7 ( .A0(unsync_bus[2]), .A1(n22), .B0(sync_bus[2]), .B1(n1), .Y(n8)
         );
  AO22X1M U8 ( .A0(unsync_bus[3]), .A1(n22), .B0(sync_bus[3]), .B1(n1), .Y(n10) );
  AO22X1M U9 ( .A0(unsync_bus[4]), .A1(n22), .B0(sync_bus[4]), .B1(n1), .Y(n12) );
  AO22X1M U10 ( .A0(unsync_bus[5]), .A1(n22), .B0(sync_bus[5]), .B1(n1), .Y(
        n14) );
  AO22X1M U11 ( .A0(unsync_bus[6]), .A1(n22), .B0(sync_bus[6]), .B1(n1), .Y(
        n16) );
  AO22X1M U12 ( .A0(unsync_bus[7]), .A1(n22), .B0(sync_bus[7]), .B1(n1), .Y(
        n18) );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;


  TLATNCAX12M U0_TLATNCAX12M ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module ALU_IN_Width8_DW_div_uns_0 ( a, b, quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] ,
         \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] ,
         \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] ,
         \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] ,
         \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] ,
         \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] ,
         \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] ,
         \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] ,
         \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] ,
         \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] ,
         \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] ,
         \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] ,
         \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] ,
         \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] , \u_div/CryTmp[7][1] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[1][4] , \u_div/PartRem[1][5] , \u_div/PartRem[1][6] ,
         \u_div/PartRem[1][7] , \u_div/PartRem[2][1] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[2][3] , \u_div/PartRem[2][4] , \u_div/PartRem[2][5] ,
         \u_div/PartRem[2][6] , \u_div/PartRem[3][1] , \u_div/PartRem[3][2] ,
         \u_div/PartRem[3][3] , \u_div/PartRem[3][4] , \u_div/PartRem[3][5] ,
         \u_div/PartRem[4][1] , \u_div/PartRem[4][2] , \u_div/PartRem[4][3] ,
         \u_div/PartRem[4][4] , \u_div/PartRem[5][1] , \u_div/PartRem[5][2] ,
         \u_div/PartRem[5][3] , \u_div/PartRem[6][1] , \u_div/PartRem[6][2] ,
         \u_div/PartRem[7][1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21;

  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n13), 
        .CI(\u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n15), 
        .CI(\u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n16), 
        .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n17), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n14), 
        .CI(\u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n12), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n11), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n17), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n17), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n17), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n17), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n17), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n15), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n14), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n13), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n14), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n17), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n16), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n15), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n13), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n16), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n14), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n15), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n16), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n15), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n16), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n16), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n12), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  INVX2M U1 ( .A(b[0]), .Y(n18) );
  XNOR2X2M U2 ( .A(n18), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  XNOR2X2M U3 ( .A(n18), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U4 ( .A(n18), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X2M U5 ( .A(n18), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U6 ( .A(n18), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U7 ( .A(n18), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  XNOR2X2M U8 ( .A(n18), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  OR2X2M U9 ( .A(n18), .B(a[7]), .Y(\u_div/CryTmp[7][1] ) );
  INVX2M U10 ( .A(b[1]), .Y(n17) );
  NAND2X2M U11 ( .A(n2), .B(n10), .Y(\u_div/CryTmp[0][1] ) );
  NAND2X2M U12 ( .A(n2), .B(n3), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U13 ( .A(a[5]), .Y(n3) );
  INVX2M U14 ( .A(n18), .Y(n2) );
  NAND2X2M U15 ( .A(n4), .B(n5), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U16 ( .A(a[4]), .Y(n5) );
  INVX2M U17 ( .A(n18), .Y(n4) );
  NAND2X2M U18 ( .A(n6), .B(n7), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U19 ( .A(a[3]), .Y(n7) );
  INVX2M U20 ( .A(n18), .Y(n6) );
  NAND2X2M U21 ( .A(n6), .B(n8), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U22 ( .A(a[2]), .Y(n8) );
  NAND2X2M U23 ( .A(n4), .B(n9), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U24 ( .A(a[1]), .Y(n9) );
  NAND2X2M U25 ( .A(n2), .B(n1), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U26 ( .A(a[6]), .Y(n1) );
  INVX2M U27 ( .A(b[6]), .Y(n12) );
  INVX2M U28 ( .A(a[0]), .Y(n10) );
  INVX2M U29 ( .A(b[7]), .Y(n11) );
  INVX2M U30 ( .A(b[2]), .Y(n16) );
  INVX2M U31 ( .A(b[3]), .Y(n15) );
  INVX2M U32 ( .A(b[4]), .Y(n14) );
  INVX2M U33 ( .A(b[5]), .Y(n13) );
  CLKMX2X2M U34 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U35 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  CLKMX2X2M U36 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  CLKMX2X2M U37 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  CLKMX2X2M U38 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  CLKMX2X2M U39 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  CLKMX2X2M U40 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKMX2X2M U41 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U42 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  CLKMX2X2M U43 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  CLKMX2X2M U44 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  CLKMX2X2M U45 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  CLKMX2X2M U46 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U47 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U48 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2M U49 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  CLKMX2X2M U50 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  CLKMX2X2M U51 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U52 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U53 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  CLKMX2X2M U54 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  CLKMX2X2M U55 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U56 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2M U57 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  CLKMX2X2M U58 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  CLKMX2X2M U59 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2M U60 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X2M U61 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND4X1M U62 ( .A(\u_div/CryTmp[7][1] ), .B(n19), .C(n17), .D(n16), .Y(
        quotient[7]) );
  AND3X1M U63 ( .A(n19), .B(n16), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6]) );
  AND2X1M U64 ( .A(\u_div/CryTmp[5][3] ), .B(n19), .Y(quotient[5]) );
  AND2X1M U65 ( .A(n20), .B(n15), .Y(n19) );
  AND2X1M U66 ( .A(\u_div/CryTmp[4][4] ), .B(n20), .Y(quotient[4]) );
  AND3X1M U67 ( .A(n21), .B(n14), .C(n13), .Y(n20) );
  AND3X1M U68 ( .A(n21), .B(n13), .C(\u_div/CryTmp[3][5] ), .Y(quotient[3]) );
  AND2X1M U69 ( .A(\u_div/CryTmp[2][6] ), .B(n21), .Y(quotient[2]) );
  NOR2X1M U70 ( .A(b[6]), .B(b[7]), .Y(n21) );
  AND2X1M U71 ( .A(\u_div/CryTmp[1][7] ), .B(n11), .Y(quotient[1]) );
endmodule


module ALU_IN_Width8_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [9:0] carry;

  ADDFX2M U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  XNOR2X2M U1 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U2 ( .A(B[6]), .Y(n3) );
  INVX2M U3 ( .A(B[1]), .Y(n8) );
  NAND2X2M U4 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U5 ( .A(A[0]), .Y(n1) );
  INVX2M U6 ( .A(B[7]), .Y(n2) );
  INVX2M U7 ( .A(B[0]), .Y(n9) );
  INVX2M U8 ( .A(B[2]), .Y(n7) );
  INVX2M U9 ( .A(B[3]), .Y(n6) );
  INVX2M U10 ( .A(B[4]), .Y(n5) );
  INVX2M U11 ( .A(B[5]), .Y(n4) );
  CLKINVX1M U12 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module ALU_IN_Width8_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ALU_IN_Width8_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27;

  AOI21BX2M U2 ( .A0(n18), .A1(A[12]), .B0N(n19), .Y(n1) );
  NAND2X2M U3 ( .A(A[7]), .B(B[7]), .Y(n15) );
  XNOR2X2M U4 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U5 ( .A(B[7]), .Y(n8) );
  XNOR2X2M U6 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  INVX2M U7 ( .A(A[6]), .Y(n9) );
  INVX2M U8 ( .A(n9), .Y(SUM[6]) );
  BUFX2M U9 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U10 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U11 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U12 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U13 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U14 ( .A(A[5]), .Y(SUM[5]) );
  XNOR2X1M U15 ( .A(n10), .B(n11), .Y(SUM[9]) );
  NOR2X1M U16 ( .A(n12), .B(n13), .Y(n11) );
  CLKXOR2X2M U17 ( .A(n14), .B(n15), .Y(SUM[8]) );
  NAND2BX1M U18 ( .AN(n16), .B(n17), .Y(n14) );
  OAI21X1M U19 ( .A0(A[12]), .A1(n18), .B0(B[12]), .Y(n19) );
  XOR3XLM U20 ( .A(B[12]), .B(A[12]), .C(n18), .Y(SUM[12]) );
  OAI21BX1M U21 ( .A0(n20), .A1(n21), .B0N(n22), .Y(n18) );
  XNOR2X1M U22 ( .A(n21), .B(n23), .Y(SUM[11]) );
  NOR2X1M U23 ( .A(n22), .B(n20), .Y(n23) );
  NOR2X1M U24 ( .A(B[11]), .B(A[11]), .Y(n20) );
  AND2X1M U25 ( .A(B[11]), .B(A[11]), .Y(n22) );
  OA21X1M U26 ( .A0(n24), .A1(n25), .B0(n26), .Y(n21) );
  CLKXOR2X2M U27 ( .A(n27), .B(n25), .Y(SUM[10]) );
  AOI2BB1X1M U28 ( .A0N(n10), .A1N(n13), .B0(n12), .Y(n25) );
  AND2X1M U29 ( .A(B[9]), .B(A[9]), .Y(n12) );
  NOR2X1M U30 ( .A(B[9]), .B(A[9]), .Y(n13) );
  OA21X1M U31 ( .A0(n15), .A1(n16), .B0(n17), .Y(n10) );
  CLKNAND2X2M U32 ( .A(B[8]), .B(A[8]), .Y(n17) );
  NOR2X1M U33 ( .A(B[8]), .B(A[8]), .Y(n16) );
  NAND2BX1M U34 ( .AN(n24), .B(n26), .Y(n27) );
  CLKNAND2X2M U35 ( .A(B[10]), .B(A[10]), .Y(n26) );
  NOR2X1M U36 ( .A(B[10]), .B(A[10]), .Y(n24) );
endmodule


module ALU_IN_Width8_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[1][0] , \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] ,
         \ab[0][3] , \ab[0][2] , \ab[0][1] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \SUMB[7][6] , \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] ,
         \SUMB[7][1] , \SUMB[7][0] , \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] ,
         \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] ,
         \SUMB[4][5] , \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][6] , \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] ,
         \SUMB[3][1] , \SUMB[2][6] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] ,
         \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[4] , \A1[3] ,
         \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39;

  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n9), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n8), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n7), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n6), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n5), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n4), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n3), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  AND2X2M U2 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  CLKXOR2X2M U10 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  INVX2M U11 ( .A(\ab[0][7] ), .Y(n23) );
  INVX2M U12 ( .A(\ab[0][6] ), .Y(n22) );
  CLKXOR2X2M U13 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U14 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  CLKXOR2X2M U15 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  CLKXOR2X2M U16 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U17 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U18 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U19 ( .A(\ab[0][5] ), .Y(n21) );
  INVX2M U20 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U21 ( .A(\ab[0][3] ), .Y(n19) );
  INVX2M U22 ( .A(\ab[0][2] ), .Y(n18) );
  XNOR2X2M U23 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  XNOR2X2M U24 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U25 ( .A(\SUMB[7][1] ), .Y(n17) );
  AND2X2M U26 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n11) );
  AND2X2M U27 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n12) );
  AND2X2M U28 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n13) );
  AND2X2M U29 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n14) );
  AND2X2M U30 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n15) );
  AND2X2M U31 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n16) );
  XNOR2X2M U32 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U33 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U34 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  XNOR2X2M U35 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  XNOR2X2M U36 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  INVX2M U37 ( .A(A[6]), .Y(n33) );
  INVX2M U38 ( .A(A[7]), .Y(n32) );
  INVX2M U39 ( .A(A[1]), .Y(n38) );
  INVX2M U40 ( .A(A[0]), .Y(n39) );
  INVX2M U41 ( .A(A[2]), .Y(n37) );
  INVX2M U42 ( .A(A[3]), .Y(n36) );
  INVX2M U43 ( .A(B[6]), .Y(n25) );
  INVX2M U44 ( .A(A[5]), .Y(n34) );
  INVX2M U45 ( .A(A[4]), .Y(n35) );
  INVX2M U46 ( .A(B[7]), .Y(n24) );
  INVX2M U47 ( .A(B[1]), .Y(n30) );
  INVX2M U48 ( .A(B[0]), .Y(n31) );
  INVX2M U49 ( .A(B[3]), .Y(n28) );
  INVX2M U50 ( .A(B[2]), .Y(n29) );
  INVX2M U51 ( .A(B[5]), .Y(n26) );
  INVX2M U52 ( .A(B[4]), .Y(n27) );
  NOR2X1M U54 ( .A(n32), .B(n24), .Y(\ab[7][7] ) );
  NOR2X1M U55 ( .A(n32), .B(n25), .Y(\ab[7][6] ) );
  NOR2X1M U56 ( .A(n32), .B(n26), .Y(\ab[7][5] ) );
  NOR2X1M U57 ( .A(n32), .B(n27), .Y(\ab[7][4] ) );
  NOR2X1M U58 ( .A(n32), .B(n28), .Y(\ab[7][3] ) );
  NOR2X1M U59 ( .A(n32), .B(n29), .Y(\ab[7][2] ) );
  NOR2X1M U60 ( .A(n32), .B(n30), .Y(\ab[7][1] ) );
  NOR2X1M U61 ( .A(n32), .B(n31), .Y(\ab[7][0] ) );
  NOR2X1M U62 ( .A(n24), .B(n33), .Y(\ab[6][7] ) );
  NOR2X1M U63 ( .A(n25), .B(n33), .Y(\ab[6][6] ) );
  NOR2X1M U64 ( .A(n26), .B(n33), .Y(\ab[6][5] ) );
  NOR2X1M U65 ( .A(n27), .B(n33), .Y(\ab[6][4] ) );
  NOR2X1M U66 ( .A(n28), .B(n33), .Y(\ab[6][3] ) );
  NOR2X1M U67 ( .A(n29), .B(n33), .Y(\ab[6][2] ) );
  NOR2X1M U68 ( .A(n30), .B(n33), .Y(\ab[6][1] ) );
  NOR2X1M U69 ( .A(n31), .B(n33), .Y(\ab[6][0] ) );
  NOR2X1M U70 ( .A(n24), .B(n34), .Y(\ab[5][7] ) );
  NOR2X1M U71 ( .A(n25), .B(n34), .Y(\ab[5][6] ) );
  NOR2X1M U72 ( .A(n26), .B(n34), .Y(\ab[5][5] ) );
  NOR2X1M U73 ( .A(n27), .B(n34), .Y(\ab[5][4] ) );
  NOR2X1M U74 ( .A(n28), .B(n34), .Y(\ab[5][3] ) );
  NOR2X1M U75 ( .A(n29), .B(n34), .Y(\ab[5][2] ) );
  NOR2X1M U76 ( .A(n30), .B(n34), .Y(\ab[5][1] ) );
  NOR2X1M U77 ( .A(n31), .B(n34), .Y(\ab[5][0] ) );
  NOR2X1M U78 ( .A(n24), .B(n35), .Y(\ab[4][7] ) );
  NOR2X1M U79 ( .A(n25), .B(n35), .Y(\ab[4][6] ) );
  NOR2X1M U80 ( .A(n26), .B(n35), .Y(\ab[4][5] ) );
  NOR2X1M U81 ( .A(n27), .B(n35), .Y(\ab[4][4] ) );
  NOR2X1M U82 ( .A(n28), .B(n35), .Y(\ab[4][3] ) );
  NOR2X1M U83 ( .A(n29), .B(n35), .Y(\ab[4][2] ) );
  NOR2X1M U84 ( .A(n30), .B(n35), .Y(\ab[4][1] ) );
  NOR2X1M U85 ( .A(n31), .B(n35), .Y(\ab[4][0] ) );
  NOR2X1M U86 ( .A(n24), .B(n36), .Y(\ab[3][7] ) );
  NOR2X1M U87 ( .A(n25), .B(n36), .Y(\ab[3][6] ) );
  NOR2X1M U88 ( .A(n26), .B(n36), .Y(\ab[3][5] ) );
  NOR2X1M U89 ( .A(n27), .B(n36), .Y(\ab[3][4] ) );
  NOR2X1M U90 ( .A(n28), .B(n36), .Y(\ab[3][3] ) );
  NOR2X1M U91 ( .A(n29), .B(n36), .Y(\ab[3][2] ) );
  NOR2X1M U92 ( .A(n30), .B(n36), .Y(\ab[3][1] ) );
  NOR2X1M U93 ( .A(n31), .B(n36), .Y(\ab[3][0] ) );
  NOR2X1M U94 ( .A(n24), .B(n37), .Y(\ab[2][7] ) );
  NOR2X1M U95 ( .A(n25), .B(n37), .Y(\ab[2][6] ) );
  NOR2X1M U96 ( .A(n26), .B(n37), .Y(\ab[2][5] ) );
  NOR2X1M U97 ( .A(n27), .B(n37), .Y(\ab[2][4] ) );
  NOR2X1M U98 ( .A(n28), .B(n37), .Y(\ab[2][3] ) );
  NOR2X1M U99 ( .A(n29), .B(n37), .Y(\ab[2][2] ) );
  NOR2X1M U100 ( .A(n30), .B(n37), .Y(\ab[2][1] ) );
  NOR2X1M U101 ( .A(n31), .B(n37), .Y(\ab[2][0] ) );
  NOR2X1M U102 ( .A(n24), .B(n38), .Y(\ab[1][7] ) );
  NOR2X1M U103 ( .A(n25), .B(n38), .Y(\ab[1][6] ) );
  NOR2X1M U104 ( .A(n26), .B(n38), .Y(\ab[1][5] ) );
  NOR2X1M U105 ( .A(n27), .B(n38), .Y(\ab[1][4] ) );
  NOR2X1M U106 ( .A(n28), .B(n38), .Y(\ab[1][3] ) );
  NOR2X1M U107 ( .A(n29), .B(n38), .Y(\ab[1][2] ) );
  NOR2X1M U108 ( .A(n30), .B(n38), .Y(\ab[1][1] ) );
  NOR2X1M U109 ( .A(n31), .B(n38), .Y(\ab[1][0] ) );
  NOR2X1M U110 ( .A(n24), .B(n39), .Y(\ab[0][7] ) );
  NOR2X1M U111 ( .A(n25), .B(n39), .Y(\ab[0][6] ) );
  NOR2X1M U112 ( .A(n26), .B(n39), .Y(\ab[0][5] ) );
  NOR2X1M U113 ( .A(n27), .B(n39), .Y(\ab[0][4] ) );
  NOR2X1M U114 ( .A(n28), .B(n39), .Y(\ab[0][3] ) );
  NOR2X1M U115 ( .A(n29), .B(n39), .Y(\ab[0][2] ) );
  NOR2X1M U116 ( .A(n30), .B(n39), .Y(\ab[0][1] ) );
  NOR2X1M U117 ( .A(n31), .B(n39), .Y(PRODUCT[0]) );
  ALU_IN_Width8_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , 
        \A1[9] , \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , 
        \A1[2] , \A1[1] , \A1[0] }), .B({n10, n14, n16, n13, n15, n12, n11, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(
        PRODUCT[15:2]) );
endmodule


module ALU_IN_Width8_test_1 ( CLK, RST, EN, ALU_FUN, A, B, ALU_OUT, OUT_Valid, 
        test_si2, test_si1, test_se );
  input [3:0] ALU_FUN;
  input [7:0] A;
  input [7:0] B;
  output [15:0] ALU_OUT;
  input CLK, RST, EN, test_si2, test_si1, test_se;
  output OUT_Valid;
  wire   N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103, N104,
         N105, N106, N107, N108, N109, N110, N111, N112, N113, N114, N115,
         N116, N117, N118, N119, N120, N121, N122, N123, N124, N125, N127,
         N128, N129, N130, N131, N132, N133, N134, N167, N168, N169, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n3, n4, n5, n6, n7, n8, n9, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169;
  wire   [15:0] Com_ALU_OUT;

  SDFFRQX2M \ALU_OUT_reg[15]  ( .D(Com_ALU_OUT[15]), .SI(ALU_OUT[14]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[15]) );
  SDFFRQX2M \ALU_OUT_reg[14]  ( .D(Com_ALU_OUT[14]), .SI(ALU_OUT[13]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[14]) );
  SDFFRQX2M \ALU_OUT_reg[13]  ( .D(Com_ALU_OUT[13]), .SI(ALU_OUT[12]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[13]) );
  SDFFRQX2M \ALU_OUT_reg[12]  ( .D(Com_ALU_OUT[12]), .SI(ALU_OUT[11]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[12]) );
  SDFFRQX2M \ALU_OUT_reg[11]  ( .D(Com_ALU_OUT[11]), .SI(ALU_OUT[10]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[11]) );
  SDFFRQX2M \ALU_OUT_reg[10]  ( .D(Com_ALU_OUT[10]), .SI(ALU_OUT[9]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[10]) );
  SDFFRQX2M \ALU_OUT_reg[9]  ( .D(Com_ALU_OUT[9]), .SI(ALU_OUT[8]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[9]) );
  SDFFRQX2M \ALU_OUT_reg[8]  ( .D(Com_ALU_OUT[8]), .SI(test_si2), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT[8]) );
  SDFFRQX2M \ALU_OUT_reg[7]  ( .D(Com_ALU_OUT[7]), .SI(ALU_OUT[6]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[7]) );
  SDFFRQX2M \ALU_OUT_reg[6]  ( .D(Com_ALU_OUT[6]), .SI(ALU_OUT[5]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[6]) );
  SDFFRQX2M \ALU_OUT_reg[5]  ( .D(Com_ALU_OUT[5]), .SI(ALU_OUT[4]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[5]) );
  SDFFRQX2M \ALU_OUT_reg[4]  ( .D(Com_ALU_OUT[4]), .SI(ALU_OUT[3]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[4]) );
  SDFFRQX2M \ALU_OUT_reg[3]  ( .D(Com_ALU_OUT[3]), .SI(ALU_OUT[2]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[3]) );
  SDFFRQX2M \ALU_OUT_reg[2]  ( .D(Com_ALU_OUT[2]), .SI(ALU_OUT[1]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[2]) );
  SDFFRQX2M \ALU_OUT_reg[1]  ( .D(Com_ALU_OUT[1]), .SI(ALU_OUT[0]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[1]) );
  SDFFRQX2M \ALU_OUT_reg[0]  ( .D(Com_ALU_OUT[0]), .SI(test_si1), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT[0]) );
  SDFFRQX2M OUT_Valid_reg ( .D(EN), .SI(ALU_OUT[15]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(OUT_Valid) );
  BUFX2M U8 ( .A(A[6]), .Y(n30) );
  BUFX2M U23 ( .A(A[1]), .Y(n8) );
  BUFX2M U24 ( .A(A[7]), .Y(n31) );
  BUFX2M U25 ( .A(B[6]), .Y(n5) );
  INVX2M U26 ( .A(n70), .Y(n164) );
  INVX2M U27 ( .A(n114), .Y(n163) );
  INVX2M U28 ( .A(n64), .Y(n162) );
  INVX2M U29 ( .A(n119), .Y(n161) );
  OAI2BB1X2M U30 ( .A0N(N119), .A1N(n52), .B0(n53), .Y(Com_ALU_OUT[9]) );
  OAI2BB1X2M U31 ( .A0N(N120), .A1N(n52), .B0(n53), .Y(Com_ALU_OUT[10]) );
  OAI2BB1X2M U32 ( .A0N(N121), .A1N(n52), .B0(n53), .Y(Com_ALU_OUT[11]) );
  OAI2BB1X2M U33 ( .A0N(N122), .A1N(n52), .B0(n53), .Y(Com_ALU_OUT[12]) );
  OAI2BB1X2M U34 ( .A0N(N123), .A1N(n52), .B0(n53), .Y(Com_ALU_OUT[13]) );
  OAI2BB1X2M U35 ( .A0N(N124), .A1N(n52), .B0(n53), .Y(Com_ALU_OUT[14]) );
  OAI2BB1X2M U36 ( .A0N(N125), .A1N(n52), .B0(n53), .Y(Com_ALU_OUT[15]) );
  OAI2B11X2M U37 ( .A1N(N109), .A0(n119), .B0(n164), .C0(n163), .Y(n59) );
  OAI21X2M U38 ( .A0(n3), .A1(n129), .B0(n128), .Y(n69) );
  NOR2X2M U39 ( .A(n118), .B(n3), .Y(n70) );
  NOR2BX2M U40 ( .AN(n130), .B(n3), .Y(n58) );
  OAI2B1X2M U41 ( .A1N(n127), .A0(n118), .B0(n128), .Y(n114) );
  NAND2X2M U42 ( .A(EN), .B(n59), .Y(n53) );
  OAI2BB2X1M U43 ( .B0(n154), .B1(n64), .A0N(N117), .A1N(n57), .Y(n63) );
  NAND2X2M U44 ( .A(n166), .B(n127), .Y(n64) );
  NOR2BX2M U45 ( .AN(n57), .B(n169), .Y(n52) );
  NAND2X2M U46 ( .A(n130), .B(n127), .Y(n119) );
  INVX2M U47 ( .A(n67), .Y(n165) );
  INVX2M U48 ( .A(n129), .Y(n166) );
  INVX2M U49 ( .A(EN), .Y(n169) );
  NOR3BX2M U50 ( .AN(n32), .B(n118), .C(ALU_FUN[0]), .Y(n56) );
  NOR3BX2M U51 ( .AN(n32), .B(n168), .C(n129), .Y(n74) );
  NOR3X2M U52 ( .A(n3), .B(ALU_FUN[2]), .C(n167), .Y(n57) );
  OAI221X1M U53 ( .A0(n9), .A1(n163), .B0(n67), .B1(n159), .C0(n164), .Y(n106)
         );
  OAI221X1M U54 ( .A0(n27), .A1(n163), .B0(n67), .B1(n158), .C0(n164), .Y(n99)
         );
  OAI221X1M U55 ( .A0(n28), .A1(n163), .B0(n67), .B1(n157), .C0(n164), .Y(n92)
         );
  OAI221X1M U56 ( .A0(n29), .A1(n163), .B0(n67), .B1(n156), .C0(n164), .Y(n85)
         );
  OAI221X1M U57 ( .A0(n30), .A1(n163), .B0(n67), .B1(n155), .C0(n164), .Y(n78)
         );
  OAI221X1M U58 ( .A0(n31), .A1(n163), .B0(n154), .B1(n67), .C0(n164), .Y(n66)
         );
  NOR2X2M U59 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n130) );
  INVX2M U60 ( .A(n33), .Y(n145) );
  NOR2X2M U61 ( .A(n168), .B(n32), .Y(n127) );
  OAI2B2X1M U62 ( .A1N(n4), .A0(n112), .B0(n4), .B1(n113), .Y(n111) );
  AOI221XLM U63 ( .A0(n165), .A1(n143), .B0(n8), .B1(n69), .C0(n162), .Y(n112)
         );
  AOI221XLM U64 ( .A0(n8), .A1(n165), .B0(n114), .B1(n143), .C0(n70), .Y(n113)
         );
  NAND2X2M U65 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n118) );
  NAND2X2M U66 ( .A(ALU_FUN[2]), .B(n167), .Y(n129) );
  NOR3X2M U67 ( .A(n167), .B(ALU_FUN[2]), .C(ALU_FUN[0]), .Y(n132) );
  INVX2M U68 ( .A(ALU_FUN[0]), .Y(n168) );
  INVX2M U69 ( .A(ALU_FUN[1]), .Y(n167) );
  NAND3X2M U70 ( .A(n130), .B(n168), .C(n32), .Y(n67) );
  NAND3X2M U71 ( .A(n130), .B(ALU_FUN[0]), .C(n32), .Y(n128) );
  AOI31X2M U72 ( .A0(n86), .A1(n87), .A2(n88), .B0(n169), .Y(Com_ALU_OUT[4])
         );
  AOI22X1M U73 ( .A0(N105), .A1(n161), .B0(N96), .B1(n58), .Y(n86) );
  AOI221XLM U74 ( .A0(n27), .A1(n56), .B0(n74), .B1(n29), .C0(n89), .Y(n88) );
  AOI222X1M U75 ( .A0(N114), .A1(n57), .B0(n70), .B1(n157), .C0(n28), .C1(n162), .Y(n87) );
  AOI31X2M U76 ( .A0(n79), .A1(n80), .A2(n81), .B0(n169), .Y(Com_ALU_OUT[5])
         );
  AOI22X1M U77 ( .A0(N106), .A1(n161), .B0(N97), .B1(n58), .Y(n79) );
  AOI221XLM U78 ( .A0(n28), .A1(n56), .B0(n74), .B1(n30), .C0(n82), .Y(n81) );
  AOI222X1M U79 ( .A0(N115), .A1(n57), .B0(n70), .B1(n156), .C0(n29), .C1(n162), .Y(n80) );
  AOI31X2M U80 ( .A0(n71), .A1(n72), .A2(n73), .B0(n169), .Y(Com_ALU_OUT[6])
         );
  AOI22X1M U81 ( .A0(N107), .A1(n161), .B0(N98), .B1(n58), .Y(n71) );
  AOI221XLM U82 ( .A0(n29), .A1(n56), .B0(n74), .B1(n31), .C0(n75), .Y(n73) );
  AOI222X1M U83 ( .A0(N116), .A1(n57), .B0(n70), .B1(n155), .C0(n162), .C1(n30), .Y(n72) );
  AOI31X2M U84 ( .A0(n100), .A1(n101), .A2(n102), .B0(n169), .Y(Com_ALU_OUT[2]) );
  AOI22X1M U85 ( .A0(N103), .A1(n161), .B0(N94), .B1(n58), .Y(n100) );
  AOI221XLM U86 ( .A0(n8), .A1(n56), .B0(n27), .B1(n74), .C0(n103), .Y(n102)
         );
  AOI222X1M U87 ( .A0(N112), .A1(n57), .B0(n70), .B1(n159), .C0(n9), .C1(n162), 
        .Y(n101) );
  AOI31X2M U88 ( .A0(n93), .A1(n94), .A2(n95), .B0(n169), .Y(Com_ALU_OUT[3])
         );
  AOI22X1M U89 ( .A0(N104), .A1(n161), .B0(N95), .B1(n58), .Y(n93) );
  AOI221XLM U90 ( .A0(n9), .A1(n56), .B0(n28), .B1(n74), .C0(n96), .Y(n95) );
  AOI222X1M U91 ( .A0(N113), .A1(n57), .B0(n70), .B1(n158), .C0(n27), .C1(n162), .Y(n94) );
  AOI31X2M U92 ( .A0(n120), .A1(n121), .A2(n122), .B0(n169), .Y(Com_ALU_OUT[0]) );
  AOI22X1M U93 ( .A0(N101), .A1(n161), .B0(N92), .B1(n58), .Y(n120) );
  AOI211X2M U94 ( .A0(n8), .A1(n74), .B0(n123), .C0(n124), .Y(n122) );
  AOI222X1M U95 ( .A0(N110), .A1(n57), .B0(n70), .B1(n160), .C0(n7), .C1(n162), 
        .Y(n121) );
  AOI31X2M U96 ( .A0(n107), .A1(n108), .A2(n109), .B0(n169), .Y(Com_ALU_OUT[1]) );
  AOI211X2M U97 ( .A0(n7), .A1(n56), .B0(n110), .C0(n111), .Y(n109) );
  AOI222X1M U98 ( .A0(n8), .A1(n162), .B0(n9), .B1(n74), .C0(n70), .C1(n143), 
        .Y(n108) );
  AOI222X1M U99 ( .A0(N93), .A1(n58), .B0(N111), .B1(n57), .C0(N102), .C1(n161), .Y(n107) );
  AOI31X2M U100 ( .A0(n60), .A1(n61), .A2(n62), .B0(n169), .Y(Com_ALU_OUT[7])
         );
  AOI22X1M U101 ( .A0(n30), .A1(n56), .B0(n70), .B1(n154), .Y(n60) );
  AOI221XLM U102 ( .A0(N108), .A1(n161), .B0(N99), .B1(n58), .C0(n63), .Y(n62)
         );
  AOI222X1M U103 ( .A0(n6), .A1(n153), .B0(N134), .B1(n65), .C0(n66), .C1(n147), .Y(n61) );
  INVX2M U104 ( .A(n44), .Y(n146) );
  OAI21X2M U105 ( .A0(n76), .A1(n148), .B0(n77), .Y(n75) );
  AOI22X1M U106 ( .A0(N133), .A1(n65), .B0(n78), .B1(n148), .Y(n77) );
  AOI221XLM U107 ( .A0(n165), .A1(n155), .B0(n30), .B1(n69), .C0(n162), .Y(n76) );
  INVX2M U108 ( .A(n5), .Y(n148) );
  AOI21X2M U109 ( .A0(n54), .A1(n55), .B0(n169), .Y(Com_ALU_OUT[8]) );
  AOI21X2M U110 ( .A0(N100), .A1(n58), .B0(n59), .Y(n54) );
  AOI22X1M U111 ( .A0(n31), .A1(n56), .B0(N118), .B1(n57), .Y(n55) );
  OR2X2M U112 ( .A(n32), .B(ALU_FUN[0]), .Y(n3) );
  INVX2M U113 ( .A(n68), .Y(n153) );
  AOI221XLM U114 ( .A0(n69), .A1(n31), .B0(n154), .B1(n165), .C0(n162), .Y(n68) );
  OAI2BB1X2M U115 ( .A0N(N127), .A1N(n65), .B0(n131), .Y(n123) );
  AOI31X2M U116 ( .A0(N167), .A1(n32), .A2(n132), .B0(n117), .Y(n131) );
  AND4X2M U117 ( .A(N169), .B(n166), .C(n32), .D(n168), .Y(n117) );
  OAI2BB1X2M U118 ( .A0N(N128), .A1N(n65), .B0(n115), .Y(n110) );
  AOI31X2M U119 ( .A0(N168), .A1(n32), .A2(n116), .B0(n117), .Y(n115) );
  NOR3X2M U120 ( .A(n168), .B(ALU_FUN[2]), .C(n167), .Y(n116) );
  INVX2M U121 ( .A(n31), .Y(n154) );
  INVX2M U122 ( .A(n30), .Y(n155) );
  INVX2M U123 ( .A(n7), .Y(n160) );
  INVX2M U124 ( .A(n9), .Y(n159) );
  INVX2M U125 ( .A(n27), .Y(n158) );
  INVX2M U126 ( .A(n29), .Y(n156) );
  INVX2M U127 ( .A(n28), .Y(n157) );
  INVX2M U128 ( .A(n8), .Y(n143) );
  INVX2M U129 ( .A(n6), .Y(n147) );
  OAI2B2X1M U130 ( .A1N(B[0]), .A0(n125), .B0(B[0]), .B1(n126), .Y(n124) );
  AOI221XLM U131 ( .A0(n165), .A1(n160), .B0(n7), .B1(n69), .C0(n162), .Y(n125) );
  AOI221XLM U132 ( .A0(n7), .A1(n165), .B0(n114), .B1(n160), .C0(n70), .Y(n126) );
  AND3X2M U133 ( .A(n127), .B(ALU_FUN[1]), .C(n133), .Y(n65) );
  AOI21X2M U134 ( .A0(n134), .A1(n135), .B0(ALU_FUN[2]), .Y(n133) );
  NOR4X1M U135 ( .A(n6), .B(n5), .C(B[5]), .D(B[4]), .Y(n135) );
  NOR4X1M U136 ( .A(B[3]), .B(B[2]), .C(n4), .D(B[0]), .Y(n134) );
  OAI21X2M U137 ( .A0(n104), .A1(n152), .B0(n105), .Y(n103) );
  AOI22X1M U138 ( .A0(N129), .A1(n65), .B0(n106), .B1(n152), .Y(n105) );
  AOI221XLM U139 ( .A0(n165), .A1(n159), .B0(n9), .B1(n69), .C0(n162), .Y(n104) );
  INVX2M U140 ( .A(B[2]), .Y(n152) );
  OAI21X2M U141 ( .A0(n97), .A1(n151), .B0(n98), .Y(n96) );
  AOI22X1M U142 ( .A0(N130), .A1(n65), .B0(n99), .B1(n151), .Y(n98) );
  AOI221XLM U143 ( .A0(n165), .A1(n158), .B0(n27), .B1(n69), .C0(n162), .Y(n97) );
  INVX2M U144 ( .A(B[3]), .Y(n151) );
  OAI21X2M U145 ( .A0(n90), .A1(n150), .B0(n91), .Y(n89) );
  AOI22X1M U146 ( .A0(N131), .A1(n65), .B0(n92), .B1(n150), .Y(n91) );
  AOI221XLM U147 ( .A0(n165), .A1(n157), .B0(n28), .B1(n69), .C0(n162), .Y(n90) );
  INVX2M U148 ( .A(B[4]), .Y(n150) );
  OAI21X2M U149 ( .A0(n83), .A1(n149), .B0(n84), .Y(n82) );
  AOI22X1M U150 ( .A0(N132), .A1(n65), .B0(n85), .B1(n149), .Y(n84) );
  AOI221XLM U151 ( .A0(n165), .A1(n156), .B0(n29), .B1(n69), .C0(n162), .Y(n83) );
  INVX2M U152 ( .A(B[5]), .Y(n149) );
  BUFX2M U153 ( .A(A[0]), .Y(n7) );
  BUFX2M U154 ( .A(A[2]), .Y(n9) );
  BUFX2M U155 ( .A(A[3]), .Y(n27) );
  BUFX2M U156 ( .A(A[5]), .Y(n29) );
  BUFX2M U157 ( .A(A[4]), .Y(n28) );
  BUFX2M U158 ( .A(B[7]), .Y(n6) );
  BUFX2M U159 ( .A(B[1]), .Y(n4) );
  BUFX2M U160 ( .A(ALU_FUN[3]), .Y(n32) );
  INVX2M U161 ( .A(B[0]), .Y(n144) );
  NOR2X1M U162 ( .A(n154), .B(n6), .Y(n139) );
  NAND2BX1M U163 ( .AN(B[4]), .B(n28), .Y(n48) );
  NAND2BX1M U164 ( .AN(n28), .B(B[4]), .Y(n37) );
  CLKNAND2X2M U165 ( .A(n48), .B(n37), .Y(n50) );
  NOR2X1M U166 ( .A(n151), .B(n27), .Y(n45) );
  NOR2X1M U167 ( .A(n152), .B(n9), .Y(n36) );
  NOR2X1M U168 ( .A(n144), .B(n7), .Y(n33) );
  CLKNAND2X2M U169 ( .A(n9), .B(n152), .Y(n47) );
  NAND2BX1M U170 ( .AN(n36), .B(n47), .Y(n42) );
  AOI21X1M U171 ( .A0(n33), .A1(n143), .B0(n4), .Y(n34) );
  AOI211X1M U172 ( .A0(n8), .A1(n145), .B0(n42), .C0(n34), .Y(n35) );
  CLKNAND2X2M U173 ( .A(n27), .B(n151), .Y(n46) );
  OAI31X1M U174 ( .A0(n45), .A1(n36), .A2(n35), .B0(n46), .Y(n38) );
  NAND2BX1M U175 ( .AN(n29), .B(B[5]), .Y(n137) );
  OAI211X1M U176 ( .A0(n50), .A1(n38), .B0(n37), .C0(n137), .Y(n39) );
  NAND2BX1M U177 ( .AN(B[5]), .B(n29), .Y(n49) );
  XNOR2X1M U178 ( .A(n30), .B(n5), .Y(n136) );
  AOI32X1M U179 ( .A0(n39), .A1(n49), .A2(n136), .B0(n5), .B1(n155), .Y(n40)
         );
  CLKNAND2X2M U180 ( .A(n6), .B(n154), .Y(n140) );
  OAI21X1M U181 ( .A0(n139), .A1(n40), .B0(n140), .Y(N169) );
  CLKNAND2X2M U182 ( .A(n7), .B(n144), .Y(n43) );
  OA21X1M U183 ( .A0(n43), .A1(n143), .B0(n4), .Y(n41) );
  AOI211X1M U184 ( .A0(n43), .A1(n143), .B0(n42), .C0(n41), .Y(n44) );
  AOI31X1M U185 ( .A0(n146), .A1(n47), .A2(n46), .B0(n45), .Y(n51) );
  OAI2B11X1M U186 ( .A1N(n51), .A0(n50), .B0(n49), .C0(n48), .Y(n138) );
  AOI32X1M U187 ( .A0(n138), .A1(n137), .A2(n136), .B0(n30), .B1(n148), .Y(
        n141) );
  AOI2B1X1M U188 ( .A1N(n141), .A0(n140), .B0(n139), .Y(n142) );
  CLKINVX1M U189 ( .A(n142), .Y(N168) );
  NOR2X1M U190 ( .A(N169), .B(N168), .Y(N167) );
  ALU_IN_Width8_DW_div_uns_0 div_51 ( .a({n31, n30, n29, n28, n27, n9, n8, n7}), .b({n6, n5, B[5:2], n4, B[0]}), .quotient({N134, N133, N132, N131, N130, 
        N129, N128, N127}) );
  ALU_IN_Width8_DW01_sub_0 sub_43 ( .A({1'b0, n31, n30, n29, n28, n27, n9, n8, 
        n7}), .B({1'b0, n6, n5, B[5:2], n4, B[0]}), .CI(1'b0), .DIFF({N109, 
        N108, N107, N106, N105, N104, N103, N102, N101}) );
  ALU_IN_Width8_DW01_add_0 add_39 ( .A({1'b0, n31, n30, n29, n28, n27, n9, n8, 
        n7}), .B({1'b0, n6, n5, B[5:2], n4, B[0]}), .CI(1'b0), .SUM({N100, N99, 
        N98, N97, N96, N95, N94, N93, N92}) );
  ALU_IN_Width8_DW02_mult_0 mult_47 ( .A({n31, n30, n29, n28, n27, n9, n8, n7}), .B({n6, n5, B[5:2], n4, B[0]}), .TC(1'b0), .PRODUCT({N125, N124, N123, N122, 
        N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110}) );
endmodule


module Reg_File_WIDTH8_DEPTH16_ADDR4_test_1 ( CLK, RST, WrEn, RdEn, Address, 
        WrData, RdData, RdData_VLD, REG0, REG1, REG2, REG3, test_si2, test_si1, 
        test_so2, test_so1, test_se );
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input CLK, RST, WrEn, RdEn, test_si2, test_si1, test_se;
  output RdData_VLD, test_so2, test_so1;
  wire   N11, N12, N13, N14, \memory[15][7] , \memory[15][6] , \memory[15][5] ,
         \memory[15][4] , \memory[15][3] , \memory[15][2] , \memory[15][1] ,
         \memory[15][0] , \memory[14][7] , \memory[14][6] , \memory[14][5] ,
         \memory[14][4] , \memory[14][3] , \memory[14][2] , \memory[14][1] ,
         \memory[14][0] , \memory[13][7] , \memory[13][6] , \memory[13][5] ,
         \memory[13][4] , \memory[13][3] , \memory[13][2] , \memory[13][1] ,
         \memory[13][0] , \memory[12][7] , \memory[12][6] , \memory[12][5] ,
         \memory[12][4] , \memory[12][3] , \memory[12][2] , \memory[12][1] ,
         \memory[12][0] , \memory[11][7] , \memory[11][6] , \memory[11][5] ,
         \memory[11][4] , \memory[11][3] , \memory[11][2] , \memory[11][1] ,
         \memory[11][0] , \memory[10][7] , \memory[10][6] , \memory[10][5] ,
         \memory[10][4] , \memory[10][3] , \memory[10][2] , \memory[10][1] ,
         \memory[10][0] , \memory[9][7] , \memory[9][6] , \memory[9][5] ,
         \memory[9][4] , \memory[9][3] , \memory[9][2] , \memory[9][1] ,
         \memory[9][0] , \memory[8][7] , \memory[8][6] , \memory[8][5] ,
         \memory[8][4] , \memory[8][3] , \memory[8][2] , \memory[8][1] ,
         \memory[8][0] , \memory[7][7] , \memory[7][6] , \memory[7][5] ,
         \memory[7][4] , \memory[7][3] , \memory[7][2] , \memory[7][1] ,
         \memory[7][0] , \memory[6][7] , \memory[6][6] , \memory[6][5] ,
         \memory[6][4] , \memory[6][3] , \memory[6][2] , \memory[6][1] ,
         \memory[6][0] , \memory[5][7] , \memory[5][6] , \memory[5][5] ,
         \memory[5][4] , \memory[5][3] , \memory[5][2] , \memory[5][1] ,
         \memory[5][0] , \memory[4][7] , \memory[4][6] , \memory[4][5] ,
         \memory[4][4] , \memory[4][3] , \memory[4][2] , \memory[4][1] ,
         \memory[4][0] , N36, N37, N38, N39, N40, N41, N42, N43, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n370, n371, n372, n373;
  assign N11 = Address[0];
  assign N12 = Address[1];
  assign N13 = Address[2];
  assign N14 = Address[3];
  assign test_so2 = \memory[15][7] ;
  assign test_so1 = \memory[8][6] ;

  SDFFRQX2M \memory_reg[13][7]  ( .D(n298), .SI(\memory[13][6] ), .SE(n373), 
        .CK(CLK), .RN(n350), .Q(\memory[13][7] ) );
  SDFFRQX2M \memory_reg[13][6]  ( .D(n297), .SI(\memory[13][5] ), .SE(n372), 
        .CK(CLK), .RN(n350), .Q(\memory[13][6] ) );
  SDFFRQX2M \memory_reg[13][5]  ( .D(n296), .SI(\memory[13][4] ), .SE(n371), 
        .CK(CLK), .RN(n350), .Q(\memory[13][5] ) );
  SDFFRQX2M \memory_reg[13][4]  ( .D(n295), .SI(\memory[13][3] ), .SE(n370), 
        .CK(CLK), .RN(n350), .Q(\memory[13][4] ) );
  SDFFRQX2M \memory_reg[13][3]  ( .D(n294), .SI(\memory[13][2] ), .SE(n373), 
        .CK(CLK), .RN(n350), .Q(\memory[13][3] ) );
  SDFFRQX2M \memory_reg[13][2]  ( .D(n293), .SI(\memory[13][1] ), .SE(n372), 
        .CK(CLK), .RN(n350), .Q(\memory[13][2] ) );
  SDFFRQX2M \memory_reg[13][1]  ( .D(n292), .SI(\memory[13][0] ), .SE(n371), 
        .CK(CLK), .RN(n350), .Q(\memory[13][1] ) );
  SDFFRQX2M \memory_reg[13][0]  ( .D(n291), .SI(\memory[12][7] ), .SE(n370), 
        .CK(CLK), .RN(n350), .Q(\memory[13][0] ) );
  SDFFRQX2M \memory_reg[9][7]  ( .D(n266), .SI(\memory[9][6] ), .SE(n373), 
        .CK(CLK), .RN(n348), .Q(\memory[9][7] ) );
  SDFFRQX2M \memory_reg[9][6]  ( .D(n265), .SI(\memory[9][5] ), .SE(n372), 
        .CK(CLK), .RN(n348), .Q(\memory[9][6] ) );
  SDFFRQX2M \memory_reg[9][5]  ( .D(n264), .SI(\memory[9][4] ), .SE(n371), 
        .CK(CLK), .RN(n348), .Q(\memory[9][5] ) );
  SDFFRQX2M \memory_reg[9][4]  ( .D(n263), .SI(\memory[9][3] ), .SE(n370), 
        .CK(CLK), .RN(n348), .Q(\memory[9][4] ) );
  SDFFRQX2M \memory_reg[9][3]  ( .D(n262), .SI(\memory[9][2] ), .SE(n373), 
        .CK(CLK), .RN(n348), .Q(\memory[9][3] ) );
  SDFFRQX2M \memory_reg[9][2]  ( .D(n261), .SI(\memory[9][1] ), .SE(n372), 
        .CK(CLK), .RN(n348), .Q(\memory[9][2] ) );
  SDFFRQX2M \memory_reg[9][1]  ( .D(n260), .SI(\memory[9][0] ), .SE(n371), 
        .CK(CLK), .RN(n347), .Q(\memory[9][1] ) );
  SDFFRQX2M \memory_reg[9][0]  ( .D(n259), .SI(\memory[8][7] ), .SE(n370), 
        .CK(CLK), .RN(n347), .Q(\memory[9][0] ) );
  SDFFRQX2M \memory_reg[5][7]  ( .D(n234), .SI(\memory[5][6] ), .SE(n373), 
        .CK(CLK), .RN(n346), .Q(\memory[5][7] ) );
  SDFFRQX2M \memory_reg[5][6]  ( .D(n233), .SI(\memory[5][5] ), .SE(n372), 
        .CK(CLK), .RN(n345), .Q(\memory[5][6] ) );
  SDFFRQX2M \memory_reg[5][5]  ( .D(n232), .SI(\memory[5][4] ), .SE(n371), 
        .CK(CLK), .RN(n345), .Q(\memory[5][5] ) );
  SDFFRQX2M \memory_reg[5][4]  ( .D(n231), .SI(\memory[5][3] ), .SE(n370), 
        .CK(CLK), .RN(n345), .Q(\memory[5][4] ) );
  SDFFRQX2M \memory_reg[5][3]  ( .D(n230), .SI(\memory[5][2] ), .SE(n373), 
        .CK(CLK), .RN(n345), .Q(\memory[5][3] ) );
  SDFFRQX2M \memory_reg[5][2]  ( .D(n229), .SI(\memory[5][1] ), .SE(n372), 
        .CK(CLK), .RN(n345), .Q(\memory[5][2] ) );
  SDFFRQX2M \memory_reg[5][1]  ( .D(n228), .SI(\memory[5][0] ), .SE(n371), 
        .CK(CLK), .RN(n345), .Q(\memory[5][1] ) );
  SDFFRQX2M \memory_reg[5][0]  ( .D(n227), .SI(\memory[4][7] ), .SE(n370), 
        .CK(CLK), .RN(n345), .Q(\memory[5][0] ) );
  SDFFRQX2M \memory_reg[15][7]  ( .D(n314), .SI(\memory[15][6] ), .SE(n373), 
        .CK(CLK), .RN(n342), .Q(\memory[15][7] ) );
  SDFFRQX2M \memory_reg[15][6]  ( .D(n313), .SI(\memory[15][5] ), .SE(n372), 
        .CK(CLK), .RN(n351), .Q(\memory[15][6] ) );
  SDFFRQX2M \memory_reg[15][5]  ( .D(n312), .SI(\memory[15][4] ), .SE(n371), 
        .CK(CLK), .RN(n351), .Q(\memory[15][5] ) );
  SDFFRQX2M \memory_reg[15][4]  ( .D(n311), .SI(\memory[15][3] ), .SE(n370), 
        .CK(CLK), .RN(n351), .Q(\memory[15][4] ) );
  SDFFRQX2M \memory_reg[15][3]  ( .D(n310), .SI(\memory[15][2] ), .SE(n373), 
        .CK(CLK), .RN(n351), .Q(\memory[15][3] ) );
  SDFFRQX2M \memory_reg[15][2]  ( .D(n309), .SI(\memory[15][1] ), .SE(n372), 
        .CK(CLK), .RN(n351), .Q(\memory[15][2] ) );
  SDFFRQX2M \memory_reg[15][1]  ( .D(n308), .SI(\memory[15][0] ), .SE(n371), 
        .CK(CLK), .RN(n351), .Q(\memory[15][1] ) );
  SDFFRQX2M \memory_reg[15][0]  ( .D(n307), .SI(\memory[14][7] ), .SE(n370), 
        .CK(CLK), .RN(n351), .Q(\memory[15][0] ) );
  SDFFRQX2M \memory_reg[11][7]  ( .D(n282), .SI(\memory[11][6] ), .SE(n373), 
        .CK(CLK), .RN(n349), .Q(\memory[11][7] ) );
  SDFFRQX2M \memory_reg[11][6]  ( .D(n281), .SI(\memory[11][5] ), .SE(n372), 
        .CK(CLK), .RN(n349), .Q(\memory[11][6] ) );
  SDFFRQX2M \memory_reg[11][5]  ( .D(n280), .SI(\memory[11][4] ), .SE(n371), 
        .CK(CLK), .RN(n349), .Q(\memory[11][5] ) );
  SDFFRQX2M \memory_reg[11][4]  ( .D(n279), .SI(\memory[11][3] ), .SE(n370), 
        .CK(CLK), .RN(n349), .Q(\memory[11][4] ) );
  SDFFRQX2M \memory_reg[11][3]  ( .D(n278), .SI(\memory[11][2] ), .SE(n373), 
        .CK(CLK), .RN(n349), .Q(\memory[11][3] ) );
  SDFFRQX2M \memory_reg[11][2]  ( .D(n277), .SI(\memory[11][1] ), .SE(n372), 
        .CK(CLK), .RN(n349), .Q(\memory[11][2] ) );
  SDFFRQX2M \memory_reg[11][1]  ( .D(n276), .SI(\memory[11][0] ), .SE(n371), 
        .CK(CLK), .RN(n349), .Q(\memory[11][1] ) );
  SDFFRQX2M \memory_reg[11][0]  ( .D(n275), .SI(\memory[10][7] ), .SE(n370), 
        .CK(CLK), .RN(n349), .Q(\memory[11][0] ) );
  SDFFRQX2M \memory_reg[7][7]  ( .D(n250), .SI(\memory[7][6] ), .SE(n373), 
        .CK(CLK), .RN(n347), .Q(\memory[7][7] ) );
  SDFFRQX2M \memory_reg[7][6]  ( .D(n249), .SI(\memory[7][5] ), .SE(n372), 
        .CK(CLK), .RN(n347), .Q(\memory[7][6] ) );
  SDFFRQX2M \memory_reg[7][5]  ( .D(n248), .SI(\memory[7][4] ), .SE(n371), 
        .CK(CLK), .RN(n347), .Q(\memory[7][5] ) );
  SDFFRQX2M \memory_reg[7][4]  ( .D(n247), .SI(\memory[7][3] ), .SE(n370), 
        .CK(CLK), .RN(n347), .Q(\memory[7][4] ) );
  SDFFRQX2M \memory_reg[7][3]  ( .D(n246), .SI(\memory[7][2] ), .SE(n373), 
        .CK(CLK), .RN(n346), .Q(\memory[7][3] ) );
  SDFFRQX2M \memory_reg[7][2]  ( .D(n245), .SI(\memory[7][1] ), .SE(n372), 
        .CK(CLK), .RN(n346), .Q(\memory[7][2] ) );
  SDFFRQX2M \memory_reg[7][1]  ( .D(n244), .SI(\memory[7][0] ), .SE(n371), 
        .CK(CLK), .RN(n346), .Q(\memory[7][1] ) );
  SDFFRQX2M \memory_reg[7][0]  ( .D(n243), .SI(\memory[6][7] ), .SE(n370), 
        .CK(CLK), .RN(n346), .Q(\memory[7][0] ) );
  SDFFRQX2M \memory_reg[14][7]  ( .D(n306), .SI(\memory[14][6] ), .SE(n373), 
        .CK(CLK), .RN(n351), .Q(\memory[14][7] ) );
  SDFFRQX2M \memory_reg[14][6]  ( .D(n305), .SI(\memory[14][5] ), .SE(n372), 
        .CK(CLK), .RN(n351), .Q(\memory[14][6] ) );
  SDFFRQX2M \memory_reg[14][5]  ( .D(n304), .SI(\memory[14][4] ), .SE(n371), 
        .CK(CLK), .RN(n351), .Q(\memory[14][5] ) );
  SDFFRQX2M \memory_reg[14][4]  ( .D(n303), .SI(\memory[14][3] ), .SE(n370), 
        .CK(CLK), .RN(n351), .Q(\memory[14][4] ) );
  SDFFRQX2M \memory_reg[14][3]  ( .D(n302), .SI(\memory[14][2] ), .SE(n373), 
        .CK(CLK), .RN(n350), .Q(\memory[14][3] ) );
  SDFFRQX2M \memory_reg[14][2]  ( .D(n301), .SI(\memory[14][1] ), .SE(n372), 
        .CK(CLK), .RN(n350), .Q(\memory[14][2] ) );
  SDFFRQX2M \memory_reg[14][1]  ( .D(n300), .SI(\memory[14][0] ), .SE(n371), 
        .CK(CLK), .RN(n350), .Q(\memory[14][1] ) );
  SDFFRQX2M \memory_reg[14][0]  ( .D(n299), .SI(\memory[13][7] ), .SE(n370), 
        .CK(CLK), .RN(n350), .Q(\memory[14][0] ) );
  SDFFRQX2M \memory_reg[10][7]  ( .D(n274), .SI(\memory[10][6] ), .SE(n373), 
        .CK(CLK), .RN(n348), .Q(\memory[10][7] ) );
  SDFFRQX2M \memory_reg[10][6]  ( .D(n273), .SI(\memory[10][5] ), .SE(n372), 
        .CK(CLK), .RN(n348), .Q(\memory[10][6] ) );
  SDFFRQX2M \memory_reg[10][5]  ( .D(n272), .SI(\memory[10][4] ), .SE(n371), 
        .CK(CLK), .RN(n348), .Q(\memory[10][5] ) );
  SDFFRQX2M \memory_reg[10][4]  ( .D(n271), .SI(\memory[10][3] ), .SE(n370), 
        .CK(CLK), .RN(n348), .Q(\memory[10][4] ) );
  SDFFRQX2M \memory_reg[10][3]  ( .D(n270), .SI(\memory[10][2] ), .SE(n373), 
        .CK(CLK), .RN(n348), .Q(\memory[10][3] ) );
  SDFFRQX2M \memory_reg[10][2]  ( .D(n269), .SI(\memory[10][1] ), .SE(n372), 
        .CK(CLK), .RN(n348), .Q(\memory[10][2] ) );
  SDFFRQX2M \memory_reg[10][1]  ( .D(n268), .SI(\memory[10][0] ), .SE(n371), 
        .CK(CLK), .RN(n348), .Q(\memory[10][1] ) );
  SDFFRQX2M \memory_reg[10][0]  ( .D(n267), .SI(\memory[9][7] ), .SE(n370), 
        .CK(CLK), .RN(n348), .Q(\memory[10][0] ) );
  SDFFRQX2M \memory_reg[6][7]  ( .D(n242), .SI(\memory[6][6] ), .SE(n373), 
        .CK(CLK), .RN(n346), .Q(\memory[6][7] ) );
  SDFFRQX2M \memory_reg[6][6]  ( .D(n241), .SI(\memory[6][5] ), .SE(n372), 
        .CK(CLK), .RN(n346), .Q(\memory[6][6] ) );
  SDFFRQX2M \memory_reg[6][5]  ( .D(n240), .SI(\memory[6][4] ), .SE(n371), 
        .CK(CLK), .RN(n346), .Q(\memory[6][5] ) );
  SDFFRQX2M \memory_reg[6][4]  ( .D(n239), .SI(\memory[6][3] ), .SE(n370), 
        .CK(CLK), .RN(n346), .Q(\memory[6][4] ) );
  SDFFRQX2M \memory_reg[6][3]  ( .D(n238), .SI(\memory[6][2] ), .SE(n373), 
        .CK(CLK), .RN(n346), .Q(\memory[6][3] ) );
  SDFFRQX2M \memory_reg[6][2]  ( .D(n237), .SI(\memory[6][1] ), .SE(n372), 
        .CK(CLK), .RN(n346), .Q(\memory[6][2] ) );
  SDFFRQX2M \memory_reg[6][1]  ( .D(n236), .SI(\memory[6][0] ), .SE(n371), 
        .CK(CLK), .RN(n346), .Q(\memory[6][1] ) );
  SDFFRQX2M \memory_reg[6][0]  ( .D(n235), .SI(\memory[5][7] ), .SE(n370), 
        .CK(CLK), .RN(n346), .Q(\memory[6][0] ) );
  SDFFRQX2M \memory_reg[12][7]  ( .D(n290), .SI(\memory[12][6] ), .SE(n373), 
        .CK(CLK), .RN(n350), .Q(\memory[12][7] ) );
  SDFFRQX2M \memory_reg[12][6]  ( .D(n289), .SI(\memory[12][5] ), .SE(n372), 
        .CK(CLK), .RN(n350), .Q(\memory[12][6] ) );
  SDFFRQX2M \memory_reg[12][5]  ( .D(n288), .SI(\memory[12][4] ), .SE(n371), 
        .CK(CLK), .RN(n349), .Q(\memory[12][5] ) );
  SDFFRQX2M \memory_reg[12][4]  ( .D(n287), .SI(\memory[12][3] ), .SE(n370), 
        .CK(CLK), .RN(n349), .Q(\memory[12][4] ) );
  SDFFRQX2M \memory_reg[12][3]  ( .D(n286), .SI(\memory[12][2] ), .SE(n373), 
        .CK(CLK), .RN(n349), .Q(\memory[12][3] ) );
  SDFFRQX2M \memory_reg[12][2]  ( .D(n285), .SI(\memory[12][1] ), .SE(n372), 
        .CK(CLK), .RN(n349), .Q(\memory[12][2] ) );
  SDFFRQX2M \memory_reg[12][1]  ( .D(n284), .SI(\memory[12][0] ), .SE(n371), 
        .CK(CLK), .RN(n349), .Q(\memory[12][1] ) );
  SDFFRQX2M \memory_reg[12][0]  ( .D(n283), .SI(\memory[11][7] ), .SE(n370), 
        .CK(CLK), .RN(n349), .Q(\memory[12][0] ) );
  SDFFRQX2M \memory_reg[8][7]  ( .D(n258), .SI(test_si2), .SE(n373), .CK(CLK), 
        .RN(n347), .Q(\memory[8][7] ) );
  SDFFRQX2M \memory_reg[8][6]  ( .D(n257), .SI(\memory[8][5] ), .SE(n372), 
        .CK(CLK), .RN(n347), .Q(\memory[8][6] ) );
  SDFFRQX2M \memory_reg[8][5]  ( .D(n256), .SI(\memory[8][4] ), .SE(n371), 
        .CK(CLK), .RN(n347), .Q(\memory[8][5] ) );
  SDFFRQX2M \memory_reg[8][4]  ( .D(n255), .SI(\memory[8][3] ), .SE(n370), 
        .CK(CLK), .RN(n347), .Q(\memory[8][4] ) );
  SDFFRQX2M \memory_reg[8][3]  ( .D(n254), .SI(\memory[8][2] ), .SE(n373), 
        .CK(CLK), .RN(n347), .Q(\memory[8][3] ) );
  SDFFRQX2M \memory_reg[8][2]  ( .D(n253), .SI(\memory[8][1] ), .SE(n372), 
        .CK(CLK), .RN(n347), .Q(\memory[8][2] ) );
  SDFFRQX2M \memory_reg[8][1]  ( .D(n252), .SI(\memory[8][0] ), .SE(n371), 
        .CK(CLK), .RN(n347), .Q(\memory[8][1] ) );
  SDFFRQX2M \memory_reg[8][0]  ( .D(n251), .SI(\memory[7][7] ), .SE(n370), 
        .CK(CLK), .RN(n347), .Q(\memory[8][0] ) );
  SDFFRQX2M \memory_reg[4][7]  ( .D(n226), .SI(\memory[4][6] ), .SE(n373), 
        .CK(CLK), .RN(n345), .Q(\memory[4][7] ) );
  SDFFRQX2M \memory_reg[4][6]  ( .D(n225), .SI(\memory[4][5] ), .SE(n372), 
        .CK(CLK), .RN(n345), .Q(\memory[4][6] ) );
  SDFFRQX2M \memory_reg[4][5]  ( .D(n224), .SI(\memory[4][4] ), .SE(n371), 
        .CK(CLK), .RN(n345), .Q(\memory[4][5] ) );
  SDFFRQX2M \memory_reg[4][4]  ( .D(n223), .SI(\memory[4][3] ), .SE(n370), 
        .CK(CLK), .RN(n345), .Q(\memory[4][4] ) );
  SDFFRQX2M \memory_reg[4][3]  ( .D(n222), .SI(\memory[4][2] ), .SE(n373), 
        .CK(CLK), .RN(n345), .Q(\memory[4][3] ) );
  SDFFRQX2M \memory_reg[4][2]  ( .D(n221), .SI(\memory[4][1] ), .SE(n372), 
        .CK(CLK), .RN(n345), .Q(\memory[4][2] ) );
  SDFFRQX2M \memory_reg[4][1]  ( .D(n220), .SI(\memory[4][0] ), .SE(n371), 
        .CK(CLK), .RN(n345), .Q(\memory[4][1] ) );
  SDFFRQX2M \memory_reg[4][0]  ( .D(n219), .SI(REG3[7]), .SE(n370), .CK(CLK), 
        .RN(n344), .Q(\memory[4][0] ) );
  SDFFRQX2M \RdData_reg[7]  ( .D(n185), .SI(RdData[6]), .SE(n373), .CK(CLK), 
        .RN(n342), .Q(RdData[7]) );
  SDFFRQX2M \RdData_reg[6]  ( .D(n184), .SI(RdData[5]), .SE(n372), .CK(CLK), 
        .RN(n342), .Q(RdData[6]) );
  SDFFRQX2M \RdData_reg[5]  ( .D(n183), .SI(RdData[4]), .SE(n371), .CK(CLK), 
        .RN(n342), .Q(RdData[5]) );
  SDFFRQX2M \RdData_reg[4]  ( .D(n182), .SI(RdData[3]), .SE(n370), .CK(CLK), 
        .RN(n342), .Q(RdData[4]) );
  SDFFRQX2M \RdData_reg[3]  ( .D(n181), .SI(RdData[2]), .SE(n373), .CK(CLK), 
        .RN(n342), .Q(RdData[3]) );
  SDFFRQX2M \RdData_reg[2]  ( .D(n180), .SI(RdData[1]), .SE(n372), .CK(CLK), 
        .RN(n342), .Q(RdData[2]) );
  SDFFRQX2M \RdData_reg[1]  ( .D(n179), .SI(RdData[0]), .SE(n371), .CK(CLK), 
        .RN(n342), .Q(RdData[1]) );
  SDFFRQX2M \RdData_reg[0]  ( .D(n178), .SI(RdData_VLD), .SE(n370), .CK(CLK), 
        .RN(n346), .Q(RdData[0]) );
  SDFFRQX2M RdData_VLD_reg ( .D(n186), .SI(test_si1), .SE(n373), .CK(CLK), 
        .RN(n342), .Q(RdData_VLD) );
  SDFFRQX2M \memory_reg[3][0]  ( .D(n211), .SI(REG2[7]), .SE(n372), .CK(CLK), 
        .RN(n344), .Q(REG3[0]) );
  SDFFRQX2M \memory_reg[2][0]  ( .D(n203), .SI(REG1[7]), .SE(n371), .CK(CLK), 
        .RN(n343), .Q(REG2[0]) );
  SDFFRQX2M \memory_reg[2][1]  ( .D(n204), .SI(REG2[0]), .SE(n370), .CK(CLK), 
        .RN(n343), .Q(REG2[1]) );
  SDFFRQX2M \memory_reg[1][7]  ( .D(n202), .SI(REG1[6]), .SE(n373), .CK(CLK), 
        .RN(n343), .Q(REG1[7]) );
  SDFFRQX2M \memory_reg[1][6]  ( .D(n201), .SI(REG1[5]), .SE(n372), .CK(CLK), 
        .RN(n343), .Q(REG1[6]) );
  SDFFRQX2M \memory_reg[1][1]  ( .D(n196), .SI(REG1[0]), .SE(n371), .CK(CLK), 
        .RN(n343), .Q(REG1[1]) );
  SDFFRQX2M \memory_reg[0][7]  ( .D(n194), .SI(REG0[6]), .SE(n370), .CK(CLK), 
        .RN(n343), .Q(REG0[7]) );
  SDFFRQX2M \memory_reg[0][6]  ( .D(n193), .SI(REG0[5]), .SE(n373), .CK(CLK), 
        .RN(n343), .Q(REG0[6]) );
  SDFFRQX2M \memory_reg[0][5]  ( .D(n192), .SI(REG0[4]), .SE(n372), .CK(CLK), 
        .RN(n343), .Q(REG0[5]) );
  SDFFRQX2M \memory_reg[0][4]  ( .D(n191), .SI(REG0[3]), .SE(n371), .CK(CLK), 
        .RN(n343), .Q(REG0[4]) );
  SDFFRQX2M \memory_reg[0][3]  ( .D(n190), .SI(REG0[2]), .SE(n370), .CK(CLK), 
        .RN(n343), .Q(REG0[3]) );
  SDFFRQX2M \memory_reg[0][2]  ( .D(n189), .SI(REG0[1]), .SE(n373), .CK(CLK), 
        .RN(n342), .Q(REG0[2]) );
  SDFFRQX2M \memory_reg[0][1]  ( .D(n188), .SI(REG0[0]), .SE(n372), .CK(CLK), 
        .RN(n342), .Q(REG0[1]) );
  SDFFRQX2M \memory_reg[0][0]  ( .D(n187), .SI(RdData[7]), .SE(n371), .CK(CLK), 
        .RN(n342), .Q(REG0[0]) );
  SDFFRQX2M \memory_reg[1][4]  ( .D(n199), .SI(REG1[3]), .SE(n370), .CK(CLK), 
        .RN(n343), .Q(REG1[4]) );
  SDFFRQX2M \memory_reg[1][5]  ( .D(n200), .SI(REG1[4]), .SE(n373), .CK(CLK), 
        .RN(n344), .Q(REG1[5]) );
  SDFFRQX2M \memory_reg[3][7]  ( .D(n218), .SI(REG3[6]), .SE(n372), .CK(CLK), 
        .RN(n344), .Q(REG3[7]) );
  SDFFRQX2M \memory_reg[3][6]  ( .D(n217), .SI(REG3[5]), .SE(n371), .CK(CLK), 
        .RN(n344), .Q(REG3[6]) );
  SDFFRQX2M \memory_reg[3][2]  ( .D(n213), .SI(REG3[1]), .SE(n370), .CK(CLK), 
        .RN(n344), .Q(REG3[2]) );
  SDFFRQX2M \memory_reg[3][3]  ( .D(n214), .SI(REG3[2]), .SE(n373), .CK(CLK), 
        .RN(n344), .Q(REG3[3]) );
  SDFFRQX2M \memory_reg[3][4]  ( .D(n215), .SI(REG3[3]), .SE(n372), .CK(CLK), 
        .RN(n344), .Q(REG3[4]) );
  SDFFSQX2M \memory_reg[3][5]  ( .D(n216), .SI(REG3[4]), .SE(test_se), .CK(CLK), .SN(n342), .Q(REG3[5]) );
  SDFFRQX2M \memory_reg[3][1]  ( .D(n212), .SI(REG3[0]), .SE(n371), .CK(CLK), 
        .RN(n344), .Q(REG3[1]) );
  SDFFSQX2M \memory_reg[2][7]  ( .D(n210), .SI(REG2[6]), .SE(n370), .CK(CLK), 
        .SN(n342), .Q(REG2[7]) );
  SDFFRQX2M \memory_reg[2][3]  ( .D(n206), .SI(REG2[2]), .SE(n370), .CK(CLK), 
        .RN(n344), .Q(REG2[3]) );
  SDFFRQX2M \memory_reg[2][4]  ( .D(n207), .SI(REG2[3]), .SE(n373), .CK(CLK), 
        .RN(n344), .Q(REG2[4]) );
  SDFFRQX2M \memory_reg[2][2]  ( .D(n205), .SI(REG2[1]), .SE(n372), .CK(CLK), 
        .RN(n344), .Q(REG2[2]) );
  SDFFRQX2M \memory_reg[2][6]  ( .D(n209), .SI(REG2[5]), .SE(n371), .CK(CLK), 
        .RN(n344), .Q(REG2[6]) );
  SDFFRQX2M \memory_reg[1][2]  ( .D(n197), .SI(REG1[1]), .SE(n370), .CK(CLK), 
        .RN(n343), .Q(REG1[2]) );
  SDFFRQX2M \memory_reg[1][3]  ( .D(n198), .SI(REG1[2]), .SE(n373), .CK(CLK), 
        .RN(n343), .Q(REG1[3]) );
  SDFFRQX2M \memory_reg[1][0]  ( .D(n195), .SI(REG0[7]), .SE(n372), .CK(CLK), 
        .RN(n343), .Q(REG1[0]) );
  SDFFRQX2M \memory_reg[2][5]  ( .D(n208), .SI(REG2[4]), .SE(n371), .CK(CLK), 
        .RN(n344), .Q(REG2[5]) );
  NOR2X2M U140 ( .A(n341), .B(N13), .Y(n155) );
  NOR2X2M U141 ( .A(N12), .B(N13), .Y(n153) );
  INVX2M U142 ( .A(n337), .Y(n338) );
  INVX2M U143 ( .A(n335), .Y(n336) );
  INVX2M U144 ( .A(n337), .Y(n339) );
  BUFX2M U145 ( .A(n340), .Y(n337) );
  BUFX2M U146 ( .A(n341), .Y(n335) );
  NAND2X2M U147 ( .A(n168), .B(n159), .Y(n173) );
  NAND2X2M U148 ( .A(n170), .B(n159), .Y(n174) );
  NAND2X2M U149 ( .A(n168), .B(n162), .Y(n175) );
  NAND2X2M U150 ( .A(n170), .B(n162), .Y(n177) );
  NAND2X2M U151 ( .A(n155), .B(n156), .Y(n154) );
  NAND2X2M U152 ( .A(n155), .B(n152), .Y(n157) );
  NAND2X2M U153 ( .A(n159), .B(n156), .Y(n158) );
  NAND2X2M U154 ( .A(n159), .B(n152), .Y(n160) );
  NAND2X2M U155 ( .A(n162), .B(n156), .Y(n161) );
  NAND2X2M U156 ( .A(n162), .B(n152), .Y(n163) );
  NAND2X2M U157 ( .A(n168), .B(n153), .Y(n167) );
  NAND2X2M U158 ( .A(n170), .B(n153), .Y(n169) );
  NAND2X2M U159 ( .A(n168), .B(n155), .Y(n171) );
  NAND2X2M U160 ( .A(n170), .B(n155), .Y(n172) );
  NAND2X2M U161 ( .A(n152), .B(n153), .Y(n151) );
  NAND2X2M U162 ( .A(n153), .B(n156), .Y(n150) );
  AND2X2M U163 ( .A(n164), .B(N11), .Y(n152) );
  AND2X2M U164 ( .A(n176), .B(N11), .Y(n170) );
  INVX2M U165 ( .A(n165), .Y(n365) );
  BUFX2M U166 ( .A(n356), .Y(n342) );
  BUFX2M U167 ( .A(n356), .Y(n343) );
  BUFX2M U168 ( .A(n355), .Y(n344) );
  BUFX2M U169 ( .A(n355), .Y(n345) );
  BUFX2M U170 ( .A(n354), .Y(n346) );
  BUFX2M U171 ( .A(n354), .Y(n347) );
  BUFX2M U172 ( .A(n353), .Y(n348) );
  BUFX2M U173 ( .A(n353), .Y(n349) );
  BUFX2M U174 ( .A(n352), .Y(n350) );
  BUFX2M U175 ( .A(n352), .Y(n351) );
  NAND2X2M U176 ( .A(RdEn), .B(n366), .Y(n165) );
  NOR2X2M U177 ( .A(n366), .B(RdEn), .Y(n166) );
  AND2X2M U178 ( .A(N13), .B(n341), .Y(n159) );
  AND2X2M U179 ( .A(N13), .B(N12), .Y(n162) );
  AND2X2M U180 ( .A(n164), .B(n340), .Y(n156) );
  NOR2BX2M U181 ( .AN(n166), .B(N14), .Y(n176) );
  AND2X2M U182 ( .A(n176), .B(n340), .Y(n168) );
  AND2X2M U183 ( .A(N14), .B(n166), .Y(n164) );
  INVX2M U184 ( .A(WrEn), .Y(n366) );
  BUFX2M U185 ( .A(RST), .Y(n355) );
  BUFX2M U186 ( .A(RST), .Y(n354) );
  BUFX2M U187 ( .A(RST), .Y(n353) );
  BUFX2M U188 ( .A(RST), .Y(n352) );
  BUFX2M U189 ( .A(RST), .Y(n356) );
  AO22X1M U190 ( .A0(N43), .A1(n365), .B0(RdData[0]), .B1(n165), .Y(n178) );
  MX4X1M U191 ( .A(n141), .B(n139), .C(n140), .D(n138), .S0(N14), .S1(N13), 
        .Y(N43) );
  MX4X1M U192 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(N11), 
        .S1(N12), .Y(n141) );
  MX4X1M U193 ( .A(\memory[8][0] ), .B(\memory[9][0] ), .C(\memory[10][0] ), 
        .D(\memory[11][0] ), .S0(N11), .S1(N12), .Y(n139) );
  AO22X1M U194 ( .A0(N42), .A1(n365), .B0(RdData[1]), .B1(n165), .Y(n179) );
  MX4X1M U195 ( .A(n145), .B(n143), .C(n144), .D(n142), .S0(N14), .S1(N13), 
        .Y(N42) );
  MX4X1M U196 ( .A(\memory[8][1] ), .B(\memory[9][1] ), .C(\memory[10][1] ), 
        .D(\memory[11][1] ), .S0(N11), .S1(N12), .Y(n143) );
  MX4X1M U197 ( .A(\memory[12][1] ), .B(\memory[13][1] ), .C(\memory[14][1] ), 
        .D(\memory[15][1] ), .S0(n338), .S1(n336), .Y(n142) );
  AO22X1M U198 ( .A0(N41), .A1(n365), .B0(RdData[2]), .B1(n165), .Y(n180) );
  MX4X1M U199 ( .A(n149), .B(n147), .C(n148), .D(n146), .S0(N14), .S1(N13), 
        .Y(N41) );
  MX4X1M U200 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n338), 
        .S1(n336), .Y(n149) );
  MX4X1M U201 ( .A(\memory[8][2] ), .B(\memory[9][2] ), .C(\memory[10][2] ), 
        .D(\memory[11][2] ), .S0(n338), .S1(n336), .Y(n147) );
  AO22X1M U202 ( .A0(N40), .A1(n365), .B0(RdData[3]), .B1(n165), .Y(n181) );
  MX4X1M U203 ( .A(n318), .B(n316), .C(n317), .D(n315), .S0(N14), .S1(N13), 
        .Y(N40) );
  MX4X1M U204 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n338), 
        .S1(n336), .Y(n318) );
  MX4X1M U205 ( .A(\memory[8][3] ), .B(\memory[9][3] ), .C(\memory[10][3] ), 
        .D(\memory[11][3] ), .S0(n338), .S1(n336), .Y(n316) );
  AO22X1M U206 ( .A0(N39), .A1(n365), .B0(RdData[4]), .B1(n165), .Y(n182) );
  MX4X1M U207 ( .A(n322), .B(n320), .C(n321), .D(n319), .S0(N14), .S1(N13), 
        .Y(N39) );
  MX4X1M U208 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(n339), 
        .S1(n336), .Y(n322) );
  MX4X1M U209 ( .A(\memory[8][4] ), .B(\memory[9][4] ), .C(\memory[10][4] ), 
        .D(\memory[11][4] ), .S0(n338), .S1(n336), .Y(n320) );
  AO22X1M U210 ( .A0(N38), .A1(n365), .B0(RdData[5]), .B1(n165), .Y(n183) );
  MX4X1M U211 ( .A(n326), .B(n324), .C(n325), .D(n323), .S0(N14), .S1(N13), 
        .Y(N38) );
  MX4X1M U212 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(n339), 
        .S1(N12), .Y(n326) );
  MX4X1M U213 ( .A(\memory[8][5] ), .B(\memory[9][5] ), .C(\memory[10][5] ), 
        .D(\memory[11][5] ), .S0(n339), .S1(N12), .Y(n324) );
  AO22X1M U214 ( .A0(N37), .A1(n365), .B0(RdData[6]), .B1(n165), .Y(n184) );
  MX4X1M U215 ( .A(n330), .B(n328), .C(n329), .D(n327), .S0(N14), .S1(N13), 
        .Y(N37) );
  MX4X1M U216 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(n339), 
        .S1(N12), .Y(n330) );
  MX4X1M U217 ( .A(\memory[8][6] ), .B(\memory[9][6] ), .C(\memory[10][6] ), 
        .D(\memory[11][6] ), .S0(n339), .S1(N12), .Y(n328) );
  AO22X1M U218 ( .A0(N36), .A1(n365), .B0(RdData[7]), .B1(n165), .Y(n185) );
  MX4X1M U219 ( .A(n334), .B(n332), .C(n333), .D(n331), .S0(N14), .S1(N13), 
        .Y(N36) );
  MX4X1M U220 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(n339), 
        .S1(N12), .Y(n334) );
  MX4X1M U221 ( .A(\memory[8][7] ), .B(\memory[9][7] ), .C(\memory[10][7] ), 
        .D(\memory[11][7] ), .S0(n339), .S1(N12), .Y(n332) );
  MX4X1M U222 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n338), 
        .S1(N12), .Y(n145) );
  MX4X1M U223 ( .A(\memory[4][0] ), .B(\memory[5][0] ), .C(\memory[6][0] ), 
        .D(\memory[7][0] ), .S0(N11), .S1(N12), .Y(n140) );
  MX4X1M U224 ( .A(\memory[4][1] ), .B(\memory[5][1] ), .C(\memory[6][1] ), 
        .D(\memory[7][1] ), .S0(n338), .S1(N12), .Y(n144) );
  MX4X1M U225 ( .A(\memory[4][2] ), .B(\memory[5][2] ), .C(\memory[6][2] ), 
        .D(\memory[7][2] ), .S0(n338), .S1(n336), .Y(n148) );
  MX4X1M U226 ( .A(\memory[4][3] ), .B(\memory[5][3] ), .C(\memory[6][3] ), 
        .D(\memory[7][3] ), .S0(n338), .S1(n336), .Y(n317) );
  MX4X1M U227 ( .A(\memory[4][4] ), .B(\memory[5][4] ), .C(\memory[6][4] ), 
        .D(\memory[7][4] ), .S0(n338), .S1(n336), .Y(n321) );
  MX4X1M U228 ( .A(\memory[4][5] ), .B(\memory[5][5] ), .C(\memory[6][5] ), 
        .D(\memory[7][5] ), .S0(n339), .S1(N12), .Y(n325) );
  MX4X1M U229 ( .A(\memory[4][6] ), .B(\memory[5][6] ), .C(\memory[6][6] ), 
        .D(\memory[7][6] ), .S0(n339), .S1(N12), .Y(n329) );
  MX4X1M U230 ( .A(\memory[4][7] ), .B(\memory[5][7] ), .C(\memory[6][7] ), 
        .D(\memory[7][7] ), .S0(n339), .S1(N12), .Y(n333) );
  MX4X1M U231 ( .A(\memory[12][0] ), .B(\memory[13][0] ), .C(\memory[14][0] ), 
        .D(\memory[15][0] ), .S0(n339), .S1(n336), .Y(n138) );
  MX4X1M U232 ( .A(\memory[12][2] ), .B(\memory[13][2] ), .C(\memory[14][2] ), 
        .D(\memory[15][2] ), .S0(n338), .S1(n336), .Y(n146) );
  MX4X1M U233 ( .A(\memory[12][3] ), .B(\memory[13][3] ), .C(\memory[14][3] ), 
        .D(\memory[15][3] ), .S0(n338), .S1(n336), .Y(n315) );
  MX4X1M U234 ( .A(\memory[12][4] ), .B(\memory[13][4] ), .C(\memory[14][4] ), 
        .D(\memory[15][4] ), .S0(n338), .S1(n336), .Y(n319) );
  MX4X1M U235 ( .A(\memory[12][5] ), .B(\memory[13][5] ), .C(\memory[14][5] ), 
        .D(\memory[15][5] ), .S0(n339), .S1(N12), .Y(n323) );
  MX4X1M U236 ( .A(\memory[12][6] ), .B(\memory[13][6] ), .C(\memory[14][6] ), 
        .D(\memory[15][6] ), .S0(n339), .S1(N12), .Y(n327) );
  MX4X1M U237 ( .A(\memory[12][7] ), .B(\memory[13][7] ), .C(\memory[14][7] ), 
        .D(\memory[15][7] ), .S0(n339), .S1(N12), .Y(n331) );
  INVX2M U238 ( .A(N11), .Y(n340) );
  INVX2M U239 ( .A(WrData[1]), .Y(n363) );
  INVX2M U240 ( .A(WrData[2]), .Y(n362) );
  INVX2M U241 ( .A(WrData[3]), .Y(n361) );
  INVX2M U242 ( .A(WrData[0]), .Y(n364) );
  INVX2M U243 ( .A(WrData[4]), .Y(n360) );
  INVX2M U244 ( .A(WrData[5]), .Y(n359) );
  INVX2M U245 ( .A(WrData[6]), .Y(n358) );
  INVX2M U246 ( .A(WrData[7]), .Y(n357) );
  OAI2BB2X1M U247 ( .B0(n150), .B1(n364), .A0N(\memory[8][0] ), .A1N(n150), 
        .Y(n251) );
  OAI2BB2X1M U248 ( .B0(n150), .B1(n363), .A0N(\memory[8][1] ), .A1N(n150), 
        .Y(n252) );
  OAI2BB2X1M U249 ( .B0(n150), .B1(n362), .A0N(\memory[8][2] ), .A1N(n150), 
        .Y(n253) );
  OAI2BB2X1M U250 ( .B0(n150), .B1(n361), .A0N(\memory[8][3] ), .A1N(n150), 
        .Y(n254) );
  OAI2BB2X1M U251 ( .B0(n150), .B1(n360), .A0N(\memory[8][4] ), .A1N(n150), 
        .Y(n255) );
  OAI2BB2X1M U252 ( .B0(n150), .B1(n359), .A0N(\memory[8][5] ), .A1N(n150), 
        .Y(n256) );
  OAI2BB2X1M U253 ( .B0(n150), .B1(n358), .A0N(\memory[8][6] ), .A1N(n150), 
        .Y(n257) );
  OAI2BB2X1M U254 ( .B0(n150), .B1(n357), .A0N(\memory[8][7] ), .A1N(n150), 
        .Y(n258) );
  OAI2BB2X1M U255 ( .B0(n364), .B1(n154), .A0N(\memory[10][0] ), .A1N(n154), 
        .Y(n267) );
  OAI2BB2X1M U256 ( .B0(n363), .B1(n154), .A0N(\memory[10][1] ), .A1N(n154), 
        .Y(n268) );
  OAI2BB2X1M U257 ( .B0(n362), .B1(n154), .A0N(\memory[10][2] ), .A1N(n154), 
        .Y(n269) );
  OAI2BB2X1M U258 ( .B0(n361), .B1(n154), .A0N(\memory[10][3] ), .A1N(n154), 
        .Y(n270) );
  OAI2BB2X1M U259 ( .B0(n360), .B1(n154), .A0N(\memory[10][4] ), .A1N(n154), 
        .Y(n271) );
  OAI2BB2X1M U260 ( .B0(n359), .B1(n154), .A0N(\memory[10][5] ), .A1N(n154), 
        .Y(n272) );
  OAI2BB2X1M U261 ( .B0(n358), .B1(n154), .A0N(\memory[10][6] ), .A1N(n154), 
        .Y(n273) );
  OAI2BB2X1M U262 ( .B0(n357), .B1(n154), .A0N(\memory[10][7] ), .A1N(n154), 
        .Y(n274) );
  OAI2BB2X1M U263 ( .B0(n364), .B1(n157), .A0N(\memory[11][0] ), .A1N(n157), 
        .Y(n275) );
  OAI2BB2X1M U264 ( .B0(n363), .B1(n157), .A0N(\memory[11][1] ), .A1N(n157), 
        .Y(n276) );
  OAI2BB2X1M U265 ( .B0(n362), .B1(n157), .A0N(\memory[11][2] ), .A1N(n157), 
        .Y(n277) );
  OAI2BB2X1M U266 ( .B0(n361), .B1(n157), .A0N(\memory[11][3] ), .A1N(n157), 
        .Y(n278) );
  OAI2BB2X1M U267 ( .B0(n360), .B1(n157), .A0N(\memory[11][4] ), .A1N(n157), 
        .Y(n279) );
  OAI2BB2X1M U268 ( .B0(n359), .B1(n157), .A0N(\memory[11][5] ), .A1N(n157), 
        .Y(n280) );
  OAI2BB2X1M U269 ( .B0(n358), .B1(n157), .A0N(\memory[11][6] ), .A1N(n157), 
        .Y(n281) );
  OAI2BB2X1M U270 ( .B0(n357), .B1(n157), .A0N(\memory[11][7] ), .A1N(n157), 
        .Y(n282) );
  OAI2BB2X1M U271 ( .B0(n151), .B1(n364), .A0N(\memory[9][0] ), .A1N(n151), 
        .Y(n259) );
  OAI2BB2X1M U272 ( .B0(n151), .B1(n363), .A0N(\memory[9][1] ), .A1N(n151), 
        .Y(n260) );
  OAI2BB2X1M U273 ( .B0(n151), .B1(n362), .A0N(\memory[9][2] ), .A1N(n151), 
        .Y(n261) );
  OAI2BB2X1M U274 ( .B0(n151), .B1(n361), .A0N(\memory[9][3] ), .A1N(n151), 
        .Y(n262) );
  OAI2BB2X1M U275 ( .B0(n151), .B1(n360), .A0N(\memory[9][4] ), .A1N(n151), 
        .Y(n263) );
  OAI2BB2X1M U276 ( .B0(n151), .B1(n359), .A0N(\memory[9][5] ), .A1N(n151), 
        .Y(n264) );
  OAI2BB2X1M U277 ( .B0(n151), .B1(n358), .A0N(\memory[9][6] ), .A1N(n151), 
        .Y(n265) );
  OAI2BB2X1M U278 ( .B0(n364), .B1(n167), .A0N(REG0[0]), .A1N(n167), .Y(n187)
         );
  OAI2BB2X1M U279 ( .B0(n363), .B1(n167), .A0N(REG0[1]), .A1N(n167), .Y(n188)
         );
  OAI2BB2X1M U280 ( .B0(n362), .B1(n167), .A0N(REG0[2]), .A1N(n167), .Y(n189)
         );
  OAI2BB2X1M U281 ( .B0(n361), .B1(n167), .A0N(REG0[3]), .A1N(n167), .Y(n190)
         );
  OAI2BB2X1M U282 ( .B0(n360), .B1(n167), .A0N(REG0[4]), .A1N(n167), .Y(n191)
         );
  OAI2BB2X1M U283 ( .B0(n359), .B1(n167), .A0N(REG0[5]), .A1N(n167), .Y(n192)
         );
  OAI2BB2X1M U284 ( .B0(n358), .B1(n167), .A0N(REG0[6]), .A1N(n167), .Y(n193)
         );
  OAI2BB2X1M U285 ( .B0(n357), .B1(n167), .A0N(REG0[7]), .A1N(n167), .Y(n194)
         );
  OAI2BB2X1M U286 ( .B0(n364), .B1(n169), .A0N(REG1[0]), .A1N(n169), .Y(n195)
         );
  OAI2BB2X1M U287 ( .B0(n363), .B1(n169), .A0N(REG1[1]), .A1N(n169), .Y(n196)
         );
  OAI2BB2X1M U288 ( .B0(n362), .B1(n169), .A0N(REG1[2]), .A1N(n169), .Y(n197)
         );
  OAI2BB2X1M U289 ( .B0(n361), .B1(n169), .A0N(REG1[3]), .A1N(n169), .Y(n198)
         );
  OAI2BB2X1M U290 ( .B0(n360), .B1(n169), .A0N(REG1[4]), .A1N(n169), .Y(n199)
         );
  OAI2BB2X1M U291 ( .B0(n359), .B1(n169), .A0N(REG1[5]), .A1N(n169), .Y(n200)
         );
  OAI2BB2X1M U292 ( .B0(n358), .B1(n169), .A0N(REG1[6]), .A1N(n169), .Y(n201)
         );
  OAI2BB2X1M U293 ( .B0(n357), .B1(n169), .A0N(REG1[7]), .A1N(n169), .Y(n202)
         );
  OAI2BB2X1M U294 ( .B0(n364), .B1(n171), .A0N(REG2[0]), .A1N(n171), .Y(n203)
         );
  OAI2BB2X1M U295 ( .B0(n363), .B1(n171), .A0N(REG2[1]), .A1N(n171), .Y(n204)
         );
  OAI2BB2X1M U296 ( .B0(n362), .B1(n171), .A0N(REG2[2]), .A1N(n171), .Y(n205)
         );
  OAI2BB2X1M U297 ( .B0(n361), .B1(n171), .A0N(REG2[3]), .A1N(n171), .Y(n206)
         );
  OAI2BB2X1M U298 ( .B0(n360), .B1(n171), .A0N(REG2[4]), .A1N(n171), .Y(n207)
         );
  OAI2BB2X1M U299 ( .B0(n359), .B1(n171), .A0N(REG2[5]), .A1N(n171), .Y(n208)
         );
  OAI2BB2X1M U300 ( .B0(n358), .B1(n171), .A0N(REG2[6]), .A1N(n171), .Y(n209)
         );
  OAI2BB2X1M U301 ( .B0(n364), .B1(n172), .A0N(REG3[0]), .A1N(n172), .Y(n211)
         );
  OAI2BB2X1M U302 ( .B0(n363), .B1(n172), .A0N(REG3[1]), .A1N(n172), .Y(n212)
         );
  OAI2BB2X1M U303 ( .B0(n362), .B1(n172), .A0N(REG3[2]), .A1N(n172), .Y(n213)
         );
  OAI2BB2X1M U304 ( .B0(n361), .B1(n172), .A0N(REG3[3]), .A1N(n172), .Y(n214)
         );
  OAI2BB2X1M U305 ( .B0(n360), .B1(n172), .A0N(REG3[4]), .A1N(n172), .Y(n215)
         );
  OAI2BB2X1M U306 ( .B0(n358), .B1(n172), .A0N(REG3[6]), .A1N(n172), .Y(n217)
         );
  OAI2BB2X1M U307 ( .B0(n357), .B1(n172), .A0N(REG3[7]), .A1N(n172), .Y(n218)
         );
  OAI2BB2X1M U308 ( .B0(n357), .B1(n151), .A0N(\memory[9][7] ), .A1N(n151), 
        .Y(n266) );
  OAI2BB2X1M U309 ( .B0(n357), .B1(n171), .A0N(REG2[7]), .A1N(n171), .Y(n210)
         );
  OAI2BB2X1M U310 ( .B0(n359), .B1(n172), .A0N(REG3[5]), .A1N(n172), .Y(n216)
         );
  OAI2BB2X1M U311 ( .B0(n364), .B1(n173), .A0N(\memory[4][0] ), .A1N(n173), 
        .Y(n219) );
  OAI2BB2X1M U312 ( .B0(n363), .B1(n173), .A0N(\memory[4][1] ), .A1N(n173), 
        .Y(n220) );
  OAI2BB2X1M U313 ( .B0(n362), .B1(n173), .A0N(\memory[4][2] ), .A1N(n173), 
        .Y(n221) );
  OAI2BB2X1M U314 ( .B0(n361), .B1(n173), .A0N(\memory[4][3] ), .A1N(n173), 
        .Y(n222) );
  OAI2BB2X1M U315 ( .B0(n360), .B1(n173), .A0N(\memory[4][4] ), .A1N(n173), 
        .Y(n223) );
  OAI2BB2X1M U316 ( .B0(n359), .B1(n173), .A0N(\memory[4][5] ), .A1N(n173), 
        .Y(n224) );
  OAI2BB2X1M U317 ( .B0(n358), .B1(n173), .A0N(\memory[4][6] ), .A1N(n173), 
        .Y(n225) );
  OAI2BB2X1M U318 ( .B0(n357), .B1(n173), .A0N(\memory[4][7] ), .A1N(n173), 
        .Y(n226) );
  OAI2BB2X1M U319 ( .B0(n364), .B1(n174), .A0N(\memory[5][0] ), .A1N(n174), 
        .Y(n227) );
  OAI2BB2X1M U320 ( .B0(n363), .B1(n174), .A0N(\memory[5][1] ), .A1N(n174), 
        .Y(n228) );
  OAI2BB2X1M U321 ( .B0(n362), .B1(n174), .A0N(\memory[5][2] ), .A1N(n174), 
        .Y(n229) );
  OAI2BB2X1M U322 ( .B0(n361), .B1(n174), .A0N(\memory[5][3] ), .A1N(n174), 
        .Y(n230) );
  OAI2BB2X1M U323 ( .B0(n360), .B1(n174), .A0N(\memory[5][4] ), .A1N(n174), 
        .Y(n231) );
  OAI2BB2X1M U324 ( .B0(n359), .B1(n174), .A0N(\memory[5][5] ), .A1N(n174), 
        .Y(n232) );
  OAI2BB2X1M U325 ( .B0(n358), .B1(n174), .A0N(\memory[5][6] ), .A1N(n174), 
        .Y(n233) );
  OAI2BB2X1M U326 ( .B0(n357), .B1(n174), .A0N(\memory[5][7] ), .A1N(n174), 
        .Y(n234) );
  OAI2BB2X1M U327 ( .B0(n364), .B1(n175), .A0N(\memory[6][0] ), .A1N(n175), 
        .Y(n235) );
  OAI2BB2X1M U328 ( .B0(n363), .B1(n175), .A0N(\memory[6][1] ), .A1N(n175), 
        .Y(n236) );
  OAI2BB2X1M U329 ( .B0(n362), .B1(n175), .A0N(\memory[6][2] ), .A1N(n175), 
        .Y(n237) );
  OAI2BB2X1M U330 ( .B0(n361), .B1(n175), .A0N(\memory[6][3] ), .A1N(n175), 
        .Y(n238) );
  OAI2BB2X1M U331 ( .B0(n360), .B1(n175), .A0N(\memory[6][4] ), .A1N(n175), 
        .Y(n239) );
  OAI2BB2X1M U332 ( .B0(n359), .B1(n175), .A0N(\memory[6][5] ), .A1N(n175), 
        .Y(n240) );
  OAI2BB2X1M U333 ( .B0(n358), .B1(n175), .A0N(\memory[6][6] ), .A1N(n175), 
        .Y(n241) );
  OAI2BB2X1M U334 ( .B0(n357), .B1(n175), .A0N(\memory[6][7] ), .A1N(n175), 
        .Y(n242) );
  OAI2BB2X1M U335 ( .B0(n364), .B1(n177), .A0N(\memory[7][0] ), .A1N(n177), 
        .Y(n243) );
  OAI2BB2X1M U336 ( .B0(n363), .B1(n177), .A0N(\memory[7][1] ), .A1N(n177), 
        .Y(n244) );
  OAI2BB2X1M U337 ( .B0(n362), .B1(n177), .A0N(\memory[7][2] ), .A1N(n177), 
        .Y(n245) );
  OAI2BB2X1M U338 ( .B0(n361), .B1(n177), .A0N(\memory[7][3] ), .A1N(n177), 
        .Y(n246) );
  OAI2BB2X1M U339 ( .B0(n360), .B1(n177), .A0N(\memory[7][4] ), .A1N(n177), 
        .Y(n247) );
  OAI2BB2X1M U340 ( .B0(n359), .B1(n177), .A0N(\memory[7][5] ), .A1N(n177), 
        .Y(n248) );
  OAI2BB2X1M U341 ( .B0(n358), .B1(n177), .A0N(\memory[7][6] ), .A1N(n177), 
        .Y(n249) );
  OAI2BB2X1M U342 ( .B0(n357), .B1(n177), .A0N(\memory[7][7] ), .A1N(n177), 
        .Y(n250) );
  OAI2BB2X1M U343 ( .B0(n364), .B1(n158), .A0N(\memory[12][0] ), .A1N(n158), 
        .Y(n283) );
  OAI2BB2X1M U344 ( .B0(n363), .B1(n158), .A0N(\memory[12][1] ), .A1N(n158), 
        .Y(n284) );
  OAI2BB2X1M U345 ( .B0(n362), .B1(n158), .A0N(\memory[12][2] ), .A1N(n158), 
        .Y(n285) );
  OAI2BB2X1M U346 ( .B0(n361), .B1(n158), .A0N(\memory[12][3] ), .A1N(n158), 
        .Y(n286) );
  OAI2BB2X1M U347 ( .B0(n360), .B1(n158), .A0N(\memory[12][4] ), .A1N(n158), 
        .Y(n287) );
  OAI2BB2X1M U348 ( .B0(n359), .B1(n158), .A0N(\memory[12][5] ), .A1N(n158), 
        .Y(n288) );
  OAI2BB2X1M U349 ( .B0(n358), .B1(n158), .A0N(\memory[12][6] ), .A1N(n158), 
        .Y(n289) );
  OAI2BB2X1M U350 ( .B0(n357), .B1(n158), .A0N(\memory[12][7] ), .A1N(n158), 
        .Y(n290) );
  OAI2BB2X1M U351 ( .B0(n364), .B1(n160), .A0N(\memory[13][0] ), .A1N(n160), 
        .Y(n291) );
  OAI2BB2X1M U352 ( .B0(n363), .B1(n160), .A0N(\memory[13][1] ), .A1N(n160), 
        .Y(n292) );
  OAI2BB2X1M U353 ( .B0(n362), .B1(n160), .A0N(\memory[13][2] ), .A1N(n160), 
        .Y(n293) );
  OAI2BB2X1M U354 ( .B0(n361), .B1(n160), .A0N(\memory[13][3] ), .A1N(n160), 
        .Y(n294) );
  OAI2BB2X1M U355 ( .B0(n360), .B1(n160), .A0N(\memory[13][4] ), .A1N(n160), 
        .Y(n295) );
  OAI2BB2X1M U356 ( .B0(n359), .B1(n160), .A0N(\memory[13][5] ), .A1N(n160), 
        .Y(n296) );
  OAI2BB2X1M U357 ( .B0(n358), .B1(n160), .A0N(\memory[13][6] ), .A1N(n160), 
        .Y(n297) );
  OAI2BB2X1M U358 ( .B0(n357), .B1(n160), .A0N(\memory[13][7] ), .A1N(n160), 
        .Y(n298) );
  OAI2BB2X1M U359 ( .B0(n364), .B1(n161), .A0N(\memory[14][0] ), .A1N(n161), 
        .Y(n299) );
  OAI2BB2X1M U360 ( .B0(n363), .B1(n161), .A0N(\memory[14][1] ), .A1N(n161), 
        .Y(n300) );
  OAI2BB2X1M U361 ( .B0(n362), .B1(n161), .A0N(\memory[14][2] ), .A1N(n161), 
        .Y(n301) );
  OAI2BB2X1M U362 ( .B0(n361), .B1(n161), .A0N(\memory[14][3] ), .A1N(n161), 
        .Y(n302) );
  OAI2BB2X1M U363 ( .B0(n360), .B1(n161), .A0N(\memory[14][4] ), .A1N(n161), 
        .Y(n303) );
  OAI2BB2X1M U364 ( .B0(n359), .B1(n161), .A0N(\memory[14][5] ), .A1N(n161), 
        .Y(n304) );
  OAI2BB2X1M U365 ( .B0(n358), .B1(n161), .A0N(\memory[14][6] ), .A1N(n161), 
        .Y(n305) );
  OAI2BB2X1M U366 ( .B0(n357), .B1(n161), .A0N(\memory[14][7] ), .A1N(n161), 
        .Y(n306) );
  OAI2BB2X1M U367 ( .B0(n364), .B1(n163), .A0N(\memory[15][0] ), .A1N(n163), 
        .Y(n307) );
  OAI2BB2X1M U368 ( .B0(n363), .B1(n163), .A0N(\memory[15][1] ), .A1N(n163), 
        .Y(n308) );
  OAI2BB2X1M U369 ( .B0(n362), .B1(n163), .A0N(\memory[15][2] ), .A1N(n163), 
        .Y(n309) );
  OAI2BB2X1M U370 ( .B0(n361), .B1(n163), .A0N(\memory[15][3] ), .A1N(n163), 
        .Y(n310) );
  OAI2BB2X1M U371 ( .B0(n360), .B1(n163), .A0N(\memory[15][4] ), .A1N(n163), 
        .Y(n311) );
  OAI2BB2X1M U372 ( .B0(n359), .B1(n163), .A0N(\memory[15][5] ), .A1N(n163), 
        .Y(n312) );
  OAI2BB2X1M U373 ( .B0(n358), .B1(n163), .A0N(\memory[15][6] ), .A1N(n163), 
        .Y(n313) );
  OAI2BB2X1M U374 ( .B0(n357), .B1(n163), .A0N(\memory[15][7] ), .A1N(n163), 
        .Y(n314) );
  INVX2M U375 ( .A(N12), .Y(n341) );
  AO21XLM U376 ( .A0(RdData_VLD), .A1(n166), .B0(n365), .Y(n186) );
  DLY1X1M U377 ( .A(test_se), .Y(n370) );
  DLY1X1M U378 ( .A(test_se), .Y(n371) );
  DLY1X1M U379 ( .A(test_se), .Y(n372) );
  DLY1X1M U380 ( .A(test_se), .Y(n373) );
endmodule


module SYS_TOP ( scan_clk, scan_rst, test_mode, SE, SI, SO, RST_N, 
        UART_CLK, REF_CLK, UART_RX_IN, UART_TX_O, parity_error, framing_error
 );
  input [3:0] SI;
  output [3:0] SO;
  input scan_clk, scan_rst, test_mode, SE, RST_N, UART_CLK, REF_CLK,
         UART_RX_IN;
  output UART_TX_O, parity_error, framing_error;
  wire   REF_CLK_M, UART_CLK_M, RX_CLK, RX_CLK_M, TX_CLK, TX_CLK_M, M_RST_N,
         Domain1_SYNC_RST, M_Domain1_SYNC_RST, Domain2_SYNC_RST,
         M_Domain2_SYNC_RST, Sync_Valid, Rd_D_Valid_RF, RdEn_RF, WrEn_RF,
         ALU_OUT_Valid, ALU_EN, FIFO_FULL, WR_INC, CLK_Gating_EN, RX_OUT_Valid,
         TX_Busy, TX_IN_Valid, RD_INC, _1_net_, Gated_ALU_CLK, n1, n2, n3, n4,
         n5, n6, n7, n8, n10, n11, n12, n13, n14, n17, n19, n20, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37;
  wire   [7:0] Sync_Data;
  wire   [7:0] Rd_D_RF;
  wire   [3:0] Addr_RF;
  wire   [7:0] Wr_D_RF;
  wire   [15:0] ALU_OUT;
  wire   [3:0] ALU_FUN;
  wire   [7:0] WR_Data;
  wire   [7:0] DIV_RATIO;
  wire   [3:0] RX_Div_Ratio;
  wire   [7:0] UART_Config;
  wire   [7:0] RX_OUT;
  wire   [7:0] TX_IN;
  wire   [7:0] Op_A;
  wire   [7:0] Op_B;
  assign SO[2] = ALU_OUT[7];

  INVX2M U3 ( .A(n6), .Y(n5) );
  INVX2M U4 ( .A(TX_IN_Valid), .Y(n1) );
  OR2X2M U5 ( .A(CLK_Gating_EN), .B(n2), .Y(_1_net_) );
  BUFX2M U6 ( .A(Addr_RF[0]), .Y(n3) );
  BUFX2M U7 ( .A(Addr_RF[1]), .Y(n4) );
  INVX4M U8 ( .A(n8), .Y(n7) );
  INVX2M U9 ( .A(M_Domain1_SYNC_RST), .Y(n8) );
  INVX2M U10 ( .A(M_Domain2_SYNC_RST), .Y(n6) );
  BUFX2M U11 ( .A(test_mode), .Y(n2) );
  DLY1X1M U14 ( .A(n26), .Y(n25) );
  INVXLM U15 ( .A(n34), .Y(n26) );
  DLY1X1M U16 ( .A(n29), .Y(n27) );
  INVXLM U17 ( .A(n37), .Y(n28) );
  INVXLM U18 ( .A(n28), .Y(n29) );
  DLY1X1M U19 ( .A(n37), .Y(n30) );
  DLY1X1M U20 ( .A(n37), .Y(n31) );
  INVXLM U21 ( .A(n36), .Y(n32) );
  INVXLM U22 ( .A(n32), .Y(n33) );
  INVXLM U23 ( .A(SE), .Y(n34) );
  INVXLM U24 ( .A(n34), .Y(n35) );
  INVXLM U25 ( .A(n34), .Y(n36) );
  INVXLM U26 ( .A(n34), .Y(n37) );
  mux2X1_1 DFT_REF_MUX ( .IN_0(REF_CLK), .IN_1(scan_clk), .SEL(n2), .OUT(
        REF_CLK_M) );
  mux2X1_4 UART_CLK_MUX ( .IN_0(UART_CLK), .IN_1(scan_clk), .SEL(n2), .OUT(
        UART_CLK_M) );
  mux2X1_3 RX_CLK_MUX ( .IN_0(RX_CLK), .IN_1(scan_clk), .SEL(n2), .OUT(
        RX_CLK_M) );
  mux2X1_2 TX_CLK_MUX ( .IN_0(TX_CLK), .IN_1(scan_clk), .SEL(n2), .OUT(
        TX_CLK_M) );
  mux2X1_0 RST_N_MUX ( .IN_0(RST_N), .IN_1(scan_rst), .SEL(n2), .OUT(M_RST_N)
         );
  mux2X1_6 Domain1_SYNC_RST_MUX ( .IN_0(Domain1_SYNC_RST), .IN_1(scan_rst), 
        .SEL(n2), .OUT(M_Domain1_SYNC_RST) );
  mux2X1_5 Domain2_SYNC_RST_MUX ( .IN_0(Domain2_SYNC_RST), .IN_1(scan_rst), 
        .SEL(n2), .OUT(M_Domain2_SYNC_RST) );
  SYS_CTRL_D_Width8_Addr_Size4_test_1 SYS_Cntroller ( .CLK(REF_CLK_M), .RST(n7), .Sync_Frame(Sync_Data), .enable_pulse(Sync_Valid), .Rd_D(Rd_D_RF), 
        .Rd_D_Valid(Rd_D_Valid_RF), .Rd_En(RdEn_RF), .Wr_En(WrEn_RF), .Addr(
        Addr_RF), .Wr_D(Wr_D_RF), .ALU_OUT(ALU_OUT), .OUT_Valid(ALU_OUT_Valid), 
        .ALU_En(ALU_EN), .FUN(ALU_FUN), .FIFO_FULL(FIFO_FULL), .WR_INC(WR_INC), 
        .WR_DATA(WR_Data), .Gate_En(CLK_Gating_EN), .test_si(n20), .test_so(
        n19), .test_se(n27) );
  Integer_ClkDiv_ratio_Width8_test_1 UART_TX_ClkDiv ( .i_ref_clk(UART_CLK_M), 
        .i_rst_n(n5), .i_clk_en(1'b1), .i_div_ratio(DIV_RATIO), .o_div_clk(
        TX_CLK), .test_si(n11), .test_so(n10), .test_se(n37) );
  Integer_ClkDiv_ratio_Width4_test_1 UART_RX_ClkDiv ( .i_ref_clk(UART_CLK_M), 
        .i_rst_n(n5), .i_clk_en(1'b1), .i_div_ratio(RX_Div_Ratio), .o_div_clk(
        RX_CLK), .test_si(n13), .test_so(n12), .test_se(n37) );
  RX_CLKDIV_MUX_Width4 CLKDIV_MUX ( .Input(UART_Config[7:2]), .MUX_Out(
        RX_Div_Ratio) );
  UART_RX_TOP_Data_Width8_test_1 UART_RX ( .CLK(RX_CLK_M), .RST(n5), .PAR_EN(
        UART_Config[0]), .Prescale(UART_Config[7:2]), .PAR_TYP(UART_Config[1]), 
        .RX_IN(UART_RX_IN), .Paerity_Error(parity_error), .Stop_Error(
        framing_error), .Data_Valid(RX_OUT_Valid), .P_DATA(RX_OUT), .test_si(
        Domain2_SYNC_RST), .test_so(n13), .test_se(n25) );
  UART_TOP_test_1 UART_TX ( .CLK(TX_CLK_M), .RST(n5), .P_DATA(TX_IN), 
        .Data_Valid(n1), .PAR_EN(UART_Config[0]), .PAR_TYP(UART_Config[1]), 
        .busy(TX_Busy), .TX_OUT(SO[0]), .test_si2(n10), .test_si1(n12), 
        .test_so1(n11), .test_se(n30) );
  AS_FIFO_TOP_Data_Width8_Addr_Size3_FIFO_Dipth8_NUM_STAGES2_test_1 UART_FIFO ( 
        .I_W_CLK(REF_CLK_M), .I_W_RST(n7), .I_W_INC(WR_INC), .I_Data(WR_Data), 
        .I_R_CLK(TX_CLK_M), .I_R_RST(n5), .I_R_INC(RD_INC), .O_Data(TX_IN), 
        .FIFO_Full(FIFO_FULL), .FIFO_Empty(TX_IN_Valid), .test_si2(SI[0]), 
        .test_si1(n17), .test_so2(n14), .test_so1(SO[1]), .test_se(SE) );
  PULSE_GEN_test_1 U0_PULSE_GEN ( .clk(TX_CLK_M), .rst(n5), .lvl_sig(TX_Busy), 
        .pulse_sig(RD_INC), .test_si(ALU_OUT_Valid), .test_so(n17), .test_se(
        n31) );
  RST_SYN_NUM_STAGES2_test_0 REF_RST_SYNC ( .RST(M_RST_N), .CLK(REF_CLK_M), 
        .SYNC_RST(Domain1_SYNC_RST), .test_si(Sync_Data[7]), .test_se(n33) );
  RST_SYN_NUM_STAGES2_test_1 UART_RST_SYNC ( .RST(M_RST_N), .CLK(UART_CLK_M), 
        .SYNC_RST(Domain2_SYNC_RST), .test_si(n14), .test_se(n33) );
  DATA_SYNC_NUM_STAGES2_BUS_WIDTH8_test_1 Data_SYNC ( .CLK(REF_CLK_M), .RST(n7), .unsync_bus(RX_OUT), .bus_enable(RX_OUT_Valid), .sync_bus(Sync_Data), 
        .enable_pulse_d(Sync_Valid), .test_si(SI[3]), .test_se(n33) );
  CLK_GATE U_CLK_GATE ( .CLK_EN(_1_net_), .CLK(REF_CLK_M), .GATED_CLK(
        Gated_ALU_CLK) );
  ALU_IN_Width8_test_1 U0_ALU ( .CLK(Gated_ALU_CLK), .RST(n7), .EN(ALU_EN), 
        .ALU_FUN(ALU_FUN), .A(Op_A), .B(Op_B), .ALU_OUT(ALU_OUT), .OUT_Valid(
        ALU_OUT_Valid), .test_si2(SI[1]), .test_si1(n19), .test_se(n35) );
  Reg_File_WIDTH8_DEPTH16_ADDR4_test_1 RegFile ( .CLK(REF_CLK_M), .RST(n7), 
        .WrEn(WrEn_RF), .RdEn(RdEn_RF), .Address({Addr_RF[3:2], n4, n3}), 
        .WrData(Wr_D_RF), .RdData(Rd_D_RF), .RdData_VLD(Rd_D_Valid_RF), .REG0(
        Op_A), .REG1(Op_B), .REG2(UART_Config), .REG3(DIV_RATIO), .test_si2(
        SI[2]), .test_si1(Domain1_SYNC_RST), .test_so2(n20), .test_so1(SO[3]), 
        .test_se(SE) );
  BUFX2M U13 ( .A(SO[0]), .Y(UART_TX_O) );
endmodule

