/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Sun Nov 21 12:18:10 2021
/////////////////////////////////////////////////////////////


module myfir ( VIN, RST_n, CLK, DIN, H0, H1, H2, H3, H4, H5, H6, H7, H8, H9, 
        H10, VOUT, DOUT );
  input [7:0] DIN;
  input [7:0] H0;
  input [7:0] H1;
  input [7:0] H2;
  input [7:0] H3;
  input [7:0] H4;
  input [7:0] H5;
  input [7:0] H6;
  input [7:0] H7;
  input [7:0] H8;
  input [7:0] H9;
  input [7:0] H10;
  output [7:0] DOUT;
  input VIN, RST_n, CLK;
  output VOUT;
  wire   DIN_R_s_0__7_, DIN_R_s_0__6_, DIN_R_s_0__5_, DIN_R_s_0__4_,
         DIN_R_s_0__3_, DIN_R_s_0__2_, DIN_R_s_0__1_, DIN_R_s_0__0_,
         DIN_R_s_1__7_, DIN_R_s_1__6_, DIN_R_s_1__5_, DIN_R_s_1__4_,
         DIN_R_s_1__3_, DIN_R_s_1__2_, DIN_R_s_1__1_, DIN_R_s_1__0_,
         DIN_R_s_2__7_, DIN_R_s_2__6_, DIN_R_s_2__5_, DIN_R_s_2__4_,
         DIN_R_s_2__3_, DIN_R_s_2__2_, DIN_R_s_2__1_, DIN_R_s_2__0_,
         DIN_R_s_3__7_, DIN_R_s_3__6_, DIN_R_s_3__5_, DIN_R_s_3__4_,
         DIN_R_s_3__3_, DIN_R_s_3__2_, DIN_R_s_3__1_, DIN_R_s_3__0_,
         DIN_R_s_4__7_, DIN_R_s_4__6_, DIN_R_s_4__5_, DIN_R_s_4__4_,
         DIN_R_s_4__3_, DIN_R_s_4__2_, DIN_R_s_4__1_, DIN_R_s_4__0_,
         DIN_R_s_5__7_, DIN_R_s_5__6_, DIN_R_s_5__5_, DIN_R_s_5__4_,
         DIN_R_s_5__3_, DIN_R_s_5__2_, DIN_R_s_5__1_, DIN_R_s_5__0_,
         DIN_R_s_6__7_, DIN_R_s_6__6_, DIN_R_s_6__5_, DIN_R_s_6__4_,
         DIN_R_s_6__3_, DIN_R_s_6__2_, DIN_R_s_6__1_, DIN_R_s_6__0_,
         DIN_R_s_7__7_, DIN_R_s_7__6_, DIN_R_s_7__5_, DIN_R_s_7__4_,
         DIN_R_s_7__3_, DIN_R_s_7__2_, DIN_R_s_7__1_, DIN_R_s_7__0_,
         DIN_R_s_8__7_, DIN_R_s_8__6_, DIN_R_s_8__5_, DIN_R_s_8__4_,
         DIN_R_s_8__3_, DIN_R_s_8__2_, DIN_R_s_8__1_, DIN_R_s_8__0_,
         DIN_R_s_9__7_, DIN_R_s_9__6_, DIN_R_s_9__5_, DIN_R_s_9__4_,
         DIN_R_s_9__3_, DIN_R_s_9__2_, DIN_R_s_9__1_, DIN_R_s_9__0_,
         DIN_A_s_1__7_, DIN_A_s_1__6_, DIN_A_s_1__5_, DIN_A_s_1__4_,
         DIN_A_s_1__3_, DIN_A_s_1__2_, DIN_A_s_1__1_, DIN_A_s_1__0_,
         DIN_A_s_2__7_, DIN_A_s_2__6_, DIN_A_s_2__5_, DIN_A_s_2__4_,
         DIN_A_s_2__3_, DIN_A_s_2__2_, DIN_A_s_2__1_, DIN_A_s_2__0_,
         DIN_A_s_3__7_, DIN_A_s_3__6_, DIN_A_s_3__5_, DIN_A_s_3__4_,
         DIN_A_s_3__3_, DIN_A_s_3__2_, DIN_A_s_3__1_, DIN_A_s_3__0_,
         DIN_A_s_4__7_, DIN_A_s_4__6_, DIN_A_s_4__5_, DIN_A_s_4__4_,
         DIN_A_s_4__3_, DIN_A_s_4__2_, DIN_A_s_4__1_, DIN_A_s_4__0_,
         DIN_A_s_5__7_, DIN_A_s_5__6_, DIN_A_s_5__5_, DIN_A_s_5__4_,
         DIN_A_s_5__3_, DIN_A_s_5__2_, DIN_A_s_5__1_, DIN_A_s_5__0_,
         DIN_A_s_6__7_, DIN_A_s_6__6_, DIN_A_s_6__5_, DIN_A_s_6__4_,
         DIN_A_s_6__3_, DIN_A_s_6__2_, DIN_A_s_6__1_, DIN_A_s_6__0_,
         DIN_A_s_7__7_, DIN_A_s_7__6_, DIN_A_s_7__5_, DIN_A_s_7__4_,
         DIN_A_s_7__3_, DIN_A_s_7__2_, DIN_A_s_7__1_, DIN_A_s_7__0_,
         DIN_A_s_8__7_, DIN_A_s_8__6_, DIN_A_s_8__5_, DIN_A_s_8__4_,
         DIN_A_s_8__3_, DIN_A_s_8__2_, DIN_A_s_8__1_, DIN_A_s_8__0_,
         DIN_A_s_9__7_, DIN_A_s_9__6_, DIN_A_s_9__5_, DIN_A_s_9__4_,
         DIN_A_s_9__3_, DIN_A_s_9__2_, DIN_A_s_9__1_, DIN_A_s_9__0_,
         DIN_A_s_10__7_, DIN_A_s_10__6_, DIN_A_s_10__5_, DIN_A_s_10__4_,
         DIN_A_s_10__3_, DIN_A_s_10__2_, DIN_A_s_10__1_, DIN_A_s_10__0_,
         VIN_internal, n1, n2, n3, n4, n5, n6, InputReg_regn_7_n6,
         InputReg_regn_7_n5, InputReg_regn_7_n2, InputReg_regn_7_n1,
         InputReg_regn_6_n6, InputReg_regn_6_n5, InputReg_regn_6_n2,
         InputReg_regn_6_n1, InputReg_regn_5_n6, InputReg_regn_5_n5,
         InputReg_regn_5_n2, InputReg_regn_5_n1, InputReg_regn_4_n6,
         InputReg_regn_4_n5, InputReg_regn_4_n2, InputReg_regn_4_n1,
         InputReg_regn_3_n6, InputReg_regn_3_n5, InputReg_regn_3_n2,
         InputReg_regn_3_n1, InputReg_regn_2_n6, InputReg_regn_2_n5,
         InputReg_regn_2_n2, InputReg_regn_2_n1, InputReg_regn_1_n6,
         InputReg_regn_1_n5, InputReg_regn_1_n2, InputReg_regn_1_n1,
         InputReg_regn_0_n6, InputReg_regn_0_n5, InputReg_regn_0_n2,
         InputReg_regn_0_n1, Stg_0_mult_partial_10_, Stg_0_mult_partial_11_,
         Stg_0_mult_partial_12_, Stg_0_mult_partial_13_,
         Stg_0_mult_partial_14_, Stg_0_mult_partial_15_, Stg_0_mult_partial_8_,
         Stg_0_mult_partial_9_, Stg_0_REGn_regn_7_n6, Stg_0_REGn_regn_7_n5,
         Stg_0_REGn_regn_7_n2, Stg_0_REGn_regn_7_n1, Stg_0_REGn_regn_6_n6,
         Stg_0_REGn_regn_6_n5, Stg_0_REGn_regn_6_n2, Stg_0_REGn_regn_6_n1,
         Stg_0_REGn_regn_5_n6, Stg_0_REGn_regn_5_n5, Stg_0_REGn_regn_5_n2,
         Stg_0_REGn_regn_5_n1, Stg_0_REGn_regn_4_n6, Stg_0_REGn_regn_4_n5,
         Stg_0_REGn_regn_4_n2, Stg_0_REGn_regn_4_n1, Stg_0_REGn_regn_3_n6,
         Stg_0_REGn_regn_3_n5, Stg_0_REGn_regn_3_n2, Stg_0_REGn_regn_3_n1,
         Stg_0_REGn_regn_2_n6, Stg_0_REGn_regn_2_n5, Stg_0_REGn_regn_2_n2,
         Stg_0_REGn_regn_2_n1, Stg_0_REGn_regn_1_n6, Stg_0_REGn_regn_1_n5,
         Stg_0_REGn_regn_1_n2, Stg_0_REGn_regn_1_n1, Stg_0_REGn_regn_0_n6,
         Stg_0_REGn_regn_0_n5, Stg_0_REGn_regn_0_n2, Stg_0_REGn_regn_0_n1,
         Stg_0_mult_41_n275, Stg_0_mult_41_n274, Stg_0_mult_41_n273,
         Stg_0_mult_41_n272, Stg_0_mult_41_n271, Stg_0_mult_41_n270,
         Stg_0_mult_41_n269, Stg_0_mult_41_n268, Stg_0_mult_41_n267,
         Stg_0_mult_41_n266, Stg_0_mult_41_n265, Stg_0_mult_41_n264,
         Stg_0_mult_41_n263, Stg_0_mult_41_n262, Stg_0_mult_41_n261,
         Stg_0_mult_41_n260, Stg_0_mult_41_n259, Stg_0_mult_41_n258,
         Stg_0_mult_41_n257, Stg_0_mult_41_n256, Stg_0_mult_41_n255,
         Stg_0_mult_41_n254, Stg_0_mult_41_n253, Stg_0_mult_41_n252,
         Stg_0_mult_41_n251, Stg_0_mult_41_n250, Stg_0_mult_41_n249,
         Stg_0_mult_41_n248, Stg_0_mult_41_n247, Stg_0_mult_41_n246,
         Stg_0_mult_41_n245, Stg_0_mult_41_n244, Stg_0_mult_41_n243,
         Stg_0_mult_41_n242, Stg_0_mult_41_n241, Stg_0_mult_41_n240,
         Stg_0_mult_41_n239, Stg_0_mult_41_n238, Stg_0_mult_41_n237,
         Stg_0_mult_41_n236, Stg_0_mult_41_n235, Stg_0_mult_41_n234,
         Stg_0_mult_41_n233, Stg_0_mult_41_n232, Stg_0_mult_41_n231,
         Stg_0_mult_41_n230, Stg_0_mult_41_n229, Stg_0_mult_41_n228,
         Stg_0_mult_41_n227, Stg_0_mult_41_n226, Stg_0_mult_41_n225,
         Stg_0_mult_41_n224, Stg_0_mult_41_n223, Stg_0_mult_41_n222,
         Stg_0_mult_41_n221, Stg_0_mult_41_n220, Stg_0_mult_41_n219,
         Stg_0_mult_41_n218, Stg_0_mult_41_n217, Stg_0_mult_41_n216,
         Stg_0_mult_41_n215, Stg_0_mult_41_n214, Stg_0_mult_41_n213,
         Stg_0_mult_41_n212, Stg_0_mult_41_n211, Stg_0_mult_41_n210,
         Stg_0_mult_41_n209, Stg_0_mult_41_n208, Stg_0_mult_41_n207,
         Stg_0_mult_41_n206, Stg_0_mult_41_n205, Stg_0_mult_41_n204,
         Stg_0_mult_41_n203, Stg_0_mult_41_n202, Stg_0_mult_41_n201,
         Stg_0_mult_41_n199, Stg_0_mult_41_n198, Stg_0_mult_41_n197,
         Stg_0_mult_41_n101, Stg_0_mult_41_n100, Stg_0_mult_41_n99,
         Stg_0_mult_41_n98, Stg_0_mult_41_n97, Stg_0_mult_41_n94,
         Stg_0_mult_41_n93, Stg_0_mult_41_n92, Stg_0_mult_41_n91,
         Stg_0_mult_41_n90, Stg_0_mult_41_n87, Stg_0_mult_41_n86,
         Stg_0_mult_41_n85, Stg_0_mult_41_n84, Stg_0_mult_41_n83,
         Stg_0_mult_41_n82, Stg_0_mult_41_n81, Stg_0_mult_41_n79,
         Stg_0_mult_41_n78, Stg_0_mult_41_n76, Stg_0_mult_41_n75,
         Stg_0_mult_41_n74, Stg_0_mult_41_n73, Stg_0_mult_41_n69,
         Stg_0_mult_41_n68, Stg_0_mult_41_n56, Stg_0_mult_41_n55,
         Stg_0_mult_41_n54, Stg_0_mult_41_n53, Stg_0_mult_41_n52,
         Stg_0_mult_41_n51, Stg_0_mult_41_n50, Stg_0_mult_41_n49,
         Stg_0_mult_41_n48, Stg_0_mult_41_n47, Stg_0_mult_41_n46,
         Stg_0_mult_41_n45, Stg_0_mult_41_n44, Stg_0_mult_41_n43,
         Stg_0_mult_41_n42, Stg_0_mult_41_n41, Stg_0_mult_41_n40,
         Stg_0_mult_41_n39, Stg_0_mult_41_n38, Stg_0_mult_41_n37,
         Stg_0_mult_41_n36, Stg_0_mult_41_n35, Stg_0_mult_41_n34,
         Stg_0_mult_41_n33, Stg_0_mult_41_n31, Stg_0_mult_41_n30,
         Stg_0_mult_41_n29, Stg_0_mult_41_n28, Stg_0_mult_41_n27,
         Stg_0_mult_41_n26, Stg_0_mult_41_n25, Stg_0_mult_41_n24,
         Stg_0_mult_41_n23, Stg_0_mult_41_n21, Stg_0_mult_41_n20,
         Stg_0_mult_41_n19, Stg_0_mult_41_n18, Stg_0_mult_41_n17,
         Stg_0_mult_41_n15, Stg_0_mult_41_n7, Stg_0_mult_41_n6,
         Stg_0_mult_41_n5, Stg_0_mult_41_n4, Stg_0_mult_41_n3,
         Stg_0_mult_41_n2, Stg_0_mult_41_n1, Stg_0_add_42_n1,
         Stg_1_mult_partial_10_, Stg_1_mult_partial_11_,
         Stg_1_mult_partial_12_, Stg_1_mult_partial_13_,
         Stg_1_mult_partial_14_, Stg_1_mult_partial_15_, Stg_1_mult_partial_8_,
         Stg_1_mult_partial_9_, Stg_1_REGn_regn_7_n6, Stg_1_REGn_regn_7_n5,
         Stg_1_REGn_regn_7_n2, Stg_1_REGn_regn_7_n1, Stg_1_REGn_regn_6_n6,
         Stg_1_REGn_regn_6_n5, Stg_1_REGn_regn_6_n2, Stg_1_REGn_regn_6_n1,
         Stg_1_REGn_regn_5_n6, Stg_1_REGn_regn_5_n5, Stg_1_REGn_regn_5_n2,
         Stg_1_REGn_regn_5_n1, Stg_1_REGn_regn_4_n6, Stg_1_REGn_regn_4_n5,
         Stg_1_REGn_regn_4_n2, Stg_1_REGn_regn_4_n1, Stg_1_REGn_regn_3_n6,
         Stg_1_REGn_regn_3_n5, Stg_1_REGn_regn_3_n2, Stg_1_REGn_regn_3_n1,
         Stg_1_REGn_regn_2_n6, Stg_1_REGn_regn_2_n5, Stg_1_REGn_regn_2_n2,
         Stg_1_REGn_regn_2_n1, Stg_1_REGn_regn_1_n6, Stg_1_REGn_regn_1_n5,
         Stg_1_REGn_regn_1_n2, Stg_1_REGn_regn_1_n1, Stg_1_REGn_regn_0_n6,
         Stg_1_REGn_regn_0_n5, Stg_1_REGn_regn_0_n2, Stg_1_REGn_regn_0_n1,
         Stg_1_mult_41_n275, Stg_1_mult_41_n274, Stg_1_mult_41_n273,
         Stg_1_mult_41_n272, Stg_1_mult_41_n271, Stg_1_mult_41_n270,
         Stg_1_mult_41_n269, Stg_1_mult_41_n268, Stg_1_mult_41_n267,
         Stg_1_mult_41_n266, Stg_1_mult_41_n265, Stg_1_mult_41_n264,
         Stg_1_mult_41_n263, Stg_1_mult_41_n262, Stg_1_mult_41_n261,
         Stg_1_mult_41_n260, Stg_1_mult_41_n259, Stg_1_mult_41_n258,
         Stg_1_mult_41_n257, Stg_1_mult_41_n256, Stg_1_mult_41_n255,
         Stg_1_mult_41_n254, Stg_1_mult_41_n253, Stg_1_mult_41_n252,
         Stg_1_mult_41_n251, Stg_1_mult_41_n250, Stg_1_mult_41_n249,
         Stg_1_mult_41_n248, Stg_1_mult_41_n247, Stg_1_mult_41_n246,
         Stg_1_mult_41_n245, Stg_1_mult_41_n244, Stg_1_mult_41_n243,
         Stg_1_mult_41_n242, Stg_1_mult_41_n241, Stg_1_mult_41_n240,
         Stg_1_mult_41_n239, Stg_1_mult_41_n238, Stg_1_mult_41_n237,
         Stg_1_mult_41_n236, Stg_1_mult_41_n235, Stg_1_mult_41_n234,
         Stg_1_mult_41_n233, Stg_1_mult_41_n232, Stg_1_mult_41_n231,
         Stg_1_mult_41_n230, Stg_1_mult_41_n229, Stg_1_mult_41_n228,
         Stg_1_mult_41_n227, Stg_1_mult_41_n226, Stg_1_mult_41_n225,
         Stg_1_mult_41_n224, Stg_1_mult_41_n223, Stg_1_mult_41_n222,
         Stg_1_mult_41_n221, Stg_1_mult_41_n220, Stg_1_mult_41_n219,
         Stg_1_mult_41_n218, Stg_1_mult_41_n217, Stg_1_mult_41_n216,
         Stg_1_mult_41_n215, Stg_1_mult_41_n214, Stg_1_mult_41_n213,
         Stg_1_mult_41_n212, Stg_1_mult_41_n211, Stg_1_mult_41_n210,
         Stg_1_mult_41_n209, Stg_1_mult_41_n208, Stg_1_mult_41_n207,
         Stg_1_mult_41_n206, Stg_1_mult_41_n205, Stg_1_mult_41_n204,
         Stg_1_mult_41_n203, Stg_1_mult_41_n202, Stg_1_mult_41_n201,
         Stg_1_mult_41_n199, Stg_1_mult_41_n198, Stg_1_mult_41_n197,
         Stg_1_mult_41_n101, Stg_1_mult_41_n100, Stg_1_mult_41_n99,
         Stg_1_mult_41_n98, Stg_1_mult_41_n97, Stg_1_mult_41_n94,
         Stg_1_mult_41_n93, Stg_1_mult_41_n92, Stg_1_mult_41_n91,
         Stg_1_mult_41_n90, Stg_1_mult_41_n87, Stg_1_mult_41_n86,
         Stg_1_mult_41_n85, Stg_1_mult_41_n84, Stg_1_mult_41_n83,
         Stg_1_mult_41_n82, Stg_1_mult_41_n81, Stg_1_mult_41_n79,
         Stg_1_mult_41_n78, Stg_1_mult_41_n76, Stg_1_mult_41_n75,
         Stg_1_mult_41_n74, Stg_1_mult_41_n73, Stg_1_mult_41_n69,
         Stg_1_mult_41_n68, Stg_1_mult_41_n56, Stg_1_mult_41_n55,
         Stg_1_mult_41_n54, Stg_1_mult_41_n53, Stg_1_mult_41_n52,
         Stg_1_mult_41_n51, Stg_1_mult_41_n50, Stg_1_mult_41_n49,
         Stg_1_mult_41_n48, Stg_1_mult_41_n47, Stg_1_mult_41_n46,
         Stg_1_mult_41_n45, Stg_1_mult_41_n44, Stg_1_mult_41_n43,
         Stg_1_mult_41_n42, Stg_1_mult_41_n41, Stg_1_mult_41_n40,
         Stg_1_mult_41_n39, Stg_1_mult_41_n38, Stg_1_mult_41_n37,
         Stg_1_mult_41_n36, Stg_1_mult_41_n35, Stg_1_mult_41_n34,
         Stg_1_mult_41_n33, Stg_1_mult_41_n31, Stg_1_mult_41_n30,
         Stg_1_mult_41_n29, Stg_1_mult_41_n28, Stg_1_mult_41_n27,
         Stg_1_mult_41_n26, Stg_1_mult_41_n25, Stg_1_mult_41_n24,
         Stg_1_mult_41_n23, Stg_1_mult_41_n21, Stg_1_mult_41_n20,
         Stg_1_mult_41_n19, Stg_1_mult_41_n18, Stg_1_mult_41_n17,
         Stg_1_mult_41_n15, Stg_1_mult_41_n7, Stg_1_mult_41_n6,
         Stg_1_mult_41_n5, Stg_1_mult_41_n4, Stg_1_mult_41_n3,
         Stg_1_mult_41_n2, Stg_1_mult_41_n1, Stg_1_add_42_n1,
         Stg_2_mult_partial_10_, Stg_2_mult_partial_11_,
         Stg_2_mult_partial_12_, Stg_2_mult_partial_13_,
         Stg_2_mult_partial_14_, Stg_2_mult_partial_15_, Stg_2_mult_partial_8_,
         Stg_2_mult_partial_9_, Stg_2_REGn_regn_7_n6, Stg_2_REGn_regn_7_n5,
         Stg_2_REGn_regn_7_n2, Stg_2_REGn_regn_7_n1, Stg_2_REGn_regn_6_n6,
         Stg_2_REGn_regn_6_n5, Stg_2_REGn_regn_6_n2, Stg_2_REGn_regn_6_n1,
         Stg_2_REGn_regn_5_n6, Stg_2_REGn_regn_5_n5, Stg_2_REGn_regn_5_n2,
         Stg_2_REGn_regn_5_n1, Stg_2_REGn_regn_4_n6, Stg_2_REGn_regn_4_n5,
         Stg_2_REGn_regn_4_n2, Stg_2_REGn_regn_4_n1, Stg_2_REGn_regn_3_n6,
         Stg_2_REGn_regn_3_n5, Stg_2_REGn_regn_3_n2, Stg_2_REGn_regn_3_n1,
         Stg_2_REGn_regn_2_n6, Stg_2_REGn_regn_2_n5, Stg_2_REGn_regn_2_n2,
         Stg_2_REGn_regn_2_n1, Stg_2_REGn_regn_1_n6, Stg_2_REGn_regn_1_n5,
         Stg_2_REGn_regn_1_n2, Stg_2_REGn_regn_1_n1, Stg_2_REGn_regn_0_n6,
         Stg_2_REGn_regn_0_n5, Stg_2_REGn_regn_0_n2, Stg_2_REGn_regn_0_n1,
         Stg_2_mult_41_n275, Stg_2_mult_41_n274, Stg_2_mult_41_n273,
         Stg_2_mult_41_n272, Stg_2_mult_41_n271, Stg_2_mult_41_n270,
         Stg_2_mult_41_n269, Stg_2_mult_41_n268, Stg_2_mult_41_n267,
         Stg_2_mult_41_n266, Stg_2_mult_41_n265, Stg_2_mult_41_n264,
         Stg_2_mult_41_n263, Stg_2_mult_41_n262, Stg_2_mult_41_n261,
         Stg_2_mult_41_n260, Stg_2_mult_41_n259, Stg_2_mult_41_n258,
         Stg_2_mult_41_n257, Stg_2_mult_41_n256, Stg_2_mult_41_n255,
         Stg_2_mult_41_n254, Stg_2_mult_41_n253, Stg_2_mult_41_n252,
         Stg_2_mult_41_n251, Stg_2_mult_41_n250, Stg_2_mult_41_n249,
         Stg_2_mult_41_n248, Stg_2_mult_41_n247, Stg_2_mult_41_n246,
         Stg_2_mult_41_n245, Stg_2_mult_41_n244, Stg_2_mult_41_n243,
         Stg_2_mult_41_n242, Stg_2_mult_41_n241, Stg_2_mult_41_n240,
         Stg_2_mult_41_n239, Stg_2_mult_41_n238, Stg_2_mult_41_n237,
         Stg_2_mult_41_n236, Stg_2_mult_41_n235, Stg_2_mult_41_n234,
         Stg_2_mult_41_n233, Stg_2_mult_41_n232, Stg_2_mult_41_n231,
         Stg_2_mult_41_n230, Stg_2_mult_41_n229, Stg_2_mult_41_n228,
         Stg_2_mult_41_n227, Stg_2_mult_41_n226, Stg_2_mult_41_n225,
         Stg_2_mult_41_n224, Stg_2_mult_41_n223, Stg_2_mult_41_n222,
         Stg_2_mult_41_n221, Stg_2_mult_41_n220, Stg_2_mult_41_n219,
         Stg_2_mult_41_n218, Stg_2_mult_41_n217, Stg_2_mult_41_n216,
         Stg_2_mult_41_n215, Stg_2_mult_41_n214, Stg_2_mult_41_n213,
         Stg_2_mult_41_n212, Stg_2_mult_41_n211, Stg_2_mult_41_n210,
         Stg_2_mult_41_n209, Stg_2_mult_41_n208, Stg_2_mult_41_n207,
         Stg_2_mult_41_n206, Stg_2_mult_41_n205, Stg_2_mult_41_n204,
         Stg_2_mult_41_n203, Stg_2_mult_41_n202, Stg_2_mult_41_n201,
         Stg_2_mult_41_n199, Stg_2_mult_41_n198, Stg_2_mult_41_n197,
         Stg_2_mult_41_n101, Stg_2_mult_41_n100, Stg_2_mult_41_n99,
         Stg_2_mult_41_n98, Stg_2_mult_41_n97, Stg_2_mult_41_n94,
         Stg_2_mult_41_n93, Stg_2_mult_41_n92, Stg_2_mult_41_n91,
         Stg_2_mult_41_n90, Stg_2_mult_41_n87, Stg_2_mult_41_n86,
         Stg_2_mult_41_n85, Stg_2_mult_41_n84, Stg_2_mult_41_n83,
         Stg_2_mult_41_n82, Stg_2_mult_41_n81, Stg_2_mult_41_n79,
         Stg_2_mult_41_n78, Stg_2_mult_41_n76, Stg_2_mult_41_n75,
         Stg_2_mult_41_n74, Stg_2_mult_41_n73, Stg_2_mult_41_n69,
         Stg_2_mult_41_n68, Stg_2_mult_41_n56, Stg_2_mult_41_n55,
         Stg_2_mult_41_n54, Stg_2_mult_41_n53, Stg_2_mult_41_n52,
         Stg_2_mult_41_n51, Stg_2_mult_41_n50, Stg_2_mult_41_n49,
         Stg_2_mult_41_n48, Stg_2_mult_41_n47, Stg_2_mult_41_n46,
         Stg_2_mult_41_n45, Stg_2_mult_41_n44, Stg_2_mult_41_n43,
         Stg_2_mult_41_n42, Stg_2_mult_41_n41, Stg_2_mult_41_n40,
         Stg_2_mult_41_n39, Stg_2_mult_41_n38, Stg_2_mult_41_n37,
         Stg_2_mult_41_n36, Stg_2_mult_41_n35, Stg_2_mult_41_n34,
         Stg_2_mult_41_n33, Stg_2_mult_41_n31, Stg_2_mult_41_n30,
         Stg_2_mult_41_n29, Stg_2_mult_41_n28, Stg_2_mult_41_n27,
         Stg_2_mult_41_n26, Stg_2_mult_41_n25, Stg_2_mult_41_n24,
         Stg_2_mult_41_n23, Stg_2_mult_41_n21, Stg_2_mult_41_n20,
         Stg_2_mult_41_n19, Stg_2_mult_41_n18, Stg_2_mult_41_n17,
         Stg_2_mult_41_n15, Stg_2_mult_41_n7, Stg_2_mult_41_n6,
         Stg_2_mult_41_n5, Stg_2_mult_41_n4, Stg_2_mult_41_n3,
         Stg_2_mult_41_n2, Stg_2_mult_41_n1, Stg_2_add_42_n1,
         Stg_3_mult_partial_10_, Stg_3_mult_partial_11_,
         Stg_3_mult_partial_12_, Stg_3_mult_partial_13_,
         Stg_3_mult_partial_14_, Stg_3_mult_partial_15_, Stg_3_mult_partial_8_,
         Stg_3_mult_partial_9_, Stg_3_REGn_regn_7_n6, Stg_3_REGn_regn_7_n5,
         Stg_3_REGn_regn_7_n2, Stg_3_REGn_regn_7_n1, Stg_3_REGn_regn_6_n6,
         Stg_3_REGn_regn_6_n5, Stg_3_REGn_regn_6_n2, Stg_3_REGn_regn_6_n1,
         Stg_3_REGn_regn_5_n6, Stg_3_REGn_regn_5_n5, Stg_3_REGn_regn_5_n2,
         Stg_3_REGn_regn_5_n1, Stg_3_REGn_regn_4_n6, Stg_3_REGn_regn_4_n5,
         Stg_3_REGn_regn_4_n2, Stg_3_REGn_regn_4_n1, Stg_3_REGn_regn_3_n6,
         Stg_3_REGn_regn_3_n5, Stg_3_REGn_regn_3_n2, Stg_3_REGn_regn_3_n1,
         Stg_3_REGn_regn_2_n6, Stg_3_REGn_regn_2_n5, Stg_3_REGn_regn_2_n2,
         Stg_3_REGn_regn_2_n1, Stg_3_REGn_regn_1_n6, Stg_3_REGn_regn_1_n5,
         Stg_3_REGn_regn_1_n2, Stg_3_REGn_regn_1_n1, Stg_3_REGn_regn_0_n6,
         Stg_3_REGn_regn_0_n5, Stg_3_REGn_regn_0_n2, Stg_3_REGn_regn_0_n1,
         Stg_3_mult_41_n275, Stg_3_mult_41_n274, Stg_3_mult_41_n273,
         Stg_3_mult_41_n272, Stg_3_mult_41_n271, Stg_3_mult_41_n270,
         Stg_3_mult_41_n269, Stg_3_mult_41_n268, Stg_3_mult_41_n267,
         Stg_3_mult_41_n266, Stg_3_mult_41_n265, Stg_3_mult_41_n264,
         Stg_3_mult_41_n263, Stg_3_mult_41_n262, Stg_3_mult_41_n261,
         Stg_3_mult_41_n260, Stg_3_mult_41_n259, Stg_3_mult_41_n258,
         Stg_3_mult_41_n257, Stg_3_mult_41_n256, Stg_3_mult_41_n255,
         Stg_3_mult_41_n254, Stg_3_mult_41_n253, Stg_3_mult_41_n252,
         Stg_3_mult_41_n251, Stg_3_mult_41_n250, Stg_3_mult_41_n249,
         Stg_3_mult_41_n248, Stg_3_mult_41_n247, Stg_3_mult_41_n246,
         Stg_3_mult_41_n245, Stg_3_mult_41_n244, Stg_3_mult_41_n243,
         Stg_3_mult_41_n242, Stg_3_mult_41_n241, Stg_3_mult_41_n240,
         Stg_3_mult_41_n239, Stg_3_mult_41_n238, Stg_3_mult_41_n237,
         Stg_3_mult_41_n236, Stg_3_mult_41_n235, Stg_3_mult_41_n234,
         Stg_3_mult_41_n233, Stg_3_mult_41_n232, Stg_3_mult_41_n231,
         Stg_3_mult_41_n230, Stg_3_mult_41_n229, Stg_3_mult_41_n228,
         Stg_3_mult_41_n227, Stg_3_mult_41_n226, Stg_3_mult_41_n225,
         Stg_3_mult_41_n224, Stg_3_mult_41_n223, Stg_3_mult_41_n222,
         Stg_3_mult_41_n221, Stg_3_mult_41_n220, Stg_3_mult_41_n219,
         Stg_3_mult_41_n218, Stg_3_mult_41_n217, Stg_3_mult_41_n216,
         Stg_3_mult_41_n215, Stg_3_mult_41_n214, Stg_3_mult_41_n213,
         Stg_3_mult_41_n212, Stg_3_mult_41_n211, Stg_3_mult_41_n210,
         Stg_3_mult_41_n209, Stg_3_mult_41_n208, Stg_3_mult_41_n207,
         Stg_3_mult_41_n206, Stg_3_mult_41_n205, Stg_3_mult_41_n204,
         Stg_3_mult_41_n203, Stg_3_mult_41_n202, Stg_3_mult_41_n201,
         Stg_3_mult_41_n199, Stg_3_mult_41_n198, Stg_3_mult_41_n197,
         Stg_3_mult_41_n101, Stg_3_mult_41_n100, Stg_3_mult_41_n99,
         Stg_3_mult_41_n98, Stg_3_mult_41_n97, Stg_3_mult_41_n94,
         Stg_3_mult_41_n93, Stg_3_mult_41_n92, Stg_3_mult_41_n91,
         Stg_3_mult_41_n90, Stg_3_mult_41_n87, Stg_3_mult_41_n86,
         Stg_3_mult_41_n85, Stg_3_mult_41_n84, Stg_3_mult_41_n83,
         Stg_3_mult_41_n82, Stg_3_mult_41_n81, Stg_3_mult_41_n79,
         Stg_3_mult_41_n78, Stg_3_mult_41_n76, Stg_3_mult_41_n75,
         Stg_3_mult_41_n74, Stg_3_mult_41_n73, Stg_3_mult_41_n69,
         Stg_3_mult_41_n68, Stg_3_mult_41_n56, Stg_3_mult_41_n55,
         Stg_3_mult_41_n54, Stg_3_mult_41_n53, Stg_3_mult_41_n52,
         Stg_3_mult_41_n51, Stg_3_mult_41_n50, Stg_3_mult_41_n49,
         Stg_3_mult_41_n48, Stg_3_mult_41_n47, Stg_3_mult_41_n46,
         Stg_3_mult_41_n45, Stg_3_mult_41_n44, Stg_3_mult_41_n43,
         Stg_3_mult_41_n42, Stg_3_mult_41_n41, Stg_3_mult_41_n40,
         Stg_3_mult_41_n39, Stg_3_mult_41_n38, Stg_3_mult_41_n37,
         Stg_3_mult_41_n36, Stg_3_mult_41_n35, Stg_3_mult_41_n34,
         Stg_3_mult_41_n33, Stg_3_mult_41_n31, Stg_3_mult_41_n30,
         Stg_3_mult_41_n29, Stg_3_mult_41_n28, Stg_3_mult_41_n27,
         Stg_3_mult_41_n26, Stg_3_mult_41_n25, Stg_3_mult_41_n24,
         Stg_3_mult_41_n23, Stg_3_mult_41_n21, Stg_3_mult_41_n20,
         Stg_3_mult_41_n19, Stg_3_mult_41_n18, Stg_3_mult_41_n17,
         Stg_3_mult_41_n15, Stg_3_mult_41_n7, Stg_3_mult_41_n6,
         Stg_3_mult_41_n5, Stg_3_mult_41_n4, Stg_3_mult_41_n3,
         Stg_3_mult_41_n2, Stg_3_mult_41_n1, Stg_3_add_42_n1,
         Stg_4_mult_partial_10_, Stg_4_mult_partial_11_,
         Stg_4_mult_partial_12_, Stg_4_mult_partial_13_,
         Stg_4_mult_partial_14_, Stg_4_mult_partial_15_, Stg_4_mult_partial_8_,
         Stg_4_mult_partial_9_, Stg_4_REGn_regn_7_n6, Stg_4_REGn_regn_7_n5,
         Stg_4_REGn_regn_7_n2, Stg_4_REGn_regn_7_n1, Stg_4_REGn_regn_6_n6,
         Stg_4_REGn_regn_6_n5, Stg_4_REGn_regn_6_n2, Stg_4_REGn_regn_6_n1,
         Stg_4_REGn_regn_5_n6, Stg_4_REGn_regn_5_n5, Stg_4_REGn_regn_5_n2,
         Stg_4_REGn_regn_5_n1, Stg_4_REGn_regn_4_n6, Stg_4_REGn_regn_4_n5,
         Stg_4_REGn_regn_4_n2, Stg_4_REGn_regn_4_n1, Stg_4_REGn_regn_3_n6,
         Stg_4_REGn_regn_3_n5, Stg_4_REGn_regn_3_n2, Stg_4_REGn_regn_3_n1,
         Stg_4_REGn_regn_2_n6, Stg_4_REGn_regn_2_n5, Stg_4_REGn_regn_2_n2,
         Stg_4_REGn_regn_2_n1, Stg_4_REGn_regn_1_n6, Stg_4_REGn_regn_1_n5,
         Stg_4_REGn_regn_1_n2, Stg_4_REGn_regn_1_n1, Stg_4_REGn_regn_0_n6,
         Stg_4_REGn_regn_0_n5, Stg_4_REGn_regn_0_n2, Stg_4_REGn_regn_0_n1,
         Stg_4_mult_41_n275, Stg_4_mult_41_n274, Stg_4_mult_41_n273,
         Stg_4_mult_41_n272, Stg_4_mult_41_n271, Stg_4_mult_41_n270,
         Stg_4_mult_41_n269, Stg_4_mult_41_n268, Stg_4_mult_41_n267,
         Stg_4_mult_41_n266, Stg_4_mult_41_n265, Stg_4_mult_41_n264,
         Stg_4_mult_41_n263, Stg_4_mult_41_n262, Stg_4_mult_41_n261,
         Stg_4_mult_41_n260, Stg_4_mult_41_n259, Stg_4_mult_41_n258,
         Stg_4_mult_41_n257, Stg_4_mult_41_n256, Stg_4_mult_41_n255,
         Stg_4_mult_41_n254, Stg_4_mult_41_n253, Stg_4_mult_41_n252,
         Stg_4_mult_41_n251, Stg_4_mult_41_n250, Stg_4_mult_41_n249,
         Stg_4_mult_41_n248, Stg_4_mult_41_n247, Stg_4_mult_41_n246,
         Stg_4_mult_41_n245, Stg_4_mult_41_n244, Stg_4_mult_41_n243,
         Stg_4_mult_41_n242, Stg_4_mult_41_n241, Stg_4_mult_41_n240,
         Stg_4_mult_41_n239, Stg_4_mult_41_n238, Stg_4_mult_41_n237,
         Stg_4_mult_41_n236, Stg_4_mult_41_n235, Stg_4_mult_41_n234,
         Stg_4_mult_41_n233, Stg_4_mult_41_n232, Stg_4_mult_41_n231,
         Stg_4_mult_41_n230, Stg_4_mult_41_n229, Stg_4_mult_41_n228,
         Stg_4_mult_41_n227, Stg_4_mult_41_n226, Stg_4_mult_41_n225,
         Stg_4_mult_41_n224, Stg_4_mult_41_n223, Stg_4_mult_41_n222,
         Stg_4_mult_41_n221, Stg_4_mult_41_n220, Stg_4_mult_41_n219,
         Stg_4_mult_41_n218, Stg_4_mult_41_n217, Stg_4_mult_41_n216,
         Stg_4_mult_41_n215, Stg_4_mult_41_n214, Stg_4_mult_41_n213,
         Stg_4_mult_41_n212, Stg_4_mult_41_n211, Stg_4_mult_41_n210,
         Stg_4_mult_41_n209, Stg_4_mult_41_n208, Stg_4_mult_41_n207,
         Stg_4_mult_41_n206, Stg_4_mult_41_n205, Stg_4_mult_41_n204,
         Stg_4_mult_41_n203, Stg_4_mult_41_n202, Stg_4_mult_41_n201,
         Stg_4_mult_41_n199, Stg_4_mult_41_n198, Stg_4_mult_41_n197,
         Stg_4_mult_41_n101, Stg_4_mult_41_n100, Stg_4_mult_41_n99,
         Stg_4_mult_41_n98, Stg_4_mult_41_n97, Stg_4_mult_41_n94,
         Stg_4_mult_41_n93, Stg_4_mult_41_n92, Stg_4_mult_41_n91,
         Stg_4_mult_41_n90, Stg_4_mult_41_n87, Stg_4_mult_41_n86,
         Stg_4_mult_41_n85, Stg_4_mult_41_n84, Stg_4_mult_41_n83,
         Stg_4_mult_41_n82, Stg_4_mult_41_n81, Stg_4_mult_41_n79,
         Stg_4_mult_41_n78, Stg_4_mult_41_n76, Stg_4_mult_41_n75,
         Stg_4_mult_41_n74, Stg_4_mult_41_n73, Stg_4_mult_41_n69,
         Stg_4_mult_41_n68, Stg_4_mult_41_n56, Stg_4_mult_41_n55,
         Stg_4_mult_41_n54, Stg_4_mult_41_n53, Stg_4_mult_41_n52,
         Stg_4_mult_41_n51, Stg_4_mult_41_n50, Stg_4_mult_41_n49,
         Stg_4_mult_41_n48, Stg_4_mult_41_n47, Stg_4_mult_41_n46,
         Stg_4_mult_41_n45, Stg_4_mult_41_n44, Stg_4_mult_41_n43,
         Stg_4_mult_41_n42, Stg_4_mult_41_n41, Stg_4_mult_41_n40,
         Stg_4_mult_41_n39, Stg_4_mult_41_n38, Stg_4_mult_41_n37,
         Stg_4_mult_41_n36, Stg_4_mult_41_n35, Stg_4_mult_41_n34,
         Stg_4_mult_41_n33, Stg_4_mult_41_n31, Stg_4_mult_41_n30,
         Stg_4_mult_41_n29, Stg_4_mult_41_n28, Stg_4_mult_41_n27,
         Stg_4_mult_41_n26, Stg_4_mult_41_n25, Stg_4_mult_41_n24,
         Stg_4_mult_41_n23, Stg_4_mult_41_n21, Stg_4_mult_41_n20,
         Stg_4_mult_41_n19, Stg_4_mult_41_n18, Stg_4_mult_41_n17,
         Stg_4_mult_41_n15, Stg_4_mult_41_n7, Stg_4_mult_41_n6,
         Stg_4_mult_41_n5, Stg_4_mult_41_n4, Stg_4_mult_41_n3,
         Stg_4_mult_41_n2, Stg_4_mult_41_n1, Stg_4_add_42_n1,
         Stg_5_mult_partial_10_, Stg_5_mult_partial_11_,
         Stg_5_mult_partial_12_, Stg_5_mult_partial_13_,
         Stg_5_mult_partial_14_, Stg_5_mult_partial_15_, Stg_5_mult_partial_8_,
         Stg_5_mult_partial_9_, Stg_5_REGn_regn_7_n6, Stg_5_REGn_regn_7_n5,
         Stg_5_REGn_regn_7_n2, Stg_5_REGn_regn_7_n1, Stg_5_REGn_regn_6_n6,
         Stg_5_REGn_regn_6_n5, Stg_5_REGn_regn_6_n2, Stg_5_REGn_regn_6_n1,
         Stg_5_REGn_regn_5_n6, Stg_5_REGn_regn_5_n5, Stg_5_REGn_regn_5_n2,
         Stg_5_REGn_regn_5_n1, Stg_5_REGn_regn_4_n6, Stg_5_REGn_regn_4_n5,
         Stg_5_REGn_regn_4_n2, Stg_5_REGn_regn_4_n1, Stg_5_REGn_regn_3_n6,
         Stg_5_REGn_regn_3_n5, Stg_5_REGn_regn_3_n2, Stg_5_REGn_regn_3_n1,
         Stg_5_REGn_regn_2_n6, Stg_5_REGn_regn_2_n5, Stg_5_REGn_regn_2_n2,
         Stg_5_REGn_regn_2_n1, Stg_5_REGn_regn_1_n6, Stg_5_REGn_regn_1_n5,
         Stg_5_REGn_regn_1_n2, Stg_5_REGn_regn_1_n1, Stg_5_REGn_regn_0_n6,
         Stg_5_REGn_regn_0_n5, Stg_5_REGn_regn_0_n2, Stg_5_REGn_regn_0_n1,
         Stg_5_mult_41_n275, Stg_5_mult_41_n274, Stg_5_mult_41_n273,
         Stg_5_mult_41_n272, Stg_5_mult_41_n271, Stg_5_mult_41_n270,
         Stg_5_mult_41_n269, Stg_5_mult_41_n268, Stg_5_mult_41_n267,
         Stg_5_mult_41_n266, Stg_5_mult_41_n265, Stg_5_mult_41_n264,
         Stg_5_mult_41_n263, Stg_5_mult_41_n262, Stg_5_mult_41_n261,
         Stg_5_mult_41_n260, Stg_5_mult_41_n259, Stg_5_mult_41_n258,
         Stg_5_mult_41_n257, Stg_5_mult_41_n256, Stg_5_mult_41_n255,
         Stg_5_mult_41_n254, Stg_5_mult_41_n253, Stg_5_mult_41_n252,
         Stg_5_mult_41_n251, Stg_5_mult_41_n250, Stg_5_mult_41_n249,
         Stg_5_mult_41_n248, Stg_5_mult_41_n247, Stg_5_mult_41_n246,
         Stg_5_mult_41_n245, Stg_5_mult_41_n244, Stg_5_mult_41_n243,
         Stg_5_mult_41_n242, Stg_5_mult_41_n241, Stg_5_mult_41_n240,
         Stg_5_mult_41_n239, Stg_5_mult_41_n238, Stg_5_mult_41_n237,
         Stg_5_mult_41_n236, Stg_5_mult_41_n235, Stg_5_mult_41_n234,
         Stg_5_mult_41_n233, Stg_5_mult_41_n232, Stg_5_mult_41_n231,
         Stg_5_mult_41_n230, Stg_5_mult_41_n229, Stg_5_mult_41_n228,
         Stg_5_mult_41_n227, Stg_5_mult_41_n226, Stg_5_mult_41_n225,
         Stg_5_mult_41_n224, Stg_5_mult_41_n223, Stg_5_mult_41_n222,
         Stg_5_mult_41_n221, Stg_5_mult_41_n220, Stg_5_mult_41_n219,
         Stg_5_mult_41_n218, Stg_5_mult_41_n217, Stg_5_mult_41_n216,
         Stg_5_mult_41_n215, Stg_5_mult_41_n214, Stg_5_mult_41_n213,
         Stg_5_mult_41_n212, Stg_5_mult_41_n211, Stg_5_mult_41_n210,
         Stg_5_mult_41_n209, Stg_5_mult_41_n208, Stg_5_mult_41_n207,
         Stg_5_mult_41_n206, Stg_5_mult_41_n205, Stg_5_mult_41_n204,
         Stg_5_mult_41_n203, Stg_5_mult_41_n202, Stg_5_mult_41_n201,
         Stg_5_mult_41_n199, Stg_5_mult_41_n198, Stg_5_mult_41_n197,
         Stg_5_mult_41_n101, Stg_5_mult_41_n100, Stg_5_mult_41_n99,
         Stg_5_mult_41_n98, Stg_5_mult_41_n97, Stg_5_mult_41_n94,
         Stg_5_mult_41_n93, Stg_5_mult_41_n92, Stg_5_mult_41_n91,
         Stg_5_mult_41_n90, Stg_5_mult_41_n87, Stg_5_mult_41_n86,
         Stg_5_mult_41_n85, Stg_5_mult_41_n84, Stg_5_mult_41_n83,
         Stg_5_mult_41_n82, Stg_5_mult_41_n81, Stg_5_mult_41_n79,
         Stg_5_mult_41_n78, Stg_5_mult_41_n76, Stg_5_mult_41_n75,
         Stg_5_mult_41_n74, Stg_5_mult_41_n73, Stg_5_mult_41_n69,
         Stg_5_mult_41_n68, Stg_5_mult_41_n56, Stg_5_mult_41_n55,
         Stg_5_mult_41_n54, Stg_5_mult_41_n53, Stg_5_mult_41_n52,
         Stg_5_mult_41_n51, Stg_5_mult_41_n50, Stg_5_mult_41_n49,
         Stg_5_mult_41_n48, Stg_5_mult_41_n47, Stg_5_mult_41_n46,
         Stg_5_mult_41_n45, Stg_5_mult_41_n44, Stg_5_mult_41_n43,
         Stg_5_mult_41_n42, Stg_5_mult_41_n41, Stg_5_mult_41_n40,
         Stg_5_mult_41_n39, Stg_5_mult_41_n38, Stg_5_mult_41_n37,
         Stg_5_mult_41_n36, Stg_5_mult_41_n35, Stg_5_mult_41_n34,
         Stg_5_mult_41_n33, Stg_5_mult_41_n31, Stg_5_mult_41_n30,
         Stg_5_mult_41_n29, Stg_5_mult_41_n28, Stg_5_mult_41_n27,
         Stg_5_mult_41_n26, Stg_5_mult_41_n25, Stg_5_mult_41_n24,
         Stg_5_mult_41_n23, Stg_5_mult_41_n21, Stg_5_mult_41_n20,
         Stg_5_mult_41_n19, Stg_5_mult_41_n18, Stg_5_mult_41_n17,
         Stg_5_mult_41_n15, Stg_5_mult_41_n7, Stg_5_mult_41_n6,
         Stg_5_mult_41_n5, Stg_5_mult_41_n4, Stg_5_mult_41_n3,
         Stg_5_mult_41_n2, Stg_5_mult_41_n1, Stg_5_add_42_n1,
         Stg_6_mult_partial_10_, Stg_6_mult_partial_11_,
         Stg_6_mult_partial_12_, Stg_6_mult_partial_13_,
         Stg_6_mult_partial_14_, Stg_6_mult_partial_15_, Stg_6_mult_partial_8_,
         Stg_6_mult_partial_9_, Stg_6_REGn_regn_7_n6, Stg_6_REGn_regn_7_n5,
         Stg_6_REGn_regn_7_n2, Stg_6_REGn_regn_7_n1, Stg_6_REGn_regn_6_n6,
         Stg_6_REGn_regn_6_n5, Stg_6_REGn_regn_6_n2, Stg_6_REGn_regn_6_n1,
         Stg_6_REGn_regn_5_n6, Stg_6_REGn_regn_5_n5, Stg_6_REGn_regn_5_n2,
         Stg_6_REGn_regn_5_n1, Stg_6_REGn_regn_4_n6, Stg_6_REGn_regn_4_n5,
         Stg_6_REGn_regn_4_n2, Stg_6_REGn_regn_4_n1, Stg_6_REGn_regn_3_n6,
         Stg_6_REGn_regn_3_n5, Stg_6_REGn_regn_3_n2, Stg_6_REGn_regn_3_n1,
         Stg_6_REGn_regn_2_n6, Stg_6_REGn_regn_2_n5, Stg_6_REGn_regn_2_n2,
         Stg_6_REGn_regn_2_n1, Stg_6_REGn_regn_1_n6, Stg_6_REGn_regn_1_n5,
         Stg_6_REGn_regn_1_n2, Stg_6_REGn_regn_1_n1, Stg_6_REGn_regn_0_n6,
         Stg_6_REGn_regn_0_n5, Stg_6_REGn_regn_0_n2, Stg_6_REGn_regn_0_n1,
         Stg_6_mult_41_n275, Stg_6_mult_41_n274, Stg_6_mult_41_n273,
         Stg_6_mult_41_n272, Stg_6_mult_41_n271, Stg_6_mult_41_n270,
         Stg_6_mult_41_n269, Stg_6_mult_41_n268, Stg_6_mult_41_n267,
         Stg_6_mult_41_n266, Stg_6_mult_41_n265, Stg_6_mult_41_n264,
         Stg_6_mult_41_n263, Stg_6_mult_41_n262, Stg_6_mult_41_n261,
         Stg_6_mult_41_n260, Stg_6_mult_41_n259, Stg_6_mult_41_n258,
         Stg_6_mult_41_n257, Stg_6_mult_41_n256, Stg_6_mult_41_n255,
         Stg_6_mult_41_n254, Stg_6_mult_41_n253, Stg_6_mult_41_n252,
         Stg_6_mult_41_n251, Stg_6_mult_41_n250, Stg_6_mult_41_n249,
         Stg_6_mult_41_n248, Stg_6_mult_41_n247, Stg_6_mult_41_n246,
         Stg_6_mult_41_n245, Stg_6_mult_41_n244, Stg_6_mult_41_n243,
         Stg_6_mult_41_n242, Stg_6_mult_41_n241, Stg_6_mult_41_n240,
         Stg_6_mult_41_n239, Stg_6_mult_41_n238, Stg_6_mult_41_n237,
         Stg_6_mult_41_n236, Stg_6_mult_41_n235, Stg_6_mult_41_n234,
         Stg_6_mult_41_n233, Stg_6_mult_41_n232, Stg_6_mult_41_n231,
         Stg_6_mult_41_n230, Stg_6_mult_41_n229, Stg_6_mult_41_n228,
         Stg_6_mult_41_n227, Stg_6_mult_41_n226, Stg_6_mult_41_n225,
         Stg_6_mult_41_n224, Stg_6_mult_41_n223, Stg_6_mult_41_n222,
         Stg_6_mult_41_n221, Stg_6_mult_41_n220, Stg_6_mult_41_n219,
         Stg_6_mult_41_n218, Stg_6_mult_41_n217, Stg_6_mult_41_n216,
         Stg_6_mult_41_n215, Stg_6_mult_41_n214, Stg_6_mult_41_n213,
         Stg_6_mult_41_n212, Stg_6_mult_41_n211, Stg_6_mult_41_n210,
         Stg_6_mult_41_n209, Stg_6_mult_41_n208, Stg_6_mult_41_n207,
         Stg_6_mult_41_n206, Stg_6_mult_41_n205, Stg_6_mult_41_n204,
         Stg_6_mult_41_n203, Stg_6_mult_41_n202, Stg_6_mult_41_n201,
         Stg_6_mult_41_n199, Stg_6_mult_41_n198, Stg_6_mult_41_n197,
         Stg_6_mult_41_n101, Stg_6_mult_41_n100, Stg_6_mult_41_n99,
         Stg_6_mult_41_n98, Stg_6_mult_41_n97, Stg_6_mult_41_n94,
         Stg_6_mult_41_n93, Stg_6_mult_41_n92, Stg_6_mult_41_n91,
         Stg_6_mult_41_n90, Stg_6_mult_41_n87, Stg_6_mult_41_n86,
         Stg_6_mult_41_n85, Stg_6_mult_41_n84, Stg_6_mult_41_n83,
         Stg_6_mult_41_n82, Stg_6_mult_41_n81, Stg_6_mult_41_n79,
         Stg_6_mult_41_n78, Stg_6_mult_41_n76, Stg_6_mult_41_n75,
         Stg_6_mult_41_n74, Stg_6_mult_41_n73, Stg_6_mult_41_n69,
         Stg_6_mult_41_n68, Stg_6_mult_41_n56, Stg_6_mult_41_n55,
         Stg_6_mult_41_n54, Stg_6_mult_41_n53, Stg_6_mult_41_n52,
         Stg_6_mult_41_n51, Stg_6_mult_41_n50, Stg_6_mult_41_n49,
         Stg_6_mult_41_n48, Stg_6_mult_41_n47, Stg_6_mult_41_n46,
         Stg_6_mult_41_n45, Stg_6_mult_41_n44, Stg_6_mult_41_n43,
         Stg_6_mult_41_n42, Stg_6_mult_41_n41, Stg_6_mult_41_n40,
         Stg_6_mult_41_n39, Stg_6_mult_41_n38, Stg_6_mult_41_n37,
         Stg_6_mult_41_n36, Stg_6_mult_41_n35, Stg_6_mult_41_n34,
         Stg_6_mult_41_n33, Stg_6_mult_41_n31, Stg_6_mult_41_n30,
         Stg_6_mult_41_n29, Stg_6_mult_41_n28, Stg_6_mult_41_n27,
         Stg_6_mult_41_n26, Stg_6_mult_41_n25, Stg_6_mult_41_n24,
         Stg_6_mult_41_n23, Stg_6_mult_41_n21, Stg_6_mult_41_n20,
         Stg_6_mult_41_n19, Stg_6_mult_41_n18, Stg_6_mult_41_n17,
         Stg_6_mult_41_n15, Stg_6_mult_41_n7, Stg_6_mult_41_n6,
         Stg_6_mult_41_n5, Stg_6_mult_41_n4, Stg_6_mult_41_n3,
         Stg_6_mult_41_n2, Stg_6_mult_41_n1, Stg_6_add_42_n1,
         Stg_7_mult_partial_10_, Stg_7_mult_partial_11_,
         Stg_7_mult_partial_12_, Stg_7_mult_partial_13_,
         Stg_7_mult_partial_14_, Stg_7_mult_partial_15_, Stg_7_mult_partial_8_,
         Stg_7_mult_partial_9_, Stg_7_REGn_regn_7_n6, Stg_7_REGn_regn_7_n5,
         Stg_7_REGn_regn_7_n2, Stg_7_REGn_regn_7_n1, Stg_7_REGn_regn_6_n6,
         Stg_7_REGn_regn_6_n5, Stg_7_REGn_regn_6_n2, Stg_7_REGn_regn_6_n1,
         Stg_7_REGn_regn_5_n6, Stg_7_REGn_regn_5_n5, Stg_7_REGn_regn_5_n2,
         Stg_7_REGn_regn_5_n1, Stg_7_REGn_regn_4_n6, Stg_7_REGn_regn_4_n5,
         Stg_7_REGn_regn_4_n2, Stg_7_REGn_regn_4_n1, Stg_7_REGn_regn_3_n6,
         Stg_7_REGn_regn_3_n5, Stg_7_REGn_regn_3_n2, Stg_7_REGn_regn_3_n1,
         Stg_7_REGn_regn_2_n6, Stg_7_REGn_regn_2_n5, Stg_7_REGn_regn_2_n2,
         Stg_7_REGn_regn_2_n1, Stg_7_REGn_regn_1_n6, Stg_7_REGn_regn_1_n5,
         Stg_7_REGn_regn_1_n2, Stg_7_REGn_regn_1_n1, Stg_7_REGn_regn_0_n6,
         Stg_7_REGn_regn_0_n5, Stg_7_REGn_regn_0_n2, Stg_7_REGn_regn_0_n1,
         Stg_7_mult_41_n275, Stg_7_mult_41_n274, Stg_7_mult_41_n273,
         Stg_7_mult_41_n272, Stg_7_mult_41_n271, Stg_7_mult_41_n270,
         Stg_7_mult_41_n269, Stg_7_mult_41_n268, Stg_7_mult_41_n267,
         Stg_7_mult_41_n266, Stg_7_mult_41_n265, Stg_7_mult_41_n264,
         Stg_7_mult_41_n263, Stg_7_mult_41_n262, Stg_7_mult_41_n261,
         Stg_7_mult_41_n260, Stg_7_mult_41_n259, Stg_7_mult_41_n258,
         Stg_7_mult_41_n257, Stg_7_mult_41_n256, Stg_7_mult_41_n255,
         Stg_7_mult_41_n254, Stg_7_mult_41_n253, Stg_7_mult_41_n252,
         Stg_7_mult_41_n251, Stg_7_mult_41_n250, Stg_7_mult_41_n249,
         Stg_7_mult_41_n248, Stg_7_mult_41_n247, Stg_7_mult_41_n246,
         Stg_7_mult_41_n245, Stg_7_mult_41_n244, Stg_7_mult_41_n243,
         Stg_7_mult_41_n242, Stg_7_mult_41_n241, Stg_7_mult_41_n240,
         Stg_7_mult_41_n239, Stg_7_mult_41_n238, Stg_7_mult_41_n237,
         Stg_7_mult_41_n236, Stg_7_mult_41_n235, Stg_7_mult_41_n234,
         Stg_7_mult_41_n233, Stg_7_mult_41_n232, Stg_7_mult_41_n231,
         Stg_7_mult_41_n230, Stg_7_mult_41_n229, Stg_7_mult_41_n228,
         Stg_7_mult_41_n227, Stg_7_mult_41_n226, Stg_7_mult_41_n225,
         Stg_7_mult_41_n224, Stg_7_mult_41_n223, Stg_7_mult_41_n222,
         Stg_7_mult_41_n221, Stg_7_mult_41_n220, Stg_7_mult_41_n219,
         Stg_7_mult_41_n218, Stg_7_mult_41_n217, Stg_7_mult_41_n216,
         Stg_7_mult_41_n215, Stg_7_mult_41_n214, Stg_7_mult_41_n213,
         Stg_7_mult_41_n212, Stg_7_mult_41_n211, Stg_7_mult_41_n210,
         Stg_7_mult_41_n209, Stg_7_mult_41_n208, Stg_7_mult_41_n207,
         Stg_7_mult_41_n206, Stg_7_mult_41_n205, Stg_7_mult_41_n204,
         Stg_7_mult_41_n203, Stg_7_mult_41_n202, Stg_7_mult_41_n201,
         Stg_7_mult_41_n199, Stg_7_mult_41_n198, Stg_7_mult_41_n197,
         Stg_7_mult_41_n101, Stg_7_mult_41_n100, Stg_7_mult_41_n99,
         Stg_7_mult_41_n98, Stg_7_mult_41_n97, Stg_7_mult_41_n94,
         Stg_7_mult_41_n93, Stg_7_mult_41_n92, Stg_7_mult_41_n91,
         Stg_7_mult_41_n90, Stg_7_mult_41_n87, Stg_7_mult_41_n86,
         Stg_7_mult_41_n85, Stg_7_mult_41_n84, Stg_7_mult_41_n83,
         Stg_7_mult_41_n82, Stg_7_mult_41_n81, Stg_7_mult_41_n79,
         Stg_7_mult_41_n78, Stg_7_mult_41_n76, Stg_7_mult_41_n75,
         Stg_7_mult_41_n74, Stg_7_mult_41_n73, Stg_7_mult_41_n69,
         Stg_7_mult_41_n68, Stg_7_mult_41_n56, Stg_7_mult_41_n55,
         Stg_7_mult_41_n54, Stg_7_mult_41_n53, Stg_7_mult_41_n52,
         Stg_7_mult_41_n51, Stg_7_mult_41_n50, Stg_7_mult_41_n49,
         Stg_7_mult_41_n48, Stg_7_mult_41_n47, Stg_7_mult_41_n46,
         Stg_7_mult_41_n45, Stg_7_mult_41_n44, Stg_7_mult_41_n43,
         Stg_7_mult_41_n42, Stg_7_mult_41_n41, Stg_7_mult_41_n40,
         Stg_7_mult_41_n39, Stg_7_mult_41_n38, Stg_7_mult_41_n37,
         Stg_7_mult_41_n36, Stg_7_mult_41_n35, Stg_7_mult_41_n34,
         Stg_7_mult_41_n33, Stg_7_mult_41_n31, Stg_7_mult_41_n30,
         Stg_7_mult_41_n29, Stg_7_mult_41_n28, Stg_7_mult_41_n27,
         Stg_7_mult_41_n26, Stg_7_mult_41_n25, Stg_7_mult_41_n24,
         Stg_7_mult_41_n23, Stg_7_mult_41_n21, Stg_7_mult_41_n20,
         Stg_7_mult_41_n19, Stg_7_mult_41_n18, Stg_7_mult_41_n17,
         Stg_7_mult_41_n15, Stg_7_mult_41_n7, Stg_7_mult_41_n6,
         Stg_7_mult_41_n5, Stg_7_mult_41_n4, Stg_7_mult_41_n3,
         Stg_7_mult_41_n2, Stg_7_mult_41_n1, Stg_7_add_42_n1,
         Stg_8_mult_partial_10_, Stg_8_mult_partial_11_,
         Stg_8_mult_partial_12_, Stg_8_mult_partial_13_,
         Stg_8_mult_partial_14_, Stg_8_mult_partial_15_, Stg_8_mult_partial_8_,
         Stg_8_mult_partial_9_, Stg_8_REGn_regn_7_n6, Stg_8_REGn_regn_7_n5,
         Stg_8_REGn_regn_7_n2, Stg_8_REGn_regn_7_n1, Stg_8_REGn_regn_6_n6,
         Stg_8_REGn_regn_6_n5, Stg_8_REGn_regn_6_n2, Stg_8_REGn_regn_6_n1,
         Stg_8_REGn_regn_5_n6, Stg_8_REGn_regn_5_n5, Stg_8_REGn_regn_5_n2,
         Stg_8_REGn_regn_5_n1, Stg_8_REGn_regn_4_n6, Stg_8_REGn_regn_4_n5,
         Stg_8_REGn_regn_4_n2, Stg_8_REGn_regn_4_n1, Stg_8_REGn_regn_3_n6,
         Stg_8_REGn_regn_3_n5, Stg_8_REGn_regn_3_n2, Stg_8_REGn_regn_3_n1,
         Stg_8_REGn_regn_2_n6, Stg_8_REGn_regn_2_n5, Stg_8_REGn_regn_2_n2,
         Stg_8_REGn_regn_2_n1, Stg_8_REGn_regn_1_n6, Stg_8_REGn_regn_1_n5,
         Stg_8_REGn_regn_1_n2, Stg_8_REGn_regn_1_n1, Stg_8_REGn_regn_0_n6,
         Stg_8_REGn_regn_0_n5, Stg_8_REGn_regn_0_n2, Stg_8_REGn_regn_0_n1,
         Stg_8_mult_41_n275, Stg_8_mult_41_n274, Stg_8_mult_41_n273,
         Stg_8_mult_41_n272, Stg_8_mult_41_n271, Stg_8_mult_41_n270,
         Stg_8_mult_41_n269, Stg_8_mult_41_n268, Stg_8_mult_41_n267,
         Stg_8_mult_41_n266, Stg_8_mult_41_n265, Stg_8_mult_41_n264,
         Stg_8_mult_41_n263, Stg_8_mult_41_n262, Stg_8_mult_41_n261,
         Stg_8_mult_41_n260, Stg_8_mult_41_n259, Stg_8_mult_41_n258,
         Stg_8_mult_41_n257, Stg_8_mult_41_n256, Stg_8_mult_41_n255,
         Stg_8_mult_41_n254, Stg_8_mult_41_n253, Stg_8_mult_41_n252,
         Stg_8_mult_41_n251, Stg_8_mult_41_n250, Stg_8_mult_41_n249,
         Stg_8_mult_41_n248, Stg_8_mult_41_n247, Stg_8_mult_41_n246,
         Stg_8_mult_41_n245, Stg_8_mult_41_n244, Stg_8_mult_41_n243,
         Stg_8_mult_41_n242, Stg_8_mult_41_n241, Stg_8_mult_41_n240,
         Stg_8_mult_41_n239, Stg_8_mult_41_n238, Stg_8_mult_41_n237,
         Stg_8_mult_41_n236, Stg_8_mult_41_n235, Stg_8_mult_41_n234,
         Stg_8_mult_41_n233, Stg_8_mult_41_n232, Stg_8_mult_41_n231,
         Stg_8_mult_41_n230, Stg_8_mult_41_n229, Stg_8_mult_41_n228,
         Stg_8_mult_41_n227, Stg_8_mult_41_n226, Stg_8_mult_41_n225,
         Stg_8_mult_41_n224, Stg_8_mult_41_n223, Stg_8_mult_41_n222,
         Stg_8_mult_41_n221, Stg_8_mult_41_n220, Stg_8_mult_41_n219,
         Stg_8_mult_41_n218, Stg_8_mult_41_n217, Stg_8_mult_41_n216,
         Stg_8_mult_41_n215, Stg_8_mult_41_n214, Stg_8_mult_41_n213,
         Stg_8_mult_41_n212, Stg_8_mult_41_n211, Stg_8_mult_41_n210,
         Stg_8_mult_41_n209, Stg_8_mult_41_n208, Stg_8_mult_41_n207,
         Stg_8_mult_41_n206, Stg_8_mult_41_n205, Stg_8_mult_41_n204,
         Stg_8_mult_41_n203, Stg_8_mult_41_n202, Stg_8_mult_41_n201,
         Stg_8_mult_41_n199, Stg_8_mult_41_n198, Stg_8_mult_41_n197,
         Stg_8_mult_41_n101, Stg_8_mult_41_n100, Stg_8_mult_41_n99,
         Stg_8_mult_41_n98, Stg_8_mult_41_n97, Stg_8_mult_41_n94,
         Stg_8_mult_41_n93, Stg_8_mult_41_n92, Stg_8_mult_41_n91,
         Stg_8_mult_41_n90, Stg_8_mult_41_n87, Stg_8_mult_41_n86,
         Stg_8_mult_41_n85, Stg_8_mult_41_n84, Stg_8_mult_41_n83,
         Stg_8_mult_41_n82, Stg_8_mult_41_n81, Stg_8_mult_41_n79,
         Stg_8_mult_41_n78, Stg_8_mult_41_n76, Stg_8_mult_41_n75,
         Stg_8_mult_41_n74, Stg_8_mult_41_n73, Stg_8_mult_41_n69,
         Stg_8_mult_41_n68, Stg_8_mult_41_n56, Stg_8_mult_41_n55,
         Stg_8_mult_41_n54, Stg_8_mult_41_n53, Stg_8_mult_41_n52,
         Stg_8_mult_41_n51, Stg_8_mult_41_n50, Stg_8_mult_41_n49,
         Stg_8_mult_41_n48, Stg_8_mult_41_n47, Stg_8_mult_41_n46,
         Stg_8_mult_41_n45, Stg_8_mult_41_n44, Stg_8_mult_41_n43,
         Stg_8_mult_41_n42, Stg_8_mult_41_n41, Stg_8_mult_41_n40,
         Stg_8_mult_41_n39, Stg_8_mult_41_n38, Stg_8_mult_41_n37,
         Stg_8_mult_41_n36, Stg_8_mult_41_n35, Stg_8_mult_41_n34,
         Stg_8_mult_41_n33, Stg_8_mult_41_n31, Stg_8_mult_41_n30,
         Stg_8_mult_41_n29, Stg_8_mult_41_n28, Stg_8_mult_41_n27,
         Stg_8_mult_41_n26, Stg_8_mult_41_n25, Stg_8_mult_41_n24,
         Stg_8_mult_41_n23, Stg_8_mult_41_n21, Stg_8_mult_41_n20,
         Stg_8_mult_41_n19, Stg_8_mult_41_n18, Stg_8_mult_41_n17,
         Stg_8_mult_41_n15, Stg_8_mult_41_n7, Stg_8_mult_41_n6,
         Stg_8_mult_41_n5, Stg_8_mult_41_n4, Stg_8_mult_41_n3,
         Stg_8_mult_41_n2, Stg_8_mult_41_n1, Stg_8_add_42_n1,
         Stg_9_mult_partial_10_, Stg_9_mult_partial_11_,
         Stg_9_mult_partial_12_, Stg_9_mult_partial_13_,
         Stg_9_mult_partial_14_, Stg_9_mult_partial_15_, Stg_9_mult_partial_8_,
         Stg_9_mult_partial_9_, Stg_9_DOUT_R_0_, Stg_9_DOUT_R_1_,
         Stg_9_DOUT_R_2_, Stg_9_DOUT_R_3_, Stg_9_DOUT_R_4_, Stg_9_DOUT_R_5_,
         Stg_9_DOUT_R_6_, Stg_9_DOUT_R_7_, Stg_9_REGn_regn_7_n6,
         Stg_9_REGn_regn_7_n5, Stg_9_REGn_regn_7_n2, Stg_9_REGn_regn_7_n1,
         Stg_9_REGn_regn_6_n6, Stg_9_REGn_regn_6_n5, Stg_9_REGn_regn_6_n2,
         Stg_9_REGn_regn_6_n1, Stg_9_REGn_regn_5_n6, Stg_9_REGn_regn_5_n5,
         Stg_9_REGn_regn_5_n2, Stg_9_REGn_regn_5_n1, Stg_9_REGn_regn_4_n6,
         Stg_9_REGn_regn_4_n5, Stg_9_REGn_regn_4_n2, Stg_9_REGn_regn_4_n1,
         Stg_9_REGn_regn_3_n6, Stg_9_REGn_regn_3_n5, Stg_9_REGn_regn_3_n2,
         Stg_9_REGn_regn_3_n1, Stg_9_REGn_regn_2_n6, Stg_9_REGn_regn_2_n5,
         Stg_9_REGn_regn_2_n2, Stg_9_REGn_regn_2_n1, Stg_9_REGn_regn_1_n6,
         Stg_9_REGn_regn_1_n5, Stg_9_REGn_regn_1_n2, Stg_9_REGn_regn_1_n1,
         Stg_9_REGn_regn_0_n6, Stg_9_REGn_regn_0_n5, Stg_9_REGn_regn_0_n2,
         Stg_9_REGn_regn_0_n1, Stg_9_mult_41_n275, Stg_9_mult_41_n274,
         Stg_9_mult_41_n273, Stg_9_mult_41_n272, Stg_9_mult_41_n271,
         Stg_9_mult_41_n270, Stg_9_mult_41_n269, Stg_9_mult_41_n268,
         Stg_9_mult_41_n267, Stg_9_mult_41_n266, Stg_9_mult_41_n265,
         Stg_9_mult_41_n264, Stg_9_mult_41_n263, Stg_9_mult_41_n262,
         Stg_9_mult_41_n261, Stg_9_mult_41_n260, Stg_9_mult_41_n259,
         Stg_9_mult_41_n258, Stg_9_mult_41_n257, Stg_9_mult_41_n256,
         Stg_9_mult_41_n255, Stg_9_mult_41_n254, Stg_9_mult_41_n253,
         Stg_9_mult_41_n252, Stg_9_mult_41_n251, Stg_9_mult_41_n250,
         Stg_9_mult_41_n249, Stg_9_mult_41_n248, Stg_9_mult_41_n247,
         Stg_9_mult_41_n246, Stg_9_mult_41_n245, Stg_9_mult_41_n244,
         Stg_9_mult_41_n243, Stg_9_mult_41_n242, Stg_9_mult_41_n241,
         Stg_9_mult_41_n240, Stg_9_mult_41_n239, Stg_9_mult_41_n238,
         Stg_9_mult_41_n237, Stg_9_mult_41_n236, Stg_9_mult_41_n235,
         Stg_9_mult_41_n234, Stg_9_mult_41_n233, Stg_9_mult_41_n232,
         Stg_9_mult_41_n231, Stg_9_mult_41_n230, Stg_9_mult_41_n229,
         Stg_9_mult_41_n228, Stg_9_mult_41_n227, Stg_9_mult_41_n226,
         Stg_9_mult_41_n225, Stg_9_mult_41_n224, Stg_9_mult_41_n223,
         Stg_9_mult_41_n222, Stg_9_mult_41_n221, Stg_9_mult_41_n220,
         Stg_9_mult_41_n219, Stg_9_mult_41_n218, Stg_9_mult_41_n217,
         Stg_9_mult_41_n216, Stg_9_mult_41_n215, Stg_9_mult_41_n214,
         Stg_9_mult_41_n213, Stg_9_mult_41_n212, Stg_9_mult_41_n211,
         Stg_9_mult_41_n210, Stg_9_mult_41_n209, Stg_9_mult_41_n208,
         Stg_9_mult_41_n207, Stg_9_mult_41_n206, Stg_9_mult_41_n205,
         Stg_9_mult_41_n204, Stg_9_mult_41_n203, Stg_9_mult_41_n202,
         Stg_9_mult_41_n201, Stg_9_mult_41_n199, Stg_9_mult_41_n198,
         Stg_9_mult_41_n197, Stg_9_mult_41_n101, Stg_9_mult_41_n100,
         Stg_9_mult_41_n99, Stg_9_mult_41_n98, Stg_9_mult_41_n97,
         Stg_9_mult_41_n94, Stg_9_mult_41_n93, Stg_9_mult_41_n92,
         Stg_9_mult_41_n91, Stg_9_mult_41_n90, Stg_9_mult_41_n87,
         Stg_9_mult_41_n86, Stg_9_mult_41_n85, Stg_9_mult_41_n84,
         Stg_9_mult_41_n83, Stg_9_mult_41_n82, Stg_9_mult_41_n81,
         Stg_9_mult_41_n79, Stg_9_mult_41_n78, Stg_9_mult_41_n76,
         Stg_9_mult_41_n75, Stg_9_mult_41_n74, Stg_9_mult_41_n73,
         Stg_9_mult_41_n69, Stg_9_mult_41_n68, Stg_9_mult_41_n56,
         Stg_9_mult_41_n55, Stg_9_mult_41_n54, Stg_9_mult_41_n53,
         Stg_9_mult_41_n52, Stg_9_mult_41_n51, Stg_9_mult_41_n50,
         Stg_9_mult_41_n49, Stg_9_mult_41_n48, Stg_9_mult_41_n47,
         Stg_9_mult_41_n46, Stg_9_mult_41_n45, Stg_9_mult_41_n44,
         Stg_9_mult_41_n43, Stg_9_mult_41_n42, Stg_9_mult_41_n41,
         Stg_9_mult_41_n40, Stg_9_mult_41_n39, Stg_9_mult_41_n38,
         Stg_9_mult_41_n37, Stg_9_mult_41_n36, Stg_9_mult_41_n35,
         Stg_9_mult_41_n34, Stg_9_mult_41_n33, Stg_9_mult_41_n31,
         Stg_9_mult_41_n30, Stg_9_mult_41_n29, Stg_9_mult_41_n28,
         Stg_9_mult_41_n27, Stg_9_mult_41_n26, Stg_9_mult_41_n25,
         Stg_9_mult_41_n24, Stg_9_mult_41_n23, Stg_9_mult_41_n21,
         Stg_9_mult_41_n20, Stg_9_mult_41_n19, Stg_9_mult_41_n18,
         Stg_9_mult_41_n17, Stg_9_mult_41_n15, Stg_9_mult_41_n7,
         Stg_9_mult_41_n6, Stg_9_mult_41_n5, Stg_9_mult_41_n4,
         Stg_9_mult_41_n3, Stg_9_mult_41_n2, Stg_9_mult_41_n1, Stg_9_add_42_n1,
         OutputReg_regn_7_n6, OutputReg_regn_7_n5, OutputReg_regn_7_n2,
         OutputReg_regn_7_n1, OutputReg_regn_6_n6, OutputReg_regn_6_n5,
         OutputReg_regn_6_n2, OutputReg_regn_6_n1, OutputReg_regn_5_n6,
         OutputReg_regn_5_n5, OutputReg_regn_5_n2, OutputReg_regn_5_n1,
         OutputReg_regn_4_n6, OutputReg_regn_4_n5, OutputReg_regn_4_n2,
         OutputReg_regn_4_n1, OutputReg_regn_3_n6, OutputReg_regn_3_n5,
         OutputReg_regn_3_n2, OutputReg_regn_3_n1, OutputReg_regn_2_n6,
         OutputReg_regn_2_n5, OutputReg_regn_2_n2, OutputReg_regn_2_n1,
         OutputReg_regn_1_n6, OutputReg_regn_1_n5, OutputReg_regn_1_n2,
         OutputReg_regn_1_n1, OutputReg_regn_0_n6, OutputReg_regn_0_n5,
         OutputReg_regn_0_n2, OutputReg_regn_0_n1, FF1_n2, FF1_n1, FF1_n4,
         FF1_n3, FF2_n6, FF2_n5, FF2_n2, FF2_n1, mult_87_n275, mult_87_n274,
         mult_87_n273, mult_87_n272, mult_87_n271, mult_87_n270, mult_87_n269,
         mult_87_n268, mult_87_n267, mult_87_n266, mult_87_n265, mult_87_n264,
         mult_87_n263, mult_87_n262, mult_87_n261, mult_87_n260, mult_87_n259,
         mult_87_n258, mult_87_n257, mult_87_n256, mult_87_n255, mult_87_n254,
         mult_87_n253, mult_87_n252, mult_87_n251, mult_87_n250, mult_87_n249,
         mult_87_n248, mult_87_n247, mult_87_n246, mult_87_n245, mult_87_n244,
         mult_87_n243, mult_87_n242, mult_87_n241, mult_87_n240, mult_87_n239,
         mult_87_n238, mult_87_n237, mult_87_n236, mult_87_n235, mult_87_n234,
         mult_87_n233, mult_87_n232, mult_87_n231, mult_87_n230, mult_87_n229,
         mult_87_n228, mult_87_n227, mult_87_n226, mult_87_n225, mult_87_n224,
         mult_87_n223, mult_87_n222, mult_87_n221, mult_87_n220, mult_87_n219,
         mult_87_n218, mult_87_n217, mult_87_n216, mult_87_n215, mult_87_n214,
         mult_87_n213, mult_87_n212, mult_87_n211, mult_87_n210, mult_87_n209,
         mult_87_n208, mult_87_n207, mult_87_n206, mult_87_n205, mult_87_n204,
         mult_87_n203, mult_87_n202, mult_87_n201, mult_87_n199, mult_87_n198,
         mult_87_n197, mult_87_n101, mult_87_n100, mult_87_n99, mult_87_n98,
         mult_87_n97, mult_87_n94, mult_87_n93, mult_87_n92, mult_87_n91,
         mult_87_n90, mult_87_n87, mult_87_n86, mult_87_n85, mult_87_n84,
         mult_87_n83, mult_87_n82, mult_87_n81, mult_87_n79, mult_87_n78,
         mult_87_n76, mult_87_n75, mult_87_n74, mult_87_n73, mult_87_n69,
         mult_87_n68, mult_87_n56, mult_87_n55, mult_87_n54, mult_87_n53,
         mult_87_n52, mult_87_n51, mult_87_n50, mult_87_n49, mult_87_n48,
         mult_87_n47, mult_87_n46, mult_87_n45, mult_87_n44, mult_87_n43,
         mult_87_n42, mult_87_n41, mult_87_n40, mult_87_n39, mult_87_n38,
         mult_87_n37, mult_87_n36, mult_87_n35, mult_87_n34, mult_87_n33,
         mult_87_n31, mult_87_n30, mult_87_n29, mult_87_n28, mult_87_n27,
         mult_87_n26, mult_87_n25, mult_87_n24, mult_87_n23, mult_87_n21,
         mult_87_n20, mult_87_n19, mult_87_n18, mult_87_n17, mult_87_n15,
         mult_87_n7, mult_87_n6, mult_87_n5, mult_87_n4, mult_87_n3,
         mult_87_n2, mult_87_n1;
  wire   [15:8] mul_partial;
  wire   [7:2] Stg_0_add_42_carry;
  wire   [7:2] Stg_1_add_42_carry;
  wire   [7:2] Stg_2_add_42_carry;
  wire   [7:2] Stg_3_add_42_carry;
  wire   [7:2] Stg_4_add_42_carry;
  wire   [7:2] Stg_5_add_42_carry;
  wire   [7:2] Stg_6_add_42_carry;
  wire   [7:2] Stg_7_add_42_carry;
  wire   [7:2] Stg_8_add_42_carry;
  wire   [7:2] Stg_9_add_42_carry;

  BUF_X2 U2 ( .A(n2), .Z(n5) );
  BUF_X2 U3 ( .A(n1), .Z(n4) );
  BUF_X2 U4 ( .A(n2), .Z(n6) );
  BUF_X1 U5 ( .A(VIN_internal), .Z(n2) );
  BUF_X1 U6 ( .A(VIN_internal), .Z(n1) );
  CLKBUF_X3 U7 ( .A(n1), .Z(n3) );
  INV_X1 InputReg_regn_7_U6 ( .A(RST_n), .ZN(InputReg_regn_7_n1) );
  INV_X1 InputReg_regn_7_U5 ( .A(VIN), .ZN(InputReg_regn_7_n2) );
  AOI22_X1 InputReg_regn_7_U4 ( .A1(VIN), .A2(DIN[7]), .B1(DIN_R_s_0__7_), 
        .B2(InputReg_regn_7_n2), .ZN(InputReg_regn_7_n6) );
  NOR2_X1 InputReg_regn_7_U3 ( .A1(InputReg_regn_7_n6), .A2(InputReg_regn_7_n1), .ZN(InputReg_regn_7_n5) );
  DFF_X1 InputReg_regn_7_Q_reg ( .D(InputReg_regn_7_n5), .CK(CLK), .Q(
        DIN_R_s_0__7_) );
  INV_X1 InputReg_regn_6_U6 ( .A(RST_n), .ZN(InputReg_regn_6_n1) );
  INV_X1 InputReg_regn_6_U5 ( .A(VIN), .ZN(InputReg_regn_6_n2) );
  AOI22_X1 InputReg_regn_6_U4 ( .A1(VIN), .A2(DIN[6]), .B1(DIN_R_s_0__6_), 
        .B2(InputReg_regn_6_n2), .ZN(InputReg_regn_6_n6) );
  NOR2_X1 InputReg_regn_6_U3 ( .A1(InputReg_regn_6_n6), .A2(InputReg_regn_6_n1), .ZN(InputReg_regn_6_n5) );
  DFF_X1 InputReg_regn_6_Q_reg ( .D(InputReg_regn_6_n5), .CK(CLK), .Q(
        DIN_R_s_0__6_) );
  INV_X1 InputReg_regn_5_U6 ( .A(RST_n), .ZN(InputReg_regn_5_n1) );
  INV_X1 InputReg_regn_5_U5 ( .A(VIN), .ZN(InputReg_regn_5_n2) );
  AOI22_X1 InputReg_regn_5_U4 ( .A1(VIN), .A2(DIN[5]), .B1(DIN_R_s_0__5_), 
        .B2(InputReg_regn_5_n2), .ZN(InputReg_regn_5_n6) );
  NOR2_X1 InputReg_regn_5_U3 ( .A1(InputReg_regn_5_n6), .A2(InputReg_regn_5_n1), .ZN(InputReg_regn_5_n5) );
  DFF_X1 InputReg_regn_5_Q_reg ( .D(InputReg_regn_5_n5), .CK(CLK), .Q(
        DIN_R_s_0__5_) );
  INV_X1 InputReg_regn_4_U6 ( .A(RST_n), .ZN(InputReg_regn_4_n1) );
  INV_X1 InputReg_regn_4_U5 ( .A(VIN), .ZN(InputReg_regn_4_n2) );
  AOI22_X1 InputReg_regn_4_U4 ( .A1(VIN), .A2(DIN[4]), .B1(DIN_R_s_0__4_), 
        .B2(InputReg_regn_4_n2), .ZN(InputReg_regn_4_n6) );
  NOR2_X1 InputReg_regn_4_U3 ( .A1(InputReg_regn_4_n6), .A2(InputReg_regn_4_n1), .ZN(InputReg_regn_4_n5) );
  DFF_X1 InputReg_regn_4_Q_reg ( .D(InputReg_regn_4_n5), .CK(CLK), .Q(
        DIN_R_s_0__4_) );
  INV_X1 InputReg_regn_3_U6 ( .A(RST_n), .ZN(InputReg_regn_3_n1) );
  INV_X1 InputReg_regn_3_U5 ( .A(VIN), .ZN(InputReg_regn_3_n2) );
  AOI22_X1 InputReg_regn_3_U4 ( .A1(VIN), .A2(DIN[3]), .B1(DIN_R_s_0__3_), 
        .B2(InputReg_regn_3_n2), .ZN(InputReg_regn_3_n6) );
  NOR2_X1 InputReg_regn_3_U3 ( .A1(InputReg_regn_3_n6), .A2(InputReg_regn_3_n1), .ZN(InputReg_regn_3_n5) );
  DFF_X1 InputReg_regn_3_Q_reg ( .D(InputReg_regn_3_n5), .CK(CLK), .Q(
        DIN_R_s_0__3_) );
  INV_X1 InputReg_regn_2_U6 ( .A(RST_n), .ZN(InputReg_regn_2_n1) );
  INV_X1 InputReg_regn_2_U5 ( .A(VIN), .ZN(InputReg_regn_2_n2) );
  AOI22_X1 InputReg_regn_2_U4 ( .A1(VIN), .A2(DIN[2]), .B1(DIN_R_s_0__2_), 
        .B2(InputReg_regn_2_n2), .ZN(InputReg_regn_2_n6) );
  NOR2_X1 InputReg_regn_2_U3 ( .A1(InputReg_regn_2_n6), .A2(InputReg_regn_2_n1), .ZN(InputReg_regn_2_n5) );
  DFF_X1 InputReg_regn_2_Q_reg ( .D(InputReg_regn_2_n5), .CK(CLK), .Q(
        DIN_R_s_0__2_) );
  INV_X1 InputReg_regn_1_U6 ( .A(RST_n), .ZN(InputReg_regn_1_n1) );
  INV_X1 InputReg_regn_1_U5 ( .A(VIN), .ZN(InputReg_regn_1_n2) );
  AOI22_X1 InputReg_regn_1_U4 ( .A1(VIN), .A2(DIN[1]), .B1(DIN_R_s_0__1_), 
        .B2(InputReg_regn_1_n2), .ZN(InputReg_regn_1_n6) );
  NOR2_X1 InputReg_regn_1_U3 ( .A1(InputReg_regn_1_n6), .A2(InputReg_regn_1_n1), .ZN(InputReg_regn_1_n5) );
  DFF_X1 InputReg_regn_1_Q_reg ( .D(InputReg_regn_1_n5), .CK(CLK), .Q(
        DIN_R_s_0__1_) );
  INV_X1 InputReg_regn_0_U6 ( .A(RST_n), .ZN(InputReg_regn_0_n1) );
  INV_X1 InputReg_regn_0_U5 ( .A(VIN), .ZN(InputReg_regn_0_n2) );
  AOI22_X1 InputReg_regn_0_U4 ( .A1(VIN), .A2(DIN[0]), .B1(DIN_R_s_0__0_), 
        .B2(InputReg_regn_0_n2), .ZN(InputReg_regn_0_n6) );
  NOR2_X1 InputReg_regn_0_U3 ( .A1(InputReg_regn_0_n6), .A2(InputReg_regn_0_n1), .ZN(InputReg_regn_0_n5) );
  DFF_X1 InputReg_regn_0_Q_reg ( .D(InputReg_regn_0_n5), .CK(CLK), .Q(
        DIN_R_s_0__0_) );
  INV_X1 Stg_0_REGn_regn_7_U6 ( .A(RST_n), .ZN(Stg_0_REGn_regn_7_n2) );
  INV_X1 Stg_0_REGn_regn_7_U5 ( .A(n3), .ZN(Stg_0_REGn_regn_7_n1) );
  AOI22_X1 Stg_0_REGn_regn_7_U4 ( .A1(n3), .A2(DIN_R_s_0__7_), .B1(
        DIN_R_s_1__7_), .B2(Stg_0_REGn_regn_7_n1), .ZN(Stg_0_REGn_regn_7_n6)
         );
  NOR2_X1 Stg_0_REGn_regn_7_U3 ( .A1(Stg_0_REGn_regn_7_n6), .A2(
        Stg_0_REGn_regn_7_n2), .ZN(Stg_0_REGn_regn_7_n5) );
  DFF_X1 Stg_0_REGn_regn_7_Q_reg ( .D(Stg_0_REGn_regn_7_n5), .CK(CLK), .Q(
        DIN_R_s_1__7_) );
  INV_X1 Stg_0_REGn_regn_6_U6 ( .A(RST_n), .ZN(Stg_0_REGn_regn_6_n2) );
  INV_X1 Stg_0_REGn_regn_6_U5 ( .A(n3), .ZN(Stg_0_REGn_regn_6_n1) );
  AOI22_X1 Stg_0_REGn_regn_6_U4 ( .A1(n3), .A2(DIN_R_s_0__6_), .B1(
        DIN_R_s_1__6_), .B2(Stg_0_REGn_regn_6_n1), .ZN(Stg_0_REGn_regn_6_n6)
         );
  NOR2_X1 Stg_0_REGn_regn_6_U3 ( .A1(Stg_0_REGn_regn_6_n6), .A2(
        Stg_0_REGn_regn_6_n2), .ZN(Stg_0_REGn_regn_6_n5) );
  DFF_X1 Stg_0_REGn_regn_6_Q_reg ( .D(Stg_0_REGn_regn_6_n5), .CK(CLK), .Q(
        DIN_R_s_1__6_) );
  INV_X1 Stg_0_REGn_regn_5_U6 ( .A(RST_n), .ZN(Stg_0_REGn_regn_5_n2) );
  INV_X1 Stg_0_REGn_regn_5_U5 ( .A(n3), .ZN(Stg_0_REGn_regn_5_n1) );
  AOI22_X1 Stg_0_REGn_regn_5_U4 ( .A1(n3), .A2(DIN_R_s_0__5_), .B1(
        DIN_R_s_1__5_), .B2(Stg_0_REGn_regn_5_n1), .ZN(Stg_0_REGn_regn_5_n6)
         );
  NOR2_X1 Stg_0_REGn_regn_5_U3 ( .A1(Stg_0_REGn_regn_5_n6), .A2(
        Stg_0_REGn_regn_5_n2), .ZN(Stg_0_REGn_regn_5_n5) );
  DFF_X1 Stg_0_REGn_regn_5_Q_reg ( .D(Stg_0_REGn_regn_5_n5), .CK(CLK), .Q(
        DIN_R_s_1__5_) );
  INV_X1 Stg_0_REGn_regn_4_U6 ( .A(RST_n), .ZN(Stg_0_REGn_regn_4_n2) );
  INV_X1 Stg_0_REGn_regn_4_U5 ( .A(n3), .ZN(Stg_0_REGn_regn_4_n1) );
  AOI22_X1 Stg_0_REGn_regn_4_U4 ( .A1(n3), .A2(DIN_R_s_0__4_), .B1(
        DIN_R_s_1__4_), .B2(Stg_0_REGn_regn_4_n1), .ZN(Stg_0_REGn_regn_4_n6)
         );
  NOR2_X1 Stg_0_REGn_regn_4_U3 ( .A1(Stg_0_REGn_regn_4_n6), .A2(
        Stg_0_REGn_regn_4_n2), .ZN(Stg_0_REGn_regn_4_n5) );
  DFF_X1 Stg_0_REGn_regn_4_Q_reg ( .D(Stg_0_REGn_regn_4_n5), .CK(CLK), .Q(
        DIN_R_s_1__4_) );
  INV_X1 Stg_0_REGn_regn_3_U6 ( .A(RST_n), .ZN(Stg_0_REGn_regn_3_n2) );
  INV_X1 Stg_0_REGn_regn_3_U5 ( .A(n3), .ZN(Stg_0_REGn_regn_3_n1) );
  AOI22_X1 Stg_0_REGn_regn_3_U4 ( .A1(n3), .A2(DIN_R_s_0__3_), .B1(
        DIN_R_s_1__3_), .B2(Stg_0_REGn_regn_3_n1), .ZN(Stg_0_REGn_regn_3_n6)
         );
  NOR2_X1 Stg_0_REGn_regn_3_U3 ( .A1(Stg_0_REGn_regn_3_n6), .A2(
        Stg_0_REGn_regn_3_n2), .ZN(Stg_0_REGn_regn_3_n5) );
  DFF_X1 Stg_0_REGn_regn_3_Q_reg ( .D(Stg_0_REGn_regn_3_n5), .CK(CLK), .Q(
        DIN_R_s_1__3_) );
  INV_X1 Stg_0_REGn_regn_2_U6 ( .A(RST_n), .ZN(Stg_0_REGn_regn_2_n2) );
  INV_X1 Stg_0_REGn_regn_2_U5 ( .A(n3), .ZN(Stg_0_REGn_regn_2_n1) );
  AOI22_X1 Stg_0_REGn_regn_2_U4 ( .A1(n3), .A2(DIN_R_s_0__2_), .B1(
        DIN_R_s_1__2_), .B2(Stg_0_REGn_regn_2_n1), .ZN(Stg_0_REGn_regn_2_n6)
         );
  NOR2_X1 Stg_0_REGn_regn_2_U3 ( .A1(Stg_0_REGn_regn_2_n6), .A2(
        Stg_0_REGn_regn_2_n2), .ZN(Stg_0_REGn_regn_2_n5) );
  DFF_X1 Stg_0_REGn_regn_2_Q_reg ( .D(Stg_0_REGn_regn_2_n5), .CK(CLK), .Q(
        DIN_R_s_1__2_) );
  INV_X1 Stg_0_REGn_regn_1_U6 ( .A(RST_n), .ZN(Stg_0_REGn_regn_1_n2) );
  INV_X1 Stg_0_REGn_regn_1_U5 ( .A(n3), .ZN(Stg_0_REGn_regn_1_n1) );
  AOI22_X1 Stg_0_REGn_regn_1_U4 ( .A1(n3), .A2(DIN_R_s_0__1_), .B1(
        DIN_R_s_1__1_), .B2(Stg_0_REGn_regn_1_n1), .ZN(Stg_0_REGn_regn_1_n6)
         );
  NOR2_X1 Stg_0_REGn_regn_1_U3 ( .A1(Stg_0_REGn_regn_1_n6), .A2(
        Stg_0_REGn_regn_1_n2), .ZN(Stg_0_REGn_regn_1_n5) );
  DFF_X1 Stg_0_REGn_regn_1_Q_reg ( .D(Stg_0_REGn_regn_1_n5), .CK(CLK), .Q(
        DIN_R_s_1__1_) );
  INV_X1 Stg_0_REGn_regn_0_U6 ( .A(RST_n), .ZN(Stg_0_REGn_regn_0_n2) );
  INV_X1 Stg_0_REGn_regn_0_U5 ( .A(n3), .ZN(Stg_0_REGn_regn_0_n1) );
  AOI22_X1 Stg_0_REGn_regn_0_U4 ( .A1(n3), .A2(DIN_R_s_0__0_), .B1(
        DIN_R_s_1__0_), .B2(Stg_0_REGn_regn_0_n1), .ZN(Stg_0_REGn_regn_0_n6)
         );
  NOR2_X1 Stg_0_REGn_regn_0_U3 ( .A1(Stg_0_REGn_regn_0_n6), .A2(
        Stg_0_REGn_regn_0_n2), .ZN(Stg_0_REGn_regn_0_n5) );
  DFF_X1 Stg_0_REGn_regn_0_Q_reg ( .D(Stg_0_REGn_regn_0_n5), .CK(CLK), .Q(
        DIN_R_s_1__0_) );
  XNOR2_X1 Stg_0_mult_41_U263 ( .A(H1[3]), .B(DIN_R_s_1__1_), .ZN(
        Stg_0_mult_41_n275) );
  NAND2_X1 Stg_0_mult_41_U262 ( .A1(DIN_R_s_1__1_), .A2(Stg_0_mult_41_n217), 
        .ZN(Stg_0_mult_41_n221) );
  XNOR2_X1 Stg_0_mult_41_U261 ( .A(H1[4]), .B(DIN_R_s_1__1_), .ZN(
        Stg_0_mult_41_n220) );
  OAI22_X1 Stg_0_mult_41_U260 ( .A1(Stg_0_mult_41_n275), .A2(
        Stg_0_mult_41_n221), .B1(Stg_0_mult_41_n220), .B2(Stg_0_mult_41_n217), 
        .ZN(Stg_0_mult_41_n100) );
  XNOR2_X1 Stg_0_mult_41_U259 ( .A(H1[2]), .B(DIN_R_s_1__1_), .ZN(
        Stg_0_mult_41_n255) );
  OAI22_X1 Stg_0_mult_41_U258 ( .A1(Stg_0_mult_41_n255), .A2(
        Stg_0_mult_41_n221), .B1(Stg_0_mult_41_n275), .B2(Stg_0_mult_41_n217), 
        .ZN(Stg_0_mult_41_n101) );
  XNOR2_X1 Stg_0_mult_41_U257 ( .A(H1[6]), .B(DIN_R_s_1__7_), .ZN(
        Stg_0_mult_41_n264) );
  XNOR2_X1 Stg_0_mult_41_U256 ( .A(Stg_0_mult_41_n204), .B(DIN_R_s_1__6_), 
        .ZN(Stg_0_mult_41_n274) );
  NAND2_X1 Stg_0_mult_41_U255 ( .A1(Stg_0_mult_41_n256), .A2(
        Stg_0_mult_41_n274), .ZN(Stg_0_mult_41_n258) );
  XNOR2_X1 Stg_0_mult_41_U254 ( .A(H1[7]), .B(DIN_R_s_1__7_), .ZN(
        Stg_0_mult_41_n266) );
  OAI22_X1 Stg_0_mult_41_U253 ( .A1(Stg_0_mult_41_n264), .A2(
        Stg_0_mult_41_n258), .B1(Stg_0_mult_41_n256), .B2(Stg_0_mult_41_n266), 
        .ZN(Stg_0_mult_41_n15) );
  XNOR2_X1 Stg_0_mult_41_U252 ( .A(H1[6]), .B(DIN_R_s_1__5_), .ZN(
        Stg_0_mult_41_n243) );
  XNOR2_X1 Stg_0_mult_41_U251 ( .A(Stg_0_mult_41_n209), .B(DIN_R_s_1__4_), 
        .ZN(Stg_0_mult_41_n273) );
  NAND2_X1 Stg_0_mult_41_U250 ( .A1(Stg_0_mult_41_n235), .A2(
        Stg_0_mult_41_n273), .ZN(Stg_0_mult_41_n237) );
  XNOR2_X1 Stg_0_mult_41_U249 ( .A(H1[7]), .B(DIN_R_s_1__5_), .ZN(
        Stg_0_mult_41_n245) );
  OAI22_X1 Stg_0_mult_41_U248 ( .A1(Stg_0_mult_41_n243), .A2(
        Stg_0_mult_41_n237), .B1(Stg_0_mult_41_n235), .B2(Stg_0_mult_41_n245), 
        .ZN(Stg_0_mult_41_n21) );
  XNOR2_X1 Stg_0_mult_41_U247 ( .A(H1[6]), .B(DIN_R_s_1__3_), .ZN(
        Stg_0_mult_41_n271) );
  XOR2_X1 Stg_0_mult_41_U246 ( .A(DIN_R_s_1__2_), .B(DIN_R_s_1__1_), .Z(
        Stg_0_mult_41_n253) );
  XNOR2_X1 Stg_0_mult_41_U245 ( .A(Stg_0_mult_41_n214), .B(DIN_R_s_1__2_), 
        .ZN(Stg_0_mult_41_n272) );
  NAND2_X1 Stg_0_mult_41_U244 ( .A1(Stg_0_mult_41_n215), .A2(
        Stg_0_mult_41_n272), .ZN(Stg_0_mult_41_n227) );
  XNOR2_X1 Stg_0_mult_41_U243 ( .A(H1[7]), .B(DIN_R_s_1__3_), .ZN(
        Stg_0_mult_41_n234) );
  OAI22_X1 Stg_0_mult_41_U242 ( .A1(Stg_0_mult_41_n271), .A2(
        Stg_0_mult_41_n227), .B1(Stg_0_mult_41_n215), .B2(Stg_0_mult_41_n234), 
        .ZN(Stg_0_mult_41_n31) );
  XNOR2_X1 Stg_0_mult_41_U241 ( .A(H1[1]), .B(DIN_R_s_1__7_), .ZN(
        Stg_0_mult_41_n259) );
  XNOR2_X1 Stg_0_mult_41_U240 ( .A(H1[2]), .B(DIN_R_s_1__7_), .ZN(
        Stg_0_mult_41_n260) );
  OAI22_X1 Stg_0_mult_41_U239 ( .A1(Stg_0_mult_41_n259), .A2(
        Stg_0_mult_41_n258), .B1(Stg_0_mult_41_n256), .B2(Stg_0_mult_41_n260), 
        .ZN(Stg_0_mult_41_n269) );
  XNOR2_X1 Stg_0_mult_41_U238 ( .A(H1[5]), .B(DIN_R_s_1__3_), .ZN(
        Stg_0_mult_41_n232) );
  OAI22_X1 Stg_0_mult_41_U237 ( .A1(Stg_0_mult_41_n232), .A2(
        Stg_0_mult_41_n227), .B1(Stg_0_mult_41_n215), .B2(Stg_0_mult_41_n271), 
        .ZN(Stg_0_mult_41_n270) );
  OR2_X1 Stg_0_mult_41_U236 ( .A1(Stg_0_mult_41_n269), .A2(Stg_0_mult_41_n270), 
        .ZN(Stg_0_mult_41_n37) );
  XNOR2_X1 Stg_0_mult_41_U235 ( .A(Stg_0_mult_41_n269), .B(Stg_0_mult_41_n270), 
        .ZN(Stg_0_mult_41_n38) );
  OR3_X1 Stg_0_mult_41_U234 ( .A1(Stg_0_mult_41_n256), .A2(H1[0]), .A3(
        Stg_0_mult_41_n204), .ZN(Stg_0_mult_41_n268) );
  OAI21_X1 Stg_0_mult_41_U233 ( .B1(Stg_0_mult_41_n204), .B2(
        Stg_0_mult_41_n258), .A(Stg_0_mult_41_n268), .ZN(Stg_0_mult_41_n68) );
  OR3_X1 Stg_0_mult_41_U232 ( .A1(Stg_0_mult_41_n235), .A2(H1[0]), .A3(
        Stg_0_mult_41_n209), .ZN(Stg_0_mult_41_n267) );
  OAI21_X1 Stg_0_mult_41_U231 ( .B1(Stg_0_mult_41_n209), .B2(
        Stg_0_mult_41_n237), .A(Stg_0_mult_41_n267), .ZN(Stg_0_mult_41_n69) );
  OAI22_X1 Stg_0_mult_41_U230 ( .A1(Stg_0_mult_41_n266), .A2(
        Stg_0_mult_41_n256), .B1(Stg_0_mult_41_n258), .B2(Stg_0_mult_41_n266), 
        .ZN(Stg_0_mult_41_n265) );
  XNOR2_X1 Stg_0_mult_41_U229 ( .A(H1[5]), .B(DIN_R_s_1__7_), .ZN(
        Stg_0_mult_41_n263) );
  OAI22_X1 Stg_0_mult_41_U228 ( .A1(Stg_0_mult_41_n263), .A2(
        Stg_0_mult_41_n258), .B1(Stg_0_mult_41_n256), .B2(Stg_0_mult_41_n264), 
        .ZN(Stg_0_mult_41_n73) );
  XNOR2_X1 Stg_0_mult_41_U227 ( .A(H1[4]), .B(DIN_R_s_1__7_), .ZN(
        Stg_0_mult_41_n262) );
  OAI22_X1 Stg_0_mult_41_U226 ( .A1(Stg_0_mult_41_n262), .A2(
        Stg_0_mult_41_n258), .B1(Stg_0_mult_41_n256), .B2(Stg_0_mult_41_n263), 
        .ZN(Stg_0_mult_41_n74) );
  XNOR2_X1 Stg_0_mult_41_U225 ( .A(H1[3]), .B(DIN_R_s_1__7_), .ZN(
        Stg_0_mult_41_n261) );
  OAI22_X1 Stg_0_mult_41_U224 ( .A1(Stg_0_mult_41_n261), .A2(
        Stg_0_mult_41_n258), .B1(Stg_0_mult_41_n256), .B2(Stg_0_mult_41_n262), 
        .ZN(Stg_0_mult_41_n75) );
  OAI22_X1 Stg_0_mult_41_U223 ( .A1(Stg_0_mult_41_n260), .A2(
        Stg_0_mult_41_n258), .B1(Stg_0_mult_41_n256), .B2(Stg_0_mult_41_n261), 
        .ZN(Stg_0_mult_41_n76) );
  XNOR2_X1 Stg_0_mult_41_U222 ( .A(H1[0]), .B(DIN_R_s_1__7_), .ZN(
        Stg_0_mult_41_n257) );
  OAI22_X1 Stg_0_mult_41_U221 ( .A1(Stg_0_mult_41_n257), .A2(
        Stg_0_mult_41_n258), .B1(Stg_0_mult_41_n256), .B2(Stg_0_mult_41_n259), 
        .ZN(Stg_0_mult_41_n78) );
  NOR2_X1 Stg_0_mult_41_U220 ( .A1(Stg_0_mult_41_n256), .A2(Stg_0_mult_41_n219), .ZN(Stg_0_mult_41_n79) );
  OAI22_X1 Stg_0_mult_41_U219 ( .A1(H1[1]), .A2(Stg_0_mult_41_n221), .B1(
        Stg_0_mult_41_n255), .B2(Stg_0_mult_41_n217), .ZN(Stg_0_mult_41_n254)
         );
  NAND3_X1 Stg_0_mult_41_U218 ( .A1(Stg_0_mult_41_n253), .A2(
        Stg_0_mult_41_n219), .A3(DIN_R_s_1__3_), .ZN(Stg_0_mult_41_n252) );
  OAI21_X1 Stg_0_mult_41_U217 ( .B1(Stg_0_mult_41_n214), .B2(
        Stg_0_mult_41_n227), .A(Stg_0_mult_41_n252), .ZN(Stg_0_mult_41_n251)
         );
  AOI222_X1 Stg_0_mult_41_U216 ( .A1(Stg_0_mult_41_n197), .A2(
        Stg_0_mult_41_n56), .B1(Stg_0_mult_41_n251), .B2(Stg_0_mult_41_n197), 
        .C1(Stg_0_mult_41_n251), .C2(Stg_0_mult_41_n56), .ZN(
        Stg_0_mult_41_n250) );
  AOI222_X1 Stg_0_mult_41_U215 ( .A1(Stg_0_mult_41_n211), .A2(
        Stg_0_mult_41_n54), .B1(Stg_0_mult_41_n211), .B2(Stg_0_mult_41_n55), 
        .C1(Stg_0_mult_41_n55), .C2(Stg_0_mult_41_n54), .ZN(Stg_0_mult_41_n249) );
  AOI222_X1 Stg_0_mult_41_U214 ( .A1(Stg_0_mult_41_n210), .A2(
        Stg_0_mult_41_n50), .B1(Stg_0_mult_41_n210), .B2(Stg_0_mult_41_n53), 
        .C1(Stg_0_mult_41_n53), .C2(Stg_0_mult_41_n50), .ZN(Stg_0_mult_41_n248) );
  AOI222_X1 Stg_0_mult_41_U213 ( .A1(Stg_0_mult_41_n206), .A2(
        Stg_0_mult_41_n46), .B1(Stg_0_mult_41_n206), .B2(Stg_0_mult_41_n49), 
        .C1(Stg_0_mult_41_n49), .C2(Stg_0_mult_41_n46), .ZN(Stg_0_mult_41_n247) );
  AOI222_X1 Stg_0_mult_41_U212 ( .A1(Stg_0_mult_41_n205), .A2(
        Stg_0_mult_41_n40), .B1(Stg_0_mult_41_n205), .B2(Stg_0_mult_41_n45), 
        .C1(Stg_0_mult_41_n45), .C2(Stg_0_mult_41_n40), .ZN(Stg_0_mult_41_n246) );
  OAI22_X1 Stg_0_mult_41_U211 ( .A1(Stg_0_mult_41_n245), .A2(
        Stg_0_mult_41_n235), .B1(Stg_0_mult_41_n237), .B2(Stg_0_mult_41_n245), 
        .ZN(Stg_0_mult_41_n244) );
  XNOR2_X1 Stg_0_mult_41_U210 ( .A(H1[5]), .B(DIN_R_s_1__5_), .ZN(
        Stg_0_mult_41_n242) );
  OAI22_X1 Stg_0_mult_41_U209 ( .A1(Stg_0_mult_41_n242), .A2(
        Stg_0_mult_41_n237), .B1(Stg_0_mult_41_n235), .B2(Stg_0_mult_41_n243), 
        .ZN(Stg_0_mult_41_n81) );
  XNOR2_X1 Stg_0_mult_41_U208 ( .A(H1[4]), .B(DIN_R_s_1__5_), .ZN(
        Stg_0_mult_41_n241) );
  OAI22_X1 Stg_0_mult_41_U207 ( .A1(Stg_0_mult_41_n241), .A2(
        Stg_0_mult_41_n237), .B1(Stg_0_mult_41_n235), .B2(Stg_0_mult_41_n242), 
        .ZN(Stg_0_mult_41_n82) );
  XNOR2_X1 Stg_0_mult_41_U206 ( .A(H1[3]), .B(DIN_R_s_1__5_), .ZN(
        Stg_0_mult_41_n240) );
  OAI22_X1 Stg_0_mult_41_U205 ( .A1(Stg_0_mult_41_n240), .A2(
        Stg_0_mult_41_n237), .B1(Stg_0_mult_41_n235), .B2(Stg_0_mult_41_n241), 
        .ZN(Stg_0_mult_41_n83) );
  XNOR2_X1 Stg_0_mult_41_U204 ( .A(H1[2]), .B(DIN_R_s_1__5_), .ZN(
        Stg_0_mult_41_n239) );
  OAI22_X1 Stg_0_mult_41_U203 ( .A1(Stg_0_mult_41_n239), .A2(
        Stg_0_mult_41_n237), .B1(Stg_0_mult_41_n235), .B2(Stg_0_mult_41_n240), 
        .ZN(Stg_0_mult_41_n84) );
  XNOR2_X1 Stg_0_mult_41_U202 ( .A(H1[1]), .B(DIN_R_s_1__5_), .ZN(
        Stg_0_mult_41_n238) );
  OAI22_X1 Stg_0_mult_41_U201 ( .A1(Stg_0_mult_41_n238), .A2(
        Stg_0_mult_41_n237), .B1(Stg_0_mult_41_n235), .B2(Stg_0_mult_41_n239), 
        .ZN(Stg_0_mult_41_n85) );
  XNOR2_X1 Stg_0_mult_41_U200 ( .A(H1[0]), .B(DIN_R_s_1__5_), .ZN(
        Stg_0_mult_41_n236) );
  OAI22_X1 Stg_0_mult_41_U199 ( .A1(Stg_0_mult_41_n236), .A2(
        Stg_0_mult_41_n237), .B1(Stg_0_mult_41_n235), .B2(Stg_0_mult_41_n238), 
        .ZN(Stg_0_mult_41_n86) );
  NOR2_X1 Stg_0_mult_41_U198 ( .A1(Stg_0_mult_41_n235), .A2(Stg_0_mult_41_n219), .ZN(Stg_0_mult_41_n87) );
  OAI22_X1 Stg_0_mult_41_U197 ( .A1(Stg_0_mult_41_n234), .A2(
        Stg_0_mult_41_n215), .B1(Stg_0_mult_41_n227), .B2(Stg_0_mult_41_n234), 
        .ZN(Stg_0_mult_41_n233) );
  XNOR2_X1 Stg_0_mult_41_U196 ( .A(H1[4]), .B(DIN_R_s_1__3_), .ZN(
        Stg_0_mult_41_n231) );
  OAI22_X1 Stg_0_mult_41_U195 ( .A1(Stg_0_mult_41_n231), .A2(
        Stg_0_mult_41_n227), .B1(Stg_0_mult_41_n215), .B2(Stg_0_mult_41_n232), 
        .ZN(Stg_0_mult_41_n90) );
  XNOR2_X1 Stg_0_mult_41_U194 ( .A(H1[3]), .B(DIN_R_s_1__3_), .ZN(
        Stg_0_mult_41_n230) );
  OAI22_X1 Stg_0_mult_41_U193 ( .A1(Stg_0_mult_41_n230), .A2(
        Stg_0_mult_41_n227), .B1(Stg_0_mult_41_n215), .B2(Stg_0_mult_41_n231), 
        .ZN(Stg_0_mult_41_n91) );
  XNOR2_X1 Stg_0_mult_41_U192 ( .A(H1[2]), .B(DIN_R_s_1__3_), .ZN(
        Stg_0_mult_41_n229) );
  OAI22_X1 Stg_0_mult_41_U191 ( .A1(Stg_0_mult_41_n229), .A2(
        Stg_0_mult_41_n227), .B1(Stg_0_mult_41_n215), .B2(Stg_0_mult_41_n230), 
        .ZN(Stg_0_mult_41_n92) );
  XNOR2_X1 Stg_0_mult_41_U190 ( .A(H1[1]), .B(DIN_R_s_1__3_), .ZN(
        Stg_0_mult_41_n228) );
  OAI22_X1 Stg_0_mult_41_U189 ( .A1(Stg_0_mult_41_n228), .A2(
        Stg_0_mult_41_n227), .B1(Stg_0_mult_41_n215), .B2(Stg_0_mult_41_n229), 
        .ZN(Stg_0_mult_41_n93) );
  XNOR2_X1 Stg_0_mult_41_U188 ( .A(H1[0]), .B(DIN_R_s_1__3_), .ZN(
        Stg_0_mult_41_n226) );
  OAI22_X1 Stg_0_mult_41_U187 ( .A1(Stg_0_mult_41_n226), .A2(
        Stg_0_mult_41_n227), .B1(Stg_0_mult_41_n215), .B2(Stg_0_mult_41_n228), 
        .ZN(Stg_0_mult_41_n94) );
  XNOR2_X1 Stg_0_mult_41_U186 ( .A(H1[7]), .B(DIN_R_s_1__1_), .ZN(
        Stg_0_mult_41_n224) );
  OAI22_X1 Stg_0_mult_41_U185 ( .A1(Stg_0_mult_41_n217), .A2(
        Stg_0_mult_41_n224), .B1(Stg_0_mult_41_n221), .B2(Stg_0_mult_41_n224), 
        .ZN(Stg_0_mult_41_n225) );
  XNOR2_X1 Stg_0_mult_41_U184 ( .A(H1[6]), .B(DIN_R_s_1__1_), .ZN(
        Stg_0_mult_41_n223) );
  OAI22_X1 Stg_0_mult_41_U183 ( .A1(Stg_0_mult_41_n223), .A2(
        Stg_0_mult_41_n221), .B1(Stg_0_mult_41_n224), .B2(Stg_0_mult_41_n217), 
        .ZN(Stg_0_mult_41_n97) );
  XNOR2_X1 Stg_0_mult_41_U182 ( .A(H1[5]), .B(DIN_R_s_1__1_), .ZN(
        Stg_0_mult_41_n222) );
  OAI22_X1 Stg_0_mult_41_U181 ( .A1(Stg_0_mult_41_n222), .A2(
        Stg_0_mult_41_n221), .B1(Stg_0_mult_41_n223), .B2(Stg_0_mult_41_n217), 
        .ZN(Stg_0_mult_41_n98) );
  OAI22_X1 Stg_0_mult_41_U180 ( .A1(Stg_0_mult_41_n220), .A2(
        Stg_0_mult_41_n221), .B1(Stg_0_mult_41_n222), .B2(Stg_0_mult_41_n217), 
        .ZN(Stg_0_mult_41_n99) );
  INV_X1 Stg_0_mult_41_U179 ( .A(DIN_R_s_1__7_), .ZN(Stg_0_mult_41_n204) );
  INV_X1 Stg_0_mult_41_U178 ( .A(H1[1]), .ZN(Stg_0_mult_41_n218) );
  AND3_X1 Stg_0_mult_41_U177 ( .A1(Stg_0_mult_41_n254), .A2(Stg_0_mult_41_n218), .A3(DIN_R_s_1__1_), .ZN(Stg_0_mult_41_n199) );
  AND2_X1 Stg_0_mult_41_U176 ( .A1(Stg_0_mult_41_n253), .A2(Stg_0_mult_41_n254), .ZN(Stg_0_mult_41_n198) );
  MUX2_X1 Stg_0_mult_41_U175 ( .A(Stg_0_mult_41_n198), .B(Stg_0_mult_41_n199), 
        .S(Stg_0_mult_41_n219), .Z(Stg_0_mult_41_n197) );
  INV_X1 Stg_0_mult_41_U174 ( .A(H1[0]), .ZN(Stg_0_mult_41_n219) );
  INV_X1 Stg_0_mult_41_U173 ( .A(DIN_R_s_1__5_), .ZN(Stg_0_mult_41_n209) );
  INV_X1 Stg_0_mult_41_U172 ( .A(DIN_R_s_1__3_), .ZN(Stg_0_mult_41_n214) );
  INV_X1 Stg_0_mult_41_U171 ( .A(DIN_R_s_1__0_), .ZN(Stg_0_mult_41_n217) );
  XOR2_X1 Stg_0_mult_41_U170 ( .A(DIN_R_s_1__6_), .B(Stg_0_mult_41_n209), .Z(
        Stg_0_mult_41_n256) );
  XOR2_X1 Stg_0_mult_41_U169 ( .A(DIN_R_s_1__4_), .B(Stg_0_mult_41_n214), .Z(
        Stg_0_mult_41_n235) );
  INV_X1 Stg_0_mult_41_U168 ( .A(Stg_0_mult_41_n31), .ZN(Stg_0_mult_41_n212)
         );
  INV_X1 Stg_0_mult_41_U167 ( .A(Stg_0_mult_41_n233), .ZN(Stg_0_mult_41_n213)
         );
  INV_X1 Stg_0_mult_41_U166 ( .A(Stg_0_mult_41_n244), .ZN(Stg_0_mult_41_n208)
         );
  INV_X1 Stg_0_mult_41_U165 ( .A(Stg_0_mult_41_n21), .ZN(Stg_0_mult_41_n207)
         );
  INV_X1 Stg_0_mult_41_U164 ( .A(Stg_0_mult_41_n246), .ZN(Stg_0_mult_41_n201)
         );
  INV_X1 Stg_0_mult_41_U163 ( .A(Stg_0_mult_41_n225), .ZN(Stg_0_mult_41_n216)
         );
  INV_X1 Stg_0_mult_41_U162 ( .A(Stg_0_mult_41_n265), .ZN(Stg_0_mult_41_n203)
         );
  INV_X1 Stg_0_mult_41_U161 ( .A(Stg_0_mult_41_n253), .ZN(Stg_0_mult_41_n215)
         );
  INV_X1 Stg_0_mult_41_U160 ( .A(Stg_0_mult_41_n250), .ZN(Stg_0_mult_41_n211)
         );
  INV_X1 Stg_0_mult_41_U159 ( .A(Stg_0_mult_41_n249), .ZN(Stg_0_mult_41_n210)
         );
  INV_X1 Stg_0_mult_41_U158 ( .A(Stg_0_mult_41_n248), .ZN(Stg_0_mult_41_n206)
         );
  INV_X1 Stg_0_mult_41_U157 ( .A(Stg_0_mult_41_n247), .ZN(Stg_0_mult_41_n205)
         );
  INV_X1 Stg_0_mult_41_U156 ( .A(Stg_0_mult_41_n15), .ZN(Stg_0_mult_41_n202)
         );
  INV_X1 Stg_0_mult_41_U155 ( .A(Stg_0_mult_41_n1), .ZN(Stg_0_mult_partial_15_) );
  HA_X1 Stg_0_mult_41_U37 ( .A(Stg_0_mult_41_n94), .B(Stg_0_mult_41_n101), 
        .CO(Stg_0_mult_41_n55), .S(Stg_0_mult_41_n56) );
  FA_X1 Stg_0_mult_41_U36 ( .A(Stg_0_mult_41_n100), .B(Stg_0_mult_41_n87), 
        .CI(Stg_0_mult_41_n93), .CO(Stg_0_mult_41_n53), .S(Stg_0_mult_41_n54)
         );
  HA_X1 Stg_0_mult_41_U35 ( .A(Stg_0_mult_41_n69), .B(Stg_0_mult_41_n86), .CO(
        Stg_0_mult_41_n51), .S(Stg_0_mult_41_n52) );
  FA_X1 Stg_0_mult_41_U34 ( .A(Stg_0_mult_41_n92), .B(Stg_0_mult_41_n99), .CI(
        Stg_0_mult_41_n52), .CO(Stg_0_mult_41_n49), .S(Stg_0_mult_41_n50) );
  FA_X1 Stg_0_mult_41_U33 ( .A(Stg_0_mult_41_n98), .B(Stg_0_mult_41_n79), .CI(
        Stg_0_mult_41_n91), .CO(Stg_0_mult_41_n47), .S(Stg_0_mult_41_n48) );
  FA_X1 Stg_0_mult_41_U32 ( .A(Stg_0_mult_41_n51), .B(Stg_0_mult_41_n85), .CI(
        Stg_0_mult_41_n48), .CO(Stg_0_mult_41_n45), .S(Stg_0_mult_41_n46) );
  HA_X1 Stg_0_mult_41_U31 ( .A(Stg_0_mult_41_n68), .B(Stg_0_mult_41_n78), .CO(
        Stg_0_mult_41_n43), .S(Stg_0_mult_41_n44) );
  FA_X1 Stg_0_mult_41_U30 ( .A(Stg_0_mult_41_n84), .B(Stg_0_mult_41_n97), .CI(
        Stg_0_mult_41_n90), .CO(Stg_0_mult_41_n41), .S(Stg_0_mult_41_n42) );
  FA_X1 Stg_0_mult_41_U29 ( .A(Stg_0_mult_41_n47), .B(Stg_0_mult_41_n44), .CI(
        Stg_0_mult_41_n42), .CO(Stg_0_mult_41_n39), .S(Stg_0_mult_41_n40) );
  FA_X1 Stg_0_mult_41_U26 ( .A(Stg_0_mult_41_n216), .B(Stg_0_mult_41_n83), 
        .CI(Stg_0_mult_41_n43), .CO(Stg_0_mult_41_n35), .S(Stg_0_mult_41_n36)
         );
  FA_X1 Stg_0_mult_41_U25 ( .A(Stg_0_mult_41_n41), .B(Stg_0_mult_41_n38), .CI(
        Stg_0_mult_41_n36), .CO(Stg_0_mult_41_n33), .S(Stg_0_mult_41_n34) );
  FA_X1 Stg_0_mult_41_U23 ( .A(Stg_0_mult_41_n76), .B(Stg_0_mult_41_n82), .CI(
        Stg_0_mult_41_n212), .CO(Stg_0_mult_41_n29), .S(Stg_0_mult_41_n30) );
  FA_X1 Stg_0_mult_41_U22 ( .A(Stg_0_mult_41_n35), .B(Stg_0_mult_41_n37), .CI(
        Stg_0_mult_41_n30), .CO(Stg_0_mult_41_n27), .S(Stg_0_mult_41_n28) );
  FA_X1 Stg_0_mult_41_U21 ( .A(Stg_0_mult_41_n81), .B(Stg_0_mult_41_n31), .CI(
        Stg_0_mult_41_n213), .CO(Stg_0_mult_41_n25), .S(Stg_0_mult_41_n26) );
  FA_X1 Stg_0_mult_41_U20 ( .A(Stg_0_mult_41_n29), .B(Stg_0_mult_41_n75), .CI(
        Stg_0_mult_41_n26), .CO(Stg_0_mult_41_n23), .S(Stg_0_mult_41_n24) );
  FA_X1 Stg_0_mult_41_U18 ( .A(Stg_0_mult_41_n207), .B(Stg_0_mult_41_n74), 
        .CI(Stg_0_mult_41_n25), .CO(Stg_0_mult_41_n19), .S(Stg_0_mult_41_n20)
         );
  FA_X1 Stg_0_mult_41_U17 ( .A(Stg_0_mult_41_n73), .B(Stg_0_mult_41_n21), .CI(
        Stg_0_mult_41_n208), .CO(Stg_0_mult_41_n17), .S(Stg_0_mult_41_n18) );
  FA_X1 Stg_0_mult_41_U8 ( .A(Stg_0_mult_41_n34), .B(Stg_0_mult_41_n39), .CI(
        Stg_0_mult_41_n201), .CO(Stg_0_mult_41_n7), .S(Stg_0_mult_partial_8_)
         );
  FA_X1 Stg_0_mult_41_U7 ( .A(Stg_0_mult_41_n28), .B(Stg_0_mult_41_n33), .CI(
        Stg_0_mult_41_n7), .CO(Stg_0_mult_41_n6), .S(Stg_0_mult_partial_9_) );
  FA_X1 Stg_0_mult_41_U6 ( .A(Stg_0_mult_41_n24), .B(Stg_0_mult_41_n27), .CI(
        Stg_0_mult_41_n6), .CO(Stg_0_mult_41_n5), .S(Stg_0_mult_partial_10_)
         );
  FA_X1 Stg_0_mult_41_U5 ( .A(Stg_0_mult_41_n20), .B(Stg_0_mult_41_n23), .CI(
        Stg_0_mult_41_n5), .CO(Stg_0_mult_41_n4), .S(Stg_0_mult_partial_11_)
         );
  FA_X1 Stg_0_mult_41_U4 ( .A(Stg_0_mult_41_n19), .B(Stg_0_mult_41_n18), .CI(
        Stg_0_mult_41_n4), .CO(Stg_0_mult_41_n3), .S(Stg_0_mult_partial_12_)
         );
  FA_X1 Stg_0_mult_41_U3 ( .A(Stg_0_mult_41_n17), .B(Stg_0_mult_41_n202), .CI(
        Stg_0_mult_41_n3), .CO(Stg_0_mult_41_n2), .S(Stg_0_mult_partial_13_)
         );
  FA_X1 Stg_0_mult_41_U2 ( .A(Stg_0_mult_41_n203), .B(Stg_0_mult_41_n15), .CI(
        Stg_0_mult_41_n2), .CO(Stg_0_mult_41_n1), .S(Stg_0_mult_partial_14_)
         );
  XOR2_X1 Stg_0_add_42_U2 ( .A(mul_partial[8]), .B(Stg_0_mult_partial_8_), .Z(
        DIN_A_s_1__0_) );
  AND2_X1 Stg_0_add_42_U1 ( .A1(mul_partial[8]), .A2(Stg_0_mult_partial_8_), 
        .ZN(Stg_0_add_42_n1) );
  FA_X1 Stg_0_add_42_U1_1 ( .A(Stg_0_mult_partial_9_), .B(mul_partial[9]), 
        .CI(Stg_0_add_42_n1), .CO(Stg_0_add_42_carry[2]), .S(DIN_A_s_1__1_) );
  FA_X1 Stg_0_add_42_U1_2 ( .A(Stg_0_mult_partial_10_), .B(mul_partial[10]), 
        .CI(Stg_0_add_42_carry[2]), .CO(Stg_0_add_42_carry[3]), .S(
        DIN_A_s_1__2_) );
  FA_X1 Stg_0_add_42_U1_3 ( .A(Stg_0_mult_partial_11_), .B(mul_partial[11]), 
        .CI(Stg_0_add_42_carry[3]), .CO(Stg_0_add_42_carry[4]), .S(
        DIN_A_s_1__3_) );
  FA_X1 Stg_0_add_42_U1_4 ( .A(Stg_0_mult_partial_12_), .B(mul_partial[12]), 
        .CI(Stg_0_add_42_carry[4]), .CO(Stg_0_add_42_carry[5]), .S(
        DIN_A_s_1__4_) );
  FA_X1 Stg_0_add_42_U1_5 ( .A(Stg_0_mult_partial_13_), .B(mul_partial[13]), 
        .CI(Stg_0_add_42_carry[5]), .CO(Stg_0_add_42_carry[6]), .S(
        DIN_A_s_1__5_) );
  FA_X1 Stg_0_add_42_U1_6 ( .A(Stg_0_mult_partial_14_), .B(mul_partial[14]), 
        .CI(Stg_0_add_42_carry[6]), .CO(Stg_0_add_42_carry[7]), .S(
        DIN_A_s_1__6_) );
  FA_X1 Stg_0_add_42_U1_7 ( .A(Stg_0_mult_partial_15_), .B(mul_partial[15]), 
        .CI(Stg_0_add_42_carry[7]), .S(DIN_A_s_1__7_) );
  INV_X1 Stg_1_REGn_regn_7_U6 ( .A(RST_n), .ZN(Stg_1_REGn_regn_7_n2) );
  INV_X1 Stg_1_REGn_regn_7_U5 ( .A(n6), .ZN(Stg_1_REGn_regn_7_n1) );
  AOI22_X1 Stg_1_REGn_regn_7_U4 ( .A1(n6), .A2(DIN_R_s_1__7_), .B1(
        DIN_R_s_2__7_), .B2(Stg_1_REGn_regn_7_n1), .ZN(Stg_1_REGn_regn_7_n6)
         );
  NOR2_X1 Stg_1_REGn_regn_7_U3 ( .A1(Stg_1_REGn_regn_7_n6), .A2(
        Stg_1_REGn_regn_7_n2), .ZN(Stg_1_REGn_regn_7_n5) );
  DFF_X1 Stg_1_REGn_regn_7_Q_reg ( .D(Stg_1_REGn_regn_7_n5), .CK(CLK), .Q(
        DIN_R_s_2__7_) );
  INV_X1 Stg_1_REGn_regn_6_U6 ( .A(RST_n), .ZN(Stg_1_REGn_regn_6_n2) );
  INV_X1 Stg_1_REGn_regn_6_U5 ( .A(n6), .ZN(Stg_1_REGn_regn_6_n1) );
  AOI22_X1 Stg_1_REGn_regn_6_U4 ( .A1(n6), .A2(DIN_R_s_1__6_), .B1(
        DIN_R_s_2__6_), .B2(Stg_1_REGn_regn_6_n1), .ZN(Stg_1_REGn_regn_6_n6)
         );
  NOR2_X1 Stg_1_REGn_regn_6_U3 ( .A1(Stg_1_REGn_regn_6_n6), .A2(
        Stg_1_REGn_regn_6_n2), .ZN(Stg_1_REGn_regn_6_n5) );
  DFF_X1 Stg_1_REGn_regn_6_Q_reg ( .D(Stg_1_REGn_regn_6_n5), .CK(CLK), .Q(
        DIN_R_s_2__6_) );
  INV_X1 Stg_1_REGn_regn_5_U6 ( .A(RST_n), .ZN(Stg_1_REGn_regn_5_n2) );
  INV_X1 Stg_1_REGn_regn_5_U5 ( .A(n6), .ZN(Stg_1_REGn_regn_5_n1) );
  AOI22_X1 Stg_1_REGn_regn_5_U4 ( .A1(n6), .A2(DIN_R_s_1__5_), .B1(
        DIN_R_s_2__5_), .B2(Stg_1_REGn_regn_5_n1), .ZN(Stg_1_REGn_regn_5_n6)
         );
  NOR2_X1 Stg_1_REGn_regn_5_U3 ( .A1(Stg_1_REGn_regn_5_n6), .A2(
        Stg_1_REGn_regn_5_n2), .ZN(Stg_1_REGn_regn_5_n5) );
  DFF_X1 Stg_1_REGn_regn_5_Q_reg ( .D(Stg_1_REGn_regn_5_n5), .CK(CLK), .Q(
        DIN_R_s_2__5_) );
  INV_X1 Stg_1_REGn_regn_4_U6 ( .A(RST_n), .ZN(Stg_1_REGn_regn_4_n2) );
  INV_X1 Stg_1_REGn_regn_4_U5 ( .A(n6), .ZN(Stg_1_REGn_regn_4_n1) );
  AOI22_X1 Stg_1_REGn_regn_4_U4 ( .A1(n6), .A2(DIN_R_s_1__4_), .B1(
        DIN_R_s_2__4_), .B2(Stg_1_REGn_regn_4_n1), .ZN(Stg_1_REGn_regn_4_n6)
         );
  NOR2_X1 Stg_1_REGn_regn_4_U3 ( .A1(Stg_1_REGn_regn_4_n6), .A2(
        Stg_1_REGn_regn_4_n2), .ZN(Stg_1_REGn_regn_4_n5) );
  DFF_X1 Stg_1_REGn_regn_4_Q_reg ( .D(Stg_1_REGn_regn_4_n5), .CK(CLK), .Q(
        DIN_R_s_2__4_) );
  INV_X1 Stg_1_REGn_regn_3_U6 ( .A(RST_n), .ZN(Stg_1_REGn_regn_3_n2) );
  INV_X1 Stg_1_REGn_regn_3_U5 ( .A(n6), .ZN(Stg_1_REGn_regn_3_n1) );
  AOI22_X1 Stg_1_REGn_regn_3_U4 ( .A1(n6), .A2(DIN_R_s_1__3_), .B1(
        DIN_R_s_2__3_), .B2(Stg_1_REGn_regn_3_n1), .ZN(Stg_1_REGn_regn_3_n6)
         );
  NOR2_X1 Stg_1_REGn_regn_3_U3 ( .A1(Stg_1_REGn_regn_3_n6), .A2(
        Stg_1_REGn_regn_3_n2), .ZN(Stg_1_REGn_regn_3_n5) );
  DFF_X1 Stg_1_REGn_regn_3_Q_reg ( .D(Stg_1_REGn_regn_3_n5), .CK(CLK), .Q(
        DIN_R_s_2__3_) );
  INV_X1 Stg_1_REGn_regn_2_U6 ( .A(RST_n), .ZN(Stg_1_REGn_regn_2_n2) );
  INV_X1 Stg_1_REGn_regn_2_U5 ( .A(n6), .ZN(Stg_1_REGn_regn_2_n1) );
  AOI22_X1 Stg_1_REGn_regn_2_U4 ( .A1(n6), .A2(DIN_R_s_1__2_), .B1(
        DIN_R_s_2__2_), .B2(Stg_1_REGn_regn_2_n1), .ZN(Stg_1_REGn_regn_2_n6)
         );
  NOR2_X1 Stg_1_REGn_regn_2_U3 ( .A1(Stg_1_REGn_regn_2_n6), .A2(
        Stg_1_REGn_regn_2_n2), .ZN(Stg_1_REGn_regn_2_n5) );
  DFF_X1 Stg_1_REGn_regn_2_Q_reg ( .D(Stg_1_REGn_regn_2_n5), .CK(CLK), .Q(
        DIN_R_s_2__2_) );
  INV_X1 Stg_1_REGn_regn_1_U6 ( .A(RST_n), .ZN(Stg_1_REGn_regn_1_n2) );
  INV_X1 Stg_1_REGn_regn_1_U5 ( .A(n6), .ZN(Stg_1_REGn_regn_1_n1) );
  AOI22_X1 Stg_1_REGn_regn_1_U4 ( .A1(n6), .A2(DIN_R_s_1__1_), .B1(
        DIN_R_s_2__1_), .B2(Stg_1_REGn_regn_1_n1), .ZN(Stg_1_REGn_regn_1_n6)
         );
  NOR2_X1 Stg_1_REGn_regn_1_U3 ( .A1(Stg_1_REGn_regn_1_n6), .A2(
        Stg_1_REGn_regn_1_n2), .ZN(Stg_1_REGn_regn_1_n5) );
  DFF_X1 Stg_1_REGn_regn_1_Q_reg ( .D(Stg_1_REGn_regn_1_n5), .CK(CLK), .Q(
        DIN_R_s_2__1_) );
  INV_X1 Stg_1_REGn_regn_0_U6 ( .A(RST_n), .ZN(Stg_1_REGn_regn_0_n2) );
  INV_X1 Stg_1_REGn_regn_0_U5 ( .A(n6), .ZN(Stg_1_REGn_regn_0_n1) );
  AOI22_X1 Stg_1_REGn_regn_0_U4 ( .A1(n6), .A2(DIN_R_s_1__0_), .B1(
        DIN_R_s_2__0_), .B2(Stg_1_REGn_regn_0_n1), .ZN(Stg_1_REGn_regn_0_n6)
         );
  NOR2_X1 Stg_1_REGn_regn_0_U3 ( .A1(Stg_1_REGn_regn_0_n6), .A2(
        Stg_1_REGn_regn_0_n2), .ZN(Stg_1_REGn_regn_0_n5) );
  DFF_X1 Stg_1_REGn_regn_0_Q_reg ( .D(Stg_1_REGn_regn_0_n5), .CK(CLK), .Q(
        DIN_R_s_2__0_) );
  XNOR2_X1 Stg_1_mult_41_U263 ( .A(H2[3]), .B(DIN_R_s_2__1_), .ZN(
        Stg_1_mult_41_n275) );
  NAND2_X1 Stg_1_mult_41_U262 ( .A1(DIN_R_s_2__1_), .A2(Stg_1_mult_41_n217), 
        .ZN(Stg_1_mult_41_n221) );
  XNOR2_X1 Stg_1_mult_41_U261 ( .A(H2[4]), .B(DIN_R_s_2__1_), .ZN(
        Stg_1_mult_41_n220) );
  OAI22_X1 Stg_1_mult_41_U260 ( .A1(Stg_1_mult_41_n275), .A2(
        Stg_1_mult_41_n221), .B1(Stg_1_mult_41_n220), .B2(Stg_1_mult_41_n217), 
        .ZN(Stg_1_mult_41_n100) );
  XNOR2_X1 Stg_1_mult_41_U259 ( .A(H2[2]), .B(DIN_R_s_2__1_), .ZN(
        Stg_1_mult_41_n255) );
  OAI22_X1 Stg_1_mult_41_U258 ( .A1(Stg_1_mult_41_n255), .A2(
        Stg_1_mult_41_n221), .B1(Stg_1_mult_41_n275), .B2(Stg_1_mult_41_n217), 
        .ZN(Stg_1_mult_41_n101) );
  XNOR2_X1 Stg_1_mult_41_U257 ( .A(H2[6]), .B(DIN_R_s_2__7_), .ZN(
        Stg_1_mult_41_n264) );
  XNOR2_X1 Stg_1_mult_41_U256 ( .A(Stg_1_mult_41_n204), .B(DIN_R_s_2__6_), 
        .ZN(Stg_1_mult_41_n274) );
  NAND2_X1 Stg_1_mult_41_U255 ( .A1(Stg_1_mult_41_n256), .A2(
        Stg_1_mult_41_n274), .ZN(Stg_1_mult_41_n258) );
  XNOR2_X1 Stg_1_mult_41_U254 ( .A(H2[7]), .B(DIN_R_s_2__7_), .ZN(
        Stg_1_mult_41_n266) );
  OAI22_X1 Stg_1_mult_41_U253 ( .A1(Stg_1_mult_41_n264), .A2(
        Stg_1_mult_41_n258), .B1(Stg_1_mult_41_n256), .B2(Stg_1_mult_41_n266), 
        .ZN(Stg_1_mult_41_n15) );
  XNOR2_X1 Stg_1_mult_41_U252 ( .A(H2[6]), .B(DIN_R_s_2__5_), .ZN(
        Stg_1_mult_41_n243) );
  XNOR2_X1 Stg_1_mult_41_U251 ( .A(Stg_1_mult_41_n209), .B(DIN_R_s_2__4_), 
        .ZN(Stg_1_mult_41_n273) );
  NAND2_X1 Stg_1_mult_41_U250 ( .A1(Stg_1_mult_41_n235), .A2(
        Stg_1_mult_41_n273), .ZN(Stg_1_mult_41_n237) );
  XNOR2_X1 Stg_1_mult_41_U249 ( .A(H2[7]), .B(DIN_R_s_2__5_), .ZN(
        Stg_1_mult_41_n245) );
  OAI22_X1 Stg_1_mult_41_U248 ( .A1(Stg_1_mult_41_n243), .A2(
        Stg_1_mult_41_n237), .B1(Stg_1_mult_41_n235), .B2(Stg_1_mult_41_n245), 
        .ZN(Stg_1_mult_41_n21) );
  XNOR2_X1 Stg_1_mult_41_U247 ( .A(H2[6]), .B(DIN_R_s_2__3_), .ZN(
        Stg_1_mult_41_n271) );
  XOR2_X1 Stg_1_mult_41_U246 ( .A(DIN_R_s_2__2_), .B(DIN_R_s_2__1_), .Z(
        Stg_1_mult_41_n253) );
  XNOR2_X1 Stg_1_mult_41_U245 ( .A(Stg_1_mult_41_n214), .B(DIN_R_s_2__2_), 
        .ZN(Stg_1_mult_41_n272) );
  NAND2_X1 Stg_1_mult_41_U244 ( .A1(Stg_1_mult_41_n215), .A2(
        Stg_1_mult_41_n272), .ZN(Stg_1_mult_41_n227) );
  XNOR2_X1 Stg_1_mult_41_U243 ( .A(H2[7]), .B(DIN_R_s_2__3_), .ZN(
        Stg_1_mult_41_n234) );
  OAI22_X1 Stg_1_mult_41_U242 ( .A1(Stg_1_mult_41_n271), .A2(
        Stg_1_mult_41_n227), .B1(Stg_1_mult_41_n215), .B2(Stg_1_mult_41_n234), 
        .ZN(Stg_1_mult_41_n31) );
  XNOR2_X1 Stg_1_mult_41_U241 ( .A(H2[1]), .B(DIN_R_s_2__7_), .ZN(
        Stg_1_mult_41_n259) );
  XNOR2_X1 Stg_1_mult_41_U240 ( .A(H2[2]), .B(DIN_R_s_2__7_), .ZN(
        Stg_1_mult_41_n260) );
  OAI22_X1 Stg_1_mult_41_U239 ( .A1(Stg_1_mult_41_n259), .A2(
        Stg_1_mult_41_n258), .B1(Stg_1_mult_41_n256), .B2(Stg_1_mult_41_n260), 
        .ZN(Stg_1_mult_41_n269) );
  XNOR2_X1 Stg_1_mult_41_U238 ( .A(H2[5]), .B(DIN_R_s_2__3_), .ZN(
        Stg_1_mult_41_n232) );
  OAI22_X1 Stg_1_mult_41_U237 ( .A1(Stg_1_mult_41_n232), .A2(
        Stg_1_mult_41_n227), .B1(Stg_1_mult_41_n215), .B2(Stg_1_mult_41_n271), 
        .ZN(Stg_1_mult_41_n270) );
  OR2_X1 Stg_1_mult_41_U236 ( .A1(Stg_1_mult_41_n269), .A2(Stg_1_mult_41_n270), 
        .ZN(Stg_1_mult_41_n37) );
  XNOR2_X1 Stg_1_mult_41_U235 ( .A(Stg_1_mult_41_n269), .B(Stg_1_mult_41_n270), 
        .ZN(Stg_1_mult_41_n38) );
  OR3_X1 Stg_1_mult_41_U234 ( .A1(Stg_1_mult_41_n256), .A2(H2[0]), .A3(
        Stg_1_mult_41_n204), .ZN(Stg_1_mult_41_n268) );
  OAI21_X1 Stg_1_mult_41_U233 ( .B1(Stg_1_mult_41_n204), .B2(
        Stg_1_mult_41_n258), .A(Stg_1_mult_41_n268), .ZN(Stg_1_mult_41_n68) );
  OR3_X1 Stg_1_mult_41_U232 ( .A1(Stg_1_mult_41_n235), .A2(H2[0]), .A3(
        Stg_1_mult_41_n209), .ZN(Stg_1_mult_41_n267) );
  OAI21_X1 Stg_1_mult_41_U231 ( .B1(Stg_1_mult_41_n209), .B2(
        Stg_1_mult_41_n237), .A(Stg_1_mult_41_n267), .ZN(Stg_1_mult_41_n69) );
  OAI22_X1 Stg_1_mult_41_U230 ( .A1(Stg_1_mult_41_n266), .A2(
        Stg_1_mult_41_n256), .B1(Stg_1_mult_41_n258), .B2(Stg_1_mult_41_n266), 
        .ZN(Stg_1_mult_41_n265) );
  XNOR2_X1 Stg_1_mult_41_U229 ( .A(H2[5]), .B(DIN_R_s_2__7_), .ZN(
        Stg_1_mult_41_n263) );
  OAI22_X1 Stg_1_mult_41_U228 ( .A1(Stg_1_mult_41_n263), .A2(
        Stg_1_mult_41_n258), .B1(Stg_1_mult_41_n256), .B2(Stg_1_mult_41_n264), 
        .ZN(Stg_1_mult_41_n73) );
  XNOR2_X1 Stg_1_mult_41_U227 ( .A(H2[4]), .B(DIN_R_s_2__7_), .ZN(
        Stg_1_mult_41_n262) );
  OAI22_X1 Stg_1_mult_41_U226 ( .A1(Stg_1_mult_41_n262), .A2(
        Stg_1_mult_41_n258), .B1(Stg_1_mult_41_n256), .B2(Stg_1_mult_41_n263), 
        .ZN(Stg_1_mult_41_n74) );
  XNOR2_X1 Stg_1_mult_41_U225 ( .A(H2[3]), .B(DIN_R_s_2__7_), .ZN(
        Stg_1_mult_41_n261) );
  OAI22_X1 Stg_1_mult_41_U224 ( .A1(Stg_1_mult_41_n261), .A2(
        Stg_1_mult_41_n258), .B1(Stg_1_mult_41_n256), .B2(Stg_1_mult_41_n262), 
        .ZN(Stg_1_mult_41_n75) );
  OAI22_X1 Stg_1_mult_41_U223 ( .A1(Stg_1_mult_41_n260), .A2(
        Stg_1_mult_41_n258), .B1(Stg_1_mult_41_n256), .B2(Stg_1_mult_41_n261), 
        .ZN(Stg_1_mult_41_n76) );
  XNOR2_X1 Stg_1_mult_41_U222 ( .A(H2[0]), .B(DIN_R_s_2__7_), .ZN(
        Stg_1_mult_41_n257) );
  OAI22_X1 Stg_1_mult_41_U221 ( .A1(Stg_1_mult_41_n257), .A2(
        Stg_1_mult_41_n258), .B1(Stg_1_mult_41_n256), .B2(Stg_1_mult_41_n259), 
        .ZN(Stg_1_mult_41_n78) );
  NOR2_X1 Stg_1_mult_41_U220 ( .A1(Stg_1_mult_41_n256), .A2(Stg_1_mult_41_n219), .ZN(Stg_1_mult_41_n79) );
  OAI22_X1 Stg_1_mult_41_U219 ( .A1(H2[1]), .A2(Stg_1_mult_41_n221), .B1(
        Stg_1_mult_41_n255), .B2(Stg_1_mult_41_n217), .ZN(Stg_1_mult_41_n254)
         );
  NAND3_X1 Stg_1_mult_41_U218 ( .A1(Stg_1_mult_41_n253), .A2(
        Stg_1_mult_41_n219), .A3(DIN_R_s_2__3_), .ZN(Stg_1_mult_41_n252) );
  OAI21_X1 Stg_1_mult_41_U217 ( .B1(Stg_1_mult_41_n214), .B2(
        Stg_1_mult_41_n227), .A(Stg_1_mult_41_n252), .ZN(Stg_1_mult_41_n251)
         );
  AOI222_X1 Stg_1_mult_41_U216 ( .A1(Stg_1_mult_41_n197), .A2(
        Stg_1_mult_41_n56), .B1(Stg_1_mult_41_n251), .B2(Stg_1_mult_41_n197), 
        .C1(Stg_1_mult_41_n251), .C2(Stg_1_mult_41_n56), .ZN(
        Stg_1_mult_41_n250) );
  AOI222_X1 Stg_1_mult_41_U215 ( .A1(Stg_1_mult_41_n211), .A2(
        Stg_1_mult_41_n54), .B1(Stg_1_mult_41_n211), .B2(Stg_1_mult_41_n55), 
        .C1(Stg_1_mult_41_n55), .C2(Stg_1_mult_41_n54), .ZN(Stg_1_mult_41_n249) );
  AOI222_X1 Stg_1_mult_41_U214 ( .A1(Stg_1_mult_41_n210), .A2(
        Stg_1_mult_41_n50), .B1(Stg_1_mult_41_n210), .B2(Stg_1_mult_41_n53), 
        .C1(Stg_1_mult_41_n53), .C2(Stg_1_mult_41_n50), .ZN(Stg_1_mult_41_n248) );
  AOI222_X1 Stg_1_mult_41_U213 ( .A1(Stg_1_mult_41_n206), .A2(
        Stg_1_mult_41_n46), .B1(Stg_1_mult_41_n206), .B2(Stg_1_mult_41_n49), 
        .C1(Stg_1_mult_41_n49), .C2(Stg_1_mult_41_n46), .ZN(Stg_1_mult_41_n247) );
  AOI222_X1 Stg_1_mult_41_U212 ( .A1(Stg_1_mult_41_n205), .A2(
        Stg_1_mult_41_n40), .B1(Stg_1_mult_41_n205), .B2(Stg_1_mult_41_n45), 
        .C1(Stg_1_mult_41_n45), .C2(Stg_1_mult_41_n40), .ZN(Stg_1_mult_41_n246) );
  OAI22_X1 Stg_1_mult_41_U211 ( .A1(Stg_1_mult_41_n245), .A2(
        Stg_1_mult_41_n235), .B1(Stg_1_mult_41_n237), .B2(Stg_1_mult_41_n245), 
        .ZN(Stg_1_mult_41_n244) );
  XNOR2_X1 Stg_1_mult_41_U210 ( .A(H2[5]), .B(DIN_R_s_2__5_), .ZN(
        Stg_1_mult_41_n242) );
  OAI22_X1 Stg_1_mult_41_U209 ( .A1(Stg_1_mult_41_n242), .A2(
        Stg_1_mult_41_n237), .B1(Stg_1_mult_41_n235), .B2(Stg_1_mult_41_n243), 
        .ZN(Stg_1_mult_41_n81) );
  XNOR2_X1 Stg_1_mult_41_U208 ( .A(H2[4]), .B(DIN_R_s_2__5_), .ZN(
        Stg_1_mult_41_n241) );
  OAI22_X1 Stg_1_mult_41_U207 ( .A1(Stg_1_mult_41_n241), .A2(
        Stg_1_mult_41_n237), .B1(Stg_1_mult_41_n235), .B2(Stg_1_mult_41_n242), 
        .ZN(Stg_1_mult_41_n82) );
  XNOR2_X1 Stg_1_mult_41_U206 ( .A(H2[3]), .B(DIN_R_s_2__5_), .ZN(
        Stg_1_mult_41_n240) );
  OAI22_X1 Stg_1_mult_41_U205 ( .A1(Stg_1_mult_41_n240), .A2(
        Stg_1_mult_41_n237), .B1(Stg_1_mult_41_n235), .B2(Stg_1_mult_41_n241), 
        .ZN(Stg_1_mult_41_n83) );
  XNOR2_X1 Stg_1_mult_41_U204 ( .A(H2[2]), .B(DIN_R_s_2__5_), .ZN(
        Stg_1_mult_41_n239) );
  OAI22_X1 Stg_1_mult_41_U203 ( .A1(Stg_1_mult_41_n239), .A2(
        Stg_1_mult_41_n237), .B1(Stg_1_mult_41_n235), .B2(Stg_1_mult_41_n240), 
        .ZN(Stg_1_mult_41_n84) );
  XNOR2_X1 Stg_1_mult_41_U202 ( .A(H2[1]), .B(DIN_R_s_2__5_), .ZN(
        Stg_1_mult_41_n238) );
  OAI22_X1 Stg_1_mult_41_U201 ( .A1(Stg_1_mult_41_n238), .A2(
        Stg_1_mult_41_n237), .B1(Stg_1_mult_41_n235), .B2(Stg_1_mult_41_n239), 
        .ZN(Stg_1_mult_41_n85) );
  XNOR2_X1 Stg_1_mult_41_U200 ( .A(H2[0]), .B(DIN_R_s_2__5_), .ZN(
        Stg_1_mult_41_n236) );
  OAI22_X1 Stg_1_mult_41_U199 ( .A1(Stg_1_mult_41_n236), .A2(
        Stg_1_mult_41_n237), .B1(Stg_1_mult_41_n235), .B2(Stg_1_mult_41_n238), 
        .ZN(Stg_1_mult_41_n86) );
  NOR2_X1 Stg_1_mult_41_U198 ( .A1(Stg_1_mult_41_n235), .A2(Stg_1_mult_41_n219), .ZN(Stg_1_mult_41_n87) );
  OAI22_X1 Stg_1_mult_41_U197 ( .A1(Stg_1_mult_41_n234), .A2(
        Stg_1_mult_41_n215), .B1(Stg_1_mult_41_n227), .B2(Stg_1_mult_41_n234), 
        .ZN(Stg_1_mult_41_n233) );
  XNOR2_X1 Stg_1_mult_41_U196 ( .A(H2[4]), .B(DIN_R_s_2__3_), .ZN(
        Stg_1_mult_41_n231) );
  OAI22_X1 Stg_1_mult_41_U195 ( .A1(Stg_1_mult_41_n231), .A2(
        Stg_1_mult_41_n227), .B1(Stg_1_mult_41_n215), .B2(Stg_1_mult_41_n232), 
        .ZN(Stg_1_mult_41_n90) );
  XNOR2_X1 Stg_1_mult_41_U194 ( .A(H2[3]), .B(DIN_R_s_2__3_), .ZN(
        Stg_1_mult_41_n230) );
  OAI22_X1 Stg_1_mult_41_U193 ( .A1(Stg_1_mult_41_n230), .A2(
        Stg_1_mult_41_n227), .B1(Stg_1_mult_41_n215), .B2(Stg_1_mult_41_n231), 
        .ZN(Stg_1_mult_41_n91) );
  XNOR2_X1 Stg_1_mult_41_U192 ( .A(H2[2]), .B(DIN_R_s_2__3_), .ZN(
        Stg_1_mult_41_n229) );
  OAI22_X1 Stg_1_mult_41_U191 ( .A1(Stg_1_mult_41_n229), .A2(
        Stg_1_mult_41_n227), .B1(Stg_1_mult_41_n215), .B2(Stg_1_mult_41_n230), 
        .ZN(Stg_1_mult_41_n92) );
  XNOR2_X1 Stg_1_mult_41_U190 ( .A(H2[1]), .B(DIN_R_s_2__3_), .ZN(
        Stg_1_mult_41_n228) );
  OAI22_X1 Stg_1_mult_41_U189 ( .A1(Stg_1_mult_41_n228), .A2(
        Stg_1_mult_41_n227), .B1(Stg_1_mult_41_n215), .B2(Stg_1_mult_41_n229), 
        .ZN(Stg_1_mult_41_n93) );
  XNOR2_X1 Stg_1_mult_41_U188 ( .A(H2[0]), .B(DIN_R_s_2__3_), .ZN(
        Stg_1_mult_41_n226) );
  OAI22_X1 Stg_1_mult_41_U187 ( .A1(Stg_1_mult_41_n226), .A2(
        Stg_1_mult_41_n227), .B1(Stg_1_mult_41_n215), .B2(Stg_1_mult_41_n228), 
        .ZN(Stg_1_mult_41_n94) );
  XNOR2_X1 Stg_1_mult_41_U186 ( .A(H2[7]), .B(DIN_R_s_2__1_), .ZN(
        Stg_1_mult_41_n224) );
  OAI22_X1 Stg_1_mult_41_U185 ( .A1(Stg_1_mult_41_n217), .A2(
        Stg_1_mult_41_n224), .B1(Stg_1_mult_41_n221), .B2(Stg_1_mult_41_n224), 
        .ZN(Stg_1_mult_41_n225) );
  XNOR2_X1 Stg_1_mult_41_U184 ( .A(H2[6]), .B(DIN_R_s_2__1_), .ZN(
        Stg_1_mult_41_n223) );
  OAI22_X1 Stg_1_mult_41_U183 ( .A1(Stg_1_mult_41_n223), .A2(
        Stg_1_mult_41_n221), .B1(Stg_1_mult_41_n224), .B2(Stg_1_mult_41_n217), 
        .ZN(Stg_1_mult_41_n97) );
  XNOR2_X1 Stg_1_mult_41_U182 ( .A(H2[5]), .B(DIN_R_s_2__1_), .ZN(
        Stg_1_mult_41_n222) );
  OAI22_X1 Stg_1_mult_41_U181 ( .A1(Stg_1_mult_41_n222), .A2(
        Stg_1_mult_41_n221), .B1(Stg_1_mult_41_n223), .B2(Stg_1_mult_41_n217), 
        .ZN(Stg_1_mult_41_n98) );
  OAI22_X1 Stg_1_mult_41_U180 ( .A1(Stg_1_mult_41_n220), .A2(
        Stg_1_mult_41_n221), .B1(Stg_1_mult_41_n222), .B2(Stg_1_mult_41_n217), 
        .ZN(Stg_1_mult_41_n99) );
  INV_X1 Stg_1_mult_41_U179 ( .A(DIN_R_s_2__7_), .ZN(Stg_1_mult_41_n204) );
  XOR2_X1 Stg_1_mult_41_U178 ( .A(DIN_R_s_2__6_), .B(Stg_1_mult_41_n209), .Z(
        Stg_1_mult_41_n256) );
  INV_X1 Stg_1_mult_41_U177 ( .A(H2[1]), .ZN(Stg_1_mult_41_n218) );
  INV_X1 Stg_1_mult_41_U176 ( .A(H2[0]), .ZN(Stg_1_mult_41_n219) );
  AND3_X1 Stg_1_mult_41_U175 ( .A1(Stg_1_mult_41_n254), .A2(Stg_1_mult_41_n218), .A3(DIN_R_s_2__1_), .ZN(Stg_1_mult_41_n199) );
  AND2_X1 Stg_1_mult_41_U174 ( .A1(Stg_1_mult_41_n253), .A2(Stg_1_mult_41_n254), .ZN(Stg_1_mult_41_n198) );
  MUX2_X1 Stg_1_mult_41_U173 ( .A(Stg_1_mult_41_n198), .B(Stg_1_mult_41_n199), 
        .S(Stg_1_mult_41_n219), .Z(Stg_1_mult_41_n197) );
  INV_X1 Stg_1_mult_41_U172 ( .A(DIN_R_s_2__5_), .ZN(Stg_1_mult_41_n209) );
  INV_X1 Stg_1_mult_41_U171 ( .A(DIN_R_s_2__3_), .ZN(Stg_1_mult_41_n214) );
  INV_X1 Stg_1_mult_41_U170 ( .A(DIN_R_s_2__0_), .ZN(Stg_1_mult_41_n217) );
  XOR2_X1 Stg_1_mult_41_U169 ( .A(DIN_R_s_2__4_), .B(Stg_1_mult_41_n214), .Z(
        Stg_1_mult_41_n235) );
  INV_X1 Stg_1_mult_41_U168 ( .A(Stg_1_mult_41_n31), .ZN(Stg_1_mult_41_n212)
         );
  INV_X1 Stg_1_mult_41_U167 ( .A(Stg_1_mult_41_n233), .ZN(Stg_1_mult_41_n213)
         );
  INV_X1 Stg_1_mult_41_U166 ( .A(Stg_1_mult_41_n225), .ZN(Stg_1_mult_41_n216)
         );
  INV_X1 Stg_1_mult_41_U165 ( .A(Stg_1_mult_41_n21), .ZN(Stg_1_mult_41_n207)
         );
  INV_X1 Stg_1_mult_41_U164 ( .A(Stg_1_mult_41_n244), .ZN(Stg_1_mult_41_n208)
         );
  INV_X1 Stg_1_mult_41_U163 ( .A(Stg_1_mult_41_n246), .ZN(Stg_1_mult_41_n201)
         );
  INV_X1 Stg_1_mult_41_U162 ( .A(Stg_1_mult_41_n265), .ZN(Stg_1_mult_41_n203)
         );
  INV_X1 Stg_1_mult_41_U161 ( .A(Stg_1_mult_41_n253), .ZN(Stg_1_mult_41_n215)
         );
  INV_X1 Stg_1_mult_41_U160 ( .A(Stg_1_mult_41_n250), .ZN(Stg_1_mult_41_n211)
         );
  INV_X1 Stg_1_mult_41_U159 ( .A(Stg_1_mult_41_n249), .ZN(Stg_1_mult_41_n210)
         );
  INV_X1 Stg_1_mult_41_U158 ( .A(Stg_1_mult_41_n15), .ZN(Stg_1_mult_41_n202)
         );
  INV_X1 Stg_1_mult_41_U157 ( .A(Stg_1_mult_41_n1), .ZN(Stg_1_mult_partial_15_) );
  INV_X1 Stg_1_mult_41_U156 ( .A(Stg_1_mult_41_n248), .ZN(Stg_1_mult_41_n206)
         );
  INV_X1 Stg_1_mult_41_U155 ( .A(Stg_1_mult_41_n247), .ZN(Stg_1_mult_41_n205)
         );
  HA_X1 Stg_1_mult_41_U37 ( .A(Stg_1_mult_41_n94), .B(Stg_1_mult_41_n101), 
        .CO(Stg_1_mult_41_n55), .S(Stg_1_mult_41_n56) );
  FA_X1 Stg_1_mult_41_U36 ( .A(Stg_1_mult_41_n100), .B(Stg_1_mult_41_n87), 
        .CI(Stg_1_mult_41_n93), .CO(Stg_1_mult_41_n53), .S(Stg_1_mult_41_n54)
         );
  HA_X1 Stg_1_mult_41_U35 ( .A(Stg_1_mult_41_n69), .B(Stg_1_mult_41_n86), .CO(
        Stg_1_mult_41_n51), .S(Stg_1_mult_41_n52) );
  FA_X1 Stg_1_mult_41_U34 ( .A(Stg_1_mult_41_n92), .B(Stg_1_mult_41_n99), .CI(
        Stg_1_mult_41_n52), .CO(Stg_1_mult_41_n49), .S(Stg_1_mult_41_n50) );
  FA_X1 Stg_1_mult_41_U33 ( .A(Stg_1_mult_41_n98), .B(Stg_1_mult_41_n79), .CI(
        Stg_1_mult_41_n91), .CO(Stg_1_mult_41_n47), .S(Stg_1_mult_41_n48) );
  FA_X1 Stg_1_mult_41_U32 ( .A(Stg_1_mult_41_n51), .B(Stg_1_mult_41_n85), .CI(
        Stg_1_mult_41_n48), .CO(Stg_1_mult_41_n45), .S(Stg_1_mult_41_n46) );
  HA_X1 Stg_1_mult_41_U31 ( .A(Stg_1_mult_41_n68), .B(Stg_1_mult_41_n78), .CO(
        Stg_1_mult_41_n43), .S(Stg_1_mult_41_n44) );
  FA_X1 Stg_1_mult_41_U30 ( .A(Stg_1_mult_41_n84), .B(Stg_1_mult_41_n97), .CI(
        Stg_1_mult_41_n90), .CO(Stg_1_mult_41_n41), .S(Stg_1_mult_41_n42) );
  FA_X1 Stg_1_mult_41_U29 ( .A(Stg_1_mult_41_n47), .B(Stg_1_mult_41_n44), .CI(
        Stg_1_mult_41_n42), .CO(Stg_1_mult_41_n39), .S(Stg_1_mult_41_n40) );
  FA_X1 Stg_1_mult_41_U26 ( .A(Stg_1_mult_41_n216), .B(Stg_1_mult_41_n83), 
        .CI(Stg_1_mult_41_n43), .CO(Stg_1_mult_41_n35), .S(Stg_1_mult_41_n36)
         );
  FA_X1 Stg_1_mult_41_U25 ( .A(Stg_1_mult_41_n41), .B(Stg_1_mult_41_n38), .CI(
        Stg_1_mult_41_n36), .CO(Stg_1_mult_41_n33), .S(Stg_1_mult_41_n34) );
  FA_X1 Stg_1_mult_41_U23 ( .A(Stg_1_mult_41_n76), .B(Stg_1_mult_41_n82), .CI(
        Stg_1_mult_41_n212), .CO(Stg_1_mult_41_n29), .S(Stg_1_mult_41_n30) );
  FA_X1 Stg_1_mult_41_U22 ( .A(Stg_1_mult_41_n35), .B(Stg_1_mult_41_n37), .CI(
        Stg_1_mult_41_n30), .CO(Stg_1_mult_41_n27), .S(Stg_1_mult_41_n28) );
  FA_X1 Stg_1_mult_41_U21 ( .A(Stg_1_mult_41_n81), .B(Stg_1_mult_41_n31), .CI(
        Stg_1_mult_41_n213), .CO(Stg_1_mult_41_n25), .S(Stg_1_mult_41_n26) );
  FA_X1 Stg_1_mult_41_U20 ( .A(Stg_1_mult_41_n29), .B(Stg_1_mult_41_n75), .CI(
        Stg_1_mult_41_n26), .CO(Stg_1_mult_41_n23), .S(Stg_1_mult_41_n24) );
  FA_X1 Stg_1_mult_41_U18 ( .A(Stg_1_mult_41_n207), .B(Stg_1_mult_41_n74), 
        .CI(Stg_1_mult_41_n25), .CO(Stg_1_mult_41_n19), .S(Stg_1_mult_41_n20)
         );
  FA_X1 Stg_1_mult_41_U17 ( .A(Stg_1_mult_41_n73), .B(Stg_1_mult_41_n21), .CI(
        Stg_1_mult_41_n208), .CO(Stg_1_mult_41_n17), .S(Stg_1_mult_41_n18) );
  FA_X1 Stg_1_mult_41_U8 ( .A(Stg_1_mult_41_n34), .B(Stg_1_mult_41_n39), .CI(
        Stg_1_mult_41_n201), .CO(Stg_1_mult_41_n7), .S(Stg_1_mult_partial_8_)
         );
  FA_X1 Stg_1_mult_41_U7 ( .A(Stg_1_mult_41_n28), .B(Stg_1_mult_41_n33), .CI(
        Stg_1_mult_41_n7), .CO(Stg_1_mult_41_n6), .S(Stg_1_mult_partial_9_) );
  FA_X1 Stg_1_mult_41_U6 ( .A(Stg_1_mult_41_n24), .B(Stg_1_mult_41_n27), .CI(
        Stg_1_mult_41_n6), .CO(Stg_1_mult_41_n5), .S(Stg_1_mult_partial_10_)
         );
  FA_X1 Stg_1_mult_41_U5 ( .A(Stg_1_mult_41_n20), .B(Stg_1_mult_41_n23), .CI(
        Stg_1_mult_41_n5), .CO(Stg_1_mult_41_n4), .S(Stg_1_mult_partial_11_)
         );
  FA_X1 Stg_1_mult_41_U4 ( .A(Stg_1_mult_41_n19), .B(Stg_1_mult_41_n18), .CI(
        Stg_1_mult_41_n4), .CO(Stg_1_mult_41_n3), .S(Stg_1_mult_partial_12_)
         );
  FA_X1 Stg_1_mult_41_U3 ( .A(Stg_1_mult_41_n17), .B(Stg_1_mult_41_n202), .CI(
        Stg_1_mult_41_n3), .CO(Stg_1_mult_41_n2), .S(Stg_1_mult_partial_13_)
         );
  FA_X1 Stg_1_mult_41_U2 ( .A(Stg_1_mult_41_n203), .B(Stg_1_mult_41_n15), .CI(
        Stg_1_mult_41_n2), .CO(Stg_1_mult_41_n1), .S(Stg_1_mult_partial_14_)
         );
  XOR2_X1 Stg_1_add_42_U2 ( .A(DIN_A_s_1__0_), .B(Stg_1_mult_partial_8_), .Z(
        DIN_A_s_2__0_) );
  AND2_X1 Stg_1_add_42_U1 ( .A1(DIN_A_s_1__0_), .A2(Stg_1_mult_partial_8_), 
        .ZN(Stg_1_add_42_n1) );
  FA_X1 Stg_1_add_42_U1_1 ( .A(Stg_1_mult_partial_9_), .B(DIN_A_s_1__1_), .CI(
        Stg_1_add_42_n1), .CO(Stg_1_add_42_carry[2]), .S(DIN_A_s_2__1_) );
  FA_X1 Stg_1_add_42_U1_2 ( .A(Stg_1_mult_partial_10_), .B(DIN_A_s_1__2_), 
        .CI(Stg_1_add_42_carry[2]), .CO(Stg_1_add_42_carry[3]), .S(
        DIN_A_s_2__2_) );
  FA_X1 Stg_1_add_42_U1_3 ( .A(Stg_1_mult_partial_11_), .B(DIN_A_s_1__3_), 
        .CI(Stg_1_add_42_carry[3]), .CO(Stg_1_add_42_carry[4]), .S(
        DIN_A_s_2__3_) );
  FA_X1 Stg_1_add_42_U1_4 ( .A(Stg_1_mult_partial_12_), .B(DIN_A_s_1__4_), 
        .CI(Stg_1_add_42_carry[4]), .CO(Stg_1_add_42_carry[5]), .S(
        DIN_A_s_2__4_) );
  FA_X1 Stg_1_add_42_U1_5 ( .A(Stg_1_mult_partial_13_), .B(DIN_A_s_1__5_), 
        .CI(Stg_1_add_42_carry[5]), .CO(Stg_1_add_42_carry[6]), .S(
        DIN_A_s_2__5_) );
  FA_X1 Stg_1_add_42_U1_6 ( .A(Stg_1_mult_partial_14_), .B(DIN_A_s_1__6_), 
        .CI(Stg_1_add_42_carry[6]), .CO(Stg_1_add_42_carry[7]), .S(
        DIN_A_s_2__6_) );
  FA_X1 Stg_1_add_42_U1_7 ( .A(Stg_1_mult_partial_15_), .B(DIN_A_s_1__7_), 
        .CI(Stg_1_add_42_carry[7]), .S(DIN_A_s_2__7_) );
  INV_X1 Stg_2_REGn_regn_7_U6 ( .A(RST_n), .ZN(Stg_2_REGn_regn_7_n2) );
  INV_X1 Stg_2_REGn_regn_7_U5 ( .A(n6), .ZN(Stg_2_REGn_regn_7_n1) );
  AOI22_X1 Stg_2_REGn_regn_7_U4 ( .A1(n6), .A2(DIN_R_s_2__7_), .B1(
        DIN_R_s_3__7_), .B2(Stg_2_REGn_regn_7_n1), .ZN(Stg_2_REGn_regn_7_n6)
         );
  NOR2_X1 Stg_2_REGn_regn_7_U3 ( .A1(Stg_2_REGn_regn_7_n6), .A2(
        Stg_2_REGn_regn_7_n2), .ZN(Stg_2_REGn_regn_7_n5) );
  DFF_X1 Stg_2_REGn_regn_7_Q_reg ( .D(Stg_2_REGn_regn_7_n5), .CK(CLK), .Q(
        DIN_R_s_3__7_) );
  INV_X1 Stg_2_REGn_regn_6_U6 ( .A(RST_n), .ZN(Stg_2_REGn_regn_6_n2) );
  INV_X1 Stg_2_REGn_regn_6_U5 ( .A(n6), .ZN(Stg_2_REGn_regn_6_n1) );
  AOI22_X1 Stg_2_REGn_regn_6_U4 ( .A1(n6), .A2(DIN_R_s_2__6_), .B1(
        DIN_R_s_3__6_), .B2(Stg_2_REGn_regn_6_n1), .ZN(Stg_2_REGn_regn_6_n6)
         );
  NOR2_X1 Stg_2_REGn_regn_6_U3 ( .A1(Stg_2_REGn_regn_6_n6), .A2(
        Stg_2_REGn_regn_6_n2), .ZN(Stg_2_REGn_regn_6_n5) );
  DFF_X1 Stg_2_REGn_regn_6_Q_reg ( .D(Stg_2_REGn_regn_6_n5), .CK(CLK), .Q(
        DIN_R_s_3__6_) );
  INV_X1 Stg_2_REGn_regn_5_U6 ( .A(RST_n), .ZN(Stg_2_REGn_regn_5_n2) );
  INV_X1 Stg_2_REGn_regn_5_U5 ( .A(n6), .ZN(Stg_2_REGn_regn_5_n1) );
  AOI22_X1 Stg_2_REGn_regn_5_U4 ( .A1(n6), .A2(DIN_R_s_2__5_), .B1(
        DIN_R_s_3__5_), .B2(Stg_2_REGn_regn_5_n1), .ZN(Stg_2_REGn_regn_5_n6)
         );
  NOR2_X1 Stg_2_REGn_regn_5_U3 ( .A1(Stg_2_REGn_regn_5_n6), .A2(
        Stg_2_REGn_regn_5_n2), .ZN(Stg_2_REGn_regn_5_n5) );
  DFF_X1 Stg_2_REGn_regn_5_Q_reg ( .D(Stg_2_REGn_regn_5_n5), .CK(CLK), .Q(
        DIN_R_s_3__5_) );
  INV_X1 Stg_2_REGn_regn_4_U6 ( .A(RST_n), .ZN(Stg_2_REGn_regn_4_n2) );
  INV_X1 Stg_2_REGn_regn_4_U5 ( .A(n6), .ZN(Stg_2_REGn_regn_4_n1) );
  AOI22_X1 Stg_2_REGn_regn_4_U4 ( .A1(n6), .A2(DIN_R_s_2__4_), .B1(
        DIN_R_s_3__4_), .B2(Stg_2_REGn_regn_4_n1), .ZN(Stg_2_REGn_regn_4_n6)
         );
  NOR2_X1 Stg_2_REGn_regn_4_U3 ( .A1(Stg_2_REGn_regn_4_n6), .A2(
        Stg_2_REGn_regn_4_n2), .ZN(Stg_2_REGn_regn_4_n5) );
  DFF_X1 Stg_2_REGn_regn_4_Q_reg ( .D(Stg_2_REGn_regn_4_n5), .CK(CLK), .Q(
        DIN_R_s_3__4_) );
  INV_X1 Stg_2_REGn_regn_3_U6 ( .A(RST_n), .ZN(Stg_2_REGn_regn_3_n2) );
  INV_X1 Stg_2_REGn_regn_3_U5 ( .A(n6), .ZN(Stg_2_REGn_regn_3_n1) );
  AOI22_X1 Stg_2_REGn_regn_3_U4 ( .A1(n6), .A2(DIN_R_s_2__3_), .B1(
        DIN_R_s_3__3_), .B2(Stg_2_REGn_regn_3_n1), .ZN(Stg_2_REGn_regn_3_n6)
         );
  NOR2_X1 Stg_2_REGn_regn_3_U3 ( .A1(Stg_2_REGn_regn_3_n6), .A2(
        Stg_2_REGn_regn_3_n2), .ZN(Stg_2_REGn_regn_3_n5) );
  DFF_X1 Stg_2_REGn_regn_3_Q_reg ( .D(Stg_2_REGn_regn_3_n5), .CK(CLK), .Q(
        DIN_R_s_3__3_) );
  INV_X1 Stg_2_REGn_regn_2_U6 ( .A(RST_n), .ZN(Stg_2_REGn_regn_2_n2) );
  INV_X1 Stg_2_REGn_regn_2_U5 ( .A(n6), .ZN(Stg_2_REGn_regn_2_n1) );
  AOI22_X1 Stg_2_REGn_regn_2_U4 ( .A1(n6), .A2(DIN_R_s_2__2_), .B1(
        DIN_R_s_3__2_), .B2(Stg_2_REGn_regn_2_n1), .ZN(Stg_2_REGn_regn_2_n6)
         );
  NOR2_X1 Stg_2_REGn_regn_2_U3 ( .A1(Stg_2_REGn_regn_2_n6), .A2(
        Stg_2_REGn_regn_2_n2), .ZN(Stg_2_REGn_regn_2_n5) );
  DFF_X1 Stg_2_REGn_regn_2_Q_reg ( .D(Stg_2_REGn_regn_2_n5), .CK(CLK), .Q(
        DIN_R_s_3__2_) );
  INV_X1 Stg_2_REGn_regn_1_U6 ( .A(RST_n), .ZN(Stg_2_REGn_regn_1_n2) );
  INV_X1 Stg_2_REGn_regn_1_U5 ( .A(n6), .ZN(Stg_2_REGn_regn_1_n1) );
  AOI22_X1 Stg_2_REGn_regn_1_U4 ( .A1(n6), .A2(DIN_R_s_2__1_), .B1(
        DIN_R_s_3__1_), .B2(Stg_2_REGn_regn_1_n1), .ZN(Stg_2_REGn_regn_1_n6)
         );
  NOR2_X1 Stg_2_REGn_regn_1_U3 ( .A1(Stg_2_REGn_regn_1_n6), .A2(
        Stg_2_REGn_regn_1_n2), .ZN(Stg_2_REGn_regn_1_n5) );
  DFF_X1 Stg_2_REGn_regn_1_Q_reg ( .D(Stg_2_REGn_regn_1_n5), .CK(CLK), .Q(
        DIN_R_s_3__1_) );
  INV_X1 Stg_2_REGn_regn_0_U6 ( .A(RST_n), .ZN(Stg_2_REGn_regn_0_n2) );
  INV_X1 Stg_2_REGn_regn_0_U5 ( .A(n6), .ZN(Stg_2_REGn_regn_0_n1) );
  AOI22_X1 Stg_2_REGn_regn_0_U4 ( .A1(n6), .A2(DIN_R_s_2__0_), .B1(
        DIN_R_s_3__0_), .B2(Stg_2_REGn_regn_0_n1), .ZN(Stg_2_REGn_regn_0_n6)
         );
  NOR2_X1 Stg_2_REGn_regn_0_U3 ( .A1(Stg_2_REGn_regn_0_n6), .A2(
        Stg_2_REGn_regn_0_n2), .ZN(Stg_2_REGn_regn_0_n5) );
  DFF_X1 Stg_2_REGn_regn_0_Q_reg ( .D(Stg_2_REGn_regn_0_n5), .CK(CLK), .Q(
        DIN_R_s_3__0_) );
  XNOR2_X1 Stg_2_mult_41_U263 ( .A(H3[3]), .B(DIN_R_s_3__1_), .ZN(
        Stg_2_mult_41_n275) );
  NAND2_X1 Stg_2_mult_41_U262 ( .A1(DIN_R_s_3__1_), .A2(Stg_2_mult_41_n217), 
        .ZN(Stg_2_mult_41_n221) );
  XNOR2_X1 Stg_2_mult_41_U261 ( .A(H3[4]), .B(DIN_R_s_3__1_), .ZN(
        Stg_2_mult_41_n220) );
  OAI22_X1 Stg_2_mult_41_U260 ( .A1(Stg_2_mult_41_n275), .A2(
        Stg_2_mult_41_n221), .B1(Stg_2_mult_41_n220), .B2(Stg_2_mult_41_n217), 
        .ZN(Stg_2_mult_41_n100) );
  XNOR2_X1 Stg_2_mult_41_U259 ( .A(H3[2]), .B(DIN_R_s_3__1_), .ZN(
        Stg_2_mult_41_n255) );
  OAI22_X1 Stg_2_mult_41_U258 ( .A1(Stg_2_mult_41_n255), .A2(
        Stg_2_mult_41_n221), .B1(Stg_2_mult_41_n275), .B2(Stg_2_mult_41_n217), 
        .ZN(Stg_2_mult_41_n101) );
  XNOR2_X1 Stg_2_mult_41_U257 ( .A(H3[6]), .B(DIN_R_s_3__7_), .ZN(
        Stg_2_mult_41_n264) );
  XNOR2_X1 Stg_2_mult_41_U256 ( .A(Stg_2_mult_41_n204), .B(DIN_R_s_3__6_), 
        .ZN(Stg_2_mult_41_n274) );
  NAND2_X1 Stg_2_mult_41_U255 ( .A1(Stg_2_mult_41_n256), .A2(
        Stg_2_mult_41_n274), .ZN(Stg_2_mult_41_n258) );
  XNOR2_X1 Stg_2_mult_41_U254 ( .A(H3[7]), .B(DIN_R_s_3__7_), .ZN(
        Stg_2_mult_41_n266) );
  OAI22_X1 Stg_2_mult_41_U253 ( .A1(Stg_2_mult_41_n264), .A2(
        Stg_2_mult_41_n258), .B1(Stg_2_mult_41_n256), .B2(Stg_2_mult_41_n266), 
        .ZN(Stg_2_mult_41_n15) );
  XNOR2_X1 Stg_2_mult_41_U252 ( .A(H3[6]), .B(DIN_R_s_3__5_), .ZN(
        Stg_2_mult_41_n243) );
  XNOR2_X1 Stg_2_mult_41_U251 ( .A(Stg_2_mult_41_n209), .B(DIN_R_s_3__4_), 
        .ZN(Stg_2_mult_41_n273) );
  NAND2_X1 Stg_2_mult_41_U250 ( .A1(Stg_2_mult_41_n235), .A2(
        Stg_2_mult_41_n273), .ZN(Stg_2_mult_41_n237) );
  XNOR2_X1 Stg_2_mult_41_U249 ( .A(H3[7]), .B(DIN_R_s_3__5_), .ZN(
        Stg_2_mult_41_n245) );
  OAI22_X1 Stg_2_mult_41_U248 ( .A1(Stg_2_mult_41_n243), .A2(
        Stg_2_mult_41_n237), .B1(Stg_2_mult_41_n235), .B2(Stg_2_mult_41_n245), 
        .ZN(Stg_2_mult_41_n21) );
  XNOR2_X1 Stg_2_mult_41_U247 ( .A(H3[6]), .B(DIN_R_s_3__3_), .ZN(
        Stg_2_mult_41_n271) );
  XOR2_X1 Stg_2_mult_41_U246 ( .A(DIN_R_s_3__2_), .B(DIN_R_s_3__1_), .Z(
        Stg_2_mult_41_n253) );
  XNOR2_X1 Stg_2_mult_41_U245 ( .A(Stg_2_mult_41_n214), .B(DIN_R_s_3__2_), 
        .ZN(Stg_2_mult_41_n272) );
  NAND2_X1 Stg_2_mult_41_U244 ( .A1(Stg_2_mult_41_n215), .A2(
        Stg_2_mult_41_n272), .ZN(Stg_2_mult_41_n227) );
  XNOR2_X1 Stg_2_mult_41_U243 ( .A(H3[7]), .B(DIN_R_s_3__3_), .ZN(
        Stg_2_mult_41_n234) );
  OAI22_X1 Stg_2_mult_41_U242 ( .A1(Stg_2_mult_41_n271), .A2(
        Stg_2_mult_41_n227), .B1(Stg_2_mult_41_n215), .B2(Stg_2_mult_41_n234), 
        .ZN(Stg_2_mult_41_n31) );
  XNOR2_X1 Stg_2_mult_41_U241 ( .A(H3[1]), .B(DIN_R_s_3__7_), .ZN(
        Stg_2_mult_41_n259) );
  XNOR2_X1 Stg_2_mult_41_U240 ( .A(H3[2]), .B(DIN_R_s_3__7_), .ZN(
        Stg_2_mult_41_n260) );
  OAI22_X1 Stg_2_mult_41_U239 ( .A1(Stg_2_mult_41_n259), .A2(
        Stg_2_mult_41_n258), .B1(Stg_2_mult_41_n256), .B2(Stg_2_mult_41_n260), 
        .ZN(Stg_2_mult_41_n269) );
  XNOR2_X1 Stg_2_mult_41_U238 ( .A(H3[5]), .B(DIN_R_s_3__3_), .ZN(
        Stg_2_mult_41_n232) );
  OAI22_X1 Stg_2_mult_41_U237 ( .A1(Stg_2_mult_41_n232), .A2(
        Stg_2_mult_41_n227), .B1(Stg_2_mult_41_n215), .B2(Stg_2_mult_41_n271), 
        .ZN(Stg_2_mult_41_n270) );
  OR2_X1 Stg_2_mult_41_U236 ( .A1(Stg_2_mult_41_n269), .A2(Stg_2_mult_41_n270), 
        .ZN(Stg_2_mult_41_n37) );
  XNOR2_X1 Stg_2_mult_41_U235 ( .A(Stg_2_mult_41_n269), .B(Stg_2_mult_41_n270), 
        .ZN(Stg_2_mult_41_n38) );
  OR3_X1 Stg_2_mult_41_U234 ( .A1(Stg_2_mult_41_n256), .A2(H3[0]), .A3(
        Stg_2_mult_41_n204), .ZN(Stg_2_mult_41_n268) );
  OAI21_X1 Stg_2_mult_41_U233 ( .B1(Stg_2_mult_41_n204), .B2(
        Stg_2_mult_41_n258), .A(Stg_2_mult_41_n268), .ZN(Stg_2_mult_41_n68) );
  OR3_X1 Stg_2_mult_41_U232 ( .A1(Stg_2_mult_41_n235), .A2(H3[0]), .A3(
        Stg_2_mult_41_n209), .ZN(Stg_2_mult_41_n267) );
  OAI21_X1 Stg_2_mult_41_U231 ( .B1(Stg_2_mult_41_n209), .B2(
        Stg_2_mult_41_n237), .A(Stg_2_mult_41_n267), .ZN(Stg_2_mult_41_n69) );
  OAI22_X1 Stg_2_mult_41_U230 ( .A1(Stg_2_mult_41_n266), .A2(
        Stg_2_mult_41_n256), .B1(Stg_2_mult_41_n258), .B2(Stg_2_mult_41_n266), 
        .ZN(Stg_2_mult_41_n265) );
  XNOR2_X1 Stg_2_mult_41_U229 ( .A(H3[5]), .B(DIN_R_s_3__7_), .ZN(
        Stg_2_mult_41_n263) );
  OAI22_X1 Stg_2_mult_41_U228 ( .A1(Stg_2_mult_41_n263), .A2(
        Stg_2_mult_41_n258), .B1(Stg_2_mult_41_n256), .B2(Stg_2_mult_41_n264), 
        .ZN(Stg_2_mult_41_n73) );
  XNOR2_X1 Stg_2_mult_41_U227 ( .A(H3[4]), .B(DIN_R_s_3__7_), .ZN(
        Stg_2_mult_41_n262) );
  OAI22_X1 Stg_2_mult_41_U226 ( .A1(Stg_2_mult_41_n262), .A2(
        Stg_2_mult_41_n258), .B1(Stg_2_mult_41_n256), .B2(Stg_2_mult_41_n263), 
        .ZN(Stg_2_mult_41_n74) );
  XNOR2_X1 Stg_2_mult_41_U225 ( .A(H3[3]), .B(DIN_R_s_3__7_), .ZN(
        Stg_2_mult_41_n261) );
  OAI22_X1 Stg_2_mult_41_U224 ( .A1(Stg_2_mult_41_n261), .A2(
        Stg_2_mult_41_n258), .B1(Stg_2_mult_41_n256), .B2(Stg_2_mult_41_n262), 
        .ZN(Stg_2_mult_41_n75) );
  OAI22_X1 Stg_2_mult_41_U223 ( .A1(Stg_2_mult_41_n260), .A2(
        Stg_2_mult_41_n258), .B1(Stg_2_mult_41_n256), .B2(Stg_2_mult_41_n261), 
        .ZN(Stg_2_mult_41_n76) );
  XNOR2_X1 Stg_2_mult_41_U222 ( .A(H3[0]), .B(DIN_R_s_3__7_), .ZN(
        Stg_2_mult_41_n257) );
  OAI22_X1 Stg_2_mult_41_U221 ( .A1(Stg_2_mult_41_n257), .A2(
        Stg_2_mult_41_n258), .B1(Stg_2_mult_41_n256), .B2(Stg_2_mult_41_n259), 
        .ZN(Stg_2_mult_41_n78) );
  NOR2_X1 Stg_2_mult_41_U220 ( .A1(Stg_2_mult_41_n256), .A2(Stg_2_mult_41_n219), .ZN(Stg_2_mult_41_n79) );
  OAI22_X1 Stg_2_mult_41_U219 ( .A1(H3[1]), .A2(Stg_2_mult_41_n221), .B1(
        Stg_2_mult_41_n255), .B2(Stg_2_mult_41_n217), .ZN(Stg_2_mult_41_n254)
         );
  NAND3_X1 Stg_2_mult_41_U218 ( .A1(Stg_2_mult_41_n253), .A2(
        Stg_2_mult_41_n219), .A3(DIN_R_s_3__3_), .ZN(Stg_2_mult_41_n252) );
  OAI21_X1 Stg_2_mult_41_U217 ( .B1(Stg_2_mult_41_n214), .B2(
        Stg_2_mult_41_n227), .A(Stg_2_mult_41_n252), .ZN(Stg_2_mult_41_n251)
         );
  AOI222_X1 Stg_2_mult_41_U216 ( .A1(Stg_2_mult_41_n197), .A2(
        Stg_2_mult_41_n56), .B1(Stg_2_mult_41_n251), .B2(Stg_2_mult_41_n197), 
        .C1(Stg_2_mult_41_n251), .C2(Stg_2_mult_41_n56), .ZN(
        Stg_2_mult_41_n250) );
  AOI222_X1 Stg_2_mult_41_U215 ( .A1(Stg_2_mult_41_n211), .A2(
        Stg_2_mult_41_n54), .B1(Stg_2_mult_41_n211), .B2(Stg_2_mult_41_n55), 
        .C1(Stg_2_mult_41_n55), .C2(Stg_2_mult_41_n54), .ZN(Stg_2_mult_41_n249) );
  AOI222_X1 Stg_2_mult_41_U214 ( .A1(Stg_2_mult_41_n210), .A2(
        Stg_2_mult_41_n50), .B1(Stg_2_mult_41_n210), .B2(Stg_2_mult_41_n53), 
        .C1(Stg_2_mult_41_n53), .C2(Stg_2_mult_41_n50), .ZN(Stg_2_mult_41_n248) );
  AOI222_X1 Stg_2_mult_41_U213 ( .A1(Stg_2_mult_41_n206), .A2(
        Stg_2_mult_41_n46), .B1(Stg_2_mult_41_n206), .B2(Stg_2_mult_41_n49), 
        .C1(Stg_2_mult_41_n49), .C2(Stg_2_mult_41_n46), .ZN(Stg_2_mult_41_n247) );
  AOI222_X1 Stg_2_mult_41_U212 ( .A1(Stg_2_mult_41_n205), .A2(
        Stg_2_mult_41_n40), .B1(Stg_2_mult_41_n205), .B2(Stg_2_mult_41_n45), 
        .C1(Stg_2_mult_41_n45), .C2(Stg_2_mult_41_n40), .ZN(Stg_2_mult_41_n246) );
  OAI22_X1 Stg_2_mult_41_U211 ( .A1(Stg_2_mult_41_n245), .A2(
        Stg_2_mult_41_n235), .B1(Stg_2_mult_41_n237), .B2(Stg_2_mult_41_n245), 
        .ZN(Stg_2_mult_41_n244) );
  XNOR2_X1 Stg_2_mult_41_U210 ( .A(H3[5]), .B(DIN_R_s_3__5_), .ZN(
        Stg_2_mult_41_n242) );
  OAI22_X1 Stg_2_mult_41_U209 ( .A1(Stg_2_mult_41_n242), .A2(
        Stg_2_mult_41_n237), .B1(Stg_2_mult_41_n235), .B2(Stg_2_mult_41_n243), 
        .ZN(Stg_2_mult_41_n81) );
  XNOR2_X1 Stg_2_mult_41_U208 ( .A(H3[4]), .B(DIN_R_s_3__5_), .ZN(
        Stg_2_mult_41_n241) );
  OAI22_X1 Stg_2_mult_41_U207 ( .A1(Stg_2_mult_41_n241), .A2(
        Stg_2_mult_41_n237), .B1(Stg_2_mult_41_n235), .B2(Stg_2_mult_41_n242), 
        .ZN(Stg_2_mult_41_n82) );
  XNOR2_X1 Stg_2_mult_41_U206 ( .A(H3[3]), .B(DIN_R_s_3__5_), .ZN(
        Stg_2_mult_41_n240) );
  OAI22_X1 Stg_2_mult_41_U205 ( .A1(Stg_2_mult_41_n240), .A2(
        Stg_2_mult_41_n237), .B1(Stg_2_mult_41_n235), .B2(Stg_2_mult_41_n241), 
        .ZN(Stg_2_mult_41_n83) );
  XNOR2_X1 Stg_2_mult_41_U204 ( .A(H3[2]), .B(DIN_R_s_3__5_), .ZN(
        Stg_2_mult_41_n239) );
  OAI22_X1 Stg_2_mult_41_U203 ( .A1(Stg_2_mult_41_n239), .A2(
        Stg_2_mult_41_n237), .B1(Stg_2_mult_41_n235), .B2(Stg_2_mult_41_n240), 
        .ZN(Stg_2_mult_41_n84) );
  XNOR2_X1 Stg_2_mult_41_U202 ( .A(H3[1]), .B(DIN_R_s_3__5_), .ZN(
        Stg_2_mult_41_n238) );
  OAI22_X1 Stg_2_mult_41_U201 ( .A1(Stg_2_mult_41_n238), .A2(
        Stg_2_mult_41_n237), .B1(Stg_2_mult_41_n235), .B2(Stg_2_mult_41_n239), 
        .ZN(Stg_2_mult_41_n85) );
  XNOR2_X1 Stg_2_mult_41_U200 ( .A(H3[0]), .B(DIN_R_s_3__5_), .ZN(
        Stg_2_mult_41_n236) );
  OAI22_X1 Stg_2_mult_41_U199 ( .A1(Stg_2_mult_41_n236), .A2(
        Stg_2_mult_41_n237), .B1(Stg_2_mult_41_n235), .B2(Stg_2_mult_41_n238), 
        .ZN(Stg_2_mult_41_n86) );
  NOR2_X1 Stg_2_mult_41_U198 ( .A1(Stg_2_mult_41_n235), .A2(Stg_2_mult_41_n219), .ZN(Stg_2_mult_41_n87) );
  OAI22_X1 Stg_2_mult_41_U197 ( .A1(Stg_2_mult_41_n234), .A2(
        Stg_2_mult_41_n215), .B1(Stg_2_mult_41_n227), .B2(Stg_2_mult_41_n234), 
        .ZN(Stg_2_mult_41_n233) );
  XNOR2_X1 Stg_2_mult_41_U196 ( .A(H3[4]), .B(DIN_R_s_3__3_), .ZN(
        Stg_2_mult_41_n231) );
  OAI22_X1 Stg_2_mult_41_U195 ( .A1(Stg_2_mult_41_n231), .A2(
        Stg_2_mult_41_n227), .B1(Stg_2_mult_41_n215), .B2(Stg_2_mult_41_n232), 
        .ZN(Stg_2_mult_41_n90) );
  XNOR2_X1 Stg_2_mult_41_U194 ( .A(H3[3]), .B(DIN_R_s_3__3_), .ZN(
        Stg_2_mult_41_n230) );
  OAI22_X1 Stg_2_mult_41_U193 ( .A1(Stg_2_mult_41_n230), .A2(
        Stg_2_mult_41_n227), .B1(Stg_2_mult_41_n215), .B2(Stg_2_mult_41_n231), 
        .ZN(Stg_2_mult_41_n91) );
  XNOR2_X1 Stg_2_mult_41_U192 ( .A(H3[2]), .B(DIN_R_s_3__3_), .ZN(
        Stg_2_mult_41_n229) );
  OAI22_X1 Stg_2_mult_41_U191 ( .A1(Stg_2_mult_41_n229), .A2(
        Stg_2_mult_41_n227), .B1(Stg_2_mult_41_n215), .B2(Stg_2_mult_41_n230), 
        .ZN(Stg_2_mult_41_n92) );
  XNOR2_X1 Stg_2_mult_41_U190 ( .A(H3[1]), .B(DIN_R_s_3__3_), .ZN(
        Stg_2_mult_41_n228) );
  OAI22_X1 Stg_2_mult_41_U189 ( .A1(Stg_2_mult_41_n228), .A2(
        Stg_2_mult_41_n227), .B1(Stg_2_mult_41_n215), .B2(Stg_2_mult_41_n229), 
        .ZN(Stg_2_mult_41_n93) );
  XNOR2_X1 Stg_2_mult_41_U188 ( .A(H3[0]), .B(DIN_R_s_3__3_), .ZN(
        Stg_2_mult_41_n226) );
  OAI22_X1 Stg_2_mult_41_U187 ( .A1(Stg_2_mult_41_n226), .A2(
        Stg_2_mult_41_n227), .B1(Stg_2_mult_41_n215), .B2(Stg_2_mult_41_n228), 
        .ZN(Stg_2_mult_41_n94) );
  XNOR2_X1 Stg_2_mult_41_U186 ( .A(H3[7]), .B(DIN_R_s_3__1_), .ZN(
        Stg_2_mult_41_n224) );
  OAI22_X1 Stg_2_mult_41_U185 ( .A1(Stg_2_mult_41_n217), .A2(
        Stg_2_mult_41_n224), .B1(Stg_2_mult_41_n221), .B2(Stg_2_mult_41_n224), 
        .ZN(Stg_2_mult_41_n225) );
  XNOR2_X1 Stg_2_mult_41_U184 ( .A(H3[6]), .B(DIN_R_s_3__1_), .ZN(
        Stg_2_mult_41_n223) );
  OAI22_X1 Stg_2_mult_41_U183 ( .A1(Stg_2_mult_41_n223), .A2(
        Stg_2_mult_41_n221), .B1(Stg_2_mult_41_n224), .B2(Stg_2_mult_41_n217), 
        .ZN(Stg_2_mult_41_n97) );
  XNOR2_X1 Stg_2_mult_41_U182 ( .A(H3[5]), .B(DIN_R_s_3__1_), .ZN(
        Stg_2_mult_41_n222) );
  OAI22_X1 Stg_2_mult_41_U181 ( .A1(Stg_2_mult_41_n222), .A2(
        Stg_2_mult_41_n221), .B1(Stg_2_mult_41_n223), .B2(Stg_2_mult_41_n217), 
        .ZN(Stg_2_mult_41_n98) );
  OAI22_X1 Stg_2_mult_41_U180 ( .A1(Stg_2_mult_41_n220), .A2(
        Stg_2_mult_41_n221), .B1(Stg_2_mult_41_n222), .B2(Stg_2_mult_41_n217), 
        .ZN(Stg_2_mult_41_n99) );
  INV_X1 Stg_2_mult_41_U179 ( .A(DIN_R_s_3__7_), .ZN(Stg_2_mult_41_n204) );
  INV_X1 Stg_2_mult_41_U178 ( .A(DIN_R_s_3__5_), .ZN(Stg_2_mult_41_n209) );
  INV_X1 Stg_2_mult_41_U177 ( .A(DIN_R_s_3__0_), .ZN(Stg_2_mult_41_n217) );
  XOR2_X1 Stg_2_mult_41_U176 ( .A(DIN_R_s_3__6_), .B(Stg_2_mult_41_n209), .Z(
        Stg_2_mult_41_n256) );
  XOR2_X1 Stg_2_mult_41_U175 ( .A(DIN_R_s_3__4_), .B(Stg_2_mult_41_n214), .Z(
        Stg_2_mult_41_n235) );
  INV_X1 Stg_2_mult_41_U174 ( .A(H3[1]), .ZN(Stg_2_mult_41_n218) );
  INV_X1 Stg_2_mult_41_U173 ( .A(H3[0]), .ZN(Stg_2_mult_41_n219) );
  AND3_X1 Stg_2_mult_41_U172 ( .A1(Stg_2_mult_41_n254), .A2(Stg_2_mult_41_n218), .A3(DIN_R_s_3__1_), .ZN(Stg_2_mult_41_n199) );
  AND2_X1 Stg_2_mult_41_U171 ( .A1(Stg_2_mult_41_n253), .A2(Stg_2_mult_41_n254), .ZN(Stg_2_mult_41_n198) );
  MUX2_X1 Stg_2_mult_41_U170 ( .A(Stg_2_mult_41_n198), .B(Stg_2_mult_41_n199), 
        .S(Stg_2_mult_41_n219), .Z(Stg_2_mult_41_n197) );
  INV_X1 Stg_2_mult_41_U169 ( .A(DIN_R_s_3__3_), .ZN(Stg_2_mult_41_n214) );
  INV_X1 Stg_2_mult_41_U168 ( .A(Stg_2_mult_41_n31), .ZN(Stg_2_mult_41_n212)
         );
  INV_X1 Stg_2_mult_41_U167 ( .A(Stg_2_mult_41_n233), .ZN(Stg_2_mult_41_n213)
         );
  INV_X1 Stg_2_mult_41_U166 ( .A(Stg_2_mult_41_n225), .ZN(Stg_2_mult_41_n216)
         );
  INV_X1 Stg_2_mult_41_U165 ( .A(Stg_2_mult_41_n244), .ZN(Stg_2_mult_41_n208)
         );
  INV_X1 Stg_2_mult_41_U164 ( .A(Stg_2_mult_41_n21), .ZN(Stg_2_mult_41_n207)
         );
  INV_X1 Stg_2_mult_41_U163 ( .A(Stg_2_mult_41_n246), .ZN(Stg_2_mult_41_n201)
         );
  INV_X1 Stg_2_mult_41_U162 ( .A(Stg_2_mult_41_n265), .ZN(Stg_2_mult_41_n203)
         );
  INV_X1 Stg_2_mult_41_U161 ( .A(Stg_2_mult_41_n253), .ZN(Stg_2_mult_41_n215)
         );
  INV_X1 Stg_2_mult_41_U160 ( .A(Stg_2_mult_41_n250), .ZN(Stg_2_mult_41_n211)
         );
  INV_X1 Stg_2_mult_41_U159 ( .A(Stg_2_mult_41_n249), .ZN(Stg_2_mult_41_n210)
         );
  INV_X1 Stg_2_mult_41_U158 ( .A(Stg_2_mult_41_n15), .ZN(Stg_2_mult_41_n202)
         );
  INV_X1 Stg_2_mult_41_U157 ( .A(Stg_2_mult_41_n1), .ZN(Stg_2_mult_partial_15_) );
  INV_X1 Stg_2_mult_41_U156 ( .A(Stg_2_mult_41_n248), .ZN(Stg_2_mult_41_n206)
         );
  INV_X1 Stg_2_mult_41_U155 ( .A(Stg_2_mult_41_n247), .ZN(Stg_2_mult_41_n205)
         );
  HA_X1 Stg_2_mult_41_U37 ( .A(Stg_2_mult_41_n94), .B(Stg_2_mult_41_n101), 
        .CO(Stg_2_mult_41_n55), .S(Stg_2_mult_41_n56) );
  FA_X1 Stg_2_mult_41_U36 ( .A(Stg_2_mult_41_n100), .B(Stg_2_mult_41_n87), 
        .CI(Stg_2_mult_41_n93), .CO(Stg_2_mult_41_n53), .S(Stg_2_mult_41_n54)
         );
  HA_X1 Stg_2_mult_41_U35 ( .A(Stg_2_mult_41_n69), .B(Stg_2_mult_41_n86), .CO(
        Stg_2_mult_41_n51), .S(Stg_2_mult_41_n52) );
  FA_X1 Stg_2_mult_41_U34 ( .A(Stg_2_mult_41_n92), .B(Stg_2_mult_41_n99), .CI(
        Stg_2_mult_41_n52), .CO(Stg_2_mult_41_n49), .S(Stg_2_mult_41_n50) );
  FA_X1 Stg_2_mult_41_U33 ( .A(Stg_2_mult_41_n98), .B(Stg_2_mult_41_n79), .CI(
        Stg_2_mult_41_n91), .CO(Stg_2_mult_41_n47), .S(Stg_2_mult_41_n48) );
  FA_X1 Stg_2_mult_41_U32 ( .A(Stg_2_mult_41_n51), .B(Stg_2_mult_41_n85), .CI(
        Stg_2_mult_41_n48), .CO(Stg_2_mult_41_n45), .S(Stg_2_mult_41_n46) );
  HA_X1 Stg_2_mult_41_U31 ( .A(Stg_2_mult_41_n68), .B(Stg_2_mult_41_n78), .CO(
        Stg_2_mult_41_n43), .S(Stg_2_mult_41_n44) );
  FA_X1 Stg_2_mult_41_U30 ( .A(Stg_2_mult_41_n84), .B(Stg_2_mult_41_n97), .CI(
        Stg_2_mult_41_n90), .CO(Stg_2_mult_41_n41), .S(Stg_2_mult_41_n42) );
  FA_X1 Stg_2_mult_41_U29 ( .A(Stg_2_mult_41_n47), .B(Stg_2_mult_41_n44), .CI(
        Stg_2_mult_41_n42), .CO(Stg_2_mult_41_n39), .S(Stg_2_mult_41_n40) );
  FA_X1 Stg_2_mult_41_U26 ( .A(Stg_2_mult_41_n216), .B(Stg_2_mult_41_n83), 
        .CI(Stg_2_mult_41_n43), .CO(Stg_2_mult_41_n35), .S(Stg_2_mult_41_n36)
         );
  FA_X1 Stg_2_mult_41_U25 ( .A(Stg_2_mult_41_n41), .B(Stg_2_mult_41_n38), .CI(
        Stg_2_mult_41_n36), .CO(Stg_2_mult_41_n33), .S(Stg_2_mult_41_n34) );
  FA_X1 Stg_2_mult_41_U23 ( .A(Stg_2_mult_41_n76), .B(Stg_2_mult_41_n82), .CI(
        Stg_2_mult_41_n212), .CO(Stg_2_mult_41_n29), .S(Stg_2_mult_41_n30) );
  FA_X1 Stg_2_mult_41_U22 ( .A(Stg_2_mult_41_n35), .B(Stg_2_mult_41_n37), .CI(
        Stg_2_mult_41_n30), .CO(Stg_2_mult_41_n27), .S(Stg_2_mult_41_n28) );
  FA_X1 Stg_2_mult_41_U21 ( .A(Stg_2_mult_41_n81), .B(Stg_2_mult_41_n31), .CI(
        Stg_2_mult_41_n213), .CO(Stg_2_mult_41_n25), .S(Stg_2_mult_41_n26) );
  FA_X1 Stg_2_mult_41_U20 ( .A(Stg_2_mult_41_n29), .B(Stg_2_mult_41_n75), .CI(
        Stg_2_mult_41_n26), .CO(Stg_2_mult_41_n23), .S(Stg_2_mult_41_n24) );
  FA_X1 Stg_2_mult_41_U18 ( .A(Stg_2_mult_41_n207), .B(Stg_2_mult_41_n74), 
        .CI(Stg_2_mult_41_n25), .CO(Stg_2_mult_41_n19), .S(Stg_2_mult_41_n20)
         );
  FA_X1 Stg_2_mult_41_U17 ( .A(Stg_2_mult_41_n73), .B(Stg_2_mult_41_n21), .CI(
        Stg_2_mult_41_n208), .CO(Stg_2_mult_41_n17), .S(Stg_2_mult_41_n18) );
  FA_X1 Stg_2_mult_41_U8 ( .A(Stg_2_mult_41_n34), .B(Stg_2_mult_41_n39), .CI(
        Stg_2_mult_41_n201), .CO(Stg_2_mult_41_n7), .S(Stg_2_mult_partial_8_)
         );
  FA_X1 Stg_2_mult_41_U7 ( .A(Stg_2_mult_41_n28), .B(Stg_2_mult_41_n33), .CI(
        Stg_2_mult_41_n7), .CO(Stg_2_mult_41_n6), .S(Stg_2_mult_partial_9_) );
  FA_X1 Stg_2_mult_41_U6 ( .A(Stg_2_mult_41_n24), .B(Stg_2_mult_41_n27), .CI(
        Stg_2_mult_41_n6), .CO(Stg_2_mult_41_n5), .S(Stg_2_mult_partial_10_)
         );
  FA_X1 Stg_2_mult_41_U5 ( .A(Stg_2_mult_41_n20), .B(Stg_2_mult_41_n23), .CI(
        Stg_2_mult_41_n5), .CO(Stg_2_mult_41_n4), .S(Stg_2_mult_partial_11_)
         );
  FA_X1 Stg_2_mult_41_U4 ( .A(Stg_2_mult_41_n19), .B(Stg_2_mult_41_n18), .CI(
        Stg_2_mult_41_n4), .CO(Stg_2_mult_41_n3), .S(Stg_2_mult_partial_12_)
         );
  FA_X1 Stg_2_mult_41_U3 ( .A(Stg_2_mult_41_n17), .B(Stg_2_mult_41_n202), .CI(
        Stg_2_mult_41_n3), .CO(Stg_2_mult_41_n2), .S(Stg_2_mult_partial_13_)
         );
  FA_X1 Stg_2_mult_41_U2 ( .A(Stg_2_mult_41_n203), .B(Stg_2_mult_41_n15), .CI(
        Stg_2_mult_41_n2), .CO(Stg_2_mult_41_n1), .S(Stg_2_mult_partial_14_)
         );
  XOR2_X1 Stg_2_add_42_U2 ( .A(DIN_A_s_2__0_), .B(Stg_2_mult_partial_8_), .Z(
        DIN_A_s_3__0_) );
  AND2_X1 Stg_2_add_42_U1 ( .A1(DIN_A_s_2__0_), .A2(Stg_2_mult_partial_8_), 
        .ZN(Stg_2_add_42_n1) );
  FA_X1 Stg_2_add_42_U1_1 ( .A(Stg_2_mult_partial_9_), .B(DIN_A_s_2__1_), .CI(
        Stg_2_add_42_n1), .CO(Stg_2_add_42_carry[2]), .S(DIN_A_s_3__1_) );
  FA_X1 Stg_2_add_42_U1_2 ( .A(Stg_2_mult_partial_10_), .B(DIN_A_s_2__2_), 
        .CI(Stg_2_add_42_carry[2]), .CO(Stg_2_add_42_carry[3]), .S(
        DIN_A_s_3__2_) );
  FA_X1 Stg_2_add_42_U1_3 ( .A(Stg_2_mult_partial_11_), .B(DIN_A_s_2__3_), 
        .CI(Stg_2_add_42_carry[3]), .CO(Stg_2_add_42_carry[4]), .S(
        DIN_A_s_3__3_) );
  FA_X1 Stg_2_add_42_U1_4 ( .A(Stg_2_mult_partial_12_), .B(DIN_A_s_2__4_), 
        .CI(Stg_2_add_42_carry[4]), .CO(Stg_2_add_42_carry[5]), .S(
        DIN_A_s_3__4_) );
  FA_X1 Stg_2_add_42_U1_5 ( .A(Stg_2_mult_partial_13_), .B(DIN_A_s_2__5_), 
        .CI(Stg_2_add_42_carry[5]), .CO(Stg_2_add_42_carry[6]), .S(
        DIN_A_s_3__5_) );
  FA_X1 Stg_2_add_42_U1_6 ( .A(Stg_2_mult_partial_14_), .B(DIN_A_s_2__6_), 
        .CI(Stg_2_add_42_carry[6]), .CO(Stg_2_add_42_carry[7]), .S(
        DIN_A_s_3__6_) );
  FA_X1 Stg_2_add_42_U1_7 ( .A(Stg_2_mult_partial_15_), .B(DIN_A_s_2__7_), 
        .CI(Stg_2_add_42_carry[7]), .S(DIN_A_s_3__7_) );
  INV_X1 Stg_3_REGn_regn_7_U6 ( .A(RST_n), .ZN(Stg_3_REGn_regn_7_n2) );
  INV_X1 Stg_3_REGn_regn_7_U5 ( .A(n5), .ZN(Stg_3_REGn_regn_7_n1) );
  AOI22_X1 Stg_3_REGn_regn_7_U4 ( .A1(n5), .A2(DIN_R_s_3__7_), .B1(
        DIN_R_s_4__7_), .B2(Stg_3_REGn_regn_7_n1), .ZN(Stg_3_REGn_regn_7_n6)
         );
  NOR2_X1 Stg_3_REGn_regn_7_U3 ( .A1(Stg_3_REGn_regn_7_n6), .A2(
        Stg_3_REGn_regn_7_n2), .ZN(Stg_3_REGn_regn_7_n5) );
  DFF_X1 Stg_3_REGn_regn_7_Q_reg ( .D(Stg_3_REGn_regn_7_n5), .CK(CLK), .Q(
        DIN_R_s_4__7_) );
  INV_X1 Stg_3_REGn_regn_6_U6 ( .A(RST_n), .ZN(Stg_3_REGn_regn_6_n2) );
  INV_X1 Stg_3_REGn_regn_6_U5 ( .A(n5), .ZN(Stg_3_REGn_regn_6_n1) );
  AOI22_X1 Stg_3_REGn_regn_6_U4 ( .A1(n5), .A2(DIN_R_s_3__6_), .B1(
        DIN_R_s_4__6_), .B2(Stg_3_REGn_regn_6_n1), .ZN(Stg_3_REGn_regn_6_n6)
         );
  NOR2_X1 Stg_3_REGn_regn_6_U3 ( .A1(Stg_3_REGn_regn_6_n6), .A2(
        Stg_3_REGn_regn_6_n2), .ZN(Stg_3_REGn_regn_6_n5) );
  DFF_X1 Stg_3_REGn_regn_6_Q_reg ( .D(Stg_3_REGn_regn_6_n5), .CK(CLK), .Q(
        DIN_R_s_4__6_) );
  INV_X1 Stg_3_REGn_regn_5_U6 ( .A(RST_n), .ZN(Stg_3_REGn_regn_5_n2) );
  INV_X1 Stg_3_REGn_regn_5_U5 ( .A(n5), .ZN(Stg_3_REGn_regn_5_n1) );
  AOI22_X1 Stg_3_REGn_regn_5_U4 ( .A1(n5), .A2(DIN_R_s_3__5_), .B1(
        DIN_R_s_4__5_), .B2(Stg_3_REGn_regn_5_n1), .ZN(Stg_3_REGn_regn_5_n6)
         );
  NOR2_X1 Stg_3_REGn_regn_5_U3 ( .A1(Stg_3_REGn_regn_5_n6), .A2(
        Stg_3_REGn_regn_5_n2), .ZN(Stg_3_REGn_regn_5_n5) );
  DFF_X1 Stg_3_REGn_regn_5_Q_reg ( .D(Stg_3_REGn_regn_5_n5), .CK(CLK), .Q(
        DIN_R_s_4__5_) );
  INV_X1 Stg_3_REGn_regn_4_U6 ( .A(RST_n), .ZN(Stg_3_REGn_regn_4_n2) );
  INV_X1 Stg_3_REGn_regn_4_U5 ( .A(n5), .ZN(Stg_3_REGn_regn_4_n1) );
  AOI22_X1 Stg_3_REGn_regn_4_U4 ( .A1(n5), .A2(DIN_R_s_3__4_), .B1(
        DIN_R_s_4__4_), .B2(Stg_3_REGn_regn_4_n1), .ZN(Stg_3_REGn_regn_4_n6)
         );
  NOR2_X1 Stg_3_REGn_regn_4_U3 ( .A1(Stg_3_REGn_regn_4_n6), .A2(
        Stg_3_REGn_regn_4_n2), .ZN(Stg_3_REGn_regn_4_n5) );
  DFF_X1 Stg_3_REGn_regn_4_Q_reg ( .D(Stg_3_REGn_regn_4_n5), .CK(CLK), .Q(
        DIN_R_s_4__4_) );
  INV_X1 Stg_3_REGn_regn_3_U6 ( .A(RST_n), .ZN(Stg_3_REGn_regn_3_n2) );
  INV_X1 Stg_3_REGn_regn_3_U5 ( .A(n5), .ZN(Stg_3_REGn_regn_3_n1) );
  AOI22_X1 Stg_3_REGn_regn_3_U4 ( .A1(n5), .A2(DIN_R_s_3__3_), .B1(
        DIN_R_s_4__3_), .B2(Stg_3_REGn_regn_3_n1), .ZN(Stg_3_REGn_regn_3_n6)
         );
  NOR2_X1 Stg_3_REGn_regn_3_U3 ( .A1(Stg_3_REGn_regn_3_n6), .A2(
        Stg_3_REGn_regn_3_n2), .ZN(Stg_3_REGn_regn_3_n5) );
  DFF_X1 Stg_3_REGn_regn_3_Q_reg ( .D(Stg_3_REGn_regn_3_n5), .CK(CLK), .Q(
        DIN_R_s_4__3_) );
  INV_X1 Stg_3_REGn_regn_2_U6 ( .A(RST_n), .ZN(Stg_3_REGn_regn_2_n2) );
  INV_X1 Stg_3_REGn_regn_2_U5 ( .A(n5), .ZN(Stg_3_REGn_regn_2_n1) );
  AOI22_X1 Stg_3_REGn_regn_2_U4 ( .A1(n5), .A2(DIN_R_s_3__2_), .B1(
        DIN_R_s_4__2_), .B2(Stg_3_REGn_regn_2_n1), .ZN(Stg_3_REGn_regn_2_n6)
         );
  NOR2_X1 Stg_3_REGn_regn_2_U3 ( .A1(Stg_3_REGn_regn_2_n6), .A2(
        Stg_3_REGn_regn_2_n2), .ZN(Stg_3_REGn_regn_2_n5) );
  DFF_X1 Stg_3_REGn_regn_2_Q_reg ( .D(Stg_3_REGn_regn_2_n5), .CK(CLK), .Q(
        DIN_R_s_4__2_) );
  INV_X1 Stg_3_REGn_regn_1_U6 ( .A(RST_n), .ZN(Stg_3_REGn_regn_1_n2) );
  INV_X1 Stg_3_REGn_regn_1_U5 ( .A(n5), .ZN(Stg_3_REGn_regn_1_n1) );
  AOI22_X1 Stg_3_REGn_regn_1_U4 ( .A1(n5), .A2(DIN_R_s_3__1_), .B1(
        DIN_R_s_4__1_), .B2(Stg_3_REGn_regn_1_n1), .ZN(Stg_3_REGn_regn_1_n6)
         );
  NOR2_X1 Stg_3_REGn_regn_1_U3 ( .A1(Stg_3_REGn_regn_1_n6), .A2(
        Stg_3_REGn_regn_1_n2), .ZN(Stg_3_REGn_regn_1_n5) );
  DFF_X1 Stg_3_REGn_regn_1_Q_reg ( .D(Stg_3_REGn_regn_1_n5), .CK(CLK), .Q(
        DIN_R_s_4__1_) );
  INV_X1 Stg_3_REGn_regn_0_U6 ( .A(RST_n), .ZN(Stg_3_REGn_regn_0_n2) );
  INV_X1 Stg_3_REGn_regn_0_U5 ( .A(n5), .ZN(Stg_3_REGn_regn_0_n1) );
  AOI22_X1 Stg_3_REGn_regn_0_U4 ( .A1(n5), .A2(DIN_R_s_3__0_), .B1(
        DIN_R_s_4__0_), .B2(Stg_3_REGn_regn_0_n1), .ZN(Stg_3_REGn_regn_0_n6)
         );
  NOR2_X1 Stg_3_REGn_regn_0_U3 ( .A1(Stg_3_REGn_regn_0_n6), .A2(
        Stg_3_REGn_regn_0_n2), .ZN(Stg_3_REGn_regn_0_n5) );
  DFF_X1 Stg_3_REGn_regn_0_Q_reg ( .D(Stg_3_REGn_regn_0_n5), .CK(CLK), .Q(
        DIN_R_s_4__0_) );
  XNOR2_X1 Stg_3_mult_41_U263 ( .A(H4[3]), .B(DIN_R_s_4__1_), .ZN(
        Stg_3_mult_41_n275) );
  NAND2_X1 Stg_3_mult_41_U262 ( .A1(DIN_R_s_4__1_), .A2(Stg_3_mult_41_n217), 
        .ZN(Stg_3_mult_41_n221) );
  XNOR2_X1 Stg_3_mult_41_U261 ( .A(H4[4]), .B(DIN_R_s_4__1_), .ZN(
        Stg_3_mult_41_n220) );
  OAI22_X1 Stg_3_mult_41_U260 ( .A1(Stg_3_mult_41_n275), .A2(
        Stg_3_mult_41_n221), .B1(Stg_3_mult_41_n220), .B2(Stg_3_mult_41_n217), 
        .ZN(Stg_3_mult_41_n100) );
  XNOR2_X1 Stg_3_mult_41_U259 ( .A(H4[2]), .B(DIN_R_s_4__1_), .ZN(
        Stg_3_mult_41_n255) );
  OAI22_X1 Stg_3_mult_41_U258 ( .A1(Stg_3_mult_41_n255), .A2(
        Stg_3_mult_41_n221), .B1(Stg_3_mult_41_n275), .B2(Stg_3_mult_41_n217), 
        .ZN(Stg_3_mult_41_n101) );
  XNOR2_X1 Stg_3_mult_41_U257 ( .A(H4[6]), .B(DIN_R_s_4__7_), .ZN(
        Stg_3_mult_41_n264) );
  XNOR2_X1 Stg_3_mult_41_U256 ( .A(Stg_3_mult_41_n204), .B(DIN_R_s_4__6_), 
        .ZN(Stg_3_mult_41_n274) );
  NAND2_X1 Stg_3_mult_41_U255 ( .A1(Stg_3_mult_41_n256), .A2(
        Stg_3_mult_41_n274), .ZN(Stg_3_mult_41_n258) );
  XNOR2_X1 Stg_3_mult_41_U254 ( .A(H4[7]), .B(DIN_R_s_4__7_), .ZN(
        Stg_3_mult_41_n266) );
  OAI22_X1 Stg_3_mult_41_U253 ( .A1(Stg_3_mult_41_n264), .A2(
        Stg_3_mult_41_n258), .B1(Stg_3_mult_41_n256), .B2(Stg_3_mult_41_n266), 
        .ZN(Stg_3_mult_41_n15) );
  XNOR2_X1 Stg_3_mult_41_U252 ( .A(H4[6]), .B(DIN_R_s_4__5_), .ZN(
        Stg_3_mult_41_n243) );
  XNOR2_X1 Stg_3_mult_41_U251 ( .A(Stg_3_mult_41_n209), .B(DIN_R_s_4__4_), 
        .ZN(Stg_3_mult_41_n273) );
  NAND2_X1 Stg_3_mult_41_U250 ( .A1(Stg_3_mult_41_n235), .A2(
        Stg_3_mult_41_n273), .ZN(Stg_3_mult_41_n237) );
  XNOR2_X1 Stg_3_mult_41_U249 ( .A(H4[7]), .B(DIN_R_s_4__5_), .ZN(
        Stg_3_mult_41_n245) );
  OAI22_X1 Stg_3_mult_41_U248 ( .A1(Stg_3_mult_41_n243), .A2(
        Stg_3_mult_41_n237), .B1(Stg_3_mult_41_n235), .B2(Stg_3_mult_41_n245), 
        .ZN(Stg_3_mult_41_n21) );
  XNOR2_X1 Stg_3_mult_41_U247 ( .A(H4[6]), .B(DIN_R_s_4__3_), .ZN(
        Stg_3_mult_41_n271) );
  XOR2_X1 Stg_3_mult_41_U246 ( .A(DIN_R_s_4__2_), .B(DIN_R_s_4__1_), .Z(
        Stg_3_mult_41_n253) );
  XNOR2_X1 Stg_3_mult_41_U245 ( .A(Stg_3_mult_41_n214), .B(DIN_R_s_4__2_), 
        .ZN(Stg_3_mult_41_n272) );
  NAND2_X1 Stg_3_mult_41_U244 ( .A1(Stg_3_mult_41_n215), .A2(
        Stg_3_mult_41_n272), .ZN(Stg_3_mult_41_n227) );
  XNOR2_X1 Stg_3_mult_41_U243 ( .A(H4[7]), .B(DIN_R_s_4__3_), .ZN(
        Stg_3_mult_41_n234) );
  OAI22_X1 Stg_3_mult_41_U242 ( .A1(Stg_3_mult_41_n271), .A2(
        Stg_3_mult_41_n227), .B1(Stg_3_mult_41_n215), .B2(Stg_3_mult_41_n234), 
        .ZN(Stg_3_mult_41_n31) );
  XNOR2_X1 Stg_3_mult_41_U241 ( .A(H4[1]), .B(DIN_R_s_4__7_), .ZN(
        Stg_3_mult_41_n259) );
  XNOR2_X1 Stg_3_mult_41_U240 ( .A(H4[2]), .B(DIN_R_s_4__7_), .ZN(
        Stg_3_mult_41_n260) );
  OAI22_X1 Stg_3_mult_41_U239 ( .A1(Stg_3_mult_41_n259), .A2(
        Stg_3_mult_41_n258), .B1(Stg_3_mult_41_n256), .B2(Stg_3_mult_41_n260), 
        .ZN(Stg_3_mult_41_n269) );
  XNOR2_X1 Stg_3_mult_41_U238 ( .A(H4[5]), .B(DIN_R_s_4__3_), .ZN(
        Stg_3_mult_41_n232) );
  OAI22_X1 Stg_3_mult_41_U237 ( .A1(Stg_3_mult_41_n232), .A2(
        Stg_3_mult_41_n227), .B1(Stg_3_mult_41_n215), .B2(Stg_3_mult_41_n271), 
        .ZN(Stg_3_mult_41_n270) );
  OR2_X1 Stg_3_mult_41_U236 ( .A1(Stg_3_mult_41_n269), .A2(Stg_3_mult_41_n270), 
        .ZN(Stg_3_mult_41_n37) );
  XNOR2_X1 Stg_3_mult_41_U235 ( .A(Stg_3_mult_41_n269), .B(Stg_3_mult_41_n270), 
        .ZN(Stg_3_mult_41_n38) );
  OR3_X1 Stg_3_mult_41_U234 ( .A1(Stg_3_mult_41_n256), .A2(H4[0]), .A3(
        Stg_3_mult_41_n204), .ZN(Stg_3_mult_41_n268) );
  OAI21_X1 Stg_3_mult_41_U233 ( .B1(Stg_3_mult_41_n204), .B2(
        Stg_3_mult_41_n258), .A(Stg_3_mult_41_n268), .ZN(Stg_3_mult_41_n68) );
  OR3_X1 Stg_3_mult_41_U232 ( .A1(Stg_3_mult_41_n235), .A2(H4[0]), .A3(
        Stg_3_mult_41_n209), .ZN(Stg_3_mult_41_n267) );
  OAI21_X1 Stg_3_mult_41_U231 ( .B1(Stg_3_mult_41_n209), .B2(
        Stg_3_mult_41_n237), .A(Stg_3_mult_41_n267), .ZN(Stg_3_mult_41_n69) );
  OAI22_X1 Stg_3_mult_41_U230 ( .A1(Stg_3_mult_41_n266), .A2(
        Stg_3_mult_41_n256), .B1(Stg_3_mult_41_n258), .B2(Stg_3_mult_41_n266), 
        .ZN(Stg_3_mult_41_n265) );
  XNOR2_X1 Stg_3_mult_41_U229 ( .A(H4[5]), .B(DIN_R_s_4__7_), .ZN(
        Stg_3_mult_41_n263) );
  OAI22_X1 Stg_3_mult_41_U228 ( .A1(Stg_3_mult_41_n263), .A2(
        Stg_3_mult_41_n258), .B1(Stg_3_mult_41_n256), .B2(Stg_3_mult_41_n264), 
        .ZN(Stg_3_mult_41_n73) );
  XNOR2_X1 Stg_3_mult_41_U227 ( .A(H4[4]), .B(DIN_R_s_4__7_), .ZN(
        Stg_3_mult_41_n262) );
  OAI22_X1 Stg_3_mult_41_U226 ( .A1(Stg_3_mult_41_n262), .A2(
        Stg_3_mult_41_n258), .B1(Stg_3_mult_41_n256), .B2(Stg_3_mult_41_n263), 
        .ZN(Stg_3_mult_41_n74) );
  XNOR2_X1 Stg_3_mult_41_U225 ( .A(H4[3]), .B(DIN_R_s_4__7_), .ZN(
        Stg_3_mult_41_n261) );
  OAI22_X1 Stg_3_mult_41_U224 ( .A1(Stg_3_mult_41_n261), .A2(
        Stg_3_mult_41_n258), .B1(Stg_3_mult_41_n256), .B2(Stg_3_mult_41_n262), 
        .ZN(Stg_3_mult_41_n75) );
  OAI22_X1 Stg_3_mult_41_U223 ( .A1(Stg_3_mult_41_n260), .A2(
        Stg_3_mult_41_n258), .B1(Stg_3_mult_41_n256), .B2(Stg_3_mult_41_n261), 
        .ZN(Stg_3_mult_41_n76) );
  XNOR2_X1 Stg_3_mult_41_U222 ( .A(H4[0]), .B(DIN_R_s_4__7_), .ZN(
        Stg_3_mult_41_n257) );
  OAI22_X1 Stg_3_mult_41_U221 ( .A1(Stg_3_mult_41_n257), .A2(
        Stg_3_mult_41_n258), .B1(Stg_3_mult_41_n256), .B2(Stg_3_mult_41_n259), 
        .ZN(Stg_3_mult_41_n78) );
  NOR2_X1 Stg_3_mult_41_U220 ( .A1(Stg_3_mult_41_n256), .A2(Stg_3_mult_41_n219), .ZN(Stg_3_mult_41_n79) );
  OAI22_X1 Stg_3_mult_41_U219 ( .A1(H4[1]), .A2(Stg_3_mult_41_n221), .B1(
        Stg_3_mult_41_n255), .B2(Stg_3_mult_41_n217), .ZN(Stg_3_mult_41_n254)
         );
  NAND3_X1 Stg_3_mult_41_U218 ( .A1(Stg_3_mult_41_n253), .A2(
        Stg_3_mult_41_n219), .A3(DIN_R_s_4__3_), .ZN(Stg_3_mult_41_n252) );
  OAI21_X1 Stg_3_mult_41_U217 ( .B1(Stg_3_mult_41_n214), .B2(
        Stg_3_mult_41_n227), .A(Stg_3_mult_41_n252), .ZN(Stg_3_mult_41_n251)
         );
  AOI222_X1 Stg_3_mult_41_U216 ( .A1(Stg_3_mult_41_n197), .A2(
        Stg_3_mult_41_n56), .B1(Stg_3_mult_41_n251), .B2(Stg_3_mult_41_n197), 
        .C1(Stg_3_mult_41_n251), .C2(Stg_3_mult_41_n56), .ZN(
        Stg_3_mult_41_n250) );
  AOI222_X1 Stg_3_mult_41_U215 ( .A1(Stg_3_mult_41_n211), .A2(
        Stg_3_mult_41_n54), .B1(Stg_3_mult_41_n211), .B2(Stg_3_mult_41_n55), 
        .C1(Stg_3_mult_41_n55), .C2(Stg_3_mult_41_n54), .ZN(Stg_3_mult_41_n249) );
  AOI222_X1 Stg_3_mult_41_U214 ( .A1(Stg_3_mult_41_n210), .A2(
        Stg_3_mult_41_n50), .B1(Stg_3_mult_41_n210), .B2(Stg_3_mult_41_n53), 
        .C1(Stg_3_mult_41_n53), .C2(Stg_3_mult_41_n50), .ZN(Stg_3_mult_41_n248) );
  AOI222_X1 Stg_3_mult_41_U213 ( .A1(Stg_3_mult_41_n206), .A2(
        Stg_3_mult_41_n46), .B1(Stg_3_mult_41_n206), .B2(Stg_3_mult_41_n49), 
        .C1(Stg_3_mult_41_n49), .C2(Stg_3_mult_41_n46), .ZN(Stg_3_mult_41_n247) );
  AOI222_X1 Stg_3_mult_41_U212 ( .A1(Stg_3_mult_41_n205), .A2(
        Stg_3_mult_41_n40), .B1(Stg_3_mult_41_n205), .B2(Stg_3_mult_41_n45), 
        .C1(Stg_3_mult_41_n45), .C2(Stg_3_mult_41_n40), .ZN(Stg_3_mult_41_n246) );
  OAI22_X1 Stg_3_mult_41_U211 ( .A1(Stg_3_mult_41_n245), .A2(
        Stg_3_mult_41_n235), .B1(Stg_3_mult_41_n237), .B2(Stg_3_mult_41_n245), 
        .ZN(Stg_3_mult_41_n244) );
  XNOR2_X1 Stg_3_mult_41_U210 ( .A(H4[5]), .B(DIN_R_s_4__5_), .ZN(
        Stg_3_mult_41_n242) );
  OAI22_X1 Stg_3_mult_41_U209 ( .A1(Stg_3_mult_41_n242), .A2(
        Stg_3_mult_41_n237), .B1(Stg_3_mult_41_n235), .B2(Stg_3_mult_41_n243), 
        .ZN(Stg_3_mult_41_n81) );
  XNOR2_X1 Stg_3_mult_41_U208 ( .A(H4[4]), .B(DIN_R_s_4__5_), .ZN(
        Stg_3_mult_41_n241) );
  OAI22_X1 Stg_3_mult_41_U207 ( .A1(Stg_3_mult_41_n241), .A2(
        Stg_3_mult_41_n237), .B1(Stg_3_mult_41_n235), .B2(Stg_3_mult_41_n242), 
        .ZN(Stg_3_mult_41_n82) );
  XNOR2_X1 Stg_3_mult_41_U206 ( .A(H4[3]), .B(DIN_R_s_4__5_), .ZN(
        Stg_3_mult_41_n240) );
  OAI22_X1 Stg_3_mult_41_U205 ( .A1(Stg_3_mult_41_n240), .A2(
        Stg_3_mult_41_n237), .B1(Stg_3_mult_41_n235), .B2(Stg_3_mult_41_n241), 
        .ZN(Stg_3_mult_41_n83) );
  XNOR2_X1 Stg_3_mult_41_U204 ( .A(H4[2]), .B(DIN_R_s_4__5_), .ZN(
        Stg_3_mult_41_n239) );
  OAI22_X1 Stg_3_mult_41_U203 ( .A1(Stg_3_mult_41_n239), .A2(
        Stg_3_mult_41_n237), .B1(Stg_3_mult_41_n235), .B2(Stg_3_mult_41_n240), 
        .ZN(Stg_3_mult_41_n84) );
  XNOR2_X1 Stg_3_mult_41_U202 ( .A(H4[1]), .B(DIN_R_s_4__5_), .ZN(
        Stg_3_mult_41_n238) );
  OAI22_X1 Stg_3_mult_41_U201 ( .A1(Stg_3_mult_41_n238), .A2(
        Stg_3_mult_41_n237), .B1(Stg_3_mult_41_n235), .B2(Stg_3_mult_41_n239), 
        .ZN(Stg_3_mult_41_n85) );
  XNOR2_X1 Stg_3_mult_41_U200 ( .A(H4[0]), .B(DIN_R_s_4__5_), .ZN(
        Stg_3_mult_41_n236) );
  OAI22_X1 Stg_3_mult_41_U199 ( .A1(Stg_3_mult_41_n236), .A2(
        Stg_3_mult_41_n237), .B1(Stg_3_mult_41_n235), .B2(Stg_3_mult_41_n238), 
        .ZN(Stg_3_mult_41_n86) );
  NOR2_X1 Stg_3_mult_41_U198 ( .A1(Stg_3_mult_41_n235), .A2(Stg_3_mult_41_n219), .ZN(Stg_3_mult_41_n87) );
  OAI22_X1 Stg_3_mult_41_U197 ( .A1(Stg_3_mult_41_n234), .A2(
        Stg_3_mult_41_n215), .B1(Stg_3_mult_41_n227), .B2(Stg_3_mult_41_n234), 
        .ZN(Stg_3_mult_41_n233) );
  XNOR2_X1 Stg_3_mult_41_U196 ( .A(H4[4]), .B(DIN_R_s_4__3_), .ZN(
        Stg_3_mult_41_n231) );
  OAI22_X1 Stg_3_mult_41_U195 ( .A1(Stg_3_mult_41_n231), .A2(
        Stg_3_mult_41_n227), .B1(Stg_3_mult_41_n215), .B2(Stg_3_mult_41_n232), 
        .ZN(Stg_3_mult_41_n90) );
  XNOR2_X1 Stg_3_mult_41_U194 ( .A(H4[3]), .B(DIN_R_s_4__3_), .ZN(
        Stg_3_mult_41_n230) );
  OAI22_X1 Stg_3_mult_41_U193 ( .A1(Stg_3_mult_41_n230), .A2(
        Stg_3_mult_41_n227), .B1(Stg_3_mult_41_n215), .B2(Stg_3_mult_41_n231), 
        .ZN(Stg_3_mult_41_n91) );
  XNOR2_X1 Stg_3_mult_41_U192 ( .A(H4[2]), .B(DIN_R_s_4__3_), .ZN(
        Stg_3_mult_41_n229) );
  OAI22_X1 Stg_3_mult_41_U191 ( .A1(Stg_3_mult_41_n229), .A2(
        Stg_3_mult_41_n227), .B1(Stg_3_mult_41_n215), .B2(Stg_3_mult_41_n230), 
        .ZN(Stg_3_mult_41_n92) );
  XNOR2_X1 Stg_3_mult_41_U190 ( .A(H4[1]), .B(DIN_R_s_4__3_), .ZN(
        Stg_3_mult_41_n228) );
  OAI22_X1 Stg_3_mult_41_U189 ( .A1(Stg_3_mult_41_n228), .A2(
        Stg_3_mult_41_n227), .B1(Stg_3_mult_41_n215), .B2(Stg_3_mult_41_n229), 
        .ZN(Stg_3_mult_41_n93) );
  XNOR2_X1 Stg_3_mult_41_U188 ( .A(H4[0]), .B(DIN_R_s_4__3_), .ZN(
        Stg_3_mult_41_n226) );
  OAI22_X1 Stg_3_mult_41_U187 ( .A1(Stg_3_mult_41_n226), .A2(
        Stg_3_mult_41_n227), .B1(Stg_3_mult_41_n215), .B2(Stg_3_mult_41_n228), 
        .ZN(Stg_3_mult_41_n94) );
  XNOR2_X1 Stg_3_mult_41_U186 ( .A(H4[7]), .B(DIN_R_s_4__1_), .ZN(
        Stg_3_mult_41_n224) );
  OAI22_X1 Stg_3_mult_41_U185 ( .A1(Stg_3_mult_41_n217), .A2(
        Stg_3_mult_41_n224), .B1(Stg_3_mult_41_n221), .B2(Stg_3_mult_41_n224), 
        .ZN(Stg_3_mult_41_n225) );
  XNOR2_X1 Stg_3_mult_41_U184 ( .A(H4[6]), .B(DIN_R_s_4__1_), .ZN(
        Stg_3_mult_41_n223) );
  OAI22_X1 Stg_3_mult_41_U183 ( .A1(Stg_3_mult_41_n223), .A2(
        Stg_3_mult_41_n221), .B1(Stg_3_mult_41_n224), .B2(Stg_3_mult_41_n217), 
        .ZN(Stg_3_mult_41_n97) );
  XNOR2_X1 Stg_3_mult_41_U182 ( .A(H4[5]), .B(DIN_R_s_4__1_), .ZN(
        Stg_3_mult_41_n222) );
  OAI22_X1 Stg_3_mult_41_U181 ( .A1(Stg_3_mult_41_n222), .A2(
        Stg_3_mult_41_n221), .B1(Stg_3_mult_41_n223), .B2(Stg_3_mult_41_n217), 
        .ZN(Stg_3_mult_41_n98) );
  OAI22_X1 Stg_3_mult_41_U180 ( .A1(Stg_3_mult_41_n220), .A2(
        Stg_3_mult_41_n221), .B1(Stg_3_mult_41_n222), .B2(Stg_3_mult_41_n217), 
        .ZN(Stg_3_mult_41_n99) );
  INV_X1 Stg_3_mult_41_U179 ( .A(DIN_R_s_4__7_), .ZN(Stg_3_mult_41_n204) );
  INV_X1 Stg_3_mult_41_U178 ( .A(DIN_R_s_4__5_), .ZN(Stg_3_mult_41_n209) );
  INV_X1 Stg_3_mult_41_U177 ( .A(DIN_R_s_4__3_), .ZN(Stg_3_mult_41_n214) );
  INV_X1 Stg_3_mult_41_U176 ( .A(DIN_R_s_4__0_), .ZN(Stg_3_mult_41_n217) );
  XOR2_X1 Stg_3_mult_41_U175 ( .A(DIN_R_s_4__6_), .B(Stg_3_mult_41_n209), .Z(
        Stg_3_mult_41_n256) );
  XOR2_X1 Stg_3_mult_41_U174 ( .A(DIN_R_s_4__4_), .B(Stg_3_mult_41_n214), .Z(
        Stg_3_mult_41_n235) );
  INV_X1 Stg_3_mult_41_U173 ( .A(H4[1]), .ZN(Stg_3_mult_41_n218) );
  AND3_X1 Stg_3_mult_41_U172 ( .A1(Stg_3_mult_41_n254), .A2(Stg_3_mult_41_n218), .A3(DIN_R_s_4__1_), .ZN(Stg_3_mult_41_n199) );
  AND2_X1 Stg_3_mult_41_U171 ( .A1(Stg_3_mult_41_n253), .A2(Stg_3_mult_41_n254), .ZN(Stg_3_mult_41_n198) );
  MUX2_X1 Stg_3_mult_41_U170 ( .A(Stg_3_mult_41_n198), .B(Stg_3_mult_41_n199), 
        .S(Stg_3_mult_41_n219), .Z(Stg_3_mult_41_n197) );
  INV_X1 Stg_3_mult_41_U169 ( .A(H4[0]), .ZN(Stg_3_mult_41_n219) );
  INV_X1 Stg_3_mult_41_U168 ( .A(Stg_3_mult_41_n31), .ZN(Stg_3_mult_41_n212)
         );
  INV_X1 Stg_3_mult_41_U167 ( .A(Stg_3_mult_41_n233), .ZN(Stg_3_mult_41_n213)
         );
  INV_X1 Stg_3_mult_41_U166 ( .A(Stg_3_mult_41_n225), .ZN(Stg_3_mult_41_n216)
         );
  INV_X1 Stg_3_mult_41_U165 ( .A(Stg_3_mult_41_n21), .ZN(Stg_3_mult_41_n207)
         );
  INV_X1 Stg_3_mult_41_U164 ( .A(Stg_3_mult_41_n253), .ZN(Stg_3_mult_41_n215)
         );
  INV_X1 Stg_3_mult_41_U163 ( .A(Stg_3_mult_41_n244), .ZN(Stg_3_mult_41_n208)
         );
  INV_X1 Stg_3_mult_41_U162 ( .A(Stg_3_mult_41_n246), .ZN(Stg_3_mult_41_n201)
         );
  INV_X1 Stg_3_mult_41_U161 ( .A(Stg_3_mult_41_n265), .ZN(Stg_3_mult_41_n203)
         );
  INV_X1 Stg_3_mult_41_U160 ( .A(Stg_3_mult_41_n250), .ZN(Stg_3_mult_41_n211)
         );
  INV_X1 Stg_3_mult_41_U159 ( .A(Stg_3_mult_41_n249), .ZN(Stg_3_mult_41_n210)
         );
  INV_X1 Stg_3_mult_41_U158 ( .A(Stg_3_mult_41_n248), .ZN(Stg_3_mult_41_n206)
         );
  INV_X1 Stg_3_mult_41_U157 ( .A(Stg_3_mult_41_n247), .ZN(Stg_3_mult_41_n205)
         );
  INV_X1 Stg_3_mult_41_U156 ( .A(Stg_3_mult_41_n15), .ZN(Stg_3_mult_41_n202)
         );
  INV_X1 Stg_3_mult_41_U155 ( .A(Stg_3_mult_41_n1), .ZN(Stg_3_mult_partial_15_) );
  HA_X1 Stg_3_mult_41_U37 ( .A(Stg_3_mult_41_n94), .B(Stg_3_mult_41_n101), 
        .CO(Stg_3_mult_41_n55), .S(Stg_3_mult_41_n56) );
  FA_X1 Stg_3_mult_41_U36 ( .A(Stg_3_mult_41_n100), .B(Stg_3_mult_41_n87), 
        .CI(Stg_3_mult_41_n93), .CO(Stg_3_mult_41_n53), .S(Stg_3_mult_41_n54)
         );
  HA_X1 Stg_3_mult_41_U35 ( .A(Stg_3_mult_41_n69), .B(Stg_3_mult_41_n86), .CO(
        Stg_3_mult_41_n51), .S(Stg_3_mult_41_n52) );
  FA_X1 Stg_3_mult_41_U34 ( .A(Stg_3_mult_41_n92), .B(Stg_3_mult_41_n99), .CI(
        Stg_3_mult_41_n52), .CO(Stg_3_mult_41_n49), .S(Stg_3_mult_41_n50) );
  FA_X1 Stg_3_mult_41_U33 ( .A(Stg_3_mult_41_n98), .B(Stg_3_mult_41_n79), .CI(
        Stg_3_mult_41_n91), .CO(Stg_3_mult_41_n47), .S(Stg_3_mult_41_n48) );
  FA_X1 Stg_3_mult_41_U32 ( .A(Stg_3_mult_41_n51), .B(Stg_3_mult_41_n85), .CI(
        Stg_3_mult_41_n48), .CO(Stg_3_mult_41_n45), .S(Stg_3_mult_41_n46) );
  HA_X1 Stg_3_mult_41_U31 ( .A(Stg_3_mult_41_n68), .B(Stg_3_mult_41_n78), .CO(
        Stg_3_mult_41_n43), .S(Stg_3_mult_41_n44) );
  FA_X1 Stg_3_mult_41_U30 ( .A(Stg_3_mult_41_n84), .B(Stg_3_mult_41_n97), .CI(
        Stg_3_mult_41_n90), .CO(Stg_3_mult_41_n41), .S(Stg_3_mult_41_n42) );
  FA_X1 Stg_3_mult_41_U29 ( .A(Stg_3_mult_41_n47), .B(Stg_3_mult_41_n44), .CI(
        Stg_3_mult_41_n42), .CO(Stg_3_mult_41_n39), .S(Stg_3_mult_41_n40) );
  FA_X1 Stg_3_mult_41_U26 ( .A(Stg_3_mult_41_n216), .B(Stg_3_mult_41_n83), 
        .CI(Stg_3_mult_41_n43), .CO(Stg_3_mult_41_n35), .S(Stg_3_mult_41_n36)
         );
  FA_X1 Stg_3_mult_41_U25 ( .A(Stg_3_mult_41_n41), .B(Stg_3_mult_41_n38), .CI(
        Stg_3_mult_41_n36), .CO(Stg_3_mult_41_n33), .S(Stg_3_mult_41_n34) );
  FA_X1 Stg_3_mult_41_U23 ( .A(Stg_3_mult_41_n76), .B(Stg_3_mult_41_n82), .CI(
        Stg_3_mult_41_n212), .CO(Stg_3_mult_41_n29), .S(Stg_3_mult_41_n30) );
  FA_X1 Stg_3_mult_41_U22 ( .A(Stg_3_mult_41_n35), .B(Stg_3_mult_41_n37), .CI(
        Stg_3_mult_41_n30), .CO(Stg_3_mult_41_n27), .S(Stg_3_mult_41_n28) );
  FA_X1 Stg_3_mult_41_U21 ( .A(Stg_3_mult_41_n81), .B(Stg_3_mult_41_n31), .CI(
        Stg_3_mult_41_n213), .CO(Stg_3_mult_41_n25), .S(Stg_3_mult_41_n26) );
  FA_X1 Stg_3_mult_41_U20 ( .A(Stg_3_mult_41_n29), .B(Stg_3_mult_41_n75), .CI(
        Stg_3_mult_41_n26), .CO(Stg_3_mult_41_n23), .S(Stg_3_mult_41_n24) );
  FA_X1 Stg_3_mult_41_U18 ( .A(Stg_3_mult_41_n207), .B(Stg_3_mult_41_n74), 
        .CI(Stg_3_mult_41_n25), .CO(Stg_3_mult_41_n19), .S(Stg_3_mult_41_n20)
         );
  FA_X1 Stg_3_mult_41_U17 ( .A(Stg_3_mult_41_n73), .B(Stg_3_mult_41_n21), .CI(
        Stg_3_mult_41_n208), .CO(Stg_3_mult_41_n17), .S(Stg_3_mult_41_n18) );
  FA_X1 Stg_3_mult_41_U8 ( .A(Stg_3_mult_41_n34), .B(Stg_3_mult_41_n39), .CI(
        Stg_3_mult_41_n201), .CO(Stg_3_mult_41_n7), .S(Stg_3_mult_partial_8_)
         );
  FA_X1 Stg_3_mult_41_U7 ( .A(Stg_3_mult_41_n28), .B(Stg_3_mult_41_n33), .CI(
        Stg_3_mult_41_n7), .CO(Stg_3_mult_41_n6), .S(Stg_3_mult_partial_9_) );
  FA_X1 Stg_3_mult_41_U6 ( .A(Stg_3_mult_41_n24), .B(Stg_3_mult_41_n27), .CI(
        Stg_3_mult_41_n6), .CO(Stg_3_mult_41_n5), .S(Stg_3_mult_partial_10_)
         );
  FA_X1 Stg_3_mult_41_U5 ( .A(Stg_3_mult_41_n20), .B(Stg_3_mult_41_n23), .CI(
        Stg_3_mult_41_n5), .CO(Stg_3_mult_41_n4), .S(Stg_3_mult_partial_11_)
         );
  FA_X1 Stg_3_mult_41_U4 ( .A(Stg_3_mult_41_n19), .B(Stg_3_mult_41_n18), .CI(
        Stg_3_mult_41_n4), .CO(Stg_3_mult_41_n3), .S(Stg_3_mult_partial_12_)
         );
  FA_X1 Stg_3_mult_41_U3 ( .A(Stg_3_mult_41_n17), .B(Stg_3_mult_41_n202), .CI(
        Stg_3_mult_41_n3), .CO(Stg_3_mult_41_n2), .S(Stg_3_mult_partial_13_)
         );
  FA_X1 Stg_3_mult_41_U2 ( .A(Stg_3_mult_41_n203), .B(Stg_3_mult_41_n15), .CI(
        Stg_3_mult_41_n2), .CO(Stg_3_mult_41_n1), .S(Stg_3_mult_partial_14_)
         );
  XOR2_X1 Stg_3_add_42_U2 ( .A(DIN_A_s_3__0_), .B(Stg_3_mult_partial_8_), .Z(
        DIN_A_s_4__0_) );
  AND2_X1 Stg_3_add_42_U1 ( .A1(DIN_A_s_3__0_), .A2(Stg_3_mult_partial_8_), 
        .ZN(Stg_3_add_42_n1) );
  FA_X1 Stg_3_add_42_U1_1 ( .A(Stg_3_mult_partial_9_), .B(DIN_A_s_3__1_), .CI(
        Stg_3_add_42_n1), .CO(Stg_3_add_42_carry[2]), .S(DIN_A_s_4__1_) );
  FA_X1 Stg_3_add_42_U1_2 ( .A(Stg_3_mult_partial_10_), .B(DIN_A_s_3__2_), 
        .CI(Stg_3_add_42_carry[2]), .CO(Stg_3_add_42_carry[3]), .S(
        DIN_A_s_4__2_) );
  FA_X1 Stg_3_add_42_U1_3 ( .A(Stg_3_mult_partial_11_), .B(DIN_A_s_3__3_), 
        .CI(Stg_3_add_42_carry[3]), .CO(Stg_3_add_42_carry[4]), .S(
        DIN_A_s_4__3_) );
  FA_X1 Stg_3_add_42_U1_4 ( .A(Stg_3_mult_partial_12_), .B(DIN_A_s_3__4_), 
        .CI(Stg_3_add_42_carry[4]), .CO(Stg_3_add_42_carry[5]), .S(
        DIN_A_s_4__4_) );
  FA_X1 Stg_3_add_42_U1_5 ( .A(Stg_3_mult_partial_13_), .B(DIN_A_s_3__5_), 
        .CI(Stg_3_add_42_carry[5]), .CO(Stg_3_add_42_carry[6]), .S(
        DIN_A_s_4__5_) );
  FA_X1 Stg_3_add_42_U1_6 ( .A(Stg_3_mult_partial_14_), .B(DIN_A_s_3__6_), 
        .CI(Stg_3_add_42_carry[6]), .CO(Stg_3_add_42_carry[7]), .S(
        DIN_A_s_4__6_) );
  FA_X1 Stg_3_add_42_U1_7 ( .A(Stg_3_mult_partial_15_), .B(DIN_A_s_3__7_), 
        .CI(Stg_3_add_42_carry[7]), .S(DIN_A_s_4__7_) );
  INV_X1 Stg_4_REGn_regn_7_U6 ( .A(RST_n), .ZN(Stg_4_REGn_regn_7_n2) );
  INV_X1 Stg_4_REGn_regn_7_U5 ( .A(n5), .ZN(Stg_4_REGn_regn_7_n1) );
  AOI22_X1 Stg_4_REGn_regn_7_U4 ( .A1(n5), .A2(DIN_R_s_4__7_), .B1(
        DIN_R_s_5__7_), .B2(Stg_4_REGn_regn_7_n1), .ZN(Stg_4_REGn_regn_7_n6)
         );
  NOR2_X1 Stg_4_REGn_regn_7_U3 ( .A1(Stg_4_REGn_regn_7_n6), .A2(
        Stg_4_REGn_regn_7_n2), .ZN(Stg_4_REGn_regn_7_n5) );
  DFF_X1 Stg_4_REGn_regn_7_Q_reg ( .D(Stg_4_REGn_regn_7_n5), .CK(CLK), .Q(
        DIN_R_s_5__7_) );
  INV_X1 Stg_4_REGn_regn_6_U6 ( .A(RST_n), .ZN(Stg_4_REGn_regn_6_n2) );
  INV_X1 Stg_4_REGn_regn_6_U5 ( .A(n5), .ZN(Stg_4_REGn_regn_6_n1) );
  AOI22_X1 Stg_4_REGn_regn_6_U4 ( .A1(n5), .A2(DIN_R_s_4__6_), .B1(
        DIN_R_s_5__6_), .B2(Stg_4_REGn_regn_6_n1), .ZN(Stg_4_REGn_regn_6_n6)
         );
  NOR2_X1 Stg_4_REGn_regn_6_U3 ( .A1(Stg_4_REGn_regn_6_n6), .A2(
        Stg_4_REGn_regn_6_n2), .ZN(Stg_4_REGn_regn_6_n5) );
  DFF_X1 Stg_4_REGn_regn_6_Q_reg ( .D(Stg_4_REGn_regn_6_n5), .CK(CLK), .Q(
        DIN_R_s_5__6_) );
  INV_X1 Stg_4_REGn_regn_5_U6 ( .A(RST_n), .ZN(Stg_4_REGn_regn_5_n2) );
  INV_X1 Stg_4_REGn_regn_5_U5 ( .A(n5), .ZN(Stg_4_REGn_regn_5_n1) );
  AOI22_X1 Stg_4_REGn_regn_5_U4 ( .A1(n5), .A2(DIN_R_s_4__5_), .B1(
        DIN_R_s_5__5_), .B2(Stg_4_REGn_regn_5_n1), .ZN(Stg_4_REGn_regn_5_n6)
         );
  NOR2_X1 Stg_4_REGn_regn_5_U3 ( .A1(Stg_4_REGn_regn_5_n6), .A2(
        Stg_4_REGn_regn_5_n2), .ZN(Stg_4_REGn_regn_5_n5) );
  DFF_X1 Stg_4_REGn_regn_5_Q_reg ( .D(Stg_4_REGn_regn_5_n5), .CK(CLK), .Q(
        DIN_R_s_5__5_) );
  INV_X1 Stg_4_REGn_regn_4_U6 ( .A(RST_n), .ZN(Stg_4_REGn_regn_4_n2) );
  INV_X1 Stg_4_REGn_regn_4_U5 ( .A(n5), .ZN(Stg_4_REGn_regn_4_n1) );
  AOI22_X1 Stg_4_REGn_regn_4_U4 ( .A1(n5), .A2(DIN_R_s_4__4_), .B1(
        DIN_R_s_5__4_), .B2(Stg_4_REGn_regn_4_n1), .ZN(Stg_4_REGn_regn_4_n6)
         );
  NOR2_X1 Stg_4_REGn_regn_4_U3 ( .A1(Stg_4_REGn_regn_4_n6), .A2(
        Stg_4_REGn_regn_4_n2), .ZN(Stg_4_REGn_regn_4_n5) );
  DFF_X1 Stg_4_REGn_regn_4_Q_reg ( .D(Stg_4_REGn_regn_4_n5), .CK(CLK), .Q(
        DIN_R_s_5__4_) );
  INV_X1 Stg_4_REGn_regn_3_U6 ( .A(RST_n), .ZN(Stg_4_REGn_regn_3_n2) );
  INV_X1 Stg_4_REGn_regn_3_U5 ( .A(n5), .ZN(Stg_4_REGn_regn_3_n1) );
  AOI22_X1 Stg_4_REGn_regn_3_U4 ( .A1(n5), .A2(DIN_R_s_4__3_), .B1(
        DIN_R_s_5__3_), .B2(Stg_4_REGn_regn_3_n1), .ZN(Stg_4_REGn_regn_3_n6)
         );
  NOR2_X1 Stg_4_REGn_regn_3_U3 ( .A1(Stg_4_REGn_regn_3_n6), .A2(
        Stg_4_REGn_regn_3_n2), .ZN(Stg_4_REGn_regn_3_n5) );
  DFF_X1 Stg_4_REGn_regn_3_Q_reg ( .D(Stg_4_REGn_regn_3_n5), .CK(CLK), .Q(
        DIN_R_s_5__3_) );
  INV_X1 Stg_4_REGn_regn_2_U6 ( .A(RST_n), .ZN(Stg_4_REGn_regn_2_n2) );
  INV_X1 Stg_4_REGn_regn_2_U5 ( .A(n5), .ZN(Stg_4_REGn_regn_2_n1) );
  AOI22_X1 Stg_4_REGn_regn_2_U4 ( .A1(n5), .A2(DIN_R_s_4__2_), .B1(
        DIN_R_s_5__2_), .B2(Stg_4_REGn_regn_2_n1), .ZN(Stg_4_REGn_regn_2_n6)
         );
  NOR2_X1 Stg_4_REGn_regn_2_U3 ( .A1(Stg_4_REGn_regn_2_n6), .A2(
        Stg_4_REGn_regn_2_n2), .ZN(Stg_4_REGn_regn_2_n5) );
  DFF_X1 Stg_4_REGn_regn_2_Q_reg ( .D(Stg_4_REGn_regn_2_n5), .CK(CLK), .Q(
        DIN_R_s_5__2_) );
  INV_X1 Stg_4_REGn_regn_1_U6 ( .A(RST_n), .ZN(Stg_4_REGn_regn_1_n2) );
  INV_X1 Stg_4_REGn_regn_1_U5 ( .A(n5), .ZN(Stg_4_REGn_regn_1_n1) );
  AOI22_X1 Stg_4_REGn_regn_1_U4 ( .A1(n5), .A2(DIN_R_s_4__1_), .B1(
        DIN_R_s_5__1_), .B2(Stg_4_REGn_regn_1_n1), .ZN(Stg_4_REGn_regn_1_n6)
         );
  NOR2_X1 Stg_4_REGn_regn_1_U3 ( .A1(Stg_4_REGn_regn_1_n6), .A2(
        Stg_4_REGn_regn_1_n2), .ZN(Stg_4_REGn_regn_1_n5) );
  DFF_X1 Stg_4_REGn_regn_1_Q_reg ( .D(Stg_4_REGn_regn_1_n5), .CK(CLK), .Q(
        DIN_R_s_5__1_) );
  INV_X1 Stg_4_REGn_regn_0_U6 ( .A(RST_n), .ZN(Stg_4_REGn_regn_0_n2) );
  INV_X1 Stg_4_REGn_regn_0_U5 ( .A(n5), .ZN(Stg_4_REGn_regn_0_n1) );
  AOI22_X1 Stg_4_REGn_regn_0_U4 ( .A1(n5), .A2(DIN_R_s_4__0_), .B1(
        DIN_R_s_5__0_), .B2(Stg_4_REGn_regn_0_n1), .ZN(Stg_4_REGn_regn_0_n6)
         );
  NOR2_X1 Stg_4_REGn_regn_0_U3 ( .A1(Stg_4_REGn_regn_0_n6), .A2(
        Stg_4_REGn_regn_0_n2), .ZN(Stg_4_REGn_regn_0_n5) );
  DFF_X1 Stg_4_REGn_regn_0_Q_reg ( .D(Stg_4_REGn_regn_0_n5), .CK(CLK), .Q(
        DIN_R_s_5__0_) );
  XNOR2_X1 Stg_4_mult_41_U263 ( .A(H5[3]), .B(DIN_R_s_5__1_), .ZN(
        Stg_4_mult_41_n275) );
  NAND2_X1 Stg_4_mult_41_U262 ( .A1(DIN_R_s_5__1_), .A2(Stg_4_mult_41_n217), 
        .ZN(Stg_4_mult_41_n221) );
  XNOR2_X1 Stg_4_mult_41_U261 ( .A(H5[4]), .B(DIN_R_s_5__1_), .ZN(
        Stg_4_mult_41_n220) );
  OAI22_X1 Stg_4_mult_41_U260 ( .A1(Stg_4_mult_41_n275), .A2(
        Stg_4_mult_41_n221), .B1(Stg_4_mult_41_n220), .B2(Stg_4_mult_41_n217), 
        .ZN(Stg_4_mult_41_n100) );
  XNOR2_X1 Stg_4_mult_41_U259 ( .A(H5[2]), .B(DIN_R_s_5__1_), .ZN(
        Stg_4_mult_41_n255) );
  OAI22_X1 Stg_4_mult_41_U258 ( .A1(Stg_4_mult_41_n255), .A2(
        Stg_4_mult_41_n221), .B1(Stg_4_mult_41_n275), .B2(Stg_4_mult_41_n217), 
        .ZN(Stg_4_mult_41_n101) );
  XNOR2_X1 Stg_4_mult_41_U257 ( .A(H5[6]), .B(DIN_R_s_5__7_), .ZN(
        Stg_4_mult_41_n264) );
  XNOR2_X1 Stg_4_mult_41_U256 ( .A(Stg_4_mult_41_n204), .B(DIN_R_s_5__6_), 
        .ZN(Stg_4_mult_41_n274) );
  NAND2_X1 Stg_4_mult_41_U255 ( .A1(Stg_4_mult_41_n256), .A2(
        Stg_4_mult_41_n274), .ZN(Stg_4_mult_41_n258) );
  XNOR2_X1 Stg_4_mult_41_U254 ( .A(H5[7]), .B(DIN_R_s_5__7_), .ZN(
        Stg_4_mult_41_n266) );
  OAI22_X1 Stg_4_mult_41_U253 ( .A1(Stg_4_mult_41_n264), .A2(
        Stg_4_mult_41_n258), .B1(Stg_4_mult_41_n256), .B2(Stg_4_mult_41_n266), 
        .ZN(Stg_4_mult_41_n15) );
  XNOR2_X1 Stg_4_mult_41_U252 ( .A(H5[6]), .B(DIN_R_s_5__5_), .ZN(
        Stg_4_mult_41_n243) );
  XNOR2_X1 Stg_4_mult_41_U251 ( .A(Stg_4_mult_41_n209), .B(DIN_R_s_5__4_), 
        .ZN(Stg_4_mult_41_n273) );
  NAND2_X1 Stg_4_mult_41_U250 ( .A1(Stg_4_mult_41_n235), .A2(
        Stg_4_mult_41_n273), .ZN(Stg_4_mult_41_n237) );
  XNOR2_X1 Stg_4_mult_41_U249 ( .A(H5[7]), .B(DIN_R_s_5__5_), .ZN(
        Stg_4_mult_41_n245) );
  OAI22_X1 Stg_4_mult_41_U248 ( .A1(Stg_4_mult_41_n243), .A2(
        Stg_4_mult_41_n237), .B1(Stg_4_mult_41_n235), .B2(Stg_4_mult_41_n245), 
        .ZN(Stg_4_mult_41_n21) );
  XNOR2_X1 Stg_4_mult_41_U247 ( .A(H5[6]), .B(DIN_R_s_5__3_), .ZN(
        Stg_4_mult_41_n271) );
  XOR2_X1 Stg_4_mult_41_U246 ( .A(DIN_R_s_5__2_), .B(DIN_R_s_5__1_), .Z(
        Stg_4_mult_41_n253) );
  XNOR2_X1 Stg_4_mult_41_U245 ( .A(Stg_4_mult_41_n214), .B(DIN_R_s_5__2_), 
        .ZN(Stg_4_mult_41_n272) );
  NAND2_X1 Stg_4_mult_41_U244 ( .A1(Stg_4_mult_41_n215), .A2(
        Stg_4_mult_41_n272), .ZN(Stg_4_mult_41_n227) );
  XNOR2_X1 Stg_4_mult_41_U243 ( .A(H5[7]), .B(DIN_R_s_5__3_), .ZN(
        Stg_4_mult_41_n234) );
  OAI22_X1 Stg_4_mult_41_U242 ( .A1(Stg_4_mult_41_n271), .A2(
        Stg_4_mult_41_n227), .B1(Stg_4_mult_41_n215), .B2(Stg_4_mult_41_n234), 
        .ZN(Stg_4_mult_41_n31) );
  XNOR2_X1 Stg_4_mult_41_U241 ( .A(H5[1]), .B(DIN_R_s_5__7_), .ZN(
        Stg_4_mult_41_n259) );
  XNOR2_X1 Stg_4_mult_41_U240 ( .A(H5[2]), .B(DIN_R_s_5__7_), .ZN(
        Stg_4_mult_41_n260) );
  OAI22_X1 Stg_4_mult_41_U239 ( .A1(Stg_4_mult_41_n259), .A2(
        Stg_4_mult_41_n258), .B1(Stg_4_mult_41_n256), .B2(Stg_4_mult_41_n260), 
        .ZN(Stg_4_mult_41_n269) );
  XNOR2_X1 Stg_4_mult_41_U238 ( .A(H5[5]), .B(DIN_R_s_5__3_), .ZN(
        Stg_4_mult_41_n232) );
  OAI22_X1 Stg_4_mult_41_U237 ( .A1(Stg_4_mult_41_n232), .A2(
        Stg_4_mult_41_n227), .B1(Stg_4_mult_41_n215), .B2(Stg_4_mult_41_n271), 
        .ZN(Stg_4_mult_41_n270) );
  OR2_X1 Stg_4_mult_41_U236 ( .A1(Stg_4_mult_41_n269), .A2(Stg_4_mult_41_n270), 
        .ZN(Stg_4_mult_41_n37) );
  XNOR2_X1 Stg_4_mult_41_U235 ( .A(Stg_4_mult_41_n269), .B(Stg_4_mult_41_n270), 
        .ZN(Stg_4_mult_41_n38) );
  OR3_X1 Stg_4_mult_41_U234 ( .A1(Stg_4_mult_41_n256), .A2(H5[0]), .A3(
        Stg_4_mult_41_n204), .ZN(Stg_4_mult_41_n268) );
  OAI21_X1 Stg_4_mult_41_U233 ( .B1(Stg_4_mult_41_n204), .B2(
        Stg_4_mult_41_n258), .A(Stg_4_mult_41_n268), .ZN(Stg_4_mult_41_n68) );
  OR3_X1 Stg_4_mult_41_U232 ( .A1(Stg_4_mult_41_n235), .A2(H5[0]), .A3(
        Stg_4_mult_41_n209), .ZN(Stg_4_mult_41_n267) );
  OAI21_X1 Stg_4_mult_41_U231 ( .B1(Stg_4_mult_41_n209), .B2(
        Stg_4_mult_41_n237), .A(Stg_4_mult_41_n267), .ZN(Stg_4_mult_41_n69) );
  OAI22_X1 Stg_4_mult_41_U230 ( .A1(Stg_4_mult_41_n266), .A2(
        Stg_4_mult_41_n256), .B1(Stg_4_mult_41_n258), .B2(Stg_4_mult_41_n266), 
        .ZN(Stg_4_mult_41_n265) );
  XNOR2_X1 Stg_4_mult_41_U229 ( .A(H5[5]), .B(DIN_R_s_5__7_), .ZN(
        Stg_4_mult_41_n263) );
  OAI22_X1 Stg_4_mult_41_U228 ( .A1(Stg_4_mult_41_n263), .A2(
        Stg_4_mult_41_n258), .B1(Stg_4_mult_41_n256), .B2(Stg_4_mult_41_n264), 
        .ZN(Stg_4_mult_41_n73) );
  XNOR2_X1 Stg_4_mult_41_U227 ( .A(H5[4]), .B(DIN_R_s_5__7_), .ZN(
        Stg_4_mult_41_n262) );
  OAI22_X1 Stg_4_mult_41_U226 ( .A1(Stg_4_mult_41_n262), .A2(
        Stg_4_mult_41_n258), .B1(Stg_4_mult_41_n256), .B2(Stg_4_mult_41_n263), 
        .ZN(Stg_4_mult_41_n74) );
  XNOR2_X1 Stg_4_mult_41_U225 ( .A(H5[3]), .B(DIN_R_s_5__7_), .ZN(
        Stg_4_mult_41_n261) );
  OAI22_X1 Stg_4_mult_41_U224 ( .A1(Stg_4_mult_41_n261), .A2(
        Stg_4_mult_41_n258), .B1(Stg_4_mult_41_n256), .B2(Stg_4_mult_41_n262), 
        .ZN(Stg_4_mult_41_n75) );
  OAI22_X1 Stg_4_mult_41_U223 ( .A1(Stg_4_mult_41_n260), .A2(
        Stg_4_mult_41_n258), .B1(Stg_4_mult_41_n256), .B2(Stg_4_mult_41_n261), 
        .ZN(Stg_4_mult_41_n76) );
  XNOR2_X1 Stg_4_mult_41_U222 ( .A(H5[0]), .B(DIN_R_s_5__7_), .ZN(
        Stg_4_mult_41_n257) );
  OAI22_X1 Stg_4_mult_41_U221 ( .A1(Stg_4_mult_41_n257), .A2(
        Stg_4_mult_41_n258), .B1(Stg_4_mult_41_n256), .B2(Stg_4_mult_41_n259), 
        .ZN(Stg_4_mult_41_n78) );
  NOR2_X1 Stg_4_mult_41_U220 ( .A1(Stg_4_mult_41_n256), .A2(Stg_4_mult_41_n219), .ZN(Stg_4_mult_41_n79) );
  OAI22_X1 Stg_4_mult_41_U219 ( .A1(H5[1]), .A2(Stg_4_mult_41_n221), .B1(
        Stg_4_mult_41_n255), .B2(Stg_4_mult_41_n217), .ZN(Stg_4_mult_41_n254)
         );
  NAND3_X1 Stg_4_mult_41_U218 ( .A1(Stg_4_mult_41_n253), .A2(
        Stg_4_mult_41_n219), .A3(DIN_R_s_5__3_), .ZN(Stg_4_mult_41_n252) );
  OAI21_X1 Stg_4_mult_41_U217 ( .B1(Stg_4_mult_41_n214), .B2(
        Stg_4_mult_41_n227), .A(Stg_4_mult_41_n252), .ZN(Stg_4_mult_41_n251)
         );
  AOI222_X1 Stg_4_mult_41_U216 ( .A1(Stg_4_mult_41_n197), .A2(
        Stg_4_mult_41_n56), .B1(Stg_4_mult_41_n251), .B2(Stg_4_mult_41_n197), 
        .C1(Stg_4_mult_41_n251), .C2(Stg_4_mult_41_n56), .ZN(
        Stg_4_mult_41_n250) );
  AOI222_X1 Stg_4_mult_41_U215 ( .A1(Stg_4_mult_41_n211), .A2(
        Stg_4_mult_41_n54), .B1(Stg_4_mult_41_n211), .B2(Stg_4_mult_41_n55), 
        .C1(Stg_4_mult_41_n55), .C2(Stg_4_mult_41_n54), .ZN(Stg_4_mult_41_n249) );
  AOI222_X1 Stg_4_mult_41_U214 ( .A1(Stg_4_mult_41_n210), .A2(
        Stg_4_mult_41_n50), .B1(Stg_4_mult_41_n210), .B2(Stg_4_mult_41_n53), 
        .C1(Stg_4_mult_41_n53), .C2(Stg_4_mult_41_n50), .ZN(Stg_4_mult_41_n248) );
  AOI222_X1 Stg_4_mult_41_U213 ( .A1(Stg_4_mult_41_n206), .A2(
        Stg_4_mult_41_n46), .B1(Stg_4_mult_41_n206), .B2(Stg_4_mult_41_n49), 
        .C1(Stg_4_mult_41_n49), .C2(Stg_4_mult_41_n46), .ZN(Stg_4_mult_41_n247) );
  AOI222_X1 Stg_4_mult_41_U212 ( .A1(Stg_4_mult_41_n205), .A2(
        Stg_4_mult_41_n40), .B1(Stg_4_mult_41_n205), .B2(Stg_4_mult_41_n45), 
        .C1(Stg_4_mult_41_n45), .C2(Stg_4_mult_41_n40), .ZN(Stg_4_mult_41_n246) );
  OAI22_X1 Stg_4_mult_41_U211 ( .A1(Stg_4_mult_41_n245), .A2(
        Stg_4_mult_41_n235), .B1(Stg_4_mult_41_n237), .B2(Stg_4_mult_41_n245), 
        .ZN(Stg_4_mult_41_n244) );
  XNOR2_X1 Stg_4_mult_41_U210 ( .A(H5[5]), .B(DIN_R_s_5__5_), .ZN(
        Stg_4_mult_41_n242) );
  OAI22_X1 Stg_4_mult_41_U209 ( .A1(Stg_4_mult_41_n242), .A2(
        Stg_4_mult_41_n237), .B1(Stg_4_mult_41_n235), .B2(Stg_4_mult_41_n243), 
        .ZN(Stg_4_mult_41_n81) );
  XNOR2_X1 Stg_4_mult_41_U208 ( .A(H5[4]), .B(DIN_R_s_5__5_), .ZN(
        Stg_4_mult_41_n241) );
  OAI22_X1 Stg_4_mult_41_U207 ( .A1(Stg_4_mult_41_n241), .A2(
        Stg_4_mult_41_n237), .B1(Stg_4_mult_41_n235), .B2(Stg_4_mult_41_n242), 
        .ZN(Stg_4_mult_41_n82) );
  XNOR2_X1 Stg_4_mult_41_U206 ( .A(H5[3]), .B(DIN_R_s_5__5_), .ZN(
        Stg_4_mult_41_n240) );
  OAI22_X1 Stg_4_mult_41_U205 ( .A1(Stg_4_mult_41_n240), .A2(
        Stg_4_mult_41_n237), .B1(Stg_4_mult_41_n235), .B2(Stg_4_mult_41_n241), 
        .ZN(Stg_4_mult_41_n83) );
  XNOR2_X1 Stg_4_mult_41_U204 ( .A(H5[2]), .B(DIN_R_s_5__5_), .ZN(
        Stg_4_mult_41_n239) );
  OAI22_X1 Stg_4_mult_41_U203 ( .A1(Stg_4_mult_41_n239), .A2(
        Stg_4_mult_41_n237), .B1(Stg_4_mult_41_n235), .B2(Stg_4_mult_41_n240), 
        .ZN(Stg_4_mult_41_n84) );
  XNOR2_X1 Stg_4_mult_41_U202 ( .A(H5[1]), .B(DIN_R_s_5__5_), .ZN(
        Stg_4_mult_41_n238) );
  OAI22_X1 Stg_4_mult_41_U201 ( .A1(Stg_4_mult_41_n238), .A2(
        Stg_4_mult_41_n237), .B1(Stg_4_mult_41_n235), .B2(Stg_4_mult_41_n239), 
        .ZN(Stg_4_mult_41_n85) );
  XNOR2_X1 Stg_4_mult_41_U200 ( .A(H5[0]), .B(DIN_R_s_5__5_), .ZN(
        Stg_4_mult_41_n236) );
  OAI22_X1 Stg_4_mult_41_U199 ( .A1(Stg_4_mult_41_n236), .A2(
        Stg_4_mult_41_n237), .B1(Stg_4_mult_41_n235), .B2(Stg_4_mult_41_n238), 
        .ZN(Stg_4_mult_41_n86) );
  NOR2_X1 Stg_4_mult_41_U198 ( .A1(Stg_4_mult_41_n235), .A2(Stg_4_mult_41_n219), .ZN(Stg_4_mult_41_n87) );
  OAI22_X1 Stg_4_mult_41_U197 ( .A1(Stg_4_mult_41_n234), .A2(
        Stg_4_mult_41_n215), .B1(Stg_4_mult_41_n227), .B2(Stg_4_mult_41_n234), 
        .ZN(Stg_4_mult_41_n233) );
  XNOR2_X1 Stg_4_mult_41_U196 ( .A(H5[4]), .B(DIN_R_s_5__3_), .ZN(
        Stg_4_mult_41_n231) );
  OAI22_X1 Stg_4_mult_41_U195 ( .A1(Stg_4_mult_41_n231), .A2(
        Stg_4_mult_41_n227), .B1(Stg_4_mult_41_n215), .B2(Stg_4_mult_41_n232), 
        .ZN(Stg_4_mult_41_n90) );
  XNOR2_X1 Stg_4_mult_41_U194 ( .A(H5[3]), .B(DIN_R_s_5__3_), .ZN(
        Stg_4_mult_41_n230) );
  OAI22_X1 Stg_4_mult_41_U193 ( .A1(Stg_4_mult_41_n230), .A2(
        Stg_4_mult_41_n227), .B1(Stg_4_mult_41_n215), .B2(Stg_4_mult_41_n231), 
        .ZN(Stg_4_mult_41_n91) );
  XNOR2_X1 Stg_4_mult_41_U192 ( .A(H5[2]), .B(DIN_R_s_5__3_), .ZN(
        Stg_4_mult_41_n229) );
  OAI22_X1 Stg_4_mult_41_U191 ( .A1(Stg_4_mult_41_n229), .A2(
        Stg_4_mult_41_n227), .B1(Stg_4_mult_41_n215), .B2(Stg_4_mult_41_n230), 
        .ZN(Stg_4_mult_41_n92) );
  XNOR2_X1 Stg_4_mult_41_U190 ( .A(H5[1]), .B(DIN_R_s_5__3_), .ZN(
        Stg_4_mult_41_n228) );
  OAI22_X1 Stg_4_mult_41_U189 ( .A1(Stg_4_mult_41_n228), .A2(
        Stg_4_mult_41_n227), .B1(Stg_4_mult_41_n215), .B2(Stg_4_mult_41_n229), 
        .ZN(Stg_4_mult_41_n93) );
  XNOR2_X1 Stg_4_mult_41_U188 ( .A(H5[0]), .B(DIN_R_s_5__3_), .ZN(
        Stg_4_mult_41_n226) );
  OAI22_X1 Stg_4_mult_41_U187 ( .A1(Stg_4_mult_41_n226), .A2(
        Stg_4_mult_41_n227), .B1(Stg_4_mult_41_n215), .B2(Stg_4_mult_41_n228), 
        .ZN(Stg_4_mult_41_n94) );
  XNOR2_X1 Stg_4_mult_41_U186 ( .A(H5[7]), .B(DIN_R_s_5__1_), .ZN(
        Stg_4_mult_41_n224) );
  OAI22_X1 Stg_4_mult_41_U185 ( .A1(Stg_4_mult_41_n217), .A2(
        Stg_4_mult_41_n224), .B1(Stg_4_mult_41_n221), .B2(Stg_4_mult_41_n224), 
        .ZN(Stg_4_mult_41_n225) );
  XNOR2_X1 Stg_4_mult_41_U184 ( .A(H5[6]), .B(DIN_R_s_5__1_), .ZN(
        Stg_4_mult_41_n223) );
  OAI22_X1 Stg_4_mult_41_U183 ( .A1(Stg_4_mult_41_n223), .A2(
        Stg_4_mult_41_n221), .B1(Stg_4_mult_41_n224), .B2(Stg_4_mult_41_n217), 
        .ZN(Stg_4_mult_41_n97) );
  XNOR2_X1 Stg_4_mult_41_U182 ( .A(H5[5]), .B(DIN_R_s_5__1_), .ZN(
        Stg_4_mult_41_n222) );
  OAI22_X1 Stg_4_mult_41_U181 ( .A1(Stg_4_mult_41_n222), .A2(
        Stg_4_mult_41_n221), .B1(Stg_4_mult_41_n223), .B2(Stg_4_mult_41_n217), 
        .ZN(Stg_4_mult_41_n98) );
  OAI22_X1 Stg_4_mult_41_U180 ( .A1(Stg_4_mult_41_n220), .A2(
        Stg_4_mult_41_n221), .B1(Stg_4_mult_41_n222), .B2(Stg_4_mult_41_n217), 
        .ZN(Stg_4_mult_41_n99) );
  INV_X1 Stg_4_mult_41_U179 ( .A(H5[1]), .ZN(Stg_4_mult_41_n218) );
  AND3_X1 Stg_4_mult_41_U178 ( .A1(Stg_4_mult_41_n254), .A2(Stg_4_mult_41_n218), .A3(DIN_R_s_5__1_), .ZN(Stg_4_mult_41_n199) );
  AND2_X1 Stg_4_mult_41_U177 ( .A1(Stg_4_mult_41_n253), .A2(Stg_4_mult_41_n254), .ZN(Stg_4_mult_41_n198) );
  MUX2_X1 Stg_4_mult_41_U176 ( .A(Stg_4_mult_41_n198), .B(Stg_4_mult_41_n199), 
        .S(Stg_4_mult_41_n219), .Z(Stg_4_mult_41_n197) );
  INV_X1 Stg_4_mult_41_U175 ( .A(H5[0]), .ZN(Stg_4_mult_41_n219) );
  INV_X1 Stg_4_mult_41_U174 ( .A(DIN_R_s_5__7_), .ZN(Stg_4_mult_41_n204) );
  INV_X1 Stg_4_mult_41_U173 ( .A(DIN_R_s_5__5_), .ZN(Stg_4_mult_41_n209) );
  INV_X1 Stg_4_mult_41_U172 ( .A(DIN_R_s_5__3_), .ZN(Stg_4_mult_41_n214) );
  INV_X1 Stg_4_mult_41_U171 ( .A(DIN_R_s_5__0_), .ZN(Stg_4_mult_41_n217) );
  XOR2_X1 Stg_4_mult_41_U170 ( .A(DIN_R_s_5__6_), .B(Stg_4_mult_41_n209), .Z(
        Stg_4_mult_41_n256) );
  XOR2_X1 Stg_4_mult_41_U169 ( .A(DIN_R_s_5__4_), .B(Stg_4_mult_41_n214), .Z(
        Stg_4_mult_41_n235) );
  INV_X1 Stg_4_mult_41_U168 ( .A(Stg_4_mult_41_n246), .ZN(Stg_4_mult_41_n201)
         );
  INV_X1 Stg_4_mult_41_U167 ( .A(Stg_4_mult_41_n31), .ZN(Stg_4_mult_41_n212)
         );
  INV_X1 Stg_4_mult_41_U166 ( .A(Stg_4_mult_41_n233), .ZN(Stg_4_mult_41_n213)
         );
  INV_X1 Stg_4_mult_41_U165 ( .A(Stg_4_mult_41_n225), .ZN(Stg_4_mult_41_n216)
         );
  INV_X1 Stg_4_mult_41_U164 ( .A(Stg_4_mult_41_n244), .ZN(Stg_4_mult_41_n208)
         );
  INV_X1 Stg_4_mult_41_U163 ( .A(Stg_4_mult_41_n265), .ZN(Stg_4_mult_41_n203)
         );
  INV_X1 Stg_4_mult_41_U162 ( .A(Stg_4_mult_41_n21), .ZN(Stg_4_mult_41_n207)
         );
  INV_X1 Stg_4_mult_41_U161 ( .A(Stg_4_mult_41_n253), .ZN(Stg_4_mult_41_n215)
         );
  INV_X1 Stg_4_mult_41_U160 ( .A(Stg_4_mult_41_n250), .ZN(Stg_4_mult_41_n211)
         );
  INV_X1 Stg_4_mult_41_U159 ( .A(Stg_4_mult_41_n249), .ZN(Stg_4_mult_41_n210)
         );
  INV_X1 Stg_4_mult_41_U158 ( .A(Stg_4_mult_41_n248), .ZN(Stg_4_mult_41_n206)
         );
  INV_X1 Stg_4_mult_41_U157 ( .A(Stg_4_mult_41_n247), .ZN(Stg_4_mult_41_n205)
         );
  INV_X1 Stg_4_mult_41_U156 ( .A(Stg_4_mult_41_n15), .ZN(Stg_4_mult_41_n202)
         );
  INV_X1 Stg_4_mult_41_U155 ( .A(Stg_4_mult_41_n1), .ZN(Stg_4_mult_partial_15_) );
  HA_X1 Stg_4_mult_41_U37 ( .A(Stg_4_mult_41_n94), .B(Stg_4_mult_41_n101), 
        .CO(Stg_4_mult_41_n55), .S(Stg_4_mult_41_n56) );
  FA_X1 Stg_4_mult_41_U36 ( .A(Stg_4_mult_41_n100), .B(Stg_4_mult_41_n87), 
        .CI(Stg_4_mult_41_n93), .CO(Stg_4_mult_41_n53), .S(Stg_4_mult_41_n54)
         );
  HA_X1 Stg_4_mult_41_U35 ( .A(Stg_4_mult_41_n69), .B(Stg_4_mult_41_n86), .CO(
        Stg_4_mult_41_n51), .S(Stg_4_mult_41_n52) );
  FA_X1 Stg_4_mult_41_U34 ( .A(Stg_4_mult_41_n92), .B(Stg_4_mult_41_n99), .CI(
        Stg_4_mult_41_n52), .CO(Stg_4_mult_41_n49), .S(Stg_4_mult_41_n50) );
  FA_X1 Stg_4_mult_41_U33 ( .A(Stg_4_mult_41_n98), .B(Stg_4_mult_41_n79), .CI(
        Stg_4_mult_41_n91), .CO(Stg_4_mult_41_n47), .S(Stg_4_mult_41_n48) );
  FA_X1 Stg_4_mult_41_U32 ( .A(Stg_4_mult_41_n51), .B(Stg_4_mult_41_n85), .CI(
        Stg_4_mult_41_n48), .CO(Stg_4_mult_41_n45), .S(Stg_4_mult_41_n46) );
  HA_X1 Stg_4_mult_41_U31 ( .A(Stg_4_mult_41_n68), .B(Stg_4_mult_41_n78), .CO(
        Stg_4_mult_41_n43), .S(Stg_4_mult_41_n44) );
  FA_X1 Stg_4_mult_41_U30 ( .A(Stg_4_mult_41_n84), .B(Stg_4_mult_41_n97), .CI(
        Stg_4_mult_41_n90), .CO(Stg_4_mult_41_n41), .S(Stg_4_mult_41_n42) );
  FA_X1 Stg_4_mult_41_U29 ( .A(Stg_4_mult_41_n47), .B(Stg_4_mult_41_n44), .CI(
        Stg_4_mult_41_n42), .CO(Stg_4_mult_41_n39), .S(Stg_4_mult_41_n40) );
  FA_X1 Stg_4_mult_41_U26 ( .A(Stg_4_mult_41_n216), .B(Stg_4_mult_41_n83), 
        .CI(Stg_4_mult_41_n43), .CO(Stg_4_mult_41_n35), .S(Stg_4_mult_41_n36)
         );
  FA_X1 Stg_4_mult_41_U25 ( .A(Stg_4_mult_41_n41), .B(Stg_4_mult_41_n38), .CI(
        Stg_4_mult_41_n36), .CO(Stg_4_mult_41_n33), .S(Stg_4_mult_41_n34) );
  FA_X1 Stg_4_mult_41_U23 ( .A(Stg_4_mult_41_n76), .B(Stg_4_mult_41_n82), .CI(
        Stg_4_mult_41_n212), .CO(Stg_4_mult_41_n29), .S(Stg_4_mult_41_n30) );
  FA_X1 Stg_4_mult_41_U22 ( .A(Stg_4_mult_41_n35), .B(Stg_4_mult_41_n37), .CI(
        Stg_4_mult_41_n30), .CO(Stg_4_mult_41_n27), .S(Stg_4_mult_41_n28) );
  FA_X1 Stg_4_mult_41_U21 ( .A(Stg_4_mult_41_n81), .B(Stg_4_mult_41_n31), .CI(
        Stg_4_mult_41_n213), .CO(Stg_4_mult_41_n25), .S(Stg_4_mult_41_n26) );
  FA_X1 Stg_4_mult_41_U20 ( .A(Stg_4_mult_41_n29), .B(Stg_4_mult_41_n75), .CI(
        Stg_4_mult_41_n26), .CO(Stg_4_mult_41_n23), .S(Stg_4_mult_41_n24) );
  FA_X1 Stg_4_mult_41_U18 ( .A(Stg_4_mult_41_n207), .B(Stg_4_mult_41_n74), 
        .CI(Stg_4_mult_41_n25), .CO(Stg_4_mult_41_n19), .S(Stg_4_mult_41_n20)
         );
  FA_X1 Stg_4_mult_41_U17 ( .A(Stg_4_mult_41_n73), .B(Stg_4_mult_41_n21), .CI(
        Stg_4_mult_41_n208), .CO(Stg_4_mult_41_n17), .S(Stg_4_mult_41_n18) );
  FA_X1 Stg_4_mult_41_U8 ( .A(Stg_4_mult_41_n34), .B(Stg_4_mult_41_n39), .CI(
        Stg_4_mult_41_n201), .CO(Stg_4_mult_41_n7), .S(Stg_4_mult_partial_8_)
         );
  FA_X1 Stg_4_mult_41_U7 ( .A(Stg_4_mult_41_n28), .B(Stg_4_mult_41_n33), .CI(
        Stg_4_mult_41_n7), .CO(Stg_4_mult_41_n6), .S(Stg_4_mult_partial_9_) );
  FA_X1 Stg_4_mult_41_U6 ( .A(Stg_4_mult_41_n24), .B(Stg_4_mult_41_n27), .CI(
        Stg_4_mult_41_n6), .CO(Stg_4_mult_41_n5), .S(Stg_4_mult_partial_10_)
         );
  FA_X1 Stg_4_mult_41_U5 ( .A(Stg_4_mult_41_n20), .B(Stg_4_mult_41_n23), .CI(
        Stg_4_mult_41_n5), .CO(Stg_4_mult_41_n4), .S(Stg_4_mult_partial_11_)
         );
  FA_X1 Stg_4_mult_41_U4 ( .A(Stg_4_mult_41_n19), .B(Stg_4_mult_41_n18), .CI(
        Stg_4_mult_41_n4), .CO(Stg_4_mult_41_n3), .S(Stg_4_mult_partial_12_)
         );
  FA_X1 Stg_4_mult_41_U3 ( .A(Stg_4_mult_41_n17), .B(Stg_4_mult_41_n202), .CI(
        Stg_4_mult_41_n3), .CO(Stg_4_mult_41_n2), .S(Stg_4_mult_partial_13_)
         );
  FA_X1 Stg_4_mult_41_U2 ( .A(Stg_4_mult_41_n203), .B(Stg_4_mult_41_n15), .CI(
        Stg_4_mult_41_n2), .CO(Stg_4_mult_41_n1), .S(Stg_4_mult_partial_14_)
         );
  XOR2_X1 Stg_4_add_42_U2 ( .A(DIN_A_s_4__0_), .B(Stg_4_mult_partial_8_), .Z(
        DIN_A_s_5__0_) );
  AND2_X1 Stg_4_add_42_U1 ( .A1(DIN_A_s_4__0_), .A2(Stg_4_mult_partial_8_), 
        .ZN(Stg_4_add_42_n1) );
  FA_X1 Stg_4_add_42_U1_1 ( .A(Stg_4_mult_partial_9_), .B(DIN_A_s_4__1_), .CI(
        Stg_4_add_42_n1), .CO(Stg_4_add_42_carry[2]), .S(DIN_A_s_5__1_) );
  FA_X1 Stg_4_add_42_U1_2 ( .A(Stg_4_mult_partial_10_), .B(DIN_A_s_4__2_), 
        .CI(Stg_4_add_42_carry[2]), .CO(Stg_4_add_42_carry[3]), .S(
        DIN_A_s_5__2_) );
  FA_X1 Stg_4_add_42_U1_3 ( .A(Stg_4_mult_partial_11_), .B(DIN_A_s_4__3_), 
        .CI(Stg_4_add_42_carry[3]), .CO(Stg_4_add_42_carry[4]), .S(
        DIN_A_s_5__3_) );
  FA_X1 Stg_4_add_42_U1_4 ( .A(Stg_4_mult_partial_12_), .B(DIN_A_s_4__4_), 
        .CI(Stg_4_add_42_carry[4]), .CO(Stg_4_add_42_carry[5]), .S(
        DIN_A_s_5__4_) );
  FA_X1 Stg_4_add_42_U1_5 ( .A(Stg_4_mult_partial_13_), .B(DIN_A_s_4__5_), 
        .CI(Stg_4_add_42_carry[5]), .CO(Stg_4_add_42_carry[6]), .S(
        DIN_A_s_5__5_) );
  FA_X1 Stg_4_add_42_U1_6 ( .A(Stg_4_mult_partial_14_), .B(DIN_A_s_4__6_), 
        .CI(Stg_4_add_42_carry[6]), .CO(Stg_4_add_42_carry[7]), .S(
        DIN_A_s_5__6_) );
  FA_X1 Stg_4_add_42_U1_7 ( .A(Stg_4_mult_partial_15_), .B(DIN_A_s_4__7_), 
        .CI(Stg_4_add_42_carry[7]), .S(DIN_A_s_5__7_) );
  INV_X1 Stg_5_REGn_regn_7_U6 ( .A(RST_n), .ZN(Stg_5_REGn_regn_7_n2) );
  INV_X1 Stg_5_REGn_regn_7_U5 ( .A(n5), .ZN(Stg_5_REGn_regn_7_n1) );
  AOI22_X1 Stg_5_REGn_regn_7_U4 ( .A1(n5), .A2(DIN_R_s_5__7_), .B1(
        DIN_R_s_6__7_), .B2(Stg_5_REGn_regn_7_n1), .ZN(Stg_5_REGn_regn_7_n6)
         );
  NOR2_X1 Stg_5_REGn_regn_7_U3 ( .A1(Stg_5_REGn_regn_7_n6), .A2(
        Stg_5_REGn_regn_7_n2), .ZN(Stg_5_REGn_regn_7_n5) );
  DFF_X1 Stg_5_REGn_regn_7_Q_reg ( .D(Stg_5_REGn_regn_7_n5), .CK(CLK), .Q(
        DIN_R_s_6__7_) );
  INV_X1 Stg_5_REGn_regn_6_U6 ( .A(RST_n), .ZN(Stg_5_REGn_regn_6_n2) );
  INV_X1 Stg_5_REGn_regn_6_U5 ( .A(n5), .ZN(Stg_5_REGn_regn_6_n1) );
  AOI22_X1 Stg_5_REGn_regn_6_U4 ( .A1(n5), .A2(DIN_R_s_5__6_), .B1(
        DIN_R_s_6__6_), .B2(Stg_5_REGn_regn_6_n1), .ZN(Stg_5_REGn_regn_6_n6)
         );
  NOR2_X1 Stg_5_REGn_regn_6_U3 ( .A1(Stg_5_REGn_regn_6_n6), .A2(
        Stg_5_REGn_regn_6_n2), .ZN(Stg_5_REGn_regn_6_n5) );
  DFF_X1 Stg_5_REGn_regn_6_Q_reg ( .D(Stg_5_REGn_regn_6_n5), .CK(CLK), .Q(
        DIN_R_s_6__6_) );
  INV_X1 Stg_5_REGn_regn_5_U6 ( .A(RST_n), .ZN(Stg_5_REGn_regn_5_n2) );
  INV_X1 Stg_5_REGn_regn_5_U5 ( .A(n5), .ZN(Stg_5_REGn_regn_5_n1) );
  AOI22_X1 Stg_5_REGn_regn_5_U4 ( .A1(n5), .A2(DIN_R_s_5__5_), .B1(
        DIN_R_s_6__5_), .B2(Stg_5_REGn_regn_5_n1), .ZN(Stg_5_REGn_regn_5_n6)
         );
  NOR2_X1 Stg_5_REGn_regn_5_U3 ( .A1(Stg_5_REGn_regn_5_n6), .A2(
        Stg_5_REGn_regn_5_n2), .ZN(Stg_5_REGn_regn_5_n5) );
  DFF_X1 Stg_5_REGn_regn_5_Q_reg ( .D(Stg_5_REGn_regn_5_n5), .CK(CLK), .Q(
        DIN_R_s_6__5_) );
  INV_X1 Stg_5_REGn_regn_4_U6 ( .A(RST_n), .ZN(Stg_5_REGn_regn_4_n2) );
  INV_X1 Stg_5_REGn_regn_4_U5 ( .A(n5), .ZN(Stg_5_REGn_regn_4_n1) );
  AOI22_X1 Stg_5_REGn_regn_4_U4 ( .A1(n5), .A2(DIN_R_s_5__4_), .B1(
        DIN_R_s_6__4_), .B2(Stg_5_REGn_regn_4_n1), .ZN(Stg_5_REGn_regn_4_n6)
         );
  NOR2_X1 Stg_5_REGn_regn_4_U3 ( .A1(Stg_5_REGn_regn_4_n6), .A2(
        Stg_5_REGn_regn_4_n2), .ZN(Stg_5_REGn_regn_4_n5) );
  DFF_X1 Stg_5_REGn_regn_4_Q_reg ( .D(Stg_5_REGn_regn_4_n5), .CK(CLK), .Q(
        DIN_R_s_6__4_) );
  INV_X1 Stg_5_REGn_regn_3_U6 ( .A(RST_n), .ZN(Stg_5_REGn_regn_3_n2) );
  INV_X1 Stg_5_REGn_regn_3_U5 ( .A(n5), .ZN(Stg_5_REGn_regn_3_n1) );
  AOI22_X1 Stg_5_REGn_regn_3_U4 ( .A1(n5), .A2(DIN_R_s_5__3_), .B1(
        DIN_R_s_6__3_), .B2(Stg_5_REGn_regn_3_n1), .ZN(Stg_5_REGn_regn_3_n6)
         );
  NOR2_X1 Stg_5_REGn_regn_3_U3 ( .A1(Stg_5_REGn_regn_3_n6), .A2(
        Stg_5_REGn_regn_3_n2), .ZN(Stg_5_REGn_regn_3_n5) );
  DFF_X1 Stg_5_REGn_regn_3_Q_reg ( .D(Stg_5_REGn_regn_3_n5), .CK(CLK), .Q(
        DIN_R_s_6__3_) );
  INV_X1 Stg_5_REGn_regn_2_U6 ( .A(RST_n), .ZN(Stg_5_REGn_regn_2_n2) );
  INV_X1 Stg_5_REGn_regn_2_U5 ( .A(n5), .ZN(Stg_5_REGn_regn_2_n1) );
  AOI22_X1 Stg_5_REGn_regn_2_U4 ( .A1(n5), .A2(DIN_R_s_5__2_), .B1(
        DIN_R_s_6__2_), .B2(Stg_5_REGn_regn_2_n1), .ZN(Stg_5_REGn_regn_2_n6)
         );
  NOR2_X1 Stg_5_REGn_regn_2_U3 ( .A1(Stg_5_REGn_regn_2_n6), .A2(
        Stg_5_REGn_regn_2_n2), .ZN(Stg_5_REGn_regn_2_n5) );
  DFF_X1 Stg_5_REGn_regn_2_Q_reg ( .D(Stg_5_REGn_regn_2_n5), .CK(CLK), .Q(
        DIN_R_s_6__2_) );
  INV_X1 Stg_5_REGn_regn_1_U6 ( .A(RST_n), .ZN(Stg_5_REGn_regn_1_n2) );
  INV_X1 Stg_5_REGn_regn_1_U5 ( .A(n5), .ZN(Stg_5_REGn_regn_1_n1) );
  AOI22_X1 Stg_5_REGn_regn_1_U4 ( .A1(n5), .A2(DIN_R_s_5__1_), .B1(
        DIN_R_s_6__1_), .B2(Stg_5_REGn_regn_1_n1), .ZN(Stg_5_REGn_regn_1_n6)
         );
  NOR2_X1 Stg_5_REGn_regn_1_U3 ( .A1(Stg_5_REGn_regn_1_n6), .A2(
        Stg_5_REGn_regn_1_n2), .ZN(Stg_5_REGn_regn_1_n5) );
  DFF_X1 Stg_5_REGn_regn_1_Q_reg ( .D(Stg_5_REGn_regn_1_n5), .CK(CLK), .Q(
        DIN_R_s_6__1_) );
  INV_X1 Stg_5_REGn_regn_0_U6 ( .A(RST_n), .ZN(Stg_5_REGn_regn_0_n2) );
  INV_X1 Stg_5_REGn_regn_0_U5 ( .A(n5), .ZN(Stg_5_REGn_regn_0_n1) );
  AOI22_X1 Stg_5_REGn_regn_0_U4 ( .A1(n5), .A2(DIN_R_s_5__0_), .B1(
        DIN_R_s_6__0_), .B2(Stg_5_REGn_regn_0_n1), .ZN(Stg_5_REGn_regn_0_n6)
         );
  NOR2_X1 Stg_5_REGn_regn_0_U3 ( .A1(Stg_5_REGn_regn_0_n6), .A2(
        Stg_5_REGn_regn_0_n2), .ZN(Stg_5_REGn_regn_0_n5) );
  DFF_X1 Stg_5_REGn_regn_0_Q_reg ( .D(Stg_5_REGn_regn_0_n5), .CK(CLK), .Q(
        DIN_R_s_6__0_) );
  XNOR2_X1 Stg_5_mult_41_U263 ( .A(H6[3]), .B(DIN_R_s_6__1_), .ZN(
        Stg_5_mult_41_n275) );
  NAND2_X1 Stg_5_mult_41_U262 ( .A1(DIN_R_s_6__1_), .A2(Stg_5_mult_41_n217), 
        .ZN(Stg_5_mult_41_n221) );
  XNOR2_X1 Stg_5_mult_41_U261 ( .A(H6[4]), .B(DIN_R_s_6__1_), .ZN(
        Stg_5_mult_41_n220) );
  OAI22_X1 Stg_5_mult_41_U260 ( .A1(Stg_5_mult_41_n275), .A2(
        Stg_5_mult_41_n221), .B1(Stg_5_mult_41_n220), .B2(Stg_5_mult_41_n217), 
        .ZN(Stg_5_mult_41_n100) );
  XNOR2_X1 Stg_5_mult_41_U259 ( .A(H6[2]), .B(DIN_R_s_6__1_), .ZN(
        Stg_5_mult_41_n255) );
  OAI22_X1 Stg_5_mult_41_U258 ( .A1(Stg_5_mult_41_n255), .A2(
        Stg_5_mult_41_n221), .B1(Stg_5_mult_41_n275), .B2(Stg_5_mult_41_n217), 
        .ZN(Stg_5_mult_41_n101) );
  XNOR2_X1 Stg_5_mult_41_U257 ( .A(H6[6]), .B(DIN_R_s_6__7_), .ZN(
        Stg_5_mult_41_n264) );
  XNOR2_X1 Stg_5_mult_41_U256 ( .A(Stg_5_mult_41_n204), .B(DIN_R_s_6__6_), 
        .ZN(Stg_5_mult_41_n274) );
  NAND2_X1 Stg_5_mult_41_U255 ( .A1(Stg_5_mult_41_n256), .A2(
        Stg_5_mult_41_n274), .ZN(Stg_5_mult_41_n258) );
  XNOR2_X1 Stg_5_mult_41_U254 ( .A(H6[7]), .B(DIN_R_s_6__7_), .ZN(
        Stg_5_mult_41_n266) );
  OAI22_X1 Stg_5_mult_41_U253 ( .A1(Stg_5_mult_41_n264), .A2(
        Stg_5_mult_41_n258), .B1(Stg_5_mult_41_n256), .B2(Stg_5_mult_41_n266), 
        .ZN(Stg_5_mult_41_n15) );
  XNOR2_X1 Stg_5_mult_41_U252 ( .A(H6[6]), .B(DIN_R_s_6__5_), .ZN(
        Stg_5_mult_41_n243) );
  XNOR2_X1 Stg_5_mult_41_U251 ( .A(Stg_5_mult_41_n209), .B(DIN_R_s_6__4_), 
        .ZN(Stg_5_mult_41_n273) );
  NAND2_X1 Stg_5_mult_41_U250 ( .A1(Stg_5_mult_41_n235), .A2(
        Stg_5_mult_41_n273), .ZN(Stg_5_mult_41_n237) );
  XNOR2_X1 Stg_5_mult_41_U249 ( .A(H6[7]), .B(DIN_R_s_6__5_), .ZN(
        Stg_5_mult_41_n245) );
  OAI22_X1 Stg_5_mult_41_U248 ( .A1(Stg_5_mult_41_n243), .A2(
        Stg_5_mult_41_n237), .B1(Stg_5_mult_41_n235), .B2(Stg_5_mult_41_n245), 
        .ZN(Stg_5_mult_41_n21) );
  XNOR2_X1 Stg_5_mult_41_U247 ( .A(H6[6]), .B(DIN_R_s_6__3_), .ZN(
        Stg_5_mult_41_n271) );
  XOR2_X1 Stg_5_mult_41_U246 ( .A(DIN_R_s_6__2_), .B(DIN_R_s_6__1_), .Z(
        Stg_5_mult_41_n253) );
  XNOR2_X1 Stg_5_mult_41_U245 ( .A(Stg_5_mult_41_n214), .B(DIN_R_s_6__2_), 
        .ZN(Stg_5_mult_41_n272) );
  NAND2_X1 Stg_5_mult_41_U244 ( .A1(Stg_5_mult_41_n215), .A2(
        Stg_5_mult_41_n272), .ZN(Stg_5_mult_41_n227) );
  XNOR2_X1 Stg_5_mult_41_U243 ( .A(H6[7]), .B(DIN_R_s_6__3_), .ZN(
        Stg_5_mult_41_n234) );
  OAI22_X1 Stg_5_mult_41_U242 ( .A1(Stg_5_mult_41_n271), .A2(
        Stg_5_mult_41_n227), .B1(Stg_5_mult_41_n215), .B2(Stg_5_mult_41_n234), 
        .ZN(Stg_5_mult_41_n31) );
  XNOR2_X1 Stg_5_mult_41_U241 ( .A(H6[1]), .B(DIN_R_s_6__7_), .ZN(
        Stg_5_mult_41_n259) );
  XNOR2_X1 Stg_5_mult_41_U240 ( .A(H6[2]), .B(DIN_R_s_6__7_), .ZN(
        Stg_5_mult_41_n260) );
  OAI22_X1 Stg_5_mult_41_U239 ( .A1(Stg_5_mult_41_n259), .A2(
        Stg_5_mult_41_n258), .B1(Stg_5_mult_41_n256), .B2(Stg_5_mult_41_n260), 
        .ZN(Stg_5_mult_41_n269) );
  XNOR2_X1 Stg_5_mult_41_U238 ( .A(H6[5]), .B(DIN_R_s_6__3_), .ZN(
        Stg_5_mult_41_n232) );
  OAI22_X1 Stg_5_mult_41_U237 ( .A1(Stg_5_mult_41_n232), .A2(
        Stg_5_mult_41_n227), .B1(Stg_5_mult_41_n215), .B2(Stg_5_mult_41_n271), 
        .ZN(Stg_5_mult_41_n270) );
  OR2_X1 Stg_5_mult_41_U236 ( .A1(Stg_5_mult_41_n269), .A2(Stg_5_mult_41_n270), 
        .ZN(Stg_5_mult_41_n37) );
  XNOR2_X1 Stg_5_mult_41_U235 ( .A(Stg_5_mult_41_n269), .B(Stg_5_mult_41_n270), 
        .ZN(Stg_5_mult_41_n38) );
  OR3_X1 Stg_5_mult_41_U234 ( .A1(Stg_5_mult_41_n256), .A2(H6[0]), .A3(
        Stg_5_mult_41_n204), .ZN(Stg_5_mult_41_n268) );
  OAI21_X1 Stg_5_mult_41_U233 ( .B1(Stg_5_mult_41_n204), .B2(
        Stg_5_mult_41_n258), .A(Stg_5_mult_41_n268), .ZN(Stg_5_mult_41_n68) );
  OR3_X1 Stg_5_mult_41_U232 ( .A1(Stg_5_mult_41_n235), .A2(H6[0]), .A3(
        Stg_5_mult_41_n209), .ZN(Stg_5_mult_41_n267) );
  OAI21_X1 Stg_5_mult_41_U231 ( .B1(Stg_5_mult_41_n209), .B2(
        Stg_5_mult_41_n237), .A(Stg_5_mult_41_n267), .ZN(Stg_5_mult_41_n69) );
  OAI22_X1 Stg_5_mult_41_U230 ( .A1(Stg_5_mult_41_n266), .A2(
        Stg_5_mult_41_n256), .B1(Stg_5_mult_41_n258), .B2(Stg_5_mult_41_n266), 
        .ZN(Stg_5_mult_41_n265) );
  XNOR2_X1 Stg_5_mult_41_U229 ( .A(H6[5]), .B(DIN_R_s_6__7_), .ZN(
        Stg_5_mult_41_n263) );
  OAI22_X1 Stg_5_mult_41_U228 ( .A1(Stg_5_mult_41_n263), .A2(
        Stg_5_mult_41_n258), .B1(Stg_5_mult_41_n256), .B2(Stg_5_mult_41_n264), 
        .ZN(Stg_5_mult_41_n73) );
  XNOR2_X1 Stg_5_mult_41_U227 ( .A(H6[4]), .B(DIN_R_s_6__7_), .ZN(
        Stg_5_mult_41_n262) );
  OAI22_X1 Stg_5_mult_41_U226 ( .A1(Stg_5_mult_41_n262), .A2(
        Stg_5_mult_41_n258), .B1(Stg_5_mult_41_n256), .B2(Stg_5_mult_41_n263), 
        .ZN(Stg_5_mult_41_n74) );
  XNOR2_X1 Stg_5_mult_41_U225 ( .A(H6[3]), .B(DIN_R_s_6__7_), .ZN(
        Stg_5_mult_41_n261) );
  OAI22_X1 Stg_5_mult_41_U224 ( .A1(Stg_5_mult_41_n261), .A2(
        Stg_5_mult_41_n258), .B1(Stg_5_mult_41_n256), .B2(Stg_5_mult_41_n262), 
        .ZN(Stg_5_mult_41_n75) );
  OAI22_X1 Stg_5_mult_41_U223 ( .A1(Stg_5_mult_41_n260), .A2(
        Stg_5_mult_41_n258), .B1(Stg_5_mult_41_n256), .B2(Stg_5_mult_41_n261), 
        .ZN(Stg_5_mult_41_n76) );
  XNOR2_X1 Stg_5_mult_41_U222 ( .A(H6[0]), .B(DIN_R_s_6__7_), .ZN(
        Stg_5_mult_41_n257) );
  OAI22_X1 Stg_5_mult_41_U221 ( .A1(Stg_5_mult_41_n257), .A2(
        Stg_5_mult_41_n258), .B1(Stg_5_mult_41_n256), .B2(Stg_5_mult_41_n259), 
        .ZN(Stg_5_mult_41_n78) );
  NOR2_X1 Stg_5_mult_41_U220 ( .A1(Stg_5_mult_41_n256), .A2(Stg_5_mult_41_n219), .ZN(Stg_5_mult_41_n79) );
  OAI22_X1 Stg_5_mult_41_U219 ( .A1(H6[1]), .A2(Stg_5_mult_41_n221), .B1(
        Stg_5_mult_41_n255), .B2(Stg_5_mult_41_n217), .ZN(Stg_5_mult_41_n254)
         );
  NAND3_X1 Stg_5_mult_41_U218 ( .A1(Stg_5_mult_41_n253), .A2(
        Stg_5_mult_41_n219), .A3(DIN_R_s_6__3_), .ZN(Stg_5_mult_41_n252) );
  OAI21_X1 Stg_5_mult_41_U217 ( .B1(Stg_5_mult_41_n214), .B2(
        Stg_5_mult_41_n227), .A(Stg_5_mult_41_n252), .ZN(Stg_5_mult_41_n251)
         );
  AOI222_X1 Stg_5_mult_41_U216 ( .A1(Stg_5_mult_41_n197), .A2(
        Stg_5_mult_41_n56), .B1(Stg_5_mult_41_n251), .B2(Stg_5_mult_41_n197), 
        .C1(Stg_5_mult_41_n251), .C2(Stg_5_mult_41_n56), .ZN(
        Stg_5_mult_41_n250) );
  AOI222_X1 Stg_5_mult_41_U215 ( .A1(Stg_5_mult_41_n211), .A2(
        Stg_5_mult_41_n54), .B1(Stg_5_mult_41_n211), .B2(Stg_5_mult_41_n55), 
        .C1(Stg_5_mult_41_n55), .C2(Stg_5_mult_41_n54), .ZN(Stg_5_mult_41_n249) );
  AOI222_X1 Stg_5_mult_41_U214 ( .A1(Stg_5_mult_41_n210), .A2(
        Stg_5_mult_41_n50), .B1(Stg_5_mult_41_n210), .B2(Stg_5_mult_41_n53), 
        .C1(Stg_5_mult_41_n53), .C2(Stg_5_mult_41_n50), .ZN(Stg_5_mult_41_n248) );
  AOI222_X1 Stg_5_mult_41_U213 ( .A1(Stg_5_mult_41_n206), .A2(
        Stg_5_mult_41_n46), .B1(Stg_5_mult_41_n206), .B2(Stg_5_mult_41_n49), 
        .C1(Stg_5_mult_41_n49), .C2(Stg_5_mult_41_n46), .ZN(Stg_5_mult_41_n247) );
  AOI222_X1 Stg_5_mult_41_U212 ( .A1(Stg_5_mult_41_n205), .A2(
        Stg_5_mult_41_n40), .B1(Stg_5_mult_41_n205), .B2(Stg_5_mult_41_n45), 
        .C1(Stg_5_mult_41_n45), .C2(Stg_5_mult_41_n40), .ZN(Stg_5_mult_41_n246) );
  OAI22_X1 Stg_5_mult_41_U211 ( .A1(Stg_5_mult_41_n245), .A2(
        Stg_5_mult_41_n235), .B1(Stg_5_mult_41_n237), .B2(Stg_5_mult_41_n245), 
        .ZN(Stg_5_mult_41_n244) );
  XNOR2_X1 Stg_5_mult_41_U210 ( .A(H6[5]), .B(DIN_R_s_6__5_), .ZN(
        Stg_5_mult_41_n242) );
  OAI22_X1 Stg_5_mult_41_U209 ( .A1(Stg_5_mult_41_n242), .A2(
        Stg_5_mult_41_n237), .B1(Stg_5_mult_41_n235), .B2(Stg_5_mult_41_n243), 
        .ZN(Stg_5_mult_41_n81) );
  XNOR2_X1 Stg_5_mult_41_U208 ( .A(H6[4]), .B(DIN_R_s_6__5_), .ZN(
        Stg_5_mult_41_n241) );
  OAI22_X1 Stg_5_mult_41_U207 ( .A1(Stg_5_mult_41_n241), .A2(
        Stg_5_mult_41_n237), .B1(Stg_5_mult_41_n235), .B2(Stg_5_mult_41_n242), 
        .ZN(Stg_5_mult_41_n82) );
  XNOR2_X1 Stg_5_mult_41_U206 ( .A(H6[3]), .B(DIN_R_s_6__5_), .ZN(
        Stg_5_mult_41_n240) );
  OAI22_X1 Stg_5_mult_41_U205 ( .A1(Stg_5_mult_41_n240), .A2(
        Stg_5_mult_41_n237), .B1(Stg_5_mult_41_n235), .B2(Stg_5_mult_41_n241), 
        .ZN(Stg_5_mult_41_n83) );
  XNOR2_X1 Stg_5_mult_41_U204 ( .A(H6[2]), .B(DIN_R_s_6__5_), .ZN(
        Stg_5_mult_41_n239) );
  OAI22_X1 Stg_5_mult_41_U203 ( .A1(Stg_5_mult_41_n239), .A2(
        Stg_5_mult_41_n237), .B1(Stg_5_mult_41_n235), .B2(Stg_5_mult_41_n240), 
        .ZN(Stg_5_mult_41_n84) );
  XNOR2_X1 Stg_5_mult_41_U202 ( .A(H6[1]), .B(DIN_R_s_6__5_), .ZN(
        Stg_5_mult_41_n238) );
  OAI22_X1 Stg_5_mult_41_U201 ( .A1(Stg_5_mult_41_n238), .A2(
        Stg_5_mult_41_n237), .B1(Stg_5_mult_41_n235), .B2(Stg_5_mult_41_n239), 
        .ZN(Stg_5_mult_41_n85) );
  XNOR2_X1 Stg_5_mult_41_U200 ( .A(H6[0]), .B(DIN_R_s_6__5_), .ZN(
        Stg_5_mult_41_n236) );
  OAI22_X1 Stg_5_mult_41_U199 ( .A1(Stg_5_mult_41_n236), .A2(
        Stg_5_mult_41_n237), .B1(Stg_5_mult_41_n235), .B2(Stg_5_mult_41_n238), 
        .ZN(Stg_5_mult_41_n86) );
  NOR2_X1 Stg_5_mult_41_U198 ( .A1(Stg_5_mult_41_n235), .A2(Stg_5_mult_41_n219), .ZN(Stg_5_mult_41_n87) );
  OAI22_X1 Stg_5_mult_41_U197 ( .A1(Stg_5_mult_41_n234), .A2(
        Stg_5_mult_41_n215), .B1(Stg_5_mult_41_n227), .B2(Stg_5_mult_41_n234), 
        .ZN(Stg_5_mult_41_n233) );
  XNOR2_X1 Stg_5_mult_41_U196 ( .A(H6[4]), .B(DIN_R_s_6__3_), .ZN(
        Stg_5_mult_41_n231) );
  OAI22_X1 Stg_5_mult_41_U195 ( .A1(Stg_5_mult_41_n231), .A2(
        Stg_5_mult_41_n227), .B1(Stg_5_mult_41_n215), .B2(Stg_5_mult_41_n232), 
        .ZN(Stg_5_mult_41_n90) );
  XNOR2_X1 Stg_5_mult_41_U194 ( .A(H6[3]), .B(DIN_R_s_6__3_), .ZN(
        Stg_5_mult_41_n230) );
  OAI22_X1 Stg_5_mult_41_U193 ( .A1(Stg_5_mult_41_n230), .A2(
        Stg_5_mult_41_n227), .B1(Stg_5_mult_41_n215), .B2(Stg_5_mult_41_n231), 
        .ZN(Stg_5_mult_41_n91) );
  XNOR2_X1 Stg_5_mult_41_U192 ( .A(H6[2]), .B(DIN_R_s_6__3_), .ZN(
        Stg_5_mult_41_n229) );
  OAI22_X1 Stg_5_mult_41_U191 ( .A1(Stg_5_mult_41_n229), .A2(
        Stg_5_mult_41_n227), .B1(Stg_5_mult_41_n215), .B2(Stg_5_mult_41_n230), 
        .ZN(Stg_5_mult_41_n92) );
  XNOR2_X1 Stg_5_mult_41_U190 ( .A(H6[1]), .B(DIN_R_s_6__3_), .ZN(
        Stg_5_mult_41_n228) );
  OAI22_X1 Stg_5_mult_41_U189 ( .A1(Stg_5_mult_41_n228), .A2(
        Stg_5_mult_41_n227), .B1(Stg_5_mult_41_n215), .B2(Stg_5_mult_41_n229), 
        .ZN(Stg_5_mult_41_n93) );
  XNOR2_X1 Stg_5_mult_41_U188 ( .A(H6[0]), .B(DIN_R_s_6__3_), .ZN(
        Stg_5_mult_41_n226) );
  OAI22_X1 Stg_5_mult_41_U187 ( .A1(Stg_5_mult_41_n226), .A2(
        Stg_5_mult_41_n227), .B1(Stg_5_mult_41_n215), .B2(Stg_5_mult_41_n228), 
        .ZN(Stg_5_mult_41_n94) );
  XNOR2_X1 Stg_5_mult_41_U186 ( .A(H6[7]), .B(DIN_R_s_6__1_), .ZN(
        Stg_5_mult_41_n224) );
  OAI22_X1 Stg_5_mult_41_U185 ( .A1(Stg_5_mult_41_n217), .A2(
        Stg_5_mult_41_n224), .B1(Stg_5_mult_41_n221), .B2(Stg_5_mult_41_n224), 
        .ZN(Stg_5_mult_41_n225) );
  XNOR2_X1 Stg_5_mult_41_U184 ( .A(H6[6]), .B(DIN_R_s_6__1_), .ZN(
        Stg_5_mult_41_n223) );
  OAI22_X1 Stg_5_mult_41_U183 ( .A1(Stg_5_mult_41_n223), .A2(
        Stg_5_mult_41_n221), .B1(Stg_5_mult_41_n224), .B2(Stg_5_mult_41_n217), 
        .ZN(Stg_5_mult_41_n97) );
  XNOR2_X1 Stg_5_mult_41_U182 ( .A(H6[5]), .B(DIN_R_s_6__1_), .ZN(
        Stg_5_mult_41_n222) );
  OAI22_X1 Stg_5_mult_41_U181 ( .A1(Stg_5_mult_41_n222), .A2(
        Stg_5_mult_41_n221), .B1(Stg_5_mult_41_n223), .B2(Stg_5_mult_41_n217), 
        .ZN(Stg_5_mult_41_n98) );
  OAI22_X1 Stg_5_mult_41_U180 ( .A1(Stg_5_mult_41_n220), .A2(
        Stg_5_mult_41_n221), .B1(Stg_5_mult_41_n222), .B2(Stg_5_mult_41_n217), 
        .ZN(Stg_5_mult_41_n99) );
  INV_X1 Stg_5_mult_41_U179 ( .A(H6[1]), .ZN(Stg_5_mult_41_n218) );
  INV_X1 Stg_5_mult_41_U178 ( .A(H6[0]), .ZN(Stg_5_mult_41_n219) );
  AND3_X1 Stg_5_mult_41_U177 ( .A1(Stg_5_mult_41_n254), .A2(Stg_5_mult_41_n218), .A3(DIN_R_s_6__1_), .ZN(Stg_5_mult_41_n199) );
  AND2_X1 Stg_5_mult_41_U176 ( .A1(Stg_5_mult_41_n253), .A2(Stg_5_mult_41_n254), .ZN(Stg_5_mult_41_n198) );
  MUX2_X1 Stg_5_mult_41_U175 ( .A(Stg_5_mult_41_n198), .B(Stg_5_mult_41_n199), 
        .S(Stg_5_mult_41_n219), .Z(Stg_5_mult_41_n197) );
  INV_X1 Stg_5_mult_41_U174 ( .A(DIN_R_s_6__7_), .ZN(Stg_5_mult_41_n204) );
  INV_X1 Stg_5_mult_41_U173 ( .A(DIN_R_s_6__5_), .ZN(Stg_5_mult_41_n209) );
  INV_X1 Stg_5_mult_41_U172 ( .A(DIN_R_s_6__3_), .ZN(Stg_5_mult_41_n214) );
  INV_X1 Stg_5_mult_41_U171 ( .A(DIN_R_s_6__0_), .ZN(Stg_5_mult_41_n217) );
  XOR2_X1 Stg_5_mult_41_U170 ( .A(DIN_R_s_6__6_), .B(Stg_5_mult_41_n209), .Z(
        Stg_5_mult_41_n256) );
  XOR2_X1 Stg_5_mult_41_U169 ( .A(DIN_R_s_6__4_), .B(Stg_5_mult_41_n214), .Z(
        Stg_5_mult_41_n235) );
  INV_X1 Stg_5_mult_41_U168 ( .A(Stg_5_mult_41_n244), .ZN(Stg_5_mult_41_n208)
         );
  INV_X1 Stg_5_mult_41_U167 ( .A(Stg_5_mult_41_n246), .ZN(Stg_5_mult_41_n201)
         );
  INV_X1 Stg_5_mult_41_U166 ( .A(Stg_5_mult_41_n31), .ZN(Stg_5_mult_41_n212)
         );
  INV_X1 Stg_5_mult_41_U165 ( .A(Stg_5_mult_41_n233), .ZN(Stg_5_mult_41_n213)
         );
  INV_X1 Stg_5_mult_41_U164 ( .A(Stg_5_mult_41_n225), .ZN(Stg_5_mult_41_n216)
         );
  INV_X1 Stg_5_mult_41_U163 ( .A(Stg_5_mult_41_n265), .ZN(Stg_5_mult_41_n203)
         );
  INV_X1 Stg_5_mult_41_U162 ( .A(Stg_5_mult_41_n21), .ZN(Stg_5_mult_41_n207)
         );
  INV_X1 Stg_5_mult_41_U161 ( .A(Stg_5_mult_41_n253), .ZN(Stg_5_mult_41_n215)
         );
  INV_X1 Stg_5_mult_41_U160 ( .A(Stg_5_mult_41_n250), .ZN(Stg_5_mult_41_n211)
         );
  INV_X1 Stg_5_mult_41_U159 ( .A(Stg_5_mult_41_n249), .ZN(Stg_5_mult_41_n210)
         );
  INV_X1 Stg_5_mult_41_U158 ( .A(Stg_5_mult_41_n15), .ZN(Stg_5_mult_41_n202)
         );
  INV_X1 Stg_5_mult_41_U157 ( .A(Stg_5_mult_41_n248), .ZN(Stg_5_mult_41_n206)
         );
  INV_X1 Stg_5_mult_41_U156 ( .A(Stg_5_mult_41_n247), .ZN(Stg_5_mult_41_n205)
         );
  INV_X1 Stg_5_mult_41_U155 ( .A(Stg_5_mult_41_n1), .ZN(Stg_5_mult_partial_15_) );
  HA_X1 Stg_5_mult_41_U37 ( .A(Stg_5_mult_41_n94), .B(Stg_5_mult_41_n101), 
        .CO(Stg_5_mult_41_n55), .S(Stg_5_mult_41_n56) );
  FA_X1 Stg_5_mult_41_U36 ( .A(Stg_5_mult_41_n100), .B(Stg_5_mult_41_n87), 
        .CI(Stg_5_mult_41_n93), .CO(Stg_5_mult_41_n53), .S(Stg_5_mult_41_n54)
         );
  HA_X1 Stg_5_mult_41_U35 ( .A(Stg_5_mult_41_n69), .B(Stg_5_mult_41_n86), .CO(
        Stg_5_mult_41_n51), .S(Stg_5_mult_41_n52) );
  FA_X1 Stg_5_mult_41_U34 ( .A(Stg_5_mult_41_n92), .B(Stg_5_mult_41_n99), .CI(
        Stg_5_mult_41_n52), .CO(Stg_5_mult_41_n49), .S(Stg_5_mult_41_n50) );
  FA_X1 Stg_5_mult_41_U33 ( .A(Stg_5_mult_41_n98), .B(Stg_5_mult_41_n79), .CI(
        Stg_5_mult_41_n91), .CO(Stg_5_mult_41_n47), .S(Stg_5_mult_41_n48) );
  FA_X1 Stg_5_mult_41_U32 ( .A(Stg_5_mult_41_n51), .B(Stg_5_mult_41_n85), .CI(
        Stg_5_mult_41_n48), .CO(Stg_5_mult_41_n45), .S(Stg_5_mult_41_n46) );
  HA_X1 Stg_5_mult_41_U31 ( .A(Stg_5_mult_41_n68), .B(Stg_5_mult_41_n78), .CO(
        Stg_5_mult_41_n43), .S(Stg_5_mult_41_n44) );
  FA_X1 Stg_5_mult_41_U30 ( .A(Stg_5_mult_41_n84), .B(Stg_5_mult_41_n97), .CI(
        Stg_5_mult_41_n90), .CO(Stg_5_mult_41_n41), .S(Stg_5_mult_41_n42) );
  FA_X1 Stg_5_mult_41_U29 ( .A(Stg_5_mult_41_n47), .B(Stg_5_mult_41_n44), .CI(
        Stg_5_mult_41_n42), .CO(Stg_5_mult_41_n39), .S(Stg_5_mult_41_n40) );
  FA_X1 Stg_5_mult_41_U26 ( .A(Stg_5_mult_41_n216), .B(Stg_5_mult_41_n83), 
        .CI(Stg_5_mult_41_n43), .CO(Stg_5_mult_41_n35), .S(Stg_5_mult_41_n36)
         );
  FA_X1 Stg_5_mult_41_U25 ( .A(Stg_5_mult_41_n41), .B(Stg_5_mult_41_n38), .CI(
        Stg_5_mult_41_n36), .CO(Stg_5_mult_41_n33), .S(Stg_5_mult_41_n34) );
  FA_X1 Stg_5_mult_41_U23 ( .A(Stg_5_mult_41_n76), .B(Stg_5_mult_41_n82), .CI(
        Stg_5_mult_41_n212), .CO(Stg_5_mult_41_n29), .S(Stg_5_mult_41_n30) );
  FA_X1 Stg_5_mult_41_U22 ( .A(Stg_5_mult_41_n35), .B(Stg_5_mult_41_n37), .CI(
        Stg_5_mult_41_n30), .CO(Stg_5_mult_41_n27), .S(Stg_5_mult_41_n28) );
  FA_X1 Stg_5_mult_41_U21 ( .A(Stg_5_mult_41_n81), .B(Stg_5_mult_41_n31), .CI(
        Stg_5_mult_41_n213), .CO(Stg_5_mult_41_n25), .S(Stg_5_mult_41_n26) );
  FA_X1 Stg_5_mult_41_U20 ( .A(Stg_5_mult_41_n29), .B(Stg_5_mult_41_n75), .CI(
        Stg_5_mult_41_n26), .CO(Stg_5_mult_41_n23), .S(Stg_5_mult_41_n24) );
  FA_X1 Stg_5_mult_41_U18 ( .A(Stg_5_mult_41_n207), .B(Stg_5_mult_41_n74), 
        .CI(Stg_5_mult_41_n25), .CO(Stg_5_mult_41_n19), .S(Stg_5_mult_41_n20)
         );
  FA_X1 Stg_5_mult_41_U17 ( .A(Stg_5_mult_41_n73), .B(Stg_5_mult_41_n21), .CI(
        Stg_5_mult_41_n208), .CO(Stg_5_mult_41_n17), .S(Stg_5_mult_41_n18) );
  FA_X1 Stg_5_mult_41_U8 ( .A(Stg_5_mult_41_n34), .B(Stg_5_mult_41_n39), .CI(
        Stg_5_mult_41_n201), .CO(Stg_5_mult_41_n7), .S(Stg_5_mult_partial_8_)
         );
  FA_X1 Stg_5_mult_41_U7 ( .A(Stg_5_mult_41_n28), .B(Stg_5_mult_41_n33), .CI(
        Stg_5_mult_41_n7), .CO(Stg_5_mult_41_n6), .S(Stg_5_mult_partial_9_) );
  FA_X1 Stg_5_mult_41_U6 ( .A(Stg_5_mult_41_n24), .B(Stg_5_mult_41_n27), .CI(
        Stg_5_mult_41_n6), .CO(Stg_5_mult_41_n5), .S(Stg_5_mult_partial_10_)
         );
  FA_X1 Stg_5_mult_41_U5 ( .A(Stg_5_mult_41_n20), .B(Stg_5_mult_41_n23), .CI(
        Stg_5_mult_41_n5), .CO(Stg_5_mult_41_n4), .S(Stg_5_mult_partial_11_)
         );
  FA_X1 Stg_5_mult_41_U4 ( .A(Stg_5_mult_41_n19), .B(Stg_5_mult_41_n18), .CI(
        Stg_5_mult_41_n4), .CO(Stg_5_mult_41_n3), .S(Stg_5_mult_partial_12_)
         );
  FA_X1 Stg_5_mult_41_U3 ( .A(Stg_5_mult_41_n17), .B(Stg_5_mult_41_n202), .CI(
        Stg_5_mult_41_n3), .CO(Stg_5_mult_41_n2), .S(Stg_5_mult_partial_13_)
         );
  FA_X1 Stg_5_mult_41_U2 ( .A(Stg_5_mult_41_n203), .B(Stg_5_mult_41_n15), .CI(
        Stg_5_mult_41_n2), .CO(Stg_5_mult_41_n1), .S(Stg_5_mult_partial_14_)
         );
  XOR2_X1 Stg_5_add_42_U2 ( .A(DIN_A_s_5__0_), .B(Stg_5_mult_partial_8_), .Z(
        DIN_A_s_6__0_) );
  AND2_X1 Stg_5_add_42_U1 ( .A1(DIN_A_s_5__0_), .A2(Stg_5_mult_partial_8_), 
        .ZN(Stg_5_add_42_n1) );
  FA_X1 Stg_5_add_42_U1_1 ( .A(Stg_5_mult_partial_9_), .B(DIN_A_s_5__1_), .CI(
        Stg_5_add_42_n1), .CO(Stg_5_add_42_carry[2]), .S(DIN_A_s_6__1_) );
  FA_X1 Stg_5_add_42_U1_2 ( .A(Stg_5_mult_partial_10_), .B(DIN_A_s_5__2_), 
        .CI(Stg_5_add_42_carry[2]), .CO(Stg_5_add_42_carry[3]), .S(
        DIN_A_s_6__2_) );
  FA_X1 Stg_5_add_42_U1_3 ( .A(Stg_5_mult_partial_11_), .B(DIN_A_s_5__3_), 
        .CI(Stg_5_add_42_carry[3]), .CO(Stg_5_add_42_carry[4]), .S(
        DIN_A_s_6__3_) );
  FA_X1 Stg_5_add_42_U1_4 ( .A(Stg_5_mult_partial_12_), .B(DIN_A_s_5__4_), 
        .CI(Stg_5_add_42_carry[4]), .CO(Stg_5_add_42_carry[5]), .S(
        DIN_A_s_6__4_) );
  FA_X1 Stg_5_add_42_U1_5 ( .A(Stg_5_mult_partial_13_), .B(DIN_A_s_5__5_), 
        .CI(Stg_5_add_42_carry[5]), .CO(Stg_5_add_42_carry[6]), .S(
        DIN_A_s_6__5_) );
  FA_X1 Stg_5_add_42_U1_6 ( .A(Stg_5_mult_partial_14_), .B(DIN_A_s_5__6_), 
        .CI(Stg_5_add_42_carry[6]), .CO(Stg_5_add_42_carry[7]), .S(
        DIN_A_s_6__6_) );
  FA_X1 Stg_5_add_42_U1_7 ( .A(Stg_5_mult_partial_15_), .B(DIN_A_s_5__7_), 
        .CI(Stg_5_add_42_carry[7]), .S(DIN_A_s_6__7_) );
  INV_X1 Stg_6_REGn_regn_7_U6 ( .A(RST_n), .ZN(Stg_6_REGn_regn_7_n2) );
  INV_X1 Stg_6_REGn_regn_7_U5 ( .A(n4), .ZN(Stg_6_REGn_regn_7_n1) );
  AOI22_X1 Stg_6_REGn_regn_7_U4 ( .A1(n4), .A2(DIN_R_s_6__7_), .B1(
        DIN_R_s_7__7_), .B2(Stg_6_REGn_regn_7_n1), .ZN(Stg_6_REGn_regn_7_n6)
         );
  NOR2_X1 Stg_6_REGn_regn_7_U3 ( .A1(Stg_6_REGn_regn_7_n6), .A2(
        Stg_6_REGn_regn_7_n2), .ZN(Stg_6_REGn_regn_7_n5) );
  DFF_X1 Stg_6_REGn_regn_7_Q_reg ( .D(Stg_6_REGn_regn_7_n5), .CK(CLK), .Q(
        DIN_R_s_7__7_) );
  INV_X1 Stg_6_REGn_regn_6_U6 ( .A(RST_n), .ZN(Stg_6_REGn_regn_6_n2) );
  INV_X1 Stg_6_REGn_regn_6_U5 ( .A(n4), .ZN(Stg_6_REGn_regn_6_n1) );
  AOI22_X1 Stg_6_REGn_regn_6_U4 ( .A1(n4), .A2(DIN_R_s_6__6_), .B1(
        DIN_R_s_7__6_), .B2(Stg_6_REGn_regn_6_n1), .ZN(Stg_6_REGn_regn_6_n6)
         );
  NOR2_X1 Stg_6_REGn_regn_6_U3 ( .A1(Stg_6_REGn_regn_6_n6), .A2(
        Stg_6_REGn_regn_6_n2), .ZN(Stg_6_REGn_regn_6_n5) );
  DFF_X1 Stg_6_REGn_regn_6_Q_reg ( .D(Stg_6_REGn_regn_6_n5), .CK(CLK), .Q(
        DIN_R_s_7__6_) );
  INV_X1 Stg_6_REGn_regn_5_U6 ( .A(RST_n), .ZN(Stg_6_REGn_regn_5_n2) );
  INV_X1 Stg_6_REGn_regn_5_U5 ( .A(n4), .ZN(Stg_6_REGn_regn_5_n1) );
  AOI22_X1 Stg_6_REGn_regn_5_U4 ( .A1(n4), .A2(DIN_R_s_6__5_), .B1(
        DIN_R_s_7__5_), .B2(Stg_6_REGn_regn_5_n1), .ZN(Stg_6_REGn_regn_5_n6)
         );
  NOR2_X1 Stg_6_REGn_regn_5_U3 ( .A1(Stg_6_REGn_regn_5_n6), .A2(
        Stg_6_REGn_regn_5_n2), .ZN(Stg_6_REGn_regn_5_n5) );
  DFF_X1 Stg_6_REGn_regn_5_Q_reg ( .D(Stg_6_REGn_regn_5_n5), .CK(CLK), .Q(
        DIN_R_s_7__5_) );
  INV_X1 Stg_6_REGn_regn_4_U6 ( .A(RST_n), .ZN(Stg_6_REGn_regn_4_n2) );
  INV_X1 Stg_6_REGn_regn_4_U5 ( .A(n4), .ZN(Stg_6_REGn_regn_4_n1) );
  AOI22_X1 Stg_6_REGn_regn_4_U4 ( .A1(n4), .A2(DIN_R_s_6__4_), .B1(
        DIN_R_s_7__4_), .B2(Stg_6_REGn_regn_4_n1), .ZN(Stg_6_REGn_regn_4_n6)
         );
  NOR2_X1 Stg_6_REGn_regn_4_U3 ( .A1(Stg_6_REGn_regn_4_n6), .A2(
        Stg_6_REGn_regn_4_n2), .ZN(Stg_6_REGn_regn_4_n5) );
  DFF_X1 Stg_6_REGn_regn_4_Q_reg ( .D(Stg_6_REGn_regn_4_n5), .CK(CLK), .Q(
        DIN_R_s_7__4_) );
  INV_X1 Stg_6_REGn_regn_3_U6 ( .A(RST_n), .ZN(Stg_6_REGn_regn_3_n2) );
  INV_X1 Stg_6_REGn_regn_3_U5 ( .A(n4), .ZN(Stg_6_REGn_regn_3_n1) );
  AOI22_X1 Stg_6_REGn_regn_3_U4 ( .A1(n4), .A2(DIN_R_s_6__3_), .B1(
        DIN_R_s_7__3_), .B2(Stg_6_REGn_regn_3_n1), .ZN(Stg_6_REGn_regn_3_n6)
         );
  NOR2_X1 Stg_6_REGn_regn_3_U3 ( .A1(Stg_6_REGn_regn_3_n6), .A2(
        Stg_6_REGn_regn_3_n2), .ZN(Stg_6_REGn_regn_3_n5) );
  DFF_X1 Stg_6_REGn_regn_3_Q_reg ( .D(Stg_6_REGn_regn_3_n5), .CK(CLK), .Q(
        DIN_R_s_7__3_) );
  INV_X1 Stg_6_REGn_regn_2_U6 ( .A(RST_n), .ZN(Stg_6_REGn_regn_2_n2) );
  INV_X1 Stg_6_REGn_regn_2_U5 ( .A(n4), .ZN(Stg_6_REGn_regn_2_n1) );
  AOI22_X1 Stg_6_REGn_regn_2_U4 ( .A1(n4), .A2(DIN_R_s_6__2_), .B1(
        DIN_R_s_7__2_), .B2(Stg_6_REGn_regn_2_n1), .ZN(Stg_6_REGn_regn_2_n6)
         );
  NOR2_X1 Stg_6_REGn_regn_2_U3 ( .A1(Stg_6_REGn_regn_2_n6), .A2(
        Stg_6_REGn_regn_2_n2), .ZN(Stg_6_REGn_regn_2_n5) );
  DFF_X1 Stg_6_REGn_regn_2_Q_reg ( .D(Stg_6_REGn_regn_2_n5), .CK(CLK), .Q(
        DIN_R_s_7__2_) );
  INV_X1 Stg_6_REGn_regn_1_U6 ( .A(RST_n), .ZN(Stg_6_REGn_regn_1_n2) );
  INV_X1 Stg_6_REGn_regn_1_U5 ( .A(n4), .ZN(Stg_6_REGn_regn_1_n1) );
  AOI22_X1 Stg_6_REGn_regn_1_U4 ( .A1(n4), .A2(DIN_R_s_6__1_), .B1(
        DIN_R_s_7__1_), .B2(Stg_6_REGn_regn_1_n1), .ZN(Stg_6_REGn_regn_1_n6)
         );
  NOR2_X1 Stg_6_REGn_regn_1_U3 ( .A1(Stg_6_REGn_regn_1_n6), .A2(
        Stg_6_REGn_regn_1_n2), .ZN(Stg_6_REGn_regn_1_n5) );
  DFF_X1 Stg_6_REGn_regn_1_Q_reg ( .D(Stg_6_REGn_regn_1_n5), .CK(CLK), .Q(
        DIN_R_s_7__1_) );
  INV_X1 Stg_6_REGn_regn_0_U6 ( .A(RST_n), .ZN(Stg_6_REGn_regn_0_n2) );
  INV_X1 Stg_6_REGn_regn_0_U5 ( .A(n4), .ZN(Stg_6_REGn_regn_0_n1) );
  AOI22_X1 Stg_6_REGn_regn_0_U4 ( .A1(n4), .A2(DIN_R_s_6__0_), .B1(
        DIN_R_s_7__0_), .B2(Stg_6_REGn_regn_0_n1), .ZN(Stg_6_REGn_regn_0_n6)
         );
  NOR2_X1 Stg_6_REGn_regn_0_U3 ( .A1(Stg_6_REGn_regn_0_n6), .A2(
        Stg_6_REGn_regn_0_n2), .ZN(Stg_6_REGn_regn_0_n5) );
  DFF_X1 Stg_6_REGn_regn_0_Q_reg ( .D(Stg_6_REGn_regn_0_n5), .CK(CLK), .Q(
        DIN_R_s_7__0_) );
  XNOR2_X1 Stg_6_mult_41_U263 ( .A(H7[3]), .B(DIN_R_s_7__1_), .ZN(
        Stg_6_mult_41_n275) );
  NAND2_X1 Stg_6_mult_41_U262 ( .A1(DIN_R_s_7__1_), .A2(Stg_6_mult_41_n217), 
        .ZN(Stg_6_mult_41_n221) );
  XNOR2_X1 Stg_6_mult_41_U261 ( .A(H7[4]), .B(DIN_R_s_7__1_), .ZN(
        Stg_6_mult_41_n220) );
  OAI22_X1 Stg_6_mult_41_U260 ( .A1(Stg_6_mult_41_n275), .A2(
        Stg_6_mult_41_n221), .B1(Stg_6_mult_41_n220), .B2(Stg_6_mult_41_n217), 
        .ZN(Stg_6_mult_41_n100) );
  XNOR2_X1 Stg_6_mult_41_U259 ( .A(H7[2]), .B(DIN_R_s_7__1_), .ZN(
        Stg_6_mult_41_n255) );
  OAI22_X1 Stg_6_mult_41_U258 ( .A1(Stg_6_mult_41_n255), .A2(
        Stg_6_mult_41_n221), .B1(Stg_6_mult_41_n275), .B2(Stg_6_mult_41_n217), 
        .ZN(Stg_6_mult_41_n101) );
  XNOR2_X1 Stg_6_mult_41_U257 ( .A(H7[6]), .B(DIN_R_s_7__7_), .ZN(
        Stg_6_mult_41_n264) );
  XNOR2_X1 Stg_6_mult_41_U256 ( .A(Stg_6_mult_41_n204), .B(DIN_R_s_7__6_), 
        .ZN(Stg_6_mult_41_n274) );
  NAND2_X1 Stg_6_mult_41_U255 ( .A1(Stg_6_mult_41_n256), .A2(
        Stg_6_mult_41_n274), .ZN(Stg_6_mult_41_n258) );
  XNOR2_X1 Stg_6_mult_41_U254 ( .A(H7[7]), .B(DIN_R_s_7__7_), .ZN(
        Stg_6_mult_41_n266) );
  OAI22_X1 Stg_6_mult_41_U253 ( .A1(Stg_6_mult_41_n264), .A2(
        Stg_6_mult_41_n258), .B1(Stg_6_mult_41_n256), .B2(Stg_6_mult_41_n266), 
        .ZN(Stg_6_mult_41_n15) );
  XNOR2_X1 Stg_6_mult_41_U252 ( .A(H7[6]), .B(DIN_R_s_7__5_), .ZN(
        Stg_6_mult_41_n243) );
  XNOR2_X1 Stg_6_mult_41_U251 ( .A(Stg_6_mult_41_n209), .B(DIN_R_s_7__4_), 
        .ZN(Stg_6_mult_41_n273) );
  NAND2_X1 Stg_6_mult_41_U250 ( .A1(Stg_6_mult_41_n235), .A2(
        Stg_6_mult_41_n273), .ZN(Stg_6_mult_41_n237) );
  XNOR2_X1 Stg_6_mult_41_U249 ( .A(H7[7]), .B(DIN_R_s_7__5_), .ZN(
        Stg_6_mult_41_n245) );
  OAI22_X1 Stg_6_mult_41_U248 ( .A1(Stg_6_mult_41_n243), .A2(
        Stg_6_mult_41_n237), .B1(Stg_6_mult_41_n235), .B2(Stg_6_mult_41_n245), 
        .ZN(Stg_6_mult_41_n21) );
  XNOR2_X1 Stg_6_mult_41_U247 ( .A(H7[6]), .B(DIN_R_s_7__3_), .ZN(
        Stg_6_mult_41_n271) );
  XOR2_X1 Stg_6_mult_41_U246 ( .A(DIN_R_s_7__2_), .B(DIN_R_s_7__1_), .Z(
        Stg_6_mult_41_n253) );
  XNOR2_X1 Stg_6_mult_41_U245 ( .A(Stg_6_mult_41_n214), .B(DIN_R_s_7__2_), 
        .ZN(Stg_6_mult_41_n272) );
  NAND2_X1 Stg_6_mult_41_U244 ( .A1(Stg_6_mult_41_n215), .A2(
        Stg_6_mult_41_n272), .ZN(Stg_6_mult_41_n227) );
  XNOR2_X1 Stg_6_mult_41_U243 ( .A(H7[7]), .B(DIN_R_s_7__3_), .ZN(
        Stg_6_mult_41_n234) );
  OAI22_X1 Stg_6_mult_41_U242 ( .A1(Stg_6_mult_41_n271), .A2(
        Stg_6_mult_41_n227), .B1(Stg_6_mult_41_n215), .B2(Stg_6_mult_41_n234), 
        .ZN(Stg_6_mult_41_n31) );
  XNOR2_X1 Stg_6_mult_41_U241 ( .A(H7[1]), .B(DIN_R_s_7__7_), .ZN(
        Stg_6_mult_41_n259) );
  XNOR2_X1 Stg_6_mult_41_U240 ( .A(H7[2]), .B(DIN_R_s_7__7_), .ZN(
        Stg_6_mult_41_n260) );
  OAI22_X1 Stg_6_mult_41_U239 ( .A1(Stg_6_mult_41_n259), .A2(
        Stg_6_mult_41_n258), .B1(Stg_6_mult_41_n256), .B2(Stg_6_mult_41_n260), 
        .ZN(Stg_6_mult_41_n269) );
  XNOR2_X1 Stg_6_mult_41_U238 ( .A(H7[5]), .B(DIN_R_s_7__3_), .ZN(
        Stg_6_mult_41_n232) );
  OAI22_X1 Stg_6_mult_41_U237 ( .A1(Stg_6_mult_41_n232), .A2(
        Stg_6_mult_41_n227), .B1(Stg_6_mult_41_n215), .B2(Stg_6_mult_41_n271), 
        .ZN(Stg_6_mult_41_n270) );
  OR2_X1 Stg_6_mult_41_U236 ( .A1(Stg_6_mult_41_n269), .A2(Stg_6_mult_41_n270), 
        .ZN(Stg_6_mult_41_n37) );
  XNOR2_X1 Stg_6_mult_41_U235 ( .A(Stg_6_mult_41_n269), .B(Stg_6_mult_41_n270), 
        .ZN(Stg_6_mult_41_n38) );
  OR3_X1 Stg_6_mult_41_U234 ( .A1(Stg_6_mult_41_n256), .A2(H7[0]), .A3(
        Stg_6_mult_41_n204), .ZN(Stg_6_mult_41_n268) );
  OAI21_X1 Stg_6_mult_41_U233 ( .B1(Stg_6_mult_41_n204), .B2(
        Stg_6_mult_41_n258), .A(Stg_6_mult_41_n268), .ZN(Stg_6_mult_41_n68) );
  OR3_X1 Stg_6_mult_41_U232 ( .A1(Stg_6_mult_41_n235), .A2(H7[0]), .A3(
        Stg_6_mult_41_n209), .ZN(Stg_6_mult_41_n267) );
  OAI21_X1 Stg_6_mult_41_U231 ( .B1(Stg_6_mult_41_n209), .B2(
        Stg_6_mult_41_n237), .A(Stg_6_mult_41_n267), .ZN(Stg_6_mult_41_n69) );
  OAI22_X1 Stg_6_mult_41_U230 ( .A1(Stg_6_mult_41_n266), .A2(
        Stg_6_mult_41_n256), .B1(Stg_6_mult_41_n258), .B2(Stg_6_mult_41_n266), 
        .ZN(Stg_6_mult_41_n265) );
  XNOR2_X1 Stg_6_mult_41_U229 ( .A(H7[5]), .B(DIN_R_s_7__7_), .ZN(
        Stg_6_mult_41_n263) );
  OAI22_X1 Stg_6_mult_41_U228 ( .A1(Stg_6_mult_41_n263), .A2(
        Stg_6_mult_41_n258), .B1(Stg_6_mult_41_n256), .B2(Stg_6_mult_41_n264), 
        .ZN(Stg_6_mult_41_n73) );
  XNOR2_X1 Stg_6_mult_41_U227 ( .A(H7[4]), .B(DIN_R_s_7__7_), .ZN(
        Stg_6_mult_41_n262) );
  OAI22_X1 Stg_6_mult_41_U226 ( .A1(Stg_6_mult_41_n262), .A2(
        Stg_6_mult_41_n258), .B1(Stg_6_mult_41_n256), .B2(Stg_6_mult_41_n263), 
        .ZN(Stg_6_mult_41_n74) );
  XNOR2_X1 Stg_6_mult_41_U225 ( .A(H7[3]), .B(DIN_R_s_7__7_), .ZN(
        Stg_6_mult_41_n261) );
  OAI22_X1 Stg_6_mult_41_U224 ( .A1(Stg_6_mult_41_n261), .A2(
        Stg_6_mult_41_n258), .B1(Stg_6_mult_41_n256), .B2(Stg_6_mult_41_n262), 
        .ZN(Stg_6_mult_41_n75) );
  OAI22_X1 Stg_6_mult_41_U223 ( .A1(Stg_6_mult_41_n260), .A2(
        Stg_6_mult_41_n258), .B1(Stg_6_mult_41_n256), .B2(Stg_6_mult_41_n261), 
        .ZN(Stg_6_mult_41_n76) );
  XNOR2_X1 Stg_6_mult_41_U222 ( .A(H7[0]), .B(DIN_R_s_7__7_), .ZN(
        Stg_6_mult_41_n257) );
  OAI22_X1 Stg_6_mult_41_U221 ( .A1(Stg_6_mult_41_n257), .A2(
        Stg_6_mult_41_n258), .B1(Stg_6_mult_41_n256), .B2(Stg_6_mult_41_n259), 
        .ZN(Stg_6_mult_41_n78) );
  NOR2_X1 Stg_6_mult_41_U220 ( .A1(Stg_6_mult_41_n256), .A2(Stg_6_mult_41_n219), .ZN(Stg_6_mult_41_n79) );
  OAI22_X1 Stg_6_mult_41_U219 ( .A1(H7[1]), .A2(Stg_6_mult_41_n221), .B1(
        Stg_6_mult_41_n255), .B2(Stg_6_mult_41_n217), .ZN(Stg_6_mult_41_n254)
         );
  NAND3_X1 Stg_6_mult_41_U218 ( .A1(Stg_6_mult_41_n253), .A2(
        Stg_6_mult_41_n219), .A3(DIN_R_s_7__3_), .ZN(Stg_6_mult_41_n252) );
  OAI21_X1 Stg_6_mult_41_U217 ( .B1(Stg_6_mult_41_n214), .B2(
        Stg_6_mult_41_n227), .A(Stg_6_mult_41_n252), .ZN(Stg_6_mult_41_n251)
         );
  AOI222_X1 Stg_6_mult_41_U216 ( .A1(Stg_6_mult_41_n197), .A2(
        Stg_6_mult_41_n56), .B1(Stg_6_mult_41_n251), .B2(Stg_6_mult_41_n197), 
        .C1(Stg_6_mult_41_n251), .C2(Stg_6_mult_41_n56), .ZN(
        Stg_6_mult_41_n250) );
  AOI222_X1 Stg_6_mult_41_U215 ( .A1(Stg_6_mult_41_n211), .A2(
        Stg_6_mult_41_n54), .B1(Stg_6_mult_41_n211), .B2(Stg_6_mult_41_n55), 
        .C1(Stg_6_mult_41_n55), .C2(Stg_6_mult_41_n54), .ZN(Stg_6_mult_41_n249) );
  AOI222_X1 Stg_6_mult_41_U214 ( .A1(Stg_6_mult_41_n210), .A2(
        Stg_6_mult_41_n50), .B1(Stg_6_mult_41_n210), .B2(Stg_6_mult_41_n53), 
        .C1(Stg_6_mult_41_n53), .C2(Stg_6_mult_41_n50), .ZN(Stg_6_mult_41_n248) );
  AOI222_X1 Stg_6_mult_41_U213 ( .A1(Stg_6_mult_41_n206), .A2(
        Stg_6_mult_41_n46), .B1(Stg_6_mult_41_n206), .B2(Stg_6_mult_41_n49), 
        .C1(Stg_6_mult_41_n49), .C2(Stg_6_mult_41_n46), .ZN(Stg_6_mult_41_n247) );
  AOI222_X1 Stg_6_mult_41_U212 ( .A1(Stg_6_mult_41_n205), .A2(
        Stg_6_mult_41_n40), .B1(Stg_6_mult_41_n205), .B2(Stg_6_mult_41_n45), 
        .C1(Stg_6_mult_41_n45), .C2(Stg_6_mult_41_n40), .ZN(Stg_6_mult_41_n246) );
  OAI22_X1 Stg_6_mult_41_U211 ( .A1(Stg_6_mult_41_n245), .A2(
        Stg_6_mult_41_n235), .B1(Stg_6_mult_41_n237), .B2(Stg_6_mult_41_n245), 
        .ZN(Stg_6_mult_41_n244) );
  XNOR2_X1 Stg_6_mult_41_U210 ( .A(H7[5]), .B(DIN_R_s_7__5_), .ZN(
        Stg_6_mult_41_n242) );
  OAI22_X1 Stg_6_mult_41_U209 ( .A1(Stg_6_mult_41_n242), .A2(
        Stg_6_mult_41_n237), .B1(Stg_6_mult_41_n235), .B2(Stg_6_mult_41_n243), 
        .ZN(Stg_6_mult_41_n81) );
  XNOR2_X1 Stg_6_mult_41_U208 ( .A(H7[4]), .B(DIN_R_s_7__5_), .ZN(
        Stg_6_mult_41_n241) );
  OAI22_X1 Stg_6_mult_41_U207 ( .A1(Stg_6_mult_41_n241), .A2(
        Stg_6_mult_41_n237), .B1(Stg_6_mult_41_n235), .B2(Stg_6_mult_41_n242), 
        .ZN(Stg_6_mult_41_n82) );
  XNOR2_X1 Stg_6_mult_41_U206 ( .A(H7[3]), .B(DIN_R_s_7__5_), .ZN(
        Stg_6_mult_41_n240) );
  OAI22_X1 Stg_6_mult_41_U205 ( .A1(Stg_6_mult_41_n240), .A2(
        Stg_6_mult_41_n237), .B1(Stg_6_mult_41_n235), .B2(Stg_6_mult_41_n241), 
        .ZN(Stg_6_mult_41_n83) );
  XNOR2_X1 Stg_6_mult_41_U204 ( .A(H7[2]), .B(DIN_R_s_7__5_), .ZN(
        Stg_6_mult_41_n239) );
  OAI22_X1 Stg_6_mult_41_U203 ( .A1(Stg_6_mult_41_n239), .A2(
        Stg_6_mult_41_n237), .B1(Stg_6_mult_41_n235), .B2(Stg_6_mult_41_n240), 
        .ZN(Stg_6_mult_41_n84) );
  XNOR2_X1 Stg_6_mult_41_U202 ( .A(H7[1]), .B(DIN_R_s_7__5_), .ZN(
        Stg_6_mult_41_n238) );
  OAI22_X1 Stg_6_mult_41_U201 ( .A1(Stg_6_mult_41_n238), .A2(
        Stg_6_mult_41_n237), .B1(Stg_6_mult_41_n235), .B2(Stg_6_mult_41_n239), 
        .ZN(Stg_6_mult_41_n85) );
  XNOR2_X1 Stg_6_mult_41_U200 ( .A(H7[0]), .B(DIN_R_s_7__5_), .ZN(
        Stg_6_mult_41_n236) );
  OAI22_X1 Stg_6_mult_41_U199 ( .A1(Stg_6_mult_41_n236), .A2(
        Stg_6_mult_41_n237), .B1(Stg_6_mult_41_n235), .B2(Stg_6_mult_41_n238), 
        .ZN(Stg_6_mult_41_n86) );
  NOR2_X1 Stg_6_mult_41_U198 ( .A1(Stg_6_mult_41_n235), .A2(Stg_6_mult_41_n219), .ZN(Stg_6_mult_41_n87) );
  OAI22_X1 Stg_6_mult_41_U197 ( .A1(Stg_6_mult_41_n234), .A2(
        Stg_6_mult_41_n215), .B1(Stg_6_mult_41_n227), .B2(Stg_6_mult_41_n234), 
        .ZN(Stg_6_mult_41_n233) );
  XNOR2_X1 Stg_6_mult_41_U196 ( .A(H7[4]), .B(DIN_R_s_7__3_), .ZN(
        Stg_6_mult_41_n231) );
  OAI22_X1 Stg_6_mult_41_U195 ( .A1(Stg_6_mult_41_n231), .A2(
        Stg_6_mult_41_n227), .B1(Stg_6_mult_41_n215), .B2(Stg_6_mult_41_n232), 
        .ZN(Stg_6_mult_41_n90) );
  XNOR2_X1 Stg_6_mult_41_U194 ( .A(H7[3]), .B(DIN_R_s_7__3_), .ZN(
        Stg_6_mult_41_n230) );
  OAI22_X1 Stg_6_mult_41_U193 ( .A1(Stg_6_mult_41_n230), .A2(
        Stg_6_mult_41_n227), .B1(Stg_6_mult_41_n215), .B2(Stg_6_mult_41_n231), 
        .ZN(Stg_6_mult_41_n91) );
  XNOR2_X1 Stg_6_mult_41_U192 ( .A(H7[2]), .B(DIN_R_s_7__3_), .ZN(
        Stg_6_mult_41_n229) );
  OAI22_X1 Stg_6_mult_41_U191 ( .A1(Stg_6_mult_41_n229), .A2(
        Stg_6_mult_41_n227), .B1(Stg_6_mult_41_n215), .B2(Stg_6_mult_41_n230), 
        .ZN(Stg_6_mult_41_n92) );
  XNOR2_X1 Stg_6_mult_41_U190 ( .A(H7[1]), .B(DIN_R_s_7__3_), .ZN(
        Stg_6_mult_41_n228) );
  OAI22_X1 Stg_6_mult_41_U189 ( .A1(Stg_6_mult_41_n228), .A2(
        Stg_6_mult_41_n227), .B1(Stg_6_mult_41_n215), .B2(Stg_6_mult_41_n229), 
        .ZN(Stg_6_mult_41_n93) );
  XNOR2_X1 Stg_6_mult_41_U188 ( .A(H7[0]), .B(DIN_R_s_7__3_), .ZN(
        Stg_6_mult_41_n226) );
  OAI22_X1 Stg_6_mult_41_U187 ( .A1(Stg_6_mult_41_n226), .A2(
        Stg_6_mult_41_n227), .B1(Stg_6_mult_41_n215), .B2(Stg_6_mult_41_n228), 
        .ZN(Stg_6_mult_41_n94) );
  XNOR2_X1 Stg_6_mult_41_U186 ( .A(H7[7]), .B(DIN_R_s_7__1_), .ZN(
        Stg_6_mult_41_n224) );
  OAI22_X1 Stg_6_mult_41_U185 ( .A1(Stg_6_mult_41_n217), .A2(
        Stg_6_mult_41_n224), .B1(Stg_6_mult_41_n221), .B2(Stg_6_mult_41_n224), 
        .ZN(Stg_6_mult_41_n225) );
  XNOR2_X1 Stg_6_mult_41_U184 ( .A(H7[6]), .B(DIN_R_s_7__1_), .ZN(
        Stg_6_mult_41_n223) );
  OAI22_X1 Stg_6_mult_41_U183 ( .A1(Stg_6_mult_41_n223), .A2(
        Stg_6_mult_41_n221), .B1(Stg_6_mult_41_n224), .B2(Stg_6_mult_41_n217), 
        .ZN(Stg_6_mult_41_n97) );
  XNOR2_X1 Stg_6_mult_41_U182 ( .A(H7[5]), .B(DIN_R_s_7__1_), .ZN(
        Stg_6_mult_41_n222) );
  OAI22_X1 Stg_6_mult_41_U181 ( .A1(Stg_6_mult_41_n222), .A2(
        Stg_6_mult_41_n221), .B1(Stg_6_mult_41_n223), .B2(Stg_6_mult_41_n217), 
        .ZN(Stg_6_mult_41_n98) );
  OAI22_X1 Stg_6_mult_41_U180 ( .A1(Stg_6_mult_41_n220), .A2(
        Stg_6_mult_41_n221), .B1(Stg_6_mult_41_n222), .B2(Stg_6_mult_41_n217), 
        .ZN(Stg_6_mult_41_n99) );
  INV_X1 Stg_6_mult_41_U179 ( .A(H7[1]), .ZN(Stg_6_mult_41_n218) );
  INV_X1 Stg_6_mult_41_U178 ( .A(H7[0]), .ZN(Stg_6_mult_41_n219) );
  AND3_X1 Stg_6_mult_41_U177 ( .A1(Stg_6_mult_41_n254), .A2(Stg_6_mult_41_n218), .A3(DIN_R_s_7__1_), .ZN(Stg_6_mult_41_n199) );
  AND2_X1 Stg_6_mult_41_U176 ( .A1(Stg_6_mult_41_n253), .A2(Stg_6_mult_41_n254), .ZN(Stg_6_mult_41_n198) );
  MUX2_X1 Stg_6_mult_41_U175 ( .A(Stg_6_mult_41_n198), .B(Stg_6_mult_41_n199), 
        .S(Stg_6_mult_41_n219), .Z(Stg_6_mult_41_n197) );
  INV_X1 Stg_6_mult_41_U174 ( .A(DIN_R_s_7__7_), .ZN(Stg_6_mult_41_n204) );
  INV_X1 Stg_6_mult_41_U173 ( .A(DIN_R_s_7__5_), .ZN(Stg_6_mult_41_n209) );
  INV_X1 Stg_6_mult_41_U172 ( .A(DIN_R_s_7__3_), .ZN(Stg_6_mult_41_n214) );
  INV_X1 Stg_6_mult_41_U171 ( .A(DIN_R_s_7__0_), .ZN(Stg_6_mult_41_n217) );
  XOR2_X1 Stg_6_mult_41_U170 ( .A(DIN_R_s_7__6_), .B(Stg_6_mult_41_n209), .Z(
        Stg_6_mult_41_n256) );
  XOR2_X1 Stg_6_mult_41_U169 ( .A(DIN_R_s_7__4_), .B(Stg_6_mult_41_n214), .Z(
        Stg_6_mult_41_n235) );
  INV_X1 Stg_6_mult_41_U168 ( .A(Stg_6_mult_41_n244), .ZN(Stg_6_mult_41_n208)
         );
  INV_X1 Stg_6_mult_41_U167 ( .A(Stg_6_mult_41_n21), .ZN(Stg_6_mult_41_n207)
         );
  INV_X1 Stg_6_mult_41_U166 ( .A(Stg_6_mult_41_n246), .ZN(Stg_6_mult_41_n201)
         );
  INV_X1 Stg_6_mult_41_U165 ( .A(Stg_6_mult_41_n31), .ZN(Stg_6_mult_41_n212)
         );
  INV_X1 Stg_6_mult_41_U164 ( .A(Stg_6_mult_41_n233), .ZN(Stg_6_mult_41_n213)
         );
  INV_X1 Stg_6_mult_41_U163 ( .A(Stg_6_mult_41_n225), .ZN(Stg_6_mult_41_n216)
         );
  INV_X1 Stg_6_mult_41_U162 ( .A(Stg_6_mult_41_n265), .ZN(Stg_6_mult_41_n203)
         );
  INV_X1 Stg_6_mult_41_U161 ( .A(Stg_6_mult_41_n253), .ZN(Stg_6_mult_41_n215)
         );
  INV_X1 Stg_6_mult_41_U160 ( .A(Stg_6_mult_41_n250), .ZN(Stg_6_mult_41_n211)
         );
  INV_X1 Stg_6_mult_41_U159 ( .A(Stg_6_mult_41_n249), .ZN(Stg_6_mult_41_n210)
         );
  INV_X1 Stg_6_mult_41_U158 ( .A(Stg_6_mult_41_n15), .ZN(Stg_6_mult_41_n202)
         );
  INV_X1 Stg_6_mult_41_U157 ( .A(Stg_6_mult_41_n248), .ZN(Stg_6_mult_41_n206)
         );
  INV_X1 Stg_6_mult_41_U156 ( .A(Stg_6_mult_41_n247), .ZN(Stg_6_mult_41_n205)
         );
  INV_X1 Stg_6_mult_41_U155 ( .A(Stg_6_mult_41_n1), .ZN(Stg_6_mult_partial_15_) );
  HA_X1 Stg_6_mult_41_U37 ( .A(Stg_6_mult_41_n94), .B(Stg_6_mult_41_n101), 
        .CO(Stg_6_mult_41_n55), .S(Stg_6_mult_41_n56) );
  FA_X1 Stg_6_mult_41_U36 ( .A(Stg_6_mult_41_n100), .B(Stg_6_mult_41_n87), 
        .CI(Stg_6_mult_41_n93), .CO(Stg_6_mult_41_n53), .S(Stg_6_mult_41_n54)
         );
  HA_X1 Stg_6_mult_41_U35 ( .A(Stg_6_mult_41_n69), .B(Stg_6_mult_41_n86), .CO(
        Stg_6_mult_41_n51), .S(Stg_6_mult_41_n52) );
  FA_X1 Stg_6_mult_41_U34 ( .A(Stg_6_mult_41_n92), .B(Stg_6_mult_41_n99), .CI(
        Stg_6_mult_41_n52), .CO(Stg_6_mult_41_n49), .S(Stg_6_mult_41_n50) );
  FA_X1 Stg_6_mult_41_U33 ( .A(Stg_6_mult_41_n98), .B(Stg_6_mult_41_n79), .CI(
        Stg_6_mult_41_n91), .CO(Stg_6_mult_41_n47), .S(Stg_6_mult_41_n48) );
  FA_X1 Stg_6_mult_41_U32 ( .A(Stg_6_mult_41_n51), .B(Stg_6_mult_41_n85), .CI(
        Stg_6_mult_41_n48), .CO(Stg_6_mult_41_n45), .S(Stg_6_mult_41_n46) );
  HA_X1 Stg_6_mult_41_U31 ( .A(Stg_6_mult_41_n68), .B(Stg_6_mult_41_n78), .CO(
        Stg_6_mult_41_n43), .S(Stg_6_mult_41_n44) );
  FA_X1 Stg_6_mult_41_U30 ( .A(Stg_6_mult_41_n84), .B(Stg_6_mult_41_n97), .CI(
        Stg_6_mult_41_n90), .CO(Stg_6_mult_41_n41), .S(Stg_6_mult_41_n42) );
  FA_X1 Stg_6_mult_41_U29 ( .A(Stg_6_mult_41_n47), .B(Stg_6_mult_41_n44), .CI(
        Stg_6_mult_41_n42), .CO(Stg_6_mult_41_n39), .S(Stg_6_mult_41_n40) );
  FA_X1 Stg_6_mult_41_U26 ( .A(Stg_6_mult_41_n216), .B(Stg_6_mult_41_n83), 
        .CI(Stg_6_mult_41_n43), .CO(Stg_6_mult_41_n35), .S(Stg_6_mult_41_n36)
         );
  FA_X1 Stg_6_mult_41_U25 ( .A(Stg_6_mult_41_n41), .B(Stg_6_mult_41_n38), .CI(
        Stg_6_mult_41_n36), .CO(Stg_6_mult_41_n33), .S(Stg_6_mult_41_n34) );
  FA_X1 Stg_6_mult_41_U23 ( .A(Stg_6_mult_41_n76), .B(Stg_6_mult_41_n82), .CI(
        Stg_6_mult_41_n212), .CO(Stg_6_mult_41_n29), .S(Stg_6_mult_41_n30) );
  FA_X1 Stg_6_mult_41_U22 ( .A(Stg_6_mult_41_n35), .B(Stg_6_mult_41_n37), .CI(
        Stg_6_mult_41_n30), .CO(Stg_6_mult_41_n27), .S(Stg_6_mult_41_n28) );
  FA_X1 Stg_6_mult_41_U21 ( .A(Stg_6_mult_41_n81), .B(Stg_6_mult_41_n31), .CI(
        Stg_6_mult_41_n213), .CO(Stg_6_mult_41_n25), .S(Stg_6_mult_41_n26) );
  FA_X1 Stg_6_mult_41_U20 ( .A(Stg_6_mult_41_n29), .B(Stg_6_mult_41_n75), .CI(
        Stg_6_mult_41_n26), .CO(Stg_6_mult_41_n23), .S(Stg_6_mult_41_n24) );
  FA_X1 Stg_6_mult_41_U18 ( .A(Stg_6_mult_41_n207), .B(Stg_6_mult_41_n74), 
        .CI(Stg_6_mult_41_n25), .CO(Stg_6_mult_41_n19), .S(Stg_6_mult_41_n20)
         );
  FA_X1 Stg_6_mult_41_U17 ( .A(Stg_6_mult_41_n73), .B(Stg_6_mult_41_n21), .CI(
        Stg_6_mult_41_n208), .CO(Stg_6_mult_41_n17), .S(Stg_6_mult_41_n18) );
  FA_X1 Stg_6_mult_41_U8 ( .A(Stg_6_mult_41_n34), .B(Stg_6_mult_41_n39), .CI(
        Stg_6_mult_41_n201), .CO(Stg_6_mult_41_n7), .S(Stg_6_mult_partial_8_)
         );
  FA_X1 Stg_6_mult_41_U7 ( .A(Stg_6_mult_41_n28), .B(Stg_6_mult_41_n33), .CI(
        Stg_6_mult_41_n7), .CO(Stg_6_mult_41_n6), .S(Stg_6_mult_partial_9_) );
  FA_X1 Stg_6_mult_41_U6 ( .A(Stg_6_mult_41_n24), .B(Stg_6_mult_41_n27), .CI(
        Stg_6_mult_41_n6), .CO(Stg_6_mult_41_n5), .S(Stg_6_mult_partial_10_)
         );
  FA_X1 Stg_6_mult_41_U5 ( .A(Stg_6_mult_41_n20), .B(Stg_6_mult_41_n23), .CI(
        Stg_6_mult_41_n5), .CO(Stg_6_mult_41_n4), .S(Stg_6_mult_partial_11_)
         );
  FA_X1 Stg_6_mult_41_U4 ( .A(Stg_6_mult_41_n19), .B(Stg_6_mult_41_n18), .CI(
        Stg_6_mult_41_n4), .CO(Stg_6_mult_41_n3), .S(Stg_6_mult_partial_12_)
         );
  FA_X1 Stg_6_mult_41_U3 ( .A(Stg_6_mult_41_n17), .B(Stg_6_mult_41_n202), .CI(
        Stg_6_mult_41_n3), .CO(Stg_6_mult_41_n2), .S(Stg_6_mult_partial_13_)
         );
  FA_X1 Stg_6_mult_41_U2 ( .A(Stg_6_mult_41_n203), .B(Stg_6_mult_41_n15), .CI(
        Stg_6_mult_41_n2), .CO(Stg_6_mult_41_n1), .S(Stg_6_mult_partial_14_)
         );
  XOR2_X1 Stg_6_add_42_U2 ( .A(DIN_A_s_6__0_), .B(Stg_6_mult_partial_8_), .Z(
        DIN_A_s_7__0_) );
  AND2_X1 Stg_6_add_42_U1 ( .A1(DIN_A_s_6__0_), .A2(Stg_6_mult_partial_8_), 
        .ZN(Stg_6_add_42_n1) );
  FA_X1 Stg_6_add_42_U1_1 ( .A(Stg_6_mult_partial_9_), .B(DIN_A_s_6__1_), .CI(
        Stg_6_add_42_n1), .CO(Stg_6_add_42_carry[2]), .S(DIN_A_s_7__1_) );
  FA_X1 Stg_6_add_42_U1_2 ( .A(Stg_6_mult_partial_10_), .B(DIN_A_s_6__2_), 
        .CI(Stg_6_add_42_carry[2]), .CO(Stg_6_add_42_carry[3]), .S(
        DIN_A_s_7__2_) );
  FA_X1 Stg_6_add_42_U1_3 ( .A(Stg_6_mult_partial_11_), .B(DIN_A_s_6__3_), 
        .CI(Stg_6_add_42_carry[3]), .CO(Stg_6_add_42_carry[4]), .S(
        DIN_A_s_7__3_) );
  FA_X1 Stg_6_add_42_U1_4 ( .A(Stg_6_mult_partial_12_), .B(DIN_A_s_6__4_), 
        .CI(Stg_6_add_42_carry[4]), .CO(Stg_6_add_42_carry[5]), .S(
        DIN_A_s_7__4_) );
  FA_X1 Stg_6_add_42_U1_5 ( .A(Stg_6_mult_partial_13_), .B(DIN_A_s_6__5_), 
        .CI(Stg_6_add_42_carry[5]), .CO(Stg_6_add_42_carry[6]), .S(
        DIN_A_s_7__5_) );
  FA_X1 Stg_6_add_42_U1_6 ( .A(Stg_6_mult_partial_14_), .B(DIN_A_s_6__6_), 
        .CI(Stg_6_add_42_carry[6]), .CO(Stg_6_add_42_carry[7]), .S(
        DIN_A_s_7__6_) );
  FA_X1 Stg_6_add_42_U1_7 ( .A(Stg_6_mult_partial_15_), .B(DIN_A_s_6__7_), 
        .CI(Stg_6_add_42_carry[7]), .S(DIN_A_s_7__7_) );
  INV_X1 Stg_7_REGn_regn_7_U6 ( .A(RST_n), .ZN(Stg_7_REGn_regn_7_n2) );
  INV_X1 Stg_7_REGn_regn_7_U5 ( .A(n4), .ZN(Stg_7_REGn_regn_7_n1) );
  AOI22_X1 Stg_7_REGn_regn_7_U4 ( .A1(n4), .A2(DIN_R_s_7__7_), .B1(
        DIN_R_s_8__7_), .B2(Stg_7_REGn_regn_7_n1), .ZN(Stg_7_REGn_regn_7_n6)
         );
  NOR2_X1 Stg_7_REGn_regn_7_U3 ( .A1(Stg_7_REGn_regn_7_n6), .A2(
        Stg_7_REGn_regn_7_n2), .ZN(Stg_7_REGn_regn_7_n5) );
  DFF_X1 Stg_7_REGn_regn_7_Q_reg ( .D(Stg_7_REGn_regn_7_n5), .CK(CLK), .Q(
        DIN_R_s_8__7_) );
  INV_X1 Stg_7_REGn_regn_6_U6 ( .A(RST_n), .ZN(Stg_7_REGn_regn_6_n2) );
  INV_X1 Stg_7_REGn_regn_6_U5 ( .A(n4), .ZN(Stg_7_REGn_regn_6_n1) );
  AOI22_X1 Stg_7_REGn_regn_6_U4 ( .A1(n4), .A2(DIN_R_s_7__6_), .B1(
        DIN_R_s_8__6_), .B2(Stg_7_REGn_regn_6_n1), .ZN(Stg_7_REGn_regn_6_n6)
         );
  NOR2_X1 Stg_7_REGn_regn_6_U3 ( .A1(Stg_7_REGn_regn_6_n6), .A2(
        Stg_7_REGn_regn_6_n2), .ZN(Stg_7_REGn_regn_6_n5) );
  DFF_X1 Stg_7_REGn_regn_6_Q_reg ( .D(Stg_7_REGn_regn_6_n5), .CK(CLK), .Q(
        DIN_R_s_8__6_) );
  INV_X1 Stg_7_REGn_regn_5_U6 ( .A(RST_n), .ZN(Stg_7_REGn_regn_5_n2) );
  INV_X1 Stg_7_REGn_regn_5_U5 ( .A(n4), .ZN(Stg_7_REGn_regn_5_n1) );
  AOI22_X1 Stg_7_REGn_regn_5_U4 ( .A1(n4), .A2(DIN_R_s_7__5_), .B1(
        DIN_R_s_8__5_), .B2(Stg_7_REGn_regn_5_n1), .ZN(Stg_7_REGn_regn_5_n6)
         );
  NOR2_X1 Stg_7_REGn_regn_5_U3 ( .A1(Stg_7_REGn_regn_5_n6), .A2(
        Stg_7_REGn_regn_5_n2), .ZN(Stg_7_REGn_regn_5_n5) );
  DFF_X1 Stg_7_REGn_regn_5_Q_reg ( .D(Stg_7_REGn_regn_5_n5), .CK(CLK), .Q(
        DIN_R_s_8__5_) );
  INV_X1 Stg_7_REGn_regn_4_U6 ( .A(RST_n), .ZN(Stg_7_REGn_regn_4_n2) );
  INV_X1 Stg_7_REGn_regn_4_U5 ( .A(n4), .ZN(Stg_7_REGn_regn_4_n1) );
  AOI22_X1 Stg_7_REGn_regn_4_U4 ( .A1(n4), .A2(DIN_R_s_7__4_), .B1(
        DIN_R_s_8__4_), .B2(Stg_7_REGn_regn_4_n1), .ZN(Stg_7_REGn_regn_4_n6)
         );
  NOR2_X1 Stg_7_REGn_regn_4_U3 ( .A1(Stg_7_REGn_regn_4_n6), .A2(
        Stg_7_REGn_regn_4_n2), .ZN(Stg_7_REGn_regn_4_n5) );
  DFF_X1 Stg_7_REGn_regn_4_Q_reg ( .D(Stg_7_REGn_regn_4_n5), .CK(CLK), .Q(
        DIN_R_s_8__4_) );
  INV_X1 Stg_7_REGn_regn_3_U6 ( .A(RST_n), .ZN(Stg_7_REGn_regn_3_n2) );
  INV_X1 Stg_7_REGn_regn_3_U5 ( .A(n4), .ZN(Stg_7_REGn_regn_3_n1) );
  AOI22_X1 Stg_7_REGn_regn_3_U4 ( .A1(n4), .A2(DIN_R_s_7__3_), .B1(
        DIN_R_s_8__3_), .B2(Stg_7_REGn_regn_3_n1), .ZN(Stg_7_REGn_regn_3_n6)
         );
  NOR2_X1 Stg_7_REGn_regn_3_U3 ( .A1(Stg_7_REGn_regn_3_n6), .A2(
        Stg_7_REGn_regn_3_n2), .ZN(Stg_7_REGn_regn_3_n5) );
  DFF_X1 Stg_7_REGn_regn_3_Q_reg ( .D(Stg_7_REGn_regn_3_n5), .CK(CLK), .Q(
        DIN_R_s_8__3_) );
  INV_X1 Stg_7_REGn_regn_2_U6 ( .A(RST_n), .ZN(Stg_7_REGn_regn_2_n2) );
  INV_X1 Stg_7_REGn_regn_2_U5 ( .A(n4), .ZN(Stg_7_REGn_regn_2_n1) );
  AOI22_X1 Stg_7_REGn_regn_2_U4 ( .A1(n4), .A2(DIN_R_s_7__2_), .B1(
        DIN_R_s_8__2_), .B2(Stg_7_REGn_regn_2_n1), .ZN(Stg_7_REGn_regn_2_n6)
         );
  NOR2_X1 Stg_7_REGn_regn_2_U3 ( .A1(Stg_7_REGn_regn_2_n6), .A2(
        Stg_7_REGn_regn_2_n2), .ZN(Stg_7_REGn_regn_2_n5) );
  DFF_X1 Stg_7_REGn_regn_2_Q_reg ( .D(Stg_7_REGn_regn_2_n5), .CK(CLK), .Q(
        DIN_R_s_8__2_) );
  INV_X1 Stg_7_REGn_regn_1_U6 ( .A(RST_n), .ZN(Stg_7_REGn_regn_1_n2) );
  INV_X1 Stg_7_REGn_regn_1_U5 ( .A(n4), .ZN(Stg_7_REGn_regn_1_n1) );
  AOI22_X1 Stg_7_REGn_regn_1_U4 ( .A1(n4), .A2(DIN_R_s_7__1_), .B1(
        DIN_R_s_8__1_), .B2(Stg_7_REGn_regn_1_n1), .ZN(Stg_7_REGn_regn_1_n6)
         );
  NOR2_X1 Stg_7_REGn_regn_1_U3 ( .A1(Stg_7_REGn_regn_1_n6), .A2(
        Stg_7_REGn_regn_1_n2), .ZN(Stg_7_REGn_regn_1_n5) );
  DFF_X1 Stg_7_REGn_regn_1_Q_reg ( .D(Stg_7_REGn_regn_1_n5), .CK(CLK), .Q(
        DIN_R_s_8__1_) );
  INV_X1 Stg_7_REGn_regn_0_U6 ( .A(RST_n), .ZN(Stg_7_REGn_regn_0_n2) );
  INV_X1 Stg_7_REGn_regn_0_U5 ( .A(n4), .ZN(Stg_7_REGn_regn_0_n1) );
  AOI22_X1 Stg_7_REGn_regn_0_U4 ( .A1(n4), .A2(DIN_R_s_7__0_), .B1(
        DIN_R_s_8__0_), .B2(Stg_7_REGn_regn_0_n1), .ZN(Stg_7_REGn_regn_0_n6)
         );
  NOR2_X1 Stg_7_REGn_regn_0_U3 ( .A1(Stg_7_REGn_regn_0_n6), .A2(
        Stg_7_REGn_regn_0_n2), .ZN(Stg_7_REGn_regn_0_n5) );
  DFF_X1 Stg_7_REGn_regn_0_Q_reg ( .D(Stg_7_REGn_regn_0_n5), .CK(CLK), .Q(
        DIN_R_s_8__0_) );
  XNOR2_X1 Stg_7_mult_41_U263 ( .A(H8[3]), .B(DIN_R_s_8__1_), .ZN(
        Stg_7_mult_41_n275) );
  NAND2_X1 Stg_7_mult_41_U262 ( .A1(DIN_R_s_8__1_), .A2(Stg_7_mult_41_n217), 
        .ZN(Stg_7_mult_41_n221) );
  XNOR2_X1 Stg_7_mult_41_U261 ( .A(H8[4]), .B(DIN_R_s_8__1_), .ZN(
        Stg_7_mult_41_n220) );
  OAI22_X1 Stg_7_mult_41_U260 ( .A1(Stg_7_mult_41_n275), .A2(
        Stg_7_mult_41_n221), .B1(Stg_7_mult_41_n220), .B2(Stg_7_mult_41_n217), 
        .ZN(Stg_7_mult_41_n100) );
  XNOR2_X1 Stg_7_mult_41_U259 ( .A(H8[2]), .B(DIN_R_s_8__1_), .ZN(
        Stg_7_mult_41_n255) );
  OAI22_X1 Stg_7_mult_41_U258 ( .A1(Stg_7_mult_41_n255), .A2(
        Stg_7_mult_41_n221), .B1(Stg_7_mult_41_n275), .B2(Stg_7_mult_41_n217), 
        .ZN(Stg_7_mult_41_n101) );
  XNOR2_X1 Stg_7_mult_41_U257 ( .A(H8[6]), .B(DIN_R_s_8__7_), .ZN(
        Stg_7_mult_41_n264) );
  XNOR2_X1 Stg_7_mult_41_U256 ( .A(Stg_7_mult_41_n204), .B(DIN_R_s_8__6_), 
        .ZN(Stg_7_mult_41_n274) );
  NAND2_X1 Stg_7_mult_41_U255 ( .A1(Stg_7_mult_41_n256), .A2(
        Stg_7_mult_41_n274), .ZN(Stg_7_mult_41_n258) );
  XNOR2_X1 Stg_7_mult_41_U254 ( .A(H8[7]), .B(DIN_R_s_8__7_), .ZN(
        Stg_7_mult_41_n266) );
  OAI22_X1 Stg_7_mult_41_U253 ( .A1(Stg_7_mult_41_n264), .A2(
        Stg_7_mult_41_n258), .B1(Stg_7_mult_41_n256), .B2(Stg_7_mult_41_n266), 
        .ZN(Stg_7_mult_41_n15) );
  XNOR2_X1 Stg_7_mult_41_U252 ( .A(H8[6]), .B(DIN_R_s_8__5_), .ZN(
        Stg_7_mult_41_n243) );
  XNOR2_X1 Stg_7_mult_41_U251 ( .A(Stg_7_mult_41_n209), .B(DIN_R_s_8__4_), 
        .ZN(Stg_7_mult_41_n273) );
  NAND2_X1 Stg_7_mult_41_U250 ( .A1(Stg_7_mult_41_n235), .A2(
        Stg_7_mult_41_n273), .ZN(Stg_7_mult_41_n237) );
  XNOR2_X1 Stg_7_mult_41_U249 ( .A(H8[7]), .B(DIN_R_s_8__5_), .ZN(
        Stg_7_mult_41_n245) );
  OAI22_X1 Stg_7_mult_41_U248 ( .A1(Stg_7_mult_41_n243), .A2(
        Stg_7_mult_41_n237), .B1(Stg_7_mult_41_n235), .B2(Stg_7_mult_41_n245), 
        .ZN(Stg_7_mult_41_n21) );
  XNOR2_X1 Stg_7_mult_41_U247 ( .A(H8[6]), .B(DIN_R_s_8__3_), .ZN(
        Stg_7_mult_41_n271) );
  XOR2_X1 Stg_7_mult_41_U246 ( .A(DIN_R_s_8__2_), .B(DIN_R_s_8__1_), .Z(
        Stg_7_mult_41_n253) );
  XNOR2_X1 Stg_7_mult_41_U245 ( .A(Stg_7_mult_41_n214), .B(DIN_R_s_8__2_), 
        .ZN(Stg_7_mult_41_n272) );
  NAND2_X1 Stg_7_mult_41_U244 ( .A1(Stg_7_mult_41_n215), .A2(
        Stg_7_mult_41_n272), .ZN(Stg_7_mult_41_n227) );
  XNOR2_X1 Stg_7_mult_41_U243 ( .A(H8[7]), .B(DIN_R_s_8__3_), .ZN(
        Stg_7_mult_41_n234) );
  OAI22_X1 Stg_7_mult_41_U242 ( .A1(Stg_7_mult_41_n271), .A2(
        Stg_7_mult_41_n227), .B1(Stg_7_mult_41_n215), .B2(Stg_7_mult_41_n234), 
        .ZN(Stg_7_mult_41_n31) );
  XNOR2_X1 Stg_7_mult_41_U241 ( .A(H8[1]), .B(DIN_R_s_8__7_), .ZN(
        Stg_7_mult_41_n259) );
  XNOR2_X1 Stg_7_mult_41_U240 ( .A(H8[2]), .B(DIN_R_s_8__7_), .ZN(
        Stg_7_mult_41_n260) );
  OAI22_X1 Stg_7_mult_41_U239 ( .A1(Stg_7_mult_41_n259), .A2(
        Stg_7_mult_41_n258), .B1(Stg_7_mult_41_n256), .B2(Stg_7_mult_41_n260), 
        .ZN(Stg_7_mult_41_n269) );
  XNOR2_X1 Stg_7_mult_41_U238 ( .A(H8[5]), .B(DIN_R_s_8__3_), .ZN(
        Stg_7_mult_41_n232) );
  OAI22_X1 Stg_7_mult_41_U237 ( .A1(Stg_7_mult_41_n232), .A2(
        Stg_7_mult_41_n227), .B1(Stg_7_mult_41_n215), .B2(Stg_7_mult_41_n271), 
        .ZN(Stg_7_mult_41_n270) );
  OR2_X1 Stg_7_mult_41_U236 ( .A1(Stg_7_mult_41_n269), .A2(Stg_7_mult_41_n270), 
        .ZN(Stg_7_mult_41_n37) );
  XNOR2_X1 Stg_7_mult_41_U235 ( .A(Stg_7_mult_41_n269), .B(Stg_7_mult_41_n270), 
        .ZN(Stg_7_mult_41_n38) );
  OR3_X1 Stg_7_mult_41_U234 ( .A1(Stg_7_mult_41_n256), .A2(H8[0]), .A3(
        Stg_7_mult_41_n204), .ZN(Stg_7_mult_41_n268) );
  OAI21_X1 Stg_7_mult_41_U233 ( .B1(Stg_7_mult_41_n204), .B2(
        Stg_7_mult_41_n258), .A(Stg_7_mult_41_n268), .ZN(Stg_7_mult_41_n68) );
  OR3_X1 Stg_7_mult_41_U232 ( .A1(Stg_7_mult_41_n235), .A2(H8[0]), .A3(
        Stg_7_mult_41_n209), .ZN(Stg_7_mult_41_n267) );
  OAI21_X1 Stg_7_mult_41_U231 ( .B1(Stg_7_mult_41_n209), .B2(
        Stg_7_mult_41_n237), .A(Stg_7_mult_41_n267), .ZN(Stg_7_mult_41_n69) );
  OAI22_X1 Stg_7_mult_41_U230 ( .A1(Stg_7_mult_41_n266), .A2(
        Stg_7_mult_41_n256), .B1(Stg_7_mult_41_n258), .B2(Stg_7_mult_41_n266), 
        .ZN(Stg_7_mult_41_n265) );
  XNOR2_X1 Stg_7_mult_41_U229 ( .A(H8[5]), .B(DIN_R_s_8__7_), .ZN(
        Stg_7_mult_41_n263) );
  OAI22_X1 Stg_7_mult_41_U228 ( .A1(Stg_7_mult_41_n263), .A2(
        Stg_7_mult_41_n258), .B1(Stg_7_mult_41_n256), .B2(Stg_7_mult_41_n264), 
        .ZN(Stg_7_mult_41_n73) );
  XNOR2_X1 Stg_7_mult_41_U227 ( .A(H8[4]), .B(DIN_R_s_8__7_), .ZN(
        Stg_7_mult_41_n262) );
  OAI22_X1 Stg_7_mult_41_U226 ( .A1(Stg_7_mult_41_n262), .A2(
        Stg_7_mult_41_n258), .B1(Stg_7_mult_41_n256), .B2(Stg_7_mult_41_n263), 
        .ZN(Stg_7_mult_41_n74) );
  XNOR2_X1 Stg_7_mult_41_U225 ( .A(H8[3]), .B(DIN_R_s_8__7_), .ZN(
        Stg_7_mult_41_n261) );
  OAI22_X1 Stg_7_mult_41_U224 ( .A1(Stg_7_mult_41_n261), .A2(
        Stg_7_mult_41_n258), .B1(Stg_7_mult_41_n256), .B2(Stg_7_mult_41_n262), 
        .ZN(Stg_7_mult_41_n75) );
  OAI22_X1 Stg_7_mult_41_U223 ( .A1(Stg_7_mult_41_n260), .A2(
        Stg_7_mult_41_n258), .B1(Stg_7_mult_41_n256), .B2(Stg_7_mult_41_n261), 
        .ZN(Stg_7_mult_41_n76) );
  XNOR2_X1 Stg_7_mult_41_U222 ( .A(H8[0]), .B(DIN_R_s_8__7_), .ZN(
        Stg_7_mult_41_n257) );
  OAI22_X1 Stg_7_mult_41_U221 ( .A1(Stg_7_mult_41_n257), .A2(
        Stg_7_mult_41_n258), .B1(Stg_7_mult_41_n256), .B2(Stg_7_mult_41_n259), 
        .ZN(Stg_7_mult_41_n78) );
  NOR2_X1 Stg_7_mult_41_U220 ( .A1(Stg_7_mult_41_n256), .A2(Stg_7_mult_41_n219), .ZN(Stg_7_mult_41_n79) );
  OAI22_X1 Stg_7_mult_41_U219 ( .A1(H8[1]), .A2(Stg_7_mult_41_n221), .B1(
        Stg_7_mult_41_n255), .B2(Stg_7_mult_41_n217), .ZN(Stg_7_mult_41_n254)
         );
  NAND3_X1 Stg_7_mult_41_U218 ( .A1(Stg_7_mult_41_n253), .A2(
        Stg_7_mult_41_n219), .A3(DIN_R_s_8__3_), .ZN(Stg_7_mult_41_n252) );
  OAI21_X1 Stg_7_mult_41_U217 ( .B1(Stg_7_mult_41_n214), .B2(
        Stg_7_mult_41_n227), .A(Stg_7_mult_41_n252), .ZN(Stg_7_mult_41_n251)
         );
  AOI222_X1 Stg_7_mult_41_U216 ( .A1(Stg_7_mult_41_n197), .A2(
        Stg_7_mult_41_n56), .B1(Stg_7_mult_41_n251), .B2(Stg_7_mult_41_n197), 
        .C1(Stg_7_mult_41_n251), .C2(Stg_7_mult_41_n56), .ZN(
        Stg_7_mult_41_n250) );
  AOI222_X1 Stg_7_mult_41_U215 ( .A1(Stg_7_mult_41_n211), .A2(
        Stg_7_mult_41_n54), .B1(Stg_7_mult_41_n211), .B2(Stg_7_mult_41_n55), 
        .C1(Stg_7_mult_41_n55), .C2(Stg_7_mult_41_n54), .ZN(Stg_7_mult_41_n249) );
  AOI222_X1 Stg_7_mult_41_U214 ( .A1(Stg_7_mult_41_n210), .A2(
        Stg_7_mult_41_n50), .B1(Stg_7_mult_41_n210), .B2(Stg_7_mult_41_n53), 
        .C1(Stg_7_mult_41_n53), .C2(Stg_7_mult_41_n50), .ZN(Stg_7_mult_41_n248) );
  AOI222_X1 Stg_7_mult_41_U213 ( .A1(Stg_7_mult_41_n206), .A2(
        Stg_7_mult_41_n46), .B1(Stg_7_mult_41_n206), .B2(Stg_7_mult_41_n49), 
        .C1(Stg_7_mult_41_n49), .C2(Stg_7_mult_41_n46), .ZN(Stg_7_mult_41_n247) );
  AOI222_X1 Stg_7_mult_41_U212 ( .A1(Stg_7_mult_41_n205), .A2(
        Stg_7_mult_41_n40), .B1(Stg_7_mult_41_n205), .B2(Stg_7_mult_41_n45), 
        .C1(Stg_7_mult_41_n45), .C2(Stg_7_mult_41_n40), .ZN(Stg_7_mult_41_n246) );
  OAI22_X1 Stg_7_mult_41_U211 ( .A1(Stg_7_mult_41_n245), .A2(
        Stg_7_mult_41_n235), .B1(Stg_7_mult_41_n237), .B2(Stg_7_mult_41_n245), 
        .ZN(Stg_7_mult_41_n244) );
  XNOR2_X1 Stg_7_mult_41_U210 ( .A(H8[5]), .B(DIN_R_s_8__5_), .ZN(
        Stg_7_mult_41_n242) );
  OAI22_X1 Stg_7_mult_41_U209 ( .A1(Stg_7_mult_41_n242), .A2(
        Stg_7_mult_41_n237), .B1(Stg_7_mult_41_n235), .B2(Stg_7_mult_41_n243), 
        .ZN(Stg_7_mult_41_n81) );
  XNOR2_X1 Stg_7_mult_41_U208 ( .A(H8[4]), .B(DIN_R_s_8__5_), .ZN(
        Stg_7_mult_41_n241) );
  OAI22_X1 Stg_7_mult_41_U207 ( .A1(Stg_7_mult_41_n241), .A2(
        Stg_7_mult_41_n237), .B1(Stg_7_mult_41_n235), .B2(Stg_7_mult_41_n242), 
        .ZN(Stg_7_mult_41_n82) );
  XNOR2_X1 Stg_7_mult_41_U206 ( .A(H8[3]), .B(DIN_R_s_8__5_), .ZN(
        Stg_7_mult_41_n240) );
  OAI22_X1 Stg_7_mult_41_U205 ( .A1(Stg_7_mult_41_n240), .A2(
        Stg_7_mult_41_n237), .B1(Stg_7_mult_41_n235), .B2(Stg_7_mult_41_n241), 
        .ZN(Stg_7_mult_41_n83) );
  XNOR2_X1 Stg_7_mult_41_U204 ( .A(H8[2]), .B(DIN_R_s_8__5_), .ZN(
        Stg_7_mult_41_n239) );
  OAI22_X1 Stg_7_mult_41_U203 ( .A1(Stg_7_mult_41_n239), .A2(
        Stg_7_mult_41_n237), .B1(Stg_7_mult_41_n235), .B2(Stg_7_mult_41_n240), 
        .ZN(Stg_7_mult_41_n84) );
  XNOR2_X1 Stg_7_mult_41_U202 ( .A(H8[1]), .B(DIN_R_s_8__5_), .ZN(
        Stg_7_mult_41_n238) );
  OAI22_X1 Stg_7_mult_41_U201 ( .A1(Stg_7_mult_41_n238), .A2(
        Stg_7_mult_41_n237), .B1(Stg_7_mult_41_n235), .B2(Stg_7_mult_41_n239), 
        .ZN(Stg_7_mult_41_n85) );
  XNOR2_X1 Stg_7_mult_41_U200 ( .A(H8[0]), .B(DIN_R_s_8__5_), .ZN(
        Stg_7_mult_41_n236) );
  OAI22_X1 Stg_7_mult_41_U199 ( .A1(Stg_7_mult_41_n236), .A2(
        Stg_7_mult_41_n237), .B1(Stg_7_mult_41_n235), .B2(Stg_7_mult_41_n238), 
        .ZN(Stg_7_mult_41_n86) );
  NOR2_X1 Stg_7_mult_41_U198 ( .A1(Stg_7_mult_41_n235), .A2(Stg_7_mult_41_n219), .ZN(Stg_7_mult_41_n87) );
  OAI22_X1 Stg_7_mult_41_U197 ( .A1(Stg_7_mult_41_n234), .A2(
        Stg_7_mult_41_n215), .B1(Stg_7_mult_41_n227), .B2(Stg_7_mult_41_n234), 
        .ZN(Stg_7_mult_41_n233) );
  XNOR2_X1 Stg_7_mult_41_U196 ( .A(H8[4]), .B(DIN_R_s_8__3_), .ZN(
        Stg_7_mult_41_n231) );
  OAI22_X1 Stg_7_mult_41_U195 ( .A1(Stg_7_mult_41_n231), .A2(
        Stg_7_mult_41_n227), .B1(Stg_7_mult_41_n215), .B2(Stg_7_mult_41_n232), 
        .ZN(Stg_7_mult_41_n90) );
  XNOR2_X1 Stg_7_mult_41_U194 ( .A(H8[3]), .B(DIN_R_s_8__3_), .ZN(
        Stg_7_mult_41_n230) );
  OAI22_X1 Stg_7_mult_41_U193 ( .A1(Stg_7_mult_41_n230), .A2(
        Stg_7_mult_41_n227), .B1(Stg_7_mult_41_n215), .B2(Stg_7_mult_41_n231), 
        .ZN(Stg_7_mult_41_n91) );
  XNOR2_X1 Stg_7_mult_41_U192 ( .A(H8[2]), .B(DIN_R_s_8__3_), .ZN(
        Stg_7_mult_41_n229) );
  OAI22_X1 Stg_7_mult_41_U191 ( .A1(Stg_7_mult_41_n229), .A2(
        Stg_7_mult_41_n227), .B1(Stg_7_mult_41_n215), .B2(Stg_7_mult_41_n230), 
        .ZN(Stg_7_mult_41_n92) );
  XNOR2_X1 Stg_7_mult_41_U190 ( .A(H8[1]), .B(DIN_R_s_8__3_), .ZN(
        Stg_7_mult_41_n228) );
  OAI22_X1 Stg_7_mult_41_U189 ( .A1(Stg_7_mult_41_n228), .A2(
        Stg_7_mult_41_n227), .B1(Stg_7_mult_41_n215), .B2(Stg_7_mult_41_n229), 
        .ZN(Stg_7_mult_41_n93) );
  XNOR2_X1 Stg_7_mult_41_U188 ( .A(H8[0]), .B(DIN_R_s_8__3_), .ZN(
        Stg_7_mult_41_n226) );
  OAI22_X1 Stg_7_mult_41_U187 ( .A1(Stg_7_mult_41_n226), .A2(
        Stg_7_mult_41_n227), .B1(Stg_7_mult_41_n215), .B2(Stg_7_mult_41_n228), 
        .ZN(Stg_7_mult_41_n94) );
  XNOR2_X1 Stg_7_mult_41_U186 ( .A(H8[7]), .B(DIN_R_s_8__1_), .ZN(
        Stg_7_mult_41_n224) );
  OAI22_X1 Stg_7_mult_41_U185 ( .A1(Stg_7_mult_41_n217), .A2(
        Stg_7_mult_41_n224), .B1(Stg_7_mult_41_n221), .B2(Stg_7_mult_41_n224), 
        .ZN(Stg_7_mult_41_n225) );
  XNOR2_X1 Stg_7_mult_41_U184 ( .A(H8[6]), .B(DIN_R_s_8__1_), .ZN(
        Stg_7_mult_41_n223) );
  OAI22_X1 Stg_7_mult_41_U183 ( .A1(Stg_7_mult_41_n223), .A2(
        Stg_7_mult_41_n221), .B1(Stg_7_mult_41_n224), .B2(Stg_7_mult_41_n217), 
        .ZN(Stg_7_mult_41_n97) );
  XNOR2_X1 Stg_7_mult_41_U182 ( .A(H8[5]), .B(DIN_R_s_8__1_), .ZN(
        Stg_7_mult_41_n222) );
  OAI22_X1 Stg_7_mult_41_U181 ( .A1(Stg_7_mult_41_n222), .A2(
        Stg_7_mult_41_n221), .B1(Stg_7_mult_41_n223), .B2(Stg_7_mult_41_n217), 
        .ZN(Stg_7_mult_41_n98) );
  OAI22_X1 Stg_7_mult_41_U180 ( .A1(Stg_7_mult_41_n220), .A2(
        Stg_7_mult_41_n221), .B1(Stg_7_mult_41_n222), .B2(Stg_7_mult_41_n217), 
        .ZN(Stg_7_mult_41_n99) );
  INV_X1 Stg_7_mult_41_U179 ( .A(DIN_R_s_8__7_), .ZN(Stg_7_mult_41_n204) );
  INV_X1 Stg_7_mult_41_U178 ( .A(H8[1]), .ZN(Stg_7_mult_41_n218) );
  AND3_X1 Stg_7_mult_41_U177 ( .A1(Stg_7_mult_41_n254), .A2(Stg_7_mult_41_n218), .A3(DIN_R_s_8__1_), .ZN(Stg_7_mult_41_n199) );
  AND2_X1 Stg_7_mult_41_U176 ( .A1(Stg_7_mult_41_n253), .A2(Stg_7_mult_41_n254), .ZN(Stg_7_mult_41_n198) );
  MUX2_X1 Stg_7_mult_41_U175 ( .A(Stg_7_mult_41_n198), .B(Stg_7_mult_41_n199), 
        .S(Stg_7_mult_41_n219), .Z(Stg_7_mult_41_n197) );
  INV_X1 Stg_7_mult_41_U174 ( .A(H8[0]), .ZN(Stg_7_mult_41_n219) );
  INV_X1 Stg_7_mult_41_U173 ( .A(DIN_R_s_8__5_), .ZN(Stg_7_mult_41_n209) );
  INV_X1 Stg_7_mult_41_U172 ( .A(DIN_R_s_8__3_), .ZN(Stg_7_mult_41_n214) );
  INV_X1 Stg_7_mult_41_U171 ( .A(DIN_R_s_8__0_), .ZN(Stg_7_mult_41_n217) );
  XOR2_X1 Stg_7_mult_41_U170 ( .A(DIN_R_s_8__6_), .B(Stg_7_mult_41_n209), .Z(
        Stg_7_mult_41_n256) );
  XOR2_X1 Stg_7_mult_41_U169 ( .A(DIN_R_s_8__4_), .B(Stg_7_mult_41_n214), .Z(
        Stg_7_mult_41_n235) );
  INV_X1 Stg_7_mult_41_U168 ( .A(Stg_7_mult_41_n233), .ZN(Stg_7_mult_41_n213)
         );
  INV_X1 Stg_7_mult_41_U167 ( .A(Stg_7_mult_41_n21), .ZN(Stg_7_mult_41_n207)
         );
  INV_X1 Stg_7_mult_41_U166 ( .A(Stg_7_mult_41_n244), .ZN(Stg_7_mult_41_n208)
         );
  INV_X1 Stg_7_mult_41_U165 ( .A(Stg_7_mult_41_n246), .ZN(Stg_7_mult_41_n201)
         );
  INV_X1 Stg_7_mult_41_U164 ( .A(Stg_7_mult_41_n31), .ZN(Stg_7_mult_41_n212)
         );
  INV_X1 Stg_7_mult_41_U163 ( .A(Stg_7_mult_41_n225), .ZN(Stg_7_mult_41_n216)
         );
  INV_X1 Stg_7_mult_41_U162 ( .A(Stg_7_mult_41_n265), .ZN(Stg_7_mult_41_n203)
         );
  INV_X1 Stg_7_mult_41_U161 ( .A(Stg_7_mult_41_n253), .ZN(Stg_7_mult_41_n215)
         );
  INV_X1 Stg_7_mult_41_U160 ( .A(Stg_7_mult_41_n250), .ZN(Stg_7_mult_41_n211)
         );
  INV_X1 Stg_7_mult_41_U159 ( .A(Stg_7_mult_41_n249), .ZN(Stg_7_mult_41_n210)
         );
  INV_X1 Stg_7_mult_41_U158 ( .A(Stg_7_mult_41_n248), .ZN(Stg_7_mult_41_n206)
         );
  INV_X1 Stg_7_mult_41_U157 ( .A(Stg_7_mult_41_n247), .ZN(Stg_7_mult_41_n205)
         );
  INV_X1 Stg_7_mult_41_U156 ( .A(Stg_7_mult_41_n15), .ZN(Stg_7_mult_41_n202)
         );
  INV_X1 Stg_7_mult_41_U155 ( .A(Stg_7_mult_41_n1), .ZN(Stg_7_mult_partial_15_) );
  HA_X1 Stg_7_mult_41_U37 ( .A(Stg_7_mult_41_n94), .B(Stg_7_mult_41_n101), 
        .CO(Stg_7_mult_41_n55), .S(Stg_7_mult_41_n56) );
  FA_X1 Stg_7_mult_41_U36 ( .A(Stg_7_mult_41_n100), .B(Stg_7_mult_41_n87), 
        .CI(Stg_7_mult_41_n93), .CO(Stg_7_mult_41_n53), .S(Stg_7_mult_41_n54)
         );
  HA_X1 Stg_7_mult_41_U35 ( .A(Stg_7_mult_41_n69), .B(Stg_7_mult_41_n86), .CO(
        Stg_7_mult_41_n51), .S(Stg_7_mult_41_n52) );
  FA_X1 Stg_7_mult_41_U34 ( .A(Stg_7_mult_41_n92), .B(Stg_7_mult_41_n99), .CI(
        Stg_7_mult_41_n52), .CO(Stg_7_mult_41_n49), .S(Stg_7_mult_41_n50) );
  FA_X1 Stg_7_mult_41_U33 ( .A(Stg_7_mult_41_n98), .B(Stg_7_mult_41_n79), .CI(
        Stg_7_mult_41_n91), .CO(Stg_7_mult_41_n47), .S(Stg_7_mult_41_n48) );
  FA_X1 Stg_7_mult_41_U32 ( .A(Stg_7_mult_41_n51), .B(Stg_7_mult_41_n85), .CI(
        Stg_7_mult_41_n48), .CO(Stg_7_mult_41_n45), .S(Stg_7_mult_41_n46) );
  HA_X1 Stg_7_mult_41_U31 ( .A(Stg_7_mult_41_n68), .B(Stg_7_mult_41_n78), .CO(
        Stg_7_mult_41_n43), .S(Stg_7_mult_41_n44) );
  FA_X1 Stg_7_mult_41_U30 ( .A(Stg_7_mult_41_n84), .B(Stg_7_mult_41_n97), .CI(
        Stg_7_mult_41_n90), .CO(Stg_7_mult_41_n41), .S(Stg_7_mult_41_n42) );
  FA_X1 Stg_7_mult_41_U29 ( .A(Stg_7_mult_41_n47), .B(Stg_7_mult_41_n44), .CI(
        Stg_7_mult_41_n42), .CO(Stg_7_mult_41_n39), .S(Stg_7_mult_41_n40) );
  FA_X1 Stg_7_mult_41_U26 ( .A(Stg_7_mult_41_n216), .B(Stg_7_mult_41_n83), 
        .CI(Stg_7_mult_41_n43), .CO(Stg_7_mult_41_n35), .S(Stg_7_mult_41_n36)
         );
  FA_X1 Stg_7_mult_41_U25 ( .A(Stg_7_mult_41_n41), .B(Stg_7_mult_41_n38), .CI(
        Stg_7_mult_41_n36), .CO(Stg_7_mult_41_n33), .S(Stg_7_mult_41_n34) );
  FA_X1 Stg_7_mult_41_U23 ( .A(Stg_7_mult_41_n76), .B(Stg_7_mult_41_n82), .CI(
        Stg_7_mult_41_n212), .CO(Stg_7_mult_41_n29), .S(Stg_7_mult_41_n30) );
  FA_X1 Stg_7_mult_41_U22 ( .A(Stg_7_mult_41_n35), .B(Stg_7_mult_41_n37), .CI(
        Stg_7_mult_41_n30), .CO(Stg_7_mult_41_n27), .S(Stg_7_mult_41_n28) );
  FA_X1 Stg_7_mult_41_U21 ( .A(Stg_7_mult_41_n81), .B(Stg_7_mult_41_n31), .CI(
        Stg_7_mult_41_n213), .CO(Stg_7_mult_41_n25), .S(Stg_7_mult_41_n26) );
  FA_X1 Stg_7_mult_41_U20 ( .A(Stg_7_mult_41_n29), .B(Stg_7_mult_41_n75), .CI(
        Stg_7_mult_41_n26), .CO(Stg_7_mult_41_n23), .S(Stg_7_mult_41_n24) );
  FA_X1 Stg_7_mult_41_U18 ( .A(Stg_7_mult_41_n207), .B(Stg_7_mult_41_n74), 
        .CI(Stg_7_mult_41_n25), .CO(Stg_7_mult_41_n19), .S(Stg_7_mult_41_n20)
         );
  FA_X1 Stg_7_mult_41_U17 ( .A(Stg_7_mult_41_n73), .B(Stg_7_mult_41_n21), .CI(
        Stg_7_mult_41_n208), .CO(Stg_7_mult_41_n17), .S(Stg_7_mult_41_n18) );
  FA_X1 Stg_7_mult_41_U8 ( .A(Stg_7_mult_41_n34), .B(Stg_7_mult_41_n39), .CI(
        Stg_7_mult_41_n201), .CO(Stg_7_mult_41_n7), .S(Stg_7_mult_partial_8_)
         );
  FA_X1 Stg_7_mult_41_U7 ( .A(Stg_7_mult_41_n28), .B(Stg_7_mult_41_n33), .CI(
        Stg_7_mult_41_n7), .CO(Stg_7_mult_41_n6), .S(Stg_7_mult_partial_9_) );
  FA_X1 Stg_7_mult_41_U6 ( .A(Stg_7_mult_41_n24), .B(Stg_7_mult_41_n27), .CI(
        Stg_7_mult_41_n6), .CO(Stg_7_mult_41_n5), .S(Stg_7_mult_partial_10_)
         );
  FA_X1 Stg_7_mult_41_U5 ( .A(Stg_7_mult_41_n20), .B(Stg_7_mult_41_n23), .CI(
        Stg_7_mult_41_n5), .CO(Stg_7_mult_41_n4), .S(Stg_7_mult_partial_11_)
         );
  FA_X1 Stg_7_mult_41_U4 ( .A(Stg_7_mult_41_n19), .B(Stg_7_mult_41_n18), .CI(
        Stg_7_mult_41_n4), .CO(Stg_7_mult_41_n3), .S(Stg_7_mult_partial_12_)
         );
  FA_X1 Stg_7_mult_41_U3 ( .A(Stg_7_mult_41_n17), .B(Stg_7_mult_41_n202), .CI(
        Stg_7_mult_41_n3), .CO(Stg_7_mult_41_n2), .S(Stg_7_mult_partial_13_)
         );
  FA_X1 Stg_7_mult_41_U2 ( .A(Stg_7_mult_41_n203), .B(Stg_7_mult_41_n15), .CI(
        Stg_7_mult_41_n2), .CO(Stg_7_mult_41_n1), .S(Stg_7_mult_partial_14_)
         );
  XOR2_X1 Stg_7_add_42_U2 ( .A(DIN_A_s_7__0_), .B(Stg_7_mult_partial_8_), .Z(
        DIN_A_s_8__0_) );
  AND2_X1 Stg_7_add_42_U1 ( .A1(DIN_A_s_7__0_), .A2(Stg_7_mult_partial_8_), 
        .ZN(Stg_7_add_42_n1) );
  FA_X1 Stg_7_add_42_U1_1 ( .A(Stg_7_mult_partial_9_), .B(DIN_A_s_7__1_), .CI(
        Stg_7_add_42_n1), .CO(Stg_7_add_42_carry[2]), .S(DIN_A_s_8__1_) );
  FA_X1 Stg_7_add_42_U1_2 ( .A(Stg_7_mult_partial_10_), .B(DIN_A_s_7__2_), 
        .CI(Stg_7_add_42_carry[2]), .CO(Stg_7_add_42_carry[3]), .S(
        DIN_A_s_8__2_) );
  FA_X1 Stg_7_add_42_U1_3 ( .A(Stg_7_mult_partial_11_), .B(DIN_A_s_7__3_), 
        .CI(Stg_7_add_42_carry[3]), .CO(Stg_7_add_42_carry[4]), .S(
        DIN_A_s_8__3_) );
  FA_X1 Stg_7_add_42_U1_4 ( .A(Stg_7_mult_partial_12_), .B(DIN_A_s_7__4_), 
        .CI(Stg_7_add_42_carry[4]), .CO(Stg_7_add_42_carry[5]), .S(
        DIN_A_s_8__4_) );
  FA_X1 Stg_7_add_42_U1_5 ( .A(Stg_7_mult_partial_13_), .B(DIN_A_s_7__5_), 
        .CI(Stg_7_add_42_carry[5]), .CO(Stg_7_add_42_carry[6]), .S(
        DIN_A_s_8__5_) );
  FA_X1 Stg_7_add_42_U1_6 ( .A(Stg_7_mult_partial_14_), .B(DIN_A_s_7__6_), 
        .CI(Stg_7_add_42_carry[6]), .CO(Stg_7_add_42_carry[7]), .S(
        DIN_A_s_8__6_) );
  FA_X1 Stg_7_add_42_U1_7 ( .A(Stg_7_mult_partial_15_), .B(DIN_A_s_7__7_), 
        .CI(Stg_7_add_42_carry[7]), .S(DIN_A_s_8__7_) );
  INV_X1 Stg_8_REGn_regn_7_U6 ( .A(RST_n), .ZN(Stg_8_REGn_regn_7_n2) );
  INV_X1 Stg_8_REGn_regn_7_U5 ( .A(n4), .ZN(Stg_8_REGn_regn_7_n1) );
  AOI22_X1 Stg_8_REGn_regn_7_U4 ( .A1(n4), .A2(DIN_R_s_8__7_), .B1(
        DIN_R_s_9__7_), .B2(Stg_8_REGn_regn_7_n1), .ZN(Stg_8_REGn_regn_7_n6)
         );
  NOR2_X1 Stg_8_REGn_regn_7_U3 ( .A1(Stg_8_REGn_regn_7_n6), .A2(
        Stg_8_REGn_regn_7_n2), .ZN(Stg_8_REGn_regn_7_n5) );
  DFF_X1 Stg_8_REGn_regn_7_Q_reg ( .D(Stg_8_REGn_regn_7_n5), .CK(CLK), .Q(
        DIN_R_s_9__7_) );
  INV_X1 Stg_8_REGn_regn_6_U6 ( .A(RST_n), .ZN(Stg_8_REGn_regn_6_n2) );
  INV_X1 Stg_8_REGn_regn_6_U5 ( .A(n4), .ZN(Stg_8_REGn_regn_6_n1) );
  AOI22_X1 Stg_8_REGn_regn_6_U4 ( .A1(n4), .A2(DIN_R_s_8__6_), .B1(
        DIN_R_s_9__6_), .B2(Stg_8_REGn_regn_6_n1), .ZN(Stg_8_REGn_regn_6_n6)
         );
  NOR2_X1 Stg_8_REGn_regn_6_U3 ( .A1(Stg_8_REGn_regn_6_n6), .A2(
        Stg_8_REGn_regn_6_n2), .ZN(Stg_8_REGn_regn_6_n5) );
  DFF_X1 Stg_8_REGn_regn_6_Q_reg ( .D(Stg_8_REGn_regn_6_n5), .CK(CLK), .Q(
        DIN_R_s_9__6_) );
  INV_X1 Stg_8_REGn_regn_5_U6 ( .A(RST_n), .ZN(Stg_8_REGn_regn_5_n2) );
  INV_X1 Stg_8_REGn_regn_5_U5 ( .A(n4), .ZN(Stg_8_REGn_regn_5_n1) );
  AOI22_X1 Stg_8_REGn_regn_5_U4 ( .A1(n4), .A2(DIN_R_s_8__5_), .B1(
        DIN_R_s_9__5_), .B2(Stg_8_REGn_regn_5_n1), .ZN(Stg_8_REGn_regn_5_n6)
         );
  NOR2_X1 Stg_8_REGn_regn_5_U3 ( .A1(Stg_8_REGn_regn_5_n6), .A2(
        Stg_8_REGn_regn_5_n2), .ZN(Stg_8_REGn_regn_5_n5) );
  DFF_X1 Stg_8_REGn_regn_5_Q_reg ( .D(Stg_8_REGn_regn_5_n5), .CK(CLK), .Q(
        DIN_R_s_9__5_) );
  INV_X1 Stg_8_REGn_regn_4_U6 ( .A(RST_n), .ZN(Stg_8_REGn_regn_4_n2) );
  INV_X1 Stg_8_REGn_regn_4_U5 ( .A(n4), .ZN(Stg_8_REGn_regn_4_n1) );
  AOI22_X1 Stg_8_REGn_regn_4_U4 ( .A1(n4), .A2(DIN_R_s_8__4_), .B1(
        DIN_R_s_9__4_), .B2(Stg_8_REGn_regn_4_n1), .ZN(Stg_8_REGn_regn_4_n6)
         );
  NOR2_X1 Stg_8_REGn_regn_4_U3 ( .A1(Stg_8_REGn_regn_4_n6), .A2(
        Stg_8_REGn_regn_4_n2), .ZN(Stg_8_REGn_regn_4_n5) );
  DFF_X1 Stg_8_REGn_regn_4_Q_reg ( .D(Stg_8_REGn_regn_4_n5), .CK(CLK), .Q(
        DIN_R_s_9__4_) );
  INV_X1 Stg_8_REGn_regn_3_U6 ( .A(RST_n), .ZN(Stg_8_REGn_regn_3_n2) );
  INV_X1 Stg_8_REGn_regn_3_U5 ( .A(n4), .ZN(Stg_8_REGn_regn_3_n1) );
  AOI22_X1 Stg_8_REGn_regn_3_U4 ( .A1(n4), .A2(DIN_R_s_8__3_), .B1(
        DIN_R_s_9__3_), .B2(Stg_8_REGn_regn_3_n1), .ZN(Stg_8_REGn_regn_3_n6)
         );
  NOR2_X1 Stg_8_REGn_regn_3_U3 ( .A1(Stg_8_REGn_regn_3_n6), .A2(
        Stg_8_REGn_regn_3_n2), .ZN(Stg_8_REGn_regn_3_n5) );
  DFF_X1 Stg_8_REGn_regn_3_Q_reg ( .D(Stg_8_REGn_regn_3_n5), .CK(CLK), .Q(
        DIN_R_s_9__3_) );
  INV_X1 Stg_8_REGn_regn_2_U6 ( .A(RST_n), .ZN(Stg_8_REGn_regn_2_n2) );
  INV_X1 Stg_8_REGn_regn_2_U5 ( .A(n4), .ZN(Stg_8_REGn_regn_2_n1) );
  AOI22_X1 Stg_8_REGn_regn_2_U4 ( .A1(n4), .A2(DIN_R_s_8__2_), .B1(
        DIN_R_s_9__2_), .B2(Stg_8_REGn_regn_2_n1), .ZN(Stg_8_REGn_regn_2_n6)
         );
  NOR2_X1 Stg_8_REGn_regn_2_U3 ( .A1(Stg_8_REGn_regn_2_n6), .A2(
        Stg_8_REGn_regn_2_n2), .ZN(Stg_8_REGn_regn_2_n5) );
  DFF_X1 Stg_8_REGn_regn_2_Q_reg ( .D(Stg_8_REGn_regn_2_n5), .CK(CLK), .Q(
        DIN_R_s_9__2_) );
  INV_X1 Stg_8_REGn_regn_1_U6 ( .A(RST_n), .ZN(Stg_8_REGn_regn_1_n2) );
  INV_X1 Stg_8_REGn_regn_1_U5 ( .A(n4), .ZN(Stg_8_REGn_regn_1_n1) );
  AOI22_X1 Stg_8_REGn_regn_1_U4 ( .A1(n4), .A2(DIN_R_s_8__1_), .B1(
        DIN_R_s_9__1_), .B2(Stg_8_REGn_regn_1_n1), .ZN(Stg_8_REGn_regn_1_n6)
         );
  NOR2_X1 Stg_8_REGn_regn_1_U3 ( .A1(Stg_8_REGn_regn_1_n6), .A2(
        Stg_8_REGn_regn_1_n2), .ZN(Stg_8_REGn_regn_1_n5) );
  DFF_X1 Stg_8_REGn_regn_1_Q_reg ( .D(Stg_8_REGn_regn_1_n5), .CK(CLK), .Q(
        DIN_R_s_9__1_) );
  INV_X1 Stg_8_REGn_regn_0_U6 ( .A(RST_n), .ZN(Stg_8_REGn_regn_0_n2) );
  INV_X1 Stg_8_REGn_regn_0_U5 ( .A(n4), .ZN(Stg_8_REGn_regn_0_n1) );
  AOI22_X1 Stg_8_REGn_regn_0_U4 ( .A1(n4), .A2(DIN_R_s_8__0_), .B1(
        DIN_R_s_9__0_), .B2(Stg_8_REGn_regn_0_n1), .ZN(Stg_8_REGn_regn_0_n6)
         );
  NOR2_X1 Stg_8_REGn_regn_0_U3 ( .A1(Stg_8_REGn_regn_0_n6), .A2(
        Stg_8_REGn_regn_0_n2), .ZN(Stg_8_REGn_regn_0_n5) );
  DFF_X1 Stg_8_REGn_regn_0_Q_reg ( .D(Stg_8_REGn_regn_0_n5), .CK(CLK), .Q(
        DIN_R_s_9__0_) );
  XNOR2_X1 Stg_8_mult_41_U263 ( .A(H9[3]), .B(DIN_R_s_9__1_), .ZN(
        Stg_8_mult_41_n275) );
  NAND2_X1 Stg_8_mult_41_U262 ( .A1(DIN_R_s_9__1_), .A2(Stg_8_mult_41_n217), 
        .ZN(Stg_8_mult_41_n221) );
  XNOR2_X1 Stg_8_mult_41_U261 ( .A(H9[4]), .B(DIN_R_s_9__1_), .ZN(
        Stg_8_mult_41_n220) );
  OAI22_X1 Stg_8_mult_41_U260 ( .A1(Stg_8_mult_41_n275), .A2(
        Stg_8_mult_41_n221), .B1(Stg_8_mult_41_n220), .B2(Stg_8_mult_41_n217), 
        .ZN(Stg_8_mult_41_n100) );
  XNOR2_X1 Stg_8_mult_41_U259 ( .A(H9[2]), .B(DIN_R_s_9__1_), .ZN(
        Stg_8_mult_41_n255) );
  OAI22_X1 Stg_8_mult_41_U258 ( .A1(Stg_8_mult_41_n255), .A2(
        Stg_8_mult_41_n221), .B1(Stg_8_mult_41_n275), .B2(Stg_8_mult_41_n217), 
        .ZN(Stg_8_mult_41_n101) );
  XNOR2_X1 Stg_8_mult_41_U257 ( .A(H9[6]), .B(DIN_R_s_9__7_), .ZN(
        Stg_8_mult_41_n264) );
  XNOR2_X1 Stg_8_mult_41_U256 ( .A(Stg_8_mult_41_n204), .B(DIN_R_s_9__6_), 
        .ZN(Stg_8_mult_41_n274) );
  NAND2_X1 Stg_8_mult_41_U255 ( .A1(Stg_8_mult_41_n256), .A2(
        Stg_8_mult_41_n274), .ZN(Stg_8_mult_41_n258) );
  XNOR2_X1 Stg_8_mult_41_U254 ( .A(H9[7]), .B(DIN_R_s_9__7_), .ZN(
        Stg_8_mult_41_n266) );
  OAI22_X1 Stg_8_mult_41_U253 ( .A1(Stg_8_mult_41_n264), .A2(
        Stg_8_mult_41_n258), .B1(Stg_8_mult_41_n256), .B2(Stg_8_mult_41_n266), 
        .ZN(Stg_8_mult_41_n15) );
  XNOR2_X1 Stg_8_mult_41_U252 ( .A(H9[6]), .B(DIN_R_s_9__5_), .ZN(
        Stg_8_mult_41_n243) );
  XNOR2_X1 Stg_8_mult_41_U251 ( .A(Stg_8_mult_41_n209), .B(DIN_R_s_9__4_), 
        .ZN(Stg_8_mult_41_n273) );
  NAND2_X1 Stg_8_mult_41_U250 ( .A1(Stg_8_mult_41_n235), .A2(
        Stg_8_mult_41_n273), .ZN(Stg_8_mult_41_n237) );
  XNOR2_X1 Stg_8_mult_41_U249 ( .A(H9[7]), .B(DIN_R_s_9__5_), .ZN(
        Stg_8_mult_41_n245) );
  OAI22_X1 Stg_8_mult_41_U248 ( .A1(Stg_8_mult_41_n243), .A2(
        Stg_8_mult_41_n237), .B1(Stg_8_mult_41_n235), .B2(Stg_8_mult_41_n245), 
        .ZN(Stg_8_mult_41_n21) );
  XNOR2_X1 Stg_8_mult_41_U247 ( .A(H9[6]), .B(DIN_R_s_9__3_), .ZN(
        Stg_8_mult_41_n271) );
  XOR2_X1 Stg_8_mult_41_U246 ( .A(DIN_R_s_9__2_), .B(DIN_R_s_9__1_), .Z(
        Stg_8_mult_41_n253) );
  XNOR2_X1 Stg_8_mult_41_U245 ( .A(Stg_8_mult_41_n214), .B(DIN_R_s_9__2_), 
        .ZN(Stg_8_mult_41_n272) );
  NAND2_X1 Stg_8_mult_41_U244 ( .A1(Stg_8_mult_41_n215), .A2(
        Stg_8_mult_41_n272), .ZN(Stg_8_mult_41_n227) );
  XNOR2_X1 Stg_8_mult_41_U243 ( .A(H9[7]), .B(DIN_R_s_9__3_), .ZN(
        Stg_8_mult_41_n234) );
  OAI22_X1 Stg_8_mult_41_U242 ( .A1(Stg_8_mult_41_n271), .A2(
        Stg_8_mult_41_n227), .B1(Stg_8_mult_41_n215), .B2(Stg_8_mult_41_n234), 
        .ZN(Stg_8_mult_41_n31) );
  XNOR2_X1 Stg_8_mult_41_U241 ( .A(H9[1]), .B(DIN_R_s_9__7_), .ZN(
        Stg_8_mult_41_n259) );
  XNOR2_X1 Stg_8_mult_41_U240 ( .A(H9[2]), .B(DIN_R_s_9__7_), .ZN(
        Stg_8_mult_41_n260) );
  OAI22_X1 Stg_8_mult_41_U239 ( .A1(Stg_8_mult_41_n259), .A2(
        Stg_8_mult_41_n258), .B1(Stg_8_mult_41_n256), .B2(Stg_8_mult_41_n260), 
        .ZN(Stg_8_mult_41_n269) );
  XNOR2_X1 Stg_8_mult_41_U238 ( .A(H9[5]), .B(DIN_R_s_9__3_), .ZN(
        Stg_8_mult_41_n232) );
  OAI22_X1 Stg_8_mult_41_U237 ( .A1(Stg_8_mult_41_n232), .A2(
        Stg_8_mult_41_n227), .B1(Stg_8_mult_41_n215), .B2(Stg_8_mult_41_n271), 
        .ZN(Stg_8_mult_41_n270) );
  OR2_X1 Stg_8_mult_41_U236 ( .A1(Stg_8_mult_41_n269), .A2(Stg_8_mult_41_n270), 
        .ZN(Stg_8_mult_41_n37) );
  XNOR2_X1 Stg_8_mult_41_U235 ( .A(Stg_8_mult_41_n269), .B(Stg_8_mult_41_n270), 
        .ZN(Stg_8_mult_41_n38) );
  OR3_X1 Stg_8_mult_41_U234 ( .A1(Stg_8_mult_41_n256), .A2(H9[0]), .A3(
        Stg_8_mult_41_n204), .ZN(Stg_8_mult_41_n268) );
  OAI21_X1 Stg_8_mult_41_U233 ( .B1(Stg_8_mult_41_n204), .B2(
        Stg_8_mult_41_n258), .A(Stg_8_mult_41_n268), .ZN(Stg_8_mult_41_n68) );
  OR3_X1 Stg_8_mult_41_U232 ( .A1(Stg_8_mult_41_n235), .A2(H9[0]), .A3(
        Stg_8_mult_41_n209), .ZN(Stg_8_mult_41_n267) );
  OAI21_X1 Stg_8_mult_41_U231 ( .B1(Stg_8_mult_41_n209), .B2(
        Stg_8_mult_41_n237), .A(Stg_8_mult_41_n267), .ZN(Stg_8_mult_41_n69) );
  OAI22_X1 Stg_8_mult_41_U230 ( .A1(Stg_8_mult_41_n266), .A2(
        Stg_8_mult_41_n256), .B1(Stg_8_mult_41_n258), .B2(Stg_8_mult_41_n266), 
        .ZN(Stg_8_mult_41_n265) );
  XNOR2_X1 Stg_8_mult_41_U229 ( .A(H9[5]), .B(DIN_R_s_9__7_), .ZN(
        Stg_8_mult_41_n263) );
  OAI22_X1 Stg_8_mult_41_U228 ( .A1(Stg_8_mult_41_n263), .A2(
        Stg_8_mult_41_n258), .B1(Stg_8_mult_41_n256), .B2(Stg_8_mult_41_n264), 
        .ZN(Stg_8_mult_41_n73) );
  XNOR2_X1 Stg_8_mult_41_U227 ( .A(H9[4]), .B(DIN_R_s_9__7_), .ZN(
        Stg_8_mult_41_n262) );
  OAI22_X1 Stg_8_mult_41_U226 ( .A1(Stg_8_mult_41_n262), .A2(
        Stg_8_mult_41_n258), .B1(Stg_8_mult_41_n256), .B2(Stg_8_mult_41_n263), 
        .ZN(Stg_8_mult_41_n74) );
  XNOR2_X1 Stg_8_mult_41_U225 ( .A(H9[3]), .B(DIN_R_s_9__7_), .ZN(
        Stg_8_mult_41_n261) );
  OAI22_X1 Stg_8_mult_41_U224 ( .A1(Stg_8_mult_41_n261), .A2(
        Stg_8_mult_41_n258), .B1(Stg_8_mult_41_n256), .B2(Stg_8_mult_41_n262), 
        .ZN(Stg_8_mult_41_n75) );
  OAI22_X1 Stg_8_mult_41_U223 ( .A1(Stg_8_mult_41_n260), .A2(
        Stg_8_mult_41_n258), .B1(Stg_8_mult_41_n256), .B2(Stg_8_mult_41_n261), 
        .ZN(Stg_8_mult_41_n76) );
  XNOR2_X1 Stg_8_mult_41_U222 ( .A(H9[0]), .B(DIN_R_s_9__7_), .ZN(
        Stg_8_mult_41_n257) );
  OAI22_X1 Stg_8_mult_41_U221 ( .A1(Stg_8_mult_41_n257), .A2(
        Stg_8_mult_41_n258), .B1(Stg_8_mult_41_n256), .B2(Stg_8_mult_41_n259), 
        .ZN(Stg_8_mult_41_n78) );
  NOR2_X1 Stg_8_mult_41_U220 ( .A1(Stg_8_mult_41_n256), .A2(Stg_8_mult_41_n219), .ZN(Stg_8_mult_41_n79) );
  OAI22_X1 Stg_8_mult_41_U219 ( .A1(H9[1]), .A2(Stg_8_mult_41_n221), .B1(
        Stg_8_mult_41_n255), .B2(Stg_8_mult_41_n217), .ZN(Stg_8_mult_41_n254)
         );
  NAND3_X1 Stg_8_mult_41_U218 ( .A1(Stg_8_mult_41_n253), .A2(
        Stg_8_mult_41_n219), .A3(DIN_R_s_9__3_), .ZN(Stg_8_mult_41_n252) );
  OAI21_X1 Stg_8_mult_41_U217 ( .B1(Stg_8_mult_41_n214), .B2(
        Stg_8_mult_41_n227), .A(Stg_8_mult_41_n252), .ZN(Stg_8_mult_41_n251)
         );
  AOI222_X1 Stg_8_mult_41_U216 ( .A1(Stg_8_mult_41_n197), .A2(
        Stg_8_mult_41_n56), .B1(Stg_8_mult_41_n251), .B2(Stg_8_mult_41_n197), 
        .C1(Stg_8_mult_41_n251), .C2(Stg_8_mult_41_n56), .ZN(
        Stg_8_mult_41_n250) );
  AOI222_X1 Stg_8_mult_41_U215 ( .A1(Stg_8_mult_41_n211), .A2(
        Stg_8_mult_41_n54), .B1(Stg_8_mult_41_n211), .B2(Stg_8_mult_41_n55), 
        .C1(Stg_8_mult_41_n55), .C2(Stg_8_mult_41_n54), .ZN(Stg_8_mult_41_n249) );
  AOI222_X1 Stg_8_mult_41_U214 ( .A1(Stg_8_mult_41_n210), .A2(
        Stg_8_mult_41_n50), .B1(Stg_8_mult_41_n210), .B2(Stg_8_mult_41_n53), 
        .C1(Stg_8_mult_41_n53), .C2(Stg_8_mult_41_n50), .ZN(Stg_8_mult_41_n248) );
  AOI222_X1 Stg_8_mult_41_U213 ( .A1(Stg_8_mult_41_n206), .A2(
        Stg_8_mult_41_n46), .B1(Stg_8_mult_41_n206), .B2(Stg_8_mult_41_n49), 
        .C1(Stg_8_mult_41_n49), .C2(Stg_8_mult_41_n46), .ZN(Stg_8_mult_41_n247) );
  AOI222_X1 Stg_8_mult_41_U212 ( .A1(Stg_8_mult_41_n205), .A2(
        Stg_8_mult_41_n40), .B1(Stg_8_mult_41_n205), .B2(Stg_8_mult_41_n45), 
        .C1(Stg_8_mult_41_n45), .C2(Stg_8_mult_41_n40), .ZN(Stg_8_mult_41_n246) );
  OAI22_X1 Stg_8_mult_41_U211 ( .A1(Stg_8_mult_41_n245), .A2(
        Stg_8_mult_41_n235), .B1(Stg_8_mult_41_n237), .B2(Stg_8_mult_41_n245), 
        .ZN(Stg_8_mult_41_n244) );
  XNOR2_X1 Stg_8_mult_41_U210 ( .A(H9[5]), .B(DIN_R_s_9__5_), .ZN(
        Stg_8_mult_41_n242) );
  OAI22_X1 Stg_8_mult_41_U209 ( .A1(Stg_8_mult_41_n242), .A2(
        Stg_8_mult_41_n237), .B1(Stg_8_mult_41_n235), .B2(Stg_8_mult_41_n243), 
        .ZN(Stg_8_mult_41_n81) );
  XNOR2_X1 Stg_8_mult_41_U208 ( .A(H9[4]), .B(DIN_R_s_9__5_), .ZN(
        Stg_8_mult_41_n241) );
  OAI22_X1 Stg_8_mult_41_U207 ( .A1(Stg_8_mult_41_n241), .A2(
        Stg_8_mult_41_n237), .B1(Stg_8_mult_41_n235), .B2(Stg_8_mult_41_n242), 
        .ZN(Stg_8_mult_41_n82) );
  XNOR2_X1 Stg_8_mult_41_U206 ( .A(H9[3]), .B(DIN_R_s_9__5_), .ZN(
        Stg_8_mult_41_n240) );
  OAI22_X1 Stg_8_mult_41_U205 ( .A1(Stg_8_mult_41_n240), .A2(
        Stg_8_mult_41_n237), .B1(Stg_8_mult_41_n235), .B2(Stg_8_mult_41_n241), 
        .ZN(Stg_8_mult_41_n83) );
  XNOR2_X1 Stg_8_mult_41_U204 ( .A(H9[2]), .B(DIN_R_s_9__5_), .ZN(
        Stg_8_mult_41_n239) );
  OAI22_X1 Stg_8_mult_41_U203 ( .A1(Stg_8_mult_41_n239), .A2(
        Stg_8_mult_41_n237), .B1(Stg_8_mult_41_n235), .B2(Stg_8_mult_41_n240), 
        .ZN(Stg_8_mult_41_n84) );
  XNOR2_X1 Stg_8_mult_41_U202 ( .A(H9[1]), .B(DIN_R_s_9__5_), .ZN(
        Stg_8_mult_41_n238) );
  OAI22_X1 Stg_8_mult_41_U201 ( .A1(Stg_8_mult_41_n238), .A2(
        Stg_8_mult_41_n237), .B1(Stg_8_mult_41_n235), .B2(Stg_8_mult_41_n239), 
        .ZN(Stg_8_mult_41_n85) );
  XNOR2_X1 Stg_8_mult_41_U200 ( .A(H9[0]), .B(DIN_R_s_9__5_), .ZN(
        Stg_8_mult_41_n236) );
  OAI22_X1 Stg_8_mult_41_U199 ( .A1(Stg_8_mult_41_n236), .A2(
        Stg_8_mult_41_n237), .B1(Stg_8_mult_41_n235), .B2(Stg_8_mult_41_n238), 
        .ZN(Stg_8_mult_41_n86) );
  NOR2_X1 Stg_8_mult_41_U198 ( .A1(Stg_8_mult_41_n235), .A2(Stg_8_mult_41_n219), .ZN(Stg_8_mult_41_n87) );
  OAI22_X1 Stg_8_mult_41_U197 ( .A1(Stg_8_mult_41_n234), .A2(
        Stg_8_mult_41_n215), .B1(Stg_8_mult_41_n227), .B2(Stg_8_mult_41_n234), 
        .ZN(Stg_8_mult_41_n233) );
  XNOR2_X1 Stg_8_mult_41_U196 ( .A(H9[4]), .B(DIN_R_s_9__3_), .ZN(
        Stg_8_mult_41_n231) );
  OAI22_X1 Stg_8_mult_41_U195 ( .A1(Stg_8_mult_41_n231), .A2(
        Stg_8_mult_41_n227), .B1(Stg_8_mult_41_n215), .B2(Stg_8_mult_41_n232), 
        .ZN(Stg_8_mult_41_n90) );
  XNOR2_X1 Stg_8_mult_41_U194 ( .A(H9[3]), .B(DIN_R_s_9__3_), .ZN(
        Stg_8_mult_41_n230) );
  OAI22_X1 Stg_8_mult_41_U193 ( .A1(Stg_8_mult_41_n230), .A2(
        Stg_8_mult_41_n227), .B1(Stg_8_mult_41_n215), .B2(Stg_8_mult_41_n231), 
        .ZN(Stg_8_mult_41_n91) );
  XNOR2_X1 Stg_8_mult_41_U192 ( .A(H9[2]), .B(DIN_R_s_9__3_), .ZN(
        Stg_8_mult_41_n229) );
  OAI22_X1 Stg_8_mult_41_U191 ( .A1(Stg_8_mult_41_n229), .A2(
        Stg_8_mult_41_n227), .B1(Stg_8_mult_41_n215), .B2(Stg_8_mult_41_n230), 
        .ZN(Stg_8_mult_41_n92) );
  XNOR2_X1 Stg_8_mult_41_U190 ( .A(H9[1]), .B(DIN_R_s_9__3_), .ZN(
        Stg_8_mult_41_n228) );
  OAI22_X1 Stg_8_mult_41_U189 ( .A1(Stg_8_mult_41_n228), .A2(
        Stg_8_mult_41_n227), .B1(Stg_8_mult_41_n215), .B2(Stg_8_mult_41_n229), 
        .ZN(Stg_8_mult_41_n93) );
  XNOR2_X1 Stg_8_mult_41_U188 ( .A(H9[0]), .B(DIN_R_s_9__3_), .ZN(
        Stg_8_mult_41_n226) );
  OAI22_X1 Stg_8_mult_41_U187 ( .A1(Stg_8_mult_41_n226), .A2(
        Stg_8_mult_41_n227), .B1(Stg_8_mult_41_n215), .B2(Stg_8_mult_41_n228), 
        .ZN(Stg_8_mult_41_n94) );
  XNOR2_X1 Stg_8_mult_41_U186 ( .A(H9[7]), .B(DIN_R_s_9__1_), .ZN(
        Stg_8_mult_41_n224) );
  OAI22_X1 Stg_8_mult_41_U185 ( .A1(Stg_8_mult_41_n217), .A2(
        Stg_8_mult_41_n224), .B1(Stg_8_mult_41_n221), .B2(Stg_8_mult_41_n224), 
        .ZN(Stg_8_mult_41_n225) );
  XNOR2_X1 Stg_8_mult_41_U184 ( .A(H9[6]), .B(DIN_R_s_9__1_), .ZN(
        Stg_8_mult_41_n223) );
  OAI22_X1 Stg_8_mult_41_U183 ( .A1(Stg_8_mult_41_n223), .A2(
        Stg_8_mult_41_n221), .B1(Stg_8_mult_41_n224), .B2(Stg_8_mult_41_n217), 
        .ZN(Stg_8_mult_41_n97) );
  XNOR2_X1 Stg_8_mult_41_U182 ( .A(H9[5]), .B(DIN_R_s_9__1_), .ZN(
        Stg_8_mult_41_n222) );
  OAI22_X1 Stg_8_mult_41_U181 ( .A1(Stg_8_mult_41_n222), .A2(
        Stg_8_mult_41_n221), .B1(Stg_8_mult_41_n223), .B2(Stg_8_mult_41_n217), 
        .ZN(Stg_8_mult_41_n98) );
  OAI22_X1 Stg_8_mult_41_U180 ( .A1(Stg_8_mult_41_n220), .A2(
        Stg_8_mult_41_n221), .B1(Stg_8_mult_41_n222), .B2(Stg_8_mult_41_n217), 
        .ZN(Stg_8_mult_41_n99) );
  INV_X1 Stg_8_mult_41_U179 ( .A(DIN_R_s_9__7_), .ZN(Stg_8_mult_41_n204) );
  XOR2_X1 Stg_8_mult_41_U178 ( .A(DIN_R_s_9__6_), .B(Stg_8_mult_41_n209), .Z(
        Stg_8_mult_41_n256) );
  INV_X1 Stg_8_mult_41_U177 ( .A(H9[1]), .ZN(Stg_8_mult_41_n218) );
  INV_X1 Stg_8_mult_41_U176 ( .A(H9[0]), .ZN(Stg_8_mult_41_n219) );
  AND3_X1 Stg_8_mult_41_U175 ( .A1(Stg_8_mult_41_n254), .A2(Stg_8_mult_41_n218), .A3(DIN_R_s_9__1_), .ZN(Stg_8_mult_41_n199) );
  AND2_X1 Stg_8_mult_41_U174 ( .A1(Stg_8_mult_41_n253), .A2(Stg_8_mult_41_n254), .ZN(Stg_8_mult_41_n198) );
  MUX2_X1 Stg_8_mult_41_U173 ( .A(Stg_8_mult_41_n198), .B(Stg_8_mult_41_n199), 
        .S(Stg_8_mult_41_n219), .Z(Stg_8_mult_41_n197) );
  INV_X1 Stg_8_mult_41_U172 ( .A(DIN_R_s_9__5_), .ZN(Stg_8_mult_41_n209) );
  INV_X1 Stg_8_mult_41_U171 ( .A(DIN_R_s_9__3_), .ZN(Stg_8_mult_41_n214) );
  INV_X1 Stg_8_mult_41_U170 ( .A(DIN_R_s_9__0_), .ZN(Stg_8_mult_41_n217) );
  XOR2_X1 Stg_8_mult_41_U169 ( .A(DIN_R_s_9__4_), .B(Stg_8_mult_41_n214), .Z(
        Stg_8_mult_41_n235) );
  INV_X1 Stg_8_mult_41_U168 ( .A(Stg_8_mult_41_n31), .ZN(Stg_8_mult_41_n212)
         );
  INV_X1 Stg_8_mult_41_U167 ( .A(Stg_8_mult_41_n233), .ZN(Stg_8_mult_41_n213)
         );
  INV_X1 Stg_8_mult_41_U166 ( .A(Stg_8_mult_41_n225), .ZN(Stg_8_mult_41_n216)
         );
  INV_X1 Stg_8_mult_41_U165 ( .A(Stg_8_mult_41_n244), .ZN(Stg_8_mult_41_n208)
         );
  INV_X1 Stg_8_mult_41_U164 ( .A(Stg_8_mult_41_n21), .ZN(Stg_8_mult_41_n207)
         );
  INV_X1 Stg_8_mult_41_U163 ( .A(Stg_8_mult_41_n246), .ZN(Stg_8_mult_41_n201)
         );
  INV_X1 Stg_8_mult_41_U162 ( .A(Stg_8_mult_41_n265), .ZN(Stg_8_mult_41_n203)
         );
  INV_X1 Stg_8_mult_41_U161 ( .A(Stg_8_mult_41_n253), .ZN(Stg_8_mult_41_n215)
         );
  INV_X1 Stg_8_mult_41_U160 ( .A(Stg_8_mult_41_n250), .ZN(Stg_8_mult_41_n211)
         );
  INV_X1 Stg_8_mult_41_U159 ( .A(Stg_8_mult_41_n249), .ZN(Stg_8_mult_41_n210)
         );
  INV_X1 Stg_8_mult_41_U158 ( .A(Stg_8_mult_41_n15), .ZN(Stg_8_mult_41_n202)
         );
  INV_X1 Stg_8_mult_41_U157 ( .A(Stg_8_mult_41_n248), .ZN(Stg_8_mult_41_n206)
         );
  INV_X1 Stg_8_mult_41_U156 ( .A(Stg_8_mult_41_n247), .ZN(Stg_8_mult_41_n205)
         );
  INV_X1 Stg_8_mult_41_U155 ( .A(Stg_8_mult_41_n1), .ZN(Stg_8_mult_partial_15_) );
  HA_X1 Stg_8_mult_41_U37 ( .A(Stg_8_mult_41_n94), .B(Stg_8_mult_41_n101), 
        .CO(Stg_8_mult_41_n55), .S(Stg_8_mult_41_n56) );
  FA_X1 Stg_8_mult_41_U36 ( .A(Stg_8_mult_41_n100), .B(Stg_8_mult_41_n87), 
        .CI(Stg_8_mult_41_n93), .CO(Stg_8_mult_41_n53), .S(Stg_8_mult_41_n54)
         );
  HA_X1 Stg_8_mult_41_U35 ( .A(Stg_8_mult_41_n69), .B(Stg_8_mult_41_n86), .CO(
        Stg_8_mult_41_n51), .S(Stg_8_mult_41_n52) );
  FA_X1 Stg_8_mult_41_U34 ( .A(Stg_8_mult_41_n92), .B(Stg_8_mult_41_n99), .CI(
        Stg_8_mult_41_n52), .CO(Stg_8_mult_41_n49), .S(Stg_8_mult_41_n50) );
  FA_X1 Stg_8_mult_41_U33 ( .A(Stg_8_mult_41_n98), .B(Stg_8_mult_41_n79), .CI(
        Stg_8_mult_41_n91), .CO(Stg_8_mult_41_n47), .S(Stg_8_mult_41_n48) );
  FA_X1 Stg_8_mult_41_U32 ( .A(Stg_8_mult_41_n51), .B(Stg_8_mult_41_n85), .CI(
        Stg_8_mult_41_n48), .CO(Stg_8_mult_41_n45), .S(Stg_8_mult_41_n46) );
  HA_X1 Stg_8_mult_41_U31 ( .A(Stg_8_mult_41_n68), .B(Stg_8_mult_41_n78), .CO(
        Stg_8_mult_41_n43), .S(Stg_8_mult_41_n44) );
  FA_X1 Stg_8_mult_41_U30 ( .A(Stg_8_mult_41_n84), .B(Stg_8_mult_41_n97), .CI(
        Stg_8_mult_41_n90), .CO(Stg_8_mult_41_n41), .S(Stg_8_mult_41_n42) );
  FA_X1 Stg_8_mult_41_U29 ( .A(Stg_8_mult_41_n47), .B(Stg_8_mult_41_n44), .CI(
        Stg_8_mult_41_n42), .CO(Stg_8_mult_41_n39), .S(Stg_8_mult_41_n40) );
  FA_X1 Stg_8_mult_41_U26 ( .A(Stg_8_mult_41_n216), .B(Stg_8_mult_41_n83), 
        .CI(Stg_8_mult_41_n43), .CO(Stg_8_mult_41_n35), .S(Stg_8_mult_41_n36)
         );
  FA_X1 Stg_8_mult_41_U25 ( .A(Stg_8_mult_41_n41), .B(Stg_8_mult_41_n38), .CI(
        Stg_8_mult_41_n36), .CO(Stg_8_mult_41_n33), .S(Stg_8_mult_41_n34) );
  FA_X1 Stg_8_mult_41_U23 ( .A(Stg_8_mult_41_n76), .B(Stg_8_mult_41_n82), .CI(
        Stg_8_mult_41_n212), .CO(Stg_8_mult_41_n29), .S(Stg_8_mult_41_n30) );
  FA_X1 Stg_8_mult_41_U22 ( .A(Stg_8_mult_41_n35), .B(Stg_8_mult_41_n37), .CI(
        Stg_8_mult_41_n30), .CO(Stg_8_mult_41_n27), .S(Stg_8_mult_41_n28) );
  FA_X1 Stg_8_mult_41_U21 ( .A(Stg_8_mult_41_n81), .B(Stg_8_mult_41_n31), .CI(
        Stg_8_mult_41_n213), .CO(Stg_8_mult_41_n25), .S(Stg_8_mult_41_n26) );
  FA_X1 Stg_8_mult_41_U20 ( .A(Stg_8_mult_41_n29), .B(Stg_8_mult_41_n75), .CI(
        Stg_8_mult_41_n26), .CO(Stg_8_mult_41_n23), .S(Stg_8_mult_41_n24) );
  FA_X1 Stg_8_mult_41_U18 ( .A(Stg_8_mult_41_n207), .B(Stg_8_mult_41_n74), 
        .CI(Stg_8_mult_41_n25), .CO(Stg_8_mult_41_n19), .S(Stg_8_mult_41_n20)
         );
  FA_X1 Stg_8_mult_41_U17 ( .A(Stg_8_mult_41_n73), .B(Stg_8_mult_41_n21), .CI(
        Stg_8_mult_41_n208), .CO(Stg_8_mult_41_n17), .S(Stg_8_mult_41_n18) );
  FA_X1 Stg_8_mult_41_U8 ( .A(Stg_8_mult_41_n34), .B(Stg_8_mult_41_n39), .CI(
        Stg_8_mult_41_n201), .CO(Stg_8_mult_41_n7), .S(Stg_8_mult_partial_8_)
         );
  FA_X1 Stg_8_mult_41_U7 ( .A(Stg_8_mult_41_n28), .B(Stg_8_mult_41_n33), .CI(
        Stg_8_mult_41_n7), .CO(Stg_8_mult_41_n6), .S(Stg_8_mult_partial_9_) );
  FA_X1 Stg_8_mult_41_U6 ( .A(Stg_8_mult_41_n24), .B(Stg_8_mult_41_n27), .CI(
        Stg_8_mult_41_n6), .CO(Stg_8_mult_41_n5), .S(Stg_8_mult_partial_10_)
         );
  FA_X1 Stg_8_mult_41_U5 ( .A(Stg_8_mult_41_n20), .B(Stg_8_mult_41_n23), .CI(
        Stg_8_mult_41_n5), .CO(Stg_8_mult_41_n4), .S(Stg_8_mult_partial_11_)
         );
  FA_X1 Stg_8_mult_41_U4 ( .A(Stg_8_mult_41_n19), .B(Stg_8_mult_41_n18), .CI(
        Stg_8_mult_41_n4), .CO(Stg_8_mult_41_n3), .S(Stg_8_mult_partial_12_)
         );
  FA_X1 Stg_8_mult_41_U3 ( .A(Stg_8_mult_41_n17), .B(Stg_8_mult_41_n202), .CI(
        Stg_8_mult_41_n3), .CO(Stg_8_mult_41_n2), .S(Stg_8_mult_partial_13_)
         );
  FA_X1 Stg_8_mult_41_U2 ( .A(Stg_8_mult_41_n203), .B(Stg_8_mult_41_n15), .CI(
        Stg_8_mult_41_n2), .CO(Stg_8_mult_41_n1), .S(Stg_8_mult_partial_14_)
         );
  XOR2_X1 Stg_8_add_42_U2 ( .A(DIN_A_s_8__0_), .B(Stg_8_mult_partial_8_), .Z(
        DIN_A_s_9__0_) );
  AND2_X1 Stg_8_add_42_U1 ( .A1(DIN_A_s_8__0_), .A2(Stg_8_mult_partial_8_), 
        .ZN(Stg_8_add_42_n1) );
  FA_X1 Stg_8_add_42_U1_1 ( .A(Stg_8_mult_partial_9_), .B(DIN_A_s_8__1_), .CI(
        Stg_8_add_42_n1), .CO(Stg_8_add_42_carry[2]), .S(DIN_A_s_9__1_) );
  FA_X1 Stg_8_add_42_U1_2 ( .A(Stg_8_mult_partial_10_), .B(DIN_A_s_8__2_), 
        .CI(Stg_8_add_42_carry[2]), .CO(Stg_8_add_42_carry[3]), .S(
        DIN_A_s_9__2_) );
  FA_X1 Stg_8_add_42_U1_3 ( .A(Stg_8_mult_partial_11_), .B(DIN_A_s_8__3_), 
        .CI(Stg_8_add_42_carry[3]), .CO(Stg_8_add_42_carry[4]), .S(
        DIN_A_s_9__3_) );
  FA_X1 Stg_8_add_42_U1_4 ( .A(Stg_8_mult_partial_12_), .B(DIN_A_s_8__4_), 
        .CI(Stg_8_add_42_carry[4]), .CO(Stg_8_add_42_carry[5]), .S(
        DIN_A_s_9__4_) );
  FA_X1 Stg_8_add_42_U1_5 ( .A(Stg_8_mult_partial_13_), .B(DIN_A_s_8__5_), 
        .CI(Stg_8_add_42_carry[5]), .CO(Stg_8_add_42_carry[6]), .S(
        DIN_A_s_9__5_) );
  FA_X1 Stg_8_add_42_U1_6 ( .A(Stg_8_mult_partial_14_), .B(DIN_A_s_8__6_), 
        .CI(Stg_8_add_42_carry[6]), .CO(Stg_8_add_42_carry[7]), .S(
        DIN_A_s_9__6_) );
  FA_X1 Stg_8_add_42_U1_7 ( .A(Stg_8_mult_partial_15_), .B(DIN_A_s_8__7_), 
        .CI(Stg_8_add_42_carry[7]), .S(DIN_A_s_9__7_) );
  INV_X1 Stg_9_REGn_regn_7_U6 ( .A(RST_n), .ZN(Stg_9_REGn_regn_7_n2) );
  INV_X1 Stg_9_REGn_regn_7_U5 ( .A(n3), .ZN(Stg_9_REGn_regn_7_n1) );
  AOI22_X1 Stg_9_REGn_regn_7_U4 ( .A1(n3), .A2(DIN_R_s_9__7_), .B1(
        Stg_9_DOUT_R_7_), .B2(Stg_9_REGn_regn_7_n1), .ZN(Stg_9_REGn_regn_7_n6)
         );
  NOR2_X1 Stg_9_REGn_regn_7_U3 ( .A1(Stg_9_REGn_regn_7_n6), .A2(
        Stg_9_REGn_regn_7_n2), .ZN(Stg_9_REGn_regn_7_n5) );
  DFF_X1 Stg_9_REGn_regn_7_Q_reg ( .D(Stg_9_REGn_regn_7_n5), .CK(CLK), .Q(
        Stg_9_DOUT_R_7_) );
  INV_X1 Stg_9_REGn_regn_6_U6 ( .A(RST_n), .ZN(Stg_9_REGn_regn_6_n2) );
  INV_X1 Stg_9_REGn_regn_6_U5 ( .A(n3), .ZN(Stg_9_REGn_regn_6_n1) );
  AOI22_X1 Stg_9_REGn_regn_6_U4 ( .A1(n3), .A2(DIN_R_s_9__6_), .B1(
        Stg_9_DOUT_R_6_), .B2(Stg_9_REGn_regn_6_n1), .ZN(Stg_9_REGn_regn_6_n6)
         );
  NOR2_X1 Stg_9_REGn_regn_6_U3 ( .A1(Stg_9_REGn_regn_6_n6), .A2(
        Stg_9_REGn_regn_6_n2), .ZN(Stg_9_REGn_regn_6_n5) );
  DFF_X1 Stg_9_REGn_regn_6_Q_reg ( .D(Stg_9_REGn_regn_6_n5), .CK(CLK), .Q(
        Stg_9_DOUT_R_6_) );
  INV_X1 Stg_9_REGn_regn_5_U6 ( .A(RST_n), .ZN(Stg_9_REGn_regn_5_n2) );
  INV_X1 Stg_9_REGn_regn_5_U5 ( .A(n3), .ZN(Stg_9_REGn_regn_5_n1) );
  AOI22_X1 Stg_9_REGn_regn_5_U4 ( .A1(n3), .A2(DIN_R_s_9__5_), .B1(
        Stg_9_DOUT_R_5_), .B2(Stg_9_REGn_regn_5_n1), .ZN(Stg_9_REGn_regn_5_n6)
         );
  NOR2_X1 Stg_9_REGn_regn_5_U3 ( .A1(Stg_9_REGn_regn_5_n6), .A2(
        Stg_9_REGn_regn_5_n2), .ZN(Stg_9_REGn_regn_5_n5) );
  DFF_X1 Stg_9_REGn_regn_5_Q_reg ( .D(Stg_9_REGn_regn_5_n5), .CK(CLK), .Q(
        Stg_9_DOUT_R_5_) );
  INV_X1 Stg_9_REGn_regn_4_U6 ( .A(RST_n), .ZN(Stg_9_REGn_regn_4_n2) );
  INV_X1 Stg_9_REGn_regn_4_U5 ( .A(n3), .ZN(Stg_9_REGn_regn_4_n1) );
  AOI22_X1 Stg_9_REGn_regn_4_U4 ( .A1(n3), .A2(DIN_R_s_9__4_), .B1(
        Stg_9_DOUT_R_4_), .B2(Stg_9_REGn_regn_4_n1), .ZN(Stg_9_REGn_regn_4_n6)
         );
  NOR2_X1 Stg_9_REGn_regn_4_U3 ( .A1(Stg_9_REGn_regn_4_n6), .A2(
        Stg_9_REGn_regn_4_n2), .ZN(Stg_9_REGn_regn_4_n5) );
  DFF_X1 Stg_9_REGn_regn_4_Q_reg ( .D(Stg_9_REGn_regn_4_n5), .CK(CLK), .Q(
        Stg_9_DOUT_R_4_) );
  INV_X1 Stg_9_REGn_regn_3_U6 ( .A(RST_n), .ZN(Stg_9_REGn_regn_3_n2) );
  INV_X1 Stg_9_REGn_regn_3_U5 ( .A(n3), .ZN(Stg_9_REGn_regn_3_n1) );
  AOI22_X1 Stg_9_REGn_regn_3_U4 ( .A1(n3), .A2(DIN_R_s_9__3_), .B1(
        Stg_9_DOUT_R_3_), .B2(Stg_9_REGn_regn_3_n1), .ZN(Stg_9_REGn_regn_3_n6)
         );
  NOR2_X1 Stg_9_REGn_regn_3_U3 ( .A1(Stg_9_REGn_regn_3_n6), .A2(
        Stg_9_REGn_regn_3_n2), .ZN(Stg_9_REGn_regn_3_n5) );
  DFF_X1 Stg_9_REGn_regn_3_Q_reg ( .D(Stg_9_REGn_regn_3_n5), .CK(CLK), .Q(
        Stg_9_DOUT_R_3_) );
  INV_X1 Stg_9_REGn_regn_2_U6 ( .A(RST_n), .ZN(Stg_9_REGn_regn_2_n2) );
  INV_X1 Stg_9_REGn_regn_2_U5 ( .A(n3), .ZN(Stg_9_REGn_regn_2_n1) );
  AOI22_X1 Stg_9_REGn_regn_2_U4 ( .A1(n3), .A2(DIN_R_s_9__2_), .B1(
        Stg_9_DOUT_R_2_), .B2(Stg_9_REGn_regn_2_n1), .ZN(Stg_9_REGn_regn_2_n6)
         );
  NOR2_X1 Stg_9_REGn_regn_2_U3 ( .A1(Stg_9_REGn_regn_2_n6), .A2(
        Stg_9_REGn_regn_2_n2), .ZN(Stg_9_REGn_regn_2_n5) );
  DFF_X1 Stg_9_REGn_regn_2_Q_reg ( .D(Stg_9_REGn_regn_2_n5), .CK(CLK), .Q(
        Stg_9_DOUT_R_2_) );
  INV_X1 Stg_9_REGn_regn_1_U6 ( .A(RST_n), .ZN(Stg_9_REGn_regn_1_n2) );
  INV_X1 Stg_9_REGn_regn_1_U5 ( .A(n3), .ZN(Stg_9_REGn_regn_1_n1) );
  AOI22_X1 Stg_9_REGn_regn_1_U4 ( .A1(n3), .A2(DIN_R_s_9__1_), .B1(
        Stg_9_DOUT_R_1_), .B2(Stg_9_REGn_regn_1_n1), .ZN(Stg_9_REGn_regn_1_n6)
         );
  NOR2_X1 Stg_9_REGn_regn_1_U3 ( .A1(Stg_9_REGn_regn_1_n6), .A2(
        Stg_9_REGn_regn_1_n2), .ZN(Stg_9_REGn_regn_1_n5) );
  DFF_X1 Stg_9_REGn_regn_1_Q_reg ( .D(Stg_9_REGn_regn_1_n5), .CK(CLK), .Q(
        Stg_9_DOUT_R_1_) );
  INV_X1 Stg_9_REGn_regn_0_U6 ( .A(RST_n), .ZN(Stg_9_REGn_regn_0_n2) );
  INV_X1 Stg_9_REGn_regn_0_U5 ( .A(n3), .ZN(Stg_9_REGn_regn_0_n1) );
  AOI22_X1 Stg_9_REGn_regn_0_U4 ( .A1(n3), .A2(DIN_R_s_9__0_), .B1(
        Stg_9_DOUT_R_0_), .B2(Stg_9_REGn_regn_0_n1), .ZN(Stg_9_REGn_regn_0_n6)
         );
  NOR2_X1 Stg_9_REGn_regn_0_U3 ( .A1(Stg_9_REGn_regn_0_n6), .A2(
        Stg_9_REGn_regn_0_n2), .ZN(Stg_9_REGn_regn_0_n5) );
  DFF_X1 Stg_9_REGn_regn_0_Q_reg ( .D(Stg_9_REGn_regn_0_n5), .CK(CLK), .Q(
        Stg_9_DOUT_R_0_) );
  XNOR2_X1 Stg_9_mult_41_U263 ( .A(H10[3]), .B(Stg_9_DOUT_R_1_), .ZN(
        Stg_9_mult_41_n275) );
  NAND2_X1 Stg_9_mult_41_U262 ( .A1(Stg_9_DOUT_R_1_), .A2(Stg_9_mult_41_n217), 
        .ZN(Stg_9_mult_41_n221) );
  XNOR2_X1 Stg_9_mult_41_U261 ( .A(H10[4]), .B(Stg_9_DOUT_R_1_), .ZN(
        Stg_9_mult_41_n220) );
  OAI22_X1 Stg_9_mult_41_U260 ( .A1(Stg_9_mult_41_n275), .A2(
        Stg_9_mult_41_n221), .B1(Stg_9_mult_41_n220), .B2(Stg_9_mult_41_n217), 
        .ZN(Stg_9_mult_41_n100) );
  XNOR2_X1 Stg_9_mult_41_U259 ( .A(H10[2]), .B(Stg_9_DOUT_R_1_), .ZN(
        Stg_9_mult_41_n255) );
  OAI22_X1 Stg_9_mult_41_U258 ( .A1(Stg_9_mult_41_n255), .A2(
        Stg_9_mult_41_n221), .B1(Stg_9_mult_41_n275), .B2(Stg_9_mult_41_n217), 
        .ZN(Stg_9_mult_41_n101) );
  XNOR2_X1 Stg_9_mult_41_U257 ( .A(H10[6]), .B(Stg_9_DOUT_R_7_), .ZN(
        Stg_9_mult_41_n264) );
  XNOR2_X1 Stg_9_mult_41_U256 ( .A(Stg_9_mult_41_n204), .B(Stg_9_DOUT_R_6_), 
        .ZN(Stg_9_mult_41_n274) );
  NAND2_X1 Stg_9_mult_41_U255 ( .A1(Stg_9_mult_41_n256), .A2(
        Stg_9_mult_41_n274), .ZN(Stg_9_mult_41_n258) );
  XNOR2_X1 Stg_9_mult_41_U254 ( .A(H10[7]), .B(Stg_9_DOUT_R_7_), .ZN(
        Stg_9_mult_41_n266) );
  OAI22_X1 Stg_9_mult_41_U253 ( .A1(Stg_9_mult_41_n264), .A2(
        Stg_9_mult_41_n258), .B1(Stg_9_mult_41_n256), .B2(Stg_9_mult_41_n266), 
        .ZN(Stg_9_mult_41_n15) );
  XNOR2_X1 Stg_9_mult_41_U252 ( .A(H10[6]), .B(Stg_9_DOUT_R_5_), .ZN(
        Stg_9_mult_41_n243) );
  XNOR2_X1 Stg_9_mult_41_U251 ( .A(Stg_9_mult_41_n209), .B(Stg_9_DOUT_R_4_), 
        .ZN(Stg_9_mult_41_n273) );
  NAND2_X1 Stg_9_mult_41_U250 ( .A1(Stg_9_mult_41_n235), .A2(
        Stg_9_mult_41_n273), .ZN(Stg_9_mult_41_n237) );
  XNOR2_X1 Stg_9_mult_41_U249 ( .A(H10[7]), .B(Stg_9_DOUT_R_5_), .ZN(
        Stg_9_mult_41_n245) );
  OAI22_X1 Stg_9_mult_41_U248 ( .A1(Stg_9_mult_41_n243), .A2(
        Stg_9_mult_41_n237), .B1(Stg_9_mult_41_n235), .B2(Stg_9_mult_41_n245), 
        .ZN(Stg_9_mult_41_n21) );
  XNOR2_X1 Stg_9_mult_41_U247 ( .A(H10[6]), .B(Stg_9_DOUT_R_3_), .ZN(
        Stg_9_mult_41_n271) );
  XOR2_X1 Stg_9_mult_41_U246 ( .A(Stg_9_DOUT_R_2_), .B(Stg_9_DOUT_R_1_), .Z(
        Stg_9_mult_41_n253) );
  XNOR2_X1 Stg_9_mult_41_U245 ( .A(Stg_9_mult_41_n214), .B(Stg_9_DOUT_R_2_), 
        .ZN(Stg_9_mult_41_n272) );
  NAND2_X1 Stg_9_mult_41_U244 ( .A1(Stg_9_mult_41_n215), .A2(
        Stg_9_mult_41_n272), .ZN(Stg_9_mult_41_n227) );
  XNOR2_X1 Stg_9_mult_41_U243 ( .A(H10[7]), .B(Stg_9_DOUT_R_3_), .ZN(
        Stg_9_mult_41_n234) );
  OAI22_X1 Stg_9_mult_41_U242 ( .A1(Stg_9_mult_41_n271), .A2(
        Stg_9_mult_41_n227), .B1(Stg_9_mult_41_n215), .B2(Stg_9_mult_41_n234), 
        .ZN(Stg_9_mult_41_n31) );
  XNOR2_X1 Stg_9_mult_41_U241 ( .A(H10[1]), .B(Stg_9_DOUT_R_7_), .ZN(
        Stg_9_mult_41_n259) );
  XNOR2_X1 Stg_9_mult_41_U240 ( .A(H10[2]), .B(Stg_9_DOUT_R_7_), .ZN(
        Stg_9_mult_41_n260) );
  OAI22_X1 Stg_9_mult_41_U239 ( .A1(Stg_9_mult_41_n259), .A2(
        Stg_9_mult_41_n258), .B1(Stg_9_mult_41_n256), .B2(Stg_9_mult_41_n260), 
        .ZN(Stg_9_mult_41_n269) );
  XNOR2_X1 Stg_9_mult_41_U238 ( .A(H10[5]), .B(Stg_9_DOUT_R_3_), .ZN(
        Stg_9_mult_41_n232) );
  OAI22_X1 Stg_9_mult_41_U237 ( .A1(Stg_9_mult_41_n232), .A2(
        Stg_9_mult_41_n227), .B1(Stg_9_mult_41_n215), .B2(Stg_9_mult_41_n271), 
        .ZN(Stg_9_mult_41_n270) );
  OR2_X1 Stg_9_mult_41_U236 ( .A1(Stg_9_mult_41_n269), .A2(Stg_9_mult_41_n270), 
        .ZN(Stg_9_mult_41_n37) );
  XNOR2_X1 Stg_9_mult_41_U235 ( .A(Stg_9_mult_41_n269), .B(Stg_9_mult_41_n270), 
        .ZN(Stg_9_mult_41_n38) );
  OR3_X1 Stg_9_mult_41_U234 ( .A1(Stg_9_mult_41_n256), .A2(H10[0]), .A3(
        Stg_9_mult_41_n204), .ZN(Stg_9_mult_41_n268) );
  OAI21_X1 Stg_9_mult_41_U233 ( .B1(Stg_9_mult_41_n204), .B2(
        Stg_9_mult_41_n258), .A(Stg_9_mult_41_n268), .ZN(Stg_9_mult_41_n68) );
  OR3_X1 Stg_9_mult_41_U232 ( .A1(Stg_9_mult_41_n235), .A2(H10[0]), .A3(
        Stg_9_mult_41_n209), .ZN(Stg_9_mult_41_n267) );
  OAI21_X1 Stg_9_mult_41_U231 ( .B1(Stg_9_mult_41_n209), .B2(
        Stg_9_mult_41_n237), .A(Stg_9_mult_41_n267), .ZN(Stg_9_mult_41_n69) );
  OAI22_X1 Stg_9_mult_41_U230 ( .A1(Stg_9_mult_41_n266), .A2(
        Stg_9_mult_41_n256), .B1(Stg_9_mult_41_n258), .B2(Stg_9_mult_41_n266), 
        .ZN(Stg_9_mult_41_n265) );
  XNOR2_X1 Stg_9_mult_41_U229 ( .A(H10[5]), .B(Stg_9_DOUT_R_7_), .ZN(
        Stg_9_mult_41_n263) );
  OAI22_X1 Stg_9_mult_41_U228 ( .A1(Stg_9_mult_41_n263), .A2(
        Stg_9_mult_41_n258), .B1(Stg_9_mult_41_n256), .B2(Stg_9_mult_41_n264), 
        .ZN(Stg_9_mult_41_n73) );
  XNOR2_X1 Stg_9_mult_41_U227 ( .A(H10[4]), .B(Stg_9_DOUT_R_7_), .ZN(
        Stg_9_mult_41_n262) );
  OAI22_X1 Stg_9_mult_41_U226 ( .A1(Stg_9_mult_41_n262), .A2(
        Stg_9_mult_41_n258), .B1(Stg_9_mult_41_n256), .B2(Stg_9_mult_41_n263), 
        .ZN(Stg_9_mult_41_n74) );
  XNOR2_X1 Stg_9_mult_41_U225 ( .A(H10[3]), .B(Stg_9_DOUT_R_7_), .ZN(
        Stg_9_mult_41_n261) );
  OAI22_X1 Stg_9_mult_41_U224 ( .A1(Stg_9_mult_41_n261), .A2(
        Stg_9_mult_41_n258), .B1(Stg_9_mult_41_n256), .B2(Stg_9_mult_41_n262), 
        .ZN(Stg_9_mult_41_n75) );
  OAI22_X1 Stg_9_mult_41_U223 ( .A1(Stg_9_mult_41_n260), .A2(
        Stg_9_mult_41_n258), .B1(Stg_9_mult_41_n256), .B2(Stg_9_mult_41_n261), 
        .ZN(Stg_9_mult_41_n76) );
  XNOR2_X1 Stg_9_mult_41_U222 ( .A(H10[0]), .B(Stg_9_DOUT_R_7_), .ZN(
        Stg_9_mult_41_n257) );
  OAI22_X1 Stg_9_mult_41_U221 ( .A1(Stg_9_mult_41_n257), .A2(
        Stg_9_mult_41_n258), .B1(Stg_9_mult_41_n256), .B2(Stg_9_mult_41_n259), 
        .ZN(Stg_9_mult_41_n78) );
  NOR2_X1 Stg_9_mult_41_U220 ( .A1(Stg_9_mult_41_n256), .A2(Stg_9_mult_41_n219), .ZN(Stg_9_mult_41_n79) );
  OAI22_X1 Stg_9_mult_41_U219 ( .A1(H10[1]), .A2(Stg_9_mult_41_n221), .B1(
        Stg_9_mult_41_n255), .B2(Stg_9_mult_41_n217), .ZN(Stg_9_mult_41_n254)
         );
  NAND3_X1 Stg_9_mult_41_U218 ( .A1(Stg_9_mult_41_n253), .A2(
        Stg_9_mult_41_n219), .A3(Stg_9_DOUT_R_3_), .ZN(Stg_9_mult_41_n252) );
  OAI21_X1 Stg_9_mult_41_U217 ( .B1(Stg_9_mult_41_n214), .B2(
        Stg_9_mult_41_n227), .A(Stg_9_mult_41_n252), .ZN(Stg_9_mult_41_n251)
         );
  AOI222_X1 Stg_9_mult_41_U216 ( .A1(Stg_9_mult_41_n197), .A2(
        Stg_9_mult_41_n56), .B1(Stg_9_mult_41_n251), .B2(Stg_9_mult_41_n197), 
        .C1(Stg_9_mult_41_n251), .C2(Stg_9_mult_41_n56), .ZN(
        Stg_9_mult_41_n250) );
  AOI222_X1 Stg_9_mult_41_U215 ( .A1(Stg_9_mult_41_n211), .A2(
        Stg_9_mult_41_n54), .B1(Stg_9_mult_41_n211), .B2(Stg_9_mult_41_n55), 
        .C1(Stg_9_mult_41_n55), .C2(Stg_9_mult_41_n54), .ZN(Stg_9_mult_41_n249) );
  AOI222_X1 Stg_9_mult_41_U214 ( .A1(Stg_9_mult_41_n210), .A2(
        Stg_9_mult_41_n50), .B1(Stg_9_mult_41_n210), .B2(Stg_9_mult_41_n53), 
        .C1(Stg_9_mult_41_n53), .C2(Stg_9_mult_41_n50), .ZN(Stg_9_mult_41_n248) );
  AOI222_X1 Stg_9_mult_41_U213 ( .A1(Stg_9_mult_41_n206), .A2(
        Stg_9_mult_41_n46), .B1(Stg_9_mult_41_n206), .B2(Stg_9_mult_41_n49), 
        .C1(Stg_9_mult_41_n49), .C2(Stg_9_mult_41_n46), .ZN(Stg_9_mult_41_n247) );
  AOI222_X1 Stg_9_mult_41_U212 ( .A1(Stg_9_mult_41_n205), .A2(
        Stg_9_mult_41_n40), .B1(Stg_9_mult_41_n205), .B2(Stg_9_mult_41_n45), 
        .C1(Stg_9_mult_41_n45), .C2(Stg_9_mult_41_n40), .ZN(Stg_9_mult_41_n246) );
  OAI22_X1 Stg_9_mult_41_U211 ( .A1(Stg_9_mult_41_n245), .A2(
        Stg_9_mult_41_n235), .B1(Stg_9_mult_41_n237), .B2(Stg_9_mult_41_n245), 
        .ZN(Stg_9_mult_41_n244) );
  XNOR2_X1 Stg_9_mult_41_U210 ( .A(H10[5]), .B(Stg_9_DOUT_R_5_), .ZN(
        Stg_9_mult_41_n242) );
  OAI22_X1 Stg_9_mult_41_U209 ( .A1(Stg_9_mult_41_n242), .A2(
        Stg_9_mult_41_n237), .B1(Stg_9_mult_41_n235), .B2(Stg_9_mult_41_n243), 
        .ZN(Stg_9_mult_41_n81) );
  XNOR2_X1 Stg_9_mult_41_U208 ( .A(H10[4]), .B(Stg_9_DOUT_R_5_), .ZN(
        Stg_9_mult_41_n241) );
  OAI22_X1 Stg_9_mult_41_U207 ( .A1(Stg_9_mult_41_n241), .A2(
        Stg_9_mult_41_n237), .B1(Stg_9_mult_41_n235), .B2(Stg_9_mult_41_n242), 
        .ZN(Stg_9_mult_41_n82) );
  XNOR2_X1 Stg_9_mult_41_U206 ( .A(H10[3]), .B(Stg_9_DOUT_R_5_), .ZN(
        Stg_9_mult_41_n240) );
  OAI22_X1 Stg_9_mult_41_U205 ( .A1(Stg_9_mult_41_n240), .A2(
        Stg_9_mult_41_n237), .B1(Stg_9_mult_41_n235), .B2(Stg_9_mult_41_n241), 
        .ZN(Stg_9_mult_41_n83) );
  XNOR2_X1 Stg_9_mult_41_U204 ( .A(H10[2]), .B(Stg_9_DOUT_R_5_), .ZN(
        Stg_9_mult_41_n239) );
  OAI22_X1 Stg_9_mult_41_U203 ( .A1(Stg_9_mult_41_n239), .A2(
        Stg_9_mult_41_n237), .B1(Stg_9_mult_41_n235), .B2(Stg_9_mult_41_n240), 
        .ZN(Stg_9_mult_41_n84) );
  XNOR2_X1 Stg_9_mult_41_U202 ( .A(H10[1]), .B(Stg_9_DOUT_R_5_), .ZN(
        Stg_9_mult_41_n238) );
  OAI22_X1 Stg_9_mult_41_U201 ( .A1(Stg_9_mult_41_n238), .A2(
        Stg_9_mult_41_n237), .B1(Stg_9_mult_41_n235), .B2(Stg_9_mult_41_n239), 
        .ZN(Stg_9_mult_41_n85) );
  XNOR2_X1 Stg_9_mult_41_U200 ( .A(H10[0]), .B(Stg_9_DOUT_R_5_), .ZN(
        Stg_9_mult_41_n236) );
  OAI22_X1 Stg_9_mult_41_U199 ( .A1(Stg_9_mult_41_n236), .A2(
        Stg_9_mult_41_n237), .B1(Stg_9_mult_41_n235), .B2(Stg_9_mult_41_n238), 
        .ZN(Stg_9_mult_41_n86) );
  NOR2_X1 Stg_9_mult_41_U198 ( .A1(Stg_9_mult_41_n235), .A2(Stg_9_mult_41_n219), .ZN(Stg_9_mult_41_n87) );
  OAI22_X1 Stg_9_mult_41_U197 ( .A1(Stg_9_mult_41_n234), .A2(
        Stg_9_mult_41_n215), .B1(Stg_9_mult_41_n227), .B2(Stg_9_mult_41_n234), 
        .ZN(Stg_9_mult_41_n233) );
  XNOR2_X1 Stg_9_mult_41_U196 ( .A(H10[4]), .B(Stg_9_DOUT_R_3_), .ZN(
        Stg_9_mult_41_n231) );
  OAI22_X1 Stg_9_mult_41_U195 ( .A1(Stg_9_mult_41_n231), .A2(
        Stg_9_mult_41_n227), .B1(Stg_9_mult_41_n215), .B2(Stg_9_mult_41_n232), 
        .ZN(Stg_9_mult_41_n90) );
  XNOR2_X1 Stg_9_mult_41_U194 ( .A(H10[3]), .B(Stg_9_DOUT_R_3_), .ZN(
        Stg_9_mult_41_n230) );
  OAI22_X1 Stg_9_mult_41_U193 ( .A1(Stg_9_mult_41_n230), .A2(
        Stg_9_mult_41_n227), .B1(Stg_9_mult_41_n215), .B2(Stg_9_mult_41_n231), 
        .ZN(Stg_9_mult_41_n91) );
  XNOR2_X1 Stg_9_mult_41_U192 ( .A(H10[2]), .B(Stg_9_DOUT_R_3_), .ZN(
        Stg_9_mult_41_n229) );
  OAI22_X1 Stg_9_mult_41_U191 ( .A1(Stg_9_mult_41_n229), .A2(
        Stg_9_mult_41_n227), .B1(Stg_9_mult_41_n215), .B2(Stg_9_mult_41_n230), 
        .ZN(Stg_9_mult_41_n92) );
  XNOR2_X1 Stg_9_mult_41_U190 ( .A(H10[1]), .B(Stg_9_DOUT_R_3_), .ZN(
        Stg_9_mult_41_n228) );
  OAI22_X1 Stg_9_mult_41_U189 ( .A1(Stg_9_mult_41_n228), .A2(
        Stg_9_mult_41_n227), .B1(Stg_9_mult_41_n215), .B2(Stg_9_mult_41_n229), 
        .ZN(Stg_9_mult_41_n93) );
  XNOR2_X1 Stg_9_mult_41_U188 ( .A(H10[0]), .B(Stg_9_DOUT_R_3_), .ZN(
        Stg_9_mult_41_n226) );
  OAI22_X1 Stg_9_mult_41_U187 ( .A1(Stg_9_mult_41_n226), .A2(
        Stg_9_mult_41_n227), .B1(Stg_9_mult_41_n215), .B2(Stg_9_mult_41_n228), 
        .ZN(Stg_9_mult_41_n94) );
  XNOR2_X1 Stg_9_mult_41_U186 ( .A(H10[7]), .B(Stg_9_DOUT_R_1_), .ZN(
        Stg_9_mult_41_n224) );
  OAI22_X1 Stg_9_mult_41_U185 ( .A1(Stg_9_mult_41_n217), .A2(
        Stg_9_mult_41_n224), .B1(Stg_9_mult_41_n221), .B2(Stg_9_mult_41_n224), 
        .ZN(Stg_9_mult_41_n225) );
  XNOR2_X1 Stg_9_mult_41_U184 ( .A(H10[6]), .B(Stg_9_DOUT_R_1_), .ZN(
        Stg_9_mult_41_n223) );
  OAI22_X1 Stg_9_mult_41_U183 ( .A1(Stg_9_mult_41_n223), .A2(
        Stg_9_mult_41_n221), .B1(Stg_9_mult_41_n224), .B2(Stg_9_mult_41_n217), 
        .ZN(Stg_9_mult_41_n97) );
  XNOR2_X1 Stg_9_mult_41_U182 ( .A(H10[5]), .B(Stg_9_DOUT_R_1_), .ZN(
        Stg_9_mult_41_n222) );
  OAI22_X1 Stg_9_mult_41_U181 ( .A1(Stg_9_mult_41_n222), .A2(
        Stg_9_mult_41_n221), .B1(Stg_9_mult_41_n223), .B2(Stg_9_mult_41_n217), 
        .ZN(Stg_9_mult_41_n98) );
  OAI22_X1 Stg_9_mult_41_U180 ( .A1(Stg_9_mult_41_n220), .A2(
        Stg_9_mult_41_n221), .B1(Stg_9_mult_41_n222), .B2(Stg_9_mult_41_n217), 
        .ZN(Stg_9_mult_41_n99) );
  INV_X1 Stg_9_mult_41_U179 ( .A(Stg_9_DOUT_R_7_), .ZN(Stg_9_mult_41_n204) );
  INV_X1 Stg_9_mult_41_U178 ( .A(Stg_9_DOUT_R_5_), .ZN(Stg_9_mult_41_n209) );
  INV_X1 Stg_9_mult_41_U177 ( .A(Stg_9_DOUT_R_0_), .ZN(Stg_9_mult_41_n217) );
  XOR2_X1 Stg_9_mult_41_U176 ( .A(Stg_9_DOUT_R_6_), .B(Stg_9_mult_41_n209), 
        .Z(Stg_9_mult_41_n256) );
  INV_X1 Stg_9_mult_41_U175 ( .A(H10[1]), .ZN(Stg_9_mult_41_n218) );
  AND3_X1 Stg_9_mult_41_U174 ( .A1(Stg_9_mult_41_n254), .A2(Stg_9_mult_41_n218), .A3(Stg_9_DOUT_R_1_), .ZN(Stg_9_mult_41_n199) );
  AND2_X1 Stg_9_mult_41_U173 ( .A1(Stg_9_mult_41_n253), .A2(Stg_9_mult_41_n254), .ZN(Stg_9_mult_41_n198) );
  MUX2_X1 Stg_9_mult_41_U172 ( .A(Stg_9_mult_41_n198), .B(Stg_9_mult_41_n199), 
        .S(Stg_9_mult_41_n219), .Z(Stg_9_mult_41_n197) );
  INV_X1 Stg_9_mult_41_U171 ( .A(H10[0]), .ZN(Stg_9_mult_41_n219) );
  INV_X1 Stg_9_mult_41_U170 ( .A(Stg_9_DOUT_R_3_), .ZN(Stg_9_mult_41_n214) );
  XOR2_X1 Stg_9_mult_41_U169 ( .A(Stg_9_DOUT_R_4_), .B(Stg_9_mult_41_n214), 
        .Z(Stg_9_mult_41_n235) );
  INV_X1 Stg_9_mult_41_U168 ( .A(Stg_9_mult_41_n244), .ZN(Stg_9_mult_41_n208)
         );
  INV_X1 Stg_9_mult_41_U167 ( .A(Stg_9_mult_41_n31), .ZN(Stg_9_mult_41_n212)
         );
  INV_X1 Stg_9_mult_41_U166 ( .A(Stg_9_mult_41_n233), .ZN(Stg_9_mult_41_n213)
         );
  INV_X1 Stg_9_mult_41_U165 ( .A(Stg_9_mult_41_n225), .ZN(Stg_9_mult_41_n216)
         );
  INV_X1 Stg_9_mult_41_U164 ( .A(Stg_9_mult_41_n21), .ZN(Stg_9_mult_41_n207)
         );
  INV_X1 Stg_9_mult_41_U163 ( .A(Stg_9_mult_41_n246), .ZN(Stg_9_mult_41_n201)
         );
  INV_X1 Stg_9_mult_41_U162 ( .A(Stg_9_mult_41_n265), .ZN(Stg_9_mult_41_n203)
         );
  INV_X1 Stg_9_mult_41_U161 ( .A(Stg_9_mult_41_n253), .ZN(Stg_9_mult_41_n215)
         );
  INV_X1 Stg_9_mult_41_U160 ( .A(Stg_9_mult_41_n250), .ZN(Stg_9_mult_41_n211)
         );
  INV_X1 Stg_9_mult_41_U159 ( .A(Stg_9_mult_41_n249), .ZN(Stg_9_mult_41_n210)
         );
  INV_X1 Stg_9_mult_41_U158 ( .A(Stg_9_mult_41_n248), .ZN(Stg_9_mult_41_n206)
         );
  INV_X1 Stg_9_mult_41_U157 ( .A(Stg_9_mult_41_n247), .ZN(Stg_9_mult_41_n205)
         );
  INV_X1 Stg_9_mult_41_U156 ( .A(Stg_9_mult_41_n15), .ZN(Stg_9_mult_41_n202)
         );
  INV_X1 Stg_9_mult_41_U155 ( .A(Stg_9_mult_41_n1), .ZN(Stg_9_mult_partial_15_) );
  HA_X1 Stg_9_mult_41_U37 ( .A(Stg_9_mult_41_n94), .B(Stg_9_mult_41_n101), 
        .CO(Stg_9_mult_41_n55), .S(Stg_9_mult_41_n56) );
  FA_X1 Stg_9_mult_41_U36 ( .A(Stg_9_mult_41_n100), .B(Stg_9_mult_41_n87), 
        .CI(Stg_9_mult_41_n93), .CO(Stg_9_mult_41_n53), .S(Stg_9_mult_41_n54)
         );
  HA_X1 Stg_9_mult_41_U35 ( .A(Stg_9_mult_41_n69), .B(Stg_9_mult_41_n86), .CO(
        Stg_9_mult_41_n51), .S(Stg_9_mult_41_n52) );
  FA_X1 Stg_9_mult_41_U34 ( .A(Stg_9_mult_41_n92), .B(Stg_9_mult_41_n99), .CI(
        Stg_9_mult_41_n52), .CO(Stg_9_mult_41_n49), .S(Stg_9_mult_41_n50) );
  FA_X1 Stg_9_mult_41_U33 ( .A(Stg_9_mult_41_n98), .B(Stg_9_mult_41_n79), .CI(
        Stg_9_mult_41_n91), .CO(Stg_9_mult_41_n47), .S(Stg_9_mult_41_n48) );
  FA_X1 Stg_9_mult_41_U32 ( .A(Stg_9_mult_41_n51), .B(Stg_9_mult_41_n85), .CI(
        Stg_9_mult_41_n48), .CO(Stg_9_mult_41_n45), .S(Stg_9_mult_41_n46) );
  HA_X1 Stg_9_mult_41_U31 ( .A(Stg_9_mult_41_n68), .B(Stg_9_mult_41_n78), .CO(
        Stg_9_mult_41_n43), .S(Stg_9_mult_41_n44) );
  FA_X1 Stg_9_mult_41_U30 ( .A(Stg_9_mult_41_n84), .B(Stg_9_mult_41_n97), .CI(
        Stg_9_mult_41_n90), .CO(Stg_9_mult_41_n41), .S(Stg_9_mult_41_n42) );
  FA_X1 Stg_9_mult_41_U29 ( .A(Stg_9_mult_41_n47), .B(Stg_9_mult_41_n44), .CI(
        Stg_9_mult_41_n42), .CO(Stg_9_mult_41_n39), .S(Stg_9_mult_41_n40) );
  FA_X1 Stg_9_mult_41_U26 ( .A(Stg_9_mult_41_n216), .B(Stg_9_mult_41_n83), 
        .CI(Stg_9_mult_41_n43), .CO(Stg_9_mult_41_n35), .S(Stg_9_mult_41_n36)
         );
  FA_X1 Stg_9_mult_41_U25 ( .A(Stg_9_mult_41_n41), .B(Stg_9_mult_41_n38), .CI(
        Stg_9_mult_41_n36), .CO(Stg_9_mult_41_n33), .S(Stg_9_mult_41_n34) );
  FA_X1 Stg_9_mult_41_U23 ( .A(Stg_9_mult_41_n76), .B(Stg_9_mult_41_n82), .CI(
        Stg_9_mult_41_n212), .CO(Stg_9_mult_41_n29), .S(Stg_9_mult_41_n30) );
  FA_X1 Stg_9_mult_41_U22 ( .A(Stg_9_mult_41_n35), .B(Stg_9_mult_41_n37), .CI(
        Stg_9_mult_41_n30), .CO(Stg_9_mult_41_n27), .S(Stg_9_mult_41_n28) );
  FA_X1 Stg_9_mult_41_U21 ( .A(Stg_9_mult_41_n81), .B(Stg_9_mult_41_n31), .CI(
        Stg_9_mult_41_n213), .CO(Stg_9_mult_41_n25), .S(Stg_9_mult_41_n26) );
  FA_X1 Stg_9_mult_41_U20 ( .A(Stg_9_mult_41_n29), .B(Stg_9_mult_41_n75), .CI(
        Stg_9_mult_41_n26), .CO(Stg_9_mult_41_n23), .S(Stg_9_mult_41_n24) );
  FA_X1 Stg_9_mult_41_U18 ( .A(Stg_9_mult_41_n207), .B(Stg_9_mult_41_n74), 
        .CI(Stg_9_mult_41_n25), .CO(Stg_9_mult_41_n19), .S(Stg_9_mult_41_n20)
         );
  FA_X1 Stg_9_mult_41_U17 ( .A(Stg_9_mult_41_n73), .B(Stg_9_mult_41_n21), .CI(
        Stg_9_mult_41_n208), .CO(Stg_9_mult_41_n17), .S(Stg_9_mult_41_n18) );
  FA_X1 Stg_9_mult_41_U8 ( .A(Stg_9_mult_41_n34), .B(Stg_9_mult_41_n39), .CI(
        Stg_9_mult_41_n201), .CO(Stg_9_mult_41_n7), .S(Stg_9_mult_partial_8_)
         );
  FA_X1 Stg_9_mult_41_U7 ( .A(Stg_9_mult_41_n28), .B(Stg_9_mult_41_n33), .CI(
        Stg_9_mult_41_n7), .CO(Stg_9_mult_41_n6), .S(Stg_9_mult_partial_9_) );
  FA_X1 Stg_9_mult_41_U6 ( .A(Stg_9_mult_41_n24), .B(Stg_9_mult_41_n27), .CI(
        Stg_9_mult_41_n6), .CO(Stg_9_mult_41_n5), .S(Stg_9_mult_partial_10_)
         );
  FA_X1 Stg_9_mult_41_U5 ( .A(Stg_9_mult_41_n20), .B(Stg_9_mult_41_n23), .CI(
        Stg_9_mult_41_n5), .CO(Stg_9_mult_41_n4), .S(Stg_9_mult_partial_11_)
         );
  FA_X1 Stg_9_mult_41_U4 ( .A(Stg_9_mult_41_n19), .B(Stg_9_mult_41_n18), .CI(
        Stg_9_mult_41_n4), .CO(Stg_9_mult_41_n3), .S(Stg_9_mult_partial_12_)
         );
  FA_X1 Stg_9_mult_41_U3 ( .A(Stg_9_mult_41_n17), .B(Stg_9_mult_41_n202), .CI(
        Stg_9_mult_41_n3), .CO(Stg_9_mult_41_n2), .S(Stg_9_mult_partial_13_)
         );
  FA_X1 Stg_9_mult_41_U2 ( .A(Stg_9_mult_41_n203), .B(Stg_9_mult_41_n15), .CI(
        Stg_9_mult_41_n2), .CO(Stg_9_mult_41_n1), .S(Stg_9_mult_partial_14_)
         );
  XOR2_X1 Stg_9_add_42_U2 ( .A(DIN_A_s_9__0_), .B(Stg_9_mult_partial_8_), .Z(
        DIN_A_s_10__0_) );
  AND2_X1 Stg_9_add_42_U1 ( .A1(DIN_A_s_9__0_), .A2(Stg_9_mult_partial_8_), 
        .ZN(Stg_9_add_42_n1) );
  FA_X1 Stg_9_add_42_U1_1 ( .A(Stg_9_mult_partial_9_), .B(DIN_A_s_9__1_), .CI(
        Stg_9_add_42_n1), .CO(Stg_9_add_42_carry[2]), .S(DIN_A_s_10__1_) );
  FA_X1 Stg_9_add_42_U1_2 ( .A(Stg_9_mult_partial_10_), .B(DIN_A_s_9__2_), 
        .CI(Stg_9_add_42_carry[2]), .CO(Stg_9_add_42_carry[3]), .S(
        DIN_A_s_10__2_) );
  FA_X1 Stg_9_add_42_U1_3 ( .A(Stg_9_mult_partial_11_), .B(DIN_A_s_9__3_), 
        .CI(Stg_9_add_42_carry[3]), .CO(Stg_9_add_42_carry[4]), .S(
        DIN_A_s_10__3_) );
  FA_X1 Stg_9_add_42_U1_4 ( .A(Stg_9_mult_partial_12_), .B(DIN_A_s_9__4_), 
        .CI(Stg_9_add_42_carry[4]), .CO(Stg_9_add_42_carry[5]), .S(
        DIN_A_s_10__4_) );
  FA_X1 Stg_9_add_42_U1_5 ( .A(Stg_9_mult_partial_13_), .B(DIN_A_s_9__5_), 
        .CI(Stg_9_add_42_carry[5]), .CO(Stg_9_add_42_carry[6]), .S(
        DIN_A_s_10__5_) );
  FA_X1 Stg_9_add_42_U1_6 ( .A(Stg_9_mult_partial_14_), .B(DIN_A_s_9__6_), 
        .CI(Stg_9_add_42_carry[6]), .CO(Stg_9_add_42_carry[7]), .S(
        DIN_A_s_10__6_) );
  FA_X1 Stg_9_add_42_U1_7 ( .A(Stg_9_mult_partial_15_), .B(DIN_A_s_9__7_), 
        .CI(Stg_9_add_42_carry[7]), .S(DIN_A_s_10__7_) );
  INV_X1 OutputReg_regn_7_U6 ( .A(RST_n), .ZN(OutputReg_regn_7_n2) );
  INV_X1 OutputReg_regn_7_U5 ( .A(n3), .ZN(OutputReg_regn_7_n1) );
  AOI22_X1 OutputReg_regn_7_U4 ( .A1(n3), .A2(DIN_A_s_10__7_), .B1(DOUT[7]), 
        .B2(OutputReg_regn_7_n1), .ZN(OutputReg_regn_7_n6) );
  NOR2_X1 OutputReg_regn_7_U3 ( .A1(OutputReg_regn_7_n6), .A2(
        OutputReg_regn_7_n2), .ZN(OutputReg_regn_7_n5) );
  DFF_X1 OutputReg_regn_7_Q_reg ( .D(OutputReg_regn_7_n5), .CK(CLK), .Q(
        DOUT[7]) );
  INV_X1 OutputReg_regn_6_U6 ( .A(RST_n), .ZN(OutputReg_regn_6_n2) );
  INV_X1 OutputReg_regn_6_U5 ( .A(n3), .ZN(OutputReg_regn_6_n1) );
  AOI22_X1 OutputReg_regn_6_U4 ( .A1(n3), .A2(DIN_A_s_10__6_), .B1(DOUT[6]), 
        .B2(OutputReg_regn_6_n1), .ZN(OutputReg_regn_6_n6) );
  NOR2_X1 OutputReg_regn_6_U3 ( .A1(OutputReg_regn_6_n6), .A2(
        OutputReg_regn_6_n2), .ZN(OutputReg_regn_6_n5) );
  DFF_X1 OutputReg_regn_6_Q_reg ( .D(OutputReg_regn_6_n5), .CK(CLK), .Q(
        DOUT[6]) );
  INV_X1 OutputReg_regn_5_U6 ( .A(RST_n), .ZN(OutputReg_regn_5_n2) );
  INV_X1 OutputReg_regn_5_U5 ( .A(n3), .ZN(OutputReg_regn_5_n1) );
  AOI22_X1 OutputReg_regn_5_U4 ( .A1(n3), .A2(DIN_A_s_10__5_), .B1(DOUT[5]), 
        .B2(OutputReg_regn_5_n1), .ZN(OutputReg_regn_5_n6) );
  NOR2_X1 OutputReg_regn_5_U3 ( .A1(OutputReg_regn_5_n6), .A2(
        OutputReg_regn_5_n2), .ZN(OutputReg_regn_5_n5) );
  DFF_X1 OutputReg_regn_5_Q_reg ( .D(OutputReg_regn_5_n5), .CK(CLK), .Q(
        DOUT[5]) );
  INV_X1 OutputReg_regn_4_U6 ( .A(RST_n), .ZN(OutputReg_regn_4_n2) );
  INV_X1 OutputReg_regn_4_U5 ( .A(n3), .ZN(OutputReg_regn_4_n1) );
  AOI22_X1 OutputReg_regn_4_U4 ( .A1(n3), .A2(DIN_A_s_10__4_), .B1(DOUT[4]), 
        .B2(OutputReg_regn_4_n1), .ZN(OutputReg_regn_4_n6) );
  NOR2_X1 OutputReg_regn_4_U3 ( .A1(OutputReg_regn_4_n6), .A2(
        OutputReg_regn_4_n2), .ZN(OutputReg_regn_4_n5) );
  DFF_X1 OutputReg_regn_4_Q_reg ( .D(OutputReg_regn_4_n5), .CK(CLK), .Q(
        DOUT[4]) );
  INV_X1 OutputReg_regn_3_U6 ( .A(RST_n), .ZN(OutputReg_regn_3_n2) );
  INV_X1 OutputReg_regn_3_U5 ( .A(n3), .ZN(OutputReg_regn_3_n1) );
  AOI22_X1 OutputReg_regn_3_U4 ( .A1(n3), .A2(DIN_A_s_10__3_), .B1(DOUT[3]), 
        .B2(OutputReg_regn_3_n1), .ZN(OutputReg_regn_3_n6) );
  NOR2_X1 OutputReg_regn_3_U3 ( .A1(OutputReg_regn_3_n6), .A2(
        OutputReg_regn_3_n2), .ZN(OutputReg_regn_3_n5) );
  DFF_X1 OutputReg_regn_3_Q_reg ( .D(OutputReg_regn_3_n5), .CK(CLK), .Q(
        DOUT[3]) );
  INV_X1 OutputReg_regn_2_U6 ( .A(RST_n), .ZN(OutputReg_regn_2_n2) );
  INV_X1 OutputReg_regn_2_U5 ( .A(n3), .ZN(OutputReg_regn_2_n1) );
  AOI22_X1 OutputReg_regn_2_U4 ( .A1(n3), .A2(DIN_A_s_10__2_), .B1(DOUT[2]), 
        .B2(OutputReg_regn_2_n1), .ZN(OutputReg_regn_2_n6) );
  NOR2_X1 OutputReg_regn_2_U3 ( .A1(OutputReg_regn_2_n6), .A2(
        OutputReg_regn_2_n2), .ZN(OutputReg_regn_2_n5) );
  DFF_X1 OutputReg_regn_2_Q_reg ( .D(OutputReg_regn_2_n5), .CK(CLK), .Q(
        DOUT[2]) );
  INV_X1 OutputReg_regn_1_U6 ( .A(RST_n), .ZN(OutputReg_regn_1_n2) );
  INV_X1 OutputReg_regn_1_U5 ( .A(n3), .ZN(OutputReg_regn_1_n1) );
  AOI22_X1 OutputReg_regn_1_U4 ( .A1(n3), .A2(DIN_A_s_10__1_), .B1(DOUT[1]), 
        .B2(OutputReg_regn_1_n1), .ZN(OutputReg_regn_1_n6) );
  NOR2_X1 OutputReg_regn_1_U3 ( .A1(OutputReg_regn_1_n6), .A2(
        OutputReg_regn_1_n2), .ZN(OutputReg_regn_1_n5) );
  DFF_X1 OutputReg_regn_1_Q_reg ( .D(OutputReg_regn_1_n5), .CK(CLK), .Q(
        DOUT[1]) );
  INV_X1 OutputReg_regn_0_U6 ( .A(RST_n), .ZN(OutputReg_regn_0_n2) );
  INV_X1 OutputReg_regn_0_U5 ( .A(n3), .ZN(OutputReg_regn_0_n1) );
  AOI22_X1 OutputReg_regn_0_U4 ( .A1(n3), .A2(DIN_A_s_10__0_), .B1(DOUT[0]), 
        .B2(OutputReg_regn_0_n1), .ZN(OutputReg_regn_0_n6) );
  NOR2_X1 OutputReg_regn_0_U3 ( .A1(OutputReg_regn_0_n6), .A2(
        OutputReg_regn_0_n2), .ZN(OutputReg_regn_0_n5) );
  DFF_X1 OutputReg_regn_0_Q_reg ( .D(OutputReg_regn_0_n5), .CK(CLK), .Q(
        DOUT[0]) );
  INV_X1 FF1_U6 ( .A(RST_n), .ZN(FF1_n1) );
  INV_X1 FF1_U5 ( .A(1'b1), .ZN(FF1_n2) );
  AOI22_X1 FF1_U4 ( .A1(1'b1), .A2(VIN), .B1(VIN_internal), .B2(FF1_n2), .ZN(
        FF1_n3) );
  NOR2_X1 FF1_U3 ( .A1(FF1_n3), .A2(FF1_n1), .ZN(FF1_n4) );
  DFF_X1 FF1_Q_reg ( .D(FF1_n4), .CK(CLK), .Q(VIN_internal) );
  INV_X1 FF2_U6 ( .A(RST_n), .ZN(FF2_n1) );
  INV_X1 FF2_U5 ( .A(1'b1), .ZN(FF2_n2) );
  AOI22_X1 FF2_U4 ( .A1(1'b1), .A2(n3), .B1(VOUT), .B2(FF2_n2), .ZN(FF2_n6) );
  NOR2_X1 FF2_U3 ( .A1(FF2_n6), .A2(FF2_n1), .ZN(FF2_n5) );
  DFF_X1 FF2_Q_reg ( .D(FF2_n5), .CK(CLK), .Q(VOUT) );
  XNOR2_X1 mult_87_U263 ( .A(H0[3]), .B(DIN_R_s_0__1_), .ZN(mult_87_n275) );
  NAND2_X1 mult_87_U262 ( .A1(DIN_R_s_0__1_), .A2(mult_87_n217), .ZN(
        mult_87_n221) );
  XNOR2_X1 mult_87_U261 ( .A(H0[4]), .B(DIN_R_s_0__1_), .ZN(mult_87_n220) );
  OAI22_X1 mult_87_U260 ( .A1(mult_87_n275), .A2(mult_87_n221), .B1(
        mult_87_n220), .B2(mult_87_n217), .ZN(mult_87_n100) );
  XNOR2_X1 mult_87_U259 ( .A(H0[2]), .B(DIN_R_s_0__1_), .ZN(mult_87_n255) );
  OAI22_X1 mult_87_U258 ( .A1(mult_87_n255), .A2(mult_87_n221), .B1(
        mult_87_n275), .B2(mult_87_n217), .ZN(mult_87_n101) );
  XNOR2_X1 mult_87_U257 ( .A(H0[6]), .B(DIN_R_s_0__7_), .ZN(mult_87_n264) );
  XNOR2_X1 mult_87_U256 ( .A(mult_87_n204), .B(DIN_R_s_0__6_), .ZN(
        mult_87_n274) );
  NAND2_X1 mult_87_U255 ( .A1(mult_87_n256), .A2(mult_87_n274), .ZN(
        mult_87_n258) );
  XNOR2_X1 mult_87_U254 ( .A(H0[7]), .B(DIN_R_s_0__7_), .ZN(mult_87_n266) );
  OAI22_X1 mult_87_U253 ( .A1(mult_87_n264), .A2(mult_87_n258), .B1(
        mult_87_n256), .B2(mult_87_n266), .ZN(mult_87_n15) );
  XNOR2_X1 mult_87_U252 ( .A(H0[6]), .B(DIN_R_s_0__5_), .ZN(mult_87_n243) );
  XNOR2_X1 mult_87_U251 ( .A(mult_87_n209), .B(DIN_R_s_0__4_), .ZN(
        mult_87_n273) );
  NAND2_X1 mult_87_U250 ( .A1(mult_87_n235), .A2(mult_87_n273), .ZN(
        mult_87_n237) );
  XNOR2_X1 mult_87_U249 ( .A(H0[7]), .B(DIN_R_s_0__5_), .ZN(mult_87_n245) );
  OAI22_X1 mult_87_U248 ( .A1(mult_87_n243), .A2(mult_87_n237), .B1(
        mult_87_n235), .B2(mult_87_n245), .ZN(mult_87_n21) );
  XNOR2_X1 mult_87_U247 ( .A(H0[6]), .B(DIN_R_s_0__3_), .ZN(mult_87_n271) );
  XOR2_X1 mult_87_U246 ( .A(DIN_R_s_0__2_), .B(DIN_R_s_0__1_), .Z(mult_87_n253) );
  XNOR2_X1 mult_87_U245 ( .A(mult_87_n214), .B(DIN_R_s_0__2_), .ZN(
        mult_87_n272) );
  NAND2_X1 mult_87_U244 ( .A1(mult_87_n215), .A2(mult_87_n272), .ZN(
        mult_87_n227) );
  XNOR2_X1 mult_87_U243 ( .A(H0[7]), .B(DIN_R_s_0__3_), .ZN(mult_87_n234) );
  OAI22_X1 mult_87_U242 ( .A1(mult_87_n271), .A2(mult_87_n227), .B1(
        mult_87_n215), .B2(mult_87_n234), .ZN(mult_87_n31) );
  XNOR2_X1 mult_87_U241 ( .A(H0[1]), .B(DIN_R_s_0__7_), .ZN(mult_87_n259) );
  XNOR2_X1 mult_87_U240 ( .A(H0[2]), .B(DIN_R_s_0__7_), .ZN(mult_87_n260) );
  OAI22_X1 mult_87_U239 ( .A1(mult_87_n259), .A2(mult_87_n258), .B1(
        mult_87_n256), .B2(mult_87_n260), .ZN(mult_87_n269) );
  XNOR2_X1 mult_87_U238 ( .A(H0[5]), .B(DIN_R_s_0__3_), .ZN(mult_87_n232) );
  OAI22_X1 mult_87_U237 ( .A1(mult_87_n232), .A2(mult_87_n227), .B1(
        mult_87_n215), .B2(mult_87_n271), .ZN(mult_87_n270) );
  OR2_X1 mult_87_U236 ( .A1(mult_87_n269), .A2(mult_87_n270), .ZN(mult_87_n37)
         );
  XNOR2_X1 mult_87_U235 ( .A(mult_87_n269), .B(mult_87_n270), .ZN(mult_87_n38)
         );
  OR3_X1 mult_87_U234 ( .A1(mult_87_n256), .A2(H0[0]), .A3(mult_87_n204), .ZN(
        mult_87_n268) );
  OAI21_X1 mult_87_U233 ( .B1(mult_87_n204), .B2(mult_87_n258), .A(
        mult_87_n268), .ZN(mult_87_n68) );
  OR3_X1 mult_87_U232 ( .A1(mult_87_n235), .A2(H0[0]), .A3(mult_87_n209), .ZN(
        mult_87_n267) );
  OAI21_X1 mult_87_U231 ( .B1(mult_87_n209), .B2(mult_87_n237), .A(
        mult_87_n267), .ZN(mult_87_n69) );
  OAI22_X1 mult_87_U230 ( .A1(mult_87_n266), .A2(mult_87_n256), .B1(
        mult_87_n258), .B2(mult_87_n266), .ZN(mult_87_n265) );
  XNOR2_X1 mult_87_U229 ( .A(H0[5]), .B(DIN_R_s_0__7_), .ZN(mult_87_n263) );
  OAI22_X1 mult_87_U228 ( .A1(mult_87_n263), .A2(mult_87_n258), .B1(
        mult_87_n256), .B2(mult_87_n264), .ZN(mult_87_n73) );
  XNOR2_X1 mult_87_U227 ( .A(H0[4]), .B(DIN_R_s_0__7_), .ZN(mult_87_n262) );
  OAI22_X1 mult_87_U226 ( .A1(mult_87_n262), .A2(mult_87_n258), .B1(
        mult_87_n256), .B2(mult_87_n263), .ZN(mult_87_n74) );
  XNOR2_X1 mult_87_U225 ( .A(H0[3]), .B(DIN_R_s_0__7_), .ZN(mult_87_n261) );
  OAI22_X1 mult_87_U224 ( .A1(mult_87_n261), .A2(mult_87_n258), .B1(
        mult_87_n256), .B2(mult_87_n262), .ZN(mult_87_n75) );
  OAI22_X1 mult_87_U223 ( .A1(mult_87_n260), .A2(mult_87_n258), .B1(
        mult_87_n256), .B2(mult_87_n261), .ZN(mult_87_n76) );
  XNOR2_X1 mult_87_U222 ( .A(H0[0]), .B(DIN_R_s_0__7_), .ZN(mult_87_n257) );
  OAI22_X1 mult_87_U221 ( .A1(mult_87_n257), .A2(mult_87_n258), .B1(
        mult_87_n256), .B2(mult_87_n259), .ZN(mult_87_n78) );
  NOR2_X1 mult_87_U220 ( .A1(mult_87_n256), .A2(mult_87_n219), .ZN(mult_87_n79) );
  OAI22_X1 mult_87_U219 ( .A1(H0[1]), .A2(mult_87_n221), .B1(mult_87_n255), 
        .B2(mult_87_n217), .ZN(mult_87_n254) );
  NAND3_X1 mult_87_U218 ( .A1(mult_87_n253), .A2(mult_87_n219), .A3(
        DIN_R_s_0__3_), .ZN(mult_87_n252) );
  OAI21_X1 mult_87_U217 ( .B1(mult_87_n214), .B2(mult_87_n227), .A(
        mult_87_n252), .ZN(mult_87_n251) );
  AOI222_X1 mult_87_U216 ( .A1(mult_87_n197), .A2(mult_87_n56), .B1(
        mult_87_n251), .B2(mult_87_n197), .C1(mult_87_n251), .C2(mult_87_n56), 
        .ZN(mult_87_n250) );
  AOI222_X1 mult_87_U215 ( .A1(mult_87_n211), .A2(mult_87_n54), .B1(
        mult_87_n211), .B2(mult_87_n55), .C1(mult_87_n55), .C2(mult_87_n54), 
        .ZN(mult_87_n249) );
  AOI222_X1 mult_87_U214 ( .A1(mult_87_n210), .A2(mult_87_n50), .B1(
        mult_87_n210), .B2(mult_87_n53), .C1(mult_87_n53), .C2(mult_87_n50), 
        .ZN(mult_87_n248) );
  AOI222_X1 mult_87_U213 ( .A1(mult_87_n206), .A2(mult_87_n46), .B1(
        mult_87_n206), .B2(mult_87_n49), .C1(mult_87_n49), .C2(mult_87_n46), 
        .ZN(mult_87_n247) );
  AOI222_X1 mult_87_U212 ( .A1(mult_87_n205), .A2(mult_87_n40), .B1(
        mult_87_n205), .B2(mult_87_n45), .C1(mult_87_n45), .C2(mult_87_n40), 
        .ZN(mult_87_n246) );
  OAI22_X1 mult_87_U211 ( .A1(mult_87_n245), .A2(mult_87_n235), .B1(
        mult_87_n237), .B2(mult_87_n245), .ZN(mult_87_n244) );
  XNOR2_X1 mult_87_U210 ( .A(H0[5]), .B(DIN_R_s_0__5_), .ZN(mult_87_n242) );
  OAI22_X1 mult_87_U209 ( .A1(mult_87_n242), .A2(mult_87_n237), .B1(
        mult_87_n235), .B2(mult_87_n243), .ZN(mult_87_n81) );
  XNOR2_X1 mult_87_U208 ( .A(H0[4]), .B(DIN_R_s_0__5_), .ZN(mult_87_n241) );
  OAI22_X1 mult_87_U207 ( .A1(mult_87_n241), .A2(mult_87_n237), .B1(
        mult_87_n235), .B2(mult_87_n242), .ZN(mult_87_n82) );
  XNOR2_X1 mult_87_U206 ( .A(H0[3]), .B(DIN_R_s_0__5_), .ZN(mult_87_n240) );
  OAI22_X1 mult_87_U205 ( .A1(mult_87_n240), .A2(mult_87_n237), .B1(
        mult_87_n235), .B2(mult_87_n241), .ZN(mult_87_n83) );
  XNOR2_X1 mult_87_U204 ( .A(H0[2]), .B(DIN_R_s_0__5_), .ZN(mult_87_n239) );
  OAI22_X1 mult_87_U203 ( .A1(mult_87_n239), .A2(mult_87_n237), .B1(
        mult_87_n235), .B2(mult_87_n240), .ZN(mult_87_n84) );
  XNOR2_X1 mult_87_U202 ( .A(H0[1]), .B(DIN_R_s_0__5_), .ZN(mult_87_n238) );
  OAI22_X1 mult_87_U201 ( .A1(mult_87_n238), .A2(mult_87_n237), .B1(
        mult_87_n235), .B2(mult_87_n239), .ZN(mult_87_n85) );
  XNOR2_X1 mult_87_U200 ( .A(H0[0]), .B(DIN_R_s_0__5_), .ZN(mult_87_n236) );
  OAI22_X1 mult_87_U199 ( .A1(mult_87_n236), .A2(mult_87_n237), .B1(
        mult_87_n235), .B2(mult_87_n238), .ZN(mult_87_n86) );
  NOR2_X1 mult_87_U198 ( .A1(mult_87_n235), .A2(mult_87_n219), .ZN(mult_87_n87) );
  OAI22_X1 mult_87_U197 ( .A1(mult_87_n234), .A2(mult_87_n215), .B1(
        mult_87_n227), .B2(mult_87_n234), .ZN(mult_87_n233) );
  XNOR2_X1 mult_87_U196 ( .A(H0[4]), .B(DIN_R_s_0__3_), .ZN(mult_87_n231) );
  OAI22_X1 mult_87_U195 ( .A1(mult_87_n231), .A2(mult_87_n227), .B1(
        mult_87_n215), .B2(mult_87_n232), .ZN(mult_87_n90) );
  XNOR2_X1 mult_87_U194 ( .A(H0[3]), .B(DIN_R_s_0__3_), .ZN(mult_87_n230) );
  OAI22_X1 mult_87_U193 ( .A1(mult_87_n230), .A2(mult_87_n227), .B1(
        mult_87_n215), .B2(mult_87_n231), .ZN(mult_87_n91) );
  XNOR2_X1 mult_87_U192 ( .A(H0[2]), .B(DIN_R_s_0__3_), .ZN(mult_87_n229) );
  OAI22_X1 mult_87_U191 ( .A1(mult_87_n229), .A2(mult_87_n227), .B1(
        mult_87_n215), .B2(mult_87_n230), .ZN(mult_87_n92) );
  XNOR2_X1 mult_87_U190 ( .A(H0[1]), .B(DIN_R_s_0__3_), .ZN(mult_87_n228) );
  OAI22_X1 mult_87_U189 ( .A1(mult_87_n228), .A2(mult_87_n227), .B1(
        mult_87_n215), .B2(mult_87_n229), .ZN(mult_87_n93) );
  XNOR2_X1 mult_87_U188 ( .A(H0[0]), .B(DIN_R_s_0__3_), .ZN(mult_87_n226) );
  OAI22_X1 mult_87_U187 ( .A1(mult_87_n226), .A2(mult_87_n227), .B1(
        mult_87_n215), .B2(mult_87_n228), .ZN(mult_87_n94) );
  XNOR2_X1 mult_87_U186 ( .A(H0[7]), .B(DIN_R_s_0__1_), .ZN(mult_87_n224) );
  OAI22_X1 mult_87_U185 ( .A1(mult_87_n217), .A2(mult_87_n224), .B1(
        mult_87_n221), .B2(mult_87_n224), .ZN(mult_87_n225) );
  XNOR2_X1 mult_87_U184 ( .A(H0[6]), .B(DIN_R_s_0__1_), .ZN(mult_87_n223) );
  OAI22_X1 mult_87_U183 ( .A1(mult_87_n223), .A2(mult_87_n221), .B1(
        mult_87_n224), .B2(mult_87_n217), .ZN(mult_87_n97) );
  XNOR2_X1 mult_87_U182 ( .A(H0[5]), .B(DIN_R_s_0__1_), .ZN(mult_87_n222) );
  OAI22_X1 mult_87_U181 ( .A1(mult_87_n222), .A2(mult_87_n221), .B1(
        mult_87_n223), .B2(mult_87_n217), .ZN(mult_87_n98) );
  OAI22_X1 mult_87_U180 ( .A1(mult_87_n220), .A2(mult_87_n221), .B1(
        mult_87_n222), .B2(mult_87_n217), .ZN(mult_87_n99) );
  INV_X1 mult_87_U179 ( .A(DIN_R_s_0__7_), .ZN(mult_87_n204) );
  INV_X1 mult_87_U178 ( .A(H0[1]), .ZN(mult_87_n218) );
  INV_X1 mult_87_U177 ( .A(H0[0]), .ZN(mult_87_n219) );
  AND3_X1 mult_87_U176 ( .A1(mult_87_n254), .A2(mult_87_n218), .A3(
        DIN_R_s_0__1_), .ZN(mult_87_n199) );
  AND2_X1 mult_87_U175 ( .A1(mult_87_n253), .A2(mult_87_n254), .ZN(
        mult_87_n198) );
  MUX2_X1 mult_87_U174 ( .A(mult_87_n198), .B(mult_87_n199), .S(mult_87_n219), 
        .Z(mult_87_n197) );
  INV_X1 mult_87_U173 ( .A(DIN_R_s_0__5_), .ZN(mult_87_n209) );
  INV_X1 mult_87_U172 ( .A(DIN_R_s_0__3_), .ZN(mult_87_n214) );
  INV_X1 mult_87_U171 ( .A(DIN_R_s_0__0_), .ZN(mult_87_n217) );
  XOR2_X1 mult_87_U170 ( .A(DIN_R_s_0__6_), .B(mult_87_n209), .Z(mult_87_n256)
         );
  XOR2_X1 mult_87_U169 ( .A(DIN_R_s_0__4_), .B(mult_87_n214), .Z(mult_87_n235)
         );
  INV_X1 mult_87_U168 ( .A(mult_87_n31), .ZN(mult_87_n212) );
  INV_X1 mult_87_U167 ( .A(mult_87_n233), .ZN(mult_87_n213) );
  INV_X1 mult_87_U166 ( .A(mult_87_n244), .ZN(mult_87_n208) );
  INV_X1 mult_87_U165 ( .A(mult_87_n21), .ZN(mult_87_n207) );
  INV_X1 mult_87_U164 ( .A(mult_87_n246), .ZN(mult_87_n201) );
  INV_X1 mult_87_U163 ( .A(mult_87_n225), .ZN(mult_87_n216) );
  INV_X1 mult_87_U162 ( .A(mult_87_n265), .ZN(mult_87_n203) );
  INV_X1 mult_87_U161 ( .A(mult_87_n253), .ZN(mult_87_n215) );
  INV_X1 mult_87_U160 ( .A(mult_87_n250), .ZN(mult_87_n211) );
  INV_X1 mult_87_U159 ( .A(mult_87_n249), .ZN(mult_87_n210) );
  INV_X1 mult_87_U158 ( .A(mult_87_n1), .ZN(mul_partial[15]) );
  INV_X1 mult_87_U157 ( .A(mult_87_n15), .ZN(mult_87_n202) );
  INV_X1 mult_87_U156 ( .A(mult_87_n248), .ZN(mult_87_n206) );
  INV_X1 mult_87_U155 ( .A(mult_87_n247), .ZN(mult_87_n205) );
  HA_X1 mult_87_U37 ( .A(mult_87_n94), .B(mult_87_n101), .CO(mult_87_n55), .S(
        mult_87_n56) );
  FA_X1 mult_87_U36 ( .A(mult_87_n100), .B(mult_87_n87), .CI(mult_87_n93), 
        .CO(mult_87_n53), .S(mult_87_n54) );
  HA_X1 mult_87_U35 ( .A(mult_87_n69), .B(mult_87_n86), .CO(mult_87_n51), .S(
        mult_87_n52) );
  FA_X1 mult_87_U34 ( .A(mult_87_n92), .B(mult_87_n99), .CI(mult_87_n52), .CO(
        mult_87_n49), .S(mult_87_n50) );
  FA_X1 mult_87_U33 ( .A(mult_87_n98), .B(mult_87_n79), .CI(mult_87_n91), .CO(
        mult_87_n47), .S(mult_87_n48) );
  FA_X1 mult_87_U32 ( .A(mult_87_n51), .B(mult_87_n85), .CI(mult_87_n48), .CO(
        mult_87_n45), .S(mult_87_n46) );
  HA_X1 mult_87_U31 ( .A(mult_87_n68), .B(mult_87_n78), .CO(mult_87_n43), .S(
        mult_87_n44) );
  FA_X1 mult_87_U30 ( .A(mult_87_n84), .B(mult_87_n97), .CI(mult_87_n90), .CO(
        mult_87_n41), .S(mult_87_n42) );
  FA_X1 mult_87_U29 ( .A(mult_87_n47), .B(mult_87_n44), .CI(mult_87_n42), .CO(
        mult_87_n39), .S(mult_87_n40) );
  FA_X1 mult_87_U26 ( .A(mult_87_n216), .B(mult_87_n83), .CI(mult_87_n43), 
        .CO(mult_87_n35), .S(mult_87_n36) );
  FA_X1 mult_87_U25 ( .A(mult_87_n41), .B(mult_87_n38), .CI(mult_87_n36), .CO(
        mult_87_n33), .S(mult_87_n34) );
  FA_X1 mult_87_U23 ( .A(mult_87_n76), .B(mult_87_n82), .CI(mult_87_n212), 
        .CO(mult_87_n29), .S(mult_87_n30) );
  FA_X1 mult_87_U22 ( .A(mult_87_n35), .B(mult_87_n37), .CI(mult_87_n30), .CO(
        mult_87_n27), .S(mult_87_n28) );
  FA_X1 mult_87_U21 ( .A(mult_87_n81), .B(mult_87_n31), .CI(mult_87_n213), 
        .CO(mult_87_n25), .S(mult_87_n26) );
  FA_X1 mult_87_U20 ( .A(mult_87_n29), .B(mult_87_n75), .CI(mult_87_n26), .CO(
        mult_87_n23), .S(mult_87_n24) );
  FA_X1 mult_87_U18 ( .A(mult_87_n207), .B(mult_87_n74), .CI(mult_87_n25), 
        .CO(mult_87_n19), .S(mult_87_n20) );
  FA_X1 mult_87_U17 ( .A(mult_87_n73), .B(mult_87_n21), .CI(mult_87_n208), 
        .CO(mult_87_n17), .S(mult_87_n18) );
  FA_X1 mult_87_U8 ( .A(mult_87_n34), .B(mult_87_n39), .CI(mult_87_n201), .CO(
        mult_87_n7), .S(mul_partial[8]) );
  FA_X1 mult_87_U7 ( .A(mult_87_n28), .B(mult_87_n33), .CI(mult_87_n7), .CO(
        mult_87_n6), .S(mul_partial[9]) );
  FA_X1 mult_87_U6 ( .A(mult_87_n24), .B(mult_87_n27), .CI(mult_87_n6), .CO(
        mult_87_n5), .S(mul_partial[10]) );
  FA_X1 mult_87_U5 ( .A(mult_87_n20), .B(mult_87_n23), .CI(mult_87_n5), .CO(
        mult_87_n4), .S(mul_partial[11]) );
  FA_X1 mult_87_U4 ( .A(mult_87_n19), .B(mult_87_n18), .CI(mult_87_n4), .CO(
        mult_87_n3), .S(mul_partial[12]) );
  FA_X1 mult_87_U3 ( .A(mult_87_n17), .B(mult_87_n202), .CI(mult_87_n3), .CO(
        mult_87_n2), .S(mul_partial[13]) );
  FA_X1 mult_87_U2 ( .A(mult_87_n203), .B(mult_87_n15), .CI(mult_87_n2), .CO(
        mult_87_n1), .S(mul_partial[14]) );
endmodule

