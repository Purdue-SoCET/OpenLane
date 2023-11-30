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

 sky130_fd_sc_hd__or3_2 _37_ (.A(rollover[3]),
    .B(rollover[2]),
    .C(rollover[1]),
    .X(_00_));
 sky130_fd_sc_hd__inv_2 _38_ (.A(count[0]),
    .Y(_01_));
 sky130_fd_sc_hd__inv_2 _39_ (.A(rollover[2]),
    .Y(_02_));
 sky130_fd_sc_hd__and2b_2 _40_ (.A_N(count[1]),
    .B(rollover[1]),
    .X(_03_));
 sky130_fd_sc_hd__and2b_2 _41_ (.A_N(rollover[3]),
    .B(count[3]),
    .X(_04_));
 sky130_fd_sc_hd__a211o_2 _42_ (.A1(count[2]),
    .A2(_02_),
    .B1(_03_),
    .C1(_04_),
    .X(_05_));
 sky130_fd_sc_hd__or2b_2 _43_ (.A(rollover[1]),
    .B_N(count[1]),
    .X(_06_));
 sky130_fd_sc_hd__or2b_2 _44_ (.A(rollover[0]),
    .B_N(count[0]),
    .X(_07_));
 sky130_fd_sc_hd__nand2_2 _45_ (.A(_06_),
    .B(_07_),
    .Y(_08_));
 sky130_fd_sc_hd__inv_2 _46_ (.A(count[3]),
    .Y(_09_));
 sky130_fd_sc_hd__a2bb2o_2 _47_ (.A1_N(_02_),
    .A2_N(count[2]),
    .B1(rollover[3]),
    .B2(_09_),
    .X(_10_));
 sky130_fd_sc_hd__a2111oi_2 _48_ (.A1(_01_),
    .A2(rollover[0]),
    .B1(_05_),
    .C1(_08_),
    .D1(_10_),
    .Y(_11_));
 sky130_fd_sc_hd__or3b_2 _49_ (.A(_00_),
    .B(rollover[0]),
    .C_N(_11_),
    .X(_12_));
 sky130_fd_sc_hd__nand2_2 _50_ (.A(count[2]),
    .B(_02_),
    .Y(_13_));
 sky130_fd_sc_hd__a21o_2 _51_ (.A1(_06_),
    .A2(_07_),
    .B1(_03_),
    .X(_14_));
 sky130_fd_sc_hd__a21oi_2 _52_ (.A1(_13_),
    .A2(_14_),
    .B1(_10_),
    .Y(_15_));
 sky130_fd_sc_hd__o31a_2 _53_ (.A1(_05_),
    .A2(_08_),
    .A3(_10_),
    .B1(count[0]),
    .X(_16_));
 sky130_fd_sc_hd__or3b_2 _54_ (.A(_04_),
    .B(_15_),
    .C_N(_16_),
    .X(_17_));
 sky130_fd_sc_hd__a21bo_2 _55_ (.A1(_12_),
    .A2(_17_),
    .B1_N(enable),
    .X(_18_));
 sky130_fd_sc_hd__inv_2 _56_ (.A(clear),
    .Y(_19_));
 sky130_fd_sc_hd__o21a_2 _57_ (.A1(count[0]),
    .A2(enable),
    .B1(_19_),
    .X(_20_));
 sky130_fd_sc_hd__and2_2 _58_ (.A(_18_),
    .B(_20_),
    .X(_21_));
 sky130_fd_sc_hd__buf_1 _59_ (.A(_21_),
    .X(\next_count[0] ));
 sky130_fd_sc_hd__o31ai_2 _60_ (.A1(_04_),
    .A2(_11_),
    .A3(_15_),
    .B1(enable),
    .Y(_22_));
 sky130_fd_sc_hd__a21oi_2 _61_ (.A1(count[0]),
    .A2(enable),
    .B1(count[1]),
    .Y(_23_));
 sky130_fd_sc_hd__and3_2 _62_ (.A(count[0]),
    .B(count[1]),
    .C(enable),
    .X(_24_));
 sky130_fd_sc_hd__nor2_2 _63_ (.A(_23_),
    .B(_24_),
    .Y(_25_));
 sky130_fd_sc_hd__and3_2 _64_ (.A(_19_),
    .B(_22_),
    .C(_25_),
    .X(_26_));
 sky130_fd_sc_hd__buf_1 _65_ (.A(_26_),
    .X(\next_count[1] ));
 sky130_fd_sc_hd__a21oi_2 _66_ (.A1(count[2]),
    .A2(_24_),
    .B1(clear),
    .Y(_27_));
 sky130_fd_sc_hd__o211a_2 _67_ (.A1(count[2]),
    .A2(_24_),
    .B1(_27_),
    .C1(_22_),
    .X(\next_count[2] ));
 sky130_fd_sc_hd__a21o_2 _68_ (.A1(count[2]),
    .A2(_24_),
    .B1(count[3]),
    .X(_28_));
 sky130_fd_sc_hd__and3_2 _69_ (.A(_19_),
    .B(_22_),
    .C(_28_),
    .X(_29_));
 sky130_fd_sc_hd__buf_1 _70_ (.A(_29_),
    .X(\next_count[3] ));
 sky130_fd_sc_hd__or2_2 _71_ (.A(rollover[0]),
    .B(_00_),
    .X(_30_));
 sky130_fd_sc_hd__and3_2 _72_ (.A(rollover[0]),
    .B(_18_),
    .C(_20_),
    .X(_31_));
 sky130_fd_sc_hd__a21oi_2 _73_ (.A1(_18_),
    .A2(_20_),
    .B1(rollover[0]),
    .Y(_32_));
 sky130_fd_sc_hd__xnor2_2 _74_ (.A(rollover[2]),
    .B(\next_count[2] ),
    .Y(_33_));
 sky130_fd_sc_hd__xnor2_2 _75_ (.A(rollover[3]),
    .B(\next_count[3] ),
    .Y(_34_));
 sky130_fd_sc_hd__xnor2_2 _76_ (.A(rollover[1]),
    .B(\next_count[1] ),
    .Y(_35_));
 sky130_fd_sc_hd__o2111ai_2 _77_ (.A1(_31_),
    .A2(_32_),
    .B1(_33_),
    .C1(_34_),
    .D1(_35_),
    .Y(_36_));
 sky130_fd_sc_hd__a21oi_2 _78_ (.A1(_30_),
    .A2(_36_),
    .B1(clear),
    .Y(next_flag));
 sky130_fd_sc_hd__dfrtp_2 _79_ (.CLK(clk),
    .D(\next_count[0] ),
    .RESET_B(nRST),
    .Q(count[0]));
 sky130_fd_sc_hd__dfrtp_2 _80_ (.CLK(clk),
    .D(\next_count[1] ),
    .RESET_B(nRST),
    .Q(count[1]));
 sky130_fd_sc_hd__dfrtp_2 _81_ (.CLK(clk),
    .D(\next_count[2] ),
    .RESET_B(nRST),
    .Q(count[2]));
 sky130_fd_sc_hd__dfrtp_2 _82_ (.CLK(clk),
    .D(\next_count[3] ),
    .RESET_B(nRST),
    .Q(count[3]));
 sky130_fd_sc_hd__dfrtp_2 _83_ (.CLK(clk),
    .D(next_flag),
    .RESET_B(nRST),
    .Q(flag));
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
endmodule
