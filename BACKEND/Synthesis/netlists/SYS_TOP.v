/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Wed Oct  1 08:43:29 2025
/////////////////////////////////////////////////////////////


module SYS_CTRL_D_Width8_Addr_Size4 ( CLK, RST, Sync_Frame, enable_pulse, Rd_D, 
        Rd_D_Valid, Rd_En, Wr_En, Addr, Wr_D, ALU_OUT, OUT_Valid, ALU_En, FUN, 
        FIFO_FULL, WR_INC, WR_DATA, Gate_En, CLK_DIV_EN );
  input [7:0] Sync_Frame;
  input [7:0] Rd_D;
  output [3:0] Addr;
  output [7:0] Wr_D;
  input [15:0] ALU_OUT;
  output [3:0] FUN;
  output [7:0] WR_DATA;
  input CLK, RST, enable_pulse, Rd_D_Valid, OUT_Valid, FIFO_FULL;
  output Rd_En, Wr_En, ALU_En, WR_INC, Gate_En, CLK_DIV_EN;
  wire   n12, n13, n14, n15, n16, n17, n18, n19, n22, n26, n30, n31, n32, n33,
         n34, n35, n36, n37, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n20, n21, n23, n24, n25, n27, n28, n29, n38, n39, n40, n41,
         n43, n44, n45, n46, n118, n119, n120, n121, n122, n123;
  wire   [3:0] current_state;
  wire   [3:0] next_state;
  wire   [7:0] Stored_Frame1;

  DFFRX1M \Stored_Frame2_reg[7]  ( .D(n109), .CK(CLK), .RN(n5), .QN(n12) );
  DFFRX1M \Stored_Frame2_reg[6]  ( .D(n110), .CK(CLK), .RN(n5), .QN(n13) );
  DFFRX1M \Stored_Frame2_reg[5]  ( .D(n111), .CK(CLK), .RN(n5), .QN(n14) );
  DFFRX1M \Stored_Frame2_reg[4]  ( .D(n112), .CK(CLK), .RN(n5), .QN(n15) );
  DFFRX1M \Stored_Frame3_reg[7]  ( .D(n101), .CK(CLK), .RN(n5), .QN(n30) );
  DFFRX1M \Stored_Frame3_reg[6]  ( .D(n100), .CK(CLK), .RN(n5), .QN(n31) );
  DFFRX1M \Stored_Frame3_reg[5]  ( .D(n99), .CK(CLK), .RN(n6), .QN(n32) );
  DFFRX1M \Stored_Frame3_reg[4]  ( .D(n98), .CK(CLK), .RN(n6), .QN(n33) );
  DFFRX1M \Stored_Frame3_reg[3]  ( .D(n97), .CK(CLK), .RN(n6), .QN(n34) );
  DFFRX1M \Stored_Frame3_reg[2]  ( .D(n96), .CK(CLK), .RN(n6), .QN(n35) );
  DFFRX1M \Stored_Frame3_reg[1]  ( .D(n95), .CK(CLK), .RN(n6), .QN(n36) );
  DFFRX1M \Stored_Frame3_reg[0]  ( .D(n94), .CK(CLK), .RN(n6), .QN(n37) );
  DFFRX1M \Stored_Frame2_reg[0]  ( .D(n116), .CK(CLK), .RN(n5), .QN(n19) );
  DFFRX1M \Stored_Frame2_reg[3]  ( .D(n113), .CK(CLK), .RN(n5), .QN(n16) );
  DFFRX1M \Stored_Frame2_reg[2]  ( .D(n114), .CK(CLK), .RN(n5), .QN(n17) );
  DFFRX1M \Stored_Frame2_reg[1]  ( .D(n115), .CK(CLK), .RN(n5), .QN(n18) );
  DFFRX1M \Stored_Frame1_reg[3]  ( .D(n106), .CK(CLK), .RN(n5), .QN(n26) );
  DFFRX1M \Stored_Frame1_reg[7]  ( .D(n102), .CK(CLK), .RN(n5), .QN(n22) );
  DFFRQX1M \Stored_Frame1_reg[6]  ( .D(n103), .CK(CLK), .RN(n6), .Q(
        Stored_Frame1[6]) );
  DFFRQX1M \Stored_Frame1_reg[5]  ( .D(n104), .CK(CLK), .RN(n6), .Q(
        Stored_Frame1[5]) );
  DFFRQX1M \Stored_Frame1_reg[4]  ( .D(n105), .CK(CLK), .RN(n6), .Q(
        Stored_Frame1[4]) );
  DFFRQX1M \Stored_Frame1_reg[2]  ( .D(n107), .CK(CLK), .RN(n6), .Q(
        Stored_Frame1[2]) );
  DFFRQX1M \Stored_Frame1_reg[1]  ( .D(n108), .CK(CLK), .RN(n6), .Q(
        Stored_Frame1[1]) );
  DFFRQX1M \Stored_Frame1_reg[0]  ( .D(n117), .CK(CLK), .RN(RST), .Q(
        Stored_Frame1[0]) );
  DFFRQX1M \current_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(n6), .Q(
        current_state[0]) );
  DFFRQX1M \current_state_reg[3]  ( .D(next_state[3]), .CK(CLK), .RN(n6), .Q(
        current_state[3]) );
  DFFRQX1M \current_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(n6), .Q(
        current_state[1]) );
  DFFRQX1M \current_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(n6), .Q(
        current_state[2]) );
  INVX2M U3 ( .A(1'b0), .Y(CLK_DIV_EN) );
  OAI22X1M U5 ( .A0(n21), .A1(n90), .B0(n17), .B1(n91), .Y(FUN[2]) );
  OAI22X1M U6 ( .A0(n24), .A1(n90), .B0(n19), .B1(n91), .Y(FUN[0]) );
  OAI22X1M U7 ( .A0(n23), .A1(n90), .B0(n18), .B1(n91), .Y(FUN[1]) );
  NOR2X2M U8 ( .A(n93), .B(n17), .Y(Addr[2]) );
  NAND4X2M U9 ( .A(enable_pulse), .B(n123), .C(n73), .D(n45), .Y(n70) );
  INVX2M U10 ( .A(n48), .Y(n7) );
  NAND2BX2M U11 ( .AN(n88), .B(ALU_En), .Y(n90) );
  NAND2X2M U12 ( .A(n39), .B(ALU_En), .Y(n91) );
  NAND3BX2M U13 ( .AN(FIFO_FULL), .B(n54), .C(n44), .Y(n48) );
  INVX2M U14 ( .A(n3), .Y(n27) );
  INVX2M U15 ( .A(n4), .Y(n25) );
  INVX2M U16 ( .A(n51), .Y(n43) );
  NOR2BX2M U17 ( .AN(n74), .B(Rd_En), .Y(n93) );
  NAND4X2M U18 ( .A(n60), .B(n92), .C(n38), .D(n120), .Y(n88) );
  INVX2M U19 ( .A(n47), .Y(ALU_En) );
  INVX2M U20 ( .A(n89), .Y(n39) );
  NOR3X2M U21 ( .A(n77), .B(FIFO_FULL), .C(n61), .Y(n80) );
  AOI221XLM U22 ( .A0(n61), .A1(n44), .B0(n3), .B1(n40), .C0(Rd_En), .Y(n55)
         );
  INVX2M U23 ( .A(n61), .Y(n40) );
  NAND3X2M U24 ( .A(n123), .B(n45), .C(n76), .Y(n51) );
  OAI21BX1M U25 ( .A0(FIFO_FULL), .A1(n77), .B0N(n78), .Y(WR_INC) );
  NOR4X1M U26 ( .A(n41), .B(n45), .C(n123), .D(n46), .Y(n78) );
  NAND2X2M U27 ( .A(n75), .B(n76), .Y(n52) );
  NAND3X2M U28 ( .A(n46), .B(n41), .C(n75), .Y(n71) );
  BUFX2M U29 ( .A(n50), .Y(n3) );
  NOR2X2M U30 ( .A(n71), .B(n28), .Y(n50) );
  NAND4X2M U31 ( .A(n47), .B(n51), .C(n52), .D(n53), .Y(next_state[2]) );
  AOI21BX2M U32 ( .A0(n3), .A1(n54), .B0N(n55), .Y(n53) );
  NAND2X2M U33 ( .A(n88), .B(n89), .Y(n54) );
  NAND3X2M U34 ( .A(n52), .B(n51), .C(n74), .Y(Wr_En) );
  INVX2M U35 ( .A(n77), .Y(n44) );
  OAI211X2M U36 ( .A0(n71), .A1(n89), .B0(n47), .C0(n51), .Y(Gate_En) );
  OAI22X1M U37 ( .A0(n23), .A1(n70), .B0(n29), .B1(n122), .Y(n108) );
  OAI22X1M U38 ( .A0(n21), .A1(n70), .B0(n29), .B1(n121), .Y(n107) );
  OAI22X1M U39 ( .A0(n11), .A1(n70), .B0(n29), .B1(n120), .Y(n105) );
  OAI22X1M U40 ( .A0(n10), .A1(n70), .B0(n29), .B1(n119), .Y(n104) );
  OAI22X1M U41 ( .A0(n9), .A1(n70), .B0(n29), .B1(n118), .Y(n103) );
  OAI22X1M U42 ( .A0(n24), .A1(n70), .B0(n29), .B1(n38), .Y(n117) );
  INVX2M U43 ( .A(n70), .Y(n29) );
  BUFX2M U44 ( .A(n72), .Y(n4) );
  NOR2X2M U45 ( .A(n52), .B(n28), .Y(n72) );
  BUFX2M U46 ( .A(RST), .Y(n6) );
  BUFX2M U47 ( .A(RST), .Y(n5) );
  NOR4X1M U48 ( .A(n118), .B(n121), .C(Stored_Frame1[1]), .D(Stored_Frame1[5]), 
        .Y(n92) );
  NOR2X2M U49 ( .A(n22), .B(n26), .Y(n60) );
  NOR2X2M U50 ( .A(n46), .B(current_state[3]), .Y(n76) );
  AND3X2M U51 ( .A(n76), .B(n123), .C(current_state[1]), .Y(Rd_En) );
  NOR2X2M U52 ( .A(n123), .B(current_state[1]), .Y(n75) );
  NAND3X2M U53 ( .A(n75), .B(current_state[2]), .C(current_state[3]), .Y(n47)
         );
  NAND4X2M U54 ( .A(n60), .B(Stored_Frame1[4]), .C(Stored_Frame1[0]), .D(n92), 
        .Y(n89) );
  INVX2M U55 ( .A(current_state[0]), .Y(n123) );
  INVX2M U56 ( .A(current_state[2]), .Y(n46) );
  OAI22X1M U57 ( .A0(n20), .A1(n90), .B0(n16), .B1(n91), .Y(FUN[3]) );
  INVX2M U58 ( .A(Stored_Frame1[2]), .Y(n121) );
  INVX2M U59 ( .A(Stored_Frame1[6]), .Y(n118) );
  INVX2M U60 ( .A(Stored_Frame1[0]), .Y(n38) );
  INVX2M U61 ( .A(Stored_Frame1[4]), .Y(n120) );
  OAI21X2M U62 ( .A0(n93), .A1(n19), .B0(n51), .Y(Addr[0]) );
  NOR2X4M U63 ( .A(n93), .B(n16), .Y(Addr[3]) );
  OAI222X1M U64 ( .A0(n52), .A1(n18), .B0(n51), .B1(n36), .C0(n23), .C1(n74), 
        .Y(Wr_D[1]) );
  OAI222X1M U65 ( .A0(n52), .A1(n19), .B0(n51), .B1(n37), .C0(n24), .C1(n74), 
        .Y(Wr_D[0]) );
  OAI222X1M U66 ( .A0(n52), .A1(n17), .B0(n51), .B1(n35), .C0(n21), .C1(n74), 
        .Y(Wr_D[2]) );
  OAI222X1M U67 ( .A0(n52), .A1(n16), .B0(n51), .B1(n34), .C0(n20), .C1(n74), 
        .Y(Wr_D[3]) );
  OAI222X1M U68 ( .A0(n52), .A1(n15), .B0(n51), .B1(n33), .C0(n11), .C1(n74), 
        .Y(Wr_D[4]) );
  OAI222X1M U69 ( .A0(n52), .A1(n14), .B0(n51), .B1(n32), .C0(n10), .C1(n74), 
        .Y(Wr_D[5]) );
  OAI222X1M U70 ( .A0(n52), .A1(n13), .B0(n51), .B1(n31), .C0(n9), .C1(n74), 
        .Y(Wr_D[6]) );
  OAI222X1M U71 ( .A0(n52), .A1(n12), .B0(n51), .B1(n30), .C0(n8), .C1(n74), 
        .Y(Wr_D[7]) );
  NOR4X1M U72 ( .A(n119), .B(n122), .C(Stored_Frame1[2]), .D(Stored_Frame1[6]), 
        .Y(n57) );
  NAND4X2M U73 ( .A(current_state[1]), .B(n123), .C(n46), .D(n41), .Y(n74) );
  NAND4X2M U74 ( .A(n57), .B(n60), .C(Stored_Frame1[4]), .D(Stored_Frame1[0]), 
        .Y(n61) );
  NAND3X2M U75 ( .A(current_state[0]), .B(n76), .C(current_state[1]), .Y(n77)
         );
  INVX2M U76 ( .A(current_state[1]), .Y(n45) );
  OAI2BB1X2M U77 ( .A0N(ALU_OUT[8]), .A1N(n78), .B0(n87), .Y(WR_DATA[0]) );
  AOI22X1M U78 ( .A0(ALU_OUT[0]), .A1(n7), .B0(Rd_D[0]), .B1(n80), .Y(n87) );
  OAI2BB1X2M U79 ( .A0N(ALU_OUT[9]), .A1N(n78), .B0(n86), .Y(WR_DATA[1]) );
  AOI22X1M U80 ( .A0(ALU_OUT[1]), .A1(n7), .B0(Rd_D[1]), .B1(n80), .Y(n86) );
  OAI2BB1X2M U81 ( .A0N(ALU_OUT[10]), .A1N(n78), .B0(n85), .Y(WR_DATA[2]) );
  AOI22X1M U82 ( .A0(ALU_OUT[2]), .A1(n7), .B0(Rd_D[2]), .B1(n80), .Y(n85) );
  OAI2BB1X2M U83 ( .A0N(ALU_OUT[11]), .A1N(n78), .B0(n84), .Y(WR_DATA[3]) );
  AOI22X1M U84 ( .A0(ALU_OUT[3]), .A1(n7), .B0(Rd_D[3]), .B1(n80), .Y(n84) );
  OAI2BB1X2M U85 ( .A0N(ALU_OUT[12]), .A1N(n78), .B0(n83), .Y(WR_DATA[4]) );
  AOI22X1M U86 ( .A0(ALU_OUT[4]), .A1(n7), .B0(Rd_D[4]), .B1(n80), .Y(n83) );
  OAI2BB1X2M U87 ( .A0N(ALU_OUT[13]), .A1N(n78), .B0(n82), .Y(WR_DATA[5]) );
  AOI22X1M U88 ( .A0(ALU_OUT[5]), .A1(n7), .B0(Rd_D[5]), .B1(n80), .Y(n82) );
  OAI2BB1X2M U89 ( .A0N(ALU_OUT[14]), .A1N(n78), .B0(n81), .Y(WR_DATA[6]) );
  AOI22X1M U90 ( .A0(ALU_OUT[6]), .A1(n7), .B0(Rd_D[6]), .B1(n80), .Y(n81) );
  OAI2BB1X2M U91 ( .A0N(ALU_OUT[15]), .A1N(n78), .B0(n79), .Y(WR_DATA[7]) );
  AOI22X1M U92 ( .A0(ALU_OUT[7]), .A1(n7), .B0(Rd_D[7]), .B1(n80), .Y(n79) );
  INVX2M U93 ( .A(current_state[3]), .Y(n41) );
  INVX2M U94 ( .A(Sync_Frame[1]), .Y(n23) );
  INVX2M U95 ( .A(Sync_Frame[2]), .Y(n21) );
  INVX2M U96 ( .A(Sync_Frame[3]), .Y(n20) );
  INVX2M U97 ( .A(Sync_Frame[0]), .Y(n24) );
  INVX2M U98 ( .A(Stored_Frame1[1]), .Y(n122) );
  INVX2M U99 ( .A(Stored_Frame1[5]), .Y(n119) );
  NOR2X2M U100 ( .A(n93), .B(n18), .Y(Addr[1]) );
  AOI222X1M U101 ( .A0(Rd_D_Valid), .A1(Rd_En), .B0(n44), .B1(n61), .C0(
        enable_pulse), .C1(n43), .Y(n65) );
  NOR2X2M U102 ( .A(current_state[3]), .B(current_state[2]), .Y(n73) );
  AOI211X2M U103 ( .A0(n68), .A1(n69), .B0(n20), .C0(n70), .Y(n67) );
  NAND4X2M U104 ( .A(Sync_Frame[5]), .B(Sync_Frame[1]), .C(n21), .D(n9), .Y(
        n68) );
  NAND4X2M U105 ( .A(Sync_Frame[6]), .B(Sync_Frame[2]), .C(n23), .D(n10), .Y(
        n69) );
  NOR4X1M U106 ( .A(n45), .B(n123), .C(current_state[2]), .D(current_state[3]), 
        .Y(n59) );
  XNOR2X2M U107 ( .A(Sync_Frame[4]), .B(Sync_Frame[0]), .Y(n66) );
  OAI22X1M U108 ( .A0(n27), .A1(n23), .B0(n3), .B1(n18), .Y(n115) );
  OAI22X1M U109 ( .A0(n27), .A1(n21), .B0(n3), .B1(n17), .Y(n114) );
  OAI22X1M U110 ( .A0(n27), .A1(n20), .B0(n3), .B1(n16), .Y(n113) );
  OAI22X1M U111 ( .A0(n27), .A1(n24), .B0(n3), .B1(n19), .Y(n116) );
  OAI22X1M U112 ( .A0(n70), .A1(n20), .B0(n29), .B1(n26), .Y(n106) );
  OAI22X1M U113 ( .A0(n70), .A1(n8), .B0(n29), .B1(n22), .Y(n102) );
  OAI22X1M U114 ( .A0(n24), .A1(n25), .B0(n4), .B1(n37), .Y(n94) );
  OAI22X1M U115 ( .A0(n23), .A1(n25), .B0(n4), .B1(n36), .Y(n95) );
  OAI22X1M U116 ( .A0(n21), .A1(n25), .B0(n4), .B1(n35), .Y(n96) );
  OAI22X1M U117 ( .A0(n20), .A1(n25), .B0(n4), .B1(n34), .Y(n97) );
  OAI22X1M U118 ( .A0(n11), .A1(n25), .B0(n4), .B1(n33), .Y(n98) );
  OAI22X1M U119 ( .A0(n10), .A1(n25), .B0(n4), .B1(n32), .Y(n99) );
  OAI22X1M U120 ( .A0(n9), .A1(n25), .B0(n4), .B1(n31), .Y(n100) );
  OAI22X1M U121 ( .A0(n8), .A1(n25), .B0(n4), .B1(n30), .Y(n101) );
  OAI22X1M U122 ( .A0(n27), .A1(n11), .B0(n3), .B1(n15), .Y(n112) );
  OAI22X1M U123 ( .A0(n27), .A1(n10), .B0(n3), .B1(n14), .Y(n111) );
  OAI22X1M U124 ( .A0(n27), .A1(n9), .B0(n3), .B1(n13), .Y(n110) );
  OAI22X1M U125 ( .A0(n27), .A1(n8), .B0(n3), .B1(n12), .Y(n109) );
  OAI2B11X2M U126 ( .A1N(OUT_Valid), .A0(n47), .B0(n55), .C0(n56), .Y(
        next_state[1]) );
  AOI31X2M U127 ( .A0(n57), .A1(n3), .A2(n58), .B0(n59), .Y(n56) );
  AND3X2M U128 ( .A(n60), .B(n120), .C(n38), .Y(n58) );
  OAI211X2M U129 ( .A0(OUT_Valid), .A1(n47), .B0(n48), .C0(n49), .Y(
        next_state[3]) );
  AOI22X1M U130 ( .A0(enable_pulse), .A1(n43), .B0(n3), .B1(n39), .Y(n49) );
  NAND4X2M U131 ( .A(n62), .B(n63), .C(n64), .D(n65), .Y(next_state[0]) );
  OAI21BX1M U132 ( .A0(n28), .A1(n61), .B0N(n71), .Y(n62) );
  OAI2B1X2M U133 ( .A1N(n52), .A0(n59), .B0(n28), .Y(n63) );
  AOI31X2M U134 ( .A0(n66), .A1(Sync_Frame[7]), .A2(n67), .B0(ALU_En), .Y(n64)
         );
  INVX2M U135 ( .A(enable_pulse), .Y(n28) );
  INVX2M U136 ( .A(Sync_Frame[5]), .Y(n10) );
  INVX2M U137 ( .A(Sync_Frame[6]), .Y(n9) );
  INVX2M U138 ( .A(Sync_Frame[4]), .Y(n11) );
  INVX2M U139 ( .A(Sync_Frame[7]), .Y(n8) );
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


module Integer_ClkDiv_ratio_Width8 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N0, New_clk, Flag, N18, N19, N20, N21, N22, N23, N24, N39, N40, N41,
         N42, N43, N44, N45, n8, n20, n21, n1, n2, n3, n4, n5, n6, n7, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53;
  wire   [6:0] Half_Div;
  wire   [6:0] Count;

  Integer_ClkDiv_ratio_Width8_DW01_inc_0 add_73 ( .A(Count), .SUM({N24, N23, 
        N22, N21, N20, N19, N18}) );
  DFFSX1M New_clk_reg ( .D(n21), .CK(i_ref_clk), .SN(i_rst_n), .Q(New_clk), 
        .QN(n8) );
  DFFRX1M Flag_reg ( .D(n20), .CK(i_ref_clk), .RN(i_rst_n), .Q(Flag) );
  DFFRX1M \Count_reg[6]  ( .D(N45), .CK(i_ref_clk), .RN(i_rst_n), .Q(Count[6]), 
        .QN(n32) );
  DFFRX1M \Count_reg[5]  ( .D(N44), .CK(i_ref_clk), .RN(i_rst_n), .Q(Count[5]), 
        .QN(n31) );
  DFFRX1M \Count_reg[4]  ( .D(N43), .CK(i_ref_clk), .RN(i_rst_n), .Q(Count[4]), 
        .QN(n33) );
  DFFRX1M \Count_reg[3]  ( .D(N42), .CK(i_ref_clk), .RN(i_rst_n), .Q(Count[3]), 
        .QN(n47) );
  DFFRX1M \Count_reg[2]  ( .D(N41), .CK(i_ref_clk), .RN(i_rst_n), .Q(Count[2])
         );
  DFFRX1M \Count_reg[1]  ( .D(N40), .CK(i_ref_clk), .RN(i_rst_n), .Q(Count[1]), 
        .QN(n43) );
  DFFRX1M \Count_reg[0]  ( .D(N39), .CK(i_ref_clk), .RN(i_rst_n), .Q(Count[0]), 
        .QN(n41) );
  AOI21BX2M U3 ( .A0(n2), .A1(i_div_ratio[3]), .B0N(n3), .Y(n1) );
  MX2X2M U4 ( .A(i_ref_clk), .B(New_clk), .S0(N0), .Y(o_div_clk) );
  OR2X2M U5 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n2) );
  INVX2M U6 ( .A(i_div_ratio[5]), .Y(n7) );
  CLKINVX1M U7 ( .A(i_div_ratio[1]), .Y(Half_Div[0]) );
  OAI2BB1X1M U8 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n2), .Y(
        Half_Div[1]) );
  OR2X1M U9 ( .A(n2), .B(i_div_ratio[3]), .Y(n3) );
  NOR2X1M U10 ( .A(n3), .B(i_div_ratio[4]), .Y(n4) );
  AO21XLM U11 ( .A0(n3), .A1(i_div_ratio[4]), .B0(n4), .Y(Half_Div[3]) );
  CLKNAND2X2M U12 ( .A(n4), .B(n7), .Y(n5) );
  OAI21X1M U13 ( .A0(n4), .A1(n7), .B0(n5), .Y(Half_Div[4]) );
  XNOR2X1M U14 ( .A(i_div_ratio[6]), .B(n5), .Y(Half_Div[5]) );
  NOR2X1M U15 ( .A(i_div_ratio[6]), .B(n5), .Y(n6) );
  CLKXOR2X2M U16 ( .A(i_div_ratio[7]), .B(n6), .Y(Half_Div[6]) );
  MXI2X1M U17 ( .A(n8), .B(n9), .S0(n10), .Y(n21) );
  NOR2X1M U18 ( .A(n8), .B(n11), .Y(n9) );
  NOR2X1M U19 ( .A(n11), .B(n12), .Y(n20) );
  MXI2X1M U20 ( .A(n13), .B(n14), .S0(Flag), .Y(n12) );
  NOR2X1M U21 ( .A(n13), .B(n15), .Y(n14) );
  CLKINVX1M U22 ( .A(n16), .Y(n13) );
  NOR2BX1M U23 ( .AN(N24), .B(n10), .Y(N45) );
  NOR2BX1M U24 ( .AN(N23), .B(n10), .Y(N44) );
  NOR2BX1M U25 ( .AN(N22), .B(n10), .Y(N43) );
  NOR2BX1M U26 ( .AN(N21), .B(n10), .Y(N42) );
  NOR2BX1M U27 ( .AN(N20), .B(n10), .Y(N41) );
  NOR2BX1M U28 ( .AN(N19), .B(n10), .Y(N40) );
  NOR2BX1M U29 ( .AN(N18), .B(n10), .Y(N39) );
  OAI211X1M U30 ( .A0(i_div_ratio[0]), .A1(n17), .B0(n16), .C0(n18), .Y(n10)
         );
  NOR2X1M U31 ( .A(n15), .B(n11), .Y(n18) );
  CLKNAND2X2M U32 ( .A(n19), .B(i_div_ratio[0]), .Y(n16) );
  MXI2X1M U33 ( .A(n17), .B(n22), .S0(Flag), .Y(n19) );
  NAND4X1M U34 ( .A(n23), .B(n24), .C(n25), .D(n26), .Y(n22) );
  NOR4X1M U35 ( .A(n27), .B(n28), .C(n29), .D(n30), .Y(n26) );
  CLKXOR2X2M U36 ( .A(i_div_ratio[4]), .B(Count[3]), .Y(n30) );
  CLKXOR2X2M U37 ( .A(i_div_ratio[3]), .B(Count[2]), .Y(n29) );
  CLKXOR2X2M U38 ( .A(i_div_ratio[2]), .B(Count[1]), .Y(n28) );
  CLKXOR2X2M U39 ( .A(i_div_ratio[1]), .B(Count[0]), .Y(n27) );
  CLKXOR2X2M U40 ( .A(n31), .B(i_div_ratio[6]), .Y(n25) );
  CLKXOR2X2M U41 ( .A(n32), .B(i_div_ratio[7]), .Y(n24) );
  CLKXOR2X2M U42 ( .A(n33), .B(i_div_ratio[5]), .Y(n23) );
  NAND4BX1M U43 ( .AN(n15), .B(n34), .C(n35), .D(n36), .Y(n17) );
  NOR4X1M U44 ( .A(n37), .B(n38), .C(n39), .D(n40), .Y(n36) );
  AOI21X1M U45 ( .A0(Half_Div[0]), .A1(n41), .B0(n42), .Y(n35) );
  CLKNAND2X2M U46 ( .A(Half_Div[1]), .B(n43), .Y(n34) );
  OAI32X1M U47 ( .A0(n44), .A1(n39), .A2(n40), .B0(Half_Div[6]), .B1(n32), .Y(
        n15) );
  NOR2BX1M U48 ( .AN(Half_Div[5]), .B(Count[5]), .Y(n40) );
  NOR2BX1M U49 ( .AN(Half_Div[6]), .B(Count[6]), .Y(n39) );
  CLKINVX1M U50 ( .A(n45), .Y(n44) );
  OAI222X1M U51 ( .A0(n31), .A1(Half_Div[5]), .B0(n46), .B1(n37), .C0(n33), 
        .C1(Half_Div[4]), .Y(n45) );
  AND2X1M U52 ( .A(Half_Div[4]), .B(n33), .Y(n37) );
  OA22X1M U53 ( .A0(Half_Div[3]), .A1(n47), .B0(n42), .B1(n48), .Y(n46) );
  AOI32X1M U54 ( .A0(n49), .A1(n50), .A2(n51), .B0(Count[2]), .B1(n1), .Y(n48)
         );
  OAI21X1M U55 ( .A0(Half_Div[0]), .A1(n41), .B0(n43), .Y(n51) );
  CLKINVX1M U56 ( .A(n38), .Y(n50) );
  NOR2X1M U57 ( .A(n1), .B(Count[2]), .Y(n38) );
  OAI31X1M U58 ( .A0(n43), .A1(Half_Div[0]), .A2(n41), .B0(Half_Div[1]), .Y(
        n49) );
  NOR2BX1M U59 ( .AN(Half_Div[3]), .B(Count[3]), .Y(n42) );
  CLKINVX1M U60 ( .A(n11), .Y(N0) );
  OAI21X1M U61 ( .A0(n52), .A1(n53), .B0(i_clk_en), .Y(n11) );
  OR3X1M U62 ( .A(i_div_ratio[2]), .B(i_div_ratio[3]), .C(i_div_ratio[1]), .Y(
        n53) );
  OR4X1M U63 ( .A(i_div_ratio[4]), .B(i_div_ratio[5]), .C(i_div_ratio[6]), .D(
        i_div_ratio[7]), .Y(n52) );
