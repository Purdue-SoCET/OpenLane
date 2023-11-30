module flex_counter (clear,
    clk,
    enable,
    flag,
    nRST,
    count,
    rollover);
 input clear;
 input clk;
 input enable;
 output flag;
 input nRST;
 output [3:0] count;
 input [3:0] rollover;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire _11_;
 wire _12_;
 wire _13_;
 wire _14_;
 wire _15_;
 wire _16_;
 wire _17_;
 wire _18_;
 wire _19_;
 wire _20_;
 wire _21_;
 wire _22_;
 wire _23_;
 wire _24_;
 wire _25_;
 wire _26_;
 wire _27_;
 wire _28_;
 wire _29_;
 wire _30_;
 wire _31_;
 wire _32_;
 wire _33_;
 wire _34_;
 wire _35_;
 wire _36_;
 wire \next_count[0] ;
 wire \next_count[1] ;
 wire \next_count[2] ;
 wire \next_count[3] ;
 wire next_flag;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;

 sky130_fd_sc_hd__or3_1 _37_ (.A(net7),
    .B(net6),
    .C(net5),
    .X(_00_));
 sky130_fd_sc_hd__inv_2 _38_ (.A(net8),
    .Y(_01_));
 sky130_fd_sc_hd__inv_2 _39_ (.A(net6),
    .Y(_02_));
 sky130_fd_sc_hd__and2b_1 _40_ (.A_N(net9),
    .B(net5),
    .X(_03_));
 sky130_fd_sc_hd__and2b_1 _41_ (.A_N(net7),
    .B(net11),
    .X(_04_));
 sky130_fd_sc_hd__a211o_1 _42_ (.A1(net10),
    .A2(_02_),
    .B1(_03_),
    .C1(_04_),
    .X(_05_));
 sky130_fd_sc_hd__or2b_1 _43_ (.A(net5),
    .B_N(net9),
    .X(_06_));
 sky130_fd_sc_hd__or2b_1 _44_ (.A(net4),
    .B_N(net8),
    .X(_07_));
 sky130_fd_sc_hd__nand2_1 _45_ (.A(_06_),
    .B(_07_),
    .Y(_08_));
 sky130_fd_sc_hd__inv_2 _46_ (.A(net11),
    .Y(_09_));
 sky130_fd_sc_hd__a2bb2o_1 _47_ (.A1_N(_02_),
    .A2_N(net10),
    .B1(net7),
    .B2(_09_),
    .X(_10_));
 sky130_fd_sc_hd__a2111oi_1 _48_ (.A1(_01_),
    .A2(net4),
    .B1(_05_),
    .C1(_08_),
    .D1(_10_),
    .Y(_11_));
 sky130_fd_sc_hd__or3b_1 _49_ (.A(_00_),
    .B(net4),
    .C_N(_11_),
    .X(_12_));
 sky130_fd_sc_hd__nand2_1 _50_ (.A(net10),
    .B(_02_),
    .Y(_13_));
 sky130_fd_sc_hd__a21o_1 _51_ (.A1(_06_),
    .A2(_07_),
    .B1(_03_),
    .X(_14_));
 sky130_fd_sc_hd__a21oi_1 _52_ (.A1(_13_),
    .A2(_14_),
    .B1(_10_),
    .Y(_15_));
 sky130_fd_sc_hd__o31a_1 _53_ (.A1(_05_),
    .A2(_08_),
    .A3(_10_),
    .B1(net8),
    .X(_16_));
 sky130_fd_sc_hd__or3b_1 _54_ (.A(_04_),
    .B(_15_),
    .C_N(_16_),
    .X(_17_));
 sky130_fd_sc_hd__a21bo_1 _55_ (.A1(_12_),
    .A2(_17_),
    .B1_N(net2),
    .X(_18_));
 sky130_fd_sc_hd__inv_2 _56_ (.A(net1),
    .Y(_19_));
 sky130_fd_sc_hd__o21a_1 _57_ (.A1(net8),
    .A2(net2),
    .B1(_19_),
    .X(_20_));
 sky130_fd_sc_hd__and2_1 _58_ (.A(_18_),
    .B(_20_),
    .X(_21_));
 sky130_fd_sc_hd__clkbuf_1 _59_ (.A(_21_),
    .X(\next_count[0] ));
 sky130_fd_sc_hd__o31ai_1 _60_ (.A1(_04_),
    .A2(net13),
    .A3(_15_),
    .B1(net2),
    .Y(_22_));
 sky130_fd_sc_hd__a21oi_1 _61_ (.A1(net8),
    .A2(net2),
    .B1(net9),
    .Y(_23_));
 sky130_fd_sc_hd__and3_1 _62_ (.A(net8),
    .B(net9),
    .C(net2),
    .X(_24_));
 sky130_fd_sc_hd__nor2_1 _63_ (.A(_23_),
    .B(_24_),
    .Y(_25_));
 sky130_fd_sc_hd__and3_1 _64_ (.A(_19_),
    .B(_22_),
    .C(_25_),
    .X(_26_));
 sky130_fd_sc_hd__buf_1 _65_ (.A(_26_),
    .X(\next_count[1] ));
 sky130_fd_sc_hd__a21oi_1 _66_ (.A1(net10),
    .A2(_24_),
    .B1(net1),
    .Y(_27_));
 sky130_fd_sc_hd__o211a_1 _67_ (.A1(net10),
    .A2(_24_),
    .B1(_27_),
    .C1(_22_),
    .X(\next_count[2] ));
 sky130_fd_sc_hd__a21o_1 _68_ (.A1(net10),
    .A2(_24_),
    .B1(net11),
    .X(_28_));
 sky130_fd_sc_hd__and3_1 _69_ (.A(_19_),
    .B(_22_),
    .C(_28_),
    .X(_29_));
 sky130_fd_sc_hd__buf_1 _70_ (.A(_29_),
    .X(\next_count[3] ));
 sky130_fd_sc_hd__or2_1 _71_ (.A(net4),
    .B(_00_),
    .X(_30_));
 sky130_fd_sc_hd__and3_1 _72_ (.A(net4),
    .B(_18_),
    .C(_20_),
    .X(_31_));
 sky130_fd_sc_hd__a21oi_1 _73_ (.A1(_18_),
    .A2(_20_),
    .B1(net4),
    .Y(_32_));
 sky130_fd_sc_hd__xnor2_1 _74_ (.A(net6),
    .B(\next_count[2] ),
    .Y(_33_));
 sky130_fd_sc_hd__xnor2_1 _75_ (.A(net7),
    .B(\next_count[3] ),
    .Y(_34_));
 sky130_fd_sc_hd__xnor2_1 _76_ (.A(net5),
    .B(\next_count[1] ),
    .Y(_35_));
 sky130_fd_sc_hd__o2111ai_1 _77_ (.A1(_31_),
    .A2(_32_),
    .B1(_33_),
    .C1(_34_),
    .D1(_35_),
    .Y(_36_));
 sky130_fd_sc_hd__a21oi_1 _78_ (.A1(_30_),
    .A2(_36_),
    .B1(net1),
    .Y(next_flag));
 sky130_fd_sc_hd__dfrtp_2 _79_ (.CLK(clk),
    .D(\next_count[0] ),
    .RESET_B(net3),
    .Q(net8));
 sky130_fd_sc_hd__dfrtp_1 _80_ (.CLK(clk),
    .D(\next_count[1] ),
    .RESET_B(net3),
    .Q(net9));
 sky130_fd_sc_hd__dfrtp_2 _81_ (.CLK(clk),
    .D(\next_count[2] ),
    .RESET_B(net3),
    .Q(net10));
 sky130_fd_sc_hd__dfrtp_1 _82_ (.CLK(clk),
    .D(\next_count[3] ),
    .RESET_B(net3),
    .Q(net11));
 sky130_fd_sc_hd__dfrtp_1 _83_ (.CLK(clk),
    .D(next_flag),
    .RESET_B(net3),
    .Q(net12));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_21 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_22 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_23 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_24 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_25 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_26 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_27 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_28 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_29 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_30 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_31 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_32 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_33 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_34 ();
 sky130_fd_sc_hd__buf_1 input1 (.A(clear),
    .X(net1));
 sky130_fd_sc_hd__buf_1 input2 (.A(enable),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_2 input3 (.A(nRST),
    .X(net3));
 sky130_fd_sc_hd__buf_1 input4 (.A(rollover[0]),
    .X(net4));
 sky130_fd_sc_hd__buf_1 input5 (.A(rollover[1]),
    .X(net5));
 sky130_fd_sc_hd__buf_1 input6 (.A(rollover[2]),
    .X(net6));
 sky130_fd_sc_hd__buf_1 input7 (.A(rollover[3]),
    .X(net7));
 sky130_fd_sc_hd__buf_2 output8 (.A(net8),
    .X(count[0]));
 sky130_fd_sc_hd__buf_2 output9 (.A(net9),
    .X(count[1]));
 sky130_fd_sc_hd__buf_2 output10 (.A(net10),
    .X(count[2]));
 sky130_fd_sc_hd__buf_2 output11 (.A(net11),
    .X(count[3]));
 sky130_fd_sc_hd__buf_2 output12 (.A(net12),
    .X(flag));
 sky130_fd_sc_hd__clkbuf_1 max_cap13 (.A(_11_),
    .X(net13));
endmodule