endmodule


module Integer_ClkDiv_ratio_Width4 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk );
  input [3:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N0, New_clk, N31, N32, N33, n7, n8, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n1, n2, n3, n4;
  wire   [2:0] Count;

  DFFSX1M New_clk_reg ( .D(n29), .CK(i_ref_clk), .SN(i_rst_n), .Q(New_clk), 
        .QN(n8) );
  DFFRX1M Flag_reg ( .D(n28), .CK(i_ref_clk), .RN(i_rst_n), .QN(n7) );
  DFFRX1M \Count_reg[1]  ( .D(N32), .CK(i_ref_clk), .RN(i_rst_n), .Q(Count[1]), 
        .QN(n3) );
  DFFRX1M \Count_reg[0]  ( .D(N31), .CK(i_ref_clk), .RN(i_rst_n), .Q(Count[0]), 
        .QN(n2) );
  DFFRX1M \Count_reg[2]  ( .D(N33), .CK(i_ref_clk), .RN(i_rst_n), .Q(Count[2]), 
        .QN(n4) );
  OAI32X1M U3 ( .A0(n24), .A1(n23), .A2(n25), .B0(n26), .B1(n4), .Y(n13) );
  MX2X2M U4 ( .A(i_ref_clk), .B(New_clk), .S0(N0), .Y(o_div_clk) );
  OAI2B11X2M U5 ( .A1N(n19), .A0(i_div_ratio[0]), .B0(n15), .C0(n20), .Y(n16)
         );
  NOR2X2M U6 ( .A(n13), .B(n14), .Y(n20) );
  AOI21BX2M U7 ( .A0(i_div_ratio[1]), .A1(i_div_ratio[2]), .B0N(n27), .Y(n22)
         );
  INVX2M U8 ( .A(n14), .Y(N0) );
  OR2X2M U9 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n27) );
  AND2X2M U10 ( .A(i_div_ratio[3]), .B(n27), .Y(n26) );
  NOR2X2M U11 ( .A(Count[1]), .B(n22), .Y(n24) );
  AOI22X1M U12 ( .A0(Count[1]), .A1(n22), .B0(Count[0]), .B1(i_div_ratio[1]), 
        .Y(n25) );
  AOI211X2M U13 ( .A0(n1), .A1(n2), .B0(n13), .C0(n21), .Y(n19) );
  INVX2M U14 ( .A(i_div_ratio[1]), .Y(n1) );
  OAI21BX1M U15 ( .A0(n22), .A1(Count[1]), .B0N(n23), .Y(n21) );
  OAI32X1M U16 ( .A0(n16), .A1(n3), .A2(n2), .B0(n4), .B1(n16), .Y(N33) );
  OAI21X2M U17 ( .A0(n8), .A1(n16), .B0(n17), .Y(n29) );
  OAI21X2M U18 ( .A0(n14), .A1(n8), .B0(n16), .Y(n17) );
  NAND3X2M U19 ( .A(n19), .B(n7), .C(i_div_ratio[0]), .Y(n15) );
  NOR2X2M U20 ( .A(n18), .B(n16), .Y(N32) );
  CLKXOR2X2M U21 ( .A(n2), .B(Count[1]), .Y(n18) );
  NOR2X2M U22 ( .A(Count[0]), .B(n16), .Y(N31) );
  NOR2BX2M U23 ( .AN(n26), .B(Count[2]), .Y(n23) );
  OAI32X1M U24 ( .A0(n7), .A1(n13), .A2(n14), .B0(n15), .B1(n14), .Y(n28) );
  OAI21X2M U25 ( .A0(i_div_ratio[3]), .A1(n27), .B0(i_clk_en), .Y(n14) );
endmodule


module RX_CLKDIV_MUX_Width4 ( Input, MUX_Out );
  input [5:0] Input;
  output [3:0] MUX_Out;
  wire   n5, n6, n7, n8, n9, n1, n2, n3, n4;

  NAND4BX1M U3 ( .AN(Input[4]), .B(Input[3]), .C(n2), .D(n1), .Y(n6) );
  NAND4BX1M U4 ( .AN(Input[3]), .B(Input[4]), .C(n2), .D(n1), .Y(n7) );
  NOR3X2M U5 ( .A(n7), .B(Input[1]), .C(Input[0]), .Y(MUX_Out[1]) );
  OAI211X2M U6 ( .A0(n8), .A1(n9), .B0(n4), .C0(n3), .Y(MUX_Out[0]) );
  NAND2X2M U7 ( .A(n7), .B(n6), .Y(n9) );
  NOR4X1M U8 ( .A(Input[5]), .B(Input[4]), .C(Input[3]), .D(n2), .Y(n8) );
  NOR4X1M U9 ( .A(n5), .B(Input[3]), .C(Input[5]), .D(Input[4]), .Y(MUX_Out[3]) );
  NAND3X2M U10 ( .A(n4), .B(n3), .C(Input[2]), .Y(n5) );
  NOR3X2M U11 ( .A(n6), .B(Input[1]), .C(Input[0]), .Y(MUX_Out[2]) );
  INVX2M U12 ( .A(Input[2]), .Y(n2) );
  INVX2M U13 ( .A(Input[0]), .Y(n4) );
  INVX2M U14 ( .A(Input[1]), .Y(n3) );
  INVX2M U15 ( .A(Input[5]), .Y(n1) );
endmodule


module Data_Sampling ( CLK, RST, En, Prescale, RX_In, Edge_Count, Sampeld_Bit
 );
  input [5:0] Prescale;
  input [5:0] Edge_Count;
  input CLK, RST, En, RX_In;
  output Sampeld_Bit;
  wire   N25, n19, n20, n21, \add_28/carry[4] , \add_28/carry[3] ,
         \add_28/carry[2] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37;
  wire   [4:0] Middle_Sample_Plus;
  wire   [4:0] Middle_Sample_minus;
  wire   [2:0] Samples;

  DFFRQX2M \Samples_reg[2]  ( .D(n21), .CK(CLK), .RN(RST), .Q(Samples[2]) );
  DFFRQX2M \Samples_reg[1]  ( .D(n20), .CK(CLK), .RN(RST), .Q(Samples[1]) );
  DFFRQX2M \Samples_reg[0]  ( .D(n19), .CK(CLK), .RN(RST), .Q(Samples[0]) );
  DFFRQX2M Sampeld_Bit_reg ( .D(N25), .CK(CLK), .RN(RST), .Q(Sampeld_Bit) );
  INVX2M U3 ( .A(Prescale[3]), .Y(n4) );
  ADDHX1M U4 ( .A(Prescale[3]), .B(\add_28/carry[2] ), .CO(\add_28/carry[3] ), 
        .S(Middle_Sample_Plus[2]) );
  ADDHX1M U5 ( .A(Prescale[2]), .B(Prescale[1]), .CO(\add_28/carry[2] ), .S(
        Middle_Sample_Plus[1]) );
  ADDHX1M U6 ( .A(Prescale[4]), .B(\add_28/carry[3] ), .CO(\add_28/carry[4] ), 
        .S(Middle_Sample_Plus[3]) );
  CLKXOR2X2M U7 ( .A(\add_28/carry[4] ), .B(Prescale[5]), .Y(
        Middle_Sample_Plus[4]) );
  CLKINVX1M U8 ( .A(Prescale[1]), .Y(Middle_Sample_minus[0]) );
  NOR2X1M U9 ( .A(Prescale[2]), .B(Prescale[1]), .Y(n1) );
  AO21XLM U10 ( .A0(Prescale[1]), .A1(Prescale[2]), .B0(n1), .Y(
        Middle_Sample_minus[1]) );
  CLKNAND2X2M U11 ( .A(n1), .B(n4), .Y(n2) );
  OAI21X1M U12 ( .A0(n1), .A1(n4), .B0(n2), .Y(Middle_Sample_minus[2]) );
  XNOR2X1M U13 ( .A(Prescale[4]), .B(n2), .Y(Middle_Sample_minus[3]) );
  NOR2X1M U14 ( .A(Prescale[4]), .B(n2), .Y(n3) );
  CLKXOR2X2M U15 ( .A(Prescale[5]), .B(n3), .Y(Middle_Sample_minus[4]) );
  MXI2X1M U16 ( .A(n5), .B(n6), .S0(n7), .Y(n21) );
  NOR2X1M U17 ( .A(n8), .B(n9), .Y(n7) );
  NAND4X1M U18 ( .A(n10), .B(n11), .C(n12), .D(n13), .Y(n9) );
  CLKXOR2X2M U19 ( .A(n14), .B(Middle_Sample_Plus[1]), .Y(n13) );
  XNOR2X1M U20 ( .A(Edge_Count[2]), .B(Middle_Sample_Plus[2]), .Y(n12) );
  XNOR2X1M U21 ( .A(Edge_Count[3]), .B(Middle_Sample_Plus[3]), .Y(n11) );
  CLKXOR2X2M U22 ( .A(n15), .B(Middle_Sample_Plus[4]), .Y(n10) );
  NAND4BX1M U23 ( .AN(Edge_Count[5]), .B(n16), .C(n17), .D(n18), .Y(n8) );
  XNOR2X1M U24 ( .A(Edge_Count[0]), .B(Middle_Sample_minus[0]), .Y(n16) );
  CLKNAND2X2M U25 ( .A(Samples[2]), .B(En), .Y(n5) );
  MXI2X1M U26 ( .A(n6), .B(n22), .S0(n17), .Y(n20) );
  NAND4X1M U27 ( .A(n23), .B(n24), .C(n25), .D(n26), .Y(n17) );
  NOR4BX1M U28 ( .AN(n18), .B(Edge_Count[5]), .C(n27), .D(n28), .Y(n26) );
  CLKXOR2X2M U29 ( .A(Prescale[2]), .B(Edge_Count[1]), .Y(n28) );
  CLKXOR2X2M U30 ( .A(Prescale[1]), .B(Edge_Count[0]), .Y(n27) );
  XNOR2X1M U31 ( .A(Edge_Count[3]), .B(Prescale[4]), .Y(n25) );
  CLKXOR2X2M U32 ( .A(n15), .B(Prescale[5]), .Y(n24) );
  CLKINVX1M U33 ( .A(Edge_Count[4]), .Y(n15) );
  XNOR2X1M U34 ( .A(Edge_Count[2]), .B(Prescale[3]), .Y(n23) );
  CLKNAND2X2M U35 ( .A(Samples[1]), .B(En), .Y(n22) );
  MXI2X1M U36 ( .A(n6), .B(n29), .S0(n18), .Y(n19) );
  NAND4X1M U37 ( .A(n30), .B(n31), .C(n32), .D(n33), .Y(n18) );
  NOR3X1M U38 ( .A(n34), .B(Edge_Count[5]), .C(n35), .Y(n33) );
  CLKXOR2X2M U39 ( .A(Middle_Sample_minus[0]), .B(Edge_Count[0]), .Y(n35) );
  CLKXOR2X2M U40 ( .A(Middle_Sample_minus[4]), .B(Edge_Count[4]), .Y(n34) );
  XNOR2X1M U41 ( .A(Edge_Count[2]), .B(Middle_Sample_minus[2]), .Y(n32) );
  XNOR2X1M U42 ( .A(Edge_Count[3]), .B(Middle_Sample_minus[3]), .Y(n31) );
  CLKXOR2X2M U43 ( .A(n14), .B(Middle_Sample_minus[1]), .Y(n30) );
  CLKINVX1M U44 ( .A(Edge_Count[1]), .Y(n14) );
  CLKNAND2X2M U45 ( .A(Samples[0]), .B(En), .Y(n29) );
  CLKNAND2X2M U46 ( .A(RX_In), .B(En), .Y(n6) );
  AOI21BX1M U47 ( .A0(n36), .A1(n37), .B0N(En), .Y(N25) );
  OAI21X1M U48 ( .A0(Samples[0]), .A1(Samples[1]), .B0(Samples[2]), .Y(n37) );
  CLKNAND2X2M U49 ( .A(Samples[0]), .B(Samples[1]), .Y(n36) );
endmodule


module Deserializer_Data_Width8 ( CLK, RST, En, Prescale, S_In, edge_count, 
        P_out, Deser_Done );
  input [5:0] Prescale;
  input [5:0] edge_count;
  output [7:0] P_out;
  input CLK, RST, En, S_In;
  output Deser_Done;
  wire   N4, N5, N6, N7, N8, N9, N10, n3, n8, n9, n10, n11, n12, n13, n14, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n1, n2, n4, n5, n6, n7, n15, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47;
  wire   [3:0] N;

  DFFRQX2M \N_reg[2]  ( .D(n44), .CK(CLK), .RN(RST), .Q(N[2]) );
  DFFRQX2M \N_reg[1]  ( .D(n33), .CK(CLK), .RN(RST), .Q(N[1]) );
  DFFRX1M \P_out_reg[5]  ( .D(n29), .CK(CLK), .RN(RST), .Q(P_out[5]), .QN(n10)
         );
  DFFRX1M \P_out_reg[1]  ( .D(n25), .CK(CLK), .RN(RST), .Q(P_out[1]), .QN(n14)
         );
  DFFRX1M \P_out_reg[4]  ( .D(n28), .CK(CLK), .RN(RST), .Q(P_out[4]), .QN(n11)
         );
  DFFRQX2M \P_out_reg[0]  ( .D(n24), .CK(CLK), .RN(RST), .Q(P_out[0]) );
  DFFRX1M \P_out_reg[3]  ( .D(n27), .CK(CLK), .RN(RST), .Q(P_out[3]), .QN(n12)
         );
  DFFRX1M \P_out_reg[2]  ( .D(n26), .CK(CLK), .RN(RST), .Q(P_out[2]), .QN(n13)
         );
  DFFRX1M \P_out_reg[6]  ( .D(n30), .CK(CLK), .RN(RST), .Q(P_out[6]), .QN(n9)
         );
  DFFRX1M \P_out_reg[7]  ( .D(n31), .CK(CLK), .RN(RST), .Q(P_out[7]), .QN(n8)
         );
  DFFRQX2M \N_reg[0]  ( .D(n34), .CK(CLK), .RN(RST), .Q(N[0]) );
  DFFRX1M \N_reg[3]  ( .D(n32), .CK(CLK), .RN(RST), .QN(n3) );
  BUFX2M U3 ( .A(n16), .Y(n1) );
  NOR2X2M U4 ( .A(n45), .B(n1), .Y(n19) );
  NAND2X2M U5 ( .A(En), .B(n1), .Y(n23) );
  INVX2M U6 ( .A(n1), .Y(n43) );
  OAI21X2M U7 ( .A0(N[1]), .A1(n1), .B0(n22), .Y(n20) );
  OAI22X1M U8 ( .A0(n45), .A1(n23), .B0(N[0]), .B1(n1), .Y(n34) );
  OAI22X1M U9 ( .A0(n43), .A1(n14), .B0(n1), .B1(n13), .Y(n25) );
  OAI22X1M U10 ( .A0(n43), .A1(n13), .B0(n1), .B1(n12), .Y(n26) );
  OAI22X1M U11 ( .A0(n43), .A1(n12), .B0(n1), .B1(n11), .Y(n27) );
  OAI22X1M U12 ( .A0(n43), .A1(n11), .B0(n1), .B1(n10), .Y(n28) );
  OAI22X1M U13 ( .A0(n43), .A1(n10), .B0(n1), .B1(n9), .Y(n29) );
  OAI22X1M U14 ( .A0(n43), .A1(n9), .B0(n1), .B1(n8), .Y(n30) );
  NAND2X2M U15 ( .A(N10), .B(En), .Y(n16) );
  OAI2BB2X1M U16 ( .B0(n22), .B1(n46), .A0N(n46), .A1N(n19), .Y(n33) );
  INVX2M U17 ( .A(N[1]), .Y(n46) );
  OAI21X2M U18 ( .A0(n17), .A1(n3), .B0(n18), .Y(n32) );
  NAND4X2M U19 ( .A(N[2]), .B(N[1]), .C(n19), .D(n3), .Y(n18) );
  AOI21X2M U20 ( .A0(n43), .A1(n47), .B0(n20), .Y(n17) );
  OAI2BB2X1M U21 ( .B0(n43), .B1(n8), .A0N(S_In), .A1N(n43), .Y(n31) );
  OA21X2M U22 ( .A0(N[0]), .A1(n1), .B0(n23), .Y(n22) );
  INVX2M U23 ( .A(n21), .Y(n44) );
  AOI32X1M U24 ( .A0(N[1]), .A1(n47), .A2(n19), .B0(n20), .B1(N[2]), .Y(n21)
         );
  NOR4X1M U25 ( .A(N[2]), .B(N[1]), .C(N[0]), .D(n3), .Y(Deser_Done) );
  OAI2BB2X1M U26 ( .B0(n1), .B1(n14), .A0N(P_out[0]), .A1N(n1), .Y(n24) );
  INVX2M U27 ( .A(N[0]), .Y(n45) );
  INVX2M U28 ( .A(N[2]), .Y(n47) );
  OR2X2M U29 ( .A(Prescale[1]), .B(Prescale[0]), .Y(n2) );
  INVX2M U30 ( .A(Prescale[3]), .Y(n7) );
  CLKINVX1M U31 ( .A(Prescale[0]), .Y(N4) );
  OAI2BB1X1M U32 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n2), .Y(N5) );
  NOR2X1M U33 ( .A(n2), .B(Prescale[2]), .Y(n4) );
  AO21XLM U34 ( .A0(n2), .A1(Prescale[2]), .B0(n4), .Y(N6) );
  CLKNAND2X2M U35 ( .A(n4), .B(n7), .Y(n5) );
  OAI21X1M U36 ( .A0(n4), .A1(n7), .B0(n5), .Y(N7) );
  XNOR2X1M U37 ( .A(Prescale[4]), .B(n5), .Y(N8) );
  NOR2X1M U38 ( .A(Prescale[4]), .B(n5), .Y(n6) );
  CLKXOR2X2M U39 ( .A(Prescale[5]), .B(n6), .Y(N9) );
  NOR2BX1M U40 ( .AN(edge_count[0]), .B(N4), .Y(n15) );
  OAI2B2X1M U41 ( .A1N(N5), .A0(n15), .B0(edge_count[1]), .B1(n15), .Y(n38) );
  NOR2BX1M U42 ( .AN(N4), .B(edge_count[0]), .Y(n35) );
  OAI2B2X1M U43 ( .A1N(edge_count[1]), .A0(n35), .B0(N5), .B1(n35), .Y(n37) );
  XNOR2X1M U44 ( .A(N9), .B(edge_count[5]), .Y(n36) );
  NAND3X1M U45 ( .A(n38), .B(n37), .C(n36), .Y(n42) );
  CLKXOR2X2M U46 ( .A(N8), .B(edge_count[4]), .Y(n41) );
  CLKXOR2X2M U47 ( .A(N6), .B(edge_count[2]), .Y(n40) );
  CLKXOR2X2M U48 ( .A(N7), .B(edge_count[3]), .Y(n39) );
  NOR4X1M U49 ( .A(n42), .B(n41), .C(n40), .D(n39), .Y(N10) );
endmodule


module Edge_Bit_Counter_Data_Width8 ( CLK, RST, En, Prescale, Bit_Count, 
        Edge_Count );
  input [5:0] Prescale;
  output [3:0] Bit_Count;
  output [5:0] Edge_Count;
  input CLK, RST, En;
  wire   N4, N5, N6, N7, N8, N9, N10, N11, N15, N16, N17, N18, N19, N20, N27,
         N28, N29, N30, N31, N32, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, \add_39/carry[5] , \add_39/carry[4] , \add_39/carry[3] ,
         \add_39/carry[2] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n22,
         n23, n24, n25, n26, n27, n28, n29, n30;

  DFFRQX2M \Bit_Count_reg[2]  ( .D(n19), .CK(CLK), .RN(RST), .Q(Bit_Count[2])
         );
  DFFRQX2M \Bit_Count_reg[3]  ( .D(n18), .CK(CLK), .RN(RST), .Q(Bit_Count[3])
         );
  DFFRQX2M \Bit_Count_reg[1]  ( .D(n20), .CK(CLK), .RN(RST), .Q(Bit_Count[1])
         );
  DFFRQX2M \Bit_Count_reg[0]  ( .D(n21), .CK(CLK), .RN(RST), .Q(Bit_Count[0])
         );
  DFFRQX2M \Edge_Count_reg[5]  ( .D(N32), .CK(CLK), .RN(RST), .Q(Edge_Count[5]) );
  DFFRQX2M \Edge_Count_reg[0]  ( .D(N27), .CK(CLK), .RN(RST), .Q(Edge_Count[0]) );
  DFFRQX2M \Edge_Count_reg[4]  ( .D(N31), .CK(CLK), .RN(RST), .Q(Edge_Count[4]) );
  DFFRQX2M \Edge_Count_reg[1]  ( .D(N28), .CK(CLK), .RN(RST), .Q(Edge_Count[1]) );
  DFFRQX2M \Edge_Count_reg[3]  ( .D(N30), .CK(CLK), .RN(RST), .Q(Edge_Count[3]) );
  DFFRQX2M \Edge_Count_reg[2]  ( .D(N29), .CK(CLK), .RN(RST), .Q(Edge_Count[2]) );
  INVX2M U3 ( .A(n17), .Y(n24) );
  INVX2M U4 ( .A(En), .Y(n25) );
  NOR2X2M U5 ( .A(n25), .B(N11), .Y(n17) );
  AOI21X2M U6 ( .A0(n27), .A1(En), .B0(n17), .Y(n16) );
  AND2X2M U7 ( .A(N16), .B(n17), .Y(N28) );
  AND2X2M U8 ( .A(N17), .B(n17), .Y(N29) );
  AND2X2M U9 ( .A(N18), .B(n17), .Y(N30) );
  AND2X2M U10 ( .A(N19), .B(n17), .Y(N31) );
  NOR3X2M U11 ( .A(n28), .B(n27), .C(n29), .Y(n13) );
  OAI32X1M U12 ( .A0(n25), .A1(Bit_Count[0]), .A2(n17), .B0(n27), .B1(n24), 
        .Y(n21) );
  OAI32X1M U13 ( .A0(n14), .A1(Bit_Count[2]), .A2(n28), .B0(n15), .B1(n29), 
        .Y(n19) );
  OA21X2M U14 ( .A0(n25), .A1(Bit_Count[1]), .B0(n16), .Y(n15) );
  OAI22X1M U15 ( .A0(n30), .A1(n24), .B0(n12), .B1(n25), .Y(n18) );
  AOI32X1M U16 ( .A0(n13), .A1(n30), .A2(N11), .B0(Bit_Count[3]), .B1(n26), 
        .Y(n12) );
  INVX2M U17 ( .A(Bit_Count[3]), .Y(n30) );
  INVX2M U18 ( .A(n13), .Y(n26) );
  NAND3X2M U19 ( .A(Bit_Count[0]), .B(n24), .C(En), .Y(n14) );
  OAI22X1M U20 ( .A0(n16), .A1(n28), .B0(Bit_Count[1]), .B1(n14), .Y(n20) );
  AND2X2M U21 ( .A(N20), .B(n17), .Y(N32) );
  AND2X2M U22 ( .A(N15), .B(n17), .Y(N27) );
  INVX2M U23 ( .A(Bit_Count[0]), .Y(n27) );
  INVX2M U24 ( .A(Bit_Count[1]), .Y(n28) );
  ADDHX1M U25 ( .A(Edge_Count[2]), .B(\add_39/carry[2] ), .CO(
        \add_39/carry[3] ), .S(N17) );
  ADDHX1M U26 ( .A(Edge_Count[3]), .B(\add_39/carry[3] ), .CO(
        \add_39/carry[4] ), .S(N18) );
  ADDHX1M U27 ( .A(Edge_Count[1]), .B(Edge_Count[0]), .CO(\add_39/carry[2] ), 
        .S(N16) );
  INVX2M U28 ( .A(Bit_Count[2]), .Y(n29) );
  ADDHX1M U29 ( .A(Edge_Count[4]), .B(\add_39/carry[4] ), .CO(
        \add_39/carry[5] ), .S(N19) );
  OR2X2M U30 ( .A(Prescale[1]), .B(Prescale[0]), .Y(n1) );
  CLKINVX1M U31 ( .A(Prescale[0]), .Y(N4) );
  OAI2BB1X1M U32 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n1), .Y(N5) );
  OR2X1M U33 ( .A(n1), .B(Prescale[2]), .Y(n2) );
  OAI2BB1X1M U34 ( .A0N(n1), .A1N(Prescale[2]), .B0(n2), .Y(N6) );
  OR2X1M U35 ( .A(n2), .B(Prescale[3]), .Y(n3) );
  OAI2BB1X1M U36 ( .A0N(n2), .A1N(Prescale[3]), .B0(n3), .Y(N7) );
  OR2X1M U37 ( .A(n3), .B(Prescale[4]), .Y(n4) );
  OAI2BB1X1M U38 ( .A0N(n3), .A1N(Prescale[4]), .B0(n4), .Y(N8) );
  NOR2X1M U39 ( .A(n4), .B(Prescale[5]), .Y(N10) );
  AO21XLM U40 ( .A0(n4), .A1(Prescale[5]), .B0(N10), .Y(N9) );
  CLKINVX1M U41 ( .A(Edge_Count[0]), .Y(N15) );
  CLKXOR2X2M U42 ( .A(\add_39/carry[5] ), .B(Edge_Count[5]), .Y(N20) );
  NOR2BX1M U43 ( .AN(N4), .B(Edge_Count[0]), .Y(n5) );
  OAI2B2X1M U44 ( .A1N(Edge_Count[1]), .A0(n5), .B0(N5), .B1(n5), .Y(n9) );
  XNOR2X1M U45 ( .A(N9), .B(Edge_Count[5]), .Y(n8) );
  NOR2BX1M U46 ( .AN(Edge_Count[0]), .B(N4), .Y(n6) );
  OAI2B2X1M U47 ( .A1N(N5), .A0(n6), .B0(Edge_Count[1]), .B1(n6), .Y(n7) );
  NAND4BX1M U48 ( .AN(N10), .B(n9), .C(n8), .D(n7), .Y(n23) );
  CLKXOR2X2M U49 ( .A(N8), .B(Edge_Count[4]), .Y(n22) );
  CLKXOR2X2M U50 ( .A(N6), .B(Edge_Count[2]), .Y(n11) );
  CLKXOR2X2M U51 ( .A(N7), .B(Edge_Count[3]), .Y(n10) );
  NOR4X1M U52 ( .A(n23), .B(n22), .C(n11), .D(n10), .Y(N11) );
endmodule


module Parity_Check_Data_Width8 ( CLK, RST, En, Flags_Done, PAR_TYP, R_Data, 
        Deser_Done, Parity_In, par_err );
  input [7:0] R_Data;
  input CLK, RST, En, Flags_Done, PAR_TYP, Deser_Done, Parity_In;
  output par_err;
  wire   Calc_parity, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n1, n2;

  DFFRQX2M Calc_parity_reg ( .D(n12), .CK(CLK), .RN(RST), .Q(Calc_parity) );
  DFFRQX2M par_err_reg ( .D(n11), .CK(CLK), .RN(RST), .Q(par_err) );
  NOR2X2M U3 ( .A(Flags_Done), .B(En), .Y(n5) );
  OAI31X1M U4 ( .A0(n1), .A1(Deser_Done), .A2(n3), .B0(n4), .Y(n11) );
  XNOR2X2M U5 ( .A(Calc_parity), .B(Parity_In), .Y(n3) );
  OAI21X2M U6 ( .A0(n5), .A1(Deser_Done), .B0(par_err), .Y(n4) );
  INVX2M U7 ( .A(En), .Y(n1) );
  XNOR2X2M U8 ( .A(R_Data[3]), .B(R_Data[2]), .Y(n9) );
  OAI2BB2X1M U9 ( .B0(n6), .B1(n2), .A0N(n2), .A1N(Calc_parity), .Y(n12) );
  INVX2M U10 ( .A(Deser_Done), .Y(n2) );
  XOR3XLM U11 ( .A(n7), .B(PAR_TYP), .C(n8), .Y(n6) );
  XOR3XLM U12 ( .A(R_Data[1]), .B(R_Data[0]), .C(n9), .Y(n8) );
  XOR3XLM U13 ( .A(R_Data[5]), .B(R_Data[4]), .C(n10), .Y(n7) );
  CLKXOR2X2M U14 ( .A(R_Data[7]), .B(R_Data[6]), .Y(n10) );
endmodule


module Start_Check ( CLK, RST, En, Start_bit, Str_err );
  input CLK, RST, En, Start_bit;
  output Str_err;
  wire   N4;

  DFFRQX2M Str_err_reg ( .D(N4), .CK(CLK), .RN(RST), .Q(Str_err) );
  AND2X2M U3 ( .A(Start_bit), .B(En), .Y(N4) );
endmodule


module Stop_Check ( CLK, RST, En, Flags_Done, Stop_bit, Stp_err );
  input CLK, RST, En, Flags_Done, Stop_bit;
  output Stp_err;
  wire   n1, n3, n2;

  DFFRX1M Stp_err_reg ( .D(n3), .CK(CLK), .RN(RST), .Q(Stp_err), .QN(n1) );
  OAI32X1M U3 ( .A0(n1), .A1(Flags_Done), .A2(En), .B0(Stop_bit), .B1(n2), .Y(
        n3) );
  INVX2M U4 ( .A(En), .Y(n2) );
endmodule


module RX_FSM_Data_Width8 ( CLK, RST, PAR_EN, Prescale, RX_In, Bit_Count, 
        edge_count, Par_err, Start_err, Stop_err, edge_bit_en, data_samp_en, 
        Deser_en, Par_chk_en, Str_chk_en, Stp_chk_en, Flags_Done, Parity_Error, 
        Stop_Error, Data_Valid );
  input [5:0] Prescale;
  input [3:0] Bit_Count;
  input [5:0] edge_count;
  input CLK, RST, PAR_EN, RX_In, Par_err, Start_err, Stop_err;
  output edge_bit_en, data_samp_en, Deser_en, Par_chk_en, Str_chk_en,
         Stp_chk_en, Flags_Done, Parity_Error, Stop_Error, Data_Valid;
  wire   n53, Parity_Error_c, Stop_Error_c, Data_Valid_c, \add_78/carry[4] ,
         \add_78/carry[3] , \sub_77/carry[5] , \sub_77/carry[4] ,
         \sub_77/carry[3] , n1, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52;
  wire   [5:0] Final_edge;
  wire   [5:0] Flags_edge;
  wire   [5:0] Check_edge;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  assign Flags_edge[0] = Prescale[0];
  assign Check_edge[0] = Prescale[1];

  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(RST), .Q(
        current_state[2]) );
  DFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(RST), .Q(
        current_state[0]) );
  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(RST), .Q(
        current_state[1]) );
  DFFRQX1M Data_Valid_reg ( .D(Data_Valid_c), .CK(CLK), .RN(RST), .Q(
        Data_Valid) );
  DFFRHQX1M Stop_Error_reg ( .D(Stop_Error_c), .CK(CLK), .RN(RST), .Q(n53) );
  DFFRHQX2M Parity_Error_reg ( .D(Parity_Error_c), .CK(CLK), .RN(RST), .Q(
        Parity_Error) );
  INVXLM U3 ( .A(n53), .Y(n1) );
  INVX2M U4 ( .A(n1), .Y(Stop_Error) );
  CLKXOR2X2M U5 ( .A(edge_count[1]), .B(Check_edge[0]), .Y(n23) );
  OR2X2M U6 ( .A(Check_edge[0]), .B(Flags_edge[0]), .Y(n4) );
  INVX2M U7 ( .A(Prescale[3]), .Y(n8) );
  INVX2M U8 ( .A(Prescale[2]), .Y(Check_edge[1]) );
  BUFX2M U9 ( .A(edge_bit_en), .Y(data_samp_en) );
  XNOR2X1M U10 ( .A(Prescale[5]), .B(\sub_77/carry[5] ), .Y(Flags_edge[5]) );
  OR2X1M U11 ( .A(Prescale[4]), .B(\sub_77/carry[4] ), .Y(\sub_77/carry[5] )
         );
  XNOR2X1M U12 ( .A(\sub_77/carry[4] ), .B(Prescale[4]), .Y(Flags_edge[4]) );
  OR2X1M U13 ( .A(Prescale[3]), .B(\sub_77/carry[3] ), .Y(\sub_77/carry[4] )
         );
  XNOR2X1M U14 ( .A(\sub_77/carry[3] ), .B(Prescale[3]), .Y(Flags_edge[3]) );
  OR2X1M U15 ( .A(Prescale[2]), .B(Check_edge[0]), .Y(\sub_77/carry[3] ) );
  XNOR2X1M U16 ( .A(Check_edge[0]), .B(Prescale[2]), .Y(Flags_edge[2]) );
  AND2X1M U17 ( .A(\add_78/carry[4] ), .B(Prescale[5]), .Y(Check_edge[5]) );
  CLKXOR2X2M U18 ( .A(Prescale[5]), .B(\add_78/carry[4] ), .Y(Check_edge[4])
         );
  AND2X1M U19 ( .A(\add_78/carry[3] ), .B(Prescale[4]), .Y(\add_78/carry[4] )
         );
  CLKXOR2X2M U20 ( .A(Prescale[4]), .B(\add_78/carry[3] ), .Y(Check_edge[3])
         );
  AND2X1M U21 ( .A(Prescale[2]), .B(Prescale[3]), .Y(\add_78/carry[3] ) );
  CLKXOR2X2M U22 ( .A(Prescale[3]), .B(Prescale[2]), .Y(Check_edge[2]) );
  CLKINVX1M U23 ( .A(Flags_edge[0]), .Y(Final_edge[0]) );
  OAI2BB1X1M U24 ( .A0N(Flags_edge[0]), .A1N(Check_edge[0]), .B0(n4), .Y(
        Final_edge[1]) );
  NOR2X1M U25 ( .A(n4), .B(Prescale[2]), .Y(n5) );
  AO21XLM U26 ( .A0(n4), .A1(Prescale[2]), .B0(n5), .Y(Final_edge[2]) );
  CLKNAND2X2M U27 ( .A(n5), .B(n8), .Y(n6) );
  OAI21X1M U28 ( .A0(n5), .A1(n8), .B0(n6), .Y(Final_edge[3]) );
  XNOR2X1M U29 ( .A(Prescale[4]), .B(n6), .Y(Final_edge[4]) );
  NOR2X1M U30 ( .A(Prescale[4]), .B(n6), .Y(n7) );
  CLKXOR2X2M U31 ( .A(Prescale[5]), .B(n7), .Y(Final_edge[5]) );
  OAI32X1M U32 ( .A0(n9), .A1(n10), .A2(n11), .B0(n12), .B1(n13), .Y(
        next_state[2]) );
  MXI2X1M U33 ( .A(n14), .B(n15), .S0(Bit_Count[0]), .Y(n9) );
  NOR2X1M U34 ( .A(PAR_EN), .B(n16), .Y(n14) );
  OAI21X1M U35 ( .A0(current_state[2]), .A1(n17), .B0(n18), .Y(next_state[1])
         );
  AOI32X1M U36 ( .A0(n19), .A1(n20), .A2(n21), .B0(n15), .B1(n22), .Y(n18) );
  NAND4X1M U37 ( .A(n23), .B(n24), .C(n25), .D(n26), .Y(n22) );
  NOR4X1M U38 ( .A(n27), .B(n28), .C(n29), .D(n30), .Y(n26) );
  CLKXOR2X2M U39 ( .A(edge_count[5]), .B(Flags_edge[5]), .Y(n30) );
  CLKXOR2X2M U40 ( .A(edge_count[4]), .B(Flags_edge[4]), .Y(n29) );
  CLKXOR2X2M U41 ( .A(edge_count[3]), .B(Flags_edge[3]), .Y(n28) );
  CLKXOR2X2M U42 ( .A(edge_count[2]), .B(Flags_edge[2]), .Y(n27) );
  NOR3X1M U43 ( .A(n11), .B(Bit_Count[2]), .C(n31), .Y(n25) );
  XNOR2X1M U44 ( .A(Bit_Count[1]), .B(Bit_Count[0]), .Y(n31) );
  CLKINVX1M U45 ( .A(Bit_Count[3]), .Y(n11) );
  CLKXOR2X2M U46 ( .A(n32), .B(Flags_edge[0]), .Y(n24) );
  CLKINVX1M U47 ( .A(edge_count[0]), .Y(n32) );
  NOR3X1M U48 ( .A(Bit_Count[0]), .B(Start_err), .C(Bit_Count[3]), .Y(n21) );
  CLKINVX1M U49 ( .A(n10), .Y(n19) );
  OAI211X1M U50 ( .A0(Bit_Count[3]), .A1(n16), .B0(n33), .C0(n34), .Y(
        next_state[0]) );
  OR3X1M U51 ( .A(RX_In), .B(current_state[1]), .C(current_state[0]), .Y(n34)
         );
  OAI31X1M U52 ( .A0(n35), .A1(Bit_Count[0]), .A2(n10), .B0(n20), .Y(n33) );
  CLKNAND2X2M U53 ( .A(n36), .B(n37), .Y(n10) );
  NOR4X1M U54 ( .A(Bit_Count[2]), .B(Bit_Count[1]), .C(n38), .D(n39), .Y(n37)
         );
  CLKXOR2X2M U55 ( .A(edge_count[0]), .B(Final_edge[0]), .Y(n39) );
  CLKXOR2X2M U56 ( .A(edge_count[4]), .B(Final_edge[4]), .Y(n38) );
  NOR4X1M U57 ( .A(n40), .B(n41), .C(n42), .D(n43), .Y(n36) );
  CLKXOR2X2M U58 ( .A(edge_count[3]), .B(Final_edge[3]), .Y(n43) );
  CLKXOR2X2M U59 ( .A(edge_count[2]), .B(Final_edge[2]), .Y(n42) );
  CLKXOR2X2M U60 ( .A(edge_count[5]), .B(Final_edge[5]), .Y(n41) );
  CLKXOR2X2M U61 ( .A(edge_count[1]), .B(Final_edge[1]), .Y(n40) );
  MXI2X1M U62 ( .A(Start_err), .B(current_state[1]), .S0(Bit_Count[3]), .Y(n35) );
  CLKNAND2X2M U63 ( .A(n44), .B(n12), .Y(edge_bit_en) );
  NOR3X1M U64 ( .A(n45), .B(current_state[1]), .C(n44), .Y(Str_chk_en) );
  NOR3X1M U65 ( .A(n45), .B(n12), .C(n13), .Y(Stp_chk_en) );
  AND2X1M U66 ( .A(Flags_Done), .B(Stop_err), .Y(Stop_Error_c) );
  AND2X1M U67 ( .A(Flags_Done), .B(Par_err), .Y(Parity_Error_c) );
  NOR3X1M U68 ( .A(n45), .B(current_state[2]), .C(n12), .Y(Par_chk_en) );
  CLKINVX1M U69 ( .A(n15), .Y(n12) );
  NOR2X1M U70 ( .A(n17), .B(current_state[0]), .Y(n15) );
  CLKINVX1M U71 ( .A(current_state[1]), .Y(n17) );
  NAND4X1M U72 ( .A(n46), .B(n47), .C(n48), .D(n49), .Y(n45) );
  NOR3X1M U73 ( .A(n50), .B(n51), .C(n52), .Y(n49) );
  CLKXOR2X2M U74 ( .A(edge_count[4]), .B(Check_edge[4]), .Y(n52) );
  CLKXOR2X2M U75 ( .A(edge_count[1]), .B(Check_edge[1]), .Y(n51) );
  CLKXOR2X2M U76 ( .A(edge_count[0]), .B(Check_edge[0]), .Y(n50) );
  XNOR2X1M U77 ( .A(edge_count[2]), .B(Check_edge[2]), .Y(n48) );
  XNOR2X1M U78 ( .A(edge_count[3]), .B(Check_edge[3]), .Y(n47) );
  XNOR2X1M U79 ( .A(edge_count[5]), .B(Check_edge[5]), .Y(n46) );
  CLKINVX1M U80 ( .A(n16), .Y(Deser_en) );
  CLKNAND2X2M U81 ( .A(current_state[1]), .B(n20), .Y(n16) );
  CLKINVX1M U82 ( .A(n44), .Y(n20) );
  CLKNAND2X2M U83 ( .A(current_state[0]), .B(n13), .Y(n44) );
  NOR3BX1M U84 ( .AN(Flags_Done), .B(Stop_err), .C(Par_err), .Y(Data_Valid_c)
         );
  NOR3X1M U85 ( .A(current_state[0]), .B(current_state[1]), .C(n13), .Y(
        Flags_Done) );
  CLKINVX1M U86 ( .A(current_state[2]), .Y(n13) );
endmodule


module UART_RX_TOP_Data_Width8 ( CLK, RST, PAR_EN, Prescale, PAR_TYP, RX_IN, 
        Paerity_Error, Stop_Error, Data_Valid, P_DATA );
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input CLK, RST, PAR_EN, PAR_TYP, RX_IN;
  output Paerity_Error, Stop_Error, Data_Valid;
  wire   dat_samp_en, sampled_bit, deser_en, Deser_Done, edge_bit_en,
         Par_chk_en, Flags_Done, par_err, strt_chk_en, strt_glitch, stp_chk_en,
         stp_err, n1, n2;
  wire   [5:0] edge_cnt;
  wire   [3:0] bit_cnt;

  Data_Sampling U1 ( .CLK(CLK), .RST(n1), .En(dat_samp_en), .Prescale(Prescale), .RX_In(RX_IN), .Edge_Count(edge_cnt), .Sampeld_Bit(sampled_bit) );
  Deserializer_Data_Width8 U2 ( .CLK(CLK), .RST(n1), .En(deser_en), .Prescale(
        Prescale), .S_In(sampled_bit), .edge_count(edge_cnt), .P_out(P_DATA), 
        .Deser_Done(Deser_Done) );
  Edge_Bit_Counter_Data_Width8 U3 ( .CLK(CLK), .RST(n1), .En(edge_bit_en), 
        .Prescale(Prescale), .Bit_Count(bit_cnt), .Edge_Count(edge_cnt) );
  Parity_Check_Data_Width8 U4 ( .CLK(CLK), .RST(n1), .En(Par_chk_en), 
        .Flags_Done(Flags_Done), .PAR_TYP(PAR_TYP), .R_Data(P_DATA), 
        .Deser_Done(Deser_Done), .Parity_In(sampled_bit), .par_err(par_err) );
  Start_Check U5 ( .CLK(CLK), .RST(n1), .En(strt_chk_en), .Start_bit(
        sampled_bit), .Str_err(strt_glitch) );
  Stop_Check U6 ( .CLK(CLK), .RST(n1), .En(stp_chk_en), .Flags_Done(Flags_Done), .Stop_bit(sampled_bit), .Stp_err(stp_err) );
  RX_FSM_Data_Width8 U7 ( .CLK(CLK), .RST(n1), .PAR_EN(PAR_EN), .Prescale(
        Prescale), .RX_In(RX_IN), .Bit_Count(bit_cnt), .edge_count(edge_cnt), 
        .Par_err(par_err), .Start_err(strt_glitch), .Stop_err(stp_err), 
        .edge_bit_en(edge_bit_en), .data_samp_en(dat_samp_en), .Deser_en(
        deser_en), .Par_chk_en(Par_chk_en), .Str_chk_en(strt_chk_en), 
        .Stp_chk_en(stp_chk_en), .Flags_Done(Flags_Done), .Parity_Error(
        Paerity_Error), .Stop_Error(Stop_Error), .Data_Valid(Data_Valid) );
  INVX2M U8 ( .A(n2), .Y(n1) );
  INVX2M U9 ( .A(RST), .Y(n2) );
endmodule


module MUX_4x1 ( CLK, RST, mux_sel, input_1, input_2, input_3, input_4, OUT );
  input [1:0] mux_sel;
  input CLK, RST, input_1, input_2, input_3, input_4;
  output OUT;
  wire   mux_out, n2, n3, n1;

  DFFSQX2M OUT_reg ( .D(mux_out), .CK(CLK), .SN(RST), .Q(OUT) );
  OAI2B2X1M U3 ( .A1N(mux_sel[1]), .A0(n2), .B0(mux_sel[1]), .B1(n3), .Y(
        mux_out) );
  AOI22X1M U4 ( .A0(input_1), .A1(n1), .B0(mux_sel[0]), .B1(input_2), .Y(n3)
         );
  AOI22X1M U5 ( .A0(input_3), .A1(n1), .B0(input_4), .B1(mux_sel[0]), .Y(n2)
         );
  INVX2M U6 ( .A(mux_sel[0]), .Y(n1) );
endmodule


module Parity_Calc ( CLK, RST, In_Data, Data_Valid, Basy_signal, 
        Parity_Calc_En, PAR_TYP, par_bit );
  input [7:0] In_Data;
  input CLK, RST, Data_Valid, Basy_signal, Parity_Calc_En, PAR_TYP;
  output par_bit;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
;
  wire   [7:0] DATA_V;

  DFFRQX2M \DATA_V_reg[1]  ( .D(n10), .CK(CLK), .RN(RST), .Q(DATA_V[1]) );
  DFFRQX2M \DATA_V_reg[0]  ( .D(n9), .CK(CLK), .RN(RST), .Q(DATA_V[0]) );
  DFFRQX2M \DATA_V_reg[2]  ( .D(n11), .CK(CLK), .RN(RST), .Q(DATA_V[2]) );
  DFFRQX2M par_bit_reg ( .D(n8), .CK(CLK), .RN(RST), .Q(par_bit) );
  DFFRQX2M \DATA_V_reg[3]  ( .D(n12), .CK(CLK), .RN(RST), .Q(DATA_V[3]) );
  DFFRQX2M \DATA_V_reg[5]  ( .D(n14), .CK(CLK), .RN(RST), .Q(DATA_V[5]) );
  DFFRQX2M \DATA_V_reg[4]  ( .D(n13), .CK(CLK), .RN(RST), .Q(DATA_V[4]) );
  DFFRQX2M \DATA_V_reg[6]  ( .D(n15), .CK(CLK), .RN(RST), .Q(DATA_V[6]) );
  DFFRQX2M \DATA_V_reg[7]  ( .D(n16), .CK(CLK), .RN(RST), .Q(DATA_V[7]) );
  NOR2BX2M U3 ( .AN(Data_Valid), .B(Basy_signal), .Y(n3) );
  XOR3XLM U4 ( .A(DATA_V[5]), .B(DATA_V[4]), .C(n7), .Y(n4) );
  CLKXOR2X2M U5 ( .A(DATA_V[7]), .B(DATA_V[6]), .Y(n7) );
  OAI2BB2X1M U6 ( .B0(n1), .B1(n2), .A0N(par_bit), .A1N(n2), .Y(n8) );
  XOR3XLM U7 ( .A(n4), .B(PAR_TYP), .C(n5), .Y(n1) );
  NAND2BX2M U8 ( .AN(n3), .B(Parity_Calc_En), .Y(n2) );
  XOR3XLM U9 ( .A(DATA_V[1]), .B(DATA_V[0]), .C(n6), .Y(n5) );
  AO2B2X2M U10 ( .B0(In_Data[0]), .B1(n3), .A0(DATA_V[0]), .A1N(n3), .Y(n9) );
  AO2B2X2M U11 ( .B0(In_Data[1]), .B1(n3), .A0(DATA_V[1]), .A1N(n3), .Y(n10)
         );
  AO2B2X2M U12 ( .B0(In_Data[2]), .B1(n3), .A0(DATA_V[2]), .A1N(n3), .Y(n11)
         );
  AO2B2X2M U13 ( .B0(In_Data[3]), .B1(n3), .A0(DATA_V[3]), .A1N(n3), .Y(n12)
         );
  AO2B2X2M U14 ( .B0(In_Data[4]), .B1(n3), .A0(DATA_V[4]), .A1N(n3), .Y(n13)
         );
  AO2B2X2M U15 ( .B0(In_Data[5]), .B1(n3), .A0(DATA_V[5]), .A1N(n3), .Y(n14)
         );
  AO2B2X2M U16 ( .B0(In_Data[6]), .B1(n3), .A0(DATA_V[6]), .A1N(n3), .Y(n15)
         );
  AO2B2X2M U17 ( .B0(In_Data[7]), .B1(n3), .A0(DATA_V[7]), .A1N(n3), .Y(n16)
         );
  XNOR2X2M U18 ( .A(DATA_V[2]), .B(DATA_V[3]), .Y(n6) );
endmodule


module Serializer_1byte ( In_Data, Data_Valid, Basy_signal, CLK, RST, ser_en, 
        ser_done, Out_Data );
  input [7:0] In_Data;
  input Data_Valid, Basy_signal, CLK, RST, ser_en;
  output ser_done, Out_Data;
  wire   n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n1, n2, n3, n4, n5;
  wire   [7:1] S_R_Data;
  wire   [3:0] counter;

  DFFRQX2M \S_R_Data_reg[6]  ( .D(n25), .CK(CLK), .RN(RST), .Q(S_R_Data[6]) );
  DFFRQX2M \S_R_Data_reg[5]  ( .D(n26), .CK(CLK), .RN(RST), .Q(S_R_Data[5]) );
  DFFRQX2M \S_R_Data_reg[4]  ( .D(n27), .CK(CLK), .RN(RST), .Q(S_R_Data[4]) );
  DFFRQX2M \S_R_Data_reg[3]  ( .D(n28), .CK(CLK), .RN(RST), .Q(S_R_Data[3]) );
  DFFRQX2M \S_R_Data_reg[2]  ( .D(n29), .CK(CLK), .RN(RST), .Q(S_R_Data[2]) );
  DFFRQX2M \S_R_Data_reg[1]  ( .D(n30), .CK(CLK), .RN(RST), .Q(S_R_Data[1]) );
  DFFRQX2M \S_R_Data_reg[0]  ( .D(n23), .CK(CLK), .RN(RST), .Q(Out_Data) );
  DFFRQX2M \S_R_Data_reg[7]  ( .D(n24), .CK(CLK), .RN(RST), .Q(S_R_Data[7]) );
  DFFRQX2M \counter_reg[3]  ( .D(n33), .CK(CLK), .RN(RST), .Q(counter[3]) );
  DFFRQX2M \counter_reg[0]  ( .D(n34), .CK(CLK), .RN(RST), .Q(counter[0]) );
  DFFRQX2M \counter_reg[2]  ( .D(n31), .CK(CLK), .RN(RST), .Q(counter[2]) );
  DFFRQX2M \counter_reg[1]  ( .D(n32), .CK(CLK), .RN(RST), .Q(counter[1]) );
  DFFRQX2M ser_done_reg ( .D(n1), .CK(CLK), .RN(RST), .Q(ser_done) );
  NOR2X2M U3 ( .A(n3), .B(n2), .Y(n6) );
  OAI21X2M U4 ( .A0(n20), .A1(n5), .B0(n19), .Y(n18) );
  INVX2M U5 ( .A(n20), .Y(n3) );
  OAI21X2M U6 ( .A0(n19), .A1(n5), .B0(n17), .Y(n32) );
  NAND3X2M U7 ( .A(n4), .B(n5), .C(n3), .Y(n17) );
  NAND2X2M U8 ( .A(n15), .B(n4), .Y(n16) );
  INVX2M U9 ( .A(n22), .Y(n2) );
  AOI21X2M U10 ( .A0(n3), .A1(counter[0]), .B0(n6), .Y(n19) );
  NAND2X2M U11 ( .A(ser_en), .B(n22), .Y(n20) );
  OAI211X2M U12 ( .A0(n20), .A1(n16), .B0(n21), .C0(n22), .Y(n33) );
  OAI21X2M U13 ( .A0(counter[2]), .A1(n18), .B0(counter[3]), .Y(n21) );
  NAND2BX2M U14 ( .AN(Basy_signal), .B(Data_Valid), .Y(n22) );
  OAI2BB2X1M U15 ( .B0(counter[2]), .B1(n17), .A0N(n18), .A1N(counter[2]), .Y(
        n31) );
  NOR3X2M U16 ( .A(counter[2]), .B(counter[3]), .C(counter[1]), .Y(n15) );
  OAI2BB2X1M U17 ( .B0(counter[0]), .B1(n20), .A0N(n6), .A1N(counter[0]), .Y(
        n34) );
  INVX2M U18 ( .A(n14), .Y(n1) );
  AOI32X1M U19 ( .A0(n15), .A1(n16), .A2(n3), .B0(n6), .B1(ser_done), .Y(n14)
         );
  OAI2BB1X2M U20 ( .A0N(Out_Data), .A1N(n6), .B0(n7), .Y(n23) );
  AOI22X1M U21 ( .A0(In_Data[0]), .A1(n2), .B0(S_R_Data[1]), .B1(n3), .Y(n7)
         );
  OAI2BB1X2M U22 ( .A0N(S_R_Data[1]), .A1N(n6), .B0(n13), .Y(n30) );
  AOI22X1M U23 ( .A0(In_Data[1]), .A1(n2), .B0(S_R_Data[2]), .B1(n3), .Y(n13)
         );
  OAI2BB1X2M U24 ( .A0N(n6), .A1N(S_R_Data[2]), .B0(n12), .Y(n29) );
  AOI22X1M U25 ( .A0(In_Data[2]), .A1(n2), .B0(S_R_Data[3]), .B1(n3), .Y(n12)
         );
  OAI2BB1X2M U26 ( .A0N(n6), .A1N(S_R_Data[3]), .B0(n11), .Y(n28) );
  AOI22X1M U27 ( .A0(In_Data[3]), .A1(n2), .B0(S_R_Data[4]), .B1(n3), .Y(n11)
         );
  OAI2BB1X2M U28 ( .A0N(n6), .A1N(S_R_Data[4]), .B0(n10), .Y(n27) );
  AOI22X1M U29 ( .A0(In_Data[4]), .A1(n2), .B0(S_R_Data[5]), .B1(n3), .Y(n10)
         );
  OAI2BB1X2M U30 ( .A0N(n6), .A1N(S_R_Data[5]), .B0(n9), .Y(n26) );
  AOI22X1M U31 ( .A0(In_Data[5]), .A1(n2), .B0(S_R_Data[6]), .B1(n3), .Y(n9)
         );
  OAI2BB1X2M U32 ( .A0N(n6), .A1N(S_R_Data[6]), .B0(n8), .Y(n25) );
  AOI22X1M U33 ( .A0(In_Data[6]), .A1(n2), .B0(S_R_Data[7]), .B1(n3), .Y(n8)
         );
  AO22X1M U34 ( .A0(n6), .A1(S_R_Data[7]), .B0(In_Data[7]), .B1(n2), .Y(n24)
         );
  INVX2M U35 ( .A(counter[0]), .Y(n4) );
  INVX2M U36 ( .A(counter[1]), .Y(n5) );
endmodule


module FSM ( CLK, RST, Data_Valid, PAR_EN, ser_done, mux_sel, ser_en, Basy, 
        Parity_Calc_En );
  output [1:0] mux_sel;
  input CLK, RST, Data_Valid, PAR_EN, ser_done;
  output ser_en, Basy, Parity_Calc_En;
  wire   Basy_c, n4, n5, n6, n1, n2;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  assign Parity_Calc_En = next_state[1];

  DFFRQX2M Basy_reg ( .D(Basy_c), .CK(CLK), .RN(RST), .Q(Basy) );
  DFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(RST), .Q(
        current_state[0]) );
  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(RST), .Q(
        current_state[1]) );
  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(RST), .Q(
        current_state[2]) );
  INVX2M U3 ( .A(n6), .Y(mux_sel[0]) );
  NOR4X1M U4 ( .A(ser_done), .B(current_state[2]), .C(n1), .D(n2), .Y(ser_en)
         );
  NOR2X2M U5 ( .A(n1), .B(current_state[2]), .Y(n6) );
  OAI22X1M U6 ( .A0(ser_done), .A1(mux_sel[0]), .B0(current_state[1]), .B1(n5), 
        .Y(next_state[0]) );
  AOI2B1X1M U7 ( .A1N(current_state[2]), .A0(Data_Valid), .B0(n6), .Y(n5) );
  INVX2M U8 ( .A(current_state[0]), .Y(n1) );
  INVX2M U9 ( .A(current_state[1]), .Y(n2) );
  AOI21X2M U10 ( .A0(n2), .A1(n1), .B0(current_state[2]), .Y(next_state[1]) );
  NOR2X2M U11 ( .A(n2), .B(current_state[2]), .Y(mux_sel[1]) );
  OAI21X2M U12 ( .A0(current_state[0]), .A1(n2), .B0(mux_sel[0]), .Y(Basy_c)
         );
  NOR2BX2M U13 ( .AN(mux_sel[1]), .B(n4), .Y(next_state[2]) );
  AOI2B1X1M U14 ( .A1N(PAR_EN), .A0(ser_done), .B0(n1), .Y(n4) );
endmodule


module UART_TOP ( CLK, RST, P_DATA, Data_Valid, PAR_EN, PAR_TYP, busy, TX_OUT
 );
  input [7:0] P_DATA;
  input CLK, RST, Data_Valid, PAR_EN, PAR_TYP;
  output busy, TX_OUT;
  wire   ser_data, par_bit, Parity_Calc_En, ser_en, ser_done, n1, n2;
  wire   [1:0] mux_sel;

  MUX_4x1 U1_MUX_4x1 ( .CLK(CLK), .RST(n1), .mux_sel(mux_sel), .input_1(1'b0), 
        .input_2(1'b1), .input_3(ser_data), .input_4(par_bit), .OUT(TX_OUT) );
  Parity_Calc U2_Parity_Calc ( .CLK(CLK), .RST(n1), .In_Data(P_DATA), 
        .Data_Valid(Data_Valid), .Basy_signal(busy), .Parity_Calc_En(
        Parity_Calc_En), .PAR_TYP(PAR_TYP), .par_bit(par_bit) );
  Serializer_1byte U3_Serializer ( .In_Data(P_DATA), .Data_Valid(Data_Valid), 
        .Basy_signal(busy), .CLK(CLK), .RST(n1), .ser_en(ser_en), .ser_done(
        ser_done), .Out_Data(ser_data) );
  FSM U4_FSM ( .CLK(CLK), .RST(n1), .Data_Valid(Data_Valid), .PAR_EN(PAR_EN), 
        .ser_done(ser_done), .mux_sel(mux_sel), .ser_en(ser_en), .Basy(busy), 
        .Parity_Calc_En(Parity_Calc_En) );
  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(RST), .Y(n2) );
endmodule


module FIFO_W_Addr_Size3 ( W_CLK, W_RST, W_INC, GR_Ptr_Syn, FIFO_Full, W_Addr, 
        GW_Ptr );
  input [3:0] GR_Ptr_Syn;
  output [2:0] W_Addr;
  output [3:0] GW_Ptr;
  input W_CLK, W_RST, W_INC;
  output FIFO_Full;
  wire   \Address[3] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14;
  wire   [2:0] Comb_G_W_Ptr;

  DFFRX1M \Address_reg[0]  ( .D(n14), .CK(W_CLK), .RN(W_RST), .Q(W_Addr[0]), 
        .QN(n1) );
  DFFRQX1M \GW_Ptr_reg[3]  ( .D(\Address[3] ), .CK(W_CLK), .RN(W_RST), .Q(
        GW_Ptr[3]) );
  DFFRQX1M \GW_Ptr_reg[0]  ( .D(Comb_G_W_Ptr[0]), .CK(W_CLK), .RN(W_RST), .Q(
        GW_Ptr[0]) );
  DFFRQX1M \GW_Ptr_reg[2]  ( .D(Comb_G_W_Ptr[2]), .CK(W_CLK), .RN(W_RST), .Q(
        GW_Ptr[2]) );
  DFFRQX1M \GW_Ptr_reg[1]  ( .D(Comb_G_W_Ptr[1]), .CK(W_CLK), .RN(W_RST), .Q(
        GW_Ptr[1]) );
  DFFRQX1M \Address_reg[1]  ( .D(n13), .CK(W_CLK), .RN(W_RST), .Q(W_Addr[1])
         );
  DFFRQX1M \Address_reg[2]  ( .D(n12), .CK(W_CLK), .RN(W_RST), .Q(W_Addr[2])
         );
  DFFRQX1M \Address_reg[3]  ( .D(n11), .CK(W_CLK), .RN(W_RST), .Q(\Address[3] ) );
  NAND2X2M U3 ( .A(W_INC), .B(n6), .Y(n5) );
  INVX2M U4 ( .A(n6), .Y(FIFO_Full) );
  XNOR2X2M U5 ( .A(Comb_G_W_Ptr[1]), .B(GR_Ptr_Syn[1]), .Y(n7) );
  XNOR2X2M U6 ( .A(n1), .B(W_Addr[1]), .Y(Comb_G_W_Ptr[0]) );
  NOR2X2M U7 ( .A(n5), .B(n1), .Y(n4) );
  XNOR2X2M U8 ( .A(W_Addr[2]), .B(n3), .Y(n12) );
  XNOR2X2M U9 ( .A(\Address[3] ), .B(n2), .Y(n11) );
  NAND2BX2M U10 ( .AN(n3), .B(W_Addr[2]), .Y(n2) );
  NAND4X2M U11 ( .A(n7), .B(n8), .C(n9), .D(n10), .Y(n6) );
  CLKXOR2X2M U12 ( .A(GR_Ptr_Syn[3]), .B(\Address[3] ), .Y(n10) );
  XNOR2X2M U13 ( .A(Comb_G_W_Ptr[0]), .B(GR_Ptr_Syn[0]), .Y(n8) );
  CLKXOR2X2M U14 ( .A(GR_Ptr_Syn[2]), .B(Comb_G_W_Ptr[2]), .Y(n9) );
  NAND2X2M U15 ( .A(n4), .B(W_Addr[1]), .Y(n3) );
  CLKXOR2X2M U16 ( .A(\Address[3] ), .B(W_Addr[2]), .Y(Comb_G_W_Ptr[2]) );
  CLKXOR2X2M U17 ( .A(W_Addr[1]), .B(W_Addr[2]), .Y(Comb_G_W_Ptr[1]) );
  CLKXOR2X2M U18 ( .A(W_Addr[1]), .B(n4), .Y(n13) );
  CLKXOR2X2M U19 ( .A(n1), .B(n5), .Y(n14) );
endmodule


module BIT_SYNC_2_00000004_0 ( CLK, RST, ASYNC, SYNC );
  input [3:0] ASYNC;
  output [3:0] SYNC;
  input CLK, RST;
  wire   \sync_reg[3][0] , \sync_reg[2][0] , \sync_reg[1][0] ,
         \sync_reg[0][0] ;

  DFFRQX2M \sync_reg_reg[3][1]  ( .D(\sync_reg[3][0] ), .CK(CLK), .RN(RST), 
        .Q(SYNC[3]) );
  DFFRQX2M \sync_reg_reg[2][1]  ( .D(\sync_reg[2][0] ), .CK(CLK), .RN(RST), 
        .Q(SYNC[2]) );
  DFFRQX2M \sync_reg_reg[1][1]  ( .D(\sync_reg[1][0] ), .CK(CLK), .RN(RST), 
        .Q(SYNC[1]) );
  DFFRQX2M \sync_reg_reg[0][1]  ( .D(\sync_reg[0][0] ), .CK(CLK), .RN(RST), 
        .Q(SYNC[0]) );
  DFFRQX2M \sync_reg_reg[3][0]  ( .D(ASYNC[3]), .CK(CLK), .RN(RST), .Q(
        \sync_reg[3][0] ) );
  DFFRQX2M \sync_reg_reg[2][0]  ( .D(ASYNC[2]), .CK(CLK), .RN(RST), .Q(
        \sync_reg[2][0] ) );
  DFFRQX2M \sync_reg_reg[1][0]  ( .D(ASYNC[1]), .CK(CLK), .RN(RST), .Q(
        \sync_reg[1][0] ) );
  DFFRQX2M \sync_reg_reg[0][0]  ( .D(ASYNC[0]), .CK(CLK), .RN(RST), .Q(
        \sync_reg[0][0] ) );
endmodule


module FIFO_R_Addr_Size3 ( R_CLK, R_RST, R_INC, GW_Ptr_Syn, FIFO_Empty, R_Addr, 
        GR_Ptr );
  input [3:0] GW_Ptr_Syn;
  output [2:0] R_Addr;
  output [3:0] GR_Ptr;
  input R_CLK, R_RST, R_INC;
  output FIFO_Empty;
  wire   \Address[3] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14;
  wire   [2:0] Comb_G_R_Ptr;

  DFFRQX2M \Address_reg[3]  ( .D(n11), .CK(R_CLK), .RN(R_RST), .Q(\Address[3] ) );
  DFFRX1M \Address_reg[0]  ( .D(n14), .CK(R_CLK), .RN(R_RST), .Q(R_Addr[0]), 
        .QN(n1) );
  DFFRQX2M \Address_reg[2]  ( .D(n12), .CK(R_CLK), .RN(R_RST), .Q(R_Addr[2])
         );
  DFFRQX2M \GR_Ptr_reg[3]  ( .D(\Address[3] ), .CK(R_CLK), .RN(R_RST), .Q(
        GR_Ptr[3]) );
  DFFRQX2M \GR_Ptr_reg[2]  ( .D(Comb_G_R_Ptr[2]), .CK(R_CLK), .RN(R_RST), .Q(
        GR_Ptr[2]) );
  DFFRQX2M \GR_Ptr_reg[1]  ( .D(Comb_G_R_Ptr[1]), .CK(R_CLK), .RN(R_RST), .Q(
        GR_Ptr[1]) );
  DFFRQX2M \GR_Ptr_reg[0]  ( .D(Comb_G_R_Ptr[0]), .CK(R_CLK), .RN(R_RST), .Q(
        GR_Ptr[0]) );
  DFFRQX2M \Address_reg[1]  ( .D(n13), .CK(R_CLK), .RN(R_RST), .Q(R_Addr[1])
         );
  INVX2M U3 ( .A(n6), .Y(FIFO_Empty) );
  XNOR2X2M U4 ( .A(Comb_G_R_Ptr[1]), .B(GW_Ptr_Syn[1]), .Y(n7) );
  XNOR2X2M U5 ( .A(n1), .B(R_Addr[1]), .Y(Comb_G_R_Ptr[0]) );
  NAND4X2M U6 ( .A(n7), .B(n8), .C(n9), .D(n10), .Y(n6) );
  XNOR2X2M U7 ( .A(\Address[3] ), .B(GW_Ptr_Syn[3]), .Y(n9) );
  XNOR2X2M U8 ( .A(Comb_G_R_Ptr[2]), .B(GW_Ptr_Syn[2]), .Y(n10) );
  XNOR2X2M U9 ( .A(Comb_G_R_Ptr[0]), .B(GW_Ptr_Syn[0]), .Y(n8) );
  CLKXOR2X2M U10 ( .A(R_Addr[1]), .B(R_Addr[2]), .Y(Comb_G_R_Ptr[1]) );
  CLKXOR2X2M U11 ( .A(\Address[3] ), .B(R_Addr[2]), .Y(Comb_G_R_Ptr[2]) );
  NOR2X2M U12 ( .A(n5), .B(n1), .Y(n4) );
  XNOR2X2M U13 ( .A(R_Addr[2]), .B(n3), .Y(n12) );
  NAND2X2M U14 ( .A(n4), .B(R_Addr[1]), .Y(n3) );
  NAND2X2M U15 ( .A(R_INC), .B(n6), .Y(n5) );
  XNOR2X2M U16 ( .A(\Address[3] ), .B(n2), .Y(n11) );
  NAND2BX2M U17 ( .AN(n3), .B(R_Addr[2]), .Y(n2) );
  CLKXOR2X2M U18 ( .A(R_Addr[1]), .B(n4), .Y(n13) );
  CLKXOR2X2M U19 ( .A(n1), .B(n5), .Y(n14) );
endmodule


module BIT_SYNC_2_00000004_1 ( CLK, RST, ASYNC, SYNC );
  input [3:0] ASYNC;
  output [3:0] SYNC;
  input CLK, RST;
  wire   \sync_reg[3][0] , \sync_reg[2][0] , \sync_reg[1][0] ,
         \sync_reg[0][0] ;

  DFFRQX2M \sync_reg_reg[1][1]  ( .D(\sync_reg[1][0] ), .CK(CLK), .RN(RST), 
        .Q(SYNC[1]) );
  DFFRQX2M \sync_reg_reg[0][1]  ( .D(\sync_reg[0][0] ), .CK(CLK), .RN(RST), 
        .Q(SYNC[0]) );
  DFFRQX2M \sync_reg_reg[3][1]  ( .D(\sync_reg[3][0] ), .CK(CLK), .RN(RST), 
        .Q(SYNC[3]) );
  DFFRQX2M \sync_reg_reg[2][1]  ( .D(\sync_reg[2][0] ), .CK(CLK), .RN(RST), 
        .Q(SYNC[2]) );
  DFFRQX2M \sync_reg_reg[3][0]  ( .D(ASYNC[3]), .CK(CLK), .RN(RST), .Q(
        \sync_reg[3][0] ) );
  DFFRQX2M \sync_reg_reg[2][0]  ( .D(ASYNC[2]), .CK(CLK), .RN(RST), .Q(
        \sync_reg[2][0] ) );
  DFFRQX2M \sync_reg_reg[1][0]  ( .D(ASYNC[1]), .CK(CLK), .RN(RST), .Q(
        \sync_reg[1][0] ) );
  DFFRQX2M \sync_reg_reg[0][0]  ( .D(ASYNC[0]), .CK(CLK), .RN(RST), .Q(
        \sync_reg[0][0] ) );
endmodule


module FIFO_MEM_Data_Width8_Addr_Size3_FIFO_Dipth8 ( W_CLK, W_RST, W_INC, 
        FIFO_Full, W_Addr, W_Data, R_Addr, R_Data );
  input [2:0] W_Addr;
  input [7:0] W_Data;
  input [2:0] R_Addr;
  output [7:0] R_Data;
  input W_CLK, W_RST, W_INC, FIFO_Full;
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
         \memory[7][0] , n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115;
  assign N9 = R_Addr[0];
  assign N10 = R_Addr[1];
  assign N11 = R_Addr[2];

  DFFRQX2M \memory_reg[1][5]  ( .D(n75), .CK(W_CLK), .RN(n101), .Q(
        \memory[1][5] ) );
  DFFRQX2M \memory_reg[1][4]  ( .D(n74), .CK(W_CLK), .RN(n101), .Q(
        \memory[1][4] ) );
  DFFRQX2M \memory_reg[1][3]  ( .D(n73), .CK(W_CLK), .RN(n101), .Q(
        \memory[1][3] ) );
  DFFRQX2M \memory_reg[1][2]  ( .D(n72), .CK(W_CLK), .RN(n102), .Q(
        \memory[1][2] ) );
  DFFRQX2M \memory_reg[1][1]  ( .D(n71), .CK(W_CLK), .RN(n102), .Q(
        \memory[1][1] ) );
  DFFRQX2M \memory_reg[1][0]  ( .D(n70), .CK(W_CLK), .RN(n102), .Q(
        \memory[1][0] ) );
  DFFRQX2M \memory_reg[3][7]  ( .D(n61), .CK(W_CLK), .RN(n102), .Q(
        \memory[3][7] ) );
  DFFRQX2M \memory_reg[3][6]  ( .D(n60), .CK(W_CLK), .RN(n102), .Q(
        \memory[3][6] ) );
  DFFRQX2M \memory_reg[3][5]  ( .D(n59), .CK(W_CLK), .RN(n103), .Q(
        \memory[3][5] ) );
  DFFRQX2M \memory_reg[3][4]  ( .D(n58), .CK(W_CLK), .RN(n103), .Q(
        \memory[3][4] ) );
  DFFRQX2M \memory_reg[3][3]  ( .D(n57), .CK(W_CLK), .RN(n103), .Q(
        \memory[3][3] ) );
  DFFRQX2M \memory_reg[3][2]  ( .D(n56), .CK(W_CLK), .RN(n103), .Q(
        \memory[3][2] ) );
  DFFRQX2M \memory_reg[3][1]  ( .D(n55), .CK(W_CLK), .RN(n103), .Q(
        \memory[3][1] ) );
  DFFRQX2M \memory_reg[3][0]  ( .D(n54), .CK(W_CLK), .RN(n103), .Q(
        \memory[3][0] ) );
  DFFRQX2M \memory_reg[2][7]  ( .D(n69), .CK(W_CLK), .RN(n102), .Q(
        \memory[2][7] ) );
  DFFRQX2M \memory_reg[2][6]  ( .D(n68), .CK(W_CLK), .RN(n102), .Q(
        \memory[2][6] ) );
  DFFRQX2M \memory_reg[2][5]  ( .D(n67), .CK(W_CLK), .RN(n102), .Q(
        \memory[2][5] ) );
  DFFRQX2M \memory_reg[2][4]  ( .D(n66), .CK(W_CLK), .RN(n102), .Q(
        \memory[2][4] ) );
  DFFRQX2M \memory_reg[2][3]  ( .D(n65), .CK(W_CLK), .RN(n102), .Q(
        \memory[2][3] ) );
  DFFRQX2M \memory_reg[2][2]  ( .D(n64), .CK(W_CLK), .RN(n102), .Q(
        \memory[2][2] ) );
  DFFRQX2M \memory_reg[2][1]  ( .D(n63), .CK(W_CLK), .RN(n102), .Q(
        \memory[2][1] ) );
  DFFRQX2M \memory_reg[2][0]  ( .D(n62), .CK(W_CLK), .RN(n102), .Q(
        \memory[2][0] ) );
  DFFRQX2M \memory_reg[0][7]  ( .D(n85), .CK(W_CLK), .RN(n101), .Q(
        \memory[0][7] ) );
  DFFRQX2M \memory_reg[0][6]  ( .D(n84), .CK(W_CLK), .RN(n101), .Q(
        \memory[0][6] ) );
  DFFRQX2M \memory_reg[0][5]  ( .D(n83), .CK(W_CLK), .RN(n101), .Q(
        \memory[0][5] ) );
  DFFRQX2M \memory_reg[0][4]  ( .D(n82), .CK(W_CLK), .RN(n101), .Q(
        \memory[0][4] ) );
  DFFRQX2M \memory_reg[0][3]  ( .D(n81), .CK(W_CLK), .RN(n101), .Q(
        \memory[0][3] ) );
  DFFRQX2M \memory_reg[0][2]  ( .D(n80), .CK(W_CLK), .RN(n101), .Q(
        \memory[0][2] ) );
  DFFRQX2M \memory_reg[0][1]  ( .D(n79), .CK(W_CLK), .RN(n101), .Q(
        \memory[0][1] ) );
  DFFRQX2M \memory_reg[0][0]  ( .D(n78), .CK(W_CLK), .RN(n101), .Q(
        \memory[0][0] ) );
  DFFRQX1M \memory_reg[5][7]  ( .D(n45), .CK(W_CLK), .RN(n104), .Q(
        \memory[5][7] ) );
  DFFRQX1M \memory_reg[5][6]  ( .D(n44), .CK(W_CLK), .RN(n104), .Q(
        \memory[5][6] ) );
  DFFRQX1M \memory_reg[5][5]  ( .D(n43), .CK(W_CLK), .RN(n104), .Q(
        \memory[5][5] ) );
  DFFRQX1M \memory_reg[5][4]  ( .D(n42), .CK(W_CLK), .RN(n104), .Q(
        \memory[5][4] ) );
  DFFRQX1M \memory_reg[5][3]  ( .D(n41), .CK(W_CLK), .RN(n104), .Q(
        \memory[5][3] ) );
  DFFRQX1M \memory_reg[5][2]  ( .D(n40), .CK(W_CLK), .RN(n104), .Q(
        \memory[5][2] ) );
  DFFRQX1M \memory_reg[5][1]  ( .D(n39), .CK(W_CLK), .RN(n104), .Q(
        \memory[5][1] ) );
  DFFRQX1M \memory_reg[5][0]  ( .D(n38), .CK(W_CLK), .RN(n104), .Q(
        \memory[5][0] ) );
  DFFRQX1M \memory_reg[6][7]  ( .D(n37), .CK(W_CLK), .RN(n104), .Q(
        \memory[6][7] ) );
  DFFRQX1M \memory_reg[6][6]  ( .D(n36), .CK(W_CLK), .RN(n104), .Q(
        \memory[6][6] ) );
  DFFRQX1M \memory_reg[6][5]  ( .D(n35), .CK(W_CLK), .RN(n104), .Q(
        \memory[6][5] ) );
  DFFRQX1M \memory_reg[6][4]  ( .D(n34), .CK(W_CLK), .RN(n104), .Q(
        \memory[6][4] ) );
  DFFRQX1M \memory_reg[6][3]  ( .D(n33), .CK(W_CLK), .RN(n105), .Q(
        \memory[6][3] ) );
  DFFRQX1M \memory_reg[6][2]  ( .D(n32), .CK(W_CLK), .RN(n105), .Q(
        \memory[6][2] ) );
  DFFRQX1M \memory_reg[6][1]  ( .D(n31), .CK(W_CLK), .RN(n105), .Q(
        \memory[6][1] ) );
  DFFRQX1M \memory_reg[6][0]  ( .D(n30), .CK(W_CLK), .RN(n105), .Q(
        \memory[6][0] ) );
  DFFRQX1M \memory_reg[7][7]  ( .D(n29), .CK(W_CLK), .RN(n105), .Q(
        \memory[7][7] ) );
  DFFRQX1M \memory_reg[7][6]  ( .D(n28), .CK(W_CLK), .RN(n105), .Q(
        \memory[7][6] ) );
  DFFRQX1M \memory_reg[7][5]  ( .D(n27), .CK(W_CLK), .RN(n105), .Q(
        \memory[7][5] ) );
  DFFRQX1M \memory_reg[7][4]  ( .D(n26), .CK(W_CLK), .RN(n105), .Q(
        \memory[7][4] ) );
  DFFRQX1M \memory_reg[7][3]  ( .D(n25), .CK(W_CLK), .RN(n105), .Q(
        \memory[7][3] ) );
  DFFRQX1M \memory_reg[7][2]  ( .D(n24), .CK(W_CLK), .RN(n105), .Q(
        \memory[7][2] ) );
  DFFRQX1M \memory_reg[7][1]  ( .D(n23), .CK(W_CLK), .RN(n105), .Q(
        \memory[7][1] ) );
  DFFRQX1M \memory_reg[7][0]  ( .D(n22), .CK(W_CLK), .RN(n105), .Q(
        \memory[7][0] ) );
  DFFRQX1M \memory_reg[4][7]  ( .D(n53), .CK(W_CLK), .RN(n103), .Q(
        \memory[4][7] ) );
  DFFRQX1M \memory_reg[4][6]  ( .D(n52), .CK(W_CLK), .RN(n103), .Q(
        \memory[4][6] ) );
  DFFRQX1M \memory_reg[4][5]  ( .D(n51), .CK(W_CLK), .RN(n103), .Q(
        \memory[4][5] ) );
  DFFRQX1M \memory_reg[4][4]  ( .D(n50), .CK(W_CLK), .RN(n103), .Q(
        \memory[4][4] ) );
  DFFRQX1M \memory_reg[4][3]  ( .D(n49), .CK(W_CLK), .RN(n103), .Q(
        \memory[4][3] ) );
  DFFRQX1M \memory_reg[4][2]  ( .D(n48), .CK(W_CLK), .RN(n103), .Q(
        \memory[4][2] ) );
  DFFRQX1M \memory_reg[4][1]  ( .D(n47), .CK(W_CLK), .RN(n103), .Q(
        \memory[4][1] ) );
  DFFRQX1M \memory_reg[4][0]  ( .D(n46), .CK(W_CLK), .RN(n104), .Q(
        \memory[4][0] ) );
  DFFRQX1M \memory_reg[1][7]  ( .D(n77), .CK(W_CLK), .RN(n101), .Q(
        \memory[1][7] ) );
  DFFRQX1M \memory_reg[1][6]  ( .D(n76), .CK(W_CLK), .RN(n101), .Q(
        \memory[1][6] ) );
  BUFX2M U2 ( .A(n11), .Y(n98) );
  BUFX2M U3 ( .A(n19), .Y(n94) );
  BUFX2M U4 ( .A(n20), .Y(n93) );
  BUFX2M U5 ( .A(n17), .Y(n95) );
  BUFX2M U6 ( .A(n13), .Y(n97) );
  BUFX2M U7 ( .A(n14), .Y(n96) );
  BUFX2M U8 ( .A(n99), .Y(n103) );
  BUFX2M U9 ( .A(n99), .Y(n102) );
  BUFX2M U10 ( .A(n99), .Y(n101) );
  BUFX2M U11 ( .A(n100), .Y(n104) );
  BUFX2M U12 ( .A(n100), .Y(n105) );
  NOR2BX2M U13 ( .AN(W_INC), .B(FIFO_Full), .Y(n16) );
  BUFX2M U14 ( .A(W_RST), .Y(n99) );
  BUFX2M U15 ( .A(W_RST), .Y(n100) );
  NAND3X2M U16 ( .A(n114), .B(n115), .C(n12), .Y(n15) );
  NAND3X2M U17 ( .A(n114), .B(n115), .C(n18), .Y(n21) );
  NOR2BX2M U18 ( .AN(n16), .B(W_Addr[2]), .Y(n18) );
  OAI2BB2X1M U19 ( .B0(n113), .B1(n21), .A0N(\memory[0][0] ), .A1N(n21), .Y(
        n78) );
  OAI2BB2X1M U20 ( .B0(n112), .B1(n21), .A0N(\memory[0][1] ), .A1N(n21), .Y(
        n79) );
  OAI2BB2X1M U21 ( .B0(n111), .B1(n21), .A0N(\memory[0][2] ), .A1N(n21), .Y(
        n80) );
  OAI2BB2X1M U22 ( .B0(n110), .B1(n21), .A0N(\memory[0][3] ), .A1N(n21), .Y(
        n81) );
  OAI2BB2X1M U23 ( .B0(n109), .B1(n21), .A0N(\memory[0][4] ), .A1N(n21), .Y(
        n82) );
  OAI2BB2X1M U24 ( .B0(n108), .B1(n21), .A0N(\memory[0][5] ), .A1N(n21), .Y(
        n83) );
  OAI2BB2X1M U25 ( .B0(n107), .B1(n21), .A0N(\memory[0][6] ), .A1N(n21), .Y(
        n84) );
  OAI2BB2X1M U26 ( .B0(n106), .B1(n21), .A0N(\memory[0][7] ), .A1N(n21), .Y(
        n85) );
  OAI2BB2X1M U27 ( .B0(n113), .B1(n15), .A0N(\memory[4][0] ), .A1N(n15), .Y(
        n46) );
  OAI2BB2X1M U28 ( .B0(n112), .B1(n15), .A0N(\memory[4][1] ), .A1N(n15), .Y(
        n47) );
  OAI2BB2X1M U29 ( .B0(n111), .B1(n15), .A0N(\memory[4][2] ), .A1N(n15), .Y(
        n48) );
  OAI2BB2X1M U30 ( .B0(n110), .B1(n15), .A0N(\memory[4][3] ), .A1N(n15), .Y(
        n49) );
  OAI2BB2X1M U31 ( .B0(n109), .B1(n15), .A0N(\memory[4][4] ), .A1N(n15), .Y(
        n50) );
  OAI2BB2X1M U32 ( .B0(n108), .B1(n15), .A0N(\memory[4][5] ), .A1N(n15), .Y(
        n51) );
  OAI2BB2X1M U33 ( .B0(n107), .B1(n15), .A0N(\memory[4][6] ), .A1N(n15), .Y(
        n52) );
  OAI2BB2X1M U34 ( .B0(n106), .B1(n15), .A0N(\memory[4][7] ), .A1N(n15), .Y(
        n53) );
  INVX2M U35 ( .A(W_Data[0]), .Y(n113) );
  INVX2M U36 ( .A(W_Data[1]), .Y(n112) );
  INVX2M U37 ( .A(W_Data[2]), .Y(n111) );
  INVX2M U38 ( .A(W_Data[3]), .Y(n110) );
  INVX2M U39 ( .A(W_Data[4]), .Y(n109) );
  INVX2M U40 ( .A(W_Data[5]), .Y(n108) );
  INVX2M U41 ( .A(W_Data[6]), .Y(n107) );
  INVX2M U42 ( .A(W_Data[7]), .Y(n106) );
  OAI2BB2X1M U43 ( .B0(n113), .B1(n97), .A0N(\memory[6][0] ), .A1N(n97), .Y(
        n30) );
  OAI2BB2X1M U44 ( .B0(n112), .B1(n97), .A0N(\memory[6][1] ), .A1N(n97), .Y(
        n31) );
  OAI2BB2X1M U45 ( .B0(n111), .B1(n97), .A0N(\memory[6][2] ), .A1N(n97), .Y(
        n32) );
  OAI2BB2X1M U46 ( .B0(n110), .B1(n97), .A0N(\memory[6][3] ), .A1N(n97), .Y(
        n33) );
  OAI2BB2X1M U47 ( .B0(n109), .B1(n97), .A0N(\memory[6][4] ), .A1N(n97), .Y(
        n34) );
  OAI2BB2X1M U48 ( .B0(n108), .B1(n97), .A0N(\memory[6][5] ), .A1N(n97), .Y(
        n35) );
  OAI2BB2X1M U49 ( .B0(n107), .B1(n97), .A0N(\memory[6][6] ), .A1N(n97), .Y(
        n36) );
  OAI2BB2X1M U50 ( .B0(n106), .B1(n97), .A0N(\memory[6][7] ), .A1N(n97), .Y(
        n37) );
  OAI2BB2X1M U51 ( .B0(n113), .B1(n96), .A0N(\memory[5][0] ), .A1N(n96), .Y(
        n38) );
  OAI2BB2X1M U52 ( .B0(n112), .B1(n96), .A0N(\memory[5][1] ), .A1N(n96), .Y(
        n39) );
  OAI2BB2X1M U53 ( .B0(n111), .B1(n96), .A0N(\memory[5][2] ), .A1N(n96), .Y(
        n40) );
  OAI2BB2X1M U54 ( .B0(n110), .B1(n96), .A0N(\memory[5][3] ), .A1N(n96), .Y(
        n41) );
  OAI2BB2X1M U55 ( .B0(n109), .B1(n96), .A0N(\memory[5][4] ), .A1N(n96), .Y(
        n42) );
  OAI2BB2X1M U56 ( .B0(n108), .B1(n96), .A0N(\memory[5][5] ), .A1N(n96), .Y(
        n43) );
  OAI2BB2X1M U57 ( .B0(n107), .B1(n96), .A0N(\memory[5][6] ), .A1N(n96), .Y(
        n44) );
  OAI2BB2X1M U58 ( .B0(n106), .B1(n96), .A0N(\memory[5][7] ), .A1N(n96), .Y(
        n45) );
  OAI2BB2X1M U59 ( .B0(n113), .B1(n95), .A0N(\memory[3][0] ), .A1N(n95), .Y(
        n54) );
  OAI2BB2X1M U60 ( .B0(n112), .B1(n95), .A0N(\memory[3][1] ), .A1N(n95), .Y(
        n55) );
  OAI2BB2X1M U61 ( .B0(n111), .B1(n95), .A0N(\memory[3][2] ), .A1N(n95), .Y(
        n56) );
  OAI2BB2X1M U62 ( .B0(n110), .B1(n95), .A0N(\memory[3][3] ), .A1N(n95), .Y(
        n57) );
  OAI2BB2X1M U63 ( .B0(n109), .B1(n95), .A0N(\memory[3][4] ), .A1N(n95), .Y(
        n58) );
  OAI2BB2X1M U64 ( .B0(n108), .B1(n95), .A0N(\memory[3][5] ), .A1N(n95), .Y(
        n59) );
  OAI2BB2X1M U65 ( .B0(n107), .B1(n95), .A0N(\memory[3][6] ), .A1N(n95), .Y(
        n60) );
  OAI2BB2X1M U66 ( .B0(n106), .B1(n95), .A0N(\memory[3][7] ), .A1N(n95), .Y(
        n61) );
  OAI2BB2X1M U67 ( .B0(n113), .B1(n94), .A0N(\memory[2][0] ), .A1N(n94), .Y(
        n62) );
  OAI2BB2X1M U68 ( .B0(n112), .B1(n94), .A0N(\memory[2][1] ), .A1N(n94), .Y(
        n63) );
  OAI2BB2X1M U69 ( .B0(n111), .B1(n94), .A0N(\memory[2][2] ), .A1N(n94), .Y(
        n64) );
  OAI2BB2X1M U70 ( .B0(n110), .B1(n94), .A0N(\memory[2][3] ), .A1N(n94), .Y(
        n65) );
  OAI2BB2X1M U71 ( .B0(n109), .B1(n94), .A0N(\memory[2][4] ), .A1N(n94), .Y(
        n66) );
  OAI2BB2X1M U72 ( .B0(n108), .B1(n94), .A0N(\memory[2][5] ), .A1N(n94), .Y(
        n67) );
  OAI2BB2X1M U73 ( .B0(n107), .B1(n94), .A0N(\memory[2][6] ), .A1N(n94), .Y(
        n68) );
  OAI2BB2X1M U74 ( .B0(n106), .B1(n94), .A0N(\memory[2][7] ), .A1N(n94), .Y(
        n69) );
  OAI2BB2X1M U75 ( .B0(n113), .B1(n93), .A0N(\memory[1][0] ), .A1N(n93), .Y(
        n70) );
  OAI2BB2X1M U76 ( .B0(n112), .B1(n93), .A0N(\memory[1][1] ), .A1N(n93), .Y(
        n71) );
  OAI2BB2X1M U77 ( .B0(n111), .B1(n93), .A0N(\memory[1][2] ), .A1N(n93), .Y(
        n72) );
  OAI2BB2X1M U78 ( .B0(n110), .B1(n93), .A0N(\memory[1][3] ), .A1N(n93), .Y(
        n73) );
  OAI2BB2X1M U79 ( .B0(n109), .B1(n93), .A0N(\memory[1][4] ), .A1N(n93), .Y(
        n74) );
  OAI2BB2X1M U80 ( .B0(n108), .B1(n93), .A0N(\memory[1][5] ), .A1N(n93), .Y(
        n75) );
  OAI2BB2X1M U81 ( .B0(n107), .B1(n93), .A0N(\memory[1][6] ), .A1N(n93), .Y(
        n76) );
  OAI2BB2X1M U82 ( .B0(n106), .B1(n93), .A0N(\memory[1][7] ), .A1N(n93), .Y(
        n77) );
  OAI2BB2X1M U83 ( .B0(n98), .B1(n113), .A0N(\memory[7][0] ), .A1N(n98), .Y(
        n22) );
  OAI2BB2X1M U84 ( .B0(n98), .B1(n112), .A0N(\memory[7][1] ), .A1N(n98), .Y(
        n23) );
  OAI2BB2X1M U85 ( .B0(n98), .B1(n111), .A0N(\memory[7][2] ), .A1N(n98), .Y(
        n24) );
  OAI2BB2X1M U86 ( .B0(n98), .B1(n110), .A0N(\memory[7][3] ), .A1N(n98), .Y(
        n25) );
  OAI2BB2X1M U87 ( .B0(n98), .B1(n109), .A0N(\memory[7][4] ), .A1N(n98), .Y(
        n26) );
  OAI2BB2X1M U88 ( .B0(n98), .B1(n108), .A0N(\memory[7][5] ), .A1N(n98), .Y(
        n27) );
  OAI2BB2X1M U89 ( .B0(n98), .B1(n107), .A0N(\memory[7][6] ), .A1N(n98), .Y(
        n28) );
  OAI2BB2X1M U90 ( .B0(n98), .B1(n106), .A0N(\memory[7][7] ), .A1N(n98), .Y(
        n29) );
  AND2X2M U91 ( .A(W_Addr[2]), .B(n16), .Y(n12) );
  NAND3X2M U92 ( .A(n12), .B(n115), .C(W_Addr[0]), .Y(n14) );
  NAND3X2M U93 ( .A(n12), .B(n114), .C(W_Addr[1]), .Y(n13) );
  NAND3X2M U94 ( .A(W_Addr[1]), .B(W_Addr[0]), .C(n18), .Y(n17) );
  NAND3X2M U95 ( .A(W_Addr[0]), .B(n115), .C(n18), .Y(n20) );
  NAND3X2M U96 ( .A(W_Addr[1]), .B(n114), .C(n18), .Y(n19) );
  NAND3X2M U97 ( .A(W_Addr[0]), .B(n12), .C(W_Addr[1]), .Y(n11) );
  INVX2M U98 ( .A(W_Addr[0]), .Y(n114) );
  INVX2M U99 ( .A(W_Addr[1]), .Y(n115) );
  BUFX4M U100 ( .A(N9), .Y(n92) );
  MX2X2M U101 ( .A(n2), .B(n1), .S0(N11), .Y(R_Data[0]) );
  MX4X1M U102 ( .A(\memory[4][0] ), .B(\memory[5][0] ), .C(\memory[6][0] ), 
        .D(\memory[7][0] ), .S0(n92), .S1(N10), .Y(n1) );
  MX4X1M U103 ( .A(\memory[0][0] ), .B(\memory[1][0] ), .C(\memory[2][0] ), 
        .D(\memory[3][0] ), .S0(n92), .S1(N10), .Y(n2) );
  MX2X2M U104 ( .A(n4), .B(n3), .S0(N11), .Y(R_Data[1]) );
  MX4X1M U105 ( .A(\memory[4][1] ), .B(\memory[5][1] ), .C(\memory[6][1] ), 
        .D(\memory[7][1] ), .S0(n92), .S1(N10), .Y(n3) );
  MX4X1M U106 ( .A(\memory[0][1] ), .B(\memory[1][1] ), .C(\memory[2][1] ), 
        .D(\memory[3][1] ), .S0(n92), .S1(N10), .Y(n4) );
  MX2X2M U107 ( .A(n6), .B(n5), .S0(N11), .Y(R_Data[2]) );
  MX4X1M U108 ( .A(\memory[4][2] ), .B(\memory[5][2] ), .C(\memory[6][2] ), 
        .D(\memory[7][2] ), .S0(n92), .S1(N10), .Y(n5) );
  MX4X1M U109 ( .A(\memory[0][2] ), .B(\memory[1][2] ), .C(\memory[2][2] ), 
        .D(\memory[3][2] ), .S0(n92), .S1(N10), .Y(n6) );
  MX2X2M U110 ( .A(n8), .B(n7), .S0(N11), .Y(R_Data[3]) );
  MX4X1M U111 ( .A(\memory[4][3] ), .B(\memory[5][3] ), .C(\memory[6][3] ), 
        .D(\memory[7][3] ), .S0(n92), .S1(N10), .Y(n7) );
  MX4X1M U112 ( .A(\memory[0][3] ), .B(\memory[1][3] ), .C(\memory[2][3] ), 
        .D(\memory[3][3] ), .S0(n92), .S1(N10), .Y(n8) );
  MX2X2M U113 ( .A(n10), .B(n9), .S0(N11), .Y(R_Data[4]) );
  MX4X1M U114 ( .A(\memory[4][4] ), .B(\memory[5][4] ), .C(\memory[6][4] ), 
        .D(\memory[7][4] ), .S0(n92), .S1(N10), .Y(n9) );
  MX4X1M U115 ( .A(\memory[0][4] ), .B(\memory[1][4] ), .C(\memory[2][4] ), 
        .D(\memory[3][4] ), .S0(n92), .S1(N10), .Y(n10) );
  MX2X2M U116 ( .A(n87), .B(n86), .S0(N11), .Y(R_Data[5]) );
  MX4X1M U117 ( .A(\memory[4][5] ), .B(\memory[5][5] ), .C(\memory[6][5] ), 
        .D(\memory[7][5] ), .S0(n92), .S1(N10), .Y(n86) );
  MX4X1M U118 ( .A(\memory[0][5] ), .B(\memory[1][5] ), .C(\memory[2][5] ), 
        .D(\memory[3][5] ), .S0(n92), .S1(N10), .Y(n87) );
  MX2X2M U119 ( .A(n89), .B(n88), .S0(N11), .Y(R_Data[6]) );
  MX4X1M U120 ( .A(\memory[4][6] ), .B(\memory[5][6] ), .C(\memory[6][6] ), 
        .D(\memory[7][6] ), .S0(n92), .S1(N10), .Y(n88) );
  MX4X1M U121 ( .A(\memory[0][6] ), .B(\memory[1][6] ), .C(\memory[2][6] ), 
        .D(\memory[3][6] ), .S0(n92), .S1(N10), .Y(n89) );
  MX2X2M U122 ( .A(n91), .B(n90), .S0(N11), .Y(R_Data[7]) );
  MX4X1M U123 ( .A(\memory[4][7] ), .B(\memory[5][7] ), .C(\memory[6][7] ), 
        .D(\memory[7][7] ), .S0(n92), .S1(N10), .Y(n90) );
  MX4X1M U124 ( .A(\memory[0][7] ), .B(\memory[1][7] ), .C(\memory[2][7] ), 
        .D(\memory[3][7] ), .S0(n92), .S1(N10), .Y(n91) );
endmodule


module AS_FIFO_TOP_Data_Width8_Addr_Size3_FIFO_Dipth8_NUM_STAGES2 ( I_W_CLK, 
        I_W_RST, I_W_INC, I_Data, I_R_CLK, I_R_RST, I_R_INC, O_Data, FIFO_Full, 
        FIFO_Empty );
  input [7:0] I_Data;
  output [7:0] O_Data;
  input I_W_CLK, I_W_RST, I_W_INC, I_R_CLK, I_R_RST, I_R_INC;
  output FIFO_Full, FIFO_Empty;
  wire   n1, n2;
  wire   [3:0] GR_Ptr_Syn;
  wire   [2:0] W_Addr;
  wire   [3:0] GW_Ptr;
  wire   [3:0] GW_Ptr_Syn;
  wire   [2:0] R_Addr;
  wire   [3:0] GR_Ptr;

  FIFO_W_Addr_Size3 U0_FIFO_W ( .W_CLK(I_W_CLK), .W_RST(n1), .W_INC(I_W_INC), 
        .GR_Ptr_Syn(GR_Ptr_Syn), .FIFO_Full(FIFO_Full), .W_Addr(W_Addr), 
        .GW_Ptr(GW_Ptr) );
  BIT_SYNC_2_00000004_0 U1_W2R_SYNC ( .CLK(I_R_CLK), .RST(I_R_RST), .ASYNC(
        GW_Ptr), .SYNC(GW_Ptr_Syn) );
  FIFO_R_Addr_Size3 U2_FIFO_R ( .R_CLK(I_R_CLK), .R_RST(I_R_RST), .R_INC(
        I_R_INC), .GW_Ptr_Syn(GW_Ptr_Syn), .FIFO_Empty(FIFO_Empty), .R_Addr(
        R_Addr), .GR_Ptr(GR_Ptr) );
  BIT_SYNC_2_00000004_1 U3_R2W_SYNC ( .CLK(I_W_CLK), .RST(n1), .ASYNC(GR_Ptr), 
        .SYNC(GR_Ptr_Syn) );
  FIFO_MEM_Data_Width8_Addr_Size3_FIFO_Dipth8 U4_FIFO_MEM ( .W_CLK(I_W_CLK), 
        .W_RST(n1), .W_INC(I_W_INC), .FIFO_Full(FIFO_Full), .W_Addr(W_Addr), 
        .W_Data(I_Data), .R_Addr(R_Addr), .R_Data(O_Data) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(I_W_RST), .Y(n2) );
endmodule


module PULSE_GEN ( clk, rst, lvl_sig, pulse_sig );
  input clk, rst, lvl_sig;
  output pulse_sig;
  wire   pls_flop, rcv_flop;

  DFFRQX2M pls_flop_reg ( .D(rcv_flop), .CK(clk), .RN(rst), .Q(pls_flop) );
  DFFRQX2M rcv_flop_reg ( .D(lvl_sig), .CK(clk), .RN(rst), .Q(rcv_flop) );
  NOR2BX2M U3 ( .AN(rcv_flop), .B(pls_flop), .Y(pulse_sig) );
endmodule


module RST_SYN_NUM_STAGES2_0 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;
  wire   \sync_reg[0] ;

  DFFRQX2M \sync_reg_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(\sync_reg[0] )
         );
  DFFRQX1M \sync_reg_reg[1]  ( .D(\sync_reg[0] ), .CK(CLK), .RN(RST), .Q(
        SYNC_RST) );
endmodule


module RST_SYN_NUM_STAGES2_1 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;
  wire   \sync_reg[0] ;

  DFFRQX2M \sync_reg_reg[1]  ( .D(\sync_reg[0] ), .CK(CLK), .RN(RST), .Q(
        SYNC_RST) );
  DFFRQX2M \sync_reg_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(\sync_reg[0] )
         );
endmodule


module DATA_SYNC_NUM_STAGES2_BUS_WIDTH8 ( CLK, RST, unsync_bus, bus_enable, 
        sync_bus, enable_pulse_d );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input CLK, RST, bus_enable;
  output enable_pulse_d;
  wire   Pulse_FF_Out, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [1:0] en_sync_reg;

  DFFRQX2M \en_sync_reg_reg[0]  ( .D(bus_enable), .CK(CLK), .RN(RST), .Q(
        en_sync_reg[0]) );
  DFFRQX1M \en_sync_reg_reg[1]  ( .D(en_sync_reg[0]), .CK(CLK), .RN(RST), .Q(
        en_sync_reg[1]) );
  DFFRQX1M Pulse_FF_Out_reg ( .D(en_sync_reg[1]), .CK(CLK), .RN(RST), .Q(
        Pulse_FF_Out) );
  DFFRQX1M enable_pulse_d_reg ( .D(n10), .CK(CLK), .RN(RST), .Q(enable_pulse_d) );
  DFFRQX1M \sync_bus_reg[6]  ( .D(n8), .CK(CLK), .RN(RST), .Q(sync_bus[6]) );
  DFFRQX1M \sync_bus_reg[5]  ( .D(n7), .CK(CLK), .RN(RST), .Q(sync_bus[5]) );
  DFFRQX1M \sync_bus_reg[0]  ( .D(n2), .CK(CLK), .RN(RST), .Q(sync_bus[0]) );
  DFFRQX1M \sync_bus_reg[7]  ( .D(n9), .CK(CLK), .RN(RST), .Q(sync_bus[7]) );
  DFFRQX1M \sync_bus_reg[4]  ( .D(n6), .CK(CLK), .RN(RST), .Q(sync_bus[4]) );
  DFFRQX1M \sync_bus_reg[2]  ( .D(n4), .CK(CLK), .RN(RST), .Q(sync_bus[2]) );
  DFFRQX1M \sync_bus_reg[1]  ( .D(n3), .CK(CLK), .RN(RST), .Q(sync_bus[1]) );
  DFFRQX1M \sync_bus_reg[3]  ( .D(n5), .CK(CLK), .RN(RST), .Q(sync_bus[3]) );
  INVX2M U3 ( .A(n1), .Y(n10) );
  NAND2BX2M U4 ( .AN(Pulse_FF_Out), .B(en_sync_reg[1]), .Y(n1) );
  AO22X1M U5 ( .A0(unsync_bus[0]), .A1(n10), .B0(sync_bus[0]), .B1(n1), .Y(n2)
         );
  AO22X1M U6 ( .A0(unsync_bus[1]), .A1(n10), .B0(sync_bus[1]), .B1(n1), .Y(n3)
         );
  AO22X1M U7 ( .A0(unsync_bus[2]), .A1(n10), .B0(sync_bus[2]), .B1(n1), .Y(n4)
         );
  AO22X1M U8 ( .A0(unsync_bus[3]), .A1(n10), .B0(sync_bus[3]), .B1(n1), .Y(n5)
         );
  AO22X1M U9 ( .A0(unsync_bus[4]), .A1(n10), .B0(sync_bus[4]), .B1(n1), .Y(n6)
         );
  AO22X1M U10 ( .A0(unsync_bus[5]), .A1(n10), .B0(sync_bus[5]), .B1(n1), .Y(n7) );
  AO22X1M U11 ( .A0(unsync_bus[6]), .A1(n10), .B0(sync_bus[6]), .B1(n1), .Y(n8) );
  AO22X1M U12 ( .A0(unsync_bus[7]), .A1(n10), .B0(sync_bus[7]), .B1(n1), .Y(n9) );
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
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n11), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n17), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n16), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
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
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n13), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n12), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n15), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n14), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n14), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n13), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n15), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n16), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n14), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n15), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n15), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n16), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
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
  NAND2X2M U11 ( .A(n3), .B(n4), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U12 ( .A(a[5]), .Y(n4) );
  INVX2M U13 ( .A(n18), .Y(n3) );
  NAND2X2M U14 ( .A(n5), .B(n6), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U15 ( .A(a[4]), .Y(n6) );
  INVX2M U16 ( .A(n18), .Y(n5) );
  NAND2X2M U17 ( .A(n5), .B(n7), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U18 ( .A(a[3]), .Y(n7) );
  NAND2X2M U19 ( .A(n5), .B(n8), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U20 ( .A(a[2]), .Y(n8) );
  NAND2X2M U21 ( .A(n5), .B(n9), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U22 ( .A(a[1]), .Y(n9) );
  NAND2X2M U23 ( .A(n5), .B(n10), .Y(\u_div/CryTmp[0][1] ) );
  NAND2X2M U24 ( .A(n1), .B(n2), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U25 ( .A(a[6]), .Y(n2) );
  INVX2M U26 ( .A(n18), .Y(n1) );
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
  INVX2M U1 ( .A(B[6]), .Y(n3) );
  INVX2M U2 ( .A(B[1]), .Y(n8) );
  NAND2X2M U3 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U4 ( .A(A[0]), .Y(n1) );
  INVX2M U5 ( .A(B[7]), .Y(n2) );
  XNOR2X2M U6 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
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
  XNOR2X2M U4 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  XNOR2X2M U5 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U6 ( .A(B[7]), .Y(n8) );
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

  ALU_IN_Width8_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , 
        \A1[9] , \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , 
        \A1[2] , \A1[1] , \A1[0] }), .B({n10, n16, n15, n14, n13, n11, n12, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(
        PRODUCT[15:2]) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n6), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n5), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n9), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n8), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n4), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n3), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n7), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  AND2X2M U2 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX2M U10 ( .A(\ab[0][6] ), .Y(n22) );
  INVX2M U11 ( .A(\ab[0][7] ), .Y(n23) );
  CLKXOR2X2M U12 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  CLKXOR2X2M U13 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  INVX2M U14 ( .A(\ab[0][3] ), .Y(n19) );
  INVX2M U15 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U16 ( .A(\ab[0][5] ), .Y(n21) );
  XNOR2X2M U17 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  AND2X2M U18 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n11) );
  AND2X2M U19 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n12) );
  CLKXOR2X2M U20 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U21 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U22 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U23 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U24 ( .A(\ab[0][2] ), .Y(n18) );
  AND2X2M U25 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n13) );
  AND2X2M U26 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n14) );
  AND2X2M U27 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n15) );
  XNOR2X2M U28 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U29 ( .A(\SUMB[7][1] ), .Y(n17) );
  AND2X2M U30 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n16) );
  CLKXOR2X2M U31 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  XNOR2X2M U32 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  XNOR2X2M U33 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U34 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U35 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  INVX2M U36 ( .A(A[1]), .Y(n38) );
  INVX2M U37 ( .A(A[0]), .Y(n39) );
  INVX2M U38 ( .A(B[6]), .Y(n25) );
  INVX2M U39 ( .A(B[7]), .Y(n24) );
  XNOR2X2M U40 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  INVX2M U41 ( .A(A[2]), .Y(n37) );
  INVX2M U42 ( .A(A[3]), .Y(n36) );
  INVX2M U43 ( .A(A[4]), .Y(n35) );
  INVX2M U44 ( .A(B[1]), .Y(n30) );
  INVX2M U45 ( .A(A[6]), .Y(n33) );
  INVX2M U46 ( .A(A[7]), .Y(n32) );
  INVX2M U47 ( .A(A[5]), .Y(n34) );
  INVX2M U48 ( .A(B[3]), .Y(n28) );
  INVX2M U49 ( .A(B[5]), .Y(n26) );
  INVX2M U50 ( .A(B[4]), .Y(n27) );
  INVX2M U51 ( .A(B[0]), .Y(n31) );
  INVX2M U52 ( .A(B[2]), .Y(n29) );
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
endmodule


module ALU_IN_Width8 ( CLK, RST, EN, ALU_FUN, A, B, ALU_OUT, OUT_Valid );
  input [3:0] ALU_FUN;
  input [7:0] A;
  input [7:0] B;
  output [15:0] ALU_OUT;
  input CLK, RST, EN;
  output OUT_Valid;
  wire   N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103, N104,
         N105, N106, N107, N108, N109, N110, N111, N112, N113, N114, N115,
         N116, N117, N118, N119, N120, N121, N122, N123, N124, N125, N127,
         N128, N129, N130, N131, N132, N133, N134, N167, N168, N169, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152;
  wire   [15:0] Com_ALU_OUT;

  ALU_IN_Width8_DW_div_uns_0 div_51 ( .a({n14, n13, n12, n11, n10, n9, n8, n7}), .b({n6, n5, B[5:2], n4, B[0]}), .quotient({N134, N133, N132, N131, N130, 
        N129, N128, N127}) );
  ALU_IN_Width8_DW01_sub_0 sub_43 ( .A({1'b0, n14, n13, n12, n11, n10, n9, n8, 
        n7}), .B({1'b0, n6, n5, B[5:2], n4, B[0]}), .CI(1'b0), .DIFF({N109, 
        N108, N107, N106, N105, N104, N103, N102, N101}) );
  ALU_IN_Width8_DW01_add_0 add_39 ( .A({1'b0, n14, n13, n12, n11, n10, n9, n8, 
        n7}), .B({1'b0, n6, n5, B[5:2], n4, B[0]}), .CI(1'b0), .SUM({N100, N99, 
        N98, N97, N96, N95, N94, N93, N92}) );
  ALU_IN_Width8_DW02_mult_0 mult_47 ( .A({n14, n13, n12, n11, n10, n9, n8, n7}), .B({n6, n5, B[5:2], n4, B[0]}), .TC(1'b0), .PRODUCT({N125, N124, N123, N122, 
        N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110}) );
  DFFRQX2M OUT_Valid_reg ( .D(EN), .CK(CLK), .RN(RST), .Q(OUT_Valid) );
  DFFRQX2M \ALU_OUT_reg[15]  ( .D(Com_ALU_OUT[15]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[15]) );
  DFFRQX2M \ALU_OUT_reg[14]  ( .D(Com_ALU_OUT[14]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[14]) );
  DFFRQX2M \ALU_OUT_reg[13]  ( .D(Com_ALU_OUT[13]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[13]) );
  DFFRQX2M \ALU_OUT_reg[12]  ( .D(Com_ALU_OUT[12]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[12]) );
  DFFRQX2M \ALU_OUT_reg[11]  ( .D(Com_ALU_OUT[11]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[11]) );
  DFFRQX2M \ALU_OUT_reg[10]  ( .D(Com_ALU_OUT[10]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[10]) );
  DFFRQX2M \ALU_OUT_reg[9]  ( .D(Com_ALU_OUT[9]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[9]) );
  DFFRQX2M \ALU_OUT_reg[8]  ( .D(Com_ALU_OUT[8]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[8]) );
  DFFRQX2M \ALU_OUT_reg[7]  ( .D(Com_ALU_OUT[7]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[7]) );
  DFFRQX2M \ALU_OUT_reg[6]  ( .D(Com_ALU_OUT[6]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[6]) );
  DFFRQX2M \ALU_OUT_reg[5]  ( .D(Com_ALU_OUT[5]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[5]) );
  DFFRQX2M \ALU_OUT_reg[4]  ( .D(Com_ALU_OUT[4]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[4]) );
  DFFRQX2M \ALU_OUT_reg[3]  ( .D(Com_ALU_OUT[3]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[3]) );
  DFFRQX2M \ALU_OUT_reg[2]  ( .D(Com_ALU_OUT[2]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[2]) );
  DFFRQX2M \ALU_OUT_reg[1]  ( .D(Com_ALU_OUT[1]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[1]) );
  DFFRQX2M \ALU_OUT_reg[0]  ( .D(Com_ALU_OUT[0]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[0]) );
  NOR3BX2M U3 ( .AN(n15), .B(n151), .C(n112), .Y(n57) );
  NOR3BX2M U4 ( .AN(n15), .B(n101), .C(ALU_FUN[0]), .Y(n39) );
  NOR3X2M U5 ( .A(n3), .B(ALU_FUN[2]), .C(n150), .Y(n40) );
  BUFX2M U8 ( .A(A[7]), .Y(n14) );
  BUFX2M U9 ( .A(A[6]), .Y(n13) );
  BUFX2M U10 ( .A(A[1]), .Y(n8) );
  OAI2BB1X2M U11 ( .A0N(N124), .A1N(n35), .B0(n36), .Y(Com_ALU_OUT[14]) );
  OAI2BB1X2M U12 ( .A0N(N125), .A1N(n35), .B0(n36), .Y(Com_ALU_OUT[15]) );
  OAI2BB1X2M U13 ( .A0N(N121), .A1N(n35), .B0(n36), .Y(Com_ALU_OUT[11]) );
  OAI2BB1X2M U14 ( .A0N(N122), .A1N(n35), .B0(n36), .Y(Com_ALU_OUT[12]) );
  OAI2BB1X2M U15 ( .A0N(N123), .A1N(n35), .B0(n36), .Y(Com_ALU_OUT[13]) );
  OAI2BB1X2M U16 ( .A0N(N119), .A1N(n35), .B0(n36), .Y(Com_ALU_OUT[9]) );
  OAI2BB1X2M U17 ( .A0N(N120), .A1N(n35), .B0(n36), .Y(Com_ALU_OUT[10]) );
  INVX2M U18 ( .A(n53), .Y(n147) );
  INVX2M U19 ( .A(n97), .Y(n146) );
  INVX2M U20 ( .A(n47), .Y(n145) );
  INVX2M U21 ( .A(n102), .Y(n144) );
  OAI2BB2X1M U22 ( .B0(n137), .B1(n47), .A0N(N117), .A1N(n40), .Y(n46) );
  OAI2B11X2M U23 ( .A1N(N109), .A0(n102), .B0(n147), .C0(n146), .Y(n42) );
  OAI21X2M U24 ( .A0(n3), .A1(n112), .B0(n111), .Y(n52) );
  NOR2X2M U25 ( .A(n101), .B(n3), .Y(n53) );
  OAI2B1X2M U26 ( .A1N(n110), .A0(n101), .B0(n111), .Y(n97) );
  NAND2X2M U27 ( .A(EN), .B(n42), .Y(n36) );
  NAND2X2M U28 ( .A(n149), .B(n110), .Y(n47) );
  NAND2X2M U29 ( .A(n113), .B(n110), .Y(n102) );
  INVX2M U30 ( .A(n50), .Y(n148) );
  INVX2M U31 ( .A(n112), .Y(n149) );
  NOR2BX2M U32 ( .AN(n113), .B(n3), .Y(n41) );
  NOR2BX2M U33 ( .AN(n40), .B(n152), .Y(n35) );
  INVX2M U34 ( .A(EN), .Y(n152) );
  AOI31X2M U35 ( .A0(n103), .A1(n104), .A2(n105), .B0(n152), .Y(Com_ALU_OUT[0]) );
  AOI22X1M U36 ( .A0(N101), .A1(n144), .B0(N92), .B1(n41), .Y(n103) );
  AOI222X1M U37 ( .A0(N110), .A1(n40), .B0(n53), .B1(n143), .C0(n7), .C1(n145), 
        .Y(n104) );
  AOI211X2M U38 ( .A0(n8), .A1(n57), .B0(n106), .C0(n107), .Y(n105) );
  OAI2BB1X2M U39 ( .A0N(N127), .A1N(n48), .B0(n114), .Y(n106) );
  AOI31X2M U40 ( .A0(N167), .A1(n15), .A2(n115), .B0(n100), .Y(n114) );
  NOR3X2M U41 ( .A(n150), .B(ALU_FUN[2]), .C(ALU_FUN[0]), .Y(n115) );
  AOI31X2M U42 ( .A0(n90), .A1(n91), .A2(n92), .B0(n152), .Y(Com_ALU_OUT[1])
         );
  AOI222X1M U43 ( .A0(N93), .A1(n41), .B0(N111), .B1(n40), .C0(N102), .C1(n144), .Y(n90) );
  AOI222X1M U44 ( .A0(n8), .A1(n145), .B0(n9), .B1(n57), .C0(n53), .C1(n126), 
        .Y(n91) );
  AOI211X2M U45 ( .A0(n7), .A1(n39), .B0(n93), .C0(n94), .Y(n92) );
  OAI2BB1X2M U46 ( .A0N(N128), .A1N(n48), .B0(n98), .Y(n93) );
  AOI31X2M U47 ( .A0(N168), .A1(n15), .A2(n99), .B0(n100), .Y(n98) );
  NOR3X2M U48 ( .A(n151), .B(ALU_FUN[2]), .C(n150), .Y(n99) );
  AOI31X2M U49 ( .A0(n83), .A1(n84), .A2(n85), .B0(n152), .Y(Com_ALU_OUT[2])
         );
  AOI22X1M U50 ( .A0(N103), .A1(n144), .B0(N94), .B1(n41), .Y(n83) );
  AOI222X1M U51 ( .A0(N112), .A1(n40), .B0(n53), .B1(n142), .C0(n9), .C1(n145), 
        .Y(n84) );
  AOI221XLM U52 ( .A0(n8), .A1(n39), .B0(n10), .B1(n57), .C0(n86), .Y(n85) );
  AOI31X2M U53 ( .A0(n76), .A1(n77), .A2(n78), .B0(n152), .Y(Com_ALU_OUT[3])
         );
  AOI22X1M U54 ( .A0(N104), .A1(n144), .B0(N95), .B1(n41), .Y(n76) );
  AOI222X1M U55 ( .A0(N113), .A1(n40), .B0(n53), .B1(n141), .C0(n10), .C1(n145), .Y(n77) );
  AOI221XLM U56 ( .A0(n9), .A1(n39), .B0(n11), .B1(n57), .C0(n79), .Y(n78) );
  AOI31X2M U57 ( .A0(n69), .A1(n70), .A2(n71), .B0(n152), .Y(Com_ALU_OUT[4])
         );
  AOI22X1M U58 ( .A0(N105), .A1(n144), .B0(N96), .B1(n41), .Y(n69) );
  AOI222X1M U59 ( .A0(N114), .A1(n40), .B0(n53), .B1(n140), .C0(n11), .C1(n145), .Y(n70) );
  AOI221XLM U60 ( .A0(n10), .A1(n39), .B0(n57), .B1(n12), .C0(n72), .Y(n71) );
  AOI31X2M U61 ( .A0(n62), .A1(n63), .A2(n64), .B0(n152), .Y(Com_ALU_OUT[5])
         );
  AOI22X1M U62 ( .A0(N106), .A1(n144), .B0(N97), .B1(n41), .Y(n62) );
  AOI222X1M U63 ( .A0(N115), .A1(n40), .B0(n53), .B1(n139), .C0(n12), .C1(n145), .Y(n63) );
  AOI221XLM U64 ( .A0(n11), .A1(n39), .B0(n57), .B1(n13), .C0(n65), .Y(n64) );
  AOI31X2M U65 ( .A0(n54), .A1(n55), .A2(n56), .B0(n152), .Y(Com_ALU_OUT[6])
         );
  AOI22X1M U66 ( .A0(N107), .A1(n144), .B0(N98), .B1(n41), .Y(n54) );
  AOI221XLM U67 ( .A0(n12), .A1(n39), .B0(n57), .B1(n14), .C0(n58), .Y(n56) );
  AOI222X1M U68 ( .A0(N116), .A1(n40), .B0(n53), .B1(n138), .C0(n145), .C1(n13), .Y(n55) );
  AOI31X2M U69 ( .A0(n43), .A1(n44), .A2(n45), .B0(n152), .Y(Com_ALU_OUT[7])
         );
  AOI22X1M U70 ( .A0(n13), .A1(n39), .B0(n53), .B1(n137), .Y(n43) );
  AOI222X1M U71 ( .A0(n6), .A1(n136), .B0(N134), .B1(n48), .C0(n49), .C1(n133), 
        .Y(n44) );
  AOI221XLM U72 ( .A0(N108), .A1(n144), .B0(N99), .B1(n41), .C0(n46), .Y(n45)
         );
  AOI21X2M U73 ( .A0(n37), .A1(n38), .B0(n152), .Y(Com_ALU_OUT[8]) );
  AOI21X2M U74 ( .A0(N100), .A1(n41), .B0(n42), .Y(n37) );
  AOI22X1M U75 ( .A0(n14), .A1(n39), .B0(N118), .B1(n40), .Y(n38) );
  INVX2M U76 ( .A(n5), .Y(n132) );
  OAI221X1M U77 ( .A0(n9), .A1(n146), .B0(n50), .B1(n142), .C0(n147), .Y(n89)
         );
  OAI221X1M U78 ( .A0(n10), .A1(n146), .B0(n50), .B1(n141), .C0(n147), .Y(n82)
         );
  OAI221X1M U79 ( .A0(n11), .A1(n146), .B0(n50), .B1(n140), .C0(n147), .Y(n75)
         );
  OAI221X1M U80 ( .A0(n12), .A1(n146), .B0(n50), .B1(n139), .C0(n147), .Y(n68)
         );
  OAI221X1M U81 ( .A0(n13), .A1(n146), .B0(n50), .B1(n138), .C0(n147), .Y(n61)
         );
  OAI221X1M U82 ( .A0(n14), .A1(n146), .B0(n137), .B1(n50), .C0(n147), .Y(n49)
         );
  NOR2X2M U83 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n113) );
  NOR2X2M U84 ( .A(n151), .B(n15), .Y(n110) );
  OAI2B2X1M U85 ( .A1N(n4), .A0(n95), .B0(n4), .B1(n96), .Y(n94) );
  AOI221XLM U86 ( .A0(n148), .A1(n126), .B0(n8), .B1(n52), .C0(n145), .Y(n95)
         );
  AOI221XLM U87 ( .A0(n8), .A1(n148), .B0(n97), .B1(n126), .C0(n53), .Y(n96)
         );
  NAND2X2M U88 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n101) );
  NAND2X2M U89 ( .A(ALU_FUN[2]), .B(n150), .Y(n112) );
  INVX2M U90 ( .A(ALU_FUN[0]), .Y(n151) );
  INVX2M U91 ( .A(ALU_FUN[1]), .Y(n150) );
  NAND3X2M U92 ( .A(n113), .B(n151), .C(n15), .Y(n50) );
  INVX2M U93 ( .A(n16), .Y(n128) );
  NAND3X2M U94 ( .A(n113), .B(ALU_FUN[0]), .C(n15), .Y(n111) );
  INVX2M U95 ( .A(n27), .Y(n130) );
  OAI21X2M U96 ( .A0(n59), .A1(n132), .B0(n60), .Y(n58) );
  AOI221XLM U97 ( .A0(n148), .A1(n138), .B0(n13), .B1(n52), .C0(n145), .Y(n59)
         );
  AOI22X1M U98 ( .A0(N133), .A1(n48), .B0(n61), .B1(n132), .Y(n60) );
  OR2X2M U99 ( .A(n15), .B(ALU_FUN[0]), .Y(n3) );
  INVX2M U100 ( .A(n51), .Y(n136) );
  AOI221XLM U101 ( .A0(n52), .A1(n14), .B0(n137), .B1(n148), .C0(n145), .Y(n51) );
  AND4X2M U102 ( .A(N169), .B(n149), .C(n15), .D(n151), .Y(n100) );
  INVX2M U103 ( .A(n8), .Y(n126) );
  INVX2M U104 ( .A(n14), .Y(n137) );
  INVX2M U105 ( .A(n13), .Y(n138) );
  INVX2M U106 ( .A(n7), .Y(n143) );
  INVX2M U107 ( .A(n9), .Y(n142) );
  INVX2M U108 ( .A(n10), .Y(n141) );
  INVX2M U109 ( .A(n12), .Y(n139) );
  INVX2M U110 ( .A(n11), .Y(n140) );
  INVX2M U111 ( .A(n6), .Y(n133) );
  BUFX2M U112 ( .A(B[6]), .Y(n5) );
  BUFX2M U113 ( .A(B[7]), .Y(n6) );
  BUFX2M U114 ( .A(B[1]), .Y(n4) );
  BUFX2M U115 ( .A(A[5]), .Y(n12) );
  OAI21X2M U116 ( .A0(n87), .A1(n129), .B0(n88), .Y(n86) );
  AOI221XLM U117 ( .A0(n148), .A1(n142), .B0(n9), .B1(n52), .C0(n145), .Y(n87)
         );
  AOI22X1M U118 ( .A0(N129), .A1(n48), .B0(n89), .B1(n129), .Y(n88) );
  BUFX2M U119 ( .A(A[4]), .Y(n11) );
  BUFX2M U120 ( .A(A[3]), .Y(n10) );
  OAI21X2M U121 ( .A0(n80), .A1(n131), .B0(n81), .Y(n79) );
  AOI221XLM U122 ( .A0(n148), .A1(n141), .B0(n10), .B1(n52), .C0(n145), .Y(n80) );
  AOI22X1M U123 ( .A0(N130), .A1(n48), .B0(n82), .B1(n131), .Y(n81) );
  BUFX2M U124 ( .A(A[2]), .Y(n9) );
  OAI21X2M U125 ( .A0(n73), .A1(n135), .B0(n74), .Y(n72) );
  AOI221XLM U126 ( .A0(n148), .A1(n140), .B0(n11), .B1(n52), .C0(n145), .Y(n73) );
  AOI22X1M U127 ( .A0(N131), .A1(n48), .B0(n75), .B1(n135), .Y(n74) );
  INVX2M U128 ( .A(B[4]), .Y(n135) );
  BUFX2M U129 ( .A(A[0]), .Y(n7) );
  OAI21X2M U130 ( .A0(n66), .A1(n134), .B0(n67), .Y(n65) );
  AOI221XLM U131 ( .A0(n148), .A1(n139), .B0(n12), .B1(n52), .C0(n145), .Y(n66) );
  AOI22X1M U132 ( .A0(N132), .A1(n48), .B0(n68), .B1(n134), .Y(n67) );
  INVX2M U133 ( .A(B[5]), .Y(n134) );
  OAI2B2X1M U134 ( .A1N(B[0]), .A0(n108), .B0(B[0]), .B1(n109), .Y(n107) );
  AOI221XLM U135 ( .A0(n148), .A1(n143), .B0(n7), .B1(n52), .C0(n145), .Y(n108) );
  AOI221XLM U136 ( .A0(n7), .A1(n148), .B0(n97), .B1(n143), .C0(n53), .Y(n109)
         );
  AND3X2M U137 ( .A(n110), .B(ALU_FUN[1]), .C(n116), .Y(n48) );
  AOI21X2M U138 ( .A0(n117), .A1(n118), .B0(ALU_FUN[2]), .Y(n116) );
  NOR4X1M U139 ( .A(n6), .B(n5), .C(B[5]), .D(B[4]), .Y(n118) );
  NOR4X1M U140 ( .A(B[3]), .B(B[2]), .C(n4), .D(B[0]), .Y(n117) );
  BUFX2M U141 ( .A(ALU_FUN[3]), .Y(n15) );
  INVX2M U142 ( .A(B[0]), .Y(n127) );
  INVX2M U143 ( .A(B[2]), .Y(n129) );
  INVX2M U144 ( .A(B[3]), .Y(n131) );
  NOR2X1M U145 ( .A(n137), .B(n6), .Y(n122) );
  NAND2BX1M U146 ( .AN(B[4]), .B(n11), .Y(n31) );
  NAND2BX1M U147 ( .AN(n11), .B(B[4]), .Y(n20) );
  CLKNAND2X2M U148 ( .A(n31), .B(n20), .Y(n33) );
  NOR2X1M U149 ( .A(n131), .B(n10), .Y(n28) );
  NOR2X1M U150 ( .A(n129), .B(n9), .Y(n19) );
  NOR2X1M U151 ( .A(n127), .B(n7), .Y(n16) );
  CLKNAND2X2M U152 ( .A(n9), .B(n129), .Y(n30) );
  NAND2BX1M U153 ( .AN(n19), .B(n30), .Y(n25) );
  AOI21X1M U154 ( .A0(n16), .A1(n126), .B0(n4), .Y(n17) );
  AOI211X1M U155 ( .A0(n8), .A1(n128), .B0(n25), .C0(n17), .Y(n18) );
  CLKNAND2X2M U156 ( .A(n10), .B(n131), .Y(n29) );
  OAI31X1M U157 ( .A0(n28), .A1(n19), .A2(n18), .B0(n29), .Y(n21) );
  NAND2BX1M U158 ( .AN(n12), .B(B[5]), .Y(n120) );
  OAI211X1M U159 ( .A0(n33), .A1(n21), .B0(n20), .C0(n120), .Y(n22) );
  NAND2BX1M U160 ( .AN(B[5]), .B(n12), .Y(n32) );
  XNOR2X1M U161 ( .A(n13), .B(n5), .Y(n119) );
  AOI32X1M U162 ( .A0(n22), .A1(n32), .A2(n119), .B0(n5), .B1(n138), .Y(n23)
         );
  CLKNAND2X2M U163 ( .A(n6), .B(n137), .Y(n123) );
  OAI21X1M U164 ( .A0(n122), .A1(n23), .B0(n123), .Y(N169) );
  CLKNAND2X2M U165 ( .A(n7), .B(n127), .Y(n26) );
  OA21X1M U166 ( .A0(n26), .A1(n126), .B0(n4), .Y(n24) );
  AOI211X1M U167 ( .A0(n26), .A1(n126), .B0(n25), .C0(n24), .Y(n27) );
  AOI31X1M U168 ( .A0(n130), .A1(n30), .A2(n29), .B0(n28), .Y(n34) );
  OAI2B11X1M U169 ( .A1N(n34), .A0(n33), .B0(n32), .C0(n31), .Y(n121) );
  AOI32X1M U170 ( .A0(n121), .A1(n120), .A2(n119), .B0(n13), .B1(n132), .Y(
        n124) );
  AOI2B1X1M U171 ( .A1N(n124), .A0(n123), .B0(n122), .Y(n125) );
  CLKINVX1M U172 ( .A(n125), .Y(N168) );
  NOR2X1M U173 ( .A(N169), .B(N168), .Y(N167) );
endmodule


module Reg_File_WIDTH8_DEPTH16_ADDR4 ( CLK, RST, WrEn, RdEn, Address, WrData, 
        RdData, RdData_VLD, REG0, REG1, REG2, REG3 );
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input CLK, RST, WrEn, RdEn;
  output RdData_VLD;
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
         \memory[4][0] , N36, N37, N38, N39, N40, N41, N42, N43, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230;
  assign N11 = Address[0];
  assign N12 = Address[1];
  assign N13 = Address[2];
  assign N14 = Address[3];

  DFFRQX2M \memory_reg[13][7]  ( .D(n162), .CK(CLK), .RN(n213), .Q(
        \memory[13][7] ) );
  DFFRQX2M \memory_reg[13][6]  ( .D(n161), .CK(CLK), .RN(n213), .Q(
        \memory[13][6] ) );
  DFFRQX2M \memory_reg[13][5]  ( .D(n160), .CK(CLK), .RN(n212), .Q(
        \memory[13][5] ) );
  DFFRQX2M \memory_reg[13][4]  ( .D(n159), .CK(CLK), .RN(n212), .Q(
        \memory[13][4] ) );
  DFFRQX2M \memory_reg[13][3]  ( .D(n158), .CK(CLK), .RN(n212), .Q(
        \memory[13][3] ) );
  DFFRQX2M \memory_reg[13][2]  ( .D(n157), .CK(CLK), .RN(n212), .Q(
        \memory[13][2] ) );
  DFFRQX2M \memory_reg[13][1]  ( .D(n156), .CK(CLK), .RN(n212), .Q(
        \memory[13][1] ) );
  DFFRQX2M \memory_reg[13][0]  ( .D(n155), .CK(CLK), .RN(n212), .Q(
        \memory[13][0] ) );
  DFFRQX2M \memory_reg[9][7]  ( .D(n130), .CK(CLK), .RN(n210), .Q(
        \memory[9][7] ) );
  DFFRQX2M \memory_reg[9][6]  ( .D(n129), .CK(CLK), .RN(n210), .Q(
        \memory[9][6] ) );
  DFFRQX2M \memory_reg[9][5]  ( .D(n128), .CK(CLK), .RN(n210), .Q(
        \memory[9][5] ) );
  DFFRQX2M \memory_reg[9][4]  ( .D(n127), .CK(CLK), .RN(n210), .Q(
        \memory[9][4] ) );
  DFFRQX2M \memory_reg[9][3]  ( .D(n126), .CK(CLK), .RN(n210), .Q(
        \memory[9][3] ) );
  DFFRQX2M \memory_reg[9][2]  ( .D(n125), .CK(CLK), .RN(n210), .Q(
        \memory[9][2] ) );
  DFFRQX2M \memory_reg[9][1]  ( .D(n124), .CK(CLK), .RN(n210), .Q(
        \memory[9][1] ) );
  DFFRQX2M \memory_reg[9][0]  ( .D(n123), .CK(CLK), .RN(n210), .Q(
        \memory[9][0] ) );
  DFFRQX2M \memory_reg[5][7]  ( .D(n98), .CK(CLK), .RN(n208), .Q(
        \memory[5][7] ) );
  DFFRQX2M \memory_reg[5][6]  ( .D(n97), .CK(CLK), .RN(n208), .Q(
        \memory[5][6] ) );
  DFFRQX2M \memory_reg[5][5]  ( .D(n96), .CK(CLK), .RN(n208), .Q(
        \memory[5][5] ) );
  DFFRQX2M \memory_reg[5][4]  ( .D(n95), .CK(CLK), .RN(n208), .Q(
        \memory[5][4] ) );
  DFFRQX2M \memory_reg[5][3]  ( .D(n94), .CK(CLK), .RN(n208), .Q(
        \memory[5][3] ) );
  DFFRQX2M \memory_reg[5][2]  ( .D(n93), .CK(CLK), .RN(n208), .Q(
        \memory[5][2] ) );
  DFFRQX2M \memory_reg[5][1]  ( .D(n92), .CK(CLK), .RN(n208), .Q(
        \memory[5][1] ) );
  DFFRQX2M \memory_reg[5][0]  ( .D(n91), .CK(CLK), .RN(n208), .Q(
        \memory[5][0] ) );
  DFFRQX2M \memory_reg[15][7]  ( .D(n178), .CK(CLK), .RN(n205), .Q(
        \memory[15][7] ) );
  DFFRQX2M \memory_reg[15][6]  ( .D(n177), .CK(CLK), .RN(n214), .Q(
        \memory[15][6] ) );
  DFFRQX2M \memory_reg[15][5]  ( .D(n176), .CK(CLK), .RN(n214), .Q(
        \memory[15][5] ) );
  DFFRQX2M \memory_reg[15][4]  ( .D(n175), .CK(CLK), .RN(n213), .Q(
        \memory[15][4] ) );
  DFFRQX2M \memory_reg[15][3]  ( .D(n174), .CK(CLK), .RN(n213), .Q(
        \memory[15][3] ) );
  DFFRQX2M \memory_reg[15][2]  ( .D(n173), .CK(CLK), .RN(n213), .Q(
        \memory[15][2] ) );
  DFFRQX2M \memory_reg[15][1]  ( .D(n172), .CK(CLK), .RN(n213), .Q(
        \memory[15][1] ) );
  DFFRQX2M \memory_reg[15][0]  ( .D(n171), .CK(CLK), .RN(n213), .Q(
        \memory[15][0] ) );
  DFFRQX2M \memory_reg[11][7]  ( .D(n146), .CK(CLK), .RN(n212), .Q(
        \memory[11][7] ) );
  DFFRQX2M \memory_reg[11][6]  ( .D(n145), .CK(CLK), .RN(n211), .Q(
        \memory[11][6] ) );
  DFFRQX2M \memory_reg[11][5]  ( .D(n144), .CK(CLK), .RN(n211), .Q(
        \memory[11][5] ) );
  DFFRQX2M \memory_reg[11][4]  ( .D(n143), .CK(CLK), .RN(n211), .Q(
        \memory[11][4] ) );
  DFFRQX2M \memory_reg[11][3]  ( .D(n142), .CK(CLK), .RN(n211), .Q(
        \memory[11][3] ) );
  DFFRQX2M \memory_reg[11][2]  ( .D(n141), .CK(CLK), .RN(n211), .Q(
        \memory[11][2] ) );
  DFFRQX2M \memory_reg[11][1]  ( .D(n140), .CK(CLK), .RN(n211), .Q(
        \memory[11][1] ) );
  DFFRQX2M \memory_reg[11][0]  ( .D(n139), .CK(CLK), .RN(n211), .Q(
        \memory[11][0] ) );
  DFFRQX2M \memory_reg[7][7]  ( .D(n114), .CK(CLK), .RN(n209), .Q(
        \memory[7][7] ) );
  DFFRQX2M \memory_reg[7][6]  ( .D(n113), .CK(CLK), .RN(n209), .Q(
        \memory[7][6] ) );
  DFFRQX2M \memory_reg[7][5]  ( .D(n112), .CK(CLK), .RN(n209), .Q(
        \memory[7][5] ) );
  DFFRQX2M \memory_reg[7][4]  ( .D(n111), .CK(CLK), .RN(n209), .Q(
        \memory[7][4] ) );
  DFFRQX2M \memory_reg[7][3]  ( .D(n110), .CK(CLK), .RN(n209), .Q(
        \memory[7][3] ) );
  DFFRQX2M \memory_reg[7][2]  ( .D(n109), .CK(CLK), .RN(n209), .Q(
        \memory[7][2] ) );
  DFFRQX2M \memory_reg[7][1]  ( .D(n108), .CK(CLK), .RN(n209), .Q(
        \memory[7][1] ) );
  DFFRQX2M \memory_reg[7][0]  ( .D(n107), .CK(CLK), .RN(n209), .Q(
        \memory[7][0] ) );
  DFFRQX2M \memory_reg[14][7]  ( .D(n170), .CK(CLK), .RN(n213), .Q(
        \memory[14][7] ) );
  DFFRQX2M \memory_reg[14][6]  ( .D(n169), .CK(CLK), .RN(n213), .Q(
        \memory[14][6] ) );
  DFFRQX2M \memory_reg[14][5]  ( .D(n168), .CK(CLK), .RN(n213), .Q(
        \memory[14][5] ) );
  DFFRQX2M \memory_reg[14][4]  ( .D(n167), .CK(CLK), .RN(n213), .Q(
        \memory[14][4] ) );
  DFFRQX2M \memory_reg[14][3]  ( .D(n166), .CK(CLK), .RN(n213), .Q(
        \memory[14][3] ) );
  DFFRQX2M \memory_reg[14][2]  ( .D(n165), .CK(CLK), .RN(n213), .Q(
        \memory[14][2] ) );
  DFFRQX2M \memory_reg[14][1]  ( .D(n164), .CK(CLK), .RN(n213), .Q(
        \memory[14][1] ) );
  DFFRQX2M \memory_reg[14][0]  ( .D(n163), .CK(CLK), .RN(n213), .Q(
        \memory[14][0] ) );
  DFFRQX2M \memory_reg[10][7]  ( .D(n138), .CK(CLK), .RN(n211), .Q(
        \memory[10][7] ) );
  DFFRQX2M \memory_reg[10][6]  ( .D(n137), .CK(CLK), .RN(n211), .Q(
        \memory[10][6] ) );
  DFFRQX2M \memory_reg[10][5]  ( .D(n136), .CK(CLK), .RN(n211), .Q(
        \memory[10][5] ) );
  DFFRQX2M \memory_reg[10][4]  ( .D(n135), .CK(CLK), .RN(n211), .Q(
        \memory[10][4] ) );
  DFFRQX2M \memory_reg[10][3]  ( .D(n134), .CK(CLK), .RN(n211), .Q(
        \memory[10][3] ) );
  DFFRQX2M \memory_reg[10][2]  ( .D(n133), .CK(CLK), .RN(n211), .Q(
        \memory[10][2] ) );
  DFFRQX2M \memory_reg[10][1]  ( .D(n132), .CK(CLK), .RN(n211), .Q(
        \memory[10][1] ) );
  DFFRQX2M \memory_reg[10][0]  ( .D(n131), .CK(CLK), .RN(n211), .Q(
        \memory[10][0] ) );
  DFFRQX2M \memory_reg[6][7]  ( .D(n106), .CK(CLK), .RN(n209), .Q(
        \memory[6][7] ) );
  DFFRQX2M \memory_reg[6][6]  ( .D(n105), .CK(CLK), .RN(n209), .Q(
        \memory[6][6] ) );
  DFFRQX2M \memory_reg[6][5]  ( .D(n104), .CK(CLK), .RN(n209), .Q(
        \memory[6][5] ) );
  DFFRQX2M \memory_reg[6][4]  ( .D(n103), .CK(CLK), .RN(n209), .Q(
        \memory[6][4] ) );
  DFFRQX2M \memory_reg[6][3]  ( .D(n102), .CK(CLK), .RN(n209), .Q(
        \memory[6][3] ) );
  DFFRQX2M \memory_reg[6][2]  ( .D(n101), .CK(CLK), .RN(n208), .Q(
        \memory[6][2] ) );
  DFFRQX2M \memory_reg[6][1]  ( .D(n100), .CK(CLK), .RN(n208), .Q(
        \memory[6][1] ) );
  DFFRQX2M \memory_reg[6][0]  ( .D(n99), .CK(CLK), .RN(n208), .Q(
        \memory[6][0] ) );
  DFFRQX2M \memory_reg[12][7]  ( .D(n154), .CK(CLK), .RN(n212), .Q(
        \memory[12][7] ) );
  DFFRQX2M \memory_reg[12][6]  ( .D(n153), .CK(CLK), .RN(n212), .Q(
        \memory[12][6] ) );
  DFFRQX2M \memory_reg[12][5]  ( .D(n152), .CK(CLK), .RN(n212), .Q(
        \memory[12][5] ) );
  DFFRQX2M \memory_reg[12][4]  ( .D(n151), .CK(CLK), .RN(n212), .Q(
        \memory[12][4] ) );
  DFFRQX2M \memory_reg[12][3]  ( .D(n150), .CK(CLK), .RN(n212), .Q(
        \memory[12][3] ) );
  DFFRQX2M \memory_reg[12][2]  ( .D(n149), .CK(CLK), .RN(n212), .Q(
        \memory[12][2] ) );
  DFFRQX2M \memory_reg[12][1]  ( .D(n148), .CK(CLK), .RN(n212), .Q(
        \memory[12][1] ) );
  DFFRQX2M \memory_reg[12][0]  ( .D(n147), .CK(CLK), .RN(n212), .Q(
        \memory[12][0] ) );
  DFFRQX2M \memory_reg[8][7]  ( .D(n122), .CK(CLK), .RN(n210), .Q(
        \memory[8][7] ) );
  DFFRQX2M \memory_reg[8][6]  ( .D(n121), .CK(CLK), .RN(n210), .Q(
        \memory[8][6] ) );
  DFFRQX2M \memory_reg[8][5]  ( .D(n120), .CK(CLK), .RN(n210), .Q(
        \memory[8][5] ) );
  DFFRQX2M \memory_reg[8][4]  ( .D(n119), .CK(CLK), .RN(n210), .Q(
        \memory[8][4] ) );
  DFFRQX2M \memory_reg[8][3]  ( .D(n118), .CK(CLK), .RN(n210), .Q(
        \memory[8][3] ) );
  DFFRQX2M \memory_reg[8][2]  ( .D(n117), .CK(CLK), .RN(n210), .Q(
        \memory[8][2] ) );
  DFFRQX2M \memory_reg[8][1]  ( .D(n116), .CK(CLK), .RN(n210), .Q(
        \memory[8][1] ) );
  DFFRQX2M \memory_reg[8][0]  ( .D(n115), .CK(CLK), .RN(n209), .Q(
        \memory[8][0] ) );
  DFFRQX2M \memory_reg[4][7]  ( .D(n90), .CK(CLK), .RN(n208), .Q(
        \memory[4][7] ) );
  DFFRQX2M \memory_reg[4][6]  ( .D(n89), .CK(CLK), .RN(n208), .Q(
        \memory[4][6] ) );
  DFFRQX2M \memory_reg[4][5]  ( .D(n88), .CK(CLK), .RN(n208), .Q(
        \memory[4][5] ) );
  DFFRQX2M \memory_reg[4][4]  ( .D(n87), .CK(CLK), .RN(n208), .Q(
        \memory[4][4] ) );
  DFFRQX2M \memory_reg[4][3]  ( .D(n86), .CK(CLK), .RN(n207), .Q(
        \memory[4][3] ) );
  DFFRQX2M \memory_reg[4][2]  ( .D(n85), .CK(CLK), .RN(n207), .Q(
        \memory[4][2] ) );
  DFFRQX2M \memory_reg[4][1]  ( .D(n84), .CK(CLK), .RN(n207), .Q(
        \memory[4][1] ) );
  DFFRQX2M \memory_reg[4][0]  ( .D(n83), .CK(CLK), .RN(n207), .Q(
        \memory[4][0] ) );
  DFFRQX2M \RdData_reg[7]  ( .D(n49), .CK(CLK), .RN(n205), .Q(RdData[7]) );
  DFFRQX2M \RdData_reg[6]  ( .D(n48), .CK(CLK), .RN(n205), .Q(RdData[6]) );
  DFFRQX2M \RdData_reg[5]  ( .D(n47), .CK(CLK), .RN(n205), .Q(RdData[5]) );
  DFFRQX2M \RdData_reg[4]  ( .D(n46), .CK(CLK), .RN(n205), .Q(RdData[4]) );
  DFFRQX2M \RdData_reg[3]  ( .D(n45), .CK(CLK), .RN(n205), .Q(RdData[3]) );
  DFFRQX2M \RdData_reg[2]  ( .D(n44), .CK(CLK), .RN(n205), .Q(RdData[2]) );
  DFFRQX2M \RdData_reg[1]  ( .D(n43), .CK(CLK), .RN(n205), .Q(RdData[1]) );
  DFFRQX2M \RdData_reg[0]  ( .D(n42), .CK(CLK), .RN(n209), .Q(RdData[0]) );
  DFFRQX2M \memory_reg[3][0]  ( .D(n75), .CK(CLK), .RN(n207), .Q(REG3[0]) );
  DFFRQX2M \memory_reg[2][0]  ( .D(n67), .CK(CLK), .RN(n206), .Q(REG2[0]) );
  DFFRQX2M \memory_reg[2][1]  ( .D(n68), .CK(CLK), .RN(n206), .Q(REG2[1]) );
  DFFRQX2M \memory_reg[3][2]  ( .D(n77), .CK(CLK), .RN(n207), .Q(REG3[2]) );
  DFFRQX2M \memory_reg[3][7]  ( .D(n82), .CK(CLK), .RN(n207), .Q(REG3[7]) );
  DFFRQX2M \memory_reg[3][3]  ( .D(n78), .CK(CLK), .RN(n207), .Q(REG3[3]) );
  DFFRQX2M \memory_reg[3][6]  ( .D(n81), .CK(CLK), .RN(n207), .Q(REG3[6]) );
  DFFRQX2M \memory_reg[3][4]  ( .D(n79), .CK(CLK), .RN(n207), .Q(REG3[4]) );
  DFFSQX2M \memory_reg[3][5]  ( .D(n80), .CK(CLK), .SN(n205), .Q(REG3[5]) );
  DFFRQX2M \memory_reg[3][1]  ( .D(n76), .CK(CLK), .RN(n207), .Q(REG3[1]) );
  DFFSQX2M \memory_reg[2][7]  ( .D(n74), .CK(CLK), .SN(n205), .Q(REG2[7]) );
  DFFRQX2M \memory_reg[2][3]  ( .D(n70), .CK(CLK), .RN(n206), .Q(REG2[3]) );
  DFFRQX2M \memory_reg[2][4]  ( .D(n71), .CK(CLK), .RN(n207), .Q(REG2[4]) );
  DFFRQX2M \memory_reg[2][2]  ( .D(n69), .CK(CLK), .RN(n207), .Q(REG2[2]) );
  DFFRQX2M \memory_reg[2][6]  ( .D(n73), .CK(CLK), .RN(n207), .Q(REG2[6]) );
  DFFRQX2M \memory_reg[0][1]  ( .D(n52), .CK(CLK), .RN(n205), .Q(REG0[1]) );
  DFFRQX2M \memory_reg[0][0]  ( .D(n51), .CK(CLK), .RN(n205), .Q(REG0[0]) );
  DFFRQX2M \memory_reg[0][2]  ( .D(n53), .CK(CLK), .RN(n205), .Q(REG0[2]) );
  DFFRQX2M \memory_reg[0][3]  ( .D(n54), .CK(CLK), .RN(n206), .Q(REG0[3]) );
  DFFRQX2M \memory_reg[0][4]  ( .D(n55), .CK(CLK), .RN(n205), .Q(REG0[4]) );
  DFFRQX2M \memory_reg[0][5]  ( .D(n56), .CK(CLK), .RN(n206), .Q(REG0[5]) );
  DFFRQX2M \memory_reg[0][7]  ( .D(n58), .CK(CLK), .RN(n206), .Q(REG0[7]) );
  DFFRQX2M \memory_reg[0][6]  ( .D(n57), .CK(CLK), .RN(n206), .Q(REG0[6]) );
  DFFRQX2M \memory_reg[1][7]  ( .D(n66), .CK(CLK), .RN(n206), .Q(REG1[7]) );
  DFFRQX2M \memory_reg[1][6]  ( .D(n65), .CK(CLK), .RN(n206), .Q(REG1[6]) );
  DFFRQX2M \memory_reg[1][1]  ( .D(n60), .CK(CLK), .RN(n206), .Q(REG1[1]) );
  DFFRQX2M \memory_reg[1][4]  ( .D(n63), .CK(CLK), .RN(n206), .Q(REG1[4]) );
  DFFRQX2M \memory_reg[1][5]  ( .D(n64), .CK(CLK), .RN(n206), .Q(REG1[5]) );
  DFFRQX2M \memory_reg[2][5]  ( .D(n72), .CK(CLK), .RN(n207), .Q(REG2[5]) );
  DFFRQX2M \memory_reg[1][2]  ( .D(n61), .CK(CLK), .RN(n206), .Q(REG1[2]) );
  DFFRQX2M \memory_reg[1][3]  ( .D(n62), .CK(CLK), .RN(n206), .Q(REG1[3]) );
  DFFRQX2M \memory_reg[1][0]  ( .D(n59), .CK(CLK), .RN(n206), .Q(REG1[0]) );
  DFFRQX1M RdData_VLD_reg ( .D(n50), .CK(CLK), .RN(n205), .Q(RdData_VLD) );
  NOR2X2M U3 ( .A(n204), .B(N13), .Y(n21) );
  NOR2X2M U4 ( .A(n199), .B(N13), .Y(n16) );
  NOR2X2M U5 ( .A(n228), .B(n204), .Y(n27) );
  INVX2M U6 ( .A(n200), .Y(n201) );
  INVX2M U7 ( .A(n198), .Y(n199) );
  INVX2M U8 ( .A(n200), .Y(n202) );
  BUFX2M U9 ( .A(n203), .Y(n200) );
  NAND2X2M U10 ( .A(n24), .B(n35), .Y(n39) );
  NAND2X2M U11 ( .A(n24), .B(n19), .Y(n25) );
  BUFX2M U12 ( .A(n204), .Y(n198) );
  NOR2X2M U13 ( .A(n228), .B(n199), .Y(n24) );
  NAND2X2M U14 ( .A(n16), .B(n35), .Y(n34) );
  NAND2X2M U15 ( .A(n21), .B(n35), .Y(n37) );
  NAND2X2M U16 ( .A(n21), .B(n17), .Y(n20) );
  NAND2X2M U17 ( .A(n21), .B(n19), .Y(n22) );
  NAND2X2M U18 ( .A(n24), .B(n17), .Y(n23) );
  NAND2X2M U19 ( .A(n33), .B(n16), .Y(n32) );
  NAND2X2M U20 ( .A(n33), .B(n21), .Y(n36) );
  NAND2X2M U21 ( .A(n19), .B(n16), .Y(n18) );
  NAND2X2M U22 ( .A(n33), .B(n24), .Y(n38) );
  NAND2X2M U23 ( .A(n33), .B(n27), .Y(n40) );
  NAND2X2M U24 ( .A(n17), .B(n27), .Y(n26) );
  NAND2X2M U25 ( .A(n19), .B(n27), .Y(n29) );
  NAND2X2M U26 ( .A(n16), .B(n17), .Y(n15) );
  NAND2X2M U27 ( .A(n27), .B(n35), .Y(n14) );
  AND2X2M U28 ( .A(n41), .B(N11), .Y(n35) );
  AND2X2M U29 ( .A(n28), .B(N11), .Y(n19) );
  INVX2M U30 ( .A(n31), .Y(n229) );
  BUFX2M U31 ( .A(n219), .Y(n205) );
  BUFX2M U32 ( .A(n219), .Y(n206) );
  BUFX2M U33 ( .A(n218), .Y(n207) );
  BUFX2M U34 ( .A(n218), .Y(n208) );
  BUFX2M U35 ( .A(n217), .Y(n209) );
  BUFX2M U36 ( .A(n217), .Y(n210) );
  BUFX2M U37 ( .A(n216), .Y(n211) );
  BUFX2M U38 ( .A(n216), .Y(n212) );
  BUFX2M U39 ( .A(n215), .Y(n213) );
  BUFX2M U40 ( .A(n215), .Y(n214) );
  NAND2X2M U41 ( .A(RdEn), .B(n230), .Y(n31) );
  NOR2X2M U42 ( .A(n230), .B(RdEn), .Y(n30) );
  AND2X2M U43 ( .A(n28), .B(n203), .Y(n17) );
  NOR2BX2M U44 ( .AN(n30), .B(N14), .Y(n41) );
  AND2X2M U45 ( .A(n41), .B(n203), .Y(n33) );
  INVX2M U46 ( .A(N13), .Y(n228) );
  AND2X2M U47 ( .A(N14), .B(n30), .Y(n28) );
  INVX2M U48 ( .A(WrEn), .Y(n230) );
  BUFX2M U49 ( .A(RST), .Y(n218) );
  BUFX2M U50 ( .A(RST), .Y(n217) );
  BUFX2M U51 ( .A(RST), .Y(n216) );
  BUFX2M U52 ( .A(RST), .Y(n215) );
  BUFX2M U53 ( .A(RST), .Y(n219) );
  AO22X1M U54 ( .A0(N43), .A1(n229), .B0(RdData[0]), .B1(n31), .Y(n42) );
  MX4X1M U55 ( .A(n4), .B(n2), .C(n3), .D(n1), .S0(N14), .S1(N13), .Y(N43) );
  MX4X1M U56 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(N11), 
        .S1(n199), .Y(n4) );
  MX4X1M U57 ( .A(\memory[8][0] ), .B(\memory[9][0] ), .C(\memory[10][0] ), 
        .D(\memory[11][0] ), .S0(N11), .S1(n199), .Y(n2) );
  MX4X1M U58 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n201), 
        .S1(n199), .Y(n8) );
  MX4X1M U59 ( .A(\memory[4][0] ), .B(\memory[5][0] ), .C(\memory[6][0] ), .D(
        \memory[7][0] ), .S0(N11), .S1(n199), .Y(n3) );
  MX4X1M U60 ( .A(\memory[4][1] ), .B(\memory[5][1] ), .C(\memory[6][1] ), .D(
        \memory[7][1] ), .S0(n201), .S1(n199), .Y(n7) );
  MX4X1M U61 ( .A(\memory[4][2] ), .B(\memory[5][2] ), .C(\memory[6][2] ), .D(
        \memory[7][2] ), .S0(n201), .S1(N12), .Y(n11) );
  MX4X1M U62 ( .A(\memory[4][3] ), .B(\memory[5][3] ), .C(\memory[6][3] ), .D(
        \memory[7][3] ), .S0(n201), .S1(N12), .Y(n180) );
  MX4X1M U63 ( .A(\memory[4][4] ), .B(\memory[5][4] ), .C(\memory[6][4] ), .D(
        \memory[7][4] ), .S0(n201), .S1(N12), .Y(n184) );
  MX4X1M U64 ( .A(\memory[4][5] ), .B(\memory[5][5] ), .C(\memory[6][5] ), .D(
        \memory[7][5] ), .S0(n202), .S1(N12), .Y(n188) );
  MX4X1M U65 ( .A(\memory[4][6] ), .B(\memory[5][6] ), .C(\memory[6][6] ), .D(
        \memory[7][6] ), .S0(n202), .S1(N12), .Y(n192) );
  MX4X1M U66 ( .A(\memory[4][7] ), .B(\memory[5][7] ), .C(\memory[6][7] ), .D(
        \memory[7][7] ), .S0(n202), .S1(N12), .Y(n196) );
  MX4X1M U67 ( .A(\memory[12][0] ), .B(\memory[13][0] ), .C(\memory[14][0] ), 
        .D(\memory[15][0] ), .S0(n202), .S1(n199), .Y(n1) );
  MX4X1M U68 ( .A(\memory[12][2] ), .B(\memory[13][2] ), .C(\memory[14][2] ), 
        .D(\memory[15][2] ), .S0(n201), .S1(n199), .Y(n9) );
  MX4X1M U69 ( .A(\memory[12][3] ), .B(\memory[13][3] ), .C(\memory[14][3] ), 
        .D(\memory[15][3] ), .S0(n201), .S1(n199), .Y(n13) );
  MX4X1M U70 ( .A(\memory[12][4] ), .B(\memory[13][4] ), .C(\memory[14][4] ), 
        .D(\memory[15][4] ), .S0(n201), .S1(N12), .Y(n182) );
  MX4X1M U71 ( .A(\memory[12][5] ), .B(\memory[13][5] ), .C(\memory[14][5] ), 
        .D(\memory[15][5] ), .S0(n202), .S1(n199), .Y(n186) );
  MX4X1M U72 ( .A(\memory[12][6] ), .B(\memory[13][6] ), .C(\memory[14][6] ), 
        .D(\memory[15][6] ), .S0(n202), .S1(n199), .Y(n190) );
  MX4X1M U73 ( .A(\memory[12][7] ), .B(\memory[13][7] ), .C(\memory[14][7] ), 
        .D(\memory[15][7] ), .S0(n202), .S1(n199), .Y(n194) );
  AO22X1M U74 ( .A0(N42), .A1(n229), .B0(RdData[1]), .B1(n31), .Y(n43) );
  MX4X1M U75 ( .A(n8), .B(n6), .C(n7), .D(n5), .S0(N14), .S1(N13), .Y(N42) );
  MX4X1M U76 ( .A(\memory[8][1] ), .B(\memory[9][1] ), .C(\memory[10][1] ), 
        .D(\memory[11][1] ), .S0(N11), .S1(n199), .Y(n6) );
  MX4X1M U77 ( .A(\memory[12][1] ), .B(\memory[13][1] ), .C(\memory[14][1] ), 
        .D(\memory[15][1] ), .S0(n201), .S1(n199), .Y(n5) );
  AO22X1M U78 ( .A0(N41), .A1(n229), .B0(RdData[2]), .B1(n31), .Y(n44) );
  MX4X1M U79 ( .A(n12), .B(n10), .C(n11), .D(n9), .S0(N14), .S1(N13), .Y(N41)
         );
  MX4X1M U80 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n201), 
        .S1(N12), .Y(n12) );
  MX4X1M U81 ( .A(\memory[8][2] ), .B(\memory[9][2] ), .C(\memory[10][2] ), 
        .D(\memory[11][2] ), .S0(n201), .S1(N12), .Y(n10) );
  AO22X1M U82 ( .A0(N40), .A1(n229), .B0(RdData[3]), .B1(n31), .Y(n45) );
  MX4X1M U83 ( .A(n181), .B(n179), .C(n180), .D(n13), .S0(N14), .S1(N13), .Y(
        N40) );
  MX4X1M U84 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n201), 
        .S1(N12), .Y(n181) );
  MX4X1M U85 ( .A(\memory[8][3] ), .B(\memory[9][3] ), .C(\memory[10][3] ), 
        .D(\memory[11][3] ), .S0(n201), .S1(N12), .Y(n179) );
  AO22X1M U86 ( .A0(N39), .A1(n229), .B0(RdData[4]), .B1(n31), .Y(n46) );
  MX4X1M U87 ( .A(n185), .B(n183), .C(n184), .D(n182), .S0(N14), .S1(N13), .Y(
        N39) );
  MX4X1M U88 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(n202), 
        .S1(N12), .Y(n185) );
  MX4X1M U89 ( .A(\memory[8][4] ), .B(\memory[9][4] ), .C(\memory[10][4] ), 
        .D(\memory[11][4] ), .S0(n201), .S1(N12), .Y(n183) );
  AO22X1M U90 ( .A0(N38), .A1(n229), .B0(RdData[5]), .B1(n31), .Y(n47) );
  MX4X1M U91 ( .A(n189), .B(n187), .C(n188), .D(n186), .S0(N14), .S1(N13), .Y(
        N38) );
  MX4X1M U92 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(n202), 
        .S1(N12), .Y(n189) );
  MX4X1M U93 ( .A(\memory[8][5] ), .B(\memory[9][5] ), .C(\memory[10][5] ), 
        .D(\memory[11][5] ), .S0(n202), .S1(N12), .Y(n187) );
  AO22X1M U94 ( .A0(N37), .A1(n229), .B0(RdData[6]), .B1(n31), .Y(n48) );
  MX4X1M U95 ( .A(n193), .B(n191), .C(n192), .D(n190), .S0(N14), .S1(N13), .Y(
        N37) );
  MX4X1M U96 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(n202), 
        .S1(N12), .Y(n193) );
  MX4X1M U97 ( .A(\memory[8][6] ), .B(\memory[9][6] ), .C(\memory[10][6] ), 
        .D(\memory[11][6] ), .S0(n202), .S1(N12), .Y(n191) );
  AO22X1M U98 ( .A0(N36), .A1(n229), .B0(RdData[7]), .B1(n31), .Y(n49) );
  MX4X1M U99 ( .A(n197), .B(n195), .C(n196), .D(n194), .S0(N14), .S1(N13), .Y(
        N36) );
  MX4X1M U100 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(n202), 
        .S1(N12), .Y(n197) );
  MX4X1M U101 ( .A(\memory[8][7] ), .B(\memory[9][7] ), .C(\memory[10][7] ), 
        .D(\memory[11][7] ), .S0(n202), .S1(N12), .Y(n195) );
  INVX2M U102 ( .A(N11), .Y(n203) );
  INVX2M U103 ( .A(WrData[1]), .Y(n226) );
  INVX2M U104 ( .A(WrData[0]), .Y(n227) );
  INVX2M U105 ( .A(WrData[2]), .Y(n225) );
  INVX2M U106 ( .A(WrData[3]), .Y(n224) );
  INVX2M U107 ( .A(WrData[4]), .Y(n223) );
  INVX2M U108 ( .A(WrData[5]), .Y(n222) );
  INVX2M U109 ( .A(WrData[6]), .Y(n221) );
  INVX2M U110 ( .A(WrData[7]), .Y(n220) );
  OAI2BB2X1M U111 ( .B0(n15), .B1(n227), .A0N(\memory[8][0] ), .A1N(n15), .Y(
        n115) );
  OAI2BB2X1M U112 ( .B0(n15), .B1(n226), .A0N(\memory[8][1] ), .A1N(n15), .Y(
        n116) );
  OAI2BB2X1M U113 ( .B0(n14), .B1(n227), .A0N(\memory[7][0] ), .A1N(n14), .Y(
        n107) );
  OAI2BB2X1M U114 ( .B0(n14), .B1(n226), .A0N(\memory[7][1] ), .A1N(n14), .Y(
        n108) );
  OAI2BB2X1M U115 ( .B0(n14), .B1(n225), .A0N(\memory[7][2] ), .A1N(n14), .Y(
        n109) );
  OAI2BB2X1M U116 ( .B0(n14), .B1(n224), .A0N(\memory[7][3] ), .A1N(n14), .Y(
        n110) );
  OAI2BB2X1M U117 ( .B0(n14), .B1(n223), .A0N(\memory[7][4] ), .A1N(n14), .Y(
        n111) );
  OAI2BB2X1M U118 ( .B0(n14), .B1(n222), .A0N(\memory[7][5] ), .A1N(n14), .Y(
        n112) );
  OAI2BB2X1M U119 ( .B0(n14), .B1(n221), .A0N(\memory[7][6] ), .A1N(n14), .Y(
        n113) );
  OAI2BB2X1M U120 ( .B0(n14), .B1(n220), .A0N(\memory[7][7] ), .A1N(n14), .Y(
        n114) );
  OAI2BB2X1M U121 ( .B0(n227), .B1(n34), .A0N(REG1[0]), .A1N(n34), .Y(n59) );
  OAI2BB2X1M U122 ( .B0(n226), .B1(n34), .A0N(REG1[1]), .A1N(n34), .Y(n60) );
  OAI2BB2X1M U123 ( .B0(n225), .B1(n34), .A0N(REG1[2]), .A1N(n34), .Y(n61) );
  OAI2BB2X1M U124 ( .B0(n224), .B1(n34), .A0N(REG1[3]), .A1N(n34), .Y(n62) );
  OAI2BB2X1M U125 ( .B0(n223), .B1(n34), .A0N(REG1[4]), .A1N(n34), .Y(n63) );
  OAI2BB2X1M U126 ( .B0(n222), .B1(n34), .A0N(REG1[5]), .A1N(n34), .Y(n64) );
  OAI2BB2X1M U127 ( .B0(n221), .B1(n34), .A0N(REG1[6]), .A1N(n34), .Y(n65) );
  OAI2BB2X1M U128 ( .B0(n220), .B1(n34), .A0N(REG1[7]), .A1N(n34), .Y(n66) );
  OAI2BB2X1M U129 ( .B0(n227), .B1(n37), .A0N(REG3[0]), .A1N(n37), .Y(n75) );
  OAI2BB2X1M U130 ( .B0(n226), .B1(n37), .A0N(REG3[1]), .A1N(n37), .Y(n76) );
  OAI2BB2X1M U131 ( .B0(n225), .B1(n37), .A0N(REG3[2]), .A1N(n37), .Y(n77) );
  OAI2BB2X1M U132 ( .B0(n224), .B1(n37), .A0N(REG3[3]), .A1N(n37), .Y(n78) );
  OAI2BB2X1M U133 ( .B0(n223), .B1(n37), .A0N(REG3[4]), .A1N(n37), .Y(n79) );
  OAI2BB2X1M U134 ( .B0(n221), .B1(n37), .A0N(REG3[6]), .A1N(n37), .Y(n81) );
  OAI2BB2X1M U135 ( .B0(n220), .B1(n37), .A0N(REG3[7]), .A1N(n37), .Y(n82) );
  OAI2BB2X1M U136 ( .B0(n227), .B1(n39), .A0N(\memory[5][0] ), .A1N(n39), .Y(
        n91) );
  OAI2BB2X1M U137 ( .B0(n226), .B1(n39), .A0N(\memory[5][1] ), .A1N(n39), .Y(
        n92) );
  OAI2BB2X1M U138 ( .B0(n225), .B1(n39), .A0N(\memory[5][2] ), .A1N(n39), .Y(
        n93) );
  OAI2BB2X1M U139 ( .B0(n224), .B1(n39), .A0N(\memory[5][3] ), .A1N(n39), .Y(
        n94) );
  OAI2BB2X1M U140 ( .B0(n223), .B1(n39), .A0N(\memory[5][4] ), .A1N(n39), .Y(
        n95) );
  OAI2BB2X1M U141 ( .B0(n222), .B1(n39), .A0N(\memory[5][5] ), .A1N(n39), .Y(
        n96) );
  OAI2BB2X1M U142 ( .B0(n221), .B1(n39), .A0N(\memory[5][6] ), .A1N(n39), .Y(
        n97) );
  OAI2BB2X1M U143 ( .B0(n220), .B1(n39), .A0N(\memory[5][7] ), .A1N(n39), .Y(
        n98) );
  OAI2BB2X1M U144 ( .B0(n227), .B1(n20), .A0N(\memory[10][0] ), .A1N(n20), .Y(
        n131) );
  OAI2BB2X1M U145 ( .B0(n226), .B1(n20), .A0N(\memory[10][1] ), .A1N(n20), .Y(
        n132) );
  OAI2BB2X1M U146 ( .B0(n225), .B1(n20), .A0N(\memory[10][2] ), .A1N(n20), .Y(
        n133) );
  OAI2BB2X1M U147 ( .B0(n224), .B1(n20), .A0N(\memory[10][3] ), .A1N(n20), .Y(
        n134) );
  OAI2BB2X1M U148 ( .B0(n223), .B1(n20), .A0N(\memory[10][4] ), .A1N(n20), .Y(
        n135) );
  OAI2BB2X1M U149 ( .B0(n222), .B1(n20), .A0N(\memory[10][5] ), .A1N(n20), .Y(
        n136) );
  OAI2BB2X1M U150 ( .B0(n221), .B1(n20), .A0N(\memory[10][6] ), .A1N(n20), .Y(
        n137) );
  OAI2BB2X1M U151 ( .B0(n220), .B1(n20), .A0N(\memory[10][7] ), .A1N(n20), .Y(
        n138) );
  OAI2BB2X1M U152 ( .B0(n227), .B1(n22), .A0N(\memory[11][0] ), .A1N(n22), .Y(
        n139) );
  OAI2BB2X1M U153 ( .B0(n226), .B1(n22), .A0N(\memory[11][1] ), .A1N(n22), .Y(
        n140) );
  OAI2BB2X1M U154 ( .B0(n225), .B1(n22), .A0N(\memory[11][2] ), .A1N(n22), .Y(
        n141) );
  OAI2BB2X1M U155 ( .B0(n224), .B1(n22), .A0N(\memory[11][3] ), .A1N(n22), .Y(
        n142) );
  OAI2BB2X1M U156 ( .B0(n223), .B1(n22), .A0N(\memory[11][4] ), .A1N(n22), .Y(
        n143) );
  OAI2BB2X1M U157 ( .B0(n222), .B1(n22), .A0N(\memory[11][5] ), .A1N(n22), .Y(
        n144) );
  OAI2BB2X1M U158 ( .B0(n221), .B1(n22), .A0N(\memory[11][6] ), .A1N(n22), .Y(
        n145) );
  OAI2BB2X1M U159 ( .B0(n220), .B1(n22), .A0N(\memory[11][7] ), .A1N(n22), .Y(
        n146) );
  OAI2BB2X1M U160 ( .B0(n227), .B1(n23), .A0N(\memory[12][0] ), .A1N(n23), .Y(
        n147) );
  OAI2BB2X1M U161 ( .B0(n226), .B1(n23), .A0N(\memory[12][1] ), .A1N(n23), .Y(
        n148) );
  OAI2BB2X1M U162 ( .B0(n225), .B1(n23), .A0N(\memory[12][2] ), .A1N(n23), .Y(
        n149) );
  OAI2BB2X1M U163 ( .B0(n224), .B1(n23), .A0N(\memory[12][3] ), .A1N(n23), .Y(
        n150) );
  OAI2BB2X1M U164 ( .B0(n223), .B1(n23), .A0N(\memory[12][4] ), .A1N(n23), .Y(
        n151) );
  OAI2BB2X1M U165 ( .B0(n222), .B1(n23), .A0N(\memory[12][5] ), .A1N(n23), .Y(
        n152) );
  OAI2BB2X1M U166 ( .B0(n221), .B1(n23), .A0N(\memory[12][6] ), .A1N(n23), .Y(
        n153) );
  OAI2BB2X1M U167 ( .B0(n220), .B1(n23), .A0N(\memory[12][7] ), .A1N(n23), .Y(
        n154) );
  OAI2BB2X1M U168 ( .B0(n227), .B1(n25), .A0N(\memory[13][0] ), .A1N(n25), .Y(
        n155) );
  OAI2BB2X1M U169 ( .B0(n226), .B1(n25), .A0N(\memory[13][1] ), .A1N(n25), .Y(
        n156) );
  OAI2BB2X1M U170 ( .B0(n225), .B1(n25), .A0N(\memory[13][2] ), .A1N(n25), .Y(
        n157) );
  OAI2BB2X1M U171 ( .B0(n224), .B1(n25), .A0N(\memory[13][3] ), .A1N(n25), .Y(
        n158) );
  OAI2BB2X1M U172 ( .B0(n223), .B1(n25), .A0N(\memory[13][4] ), .A1N(n25), .Y(
        n159) );
  OAI2BB2X1M U173 ( .B0(n222), .B1(n25), .A0N(\memory[13][5] ), .A1N(n25), .Y(
        n160) );
  OAI2BB2X1M U174 ( .B0(n221), .B1(n25), .A0N(\memory[13][6] ), .A1N(n25), .Y(
        n161) );
  OAI2BB2X1M U175 ( .B0(n220), .B1(n25), .A0N(\memory[13][7] ), .A1N(n25), .Y(
        n162) );
  OAI2BB2X1M U176 ( .B0(n225), .B1(n15), .A0N(\memory[8][2] ), .A1N(n15), .Y(
        n117) );
  OAI2BB2X1M U177 ( .B0(n224), .B1(n15), .A0N(\memory[8][3] ), .A1N(n15), .Y(
        n118) );
  OAI2BB2X1M U178 ( .B0(n223), .B1(n15), .A0N(\memory[8][4] ), .A1N(n15), .Y(
        n119) );
  OAI2BB2X1M U179 ( .B0(n222), .B1(n15), .A0N(\memory[8][5] ), .A1N(n15), .Y(
        n120) );
  OAI2BB2X1M U180 ( .B0(n221), .B1(n15), .A0N(\memory[8][6] ), .A1N(n15), .Y(
        n121) );
  OAI2BB2X1M U181 ( .B0(n220), .B1(n15), .A0N(\memory[8][7] ), .A1N(n15), .Y(
        n122) );
  OAI2BB2X1M U182 ( .B0(n227), .B1(n40), .A0N(\memory[6][0] ), .A1N(n40), .Y(
        n99) );
  OAI2BB2X1M U183 ( .B0(n226), .B1(n40), .A0N(\memory[6][1] ), .A1N(n40), .Y(
        n100) );
  OAI2BB2X1M U184 ( .B0(n225), .B1(n40), .A0N(\memory[6][2] ), .A1N(n40), .Y(
        n101) );
  OAI2BB2X1M U185 ( .B0(n224), .B1(n40), .A0N(\memory[6][3] ), .A1N(n40), .Y(
        n102) );
  OAI2BB2X1M U186 ( .B0(n223), .B1(n40), .A0N(\memory[6][4] ), .A1N(n40), .Y(
        n103) );
  OAI2BB2X1M U187 ( .B0(n222), .B1(n40), .A0N(\memory[6][5] ), .A1N(n40), .Y(
        n104) );
  OAI2BB2X1M U188 ( .B0(n221), .B1(n40), .A0N(\memory[6][6] ), .A1N(n40), .Y(
        n105) );
  OAI2BB2X1M U189 ( .B0(n220), .B1(n40), .A0N(\memory[6][7] ), .A1N(n40), .Y(
        n106) );
  OAI2BB2X1M U190 ( .B0(n227), .B1(n26), .A0N(\memory[14][0] ), .A1N(n26), .Y(
        n163) );
  OAI2BB2X1M U191 ( .B0(n226), .B1(n26), .A0N(\memory[14][1] ), .A1N(n26), .Y(
        n164) );
  OAI2BB2X1M U192 ( .B0(n225), .B1(n26), .A0N(\memory[14][2] ), .A1N(n26), .Y(
        n165) );
  OAI2BB2X1M U193 ( .B0(n224), .B1(n26), .A0N(\memory[14][3] ), .A1N(n26), .Y(
        n166) );
  OAI2BB2X1M U194 ( .B0(n223), .B1(n26), .A0N(\memory[14][4] ), .A1N(n26), .Y(
        n167) );
  OAI2BB2X1M U195 ( .B0(n222), .B1(n26), .A0N(\memory[14][5] ), .A1N(n26), .Y(
        n168) );
  OAI2BB2X1M U196 ( .B0(n221), .B1(n26), .A0N(\memory[14][6] ), .A1N(n26), .Y(
        n169) );
  OAI2BB2X1M U197 ( .B0(n220), .B1(n26), .A0N(\memory[14][7] ), .A1N(n26), .Y(
        n170) );
  OAI2BB2X1M U198 ( .B0(n227), .B1(n29), .A0N(\memory[15][0] ), .A1N(n29), .Y(
        n171) );
  OAI2BB2X1M U199 ( .B0(n226), .B1(n29), .A0N(\memory[15][1] ), .A1N(n29), .Y(
        n172) );
  OAI2BB2X1M U200 ( .B0(n225), .B1(n29), .A0N(\memory[15][2] ), .A1N(n29), .Y(
        n173) );
  OAI2BB2X1M U201 ( .B0(n224), .B1(n29), .A0N(\memory[15][3] ), .A1N(n29), .Y(
        n174) );
  OAI2BB2X1M U202 ( .B0(n223), .B1(n29), .A0N(\memory[15][4] ), .A1N(n29), .Y(
        n175) );
  OAI2BB2X1M U203 ( .B0(n222), .B1(n29), .A0N(\memory[15][5] ), .A1N(n29), .Y(
        n176) );
  OAI2BB2X1M U204 ( .B0(n221), .B1(n29), .A0N(\memory[15][6] ), .A1N(n29), .Y(
        n177) );
  OAI2BB2X1M U205 ( .B0(n220), .B1(n29), .A0N(\memory[15][7] ), .A1N(n29), .Y(
        n178) );
  OAI2BB2X1M U206 ( .B0(n227), .B1(n32), .A0N(REG0[0]), .A1N(n32), .Y(n51) );
  OAI2BB2X1M U207 ( .B0(n226), .B1(n32), .A0N(REG0[1]), .A1N(n32), .Y(n52) );
  OAI2BB2X1M U208 ( .B0(n225), .B1(n32), .A0N(REG0[2]), .A1N(n32), .Y(n53) );
  OAI2BB2X1M U209 ( .B0(n224), .B1(n32), .A0N(REG0[3]), .A1N(n32), .Y(n54) );
  OAI2BB2X1M U210 ( .B0(n223), .B1(n32), .A0N(REG0[4]), .A1N(n32), .Y(n55) );
  OAI2BB2X1M U211 ( .B0(n222), .B1(n32), .A0N(REG0[5]), .A1N(n32), .Y(n56) );
  OAI2BB2X1M U212 ( .B0(n221), .B1(n32), .A0N(REG0[6]), .A1N(n32), .Y(n57) );
  OAI2BB2X1M U213 ( .B0(n220), .B1(n32), .A0N(REG0[7]), .A1N(n32), .Y(n58) );
  OAI2BB2X1M U214 ( .B0(n227), .B1(n18), .A0N(\memory[9][0] ), .A1N(n18), .Y(
        n123) );
  OAI2BB2X1M U215 ( .B0(n226), .B1(n18), .A0N(\memory[9][1] ), .A1N(n18), .Y(
        n124) );
  OAI2BB2X1M U216 ( .B0(n225), .B1(n18), .A0N(\memory[9][2] ), .A1N(n18), .Y(
        n125) );
  OAI2BB2X1M U217 ( .B0(n224), .B1(n18), .A0N(\memory[9][3] ), .A1N(n18), .Y(
        n126) );
  OAI2BB2X1M U218 ( .B0(n223), .B1(n18), .A0N(\memory[9][4] ), .A1N(n18), .Y(
        n127) );
  OAI2BB2X1M U219 ( .B0(n222), .B1(n18), .A0N(\memory[9][5] ), .A1N(n18), .Y(
        n128) );
  OAI2BB2X1M U220 ( .B0(n221), .B1(n18), .A0N(\memory[9][6] ), .A1N(n18), .Y(
        n129) );
  OAI2BB2X1M U221 ( .B0(n220), .B1(n18), .A0N(\memory[9][7] ), .A1N(n18), .Y(
        n130) );
  OAI2BB2X1M U222 ( .B0(n227), .B1(n36), .A0N(REG2[0]), .A1N(n36), .Y(n67) );
  OAI2BB2X1M U223 ( .B0(n226), .B1(n36), .A0N(REG2[1]), .A1N(n36), .Y(n68) );
  OAI2BB2X1M U224 ( .B0(n225), .B1(n36), .A0N(REG2[2]), .A1N(n36), .Y(n69) );
  OAI2BB2X1M U225 ( .B0(n224), .B1(n36), .A0N(REG2[3]), .A1N(n36), .Y(n70) );
  OAI2BB2X1M U226 ( .B0(n223), .B1(n36), .A0N(REG2[4]), .A1N(n36), .Y(n71) );
  OAI2BB2X1M U227 ( .B0(n222), .B1(n36), .A0N(REG2[5]), .A1N(n36), .Y(n72) );
  OAI2BB2X1M U228 ( .B0(n221), .B1(n36), .A0N(REG2[6]), .A1N(n36), .Y(n73) );
  OAI2BB2X1M U229 ( .B0(n227), .B1(n38), .A0N(\memory[4][0] ), .A1N(n38), .Y(
        n83) );
  OAI2BB2X1M U230 ( .B0(n226), .B1(n38), .A0N(\memory[4][1] ), .A1N(n38), .Y(
        n84) );
  OAI2BB2X1M U231 ( .B0(n225), .B1(n38), .A0N(\memory[4][2] ), .A1N(n38), .Y(
        n85) );
  OAI2BB2X1M U232 ( .B0(n224), .B1(n38), .A0N(\memory[4][3] ), .A1N(n38), .Y(
        n86) );
  OAI2BB2X1M U233 ( .B0(n223), .B1(n38), .A0N(\memory[4][4] ), .A1N(n38), .Y(
        n87) );
  OAI2BB2X1M U234 ( .B0(n222), .B1(n38), .A0N(\memory[4][5] ), .A1N(n38), .Y(
        n88) );
  OAI2BB2X1M U235 ( .B0(n221), .B1(n38), .A0N(\memory[4][6] ), .A1N(n38), .Y(
        n89) );
  OAI2BB2X1M U236 ( .B0(n220), .B1(n38), .A0N(\memory[4][7] ), .A1N(n38), .Y(
        n90) );
  OAI2BB2X1M U237 ( .B0(n222), .B1(n37), .A0N(REG3[5]), .A1N(n37), .Y(n80) );
  OAI2BB2X1M U238 ( .B0(n220), .B1(n36), .A0N(REG2[7]), .A1N(n36), .Y(n74) );
  INVX2M U239 ( .A(N12), .Y(n204) );
  AO21XLM U240 ( .A0(RdData_VLD), .A1(n30), .B0(n229), .Y(n50) );
endmodule


module SYS_TOP ( RST_N, UART_CLK, REF_CLK, UART_RX_IN, UART_TX_O, parity_error, 
        framing_error );
  input RST_N, UART_CLK, REF_CLK, UART_RX_IN;
  output UART_TX_O, parity_error, framing_error;
  wire   Domain1_SYNC_RST, Sync_Valid, Rd_D_Valid_RF, RdEn_RF, WrEn_RF,
         ALU_OUT_Valid, ALU_EN, FIFO_FULL, WR_INC, CLK_Gating_EN,
         Domain2_SYNC_RST, TX_CLK, RX_CLK, RX_OUT_Valid, TX_Busy, TX_IN_Valid,
         RD_INC, Gated_ALU_CLK, n1, n2, n3, n4, n5;
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

  SYS_CTRL_D_Width8_Addr_Size4 SYS_Cntroller ( .CLK(REF_CLK), .RST(n4), 
        .Sync_Frame(Sync_Data), .enable_pulse(Sync_Valid), .Rd_D(Rd_D_RF), 
        .Rd_D_Valid(Rd_D_Valid_RF), .Rd_En(RdEn_RF), .Wr_En(WrEn_RF), .Addr(
        Addr_RF), .Wr_D(Wr_D_RF), .ALU_OUT(ALU_OUT), .OUT_Valid(ALU_OUT_Valid), 
        .ALU_En(ALU_EN), .FUN(ALU_FUN), .FIFO_FULL(FIFO_FULL), .WR_INC(WR_INC), 
        .WR_DATA(WR_Data), .Gate_En(CLK_Gating_EN) );
  Integer_ClkDiv_ratio_Width8 UART_TX_ClkDiv ( .i_ref_clk(UART_CLK), .i_rst_n(
        Domain2_SYNC_RST), .i_clk_en(1'b1), .i_div_ratio(DIV_RATIO), 
        .o_div_clk(TX_CLK) );
  Integer_ClkDiv_ratio_Width4 UART_RX_ClkDiv ( .i_ref_clk(UART_CLK), .i_rst_n(
        Domain2_SYNC_RST), .i_clk_en(1'b1), .i_div_ratio(RX_Div_Ratio), 
        .o_div_clk(RX_CLK) );
  RX_CLKDIV_MUX_Width4 CLKDIV_MUX ( .Input(UART_Config[7:2]), .MUX_Out(
        RX_Div_Ratio) );
  UART_RX_TOP_Data_Width8 UART_RX ( .CLK(RX_CLK), .RST(Domain2_SYNC_RST), 
        .PAR_EN(UART_Config[0]), .Prescale(UART_Config[7:2]), .PAR_TYP(
        UART_Config[1]), .RX_IN(UART_RX_IN), .Paerity_Error(parity_error), 
        .Stop_Error(framing_error), .Data_Valid(RX_OUT_Valid), .P_DATA(RX_OUT)
         );
  UART_TOP UART_TX ( .CLK(TX_CLK), .RST(Domain2_SYNC_RST), .P_DATA(TX_IN), 
        .Data_Valid(n1), .PAR_EN(UART_Config[0]), .PAR_TYP(UART_Config[1]), 
        .busy(TX_Busy), .TX_OUT(UART_TX_O) );
  AS_FIFO_TOP_Data_Width8_Addr_Size3_FIFO_Dipth8_NUM_STAGES2 UART_FIFO ( 
        .I_W_CLK(REF_CLK), .I_W_RST(n4), .I_W_INC(WR_INC), .I_Data(WR_Data), 
        .I_R_CLK(TX_CLK), .I_R_RST(Domain2_SYNC_RST), .I_R_INC(RD_INC), 
        .O_Data(TX_IN), .FIFO_Full(FIFO_FULL), .FIFO_Empty(TX_IN_Valid) );
  PULSE_GEN U0_PULSE_GEN ( .clk(TX_CLK), .rst(Domain2_SYNC_RST), .lvl_sig(
        TX_Busy), .pulse_sig(RD_INC) );
  RST_SYN_NUM_STAGES2_0 REF_RST_SYNC ( .RST(RST_N), .CLK(REF_CLK), .SYNC_RST(
        Domain1_SYNC_RST) );
  RST_SYN_NUM_STAGES2_1 UART_RST_SYNC ( .RST(RST_N), .CLK(UART_CLK), 
        .SYNC_RST(Domain2_SYNC_RST) );
  DATA_SYNC_NUM_STAGES2_BUS_WIDTH8 Data_SYNC ( .CLK(REF_CLK), .RST(n4), 
        .unsync_bus(RX_OUT), .bus_enable(RX_OUT_Valid), .sync_bus(Sync_Data), 
        .enable_pulse_d(Sync_Valid) );
  CLK_GATE U_CLK_GATE ( .CLK_EN(CLK_Gating_EN), .CLK(REF_CLK), .GATED_CLK(
        Gated_ALU_CLK) );
  ALU_IN_Width8 U0_ALU ( .CLK(Gated_ALU_CLK), .RST(n4), .EN(ALU_EN), .ALU_FUN(
        ALU_FUN), .A(Op_A), .B(Op_B), .ALU_OUT(ALU_OUT), .OUT_Valid(
        ALU_OUT_Valid) );
  Reg_File_WIDTH8_DEPTH16_ADDR4 RegFile ( .CLK(REF_CLK), .RST(n4), .WrEn(
        WrEn_RF), .RdEn(RdEn_RF), .Address({Addr_RF[3:2], n3, n2}), .WrData(
        Wr_D_RF), .RdData(Rd_D_RF), .RdData_VLD(Rd_D_Valid_RF), .REG0(Op_A), 
        .REG1(Op_B), .REG2(UART_Config), .REG3(DIV_RATIO) );
  INVX2M U2 ( .A(TX_IN_Valid), .Y(n1) );
  BUFX2M U3 ( .A(Addr_RF[0]), .Y(n2) );
  BUFX2M U4 ( .A(Addr_RF[1]), .Y(n3) );
  INVX4M U5 ( .A(n5), .Y(n4) );
  INVX2M U6 ( .A(Domain1_SYNC_RST), .Y(n5) );
endmodule

