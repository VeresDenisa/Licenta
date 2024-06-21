// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Fri Jun 21 03:28:02 2024
//
// Verilog Description of module CS
//

module CS (clk, rst_n, btnHS, btnVS, btnUART, btnVGA, in, out, 
           HSYNC, VSYNC, LEDS, RED, GREEN, BLUE) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(3[8:10])
    input clk;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    input rst_n;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(7[7:12])
    input btnHS;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(9[7:12])
    input btnVS;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(10[7:12])
    input btnUART;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(11[7:14])
    input btnVGA;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(12[7:13])
    input in;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(14[7:9])
    output out;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(15[8:11])
    output HSYNC;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(17[8:13])
    output VSYNC;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(18[8:13])
    output [7:0]LEDS;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(20[24:28])
    output [3:0]RED;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(22[13:16])
    output [3:0]GREEN;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(23[13:18])
    output [3:0]BLUE;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(24[13:17])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    wire HSYNC_c /* synthesis SET_AS_NETWORK=HSYNC_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(17[8:13])
    wire clk_VGA /* synthesis is_clock=1, SET_AS_NETWORK=clk_VGA */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(36[6:13])
    wire clk_UART /* synthesis is_clock=1, SET_AS_NETWORK=clk_UART */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(37[6:14])
    wire clk_DB /* synthesis is_clock=1, SET_AS_NETWORK=clk_DB */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(38[6:12])
    wire clk_LM /* synthesis is_clock=1, SET_AS_NETWORK=clk_LM */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(39[6:12])
    
    wire GND_net, VCC_net, rst_n_c, btnHS_c, btnVS_c, btnUART_c, 
        btnVGA_c, in_c, VSYNC_c, n6218, RED_c_3, RED_c_2, RED_c_1, 
        RED_c_0, GREEN_c_3, GREEN_c_2, GREEN_c_1, GREEN_c_0, BLUE_c_3, 
        BLUE_c_2, BLUE_c_1, BLUE_c_0, button_signal_HS, button_signal_VS, 
        button_signal_DEBUG_UART, button_signal_DEBUG_VGA, c_valid;
    wire [2:0]c_ready;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(43[11:18])
    wire [13:0]c_data;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(44[12:18])
    wire [3:0]c_addr;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(45[11:17])
    
    wire n6904;
    wire [7:0]UART_out;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(64[11:19])
    
    wire UART_valid_out;
    wire [7:0]UART_out_CM_data;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(74[11:27])
    
    wire UART_out_CM_data_empty;
    wire [11:0]Data_VGA;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(89[13:21])
    
    wire n7377, n14, n12, c_VGA_ready, c_UART_ready, n10, n8, 
        n6, n4, n14_adj_1138, n12_adj_1139, n10_adj_1140, n8_adj_1141, 
        n6_adj_1142, n7376, n4_adj_1143, n1417, valid_data, n7375, 
        n7066, clk_VGA_enable_1, Load_config;
    wire [8:0]H_left_margin;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga.v(31[30:43])
    wire [10:0]H_right_margin;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga.v(32[30:44])
    wire [5:0]V_left_margin;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga.v(33[30:43])
    wire [9:0]V_right_margin;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga.v(34[30:44])
    wire [11:0]H_count_max;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga.v(36[27:38])
    wire [7:0]H_sync_pulse;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga.v(37[27:39])
    wire [11:0]V_count_max;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga.v(38[27:38])
    wire [7:0]V_sync_pulse;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga.v(39[27:39])
    wire [11:0]Count_h;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga.v(41[30:37])
    wire [11:0]Count_v;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga.v(42[30:37])
    
    wire n6228, n7374, n6758, n3046, n1553;
    wire [23:0]counter_adj_1195;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(19[19:26])
    
    wire n6227;
    wire [24:0]counter_23__N_178;
    
    wire clkout_N_203, n6226, n3053, counter_31__N_85, n6898, n7370, 
        n151, n150, n149, n148, n147, n146, n145, n144, n143, 
        counter_31__N_85_adj_1144, n142, n141, n140, n139, n138, 
        n137, n136, n135, n134, n133, n132, n131, n130, n129, 
        n128, n125, n124, n123, n122, n121, n120, n119, n118, 
        n117, n116, n6874, n6225, n6224;
    wire [23:0]baudrate_next_23__N_262;
    
    wire n7369, n6223, n6222, n6895, n6221, n7368, n6220, n7367;
    wire [1:0]ctr_ff;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(10[34:40])
    
    wire button_ff;
    wire [1:0]ctr_ff_adj_1214;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(10[34:40])
    
    wire button_ff_adj_1146, n7366, n6219;
    wire [1:0]ctr_ff_adj_1221;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(10[34:40])
    
    wire button_ff_adj_1148, n7365, n7364, clk_c_enable_156, n7362, 
        n7361, n7360, flag_reg, n10_adj_1149, n8_adj_1150, out_next_N_449, 
        n7359, n7358, n6_adj_1151, n5, n4_adj_1152, n7356, n115, 
        n114, n113, n112, n111, n110, n109, n108, n107, n106, 
        n105, n104, n103, n102, clk_c_enable_62, n7353, H_BackPorch_nxt_7__N_780, 
        n3044;
    wire [7:0]H_BackPorch_nxt_7__N_772;
    
    wire n3055, n3042, clk_c_enable_153, clk_c_enable_155, clk_c_enable_89, 
        n7345, n1121, c_ready_nxt_N_904, n7319, clk_c_enable_147, 
        n1115, n1112, clk_c_enable_32, clk_c_enable_142, clk_c_enable_144, 
        n7488, clk_c_enable_143, n6979, n7, Active_nxt_N_1066;
    wire [1:0]ctr_ff_adj_1299;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(10[34:40])
    
    wire button_ff_adj_1154, c_ready_next_N_344, n7338, n6181, n6178, 
        n7320, n6177, n3880, n6884, clk_c_enable_34, n375, n374, 
        n6180, n7334, H_Left_Margin_nxt_8__N_957, H_Left_Margin_nxt_8__N_958, 
        H_Left_Margin_nxt_8__N_963, V_Left_Margin_nxt_5__N_973, V_Left_Margin_nxt_5__N_974, 
        V_Left_Margin_nxt_5__N_976, H_Right_Margin_nxt_10__N_983, H_Right_Margin_nxt_10__N_984, 
        H_Right_Margin_nxt_10__N_985, H_Right_Margin_nxt_10__N_987, V_Right_Margin_nxt_9__N_994, 
        V_Right_Margin_nxt_9__N_995, V_Right_Margin_nxt_9__N_996, V_Right_Margin_nxt_9__N_999, 
        H_Sync_Pulse_nxt_7__N_1003, V_Sync_Pulse_nxt_7__N_1015, H_Count_Max_nxt_11__N_1018, 
        H_Count_Max_nxt_11__N_1021, V_Count_Max_nxt_11__N_1035, V_Count_Max_nxt_11__N_1036, 
        V_Count_Max_nxt_11__N_1037, n3051, n6179, n6752, n2589, n6918, 
        n6915, n7318, n6229, n7329, n7326, n7325;
    
    VHI i2 (.Z(VCC_net));
    OB GREEN_pad_0 (.I(GREEN_c_0), .O(GREEN[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(23[13:18])
    \Sync_Reg(SIZE=8)  FIFO_UART_CM (.clk_UART(clk_UART), .UART_out_CM_data({UART_out_CM_data}), 
            .clk_c(clk_c), .UART_out_CM_data_empty(UART_out_CM_data_empty), 
            .clk_LM(clk_LM), .n7488(n7488), .UART_out({UART_out}), .\counter_23__N_178[9] (counter_23__N_178[9]), 
            .n1553(n1553), .counter_31__N_85(counter_31__N_85), .UART_valid_out(UART_valid_out), 
            .button_signal_DEBUG_UART(button_signal_DEBUG_UART)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(77[22] 80[63])
    OB GREEN_pad_1 (.I(GREEN_c_1), .O(GREEN[1]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(23[13:18])
    LUT4 i3190_3_lut_4_lut (.A(valid_data), .B(n7319), .C(n374), .D(n7345), 
         .Z(clk_c_enable_62)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam i3190_3_lut_4_lut.init = 16'h2220;
    LUT4 i6013_4_lut (.A(ctr_ff[1]), .B(n7318), .C(btnVS_c), .D(button_ff), 
         .Z(clk_c_enable_142)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A (B))) */ ;
    defparam i6013_4_lut.init = 16'h1331;
    OB GREEN_pad_2 (.I(GREEN_c_2), .O(GREEN[2]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(23[13:18])
    OB GREEN_pad_3 (.I(GREEN_c_3), .O(GREEN[3]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(23[13:18])
    LUT4 i6066_4_lut (.A(n7375), .B(n7374), .C(n7377), .D(n6904), .Z(n7066)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam i6066_4_lut.init = 16'hefee;
    OB RED_pad_0 (.I(RED_c_0), .O(RED[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(22[13:16])
    LUT4 i6016_4_lut (.A(ctr_ff_adj_1214[1]), .B(n7318), .C(btnUART_c), 
         .D(button_ff_adj_1146), .Z(clk_c_enable_143)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A (B))) */ ;
    defparam i6016_4_lut.init = 16'h1331;
    OB RED_pad_1 (.I(RED_c_1), .O(RED[1]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(22[13:16])
    OB RED_pad_2 (.I(RED_c_2), .O(RED[2]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(22[13:16])
    LUT4 i3188_3_lut_4_lut (.A(valid_data), .B(n7319), .C(n375), .D(n7345), 
         .Z(clk_c_enable_156)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam i3188_3_lut_4_lut.init = 16'h2220;
    LUT4 i6019_4_lut (.A(ctr_ff_adj_1221[1]), .B(n7318), .C(btnVGA_c), 
         .D(button_ff_adj_1148), .Z(clk_c_enable_144)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A (B))) */ ;
    defparam i6019_4_lut.init = 16'h1331;
    OB RED_pad_3 (.I(RED_c_3), .O(RED[3]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(22[13:16])
    OB LEDS_pad_0 (.I(VCC_net), .O(LEDS[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(20[24:28])
    OB LEDS_pad_1 (.I(GND_net), .O(LEDS[1]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(20[24:28])
    CCU2D sub_810_add_2_5 (.A0(Count_h[3]), .B0(H_left_margin[3]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[4]), .B1(H_left_margin[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n6178), .COUT(n6179));
    defparam sub_810_add_2_5.INIT0 = 16'h5999;
    defparam sub_810_add_2_5.INIT1 = 16'h5999;
    defparam sub_810_add_2_5.INJECT1_0 = "NO";
    defparam sub_810_add_2_5.INJECT1_1 = "NO";
    LUT4 i6021_3_lut (.A(n7), .B(clk_c_enable_153), .C(out_next_N_449), 
         .Z(clk_c_enable_147)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;
    defparam i6021_3_lut.init = 16'hc4c4;
    OB LEDS_pad_2 (.I(VCC_net), .O(LEDS[2]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(20[24:28])
    OB LEDS_pad_3 (.I(GND_net), .O(LEDS[3]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(20[24:28])
    OB LEDS_pad_4 (.I(VCC_net), .O(LEDS[4]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(20[24:28])
    OB LEDS_pad_5 (.I(GND_net), .O(LEDS[5]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(20[24:28])
    OB LEDS_pad_6 (.I(VCC_net), .O(LEDS[6]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(20[24:28])
    OB LEDS_pad_7 (.I(GND_net), .O(LEDS[7]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(20[24:28])
    OB VSYNC_pad (.I(VSYNC_c), .O(VSYNC));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(18[8:13])
    OB HSYNC_pad (.I(HSYNC_c), .O(HSYNC));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(17[8:13])
    OB out_pad (.I(VCC_net), .O(out));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(15[8:11])
    LUT4 i6030_2_lut_rep_103_4_lut (.A(flag_reg), .B(n7319), .C(n7356), 
         .D(n7329), .Z(clk_c_enable_32)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i6030_2_lut_rep_103_4_lut.init = 16'h0200;
    LUT4 i108_2_lut_rep_106 (.A(clk_DB), .B(counter_31__N_85_adj_1144), 
         .Z(n7318)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(19[14] 23[8])
    defparam i108_2_lut_rep_106.init = 16'hbbbb;
    LUT4 i1_3_lut_4_lut (.A(clk_DB), .B(counter_31__N_85_adj_1144), .C(btnVS_c), 
         .D(button_ff), .Z(n3055)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(19[14] 23[8])
    defparam i1_3_lut_4_lut.init = 16'h0440;
    LUT4 i1_3_lut_4_lut_adj_31 (.A(clk_DB), .B(counter_31__N_85_adj_1144), 
         .C(btnUART_c), .D(button_ff_adj_1146), .Z(n3053)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(19[14] 23[8])
    defparam i1_3_lut_4_lut_adj_31.init = 16'h0440;
    LUT4 i1_3_lut_4_lut_adj_32 (.A(clk_DB), .B(counter_31__N_85_adj_1144), 
         .C(btnVGA_c), .D(button_ff_adj_1148), .Z(n3051)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(19[14] 23[8])
    defparam i1_3_lut_4_lut_adj_32.init = 16'h0440;
    LUT4 i1_3_lut_4_lut_adj_33 (.A(clk_DB), .B(counter_31__N_85_adj_1144), 
         .C(btnHS_c), .D(button_ff_adj_1154), .Z(n3042)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(19[14] 23[8])
    defparam i1_3_lut_4_lut_adj_33.init = 16'h0440;
    LUT4 LessThan_683_i4_4_lut (.A(Count_v[0]), .B(Count_v[1]), .C(V_left_margin[1]), 
         .D(V_left_margin[0]), .Z(n4_adj_1152)) /* synthesis lut_function=(A (B+!(C))+!A !(B (C (D))+!B (C+(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(38[59:81])
    defparam LessThan_683_i4_4_lut.init = 16'h8ecf;
    LUT4 i6047_4_lut (.A(n7367), .B(n7369), .C(n7368), .D(n5), .Z(n6874)) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(38[59:81])
    defparam i6047_4_lut.init = 16'haaab;
    LUT4 LessThan_683_i5_2_lut (.A(V_left_margin[2]), .B(Count_v[2]), .Z(n5)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(38[59:81])
    defparam LessThan_683_i5_2_lut.init = 16'h6666;
    PFUMX LessThan_677_i16 (.BLUT(n8_adj_1141), .ALUT(n14_adj_1138), .C0(n6898), 
          .Z(n1115));
    LUT4 i3186_2_lut_rep_102_3_lut_4_lut (.A(clk_UART), .B(n7320), .C(n7334), 
         .D(valid_data), .Z(clk_c_enable_155)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(40[11] 47[5])
    defparam i3186_2_lut_rep_102_3_lut_4_lut.init = 16'h4000;
    LUT4 i5979_4_lut (.A(n7365), .B(n7364), .C(n7370), .D(n6884), .Z(n6979)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam i5979_4_lut.init = 16'hefee;
    LUT4 i6037_4_lut (.A(ctr_ff_adj_1299[1]), .B(n7318), .C(btnHS_c), 
         .D(button_ff_adj_1154), .Z(clk_c_enable_34)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A (B))) */ ;
    defparam i6037_4_lut.init = 16'h1331;
    CCU2D sub_810_add_2_3 (.A0(Count_h[1]), .B0(H_left_margin[1]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[2]), .B1(H_left_margin[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n6177), .COUT(n6178));
    defparam sub_810_add_2_3.INIT0 = 16'h5999;
    defparam sub_810_add_2_3.INIT1 = 16'h5999;
    defparam sub_810_add_2_3.INJECT1_0 = "NO";
    defparam sub_810_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_810_add_2_7 (.A0(Count_h[5]), .B0(H_left_margin[5]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[6]), .B1(H_left_margin[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n6179), .COUT(n6180));
    defparam sub_810_add_2_7.INIT0 = 16'h5999;
    defparam sub_810_add_2_7.INIT1 = 16'h5999;
    defparam sub_810_add_2_7.INJECT1_0 = "NO";
    defparam sub_810_add_2_7.INJECT1_1 = "NO";
    LUT4 i6034_3_lut_rep_105_4_lut (.A(clk_UART), .B(n7320), .C(n7356), 
         .D(flag_reg), .Z(clk_c_enable_153)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(40[11] 47[5])
    defparam i6034_3_lut_rep_105_4_lut.init = 16'h0400;
    OB BLUE_pad_3 (.I(BLUE_c_3), .O(BLUE[3]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(24[13:17])
    PFUMX LessThan_674_i16 (.BLUT(n8), .ALUT(n14), .C0(n6918), .Z(n1112));
    CCU2D sub_810_add_2_9 (.A0(Count_h[7]), .B0(H_left_margin[7]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[8]), .B1(H_left_margin[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n6180), .COUT(n6181));
    defparam sub_810_add_2_9.INIT0 = 16'h5999;
    defparam sub_810_add_2_9.INIT1 = 16'h5999;
    defparam sub_810_add_2_9.INJECT1_0 = "NO";
    defparam sub_810_add_2_9.INJECT1_1 = "NO";
    CM cm (.Load_config(Load_config), .c_UART_ready(c_UART_ready), .c_VGA_ready(c_VGA_ready), 
       .\c_ready[1] (c_ready[1]), .clk_c(clk_c), .VSYNC_c(VSYNC_c), .n3044(n3044), 
       .GND_net(GND_net), .HSYNC_c(HSYNC_c), .n3046(n3046), .UART_out_CM_data_empty(UART_out_CM_data_empty), 
       .c_valid(c_valid), .\c_data[0] (c_data[0]), .c_addr({c_addr}), 
       .UART_out_CM_data({UART_out_CM_data}), .\c_data[1] (c_data[1]), .\c_data[2] (c_data[2]), 
       .Data_VGA({Data_VGA}), .button_signal_DEBUG_VGA(button_signal_DEBUG_VGA), 
       .c_ready_nxt_N_904(c_ready_nxt_N_904), .n7325(n7325), .button_signal_HS(button_signal_HS), 
       .button_signal_VS(button_signal_VS), .n7361(n7361), .H_BackPorch_nxt_7__N_780(H_BackPorch_nxt_7__N_780), 
       .n7353(n7353), .n2589(n2589), .clk_c_enable_89(clk_c_enable_89), 
       .H_Left_Margin_nxt_8__N_957(H_Left_Margin_nxt_8__N_957), .H_Count_Max_nxt_11__N_1021(H_Count_Max_nxt_11__N_1021), 
       .n7358(n7358), .\H_BackPorch_nxt_7__N_772[3] (H_BackPorch_nxt_7__N_772[3]), 
       .n7362(n7362), .\V_count_max[4] (V_count_max[4]), .V_Count_Max_nxt_11__N_1037(V_Count_Max_nxt_11__N_1037), 
       .\V_count_max[6] (V_count_max[6]), .V_Count_Max_nxt_11__N_1035(V_Count_Max_nxt_11__N_1035), 
       .\H_count_max[10] (H_count_max[10]), .H_Count_Max_nxt_11__N_1018(H_Count_Max_nxt_11__N_1018), 
       .\H_left_margin[2] (H_left_margin[2]), .H_Left_Margin_nxt_8__N_963(H_Left_Margin_nxt_8__N_963), 
       .\H_left_margin[6] (H_left_margin[6]), .H_Left_Margin_nxt_8__N_958(H_Left_Margin_nxt_8__N_958), 
       .\V_right_margin[4] (V_right_margin[4]), .V_Right_Margin_nxt_9__N_996(V_Right_Margin_nxt_9__N_996), 
       .\V_right_margin[6] (V_right_margin[6]), .V_Right_Margin_nxt_9__N_994(V_Right_Margin_nxt_9__N_994), 
       .\V_sync_pulse[1] (V_sync_pulse[1]), .V_Sync_Pulse_nxt_7__N_1015(V_Sync_Pulse_nxt_7__N_1015), 
       .\H_sync_pulse[5] (H_sync_pulse[5]), .H_Sync_Pulse_nxt_7__N_1003(H_Sync_Pulse_nxt_7__N_1003), 
       .\H_right_margin[6] (H_right_margin[6]), .H_Right_Margin_nxt_10__N_984(H_Right_Margin_nxt_10__N_984), 
       .\H_right_margin[7] (H_right_margin[7]), .H_Right_Margin_nxt_10__N_983(H_Right_Margin_nxt_10__N_983), 
       .\V_left_margin[3] (V_left_margin[3]), .V_Left_Margin_nxt_5__N_974(V_Left_Margin_nxt_5__N_974), 
       .\V_left_margin[4] (V_left_margin[4]), .V_Left_Margin_nxt_5__N_973(V_Left_Margin_nxt_5__N_973), 
       .n7326(n7326), .n7359(n7359), .n7360(n7360), .clk_VGA_enable_1(clk_VGA_enable_1), 
       .n7338(n7338)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(91[4] 102[24])
    LUT4 i5933_4_lut_4_lut (.A(n7366), .B(n6895), .C(n12_adj_1139), .D(n4_adj_1143), 
         .Z(n14_adj_1138)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam i5933_4_lut_4_lut.init = 16'hf4b0;
    LUT4 LessThan_677_i4_4_lut (.A(Count_v[0]), .B(Count_v[1]), .C(V_sync_pulse[1]), 
         .D(V_sync_pulse[0]), .Z(n4_adj_1143)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_677_i4_4_lut.init = 16'h0c8e;
    PFUMX LessThan_683_i12 (.BLUT(n8_adj_1150), .ALUT(n10_adj_1149), .C0(n6874), 
          .Z(n1121));
    LUT4 i5935_4_lut_4_lut (.A(n7376), .B(n6915), .C(n12), .D(n4), .Z(n14)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam i5935_4_lut_4_lut.init = 16'hf4b0;
    OB BLUE_pad_2 (.I(BLUE_c_2), .O(BLUE[2]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(24[13:17])
    OB BLUE_pad_1 (.I(BLUE_c_1), .O(BLUE[1]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(24[13:17])
    OB BLUE_pad_0 (.I(BLUE_c_0), .O(BLUE[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(24[13:17])
    IB clk_pad (.I(clk), .O(clk_c));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    IB rst_n_pad (.I(rst_n), .O(rst_n_c));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(7[7:12])
    IB btnHS_pad (.I(btnHS), .O(btnHS_c));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(9[7:12])
    IB btnVS_pad (.I(btnVS), .O(btnVS_c));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(10[7:12])
    IB btnUART_pad (.I(btnUART), .O(btnUART_c));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(11[7:14])
    IB btnVGA_pad (.I(btnVGA), .O(btnVGA_c));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(12[7:13])
    IB in_pad (.I(in), .O(in_c));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(14[7:9])
    LUT4 m0_lut (.Z(n7488)) /* synthesis lut_function=0, syn_instantiated=1 */ ;
    defparam m0_lut.init = 16'h0000;
    LUT4 LessThan_674_i4_4_lut (.A(Count_h[0]), .B(Count_h[1]), .C(H_sync_pulse[1]), 
         .D(H_sync_pulse[0]), .Z(n4)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_674_i4_4_lut.init = 16'h0c8e;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    CCU2D sub_825_add_2_25 (.A0(counter_adj_1195[23]), .B0(counter_23__N_178[9]), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6229), .S1(n1553));
    defparam sub_825_add_2_25.INIT0 = 16'h5999;
    defparam sub_825_add_2_25.INIT1 = 16'h0000;
    defparam sub_825_add_2_25.INJECT1_0 = "NO";
    defparam sub_825_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_825_add_2_23 (.A0(counter_adj_1195[21]), .B0(counter_23__N_178[9]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_adj_1195[22]), .B1(counter_23__N_178[9]), 
          .C1(GND_net), .D1(GND_net), .CIN(n6228), .COUT(n6229));
    defparam sub_825_add_2_23.INIT0 = 16'h5999;
    defparam sub_825_add_2_23.INIT1 = 16'h5999;
    defparam sub_825_add_2_23.INJECT1_0 = "NO";
    defparam sub_825_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_825_add_2_21 (.A0(counter_adj_1195[19]), .B0(counter_23__N_178[9]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_adj_1195[20]), .B1(counter_23__N_178[9]), 
          .C1(GND_net), .D1(GND_net), .CIN(n6227), .COUT(n6228));
    defparam sub_825_add_2_21.INIT0 = 16'h5999;
    defparam sub_825_add_2_21.INIT1 = 16'h5999;
    defparam sub_825_add_2_21.INJECT1_0 = "NO";
    defparam sub_825_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_825_add_2_19 (.A0(counter_adj_1195[17]), .B0(counter_23__N_178[9]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_adj_1195[18]), .B1(counter_23__N_178[9]), 
          .C1(GND_net), .D1(GND_net), .CIN(n6226), .COUT(n6227));
    defparam sub_825_add_2_19.INIT0 = 16'h5999;
    defparam sub_825_add_2_19.INIT1 = 16'h5999;
    defparam sub_825_add_2_19.INJECT1_0 = "NO";
    defparam sub_825_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_825_add_2_17 (.A0(counter_adj_1195[15]), .B0(counter_23__N_178[9]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_adj_1195[16]), .B1(counter_23__N_178[9]), 
          .C1(GND_net), .D1(GND_net), .CIN(n6225), .COUT(n6226));
    defparam sub_825_add_2_17.INIT0 = 16'h5999;
    defparam sub_825_add_2_17.INIT1 = 16'h5999;
    defparam sub_825_add_2_17.INJECT1_0 = "NO";
    defparam sub_825_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_825_add_2_15 (.A0(counter_adj_1195[13]), .B0(counter_23__N_178[9]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_adj_1195[14]), .B1(counter_23__N_178[9]), 
          .C1(GND_net), .D1(GND_net), .CIN(n6224), .COUT(n6225));
    defparam sub_825_add_2_15.INIT0 = 16'h5999;
    defparam sub_825_add_2_15.INIT1 = 16'h5999;
    defparam sub_825_add_2_15.INJECT1_0 = "NO";
    defparam sub_825_add_2_15.INJECT1_1 = "NO";
    LUT4 i3_4_lut (.A(Count_v[11]), .B(Count_v[9]), .C(Count_v[10]), .D(Count_v[8]), 
         .Z(n6752)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    CCU2D sub_825_add_2_13 (.A0(counter_adj_1195[11]), .B0(counter_23__N_178[9]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_adj_1195[12]), .B1(counter_23__N_178[9]), 
          .C1(GND_net), .D1(GND_net), .CIN(n6223), .COUT(n6224));
    defparam sub_825_add_2_13.INIT0 = 16'h5999;
    defparam sub_825_add_2_13.INIT1 = 16'h5999;
    defparam sub_825_add_2_13.INJECT1_0 = "NO";
    defparam sub_825_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_825_add_2_11 (.A0(counter_adj_1195[9]), .B0(counter_23__N_178[9]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_adj_1195[10]), .B1(counter_23__N_178[9]), 
          .C1(GND_net), .D1(GND_net), .CIN(n6222), .COUT(n6223));
    defparam sub_825_add_2_11.INIT0 = 16'h5999;
    defparam sub_825_add_2_11.INIT1 = 16'h5999;
    defparam sub_825_add_2_11.INJECT1_0 = "NO";
    defparam sub_825_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_825_add_2_9 (.A0(counter_adj_1195[7]), .B0(counter_23__N_178[7]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_adj_1195[8]), .B1(counter_23__N_178[8]), 
          .C1(GND_net), .D1(GND_net), .CIN(n6221), .COUT(n6222));
    defparam sub_825_add_2_9.INIT0 = 16'h5999;
    defparam sub_825_add_2_9.INIT1 = 16'h5999;
    defparam sub_825_add_2_9.INJECT1_0 = "NO";
    defparam sub_825_add_2_9.INJECT1_1 = "NO";
    UART uart (.UART_valid_out(UART_valid_out), .n7356(n7356), .flag_reg(flag_reg), 
         .out_next_N_449(out_next_N_449), .clk_UART(clk_UART), .clk_c(clk_c), 
         .clk_c_enable_62(clk_c_enable_62), .n7345(n7345), .UART_out({UART_out}), 
         .valid_data(valid_data), .n374(n374), .clk_c_enable_155(clk_c_enable_155), 
         .clk_c_enable_156(clk_c_enable_156), .n375(n375), .n7334(n7334), 
         .rst_n_c(rst_n_c), .\c_ready[1] (c_ready[1]), .clk_VGA(clk_VGA), 
         .clk_VGA_enable_1(clk_VGA_enable_1), .\c_data[0] (c_data[0]), .\c_data[1] (c_data[1]), 
         .n7359(n7359), .c_ready_next_N_344(c_ready_next_N_344), .\c_addr[1] (c_addr[1]), 
         .n7360(n7360), .c_valid(c_valid), .\c_addr[0] (c_addr[0]), .n3880(n3880), 
         .n7353(n7353), .n7361(n7361), .n7325(n7325), .n7(n7), .clk_c_enable_147(clk_c_enable_147), 
         .clk_c_enable_32(clk_c_enable_32), .in_c(in_c), .clk_c_enable_153(clk_c_enable_153), 
         .n1553(n1553), .\counter_23__N_178[9] (counter_23__N_178[9]), .n7320(n7320), 
         .n101({n102, n103, n104, n105, n106, n107, n108, n109, 
         n110, n111, n112, n113, n114, n115, n116, n117, n118, 
         n119, n120, n121, n122, n123, n124, n125}), .n127({n128, 
         n129, n130, n131, n132, n133, n134, n135, n136, n137, 
         n138, n139, n140, n141, n142, n143, n144, n145, n146, 
         n147, n148, n149, n150, n151}), .clkout_N_203(clkout_N_203), 
         .n7319(n7319), .n7329(n7329)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(67[6] 72[2])
    CCU2D sub_825_add_2_7 (.A0(counter_adj_1195[5]), .B0(counter_23__N_178[5]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_adj_1195[6]), .B1(counter_23__N_178[6]), 
          .C1(GND_net), .D1(GND_net), .CIN(n6220), .COUT(n6221));
    defparam sub_825_add_2_7.INIT0 = 16'h5999;
    defparam sub_825_add_2_7.INIT1 = 16'h5999;
    defparam sub_825_add_2_7.INJECT1_0 = "NO";
    defparam sub_825_add_2_7.INJECT1_1 = "NO";
    DB db (.button_ff(button_ff), .clk_DB(clk_DB), .btnVS_c(btnVS_c), 
       .\ctr_ff[1] (ctr_ff[1]), .button_signal_VS(button_signal_VS), .clk_c(clk_c), 
       .clk_c_enable_142(clk_c_enable_142), .n3055(n3055), .button_signal_HS(button_signal_HS), 
       .\ctr_ff[1]_adj_2 (ctr_ff_adj_1299[1]), .button_ff_adj_3(button_ff_adj_1154), 
       .btnHS_c(btnHS_c), .clk_c_enable_34(clk_c_enable_34), .n3042(n3042), 
       .button_ff_adj_4(button_ff_adj_1148), .btnVGA_c(btnVGA_c), .button_signal_DEBUG_VGA(button_signal_DEBUG_VGA), 
       .\ctr_ff[1]_adj_5 (ctr_ff_adj_1221[1]), .clk_c_enable_144(clk_c_enable_144), 
       .n3051(n3051), .button_ff_adj_6(button_ff_adj_1146), .btnUART_c(btnUART_c), 
       .button_signal_DEBUG_UART(button_signal_DEBUG_UART), .\ctr_ff[1]_adj_7 (ctr_ff_adj_1214[1]), 
       .clk_c_enable_143(clk_c_enable_143), .n3053(n3053)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(53[4] 58[2])
    CCU2D sub_825_add_2_5 (.A0(counter_adj_1195[3]), .B0(counter_23__N_178[3]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_adj_1195[4]), .B1(counter_23__N_178[4]), 
          .C1(GND_net), .D1(GND_net), .CIN(n6219), .COUT(n6220));
    defparam sub_825_add_2_5.INIT0 = 16'h5999;
    defparam sub_825_add_2_5.INIT1 = 16'h5999;
    defparam sub_825_add_2_5.INJECT1_0 = "NO";
    defparam sub_825_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_825_add_2_3 (.A0(counter_adj_1195[1]), .B0(counter_23__N_178[1]), 
          .C0(GND_net), .D0(GND_net), .A1(counter_adj_1195[2]), .B1(counter_23__N_178[2]), 
          .C1(GND_net), .D1(GND_net), .CIN(n6218), .COUT(n6219));
    defparam sub_825_add_2_3.INIT0 = 16'h5999;
    defparam sub_825_add_2_3.INIT1 = 16'h5999;
    defparam sub_825_add_2_3.INJECT1_0 = "NO";
    defparam sub_825_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_825_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter_adj_1195[0]), .B1(counter_23__N_178[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n6218));
    defparam sub_825_add_2_1.INIT0 = 16'h0000;
    defparam sub_825_add_2_1.INIT1 = 16'h5999;
    defparam sub_825_add_2_1.INJECT1_0 = "NO";
    defparam sub_825_add_2_1.INJECT1_1 = "NO";
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i2_3_lut (.A(Count_h[9]), .B(Count_h[10]), .C(Count_h[11]), .Z(n6758)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    CCU2D sub_810_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Count_h[0]), .B1(H_left_margin[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n6177));
    defparam sub_810_add_2_1.INIT0 = 16'h0000;
    defparam sub_810_add_2_1.INIT1 = 16'h5999;
    defparam sub_810_add_2_1.INJECT1_0 = "NO";
    defparam sub_810_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_810_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6181), .S0(n1417));
    defparam sub_810_add_2_cout.INIT0 = 16'h0000;
    defparam sub_810_add_2_cout.INIT1 = 16'h0000;
    defparam sub_810_add_2_cout.INJECT1_0 = "NO";
    defparam sub_810_add_2_cout.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(rst_n_c));
    UART_PLL basic_4OUT_PLL (.clk_c(clk_c), .clk_VGA(clk_VGA), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(47[10:85])
    LUT4 LessThan_677_i11_2_lut_rep_152 (.A(V_sync_pulse[5]), .B(Count_v[5]), 
         .Z(n7364)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_677_i11_2_lut_rep_152.init = 16'h6666;
    LUT4 LessThan_677_i13_2_lut_rep_153 (.A(V_sync_pulse[6]), .B(Count_v[6]), 
         .Z(n7365)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_677_i13_2_lut_rep_153.init = 16'h6666;
    LUT4 i5874_2_lut_3_lut_4_lut (.A(V_sync_pulse[6]), .B(Count_v[6]), .C(Count_v[5]), 
         .D(V_sync_pulse[5]), .Z(n6895)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam i5874_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 LessThan_677_i10_3_lut_3_lut (.A(V_sync_pulse[6]), .B(Count_v[6]), 
         .C(Count_v[5]), .Z(n10_adj_1140)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_677_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_677_i15_2_lut_rep_154 (.A(V_sync_pulse[7]), .B(Count_v[7]), 
         .Z(n7366)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_677_i15_2_lut_rep_154.init = 16'h6666;
    LUT4 LessThan_677_i12_3_lut_3_lut (.A(V_sync_pulse[7]), .B(Count_v[7]), 
         .C(n10_adj_1140), .Z(n12_adj_1139)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_677_i12_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i5980_2_lut_3_lut (.A(V_sync_pulse[7]), .B(Count_v[7]), .C(n6979), 
         .Z(n6898)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam i5980_2_lut_3_lut.init = 16'hf6f6;
    LUT4 LessThan_683_i11_2_lut_rep_155 (.A(V_left_margin[5]), .B(Count_v[5]), 
         .Z(n7367)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(38[59:81])
    defparam LessThan_683_i11_2_lut_rep_155.init = 16'h6666;
    LUT4 LessThan_683_i10_3_lut_3_lut (.A(V_left_margin[5]), .B(Count_v[5]), 
         .C(n4_adj_1152), .Z(n10_adj_1149)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(38[59:81])
    defparam LessThan_683_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_683_i7_2_lut_rep_156 (.A(V_left_margin[3]), .B(Count_v[3]), 
         .Z(n7368)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(38[59:81])
    defparam LessThan_683_i7_2_lut_rep_156.init = 16'h6666;
    LUT4 LessThan_683_i6_3_lut_3_lut (.A(V_left_margin[3]), .B(Count_v[3]), 
         .C(Count_v[2]), .Z(n6_adj_1151)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(38[59:81])
    defparam LessThan_683_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_683_i9_2_lut_rep_157 (.A(V_left_margin[4]), .B(Count_v[4]), 
         .Z(n7369)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(38[59:81])
    defparam LessThan_683_i9_2_lut_rep_157.init = 16'h6666;
    LUT4 LessThan_683_i8_3_lut_3_lut (.A(V_left_margin[4]), .B(Count_v[4]), 
         .C(n6_adj_1151), .Z(n8_adj_1150)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(38[59:81])
    defparam LessThan_683_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_677_i6_3_lut_3_lut (.A(V_sync_pulse[3]), .B(Count_v[3]), 
         .C(Count_v[2]), .Z(n6_adj_1142)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_677_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i5863_3_lut_4_lut (.A(V_sync_pulse[3]), .B(Count_v[3]), .C(Count_v[2]), 
         .D(V_sync_pulse[2]), .Z(n6884)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam i5863_3_lut_4_lut.init = 16'h9009;
    LUT4 LessThan_677_i9_2_lut_rep_158 (.A(V_sync_pulse[4]), .B(Count_v[4]), 
         .Z(n7370)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_677_i9_2_lut_rep_158.init = 16'h6666;
    LUT4 LessThan_677_i8_3_lut_3_lut (.A(V_sync_pulse[4]), .B(Count_v[4]), 
         .C(n6_adj_1142), .Z(n8_adj_1141)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_677_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i3_4_lut_adj_34 (.A(n1121), .B(Count_v[7]), .C(Count_v[6]), .D(n6752), 
         .Z(Active_nxt_N_1066)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_34.init = 16'hfffe;
    LUT4 LessThan_674_i11_2_lut_rep_162 (.A(H_sync_pulse[5]), .B(Count_h[5]), 
         .Z(n7374)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_674_i11_2_lut_rep_162.init = 16'h6666;
    LUT4 LessThan_674_i13_2_lut_rep_163 (.A(H_sync_pulse[6]), .B(Count_h[6]), 
         .Z(n7375)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_674_i13_2_lut_rep_163.init = 16'h6666;
    LUT4 i5894_2_lut_3_lut_4_lut (.A(H_sync_pulse[6]), .B(Count_h[6]), .C(Count_h[5]), 
         .D(H_sync_pulse[5]), .Z(n6915)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam i5894_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 LessThan_674_i10_3_lut_3_lut (.A(H_sync_pulse[6]), .B(Count_h[6]), 
         .C(Count_h[5]), .Z(n10)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_674_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_674_i15_2_lut_rep_164 (.A(H_sync_pulse[7]), .B(Count_h[7]), 
         .Z(n7376)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_674_i15_2_lut_rep_164.init = 16'h6666;
    LUT4 LessThan_674_i12_3_lut_3_lut (.A(H_sync_pulse[7]), .B(Count_h[7]), 
         .C(n10), .Z(n12)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_674_i12_3_lut_3_lut.init = 16'hd4d4;
    VGA vga (.V_left_margin({V_left_margin}), .\c_data[0] (c_data[0]), .n7362(n7362), 
        .\c_data[1] (c_data[1]), .H_Left_Margin_nxt_8__N_957(H_Left_Margin_nxt_8__N_957), 
        .H_sync_pulse({H_sync_pulse}), .clk_c(clk_c), .\V_right_margin[6] (V_right_margin[6]), 
        .\V_right_margin[5] (V_right_margin[5]), .\V_right_margin[4] (V_right_margin[4]), 
        .\V_right_margin[1] (V_right_margin[1]), .H_left_margin({H_left_margin}), 
        .V_sync_pulse({V_sync_pulse}), .\H_right_margin[7] (H_right_margin[7]), 
        .Load_config(Load_config), .\H_right_margin[6] (H_right_margin[6]), 
        .V_Count_Max_nxt_11__N_1037(V_Count_Max_nxt_11__N_1037), .V_Count_Max_nxt_11__N_1036(V_Count_Max_nxt_11__N_1036), 
        .V_Count_Max_nxt_11__N_1035(V_Count_Max_nxt_11__N_1035), .H_Count_Max_nxt_11__N_1018(H_Count_Max_nxt_11__N_1018), 
        .H_Left_Margin_nxt_8__N_963(H_Left_Margin_nxt_8__N_963), .H_Left_Margin_nxt_8__N_958(H_Left_Margin_nxt_8__N_958), 
        .V_Right_Margin_nxt_9__N_999(V_Right_Margin_nxt_9__N_999), .V_Right_Margin_nxt_9__N_996(V_Right_Margin_nxt_9__N_996), 
        .V_Right_Margin_nxt_9__N_995(V_Right_Margin_nxt_9__N_995), .V_Right_Margin_nxt_9__N_994(V_Right_Margin_nxt_9__N_994), 
        .V_Sync_Pulse_nxt_7__N_1015(V_Sync_Pulse_nxt_7__N_1015), .H_Sync_Pulse_nxt_7__N_1003(H_Sync_Pulse_nxt_7__N_1003), 
        .H_Right_Margin_nxt_10__N_987(H_Right_Margin_nxt_10__N_987), .H_Right_Margin_nxt_10__N_985(H_Right_Margin_nxt_10__N_985), 
        .H_Right_Margin_nxt_10__N_984(H_Right_Margin_nxt_10__N_984), .H_Right_Margin_nxt_10__N_983(H_Right_Margin_nxt_10__N_983), 
        .V_Left_Margin_nxt_5__N_976(V_Left_Margin_nxt_5__N_976), .V_Left_Margin_nxt_5__N_974(V_Left_Margin_nxt_5__N_974), 
        .V_Left_Margin_nxt_5__N_973(V_Left_Margin_nxt_5__N_973), .\H_right_margin[5] (H_right_margin[5]), 
        .\H_right_margin[3] (H_right_margin[3]), .H_BackPorch_nxt_7__N_780(H_BackPorch_nxt_7__N_780), 
        .n2589(n2589), .n7326(n7326), .c_ready_nxt_N_904(c_ready_nxt_N_904), 
        .\H_count_max[10] (H_count_max[10]), .\V_count_max[4] (V_count_max[4]), 
        .\V_count_max[5] (V_count_max[5]), .\V_count_max[6] (V_count_max[6]), 
        .\c_data[2] (c_data[2]), .\baudrate_next_23__N_262[0] (baudrate_next_23__N_262[0]), 
        .button_signal_DEBUG_VGA(button_signal_DEBUG_VGA), .clk_c_enable_89(clk_c_enable_89), 
        .n7358(n7358), .H_Count_Max_nxt_11__N_1021(H_Count_Max_nxt_11__N_1021), 
        .c_valid(c_valid), .\c_addr[3] (c_addr[3]), .\c_addr[2] (c_addr[2]), 
        .Data_VGA({Data_VGA}), .GREEN_c_0(GREEN_c_0), .BLUE_c_2(BLUE_c_2), 
        .BLUE_c_1(BLUE_c_1), .BLUE_c_0(BLUE_c_0), .Count_h({Count_h}), 
        .GND_net(GND_net), .Count_v({Count_v}), .GREEN_c_1(GREEN_c_1), 
        .BLUE_c_3(BLUE_c_3), .GREEN_c_2(GREEN_c_2), .GREEN_c_3(GREEN_c_3), 
        .RED_c_0(RED_c_0), .RED_c_1(RED_c_1), .RED_c_2(RED_c_2), .n1417(n1417), 
        .Active_nxt_N_1066(Active_nxt_N_1066), .n6758(n6758), .RED_c_3(RED_c_3), 
        .VSYNC_c(VSYNC_c), .HSYNC_c(HSYNC_c), .n3044(n3044), .n1115(n1115), 
        .n6752(n6752), .rst_n_c(rst_n_c), .n3046(n3046), .n1112(n1112)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(104[5] 109[31])
    LUT4 i6067_2_lut_3_lut (.A(H_sync_pulse[7]), .B(Count_h[7]), .C(n7066), 
         .Z(n6918)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam i6067_2_lut_3_lut.init = 16'hf6f6;
    LUT4 LessThan_674_i6_3_lut_3_lut (.A(H_sync_pulse[3]), .B(Count_h[3]), 
         .C(Count_h[2]), .Z(n6)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_674_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i5883_3_lut_4_lut (.A(H_sync_pulse[3]), .B(Count_h[3]), .C(Count_h[2]), 
         .D(H_sync_pulse[2]), .Z(n6904)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam i5883_3_lut_4_lut.init = 16'h9009;
    LUT4 LessThan_674_i9_2_lut_rep_165 (.A(H_sync_pulse[4]), .B(Count_h[4]), 
         .Z(n7377)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_674_i9_2_lut_rep_165.init = 16'h6666;
    LUT4 LessThan_674_i8_3_lut_3_lut (.A(H_sync_pulse[4]), .B(Count_h[4]), 
         .C(n6), .Z(n8)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(46[7:29])
    defparam LessThan_674_i8_3_lut_3_lut.init = 16'hd4d4;
    VLO i1 (.Z(GND_net));
    CD cd (.clk_UART(clk_UART), .clk_c(clk_c), .clkout_N_203(clkout_N_203), 
       .counter({counter_adj_1195}), .n127({n128, n129, n130, n131, 
       n132, n133, n134, n135, n136, n137, n138, n139, n140, 
       n141, n142, n143, n144, n145, n146, n147, n148, n149, 
       n150, n151}), .GND_net(GND_net), .\counter_23__N_178[9] (counter_23__N_178[9]), 
       .\counter_23__N_178[7] (counter_23__N_178[7]), .\counter_23__N_178[8] (counter_23__N_178[8]), 
       .\counter_23__N_178[5] (counter_23__N_178[5]), .\counter_23__N_178[6] (counter_23__N_178[6]), 
       .\counter_23__N_178[3] (counter_23__N_178[3]), .\counter_23__N_178[4] (counter_23__N_178[4]), 
       .\counter_23__N_178[1] (counter_23__N_178[1]), .\counter_23__N_178[2] (counter_23__N_178[2]), 
       .\counter_23__N_178[0] (counter_23__N_178[0]), .n101({n102, n103, 
       n104, n105, n106, n107, n108, n109, n110, n111, n112, 
       n113, n114, n115, n116, n117, n118, n119, n120, n121, 
       n122, n123, n124, n125}), .c_UART_ready(c_UART_ready), .rst_n_c(rst_n_c), 
       .clk_LM(clk_LM), .counter_31__N_85(counter_31__N_85), .clk_DB(clk_DB), 
       .counter_31__N_85_adj_1(counter_31__N_85_adj_1144), .c_VGA_ready(c_VGA_ready), 
       .clk_VGA(clk_VGA), .n3880(n3880), .n7359(n7359), .\c_data[0] (c_data[0]), 
       .\c_data[1] (c_data[1]), .\c_data[2] (c_data[2]), .\baudrate_next_23__N_262[0] (baudrate_next_23__N_262[0]), 
       .n7361(n7361), .c_addr({c_addr}), .c_valid(c_valid), .n7326(n7326), 
       .\H_BackPorch_nxt_7__N_772[3] (H_BackPorch_nxt_7__N_772[3]), .n7362(n7362), 
       .\V_count_max[5] (V_count_max[5]), .V_Count_Max_nxt_11__N_1036(V_Count_Max_nxt_11__N_1036), 
       .\V_right_margin[1] (V_right_margin[1]), .V_Right_Margin_nxt_9__N_999(V_Right_Margin_nxt_9__N_999), 
       .\V_right_margin[5] (V_right_margin[5]), .V_Right_Margin_nxt_9__N_995(V_Right_Margin_nxt_9__N_995), 
       .\H_right_margin[3] (H_right_margin[3]), .H_Right_Margin_nxt_10__N_987(H_Right_Margin_nxt_10__N_987), 
       .\H_right_margin[5] (H_right_margin[5]), .H_Right_Margin_nxt_10__N_985(H_Right_Margin_nxt_10__N_985), 
       .\V_left_margin[1] (V_left_margin[1]), .V_Left_Margin_nxt_5__N_976(V_Left_Margin_nxt_5__N_976), 
       .n7360(n7360), .c_ready_next_N_344(c_ready_next_N_344), .n7338(n7338)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(49[4] 51[72])
    
endmodule
//
// Verilog Description of module \Sync_Reg(SIZE=8) 
//

module \Sync_Reg(SIZE=8)  (clk_UART, UART_out_CM_data, clk_c, UART_out_CM_data_empty, 
            clk_LM, n7488, UART_out, \counter_23__N_178[9] , n1553, 
            counter_31__N_85, UART_valid_out, button_signal_DEBUG_UART) /* synthesis syn_module_defined=1 */ ;
    input clk_UART;
    output [7:0]UART_out_CM_data;
    input clk_c;
    output UART_out_CM_data_empty;
    input clk_LM;
    input n7488;
    input [7:0]UART_out;
    input \counter_23__N_178[9] ;
    input n1553;
    input counter_31__N_85;
    input UART_valid_out;
    input button_signal_DEBUG_UART;
    
    wire clk_UART /* synthesis is_clock=1, SET_AS_NETWORK=clk_UART */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(37[6:14])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    wire clk_LM /* synthesis is_clock=1, SET_AS_NETWORK=clk_LM */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(39[6:12])
    
    wire w_empty_reg, n7357, clk_c_enable_158;
    wire [7:0]w_data_reg;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(18[15:25])
    
    wire clk_LM_enable_1, clk_c_enable_61;
    
    FD1S3AY w_empty_reg_21 (.D(n7357), .CK(clk_UART), .Q(w_empty_reg)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=77, LSE_RLINE=80 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_empty_reg_21.GSR = "ENABLED";
    FD1P3AX r_data_reg_i0_i4 (.D(w_data_reg[4]), .SP(clk_c_enable_158), 
            .CK(clk_c), .Q(UART_out_CM_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=77, LSE_RLINE=80 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i4.GSR = "ENABLED";
    FD1P3AX r_data_reg_i0_i3 (.D(w_data_reg[3]), .SP(clk_c_enable_158), 
            .CK(clk_c), .Q(UART_out_CM_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=77, LSE_RLINE=80 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i3.GSR = "ENABLED";
    FD1P3AY r_empty_reg_23 (.D(n7488), .SP(clk_LM_enable_1), .CK(clk_LM), 
            .Q(UART_out_CM_data_empty)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=77, LSE_RLINE=80 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_empty_reg_23.GSR = "ENABLED";
    FD1P3AX r_data_reg_i0_i2 (.D(w_data_reg[2]), .SP(clk_c_enable_158), 
            .CK(clk_c), .Q(UART_out_CM_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=77, LSE_RLINE=80 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i2.GSR = "ENABLED";
    FD1P3AX r_data_reg_i0_i1 (.D(w_data_reg[1]), .SP(clk_c_enable_158), 
            .CK(clk_c), .Q(UART_out_CM_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=77, LSE_RLINE=80 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i1.GSR = "ENABLED";
    FD1P3AX w_data_reg_i0_i0 (.D(UART_out[0]), .SP(clk_c_enable_61), .CK(clk_c), 
            .Q(w_data_reg[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=77, LSE_RLINE=80 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i0.GSR = "ENABLED";
    FD1P3AX w_data_reg_i0_i7 (.D(UART_out[7]), .SP(clk_c_enable_61), .CK(clk_c), 
            .Q(w_data_reg[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=77, LSE_RLINE=80 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i7.GSR = "ENABLED";
    FD1P3AX w_data_reg_i0_i6 (.D(UART_out[6]), .SP(clk_c_enable_61), .CK(clk_c), 
            .Q(w_data_reg[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=77, LSE_RLINE=80 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i6.GSR = "ENABLED";
    FD1P3AX w_data_reg_i0_i5 (.D(UART_out[5]), .SP(clk_c_enable_61), .CK(clk_c), 
            .Q(w_data_reg[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=77, LSE_RLINE=80 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i5.GSR = "ENABLED";
    FD1P3AX w_data_reg_i0_i4 (.D(UART_out[4]), .SP(clk_c_enable_61), .CK(clk_c), 
            .Q(w_data_reg[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=77, LSE_RLINE=80 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i4.GSR = "ENABLED";
    FD1P3AX w_data_reg_i0_i3 (.D(UART_out[3]), .SP(clk_c_enable_61), .CK(clk_c), 
            .Q(w_data_reg[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=77, LSE_RLINE=80 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX w_data_reg_i0_i2 (.D(UART_out[2]), .SP(clk_c_enable_61), .CK(clk_c), 
            .Q(w_data_reg[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=77, LSE_RLINE=80 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i2.GSR = "ENABLED";
    FD1P3AX w_data_reg_i0_i1 (.D(UART_out[1]), .SP(clk_c_enable_61), .CK(clk_c), 
            .Q(w_data_reg[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=77, LSE_RLINE=80 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(27[12] 30[6])
    defparam w_data_reg_i0_i1.GSR = "ENABLED";
    LUT4 i391_2_lut_3_lut_4_lut_4_lut (.A(n7357), .B(clk_UART), .C(\counter_23__N_178[9] ), 
         .D(n1553), .Z(clk_c_enable_61)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(53[8] 59[6])
    defparam i391_2_lut_3_lut_4_lut_4_lut.init = 16'h0100;
    FD1P3AX r_data_reg_i0_i7 (.D(w_data_reg[7]), .SP(clk_c_enable_158), 
            .CK(clk_c), .Q(UART_out_CM_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=77, LSE_RLINE=80 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i7.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut (.A(w_empty_reg), .B(n7357), .C(counter_31__N_85), 
         .D(clk_LM), .Z(clk_c_enable_158)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0040;
    FD1P3AX r_data_reg_i0_i6 (.D(w_data_reg[6]), .SP(clk_c_enable_158), 
            .CK(clk_c), .Q(UART_out_CM_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=77, LSE_RLINE=80 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i6.GSR = "ENABLED";
    FD1P3AX r_data_reg_i0_i5 (.D(w_data_reg[5]), .SP(clk_c_enable_158), 
            .CK(clk_c), .Q(UART_out_CM_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=77, LSE_RLINE=80 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i5.GSR = "ENABLED";
    LUT4 i5960_2_lut_rep_145 (.A(UART_valid_out), .B(button_signal_DEBUG_UART), 
         .Z(n7357)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(53[8] 59[6])
    defparam i5960_2_lut_rep_145.init = 16'hdddd;
    LUT4 i5956_2_lut_rep_129_3_lut (.A(UART_valid_out), .B(button_signal_DEBUG_UART), 
         .C(w_empty_reg), .Z(clk_LM_enable_1)) /* synthesis lut_function=(!(A ((C)+!B)+!A (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(53[8] 59[6])
    defparam i5956_2_lut_rep_129_3_lut.init = 16'h0d0d;
    FD1P3AX r_data_reg_i0_i0 (.D(w_data_reg[0]), .SP(clk_c_enable_158), 
            .CK(clk_c), .Q(UART_out_CM_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=22, LSE_RCOL=63, LSE_LLINE=77, LSE_RLINE=80 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/sync_reg.v(37[12] 40[6])
    defparam r_data_reg_i0_i0.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module CM
//

module CM (Load_config, c_UART_ready, c_VGA_ready, \c_ready[1] , clk_c, 
           VSYNC_c, n3044, GND_net, HSYNC_c, n3046, UART_out_CM_data_empty, 
           c_valid, \c_data[0] , c_addr, UART_out_CM_data, \c_data[1] , 
           \c_data[2] , Data_VGA, button_signal_DEBUG_VGA, c_ready_nxt_N_904, 
           n7325, button_signal_HS, button_signal_VS, n7361, H_BackPorch_nxt_7__N_780, 
           n7353, n2589, clk_c_enable_89, H_Left_Margin_nxt_8__N_957, 
           H_Count_Max_nxt_11__N_1021, n7358, \H_BackPorch_nxt_7__N_772[3] , 
           n7362, \V_count_max[4] , V_Count_Max_nxt_11__N_1037, \V_count_max[6] , 
           V_Count_Max_nxt_11__N_1035, \H_count_max[10] , H_Count_Max_nxt_11__N_1018, 
           \H_left_margin[2] , H_Left_Margin_nxt_8__N_963, \H_left_margin[6] , 
           H_Left_Margin_nxt_8__N_958, \V_right_margin[4] , V_Right_Margin_nxt_9__N_996, 
           \V_right_margin[6] , V_Right_Margin_nxt_9__N_994, \V_sync_pulse[1] , 
           V_Sync_Pulse_nxt_7__N_1015, \H_sync_pulse[5] , H_Sync_Pulse_nxt_7__N_1003, 
           \H_right_margin[6] , H_Right_Margin_nxt_10__N_984, \H_right_margin[7] , 
           H_Right_Margin_nxt_10__N_983, \V_left_margin[3] , V_Left_Margin_nxt_5__N_974, 
           \V_left_margin[4] , V_Left_Margin_nxt_5__N_973, n7326, n7359, 
           n7360, clk_VGA_enable_1, n7338) /* synthesis syn_module_defined=1 */ ;
    input Load_config;
    input c_UART_ready;
    input c_VGA_ready;
    input \c_ready[1] ;
    input clk_c;
    input VSYNC_c;
    input n3044;
    input GND_net;
    input HSYNC_c;
    input n3046;
    input UART_out_CM_data_empty;
    output c_valid;
    output \c_data[0] ;
    output [3:0]c_addr;
    input [7:0]UART_out_CM_data;
    output \c_data[1] ;
    output \c_data[2] ;
    output [11:0]Data_VGA;
    input button_signal_DEBUG_VGA;
    input c_ready_nxt_N_904;
    input n7325;
    input button_signal_HS;
    input button_signal_VS;
    input n7361;
    output H_BackPorch_nxt_7__N_780;
    input n7353;
    output n2589;
    input clk_c_enable_89;
    input H_Left_Margin_nxt_8__N_957;
    input H_Count_Max_nxt_11__N_1021;
    input n7358;
    input \H_BackPorch_nxt_7__N_772[3] ;
    input n7362;
    input \V_count_max[4] ;
    output V_Count_Max_nxt_11__N_1037;
    input \V_count_max[6] ;
    output V_Count_Max_nxt_11__N_1035;
    input \H_count_max[10] ;
    output H_Count_Max_nxt_11__N_1018;
    input \H_left_margin[2] ;
    output H_Left_Margin_nxt_8__N_963;
    input \H_left_margin[6] ;
    output H_Left_Margin_nxt_8__N_958;
    input \V_right_margin[4] ;
    output V_Right_Margin_nxt_9__N_996;
    input \V_right_margin[6] ;
    output V_Right_Margin_nxt_9__N_994;
    input \V_sync_pulse[1] ;
    output V_Sync_Pulse_nxt_7__N_1015;
    input \H_sync_pulse[5] ;
    output H_Sync_Pulse_nxt_7__N_1003;
    input \H_right_margin[6] ;
    output H_Right_Margin_nxt_10__N_984;
    input \H_right_margin[7] ;
    output H_Right_Margin_nxt_10__N_983;
    input \V_left_margin[3] ;
    output V_Left_Margin_nxt_5__N_974;
    input \V_left_margin[4] ;
    output V_Left_Margin_nxt_5__N_973;
    input n7326;
    output n7359;
    input n7360;
    output clk_VGA_enable_1;
    input n7338;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    wire HSYNC_c /* synthesis SET_AS_NETWORK=HSYNC_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(17[8:13])
    
    wire c_ready_Assign, n6, c_addr_3__N_468, Counter_Y_Valid;
    wire [9:0]Counter_Y;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm.v(34[27:36])
    wire [7:0]H_BackPorch;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm.v(27[30:41])
    wire [7:0]V_BackPorch;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm.v(29[30:41])
    
    wire Counter_X_Valid;
    wire [9:0]Counter_X;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm.v(32[28:37])
    wire [13:0]c_data_adj_1137;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm.v(15[28:34])
    wire [13:0]c_data;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(44[12:18])
    
    LUT4 i4_4_lut (.A(Load_config), .B(c_ready_Assign), .C(c_UART_ready), 
         .D(n6), .Z(c_addr_3__N_468)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm.v(40[17:41])
    defparam i4_4_lut.init = 16'h4000;
    LUT4 i1_2_lut (.A(c_VGA_ready), .B(\c_ready[1] ), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm.v(40[17:41])
    defparam i1_2_lut.init = 16'h8888;
    CM_Counter counterV (.Counter_Y_Valid(Counter_Y_Valid), .clk_c(clk_c), 
            .VSYNC_c(VSYNC_c), .n3044(n3044), .Counter_Y({Counter_Y}), 
            .GND_net(GND_net), .\H_BackPorch[5] (H_BackPorch[5]), .\H_BackPorch[4] (H_BackPorch[4]), 
            .\H_BackPorch[3] (H_BackPorch[3]), .\H_BackPorch[7] (H_BackPorch[7]), 
            .\V_BackPorch[1] (V_BackPorch[1])) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm.v(81[13] 87[27])
    CM_Counter_U4 counterH (.GND_net(GND_net), .\H_BackPorch[3] (H_BackPorch[3]), 
            .Counter_X_Valid(Counter_X_Valid), .clk_c(clk_c), .HSYNC_c(HSYNC_c), 
            .Counter_X({Counter_X}), .n3046(n3046), .\H_BackPorch[6] (H_BackPorch[6]), 
            .\H_BackPorch[7] (H_BackPorch[7]), .\H_BackPorch[4] (H_BackPorch[4]), 
            .\H_BackPorch[5] (H_BackPorch[5])) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm.v(73[13] 79[27])
    CM_Config_Manager configCM (.UART_out_CM_data_empty(UART_out_CM_data_empty), 
            .c_valid(c_valid), .clk_c(clk_c), .c_addr_3__N_468(c_addr_3__N_468), 
            .\c_data[0] (\c_data[0] ), .\c_data[13] (c_data_adj_1137[13]), 
            .\c_data[12] (c_data_adj_1137[12]), .\c_data[11] (c_data_adj_1137[11]), 
            .\c_data[10] (c_data_adj_1137[10]), .\c_data[9] (c_data_adj_1137[9]), 
            .\c_data[8] (c_data_adj_1137[8]), .\c_data[7] (c_data[7]), .\c_data[6] (c_data[6]), 
            .\c_data[5] (c_data[5]), .\c_data[4] (c_data[4]), .\c_data[3] (c_data[3]), 
            .c_addr({c_addr}), .UART_out_CM_data({UART_out_CM_data}), .\c_data[1] (\c_data[1] ), 
            .\c_data[2] (\c_data[2] )) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm.v(37[20] 49[34])
    CM_Assign_Data assignCM (.Counter_X({Counter_X}), .\H_BackPorch[7] (H_BackPorch[7]), 
            .GND_net(GND_net), .\H_BackPorch[4] (H_BackPorch[4]), .clk_c(clk_c), 
            .\c_data[0] (\c_data[0] ), .Data_VGA({Data_VGA}), .c_ready_Assign(c_ready_Assign), 
            .button_signal_DEBUG_VGA(button_signal_DEBUG_VGA), .c_ready_nxt_N_904(c_ready_nxt_N_904), 
            .n7325(n7325), .button_signal_HS(button_signal_HS), .button_signal_VS(button_signal_VS), 
            .\c_data[1] (\c_data[1] ), .\H_BackPorch[3] (H_BackPorch[3]), 
            .c_valid(c_valid), .n7361(n7361), .\c_addr[1] (c_addr[1]), 
            .\c_addr[0] (c_addr[0]), .H_BackPorch_nxt_7__N_780(H_BackPorch_nxt_7__N_780), 
            .n7353(n7353), .n2589(n2589), .Counter_Y({Counter_Y}), .\H_BackPorch[5] (H_BackPorch[5]), 
            .\V_BackPorch[1] (V_BackPorch[1]), .clk_c_enable_89(clk_c_enable_89), 
            .H_Left_Margin_nxt_8__N_957(H_Left_Margin_nxt_8__N_957), .\H_BackPorch[6] (H_BackPorch[6]), 
            .H_Count_Max_nxt_11__N_1021(H_Count_Max_nxt_11__N_1021), .n7358(n7358), 
            .\H_BackPorch_nxt_7__N_772[3] (\H_BackPorch_nxt_7__N_772[3] ), 
            .\c_data[11] (c_data_adj_1137[11]), .\c_data[10] (c_data_adj_1137[10]), 
            .\c_data[9] (c_data_adj_1137[9]), .\c_data[8] (c_data_adj_1137[8]), 
            .\c_data[7] (c_data[7]), .\c_data[6] (c_data[6]), .\c_data[5] (c_data[5]), 
            .\c_data[4] (c_data[4]), .\c_data[3] (c_data[3]), .\c_data[2] (\c_data[2] ), 
            .Counter_X_Valid(Counter_X_Valid), .Counter_Y_Valid(Counter_Y_Valid), 
            .n7362(n7362), .\V_count_max[4] (\V_count_max[4] ), .V_Count_Max_nxt_11__N_1037(V_Count_Max_nxt_11__N_1037), 
            .\V_count_max[6] (\V_count_max[6] ), .V_Count_Max_nxt_11__N_1035(V_Count_Max_nxt_11__N_1035), 
            .\H_count_max[10] (\H_count_max[10] ), .H_Count_Max_nxt_11__N_1018(H_Count_Max_nxt_11__N_1018), 
            .\H_left_margin[2] (\H_left_margin[2] ), .H_Left_Margin_nxt_8__N_963(H_Left_Margin_nxt_8__N_963), 
            .\H_left_margin[6] (\H_left_margin[6] ), .H_Left_Margin_nxt_8__N_958(H_Left_Margin_nxt_8__N_958), 
            .\V_right_margin[4] (\V_right_margin[4] ), .V_Right_Margin_nxt_9__N_996(V_Right_Margin_nxt_9__N_996), 
            .\V_right_margin[6] (\V_right_margin[6] ), .V_Right_Margin_nxt_9__N_994(V_Right_Margin_nxt_9__N_994), 
            .\V_sync_pulse[1] (\V_sync_pulse[1] ), .V_Sync_Pulse_nxt_7__N_1015(V_Sync_Pulse_nxt_7__N_1015), 
            .\H_sync_pulse[5] (\H_sync_pulse[5] ), .H_Sync_Pulse_nxt_7__N_1003(H_Sync_Pulse_nxt_7__N_1003), 
            .\H_right_margin[6] (\H_right_margin[6] ), .H_Right_Margin_nxt_10__N_984(H_Right_Margin_nxt_10__N_984), 
            .\H_right_margin[7] (\H_right_margin[7] ), .H_Right_Margin_nxt_10__N_983(H_Right_Margin_nxt_10__N_983), 
            .\V_left_margin[3] (\V_left_margin[3] ), .V_Left_Margin_nxt_5__N_974(V_Left_Margin_nxt_5__N_974), 
            .\V_left_margin[4] (\V_left_margin[4] ), .V_Left_Margin_nxt_5__N_973(V_Left_Margin_nxt_5__N_973), 
            .n7326(n7326), .\c_data[13] (c_data_adj_1137[13]), .\c_data[12] (c_data_adj_1137[12]), 
            .n7359(n7359), .n7360(n7360), .clk_VGA_enable_1(clk_VGA_enable_1), 
            .n7338(n7338)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm.v(51[17] 70[35])
    
endmodule
//
// Verilog Description of module CM_Counter
//

module CM_Counter (Counter_Y_Valid, clk_c, VSYNC_c, n3044, Counter_Y, 
            GND_net, \H_BackPorch[5] , \H_BackPorch[4] , \H_BackPorch[3] , 
            \H_BackPorch[7] , \V_BackPorch[1] ) /* synthesis syn_module_defined=1 */ ;
    output Counter_Y_Valid;
    input clk_c;
    input VSYNC_c;
    input n3044;
    output [9:0]Counter_Y;
    input GND_net;
    input \H_BackPorch[5] ;
    input \H_BackPorch[4] ;
    input \H_BackPorch[3] ;
    input \H_BackPorch[7] ;
    input \V_BackPorch[1] ;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    
    wire n7321;
    wire [9:0]Count_intern_reg;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(15[32:48])
    wire [9:0]n45;
    
    wire n3043;
    wire [9:0]n45_adj_1136;
    
    wire n6240, n1455, n6239, n6238, n6237, n6236, n1468, n6186, 
        n6185, n6184, n6183, n6182, n6274, n6273, n6272, n6271, 
        n6270, n6269, n6268, n6267, n6266, n6265;
    
    FD1P3AX Counter_Valid_reg_19 (.D(n7321), .SP(VSYNC_c), .CK(clk_c), 
            .Q(Counter_Y_Valid)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=13, LSE_RCOL=27, LSE_LLINE=81, LSE_RLINE=87 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(26[8] 31[6])
    defparam Counter_Valid_reg_19.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_984__i0 (.D(n45[0]), .CK(clk_c), .CD(n3044), 
            .Q(Count_intern_reg[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_984__i0.GSR = "ENABLED";
    FD1S3IX Count_reg_986__i0 (.D(n45_adj_1136[0]), .CK(clk_c), .CD(n3043), 
            .Q(Counter_Y[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_986__i0.GSR = "ENABLED";
    CCU2D sub_815_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6240), .S0(n1455));
    defparam sub_815_add_2_cout.INIT0 = 16'h0000;
    defparam sub_815_add_2_cout.INIT1 = 16'h0000;
    defparam sub_815_add_2_cout.INJECT1_0 = "NO";
    defparam sub_815_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_815_add_2_10 (.A0(Count_intern_reg[8]), .B0(\H_BackPorch[5] ), 
          .C0(GND_net), .D0(GND_net), .A1(Count_intern_reg[9]), .B1(\H_BackPorch[4] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n6239), .COUT(n6240));
    defparam sub_815_add_2_10.INIT0 = 16'h5999;
    defparam sub_815_add_2_10.INIT1 = 16'h5999;
    defparam sub_815_add_2_10.INJECT1_0 = "NO";
    defparam sub_815_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_815_add_2_8 (.A0(Count_intern_reg[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_intern_reg[7]), .B1(\H_BackPorch[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n6238), .COUT(n6239));
    defparam sub_815_add_2_8.INIT0 = 16'h5aaa;
    defparam sub_815_add_2_8.INIT1 = 16'h5999;
    defparam sub_815_add_2_8.INJECT1_0 = "NO";
    defparam sub_815_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_815_add_2_6 (.A0(Count_intern_reg[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_intern_reg[5]), .B1(\H_BackPorch[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n6237), .COUT(n6238));
    defparam sub_815_add_2_6.INIT0 = 16'h5aaa;
    defparam sub_815_add_2_6.INIT1 = 16'h5999;
    defparam sub_815_add_2_6.INJECT1_0 = "NO";
    defparam sub_815_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_815_add_2_4 (.A0(Count_intern_reg[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_intern_reg[3]), .B1(\H_BackPorch[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n6236), .COUT(n6237));
    defparam sub_815_add_2_4.INIT0 = 16'h5aaa;
    defparam sub_815_add_2_4.INIT1 = 16'h5999;
    defparam sub_815_add_2_4.INJECT1_0 = "NO";
    defparam sub_815_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_815_add_2_2 (.A0(Count_intern_reg[0]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_intern_reg[1]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n6236));
    defparam sub_815_add_2_2.INIT0 = 16'h5000;
    defparam sub_815_add_2_2.INIT1 = 16'h5aaa;
    defparam sub_815_add_2_2.INJECT1_0 = "NO";
    defparam sub_815_add_2_2.INJECT1_1 = "NO";
    FD1S3IX Count_reg_986__i1 (.D(n45_adj_1136[1]), .CK(clk_c), .CD(n3043), 
            .Q(Counter_Y[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_986__i1.GSR = "ENABLED";
    FD1S3IX Count_reg_986__i2 (.D(n45_adj_1136[2]), .CK(clk_c), .CD(n3043), 
            .Q(Counter_Y[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_986__i2.GSR = "ENABLED";
    FD1S3IX Count_reg_986__i3 (.D(n45_adj_1136[3]), .CK(clk_c), .CD(n3043), 
            .Q(Counter_Y[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_986__i3.GSR = "ENABLED";
    FD1S3IX Count_reg_986__i4 (.D(n45_adj_1136[4]), .CK(clk_c), .CD(n3043), 
            .Q(Counter_Y[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_986__i4.GSR = "ENABLED";
    FD1S3IX Count_reg_986__i5 (.D(n45_adj_1136[5]), .CK(clk_c), .CD(n3043), 
            .Q(Counter_Y[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_986__i5.GSR = "ENABLED";
    FD1S3IX Count_reg_986__i6 (.D(n45_adj_1136[6]), .CK(clk_c), .CD(n3043), 
            .Q(Counter_Y[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_986__i6.GSR = "ENABLED";
    FD1S3IX Count_reg_986__i7 (.D(n45_adj_1136[7]), .CK(clk_c), .CD(n3043), 
            .Q(Counter_Y[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_986__i7.GSR = "ENABLED";
    FD1S3IX Count_reg_986__i8 (.D(n45_adj_1136[8]), .CK(clk_c), .CD(n3043), 
            .Q(Counter_Y[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_986__i8.GSR = "ENABLED";
    FD1S3IX Count_reg_986__i9 (.D(n45_adj_1136[9]), .CK(clk_c), .CD(n3043), 
            .Q(Counter_Y[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_986__i9.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_984__i1 (.D(n45[1]), .CK(clk_c), .CD(n3044), 
            .Q(Count_intern_reg[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_984__i1.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_984__i2 (.D(n45[2]), .CK(clk_c), .CD(n3044), 
            .Q(Count_intern_reg[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_984__i2.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_984__i3 (.D(n45[3]), .CK(clk_c), .CD(n3044), 
            .Q(Count_intern_reg[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_984__i3.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_984__i4 (.D(n45[4]), .CK(clk_c), .CD(n3044), 
            .Q(Count_intern_reg[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_984__i4.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_984__i5 (.D(n45[5]), .CK(clk_c), .CD(n3044), 
            .Q(Count_intern_reg[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_984__i5.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_984__i6 (.D(n45[6]), .CK(clk_c), .CD(n3044), 
            .Q(Count_intern_reg[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_984__i6.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_984__i7 (.D(n45[7]), .CK(clk_c), .CD(n3044), 
            .Q(Count_intern_reg[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_984__i7.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_984__i8 (.D(n45[8]), .CK(clk_c), .CD(n3044), 
            .Q(Count_intern_reg[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_984__i8.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_984__i9 (.D(n45[9]), .CK(clk_c), .CD(n3044), 
            .Q(Count_intern_reg[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_984__i9.GSR = "ENABLED";
    LUT4 i6004_2_lut_3_lut_3_lut (.A(n1468), .B(VSYNC_c), .C(n1455), .Z(n3043)) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam i6004_2_lut_3_lut_3_lut.init = 16'hfbfb;
    CCU2D sub_817_add_2_11 (.A0(Count_intern_reg[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6186), .S1(n1468));
    defparam sub_817_add_2_11.INIT0 = 16'hf555;
    defparam sub_817_add_2_11.INIT1 = 16'h0000;
    defparam sub_817_add_2_11.INJECT1_0 = "NO";
    defparam sub_817_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_817_add_2_9 (.A0(Count_intern_reg[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_intern_reg[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6185), .COUT(n6186));
    defparam sub_817_add_2_9.INIT0 = 16'hf555;
    defparam sub_817_add_2_9.INIT1 = 16'hf555;
    defparam sub_817_add_2_9.INJECT1_0 = "NO";
    defparam sub_817_add_2_9.INJECT1_1 = "NO";
    LUT4 i5978_2_lut_rep_109_2_lut (.A(n1468), .B(n1455), .Z(n7321)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i5978_2_lut_rep_109_2_lut.init = 16'h1111;
    CCU2D sub_817_add_2_7 (.A0(Count_intern_reg[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_intern_reg[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6184), .COUT(n6185));
    defparam sub_817_add_2_7.INIT0 = 16'hf555;
    defparam sub_817_add_2_7.INIT1 = 16'hf555;
    defparam sub_817_add_2_7.INJECT1_0 = "NO";
    defparam sub_817_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_817_add_2_5 (.A0(\H_BackPorch[3] ), .B0(Count_intern_reg[3]), 
          .C0(GND_net), .D0(GND_net), .A1(Count_intern_reg[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n6183), .COUT(n6184));
    defparam sub_817_add_2_5.INIT0 = 16'h5999;
    defparam sub_817_add_2_5.INIT1 = 16'h0aaa;
    defparam sub_817_add_2_5.INJECT1_0 = "NO";
    defparam sub_817_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_817_add_2_3 (.A0(\V_BackPorch[1] ), .B0(Count_intern_reg[1]), 
          .C0(GND_net), .D0(GND_net), .A1(Count_intern_reg[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n6182), .COUT(n6183));
    defparam sub_817_add_2_3.INIT0 = 16'h5999;
    defparam sub_817_add_2_3.INIT1 = 16'h0aaa;
    defparam sub_817_add_2_3.INJECT1_0 = "NO";
    defparam sub_817_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_817_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Count_intern_reg[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n6182));
    defparam sub_817_add_2_1.INIT0 = 16'hF000;
    defparam sub_817_add_2_1.INIT1 = 16'h0aaa;
    defparam sub_817_add_2_1.INJECT1_0 = "NO";
    defparam sub_817_add_2_1.INJECT1_1 = "NO";
    CCU2D Count_intern_reg_984_add_4_11 (.A0(Count_intern_reg[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6274), .S0(n45[9]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_984_add_4_11.INIT0 = 16'hfaaa;
    defparam Count_intern_reg_984_add_4_11.INIT1 = 16'h0000;
    defparam Count_intern_reg_984_add_4_11.INJECT1_0 = "NO";
    defparam Count_intern_reg_984_add_4_11.INJECT1_1 = "NO";
    CCU2D Count_intern_reg_984_add_4_9 (.A0(Count_intern_reg[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Count_intern_reg[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n6273), .COUT(n6274), .S0(n45[7]), 
          .S1(n45[8]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_984_add_4_9.INIT0 = 16'hfaaa;
    defparam Count_intern_reg_984_add_4_9.INIT1 = 16'hfaaa;
    defparam Count_intern_reg_984_add_4_9.INJECT1_0 = "NO";
    defparam Count_intern_reg_984_add_4_9.INJECT1_1 = "NO";
    CCU2D Count_intern_reg_984_add_4_7 (.A0(Count_intern_reg[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Count_intern_reg[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n6272), .COUT(n6273), .S0(n45[5]), 
          .S1(n45[6]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_984_add_4_7.INIT0 = 16'hfaaa;
    defparam Count_intern_reg_984_add_4_7.INIT1 = 16'hfaaa;
    defparam Count_intern_reg_984_add_4_7.INJECT1_0 = "NO";
    defparam Count_intern_reg_984_add_4_7.INJECT1_1 = "NO";
    CCU2D Count_intern_reg_984_add_4_5 (.A0(Count_intern_reg[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Count_intern_reg[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n6271), .COUT(n6272), .S0(n45[3]), 
          .S1(n45[4]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_984_add_4_5.INIT0 = 16'hfaaa;
    defparam Count_intern_reg_984_add_4_5.INIT1 = 16'hfaaa;
    defparam Count_intern_reg_984_add_4_5.INJECT1_0 = "NO";
    defparam Count_intern_reg_984_add_4_5.INJECT1_1 = "NO";
    CCU2D Count_intern_reg_984_add_4_3 (.A0(Count_intern_reg[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Count_intern_reg[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n6270), .COUT(n6271), .S0(n45[1]), 
          .S1(n45[2]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_984_add_4_3.INIT0 = 16'hfaaa;
    defparam Count_intern_reg_984_add_4_3.INIT1 = 16'hfaaa;
    defparam Count_intern_reg_984_add_4_3.INJECT1_0 = "NO";
    defparam Count_intern_reg_984_add_4_3.INJECT1_1 = "NO";
    CCU2D Count_intern_reg_984_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_intern_reg[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n6270), .S1(n45[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_984_add_4_1.INIT0 = 16'hF000;
    defparam Count_intern_reg_984_add_4_1.INIT1 = 16'h0555;
    defparam Count_intern_reg_984_add_4_1.INJECT1_0 = "NO";
    defparam Count_intern_reg_984_add_4_1.INJECT1_1 = "NO";
    CCU2D Count_reg_986_add_4_11 (.A0(Counter_Y[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6269), .S0(n45_adj_1136[9]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_986_add_4_11.INIT0 = 16'hfaaa;
    defparam Count_reg_986_add_4_11.INIT1 = 16'h0000;
    defparam Count_reg_986_add_4_11.INJECT1_0 = "NO";
    defparam Count_reg_986_add_4_11.INJECT1_1 = "NO";
    CCU2D Count_reg_986_add_4_9 (.A0(Counter_Y[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_Y[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6268), .COUT(n6269), .S0(n45_adj_1136[7]), 
          .S1(n45_adj_1136[8]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_986_add_4_9.INIT0 = 16'hfaaa;
    defparam Count_reg_986_add_4_9.INIT1 = 16'hfaaa;
    defparam Count_reg_986_add_4_9.INJECT1_0 = "NO";
    defparam Count_reg_986_add_4_9.INJECT1_1 = "NO";
    CCU2D Count_reg_986_add_4_7 (.A0(Counter_Y[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_Y[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6267), .COUT(n6268), .S0(n45_adj_1136[5]), 
          .S1(n45_adj_1136[6]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_986_add_4_7.INIT0 = 16'hfaaa;
    defparam Count_reg_986_add_4_7.INIT1 = 16'hfaaa;
    defparam Count_reg_986_add_4_7.INJECT1_0 = "NO";
    defparam Count_reg_986_add_4_7.INJECT1_1 = "NO";
    CCU2D Count_reg_986_add_4_5 (.A0(Counter_Y[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_Y[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6266), .COUT(n6267), .S0(n45_adj_1136[3]), 
          .S1(n45_adj_1136[4]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_986_add_4_5.INIT0 = 16'hfaaa;
    defparam Count_reg_986_add_4_5.INIT1 = 16'hfaaa;
    defparam Count_reg_986_add_4_5.INJECT1_0 = "NO";
    defparam Count_reg_986_add_4_5.INJECT1_1 = "NO";
    CCU2D Count_reg_986_add_4_3 (.A0(Counter_Y[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_Y[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6265), .COUT(n6266), .S0(n45_adj_1136[1]), 
          .S1(n45_adj_1136[2]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_986_add_4_3.INIT0 = 16'hfaaa;
    defparam Count_reg_986_add_4_3.INIT1 = 16'hfaaa;
    defparam Count_reg_986_add_4_3.INJECT1_0 = "NO";
    defparam Count_reg_986_add_4_3.INJECT1_1 = "NO";
    CCU2D Count_reg_986_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_Y[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n6265), .S1(n45_adj_1136[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_986_add_4_1.INIT0 = 16'hF000;
    defparam Count_reg_986_add_4_1.INIT1 = 16'h0555;
    defparam Count_reg_986_add_4_1.INJECT1_0 = "NO";
    defparam Count_reg_986_add_4_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module CM_Counter_U4
//

module CM_Counter_U4 (GND_net, \H_BackPorch[3] , Counter_X_Valid, clk_c, 
            HSYNC_c, Counter_X, n3046, \H_BackPorch[6] , \H_BackPorch[7] , 
            \H_BackPorch[4] , \H_BackPorch[5] ) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input \H_BackPorch[3] ;
    output Counter_X_Valid;
    input clk_c;
    input HSYNC_c;
    output [9:0]Counter_X;
    input n3046;
    input \H_BackPorch[6] ;
    input \H_BackPorch[7] ;
    input \H_BackPorch[4] ;
    input \H_BackPorch[5] ;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    wire HSYNC_c /* synthesis SET_AS_NETWORK=HSYNC_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(17[8:13])
    
    wire n6173;
    wire [9:0]Count_intern_reg;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(15[32:48])
    
    wire n6174, n7322, n3045;
    wire [9:0]n45;
    
    wire n6172, n6176, n1429, n6195, n1442;
    wire [9:0]n45_adj_1125;
    
    wire n6194, n6193, n6175, n6192, n6284, n6283, n6282, n6281, 
        n6280, n6279, n6278, n6277, n6276, n6275;
    
    CCU2D sub_811_add_2_6 (.A0(Count_intern_reg[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_intern_reg[5]), .B1(\H_BackPorch[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n6173), .COUT(n6174));
    defparam sub_811_add_2_6.INIT0 = 16'h5aaa;
    defparam sub_811_add_2_6.INIT1 = 16'h5999;
    defparam sub_811_add_2_6.INJECT1_0 = "NO";
    defparam sub_811_add_2_6.INJECT1_1 = "NO";
    FD1P3AX Counter_Valid_reg_19 (.D(n7322), .SP(HSYNC_c), .CK(clk_c), 
            .Q(Counter_X_Valid)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=13, LSE_RCOL=27, LSE_LLINE=73, LSE_RLINE=79 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(26[8] 31[6])
    defparam Counter_Valid_reg_19.GSR = "ENABLED";
    FD1S3IX Count_reg_982__i0 (.D(n45[0]), .CK(clk_c), .CD(n3045), .Q(Counter_X[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_982__i0.GSR = "ENABLED";
    CCU2D sub_811_add_2_4 (.A0(Count_intern_reg[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_intern_reg[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6172), .COUT(n6173));
    defparam sub_811_add_2_4.INIT0 = 16'h5aaa;
    defparam sub_811_add_2_4.INIT1 = 16'h5aaa;
    defparam sub_811_add_2_4.INJECT1_0 = "NO";
    defparam sub_811_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_811_add_2_2 (.A0(Count_intern_reg[0]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_intern_reg[1]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n6172));
    defparam sub_811_add_2_2.INIT0 = 16'h5000;
    defparam sub_811_add_2_2.INIT1 = 16'h5aaa;
    defparam sub_811_add_2_2.INJECT1_0 = "NO";
    defparam sub_811_add_2_2.INJECT1_1 = "NO";
    CCU2D sub_811_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6176), .S0(n1429));
    defparam sub_811_add_2_cout.INIT0 = 16'h0000;
    defparam sub_811_add_2_cout.INIT1 = 16'h0000;
    defparam sub_811_add_2_cout.INJECT1_0 = "NO";
    defparam sub_811_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_813_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6195), .S0(n1442));
    defparam sub_813_add_2_cout.INIT0 = 16'h0000;
    defparam sub_813_add_2_cout.INIT1 = 16'h0000;
    defparam sub_813_add_2_cout.INJECT1_0 = "NO";
    defparam sub_813_add_2_cout.INJECT1_1 = "NO";
    FD1S3IX Count_intern_reg_980__i0 (.D(n45_adj_1125[0]), .CK(clk_c), .CD(n3046), 
            .Q(Count_intern_reg[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_980__i0.GSR = "ENABLED";
    CCU2D sub_813_add_2_7 (.A0(Count_intern_reg[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_intern_reg[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6194), .COUT(n6195));
    defparam sub_813_add_2_7.INIT0 = 16'hf555;
    defparam sub_813_add_2_7.INIT1 = 16'hf555;
    defparam sub_813_add_2_7.INJECT1_0 = "NO";
    defparam sub_813_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_813_add_2_5 (.A0(\H_BackPorch[6] ), .B0(Count_intern_reg[6]), 
          .C0(GND_net), .D0(GND_net), .A1(\H_BackPorch[7] ), .B1(Count_intern_reg[7]), 
          .C1(GND_net), .D1(GND_net), .CIN(n6193), .COUT(n6194));
    defparam sub_813_add_2_5.INIT0 = 16'h5999;
    defparam sub_813_add_2_5.INIT1 = 16'h5999;
    defparam sub_813_add_2_5.INJECT1_0 = "NO";
    defparam sub_813_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_811_add_2_8 (.A0(Count_intern_reg[6]), .B0(\H_BackPorch[3] ), 
          .C0(GND_net), .D0(GND_net), .A1(Count_intern_reg[7]), .B1(\H_BackPorch[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n6174), .COUT(n6175));
    defparam sub_811_add_2_8.INIT0 = 16'h5999;
    defparam sub_811_add_2_8.INIT1 = 16'h5999;
    defparam sub_811_add_2_8.INJECT1_0 = "NO";
    defparam sub_811_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_813_add_2_3 (.A0(\H_BackPorch[4] ), .B0(Count_intern_reg[4]), 
          .C0(GND_net), .D0(GND_net), .A1(\H_BackPorch[5] ), .B1(Count_intern_reg[5]), 
          .C1(GND_net), .D1(GND_net), .CIN(n6192), .COUT(n6193));
    defparam sub_813_add_2_3.INIT0 = 16'h5999;
    defparam sub_813_add_2_3.INIT1 = 16'h5999;
    defparam sub_813_add_2_3.INJECT1_0 = "NO";
    defparam sub_813_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_813_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\H_BackPorch[3] ), .B1(Count_intern_reg[3]), .C1(GND_net), 
          .D1(GND_net), .COUT(n6192));
    defparam sub_813_add_2_1.INIT0 = 16'h0000;
    defparam sub_813_add_2_1.INIT1 = 16'h5999;
    defparam sub_813_add_2_1.INJECT1_0 = "NO";
    defparam sub_813_add_2_1.INJECT1_1 = "NO";
    FD1S3IX Count_reg_982__i1 (.D(n45[1]), .CK(clk_c), .CD(n3045), .Q(Counter_X[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_982__i1.GSR = "ENABLED";
    FD1S3IX Count_reg_982__i2 (.D(n45[2]), .CK(clk_c), .CD(n3045), .Q(Counter_X[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_982__i2.GSR = "ENABLED";
    FD1S3IX Count_reg_982__i3 (.D(n45[3]), .CK(clk_c), .CD(n3045), .Q(Counter_X[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_982__i3.GSR = "ENABLED";
    FD1S3IX Count_reg_982__i4 (.D(n45[4]), .CK(clk_c), .CD(n3045), .Q(Counter_X[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_982__i4.GSR = "ENABLED";
    FD1S3IX Count_reg_982__i5 (.D(n45[5]), .CK(clk_c), .CD(n3045), .Q(Counter_X[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_982__i5.GSR = "ENABLED";
    FD1S3IX Count_reg_982__i6 (.D(n45[6]), .CK(clk_c), .CD(n3045), .Q(Counter_X[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_982__i6.GSR = "ENABLED";
    FD1S3IX Count_reg_982__i7 (.D(n45[7]), .CK(clk_c), .CD(n3045), .Q(Counter_X[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_982__i7.GSR = "ENABLED";
    FD1S3IX Count_reg_982__i8 (.D(n45[8]), .CK(clk_c), .CD(n3045), .Q(Counter_X[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_982__i8.GSR = "ENABLED";
    FD1S3IX Count_reg_982__i9 (.D(n45[9]), .CK(clk_c), .CD(n3045), .Q(Counter_X[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_982__i9.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_980__i1 (.D(n45_adj_1125[1]), .CK(clk_c), .CD(n3046), 
            .Q(Count_intern_reg[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_980__i1.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_980__i2 (.D(n45_adj_1125[2]), .CK(clk_c), .CD(n3046), 
            .Q(Count_intern_reg[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_980__i2.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_980__i3 (.D(n45_adj_1125[3]), .CK(clk_c), .CD(n3046), 
            .Q(Count_intern_reg[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_980__i3.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_980__i4 (.D(n45_adj_1125[4]), .CK(clk_c), .CD(n3046), 
            .Q(Count_intern_reg[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_980__i4.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_980__i5 (.D(n45_adj_1125[5]), .CK(clk_c), .CD(n3046), 
            .Q(Count_intern_reg[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_980__i5.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_980__i6 (.D(n45_adj_1125[6]), .CK(clk_c), .CD(n3046), 
            .Q(Count_intern_reg[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_980__i6.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_980__i7 (.D(n45_adj_1125[7]), .CK(clk_c), .CD(n3046), 
            .Q(Count_intern_reg[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_980__i7.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_980__i8 (.D(n45_adj_1125[8]), .CK(clk_c), .CD(n3046), 
            .Q(Count_intern_reg[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_980__i8.GSR = "ENABLED";
    FD1S3IX Count_intern_reg_980__i9 (.D(n45_adj_1125[9]), .CK(clk_c), .CD(n3046), 
            .Q(Count_intern_reg[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_980__i9.GSR = "ENABLED";
    CCU2D sub_811_add_2_10 (.A0(Count_intern_reg[8]), .B0(\H_BackPorch[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(Count_intern_reg[9]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n6175), .COUT(n6176));
    defparam sub_811_add_2_10.INIT0 = 16'h5999;
    defparam sub_811_add_2_10.INIT1 = 16'h5aaa;
    defparam sub_811_add_2_10.INJECT1_0 = "NO";
    defparam sub_811_add_2_10.INJECT1_1 = "NO";
    LUT4 i5975_2_lut_rep_110_2_lut (.A(n1442), .B(n1429), .Z(n7322)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i5975_2_lut_rep_110_2_lut.init = 16'h1111;
    LUT4 i6007_2_lut_3_lut_3_lut (.A(n1442), .B(HSYNC_c), .C(n1429), .Z(n3045)) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam i6007_2_lut_3_lut_3_lut.init = 16'hfbfb;
    CCU2D Count_intern_reg_980_add_4_11 (.A0(Count_intern_reg[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6284), .S0(n45_adj_1125[9]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_980_add_4_11.INIT0 = 16'hfaaa;
    defparam Count_intern_reg_980_add_4_11.INIT1 = 16'h0000;
    defparam Count_intern_reg_980_add_4_11.INJECT1_0 = "NO";
    defparam Count_intern_reg_980_add_4_11.INJECT1_1 = "NO";
    CCU2D Count_intern_reg_980_add_4_9 (.A0(Count_intern_reg[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Count_intern_reg[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n6283), .COUT(n6284), .S0(n45_adj_1125[7]), 
          .S1(n45_adj_1125[8]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_980_add_4_9.INIT0 = 16'hfaaa;
    defparam Count_intern_reg_980_add_4_9.INIT1 = 16'hfaaa;
    defparam Count_intern_reg_980_add_4_9.INJECT1_0 = "NO";
    defparam Count_intern_reg_980_add_4_9.INJECT1_1 = "NO";
    CCU2D Count_intern_reg_980_add_4_7 (.A0(Count_intern_reg[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Count_intern_reg[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n6282), .COUT(n6283), .S0(n45_adj_1125[5]), 
          .S1(n45_adj_1125[6]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_980_add_4_7.INIT0 = 16'hfaaa;
    defparam Count_intern_reg_980_add_4_7.INIT1 = 16'hfaaa;
    defparam Count_intern_reg_980_add_4_7.INJECT1_0 = "NO";
    defparam Count_intern_reg_980_add_4_7.INJECT1_1 = "NO";
    CCU2D Count_intern_reg_980_add_4_5 (.A0(Count_intern_reg[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Count_intern_reg[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n6281), .COUT(n6282), .S0(n45_adj_1125[3]), 
          .S1(n45_adj_1125[4]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_980_add_4_5.INIT0 = 16'hfaaa;
    defparam Count_intern_reg_980_add_4_5.INIT1 = 16'hfaaa;
    defparam Count_intern_reg_980_add_4_5.INJECT1_0 = "NO";
    defparam Count_intern_reg_980_add_4_5.INJECT1_1 = "NO";
    CCU2D Count_intern_reg_980_add_4_3 (.A0(Count_intern_reg[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Count_intern_reg[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n6280), .COUT(n6281), .S0(n45_adj_1125[1]), 
          .S1(n45_adj_1125[2]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_980_add_4_3.INIT0 = 16'hfaaa;
    defparam Count_intern_reg_980_add_4_3.INIT1 = 16'hfaaa;
    defparam Count_intern_reg_980_add_4_3.INJECT1_0 = "NO";
    defparam Count_intern_reg_980_add_4_3.INJECT1_1 = "NO";
    CCU2D Count_intern_reg_980_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_intern_reg[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n6280), .S1(n45_adj_1125[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(46[23:46])
    defparam Count_intern_reg_980_add_4_1.INIT0 = 16'hF000;
    defparam Count_intern_reg_980_add_4_1.INIT1 = 16'h0555;
    defparam Count_intern_reg_980_add_4_1.INJECT1_0 = "NO";
    defparam Count_intern_reg_980_add_4_1.INJECT1_1 = "NO";
    CCU2D Count_reg_982_add_4_11 (.A0(Counter_X[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6279), .S0(n45[9]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_982_add_4_11.INIT0 = 16'hfaaa;
    defparam Count_reg_982_add_4_11.INIT1 = 16'h0000;
    defparam Count_reg_982_add_4_11.INJECT1_0 = "NO";
    defparam Count_reg_982_add_4_11.INJECT1_1 = "NO";
    CCU2D Count_reg_982_add_4_9 (.A0(Counter_X[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_X[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6278), .COUT(n6279), .S0(n45[7]), .S1(n45[8]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_982_add_4_9.INIT0 = 16'hfaaa;
    defparam Count_reg_982_add_4_9.INIT1 = 16'hfaaa;
    defparam Count_reg_982_add_4_9.INJECT1_0 = "NO";
    defparam Count_reg_982_add_4_9.INJECT1_1 = "NO";
    CCU2D Count_reg_982_add_4_7 (.A0(Counter_X[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_X[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6277), .COUT(n6278), .S0(n45[5]), .S1(n45[6]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_982_add_4_7.INIT0 = 16'hfaaa;
    defparam Count_reg_982_add_4_7.INIT1 = 16'hfaaa;
    defparam Count_reg_982_add_4_7.INJECT1_0 = "NO";
    defparam Count_reg_982_add_4_7.INJECT1_1 = "NO";
    CCU2D Count_reg_982_add_4_5 (.A0(Counter_X[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_X[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6276), .COUT(n6277), .S0(n45[3]), .S1(n45[4]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_982_add_4_5.INIT0 = 16'hfaaa;
    defparam Count_reg_982_add_4_5.INIT1 = 16'hfaaa;
    defparam Count_reg_982_add_4_5.INJECT1_0 = "NO";
    defparam Count_reg_982_add_4_5.INJECT1_1 = "NO";
    CCU2D Count_reg_982_add_4_3 (.A0(Counter_X[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_X[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6275), .COUT(n6276), .S0(n45[1]), .S1(n45[2]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_982_add_4_3.INIT0 = 16'hfaaa;
    defparam Count_reg_982_add_4_3.INIT1 = 16'hfaaa;
    defparam Count_reg_982_add_4_3.INJECT1_0 = "NO";
    defparam Count_reg_982_add_4_3.INJECT1_1 = "NO";
    CCU2D Count_reg_982_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_X[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n6275), .S1(n45[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_counter.v(49[17:33])
    defparam Count_reg_982_add_4_1.INIT0 = 16'hF000;
    defparam Count_reg_982_add_4_1.INIT1 = 16'h0555;
    defparam Count_reg_982_add_4_1.INJECT1_0 = "NO";
    defparam Count_reg_982_add_4_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module CM_Config_Manager
//

module CM_Config_Manager (UART_out_CM_data_empty, c_valid, clk_c, c_addr_3__N_468, 
            \c_data[0] , \c_data[13] , \c_data[12] , \c_data[11] , \c_data[10] , 
            \c_data[9] , \c_data[8] , \c_data[7] , \c_data[6] , \c_data[5] , 
            \c_data[4] , \c_data[3] , c_addr, UART_out_CM_data, \c_data[1] , 
            \c_data[2] ) /* synthesis syn_module_defined=1 */ ;
    input UART_out_CM_data_empty;
    output c_valid;
    input clk_c;
    input c_addr_3__N_468;
    output \c_data[0] ;
    output \c_data[13] ;
    output \c_data[12] ;
    output \c_data[11] ;
    output \c_data[10] ;
    output \c_data[9] ;
    output \c_data[8] ;
    output \c_data[7] ;
    output \c_data[6] ;
    output \c_data[5] ;
    output \c_data[4] ;
    output \c_data[3] ;
    output [3:0]c_addr;
    input [7:0]UART_out_CM_data;
    output \c_data[1] ;
    output \c_data[2] ;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    wire [5:0]n491 /* synthesis is_clock=1, SET_AS_NETWORK=\cm/configCM/State_nxt_2__N_486 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(21[35:44])
    wire [15:0]RXD_Data_reg;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(24[23:35])
    
    wire n3000, n7379, n7378, n7343, n3001, clk_c_enable_129, n6775, 
        clk_c_enable_141;
    wire [2:0]State_nxt_2__N_472;
    wire [2:0]State_reg;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(21[24:33])
    
    wire n7236, n7237, n6390, n7373, n3058, n7311;
    wire [13:0]c_data_nxt_13__N_515;
    wire [2:0]State_nxt;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(21[35:44])
    
    wire n7352, n7330, n6848, n7351, n7, n8, n6801, n6835, n2884, 
        n7312, n7223, n7222, n7339, n1660, clk_c_enable_45, clk_c_enable_148, 
        clk_c_enable_54, n6426, clk_c_enable_157;
    wire [3:0]n1191;
    
    wire n2883, n3038, clk_c_enable_146, n7331, n2874, Err_nxt_N_610, 
        n7371, n7350, n6714, n6755, n2666, n7328;
    
    LUT4 i2_3_lut_4_lut_then_4_lut (.A(RXD_Data_reg[14]), .B(RXD_Data_reg[12]), 
         .C(n3000), .D(RXD_Data_reg[11]), .Z(n7379)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(109[6] 188[13])
    defparam i2_3_lut_4_lut_then_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut_else_4_lut (.A(RXD_Data_reg[14]), .B(RXD_Data_reg[12]), 
         .C(n3000), .D(RXD_Data_reg[11]), .Z(n7378)) /* synthesis lut_function=((B (C)+!B (C+!(D)))+!A) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(109[6] 188[13])
    defparam i2_3_lut_4_lut_else_4_lut.init = 16'hf5f7;
    LUT4 i6041_3_lut_4_lut (.A(RXD_Data_reg[14]), .B(n7343), .C(RXD_Data_reg[15]), 
         .D(n3001), .Z(clk_c_enable_129)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+(C (D))))) */ ;
    defparam i6041_3_lut_4_lut.init = 16'h0131;
    LUT4 i6039_3_lut_4_lut (.A(RXD_Data_reg[14]), .B(n7343), .C(RXD_Data_reg[15]), 
         .D(n6775), .Z(clk_c_enable_141)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+(C (D))))) */ ;
    defparam i6039_3_lut_4_lut.init = 16'h0131;
    LUT4 State_reg_2__bdd_3_lut_6109 (.A(State_nxt_2__N_472[1]), .B(State_reg[0]), 
         .C(State_reg[1]), .Z(n7236)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam State_reg_2__bdd_3_lut_6109.init = 16'h0808;
    LUT4 State_reg_2__bdd_3_lut (.A(State_reg[0]), .B(State_reg[1]), .C(UART_out_CM_data_empty), 
         .Z(n7237)) /* synthesis lut_function=(A+!(B+(C))) */ ;
    defparam State_reg_2__bdd_3_lut.init = 16'habab;
    FD1S3IX c_valid_reg_148 (.D(c_addr_3__N_468), .CK(clk_c), .CD(n6390), 
            .Q(c_valid)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_valid_reg_148.GSR = "ENABLED";
    LUT4 i2_4_lut (.A(n7373), .B(RXD_Data_reg[14]), .C(RXD_Data_reg[15]), 
         .D(State_reg[0]), .Z(n3058)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i2_4_lut.init = 16'h0200;
    LUT4 c_data_nxt_13__I_0_i2_4_lut (.A(RXD_Data_reg[1]), .B(n7311), .C(RXD_Data_reg[15]), 
         .D(n3001), .Z(c_data_nxt_13__N_515[1])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(190[10] 201[8])
    defparam c_data_nxt_13__I_0_i2_4_lut.init = 16'h0aca;
    FD1S1A State_nxt_2__I_0_i1 (.D(n491[0]), .CK(n491[2]), .Q(State_nxt[0])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(67[2] 227[5])
    defparam State_nxt_2__I_0_i1.GSR = "DISABLED";
    LUT4 i2226_4_lut (.A(RXD_Data_reg[9]), .B(RXD_Data_reg[11]), .C(n7352), 
         .D(RXD_Data_reg[10]), .Z(n3000)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(109[6] 188[13])
    defparam i2226_4_lut.init = 16'h0200;
    FD1S3AX State_reg_i0 (.D(State_nxt[0]), .CK(clk_c), .Q(State_reg[0])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam State_reg_i0.GSR = "ENABLED";
    LUT4 i2_4_lut_adj_29 (.A(n7330), .B(RXD_Data_reg[11]), .C(n6848), 
         .D(n7351), .Z(n6775)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i2_4_lut_adj_29.init = 16'hfeff;
    LUT4 i15_4_lut (.A(RXD_Data_reg[2]), .B(n7), .C(RXD_Data_reg[15]), 
         .D(n8), .Z(c_data_nxt_13__N_515[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(190[10] 201[8])
    defparam i15_4_lut.init = 16'hca0a;
    LUT4 i3_4_lut (.A(RXD_Data_reg[9]), .B(RXD_Data_reg[10]), .C(n7330), 
         .D(n7352), .Z(n8)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(190[10] 201[8])
    defparam i3_4_lut.init = 16'h0004;
    LUT4 i5828_4_lut (.A(RXD_Data_reg[9]), .B(RXD_Data_reg[10]), .C(n6801), 
         .D(n7352), .Z(n6848)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(109[6] 188[13])
    defparam i5828_4_lut.init = 16'ha088;
    LUT4 i1_2_lut (.A(RXD_Data_reg[8]), .B(RXD_Data_reg[13]), .Z(n6801)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(109[6] 188[13])
    defparam i1_2_lut.init = 16'h2222;
    LUT4 i5817_2_lut (.A(RXD_Data_reg[13]), .B(\c_data[0] ), .Z(n6835)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5817_2_lut.init = 16'heeee;
    FD1S1A State_nxt_2__I_0_i3 (.D(n491[3]), .CK(n491[2]), .Q(State_nxt[2])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(67[2] 227[5])
    defparam State_nxt_2__I_0_i3.GSR = "DISABLED";
    LUT4 i2113_3_lut (.A(UART_out_CM_data_empty), .B(State_nxt_2__N_472[1]), 
         .C(State_reg[2]), .Z(n2884)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(80[3] 226[10])
    defparam i2113_3_lut.init = 16'hc5c5;
    LUT4 c_data_nxt_13__I_0_i1_4_lut (.A(RXD_Data_reg[0]), .B(RXD_Data_reg[8]), 
         .C(RXD_Data_reg[15]), .D(n7312), .Z(c_data_nxt_13__N_515[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(190[10] 201[8])
    defparam c_data_nxt_13__I_0_i1_4_lut.init = 16'hca0a;
    FD1S3AX State_reg_i2 (.D(State_nxt[2]), .CK(clk_c), .Q(State_reg[2])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam State_reg_i2.GSR = "ENABLED";
    FD1S3AX State_reg_i1 (.D(State_nxt[1]), .CK(clk_c), .Q(State_reg[1])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam State_reg_i1.GSR = "ENABLED";
    LUT4 n7223_bdd_4_lut (.A(n7223), .B(RXD_Data_reg[9]), .C(n7222), .D(RXD_Data_reg[11]), 
         .Z(n7311)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam n7223_bdd_4_lut.init = 16'hf088;
    LUT4 i3107_4_lut_4_lut (.A(RXD_Data_reg[11]), .B(n7352), .C(RXD_Data_reg[13]), 
         .D(n7339), .Z(n1660)) /* synthesis lut_function=(A+!(B (C (D))+!B (D))) */ ;
    defparam i3107_4_lut_4_lut.init = 16'haeff;
    FD1P3AX c_data_reg_i13 (.D(RXD_Data_reg[13]), .SP(clk_c_enable_45), 
            .CK(clk_c), .Q(\c_data[13] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_data_reg_i13.GSR = "ENABLED";
    FD1P3AX c_data_reg_i12 (.D(RXD_Data_reg[12]), .SP(clk_c_enable_45), 
            .CK(clk_c), .Q(\c_data[12] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_data_reg_i12.GSR = "ENABLED";
    FD1P3AX c_data_reg_i11 (.D(RXD_Data_reg[11]), .SP(clk_c_enable_45), 
            .CK(clk_c), .Q(\c_data[11] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_data_reg_i11.GSR = "ENABLED";
    FD1P3AX c_data_reg_i10 (.D(RXD_Data_reg[10]), .SP(clk_c_enable_45), 
            .CK(clk_c), .Q(\c_data[10] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_data_reg_i10.GSR = "ENABLED";
    FD1P3AX c_data_reg_i9 (.D(RXD_Data_reg[9]), .SP(clk_c_enable_45), .CK(clk_c), 
            .Q(\c_data[9] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_data_reg_i9.GSR = "ENABLED";
    FD1P3AX c_data_reg_i8 (.D(RXD_Data_reg[8]), .SP(clk_c_enable_45), .CK(clk_c), 
            .Q(\c_data[8] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_data_reg_i8.GSR = "ENABLED";
    FD1P3AX c_data_reg_i7 (.D(RXD_Data_reg[7]), .SP(clk_c_enable_45), .CK(clk_c), 
            .Q(\c_data[7] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_data_reg_i7.GSR = "ENABLED";
    FD1P3AX c_data_reg_i6 (.D(RXD_Data_reg[6]), .SP(clk_c_enable_45), .CK(clk_c), 
            .Q(\c_data[6] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_data_reg_i6.GSR = "ENABLED";
    FD1P3AX c_data_reg_i5 (.D(RXD_Data_reg[5]), .SP(clk_c_enable_45), .CK(clk_c), 
            .Q(\c_data[5] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_data_reg_i5.GSR = "ENABLED";
    FD1P3AX c_data_reg_i4 (.D(RXD_Data_reg[4]), .SP(clk_c_enable_45), .CK(clk_c), 
            .Q(\c_data[4] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_data_reg_i4.GSR = "ENABLED";
    FD1P3AX c_data_reg_i3 (.D(RXD_Data_reg[3]), .SP(clk_c_enable_45), .CK(clk_c), 
            .Q(\c_data[3] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_data_reg_i3.GSR = "ENABLED";
    FD1P3AX c_addr_reg_i3 (.D(n1660), .SP(clk_c_enable_148), .CK(clk_c), 
            .Q(c_addr[3])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_addr_reg_i3.GSR = "ENABLED";
    FD1P3AX RXD_Data_reg_i15 (.D(UART_out_CM_data[7]), .SP(clk_c_enable_54), 
            .CK(clk_c), .Q(RXD_Data_reg[15])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i15.GSR = "ENABLED";
    FD1P3AX RXD_Data_reg_i14 (.D(UART_out_CM_data[6]), .SP(clk_c_enable_54), 
            .CK(clk_c), .Q(RXD_Data_reg[14])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i14.GSR = "ENABLED";
    FD1P3AX RXD_Data_reg_i13 (.D(UART_out_CM_data[5]), .SP(clk_c_enable_54), 
            .CK(clk_c), .Q(RXD_Data_reg[13])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i13.GSR = "ENABLED";
    FD1P3AX RXD_Data_reg_i12 (.D(UART_out_CM_data[4]), .SP(clk_c_enable_54), 
            .CK(clk_c), .Q(RXD_Data_reg[12])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i12.GSR = "ENABLED";
    FD1P3AX RXD_Data_reg_i11 (.D(UART_out_CM_data[3]), .SP(clk_c_enable_54), 
            .CK(clk_c), .Q(RXD_Data_reg[11])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i11.GSR = "ENABLED";
    FD1P3AX RXD_Data_reg_i10 (.D(UART_out_CM_data[2]), .SP(clk_c_enable_54), 
            .CK(clk_c), .Q(RXD_Data_reg[10])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i10.GSR = "ENABLED";
    FD1P3AX RXD_Data_reg_i9 (.D(UART_out_CM_data[1]), .SP(clk_c_enable_54), 
            .CK(clk_c), .Q(RXD_Data_reg[9])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i9.GSR = "ENABLED";
    FD1P3AX RXD_Data_reg_i8 (.D(UART_out_CM_data[0]), .SP(clk_c_enable_54), 
            .CK(clk_c), .Q(RXD_Data_reg[8])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i8.GSR = "ENABLED";
    LUT4 i924_2_lut_rep_127 (.A(RXD_Data_reg[15]), .B(n7351), .Z(n7339)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(190[10] 201[8])
    defparam i924_2_lut_rep_127.init = 16'h8888;
    LUT4 i2_2_lut_3_lut (.A(RXD_Data_reg[15]), .B(n7351), .C(RXD_Data_reg[11]), 
         .Z(n6426)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(190[10] 201[8])
    defparam i2_2_lut_3_lut.init = 16'h8080;
    FD1P3IX RXD_Data_reg_i1 (.D(UART_out_CM_data[1]), .SP(clk_c_enable_157), 
            .CD(clk_c_enable_54), .CK(clk_c), .Q(RXD_Data_reg[1])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i1.GSR = "ENABLED";
    FD1P3IX RXD_Data_reg_i2 (.D(UART_out_CM_data[2]), .SP(clk_c_enable_157), 
            .CD(clk_c_enable_54), .CK(clk_c), .Q(RXD_Data_reg[2])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i2.GSR = "ENABLED";
    FD1P3IX RXD_Data_reg_i3 (.D(UART_out_CM_data[3]), .SP(clk_c_enable_157), 
            .CD(clk_c_enable_54), .CK(clk_c), .Q(RXD_Data_reg[3])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i3.GSR = "ENABLED";
    FD1P3IX RXD_Data_reg_i4 (.D(UART_out_CM_data[4]), .SP(clk_c_enable_157), 
            .CD(clk_c_enable_54), .CK(clk_c), .Q(RXD_Data_reg[4])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i4.GSR = "ENABLED";
    FD1P3IX RXD_Data_reg_i5 (.D(UART_out_CM_data[5]), .SP(clk_c_enable_157), 
            .CD(clk_c_enable_54), .CK(clk_c), .Q(RXD_Data_reg[5])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i5.GSR = "ENABLED";
    LUT4 i2_3_lut (.A(State_reg[2]), .B(State_reg[1]), .C(State_reg[0]), 
         .Z(n6390)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(80[3] 226[10])
    defparam i2_3_lut.init = 16'hfdfd;
    FD1P3IX RXD_Data_reg_i6 (.D(UART_out_CM_data[6]), .SP(clk_c_enable_157), 
            .CD(clk_c_enable_54), .CK(clk_c), .Q(RXD_Data_reg[6])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i6.GSR = "ENABLED";
    FD1P3IX RXD_Data_reg_i7 (.D(UART_out_CM_data[7]), .SP(clk_c_enable_157), 
            .CD(clk_c_enable_54), .CK(clk_c), .Q(RXD_Data_reg[7])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i7.GSR = "ENABLED";
    FD1P3IX c_addr_reg_i1 (.D(n1191[1]), .SP(clk_c_enable_148), .CD(n3058), 
            .CK(clk_c), .Q(c_addr[1])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_addr_reg_i1.GSR = "ENABLED";
    FD1P3IX c_addr_reg_i2 (.D(n2883), .SP(clk_c_enable_148), .CD(n3058), 
            .CK(clk_c), .Q(c_addr[2])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_addr_reg_i2.GSR = "ENABLED";
    FD1P3AX c_data_reg_i1 (.D(c_data_nxt_13__N_515[1]), .SP(clk_c_enable_129), 
            .CK(clk_c), .Q(\c_data[1] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_data_reg_i1.GSR = "ENABLED";
    FD1P3AX c_data_reg_i2 (.D(c_data_nxt_13__N_515[2]), .SP(clk_c_enable_141), 
            .CK(clk_c), .Q(\c_data[2] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_data_reg_i2.GSR = "ENABLED";
    FD1S1I State_nxt_2__I_0_i2 (.D(n2884), .CK(n491[2]), .CD(n3038), .Q(State_nxt[1])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(67[2] 227[5])
    defparam State_nxt_2__I_0_i2.GSR = "DISABLED";
    FD1P3AX c_data_reg_i0 (.D(c_data_nxt_13__N_515[0]), .SP(clk_c_enable_146), 
            .CK(clk_c), .Q(\c_data[0] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_data_reg_i0.GSR = "ENABLED";
    LUT4 i3088_2_lut (.A(State_reg[0]), .B(State_reg[1]), .Z(n491[2])) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(80[3] 226[10])
    defparam i3088_2_lut.init = 16'hbbbb;
    LUT4 i1_3_lut_rep_119_4_lut (.A(State_reg[0]), .B(n7373), .C(RXD_Data_reg[15]), 
         .D(RXD_Data_reg[14]), .Z(n7331)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(80[3] 226[10])
    defparam i1_3_lut_rep_119_4_lut.init = 16'h8088;
    FD1P3AX c_addr_reg_i0 (.D(n6426), .SP(clk_c_enable_148), .CK(clk_c), 
            .Q(c_addr[0])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam c_addr_reg_i0.GSR = "ENABLED";
    LUT4 RXD_Data_reg_14__I_0_4_lut (.A(RXD_Data_reg[14]), .B(n2874), .C(RXD_Data_reg[15]), 
         .D(n7351), .Z(Err_nxt_N_610)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(190[10] 201[8])
    defparam RXD_Data_reg_14__I_0_4_lut.init = 16'hcafa;
    LUT4 i2103_4_lut (.A(n6848), .B(RXD_Data_reg[8]), .C(RXD_Data_reg[11]), 
         .D(n7371), .Z(n2874)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(109[6] 188[13])
    defparam i2103_4_lut.init = 16'h0aca;
    LUT4 mux_202_Mux_3_i7_4_lut (.A(State_reg[0]), .B(c_addr_3__N_468), 
         .C(State_reg[2]), .D(State_reg[1]), .Z(n491[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B+((D)+!C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(80[3] 226[10])
    defparam mux_202_Mux_3_i7_4_lut.init = 16'h0ab0;
    LUT4 mux_201_Mux_6_i1_3_lut_rep_138 (.A(RXD_Data_reg[9]), .B(\c_data[1] ), 
         .C(RXD_Data_reg[8]), .Z(n7350)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(131[8] 144[15])
    defparam mux_201_Mux_6_i1_3_lut_rep_138.init = 16'hcaca;
    LUT4 n1_bdd_3_lut_6118_4_lut (.A(RXD_Data_reg[9]), .B(\c_data[1] ), 
         .C(RXD_Data_reg[8]), .D(RXD_Data_reg[12]), .Z(n7222)) /* synthesis lut_function=(A (B+!(C (D)))+!A !(((D)+!C)+!B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(131[8] 144[15])
    defparam n1_bdd_3_lut_6118_4_lut.init = 16'h8aea;
    LUT4 i5986_2_lut_3_lut_4_lut (.A(State_reg[1]), .B(UART_out_CM_data_empty), 
         .C(State_reg[0]), .D(State_reg[2]), .Z(clk_c_enable_54)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i5986_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i6054_2_lut_rep_124_3_lut (.A(State_reg[1]), .B(UART_out_CM_data_empty), 
         .C(State_reg[2]), .Z(clk_c_enable_157)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i6054_2_lut_rep_124_3_lut.init = 16'h0101;
    LUT4 i7_4_lut (.A(RXD_Data_reg[9]), .B(RXD_Data_reg[10]), .C(n6835), 
         .D(n7352), .Z(n6714)) /* synthesis lut_function=((B (C (D))+!B (C+!(D)))+!A) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(109[6] 188[13])
    defparam i7_4_lut.init = 16'hf577;
    LUT4 i20_4_lut_rep_139 (.A(RXD_Data_reg[11]), .B(RXD_Data_reg[14]), 
         .C(RXD_Data_reg[13]), .D(RXD_Data_reg[12]), .Z(n7351)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i20_4_lut_rep_139.init = 16'h1c18;
    LUT4 i2_2_lut_4_lut (.A(RXD_Data_reg[11]), .B(RXD_Data_reg[14]), .C(RXD_Data_reg[13]), 
         .D(RXD_Data_reg[12]), .Z(n7)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B !(C)))) */ ;
    defparam i2_2_lut_4_lut.init = 16'h1410;
    LUT4 i1_3_lut_rep_140 (.A(RXD_Data_reg[13]), .B(RXD_Data_reg[12]), .C(RXD_Data_reg[14]), 
         .Z(n7352)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;
    defparam i1_3_lut_rep_140.init = 16'h4848;
    LUT4 i948_2_lut_rep_118_3_lut_4_lut (.A(RXD_Data_reg[13]), .B(RXD_Data_reg[12]), 
         .C(RXD_Data_reg[14]), .D(RXD_Data_reg[11]), .Z(n7330)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i948_2_lut_rep_118_3_lut_4_lut.init = 16'h0008;
    LUT4 i3103_3_lut_3_lut_4_lut (.A(RXD_Data_reg[13]), .B(RXD_Data_reg[12]), 
         .C(RXD_Data_reg[14]), .D(RXD_Data_reg[11]), .Z(n1191[1])) /* synthesis lut_function=(A (B ((D)+!C))+!A (B (C+(D)))) */ ;
    defparam i3103_3_lut_3_lut_4_lut.init = 16'hcc48;
    FD1S3IX Err_reg_144 (.D(Err_nxt_N_610), .CK(clk_c), .CD(n7343), .Q(State_nxt_2__N_472[1])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam Err_reg_144.GSR = "ENABLED";
    LUT4 i2112_3_lut_4_lut (.A(RXD_Data_reg[13]), .B(RXD_Data_reg[12]), 
         .C(RXD_Data_reg[14]), .D(RXD_Data_reg[11]), .Z(n2883)) /* synthesis lut_function=(!(A (D)+!A (B (C+(D))+!B (D)))) */ ;
    defparam i2112_3_lut_4_lut.init = 16'h00bf;
    FD1P3IX RXD_Data_reg_i0 (.D(UART_out_CM_data[0]), .SP(clk_c_enable_157), 
            .CD(clk_c_enable_54), .CK(clk_c), .Q(RXD_Data_reg[0])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=34, LSE_LLINE=37, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(52[3] 64[6])
    defparam RXD_Data_reg_i0.GSR = "ENABLED";
    LUT4 i6010_3_lut (.A(n6755), .B(RXD_Data_reg[15]), .C(RXD_Data_reg[14]), 
         .Z(clk_c_enable_45)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(80[3] 226[10])
    defparam i6010_3_lut.init = 16'h0101;
    LUT4 i2_3_lut_adj_30 (.A(State_reg[1]), .B(State_reg[0]), .C(State_reg[2]), 
         .Z(n6755)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(80[3] 226[10])
    defparam i2_3_lut_adj_30.init = 16'hf7f7;
    LUT4 i6050_4_lut (.A(RXD_Data_reg[14]), .B(n6755), .C(n7351), .D(RXD_Data_reg[15]), 
         .Z(clk_c_enable_148)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+!(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(80[3] 226[10])
    defparam i6050_4_lut.init = 16'h3011;
    LUT4 n1_bdd_4_lut_6119 (.A(n7350), .B(n7352), .C(RXD_Data_reg[10]), 
         .D(RXD_Data_reg[13]), .Z(n7223)) /* synthesis lut_function=(!(A (B (D)+!B (C))+!A (B+(C)))) */ ;
    defparam n1_bdd_4_lut_6119.init = 16'h038b;
    LUT4 n6714_bdd_4_lut (.A(n6714), .B(n2666), .C(RXD_Data_reg[11]), 
         .D(n7328), .Z(n7312)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n6714_bdd_4_lut.init = 16'h00ca;
    PFUMX i6110 (.BLUT(n7237), .ALUT(n7236), .C0(State_reg[2]), .Z(n491[0]));
    LUT4 i2263_1_lut_2_lut (.A(State_reg[0]), .B(State_reg[1]), .Z(n3038)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(80[3] 226[10])
    defparam i2263_1_lut_2_lut.init = 16'hdddd;
    LUT4 i1490_2_lut_rep_159 (.A(RXD_Data_reg[9]), .B(RXD_Data_reg[12]), 
         .Z(n7371)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(109[6] 188[13])
    defparam i1490_2_lut_rep_159.init = 16'h6666;
    LUT4 i1905_2_lut_3_lut (.A(RXD_Data_reg[9]), .B(RXD_Data_reg[12]), .C(\c_data[0] ), 
         .Z(n2666)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(109[6] 188[13])
    defparam i1905_2_lut_3_lut.init = 16'hf6f6;
    LUT4 i1_2_lut_rep_161 (.A(State_reg[1]), .B(State_reg[2]), .Z(n7373)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(80[3] 226[10])
    defparam i1_2_lut_rep_161.init = 16'h2222;
    LUT4 i5990_2_lut_rep_131_3_lut (.A(State_reg[1]), .B(State_reg[2]), 
         .C(State_reg[0]), .Z(n7343)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_config_manager.v(80[3] 226[10])
    defparam i5990_2_lut_rep_131_3_lut.init = 16'hdfdf;
    LUT4 i2228_2_lut_rep_116 (.A(n3000), .B(n7351), .Z(n7328)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i2228_2_lut_rep_116.init = 16'hbbbb;
    LUT4 i5992_3_lut_4_lut (.A(n3000), .B(n7351), .C(RXD_Data_reg[15]), 
         .D(n7331), .Z(clk_c_enable_146)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (D)+!B !(C+!(D))))) */ ;
    defparam i5992_3_lut_4_lut.init = 16'h4f00;
    PFUMX i6146 (.BLUT(n7378), .ALUT(n7379), .C0(RXD_Data_reg[13]), .Z(n3001));
    
endmodule
//
// Verilog Description of module CM_Assign_Data
//

module CM_Assign_Data (Counter_X, \H_BackPorch[7] , GND_net, \H_BackPorch[4] , 
            clk_c, \c_data[0] , Data_VGA, c_ready_Assign, button_signal_DEBUG_VGA, 
            c_ready_nxt_N_904, n7325, button_signal_HS, button_signal_VS, 
            \c_data[1] , \H_BackPorch[3] , c_valid, n7361, \c_addr[1] , 
            \c_addr[0] , H_BackPorch_nxt_7__N_780, n7353, n2589, Counter_Y, 
            \H_BackPorch[5] , \V_BackPorch[1] , clk_c_enable_89, H_Left_Margin_nxt_8__N_957, 
            \H_BackPorch[6] , H_Count_Max_nxt_11__N_1021, n7358, \H_BackPorch_nxt_7__N_772[3] , 
            \c_data[11] , \c_data[10] , \c_data[9] , \c_data[8] , \c_data[7] , 
            \c_data[6] , \c_data[5] , \c_data[4] , \c_data[3] , \c_data[2] , 
            Counter_X_Valid, Counter_Y_Valid, n7362, \V_count_max[4] , 
            V_Count_Max_nxt_11__N_1037, \V_count_max[6] , V_Count_Max_nxt_11__N_1035, 
            \H_count_max[10] , H_Count_Max_nxt_11__N_1018, \H_left_margin[2] , 
            H_Left_Margin_nxt_8__N_963, \H_left_margin[6] , H_Left_Margin_nxt_8__N_958, 
            \V_right_margin[4] , V_Right_Margin_nxt_9__N_996, \V_right_margin[6] , 
            V_Right_Margin_nxt_9__N_994, \V_sync_pulse[1] , V_Sync_Pulse_nxt_7__N_1015, 
            \H_sync_pulse[5] , H_Sync_Pulse_nxt_7__N_1003, \H_right_margin[6] , 
            H_Right_Margin_nxt_10__N_984, \H_right_margin[7] , H_Right_Margin_nxt_10__N_983, 
            \V_left_margin[3] , V_Left_Margin_nxt_5__N_974, \V_left_margin[4] , 
            V_Left_Margin_nxt_5__N_973, n7326, \c_data[13] , \c_data[12] , 
            n7359, n7360, clk_VGA_enable_1, n7338) /* synthesis syn_module_defined=1 */ ;
    input [9:0]Counter_X;
    output \H_BackPorch[7] ;
    input GND_net;
    output \H_BackPorch[4] ;
    input clk_c;
    input \c_data[0] ;
    output [11:0]Data_VGA;
    output c_ready_Assign;
    input button_signal_DEBUG_VGA;
    input c_ready_nxt_N_904;
    input n7325;
    input button_signal_HS;
    input button_signal_VS;
    input \c_data[1] ;
    output \H_BackPorch[3] ;
    input c_valid;
    input n7361;
    input \c_addr[1] ;
    input \c_addr[0] ;
    output H_BackPorch_nxt_7__N_780;
    input n7353;
    output n2589;
    input [9:0]Counter_Y;
    output \H_BackPorch[5] ;
    output \V_BackPorch[1] ;
    input clk_c_enable_89;
    input H_Left_Margin_nxt_8__N_957;
    output \H_BackPorch[6] ;
    input H_Count_Max_nxt_11__N_1021;
    input n7358;
    input \H_BackPorch_nxt_7__N_772[3] ;
    input \c_data[11] ;
    input \c_data[10] ;
    input \c_data[9] ;
    input \c_data[8] ;
    input \c_data[7] ;
    input \c_data[6] ;
    input \c_data[5] ;
    input \c_data[4] ;
    input \c_data[3] ;
    input \c_data[2] ;
    input Counter_X_Valid;
    input Counter_Y_Valid;
    input n7362;
    input \V_count_max[4] ;
    output V_Count_Max_nxt_11__N_1037;
    input \V_count_max[6] ;
    output V_Count_Max_nxt_11__N_1035;
    input \H_count_max[10] ;
    output H_Count_Max_nxt_11__N_1018;
    input \H_left_margin[2] ;
    output H_Left_Margin_nxt_8__N_963;
    input \H_left_margin[6] ;
    output H_Left_Margin_nxt_8__N_958;
    input \V_right_margin[4] ;
    output V_Right_Margin_nxt_9__N_996;
    input \V_right_margin[6] ;
    output V_Right_Margin_nxt_9__N_994;
    input \V_sync_pulse[1] ;
    output V_Sync_Pulse_nxt_7__N_1015;
    input \H_sync_pulse[5] ;
    output H_Sync_Pulse_nxt_7__N_1003;
    input \H_right_margin[6] ;
    output H_Right_Margin_nxt_10__N_984;
    input \H_right_margin[7] ;
    output H_Right_Margin_nxt_10__N_983;
    input \V_left_margin[3] ;
    output V_Left_Margin_nxt_5__N_974;
    input \V_left_margin[4] ;
    output V_Left_Margin_nxt_5__N_973;
    input n7326;
    input \c_data[13] ;
    input \c_data[12] ;
    output n7359;
    input n7360;
    output clk_VGA_enable_1;
    input n7338;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    wire [11:0]Right_UP_reg;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(42[23:35])
    wire [11:0]Left_DOWN_reg;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(41[23:36])
    
    wire n1078;
    wire [11:0]n926;
    wire [11:0]n939;
    
    wire n1086;
    wire [11:0]n981;
    
    wire n6203, n6204;
    wire [11:0]Left_UP_reg;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(40[23:34])
    
    wire clk_c_enable_139, n7332, n1092;
    wire [11:0]n910;
    
    wire n6827, n523;
    wire [1:0]Current_Qudran_Config_reg;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(48[26:51])
    
    wire n521, n7382, n7381, clk_c_enable_123, clk_c_enable_112;
    wire [11:0]Right_DOWN_reg;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(43[23:37])
    
    wire clk_c_enable_101, clk_c_enable_90;
    wire [1:0]Current_Qudran_Config_nxt_1__N_755;
    
    wire clk_c_enable_79, n9, n6470, n12, n15, n7305, n15_adj_1114;
    wire [11:0]n1015;
    
    wire n6202, n8, n3701, n6881, Current_Qudran_Config_nxt_1__N_884, 
        n6201, n6200, n6199, n6198, n6197, n6460, n6458, n6196, 
        n7355, n7304, n7303, n6205;
    
    LUT4 mux_576_i11_3_lut (.A(Right_UP_reg[10]), .B(Left_DOWN_reg[10]), 
         .C(n1078), .Z(n926[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_576_i11_3_lut.init = 16'hcaca;
    PFUMX mux_583_i10 (.BLUT(n926[9]), .ALUT(n939[9]), .C0(n1086), .Z(n981[9]));
    CCU2D sub_807_add_2_8 (.A0(Counter_X[6]), .B0(\H_BackPorch[7] ), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_X[7]), .B1(\H_BackPorch[4] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n6203), .COUT(n6204));
    defparam sub_807_add_2_8.INIT0 = 16'h5999;
    defparam sub_807_add_2_8.INIT1 = 16'h5999;
    defparam sub_807_add_2_8.INJECT1_0 = "NO";
    defparam sub_807_add_2_8.INJECT1_1 = "NO";
    FD1P3AX Left_UP_reg_i0_i0 (.D(\c_data[0] ), .SP(clk_c_enable_139), .CK(clk_c), 
            .Q(Left_UP_reg[0])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_UP_reg_i0_i0.GSR = "ENABLED";
    LUT4 mux_572_i11_4_lut (.A(n7332), .B(Left_UP_reg[10]), .C(n1092), 
         .D(n981[10]), .Z(n910[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_572_i11_4_lut.init = 16'hcfca;
    LUT4 i1_4_lut_then_4_lut (.A(n6827), .B(n523), .C(Current_Qudran_Config_reg[0]), 
         .D(n521), .Z(n7382)) /* synthesis lut_function=(!(A+(B (C+(D))+!B (D)))) */ ;
    defparam i1_4_lut_then_4_lut.init = 16'h0015;
    LUT4 i1_4_lut_else_4_lut (.A(n6827), .B(n523), .C(Current_Qudran_Config_reg[0]), 
         .Z(n7381)) /* synthesis lut_function=(!(A+(B (C)))) */ ;
    defparam i1_4_lut_else_4_lut.init = 16'h1515;
    LUT4 mux_572_i10_4_lut (.A(n7332), .B(Left_UP_reg[9]), .C(n1092), 
         .D(n981[9]), .Z(n910[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_572_i10_4_lut.init = 16'hcfca;
    LUT4 mux_572_i9_4_lut (.A(n7332), .B(Left_UP_reg[8]), .C(n1092), .D(n981[8]), 
         .Z(n910[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_572_i9_4_lut.init = 16'hcfca;
    LUT4 mux_572_i7_4_lut (.A(n7332), .B(Left_UP_reg[6]), .C(n1092), .D(n981[6]), 
         .Z(n910[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_572_i7_4_lut.init = 16'hcfca;
    LUT4 mux_572_i6_4_lut (.A(n7332), .B(Left_UP_reg[5]), .C(n1092), .D(n981[5]), 
         .Z(n910[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_572_i6_4_lut.init = 16'hcfca;
    FD1P3AX Left_DOWN_reg_i0_i0 (.D(\c_data[0] ), .SP(clk_c_enable_123), 
            .CK(clk_c), .Q(Left_DOWN_reg[0])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_DOWN_reg_i0_i0.GSR = "ENABLED";
    FD1P3AX Right_UP_reg_i0_i0 (.D(\c_data[0] ), .SP(clk_c_enable_112), 
            .CK(clk_c), .Q(Right_UP_reg[0])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_UP_reg_i0_i0.GSR = "ENABLED";
    FD1P3AX Right_DOWN_reg_i0_i0 (.D(\c_data[0] ), .SP(clk_c_enable_101), 
            .CK(clk_c), .Q(Right_DOWN_reg[0])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_DOWN_reg_i0_i0.GSR = "ENABLED";
    FD1P3AX Current_Qudran_Config_reg_i0_i0 (.D(Current_Qudran_Config_nxt_1__N_755[0]), 
            .SP(clk_c_enable_90), .CK(clk_c), .Q(Current_Qudran_Config_reg[0])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Current_Qudran_Config_reg_i0_i0.GSR = "ENABLED";
    LUT4 mux_572_i3_4_lut (.A(n981[2]), .B(Left_UP_reg[2]), .C(n1092), 
         .D(n7332), .Z(n910[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_572_i3_4_lut.init = 16'hc0ca;
    FD1P3AX Data_VGA_reg_i0_i0 (.D(n910[0]), .SP(clk_c_enable_79), .CK(clk_c), 
            .Q(Data_VGA[0])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Data_VGA_reg_i0_i0.GSR = "ENABLED";
    LUT4 mux_572_i2_4_lut (.A(n981[1]), .B(Left_UP_reg[1]), .C(n1092), 
         .D(n7332), .Z(n910[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_572_i2_4_lut.init = 16'hc0ca;
    LUT4 i22_3_lut (.A(n9), .B(Left_UP_reg[11]), .C(n1092), .Z(n6470)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam i22_3_lut.init = 16'hcaca;
    LUT4 mux_576_i12_3_lut (.A(Right_UP_reg[11]), .B(Left_DOWN_reg[11]), 
         .C(n1078), .Z(n926[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_576_i12_3_lut.init = 16'hcaca;
    LUT4 i31_3_lut (.A(n12), .B(Left_UP_reg[7]), .C(n1092), .Z(n15)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam i31_3_lut.init = 16'hcaca;
    FD1S3JX c_ready_reg_118 (.D(c_ready_nxt_N_904), .CK(clk_c), .PD(button_signal_DEBUG_VGA), 
            .Q(c_ready_Assign)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam c_ready_reg_118.GSR = "ENABLED";
    LUT4 mux_576_i8_3_lut (.A(Right_UP_reg[7]), .B(Left_DOWN_reg[7]), .C(n1078), 
         .Z(n926[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_576_i8_3_lut.init = 16'hcaca;
    PFUMX mux_583_i9 (.BLUT(n926[8]), .ALUT(n939[8]), .C0(n1086), .Z(n981[8]));
    LUT4 i1338_4_lut (.A(n7325), .B(button_signal_HS), .C(button_signal_VS), 
         .D(\c_data[1] ), .Z(Current_Qudran_Config_nxt_1__N_755[1])) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(204[9] 211[7])
    defparam i1338_4_lut.init = 16'hcecc;
    LUT4 i36_3_lut (.A(n7305), .B(Left_UP_reg[4]), .C(n1092), .Z(n15_adj_1114)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam i36_3_lut.init = 16'hcaca;
    LUT4 mux_576_i5_3_lut (.A(Right_UP_reg[4]), .B(Left_DOWN_reg[4]), .C(n1078), 
         .Z(n926[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_576_i5_3_lut.init = 16'hcaca;
    LUT4 mux_593_i1_3_lut (.A(n981[0]), .B(Left_UP_reg[0]), .C(n1092), 
         .Z(n1015[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_593_i1_3_lut.init = 16'hcaca;
    LUT4 mux_576_i1_3_lut (.A(Right_UP_reg[0]), .B(Left_DOWN_reg[0]), .C(n1078), 
         .Z(n926[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_576_i1_3_lut.init = 16'hcaca;
    LUT4 mux_593_i4_3_lut (.A(n981[3]), .B(Left_UP_reg[3]), .C(n1092), 
         .Z(n1015[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_593_i4_3_lut.init = 16'hcaca;
    LUT4 mux_576_i4_3_lut (.A(Right_UP_reg[3]), .B(Left_DOWN_reg[3]), .C(n1078), 
         .Z(n926[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_576_i4_3_lut.init = 16'hcaca;
    CCU2D sub_807_add_2_6 (.A0(Counter_X[4]), .B0(\H_BackPorch[3] ), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_X[5]), .B1(\H_BackPorch[3] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n6202), .COUT(n6203));
    defparam sub_807_add_2_6.INIT0 = 16'h5999;
    defparam sub_807_add_2_6.INIT1 = 16'h5999;
    defparam sub_807_add_2_6.INJECT1_0 = "NO";
    defparam sub_807_add_2_6.INJECT1_1 = "NO";
    PFUMX mux_583_i7 (.BLUT(n926[6]), .ALUT(n939[6]), .C0(n1086), .Z(n981[6]));
    PFUMX mux_583_i6 (.BLUT(n926[5]), .ALUT(n939[5]), .C0(n1086), .Z(n981[5]));
    LUT4 i23_4_lut_4_lut_4_lut_4_lut (.A(button_signal_DEBUG_VGA), .B(clk_c_enable_79), 
         .C(n521), .D(Right_DOWN_reg[11]), .Z(n9)) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A !(D))) */ ;
    defparam i23_4_lut_4_lut_4_lut_4_lut.init = 16'h7f08;
    LUT4 mux_583_i1_4_lut_4_lut_4_lut_4_lut_4_lut (.A(button_signal_DEBUG_VGA), 
         .B(clk_c_enable_79), .C(Right_DOWN_reg[0]), .D(n523), .Z(n981[0])) /* synthesis lut_function=(!(A (B (D)+!B !(C))+!A !(C))) */ ;
    defparam mux_583_i1_4_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h70f8;
    PFUMX mux_583_i3 (.BLUT(n926[2]), .ALUT(n939[2]), .C0(n1086), .Z(n981[2]));
    LUT4 i3_4_lut_3_lut_4_lut (.A(button_signal_DEBUG_VGA), .B(clk_c_enable_79), 
         .C(n521), .D(n523), .Z(n8)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;
    defparam i3_4_lut_3_lut_4_lut.init = 16'h7000;
    LUT4 i3_4_lut (.A(Current_Qudran_Config_reg[1]), .B(n3701), .C(n521), 
         .D(n6827), .Z(n1078)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i3_4_lut.init = 16'h0020;
    LUT4 mux_583_i4_4_lut_4_lut_4_lut_4_lut_4_lut (.A(button_signal_DEBUG_VGA), 
         .B(clk_c_enable_79), .C(Right_DOWN_reg[3]), .D(n523), .Z(n981[3])) /* synthesis lut_function=(!(A (B (D)+!B !(C))+!A !(C))) */ ;
    defparam mux_583_i4_4_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h70f8;
    LUT4 i32_4_lut_4_lut_4_lut_4_lut (.A(button_signal_DEBUG_VGA), .B(clk_c_enable_79), 
         .C(n521), .D(Right_DOWN_reg[7]), .Z(n12)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam i32_4_lut_4_lut_4_lut_4_lut.init = 16'hf780;
    LUT4 i5972_2_lut_3_lut_4_lut_4_lut_4_lut_4_lut (.A(button_signal_DEBUG_VGA), 
         .B(clk_c_enable_79), .C(n1086), .D(n1092), .Z(n6881)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;
    defparam i5972_2_lut_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'hfff8;
    LUT4 i2930_2_lut (.A(n523), .B(Current_Qudran_Config_reg[0]), .Z(n3701)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2930_2_lut.init = 16'h8888;
    LUT4 i2_3_lut_4_lut (.A(c_valid), .B(n7361), .C(\c_addr[1] ), .D(\c_addr[0] ), 
         .Z(H_BackPorch_nxt_7__N_780)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h1000;
    LUT4 i1831_2_lut_3_lut_4_lut (.A(c_valid), .B(n7361), .C(Current_Qudran_Config_nxt_1__N_884), 
         .D(n7353), .Z(n2589)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1831_2_lut_3_lut_4_lut.init = 16'h0100;
    PFUMX mux_583_i2 (.BLUT(n926[1]), .ALUT(n939[1]), .C0(n1086), .Z(n981[1]));
    CCU2D sub_807_add_2_4 (.A0(Counter_X[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_X[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6201), .COUT(n6202));
    defparam sub_807_add_2_4.INIT0 = 16'h5aaa;
    defparam sub_807_add_2_4.INIT1 = 16'h5aaa;
    defparam sub_807_add_2_4.INJECT1_0 = "NO";
    defparam sub_807_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_807_add_2_2 (.A0(Counter_X[0]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_X[1]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n6201));
    defparam sub_807_add_2_2.INIT0 = 16'h5000;
    defparam sub_807_add_2_2.INIT1 = 16'h5aaa;
    defparam sub_807_add_2_2.INJECT1_0 = "NO";
    defparam sub_807_add_2_2.INJECT1_1 = "NO";
    CCU2D sub_809_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6200), .S0(n521));
    defparam sub_809_add_2_cout.INIT0 = 16'h0000;
    defparam sub_809_add_2_cout.INIT1 = 16'h0000;
    defparam sub_809_add_2_cout.INJECT1_0 = "NO";
    defparam sub_809_add_2_cout.INJECT1_1 = "NO";
    FD1P3AX Data_VGA_reg_i0_i11 (.D(n910[11]), .SP(clk_c_enable_79), .CK(clk_c), 
            .Q(Data_VGA[11])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Data_VGA_reg_i0_i11.GSR = "ENABLED";
    CCU2D sub_809_add_2_10 (.A0(Counter_Y[8]), .B0(\H_BackPorch[4] ), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_Y[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6199), .COUT(n6200));
    defparam sub_809_add_2_10.INIT0 = 16'h5999;
    defparam sub_809_add_2_10.INIT1 = 16'h5555;
    defparam sub_809_add_2_10.INJECT1_0 = "NO";
    defparam sub_809_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_809_add_2_8 (.A0(Counter_Y[6]), .B0(\H_BackPorch[3] ), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_Y[7]), .B1(\H_BackPorch[5] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n6198), .COUT(n6199));
    defparam sub_809_add_2_8.INIT0 = 16'h5999;
    defparam sub_809_add_2_8.INIT1 = 16'h5999;
    defparam sub_809_add_2_8.INJECT1_0 = "NO";
    defparam sub_809_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_809_add_2_6 (.A0(Counter_Y[4]), .B0(\H_BackPorch[7] ), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_Y[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6197), .COUT(n6198));
    defparam sub_809_add_2_6.INIT0 = 16'h5999;
    defparam sub_809_add_2_6.INIT1 = 16'h5aaa;
    defparam sub_809_add_2_6.INJECT1_0 = "NO";
    defparam sub_809_add_2_6.INJECT1_1 = "NO";
    FD1P3AX Data_VGA_reg_i0_i10 (.D(n910[10]), .SP(clk_c_enable_79), .CK(clk_c), 
            .Q(Data_VGA[10])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Data_VGA_reg_i0_i10.GSR = "ENABLED";
    FD1P3AX Data_VGA_reg_i0_i9 (.D(n910[9]), .SP(clk_c_enable_79), .CK(clk_c), 
            .Q(Data_VGA[9])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Data_VGA_reg_i0_i9.GSR = "ENABLED";
    FD1P3AX Data_VGA_reg_i0_i8 (.D(n910[8]), .SP(clk_c_enable_79), .CK(clk_c), 
            .Q(Data_VGA[8])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Data_VGA_reg_i0_i8.GSR = "ENABLED";
    FD1P3AX Data_VGA_reg_i0_i7 (.D(n6460), .SP(clk_c_enable_79), .CK(clk_c), 
            .Q(Data_VGA[7])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Data_VGA_reg_i0_i7.GSR = "ENABLED";
    FD1P3AX Data_VGA_reg_i0_i6 (.D(n910[6]), .SP(clk_c_enable_79), .CK(clk_c), 
            .Q(Data_VGA[6])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Data_VGA_reg_i0_i6.GSR = "ENABLED";
    FD1P3AX Data_VGA_reg_i0_i5 (.D(n910[5]), .SP(clk_c_enable_79), .CK(clk_c), 
            .Q(Data_VGA[5])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Data_VGA_reg_i0_i5.GSR = "ENABLED";
    FD1P3AX Data_VGA_reg_i0_i4 (.D(n6458), .SP(clk_c_enable_79), .CK(clk_c), 
            .Q(Data_VGA[4])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Data_VGA_reg_i0_i4.GSR = "ENABLED";
    FD1P3AX Data_VGA_reg_i0_i3 (.D(n910[3]), .SP(clk_c_enable_79), .CK(clk_c), 
            .Q(Data_VGA[3])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Data_VGA_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX Data_VGA_reg_i0_i2 (.D(n910[2]), .SP(clk_c_enable_79), .CK(clk_c), 
            .Q(Data_VGA[2])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Data_VGA_reg_i0_i2.GSR = "ENABLED";
    FD1P3AX Data_VGA_reg_i0_i1 (.D(n910[1]), .SP(clk_c_enable_79), .CK(clk_c), 
            .Q(Data_VGA[1])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Data_VGA_reg_i0_i1.GSR = "ENABLED";
    CCU2D sub_809_add_2_4 (.A0(Counter_Y[2]), .B0(\H_BackPorch[3] ), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_Y[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6196), .COUT(n6197));
    defparam sub_809_add_2_4.INIT0 = 16'h5999;
    defparam sub_809_add_2_4.INIT1 = 16'h5aaa;
    defparam sub_809_add_2_4.INJECT1_0 = "NO";
    defparam sub_809_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_809_add_2_2 (.A0(Counter_Y[0]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_Y[1]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n6196));
    defparam sub_809_add_2_2.INIT0 = 16'h5000;
    defparam sub_809_add_2_2.INIT1 = 16'h5aaa;
    defparam sub_809_add_2_2.INJECT1_0 = "NO";
    defparam sub_809_add_2_2.INJECT1_1 = "NO";
    FD1P3AY V_BackPorch_reg_i0_i1 (.D(H_Left_Margin_nxt_8__N_957), .SP(clk_c_enable_89), 
            .CK(clk_c), .Q(\V_BackPorch[1] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam V_BackPorch_reg_i0_i1.GSR = "ENABLED";
    FD1P3AX H_BackPorch_reg_i0_i7 (.D(\c_data[1] ), .SP(clk_c_enable_89), 
            .CK(clk_c), .Q(\H_BackPorch[7] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam H_BackPorch_reg_i0_i7.GSR = "ENABLED";
    FD1P3AX H_BackPorch_reg_i0_i6 (.D(n7355), .SP(clk_c_enable_89), .CK(clk_c), 
            .Q(\H_BackPorch[6] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam H_BackPorch_reg_i0_i6.GSR = "ENABLED";
    FD1P3AY H_BackPorch_reg_i0_i5 (.D(H_Count_Max_nxt_11__N_1021), .SP(clk_c_enable_89), 
            .CK(clk_c), .Q(\H_BackPorch[5] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam H_BackPorch_reg_i0_i5.GSR = "ENABLED";
    FD1P3AX H_BackPorch_reg_i0_i4 (.D(n7358), .SP(clk_c_enable_89), .CK(clk_c), 
            .Q(\H_BackPorch[4] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam H_BackPorch_reg_i0_i4.GSR = "ENABLED";
    FD1P3AY H_BackPorch_reg_i0_i3 (.D(\H_BackPorch_nxt_7__N_772[3] ), .SP(clk_c_enable_89), 
            .CK(clk_c), .Q(\H_BackPorch[3] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam H_BackPorch_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX Current_Qudran_Config_reg_i0_i1 (.D(Current_Qudran_Config_nxt_1__N_755[1]), 
            .SP(clk_c_enable_90), .CK(clk_c), .Q(Current_Qudran_Config_reg[1])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Current_Qudran_Config_reg_i0_i1.GSR = "ENABLED";
    FD1P3AX Right_DOWN_reg_i0_i11 (.D(\c_data[11] ), .SP(clk_c_enable_101), 
            .CK(clk_c), .Q(Right_DOWN_reg[11])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_DOWN_reg_i0_i11.GSR = "ENABLED";
    FD1P3AX Right_DOWN_reg_i0_i10 (.D(\c_data[10] ), .SP(clk_c_enable_101), 
            .CK(clk_c), .Q(Right_DOWN_reg[10])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_DOWN_reg_i0_i10.GSR = "ENABLED";
    FD1P3AX Right_DOWN_reg_i0_i9 (.D(\c_data[9] ), .SP(clk_c_enable_101), 
            .CK(clk_c), .Q(Right_DOWN_reg[9])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_DOWN_reg_i0_i9.GSR = "ENABLED";
    FD1P3AX Right_DOWN_reg_i0_i8 (.D(\c_data[8] ), .SP(clk_c_enable_101), 
            .CK(clk_c), .Q(Right_DOWN_reg[8])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_DOWN_reg_i0_i8.GSR = "ENABLED";
    FD1P3AX Right_DOWN_reg_i0_i7 (.D(\c_data[7] ), .SP(clk_c_enable_101), 
            .CK(clk_c), .Q(Right_DOWN_reg[7])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_DOWN_reg_i0_i7.GSR = "ENABLED";
    FD1P3AX Right_DOWN_reg_i0_i6 (.D(\c_data[6] ), .SP(clk_c_enable_101), 
            .CK(clk_c), .Q(Right_DOWN_reg[6])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_DOWN_reg_i0_i6.GSR = "ENABLED";
    FD1P3AX Right_DOWN_reg_i0_i5 (.D(\c_data[5] ), .SP(clk_c_enable_101), 
            .CK(clk_c), .Q(Right_DOWN_reg[5])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_DOWN_reg_i0_i5.GSR = "ENABLED";
    FD1P3AX Right_DOWN_reg_i0_i4 (.D(\c_data[4] ), .SP(clk_c_enable_101), 
            .CK(clk_c), .Q(Right_DOWN_reg[4])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_DOWN_reg_i0_i4.GSR = "ENABLED";
    FD1P3AX Right_DOWN_reg_i0_i3 (.D(\c_data[3] ), .SP(clk_c_enable_101), 
            .CK(clk_c), .Q(Right_DOWN_reg[3])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_DOWN_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX Right_DOWN_reg_i0_i2 (.D(\c_data[2] ), .SP(clk_c_enable_101), 
            .CK(clk_c), .Q(Right_DOWN_reg[2])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_DOWN_reg_i0_i2.GSR = "ENABLED";
    FD1P3AX Right_DOWN_reg_i0_i1 (.D(\c_data[1] ), .SP(clk_c_enable_101), 
            .CK(clk_c), .Q(Right_DOWN_reg[1])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_DOWN_reg_i0_i1.GSR = "ENABLED";
    FD1P3AX Right_UP_reg_i0_i11 (.D(\c_data[11] ), .SP(clk_c_enable_112), 
            .CK(clk_c), .Q(Right_UP_reg[11])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_UP_reg_i0_i11.GSR = "ENABLED";
    FD1P3AX Right_UP_reg_i0_i10 (.D(\c_data[10] ), .SP(clk_c_enable_112), 
            .CK(clk_c), .Q(Right_UP_reg[10])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_UP_reg_i0_i10.GSR = "ENABLED";
    FD1P3AX Right_UP_reg_i0_i9 (.D(\c_data[9] ), .SP(clk_c_enable_112), 
            .CK(clk_c), .Q(Right_UP_reg[9])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_UP_reg_i0_i9.GSR = "ENABLED";
    FD1P3AX Right_UP_reg_i0_i8 (.D(\c_data[8] ), .SP(clk_c_enable_112), 
            .CK(clk_c), .Q(Right_UP_reg[8])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_UP_reg_i0_i8.GSR = "ENABLED";
    FD1P3AX Right_UP_reg_i0_i7 (.D(\c_data[7] ), .SP(clk_c_enable_112), 
            .CK(clk_c), .Q(Right_UP_reg[7])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_UP_reg_i0_i7.GSR = "ENABLED";
    FD1P3AX Right_UP_reg_i0_i6 (.D(\c_data[6] ), .SP(clk_c_enable_112), 
            .CK(clk_c), .Q(Right_UP_reg[6])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_UP_reg_i0_i6.GSR = "ENABLED";
    FD1P3AX Right_UP_reg_i0_i5 (.D(\c_data[5] ), .SP(clk_c_enable_112), 
            .CK(clk_c), .Q(Right_UP_reg[5])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_UP_reg_i0_i5.GSR = "ENABLED";
    FD1P3AX Right_UP_reg_i0_i4 (.D(\c_data[4] ), .SP(clk_c_enable_112), 
            .CK(clk_c), .Q(Right_UP_reg[4])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_UP_reg_i0_i4.GSR = "ENABLED";
    FD1P3AX Right_UP_reg_i0_i3 (.D(\c_data[3] ), .SP(clk_c_enable_112), 
            .CK(clk_c), .Q(Right_UP_reg[3])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_UP_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX Right_UP_reg_i0_i2 (.D(\c_data[2] ), .SP(clk_c_enable_112), 
            .CK(clk_c), .Q(Right_UP_reg[2])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_UP_reg_i0_i2.GSR = "ENABLED";
    FD1P3AX Right_UP_reg_i0_i1 (.D(\c_data[1] ), .SP(clk_c_enable_112), 
            .CK(clk_c), .Q(Right_UP_reg[1])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Right_UP_reg_i0_i1.GSR = "ENABLED";
    FD1P3AX Left_DOWN_reg_i0_i11 (.D(\c_data[11] ), .SP(clk_c_enable_123), 
            .CK(clk_c), .Q(Left_DOWN_reg[11])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_DOWN_reg_i0_i11.GSR = "ENABLED";
    FD1P3AX Left_DOWN_reg_i0_i10 (.D(\c_data[10] ), .SP(clk_c_enable_123), 
            .CK(clk_c), .Q(Left_DOWN_reg[10])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_DOWN_reg_i0_i10.GSR = "ENABLED";
    FD1P3AX Left_DOWN_reg_i0_i9 (.D(\c_data[9] ), .SP(clk_c_enable_123), 
            .CK(clk_c), .Q(Left_DOWN_reg[9])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_DOWN_reg_i0_i9.GSR = "ENABLED";
    FD1P3AX Left_DOWN_reg_i0_i8 (.D(\c_data[8] ), .SP(clk_c_enable_123), 
            .CK(clk_c), .Q(Left_DOWN_reg[8])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_DOWN_reg_i0_i8.GSR = "ENABLED";
    FD1P3AX Left_DOWN_reg_i0_i7 (.D(\c_data[7] ), .SP(clk_c_enable_123), 
            .CK(clk_c), .Q(Left_DOWN_reg[7])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_DOWN_reg_i0_i7.GSR = "ENABLED";
    FD1P3AX Left_DOWN_reg_i0_i6 (.D(\c_data[6] ), .SP(clk_c_enable_123), 
            .CK(clk_c), .Q(Left_DOWN_reg[6])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_DOWN_reg_i0_i6.GSR = "ENABLED";
    FD1P3AX Left_DOWN_reg_i0_i5 (.D(\c_data[5] ), .SP(clk_c_enable_123), 
            .CK(clk_c), .Q(Left_DOWN_reg[5])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_DOWN_reg_i0_i5.GSR = "ENABLED";
    FD1P3AX Left_DOWN_reg_i0_i4 (.D(\c_data[4] ), .SP(clk_c_enable_123), 
            .CK(clk_c), .Q(Left_DOWN_reg[4])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_DOWN_reg_i0_i4.GSR = "ENABLED";
    FD1P3AX Left_DOWN_reg_i0_i3 (.D(\c_data[3] ), .SP(clk_c_enable_123), 
            .CK(clk_c), .Q(Left_DOWN_reg[3])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_DOWN_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX Left_DOWN_reg_i0_i2 (.D(\c_data[2] ), .SP(clk_c_enable_123), 
            .CK(clk_c), .Q(Left_DOWN_reg[2])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_DOWN_reg_i0_i2.GSR = "ENABLED";
    FD1P3AX Left_DOWN_reg_i0_i1 (.D(\c_data[1] ), .SP(clk_c_enable_123), 
            .CK(clk_c), .Q(Left_DOWN_reg[1])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_DOWN_reg_i0_i1.GSR = "ENABLED";
    FD1P3AX Left_UP_reg_i0_i11 (.D(\c_data[11] ), .SP(clk_c_enable_139), 
            .CK(clk_c), .Q(Left_UP_reg[11])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_UP_reg_i0_i11.GSR = "ENABLED";
    FD1P3AX Left_UP_reg_i0_i10 (.D(\c_data[10] ), .SP(clk_c_enable_139), 
            .CK(clk_c), .Q(Left_UP_reg[10])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_UP_reg_i0_i10.GSR = "ENABLED";
    FD1P3AX Left_UP_reg_i0_i9 (.D(\c_data[9] ), .SP(clk_c_enable_139), .CK(clk_c), 
            .Q(Left_UP_reg[9])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_UP_reg_i0_i9.GSR = "ENABLED";
    FD1P3AX Left_UP_reg_i0_i8 (.D(\c_data[8] ), .SP(clk_c_enable_139), .CK(clk_c), 
            .Q(Left_UP_reg[8])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_UP_reg_i0_i8.GSR = "ENABLED";
    FD1P3AX Left_UP_reg_i0_i7 (.D(\c_data[7] ), .SP(clk_c_enable_139), .CK(clk_c), 
            .Q(Left_UP_reg[7])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_UP_reg_i0_i7.GSR = "ENABLED";
    FD1P3AX Left_UP_reg_i0_i6 (.D(\c_data[6] ), .SP(clk_c_enable_139), .CK(clk_c), 
            .Q(Left_UP_reg[6])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_UP_reg_i0_i6.GSR = "ENABLED";
    FD1P3AX Left_UP_reg_i0_i5 (.D(\c_data[5] ), .SP(clk_c_enable_139), .CK(clk_c), 
            .Q(Left_UP_reg[5])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_UP_reg_i0_i5.GSR = "ENABLED";
    FD1P3AX Left_UP_reg_i0_i4 (.D(\c_data[4] ), .SP(clk_c_enable_139), .CK(clk_c), 
            .Q(Left_UP_reg[4])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_UP_reg_i0_i4.GSR = "ENABLED";
    FD1P3AX Left_UP_reg_i0_i3 (.D(\c_data[3] ), .SP(clk_c_enable_139), .CK(clk_c), 
            .Q(Left_UP_reg[3])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_UP_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX Left_UP_reg_i0_i2 (.D(\c_data[2] ), .SP(clk_c_enable_139), .CK(clk_c), 
            .Q(Left_UP_reg[2])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_UP_reg_i0_i2.GSR = "ENABLED";
    FD1P3AX Left_UP_reg_i0_i1 (.D(\c_data[1] ), .SP(clk_c_enable_139), .CK(clk_c), 
            .Q(Left_UP_reg[1])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=17, LSE_RCOL=35, LSE_LLINE=51, LSE_RLINE=70 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(74[8] 91[6])
    defparam Left_UP_reg_i0_i1.GSR = "ENABLED";
    PFUMX i6142 (.BLUT(n7304), .ALUT(n7303), .C0(n7332), .Z(n7305));
    LUT4 i3129_2_lut_3_lut_4_lut (.A(Counter_X_Valid), .B(Counter_Y_Valid), 
         .C(Right_DOWN_reg[5]), .D(button_signal_DEBUG_VGA), .Z(n939[5])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(234[7:41])
    defparam i3129_2_lut_3_lut_4_lut.init = 16'h70f0;
    LUT4 i5809_2_lut_3_lut (.A(Counter_X_Valid), .B(Counter_Y_Valid), .C(button_signal_DEBUG_VGA), 
         .Z(n6827)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(234[7:41])
    defparam i5809_2_lut_3_lut.init = 16'hf7f7;
    LUT4 i3130_2_lut_3_lut_4_lut (.A(Counter_X_Valid), .B(Counter_Y_Valid), 
         .C(Right_DOWN_reg[6]), .D(button_signal_DEBUG_VGA), .Z(n939[6])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(234[7:41])
    defparam i3130_2_lut_3_lut_4_lut.init = 16'h70f0;
    LUT4 i3133_2_lut_3_lut_4_lut (.A(Counter_X_Valid), .B(Counter_Y_Valid), 
         .C(Right_DOWN_reg[9]), .D(button_signal_DEBUG_VGA), .Z(n939[9])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(234[7:41])
    defparam i3133_2_lut_3_lut_4_lut.init = 16'h70f0;
    LUT4 i3126_2_lut_3_lut_4_lut (.A(Counter_X_Valid), .B(Counter_Y_Valid), 
         .C(Right_DOWN_reg[2]), .D(button_signal_DEBUG_VGA), .Z(n939[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(234[7:41])
    defparam i3126_2_lut_3_lut_4_lut.init = 16'h70f0;
    LUT4 n2_bdd_2_lut_3_lut_4_lut (.A(Counter_X_Valid), .B(Counter_Y_Valid), 
         .C(Right_DOWN_reg[4]), .D(button_signal_DEBUG_VGA), .Z(n7304)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(234[7:41])
    defparam n2_bdd_2_lut_3_lut_4_lut.init = 16'h70f0;
    LUT4 i3134_2_lut_3_lut_4_lut (.A(Counter_X_Valid), .B(Counter_Y_Valid), 
         .C(Right_DOWN_reg[10]), .D(button_signal_DEBUG_VGA), .Z(n939[10])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(234[7:41])
    defparam i3134_2_lut_3_lut_4_lut.init = 16'h70f0;
    LUT4 i5970_4_lut_rep_123_2_lut (.A(Counter_X_Valid), .B(Counter_Y_Valid), 
         .Z(clk_c_enable_79)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(234[7:41])
    defparam i5970_4_lut_rep_123_2_lut.init = 16'h8888;
    LUT4 i3125_2_lut_3_lut_4_lut (.A(Counter_X_Valid), .B(Counter_Y_Valid), 
         .C(Right_DOWN_reg[1]), .D(button_signal_DEBUG_VGA), .Z(n939[1])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(234[7:41])
    defparam i3125_2_lut_3_lut_4_lut.init = 16'h70f0;
    LUT4 i3132_2_lut_3_lut_4_lut (.A(Counter_X_Valid), .B(Counter_Y_Valid), 
         .C(Right_DOWN_reg[8]), .D(button_signal_DEBUG_VGA), .Z(n939[8])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(234[7:41])
    defparam i3132_2_lut_3_lut_4_lut.init = 16'h70f0;
    LUT4 i1_2_lut_rep_120_2_lut_2_lut_3_lut (.A(Counter_X_Valid), .B(Counter_Y_Valid), 
         .C(button_signal_DEBUG_VGA), .Z(n7332)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(234[7:41])
    defparam i1_2_lut_rep_120_2_lut_2_lut_3_lut.init = 16'h8080;
    LUT4 i4_4_lut (.A(clk_c_enable_79), .B(n8), .C(Current_Qudran_Config_reg[1]), 
         .D(Current_Qudran_Config_reg[0]), .Z(n1086)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut.init = 16'h8000;
    LUT4 n2_bdd_2_lut_6141 (.A(n521), .B(n523), .Z(n7303)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam n2_bdd_2_lut_6141.init = 16'hbbbb;
    LUT4 i3016_2_lut_rep_143 (.A(\c_data[0] ), .B(\c_data[1] ), .Z(n7355)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam i3016_2_lut_rep_143.init = 16'h2222;
    LUT4 V_count_max_4__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n7362), .D(\V_count_max[4] ), .Z(V_Count_Max_nxt_11__N_1037)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam V_count_max_4__I_0_3_lut_4_lut.init = 16'h2f20;
    LUT4 mux_576_i2_3_lut (.A(Right_UP_reg[1]), .B(Left_DOWN_reg[1]), .C(n1078), 
         .Z(n926[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_576_i2_3_lut.init = 16'hcaca;
    LUT4 V_count_max_6__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n7362), .D(\V_count_max[6] ), .Z(V_Count_Max_nxt_11__N_1035)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam V_count_max_6__I_0_3_lut_4_lut.init = 16'h2f20;
    LUT4 H_count_max_10__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n7362), .D(\H_count_max[10] ), .Z(H_Count_Max_nxt_11__N_1018)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_count_max_10__I_0_3_lut_4_lut.init = 16'h2f20;
    LUT4 H_left_margin_2__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n7362), .D(\H_left_margin[2] ), .Z(H_Left_Margin_nxt_8__N_963)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_left_margin_2__I_0_3_lut_4_lut.init = 16'h2f20;
    LUT4 H_left_margin_6__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n7362), .D(\H_left_margin[6] ), .Z(H_Left_Margin_nxt_8__N_958)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_left_margin_6__I_0_3_lut_4_lut.init = 16'h2f20;
    LUT4 V_right_margin_4__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n7362), .D(\V_right_margin[4] ), .Z(V_Right_Margin_nxt_9__N_996)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam V_right_margin_4__I_0_3_lut_4_lut.init = 16'h2f20;
    LUT4 V_right_margin_6__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n7362), .D(\V_right_margin[6] ), .Z(V_Right_Margin_nxt_9__N_994)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam V_right_margin_6__I_0_3_lut_4_lut.init = 16'h2f20;
    LUT4 V_sync_pulse_1__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n7362), .D(\V_sync_pulse[1] ), .Z(V_Sync_Pulse_nxt_7__N_1015)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam V_sync_pulse_1__I_0_3_lut_4_lut.init = 16'h2f20;
    CCU2D sub_807_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6205), .S0(n523));
    defparam sub_807_add_2_cout.INIT0 = 16'h0000;
    defparam sub_807_add_2_cout.INIT1 = 16'h0000;
    defparam sub_807_add_2_cout.INJECT1_0 = "NO";
    defparam sub_807_add_2_cout.INJECT1_1 = "NO";
    LUT4 H_sync_pulse_5__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n7362), .D(\H_sync_pulse[5] ), .Z(H_Sync_Pulse_nxt_7__N_1003)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_sync_pulse_5__I_0_3_lut_4_lut.init = 16'h2f20;
    LUT4 H_right_margin_6__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n7362), .D(\H_right_margin[6] ), .Z(H_Right_Margin_nxt_10__N_984)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_right_margin_6__I_0_3_lut_4_lut.init = 16'h2f20;
    LUT4 H_right_margin_7__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n7362), .D(\H_right_margin[7] ), .Z(H_Right_Margin_nxt_10__N_983)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_right_margin_7__I_0_3_lut_4_lut.init = 16'h2f20;
    LUT4 V_left_margin_3__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n7362), .D(\V_left_margin[3] ), .Z(V_Left_Margin_nxt_5__N_974)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam V_left_margin_3__I_0_3_lut_4_lut.init = 16'h2f20;
    LUT4 V_left_margin_4__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n7362), .D(\V_left_margin[4] ), .Z(V_Left_Margin_nxt_5__N_973)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam V_left_margin_4__I_0_3_lut_4_lut.init = 16'h2f20;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n7326), .B(button_signal_DEBUG_VGA), .C(\c_data[13] ), 
         .D(\c_data[12] ), .Z(clk_c_enable_112)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_3_lut_4_lut_adj_28 (.A(n7326), .B(button_signal_DEBUG_VGA), 
         .C(\c_data[13] ), .D(\c_data[12] ), .Z(clk_c_enable_101)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_28.init = 16'h1000;
    LUT4 mux_576_i3_3_lut (.A(Right_UP_reg[2]), .B(Left_DOWN_reg[2]), .C(n1078), 
         .Z(n926[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_576_i3_3_lut.init = 16'hcaca;
    LUT4 mux_576_i6_3_lut (.A(Right_UP_reg[5]), .B(Left_DOWN_reg[5]), .C(n1078), 
         .Z(n926[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_576_i6_3_lut.init = 16'hcaca;
    LUT4 i1169_4_lut (.A(n7325), .B(button_signal_VS), .C(button_signal_HS), 
         .D(\c_data[0] ), .Z(Current_Qudran_Config_nxt_1__N_755[0])) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(204[9] 211[7])
    defparam i1169_4_lut.init = 16'hcecc;
    LUT4 c_valid_I_0_1_lut_rep_147 (.A(c_valid), .Z(n7359)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(144[36:54])
    defparam c_valid_I_0_1_lut_rep_147.init = 16'h5555;
    LUT4 i1_3_lut_4_lut_4_lut (.A(c_valid), .B(n7360), .C(\c_addr[0] ), 
         .D(\c_addr[1] ), .Z(clk_VGA_enable_1)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(144[36:54])
    defparam i1_3_lut_4_lut_4_lut.init = 16'h0200;
    LUT4 Horizontal_Split_I_0_2_lut (.A(button_signal_HS), .B(button_signal_VS), 
         .Z(Current_Qudran_Config_nxt_1__N_884)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(199[7:40])
    defparam Horizontal_Split_I_0_2_lut.init = 16'heeee;
    LUT4 mux_576_i7_3_lut (.A(Right_UP_reg[6]), .B(Left_DOWN_reg[6]), .C(n1078), 
         .Z(n926[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_576_i7_3_lut.init = 16'hcaca;
    LUT4 i6065_2_lut_3_lut_4_lut (.A(n7326), .B(button_signal_DEBUG_VGA), 
         .C(\c_data[13] ), .D(\c_data[12] ), .Z(clk_c_enable_139)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i6065_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i6001_2_lut_3_lut_4_lut (.A(n7326), .B(button_signal_DEBUG_VGA), 
         .C(\c_data[13] ), .D(\c_data[12] ), .Z(clk_c_enable_123)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i6001_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 mux_576_i9_3_lut (.A(Right_UP_reg[8]), .B(Left_DOWN_reg[8]), .C(n1078), 
         .Z(n926[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_576_i9_3_lut.init = 16'hcaca;
    LUT4 i5999_3_lut_4_lut (.A(n7338), .B(n7353), .C(Current_Qudran_Config_nxt_1__N_884), 
         .D(button_signal_DEBUG_VGA), .Z(clk_c_enable_90)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (D)+!B ((D)+!C)))) */ ;
    defparam i5999_3_lut_4_lut.init = 16'h00f4;
    PFUMX mux_572_i4 (.BLUT(n926[3]), .ALUT(n1015[3]), .C0(n6881), .Z(n910[3]));
    CCU2D sub_807_add_2_10 (.A0(Counter_X[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Counter_X[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6204), .COUT(n6205));
    defparam sub_807_add_2_10.INIT0 = 16'h5aaa;
    defparam sub_807_add_2_10.INIT1 = 16'h5555;
    defparam sub_807_add_2_10.INJECT1_0 = "NO";
    defparam sub_807_add_2_10.INJECT1_1 = "NO";
    PFUMX mux_572_i1 (.BLUT(n926[0]), .ALUT(n1015[0]), .C0(n6881), .Z(n910[0]));
    LUT4 mux_576_i10_3_lut (.A(Right_UP_reg[9]), .B(Left_DOWN_reg[9]), .C(n1078), 
         .Z(n926[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(142[8] 281[6])
    defparam mux_576_i10_3_lut.init = 16'hcaca;
    PFUMX i34 (.BLUT(n926[4]), .ALUT(n15_adj_1114), .C0(n6881), .Z(n6458));
    PFUMX i30 (.BLUT(n926[7]), .ALUT(n15), .C0(n6881), .Z(n6460));
    PFUMX mux_572_i12 (.BLUT(n926[11]), .ALUT(n6470), .C0(n6881), .Z(n910[11]));
    PFUMX i6148 (.BLUT(n7381), .ALUT(n7382), .C0(Current_Qudran_Config_reg[1]), 
          .Z(n1092));
    PFUMX mux_583_i11 (.BLUT(n926[10]), .ALUT(n939[10]), .C0(n1086), .Z(n981[10]));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module UART
//

module UART (UART_valid_out, n7356, flag_reg, out_next_N_449, clk_UART, 
            clk_c, clk_c_enable_62, n7345, UART_out, valid_data, n374, 
            clk_c_enable_155, clk_c_enable_156, n375, n7334, rst_n_c, 
            \c_ready[1] , clk_VGA, clk_VGA_enable_1, \c_data[0] , \c_data[1] , 
            n7359, c_ready_next_N_344, \c_addr[1] , n7360, c_valid, 
            \c_addr[0] , n3880, n7353, n7361, n7325, n7, clk_c_enable_147, 
            clk_c_enable_32, in_c, clk_c_enable_153, n1553, \counter_23__N_178[9] , 
            n7320, n101, n127, clkout_N_203, n7319, n7329) /* synthesis syn_module_defined=1 */ ;
    output UART_valid_out;
    output n7356;
    output flag_reg;
    output out_next_N_449;
    input clk_UART;
    input clk_c;
    input clk_c_enable_62;
    output n7345;
    output [7:0]UART_out;
    output valid_data;
    output n374;
    input clk_c_enable_155;
    input clk_c_enable_156;
    output n375;
    output n7334;
    input rst_n_c;
    output \c_ready[1] ;
    input clk_VGA;
    input clk_VGA_enable_1;
    input \c_data[0] ;
    input \c_data[1] ;
    input n7359;
    input c_ready_next_N_344;
    input \c_addr[1] ;
    input n7360;
    input c_valid;
    input \c_addr[0] ;
    output n3880;
    output n7353;
    input n7361;
    output n7325;
    output n7;
    input clk_c_enable_147;
    input clk_c_enable_32;
    input in_c;
    input clk_c_enable_153;
    input n1553;
    input \counter_23__N_178[9] ;
    output n7320;
    input [23:0]n101;
    output [23:0]n127;
    output clkout_N_203;
    output n7319;
    output n7329;
    
    wire clk_UART /* synthesis is_clock=1, SET_AS_NETWORK=clk_UART */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(37[6:14])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    wire clk_VGA /* synthesis is_clock=1, SET_AS_NETWORK=clk_VGA */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(36[6:13])
    
    wire UART_valid_error, clk_UART_enable_3, clk_UART_enable_2, clk_c_enable_67, 
        stopbit, data;
    wire [0:0]n1755;
    
    LUT4 valid_out_I_0_2_lut_rep_144 (.A(UART_valid_out), .B(UART_valid_error), 
         .Z(n7356)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart.v(55[16:37])
    defparam valid_out_I_0_2_lut_rep_144.init = 16'heeee;
    LUT4 i2_3_lut_4_lut (.A(UART_valid_out), .B(UART_valid_error), .C(flag_reg), 
         .D(out_next_N_449), .Z(clk_UART_enable_3)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart.v(55[16:37])
    defparam i2_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_3_lut (.A(UART_valid_out), .B(UART_valid_error), .C(flag_reg), 
         .Z(clk_UART_enable_2)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart.v(55[16:37])
    defparam i1_2_lut_3_lut.init = 16'hefef;
    UART_state UART_STATE (.UART_valid_error(UART_valid_error), .clk_UART(clk_UART), 
            .clk_c(clk_c), .clk_c_enable_67(clk_c_enable_67), .clk_c_enable_62(clk_c_enable_62), 
            .n7345(n7345), .UART_out({UART_out}), .valid_data(valid_data), 
            .n374(n374), .stopbit(stopbit), .data(data), .n1755({n1755}), 
            .clk_c_enable_155(clk_c_enable_155), .clk_c_enable_156(clk_c_enable_156), 
            .n375(n375), .UART_valid_out(UART_valid_out), .n7334(n7334), 
            .rst_n_c(rst_n_c), .\c_ready[1] (\c_ready[1] )) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart.v(48[12] 52[63])
    UART_config UART_CONFIG (.stopbit(stopbit), .clk_VGA(clk_VGA), .clk_VGA_enable_1(clk_VGA_enable_1), 
            .\c_data[0] (\c_data[0] ), .n1755({n1755}), .\c_data[1] (\c_data[1] ), 
            .\c_ready[1] (\c_ready[1] ), .n7359(n7359), .c_ready_next_N_344(c_ready_next_N_344), 
            .\c_addr[1] (\c_addr[1] ), .n7360(n7360), .c_valid(c_valid), 
            .\c_addr[0] (\c_addr[0] ), .n3880(n3880), .n7353(n7353), .n7361(n7361), 
            .n7325(n7325)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart.v(43[13] 46[63])
    UART_sampler SAMPLER (.valid_data(valid_data), .clk_UART(clk_UART), 
            .clk_UART_enable_2(clk_UART_enable_2), .out_next_N_449(out_next_N_449), 
            .flag_reg(flag_reg), .data(data), .clk_UART_enable_3(clk_UART_enable_3), 
            .n7(n7), .clk_c(clk_c), .clk_c_enable_147(clk_c_enable_147), 
            .clk_c_enable_32(clk_c_enable_32), .in_c(in_c), .clk_c_enable_153(clk_c_enable_153), 
            .n1553(n1553), .\counter_23__N_178[9] (\counter_23__N_178[9] ), 
            .n7320(n7320), .n101({n101}), .n127({n127}), .clk_c_enable_67(clk_c_enable_67), 
            .clkout_N_203(clkout_N_203), .n7319(n7319), .n7329(n7329)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart.v(54[14] 55[71])
    
endmodule
//
// Verilog Description of module UART_state
//

module UART_state (UART_valid_error, clk_UART, clk_c, clk_c_enable_67, 
            clk_c_enable_62, n7345, UART_out, valid_data, n374, stopbit, 
            data, n1755, clk_c_enable_155, clk_c_enable_156, n375, 
            UART_valid_out, n7334, rst_n_c, \c_ready[1] ) /* synthesis syn_module_defined=1 */ ;
    output UART_valid_error;
    input clk_UART;
    input clk_c;
    input clk_c_enable_67;
    input clk_c_enable_62;
    output n7345;
    output [7:0]UART_out;
    input valid_data;
    output n374;
    input stopbit;
    input data;
    input [0:0]n1755;
    input clk_c_enable_155;
    input clk_c_enable_156;
    output n375;
    output UART_valid_out;
    output n7334;
    input rst_n_c;
    input \c_ready[1] ;
    
    wire clk_UART /* synthesis is_clock=1, SET_AS_NETWORK=clk_UART */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(37[6:14])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    
    wire clk_UART_enable_1, error_1__N_334, n1773;
    wire [7:0]n370;
    
    wire n2843, parity_check_reg, clk_UART_enable_4, parity_check_next_N_414;
    wire [1:0]wait_iteration_step_reg;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(64[33:56])
    wire [1:0]n13;
    
    wire n3083, n3081, n3079, n3077, n3075, n3073, n3071, n7342, 
        clk_UART_enable_5, n7195, n7194;
    wire [2:0]data_iteration_step_reg;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(61[33:56])
    wire [2:0]n22;
    wire [1:0]stop_iteration_step_reg;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(63[33:56])
    wire [1:0]n17;
    
    wire n6572, valid_error_next_N_409, n415, n6604, n1943, n1945, 
        n3039, n7349, n6370, n7206, n7207, n3949, n7348, n356, 
        n4, n7313;
    
    FD1P3DX valid_error_reg_82 (.D(n1773), .SP(clk_UART_enable_1), .CK(clk_UART), 
            .CD(error_1__N_334), .Q(UART_valid_error)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=12, LSE_RCOL=63, LSE_LLINE=48, LSE_RLINE=52 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam valid_error_reg_82.GSR = "DISABLED";
    FD1P3BX state_reg_FSM__i1 (.D(n2843), .SP(clk_c_enable_67), .CK(clk_c), 
            .PD(error_1__N_334), .Q(n370[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam state_reg_FSM__i1.GSR = "DISABLED";
    FD1P3DX parity_check_reg_85 (.D(parity_check_next_N_414), .SP(clk_UART_enable_4), 
            .CK(clk_UART), .CD(error_1__N_334), .Q(parity_check_reg)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=12, LSE_RCOL=63, LSE_LLINE=48, LSE_RLINE=52 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam parity_check_reg_85.GSR = "DISABLED";
    FD1P3DX wait_iteration_step_reg_963__i0 (.D(n13[0]), .SP(clk_c_enable_62), 
            .CK(clk_c), .CD(error_1__N_334), .Q(wait_iteration_step_reg[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam wait_iteration_step_reg_963__i0.GSR = "DISABLED";
    LUT4 i3208_2_lut_3_lut_4_lut_4_lut (.A(n7345), .B(n370[2]), .C(UART_out[6]), 
         .D(clk_c_enable_67), .Z(n3083)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (C)) */ ;
    defparam i3208_2_lut_3_lut_4_lut_4_lut.init = 16'hd0f0;
    LUT4 i3124_2_lut_3_lut_4_lut_4_lut (.A(n7345), .B(n370[2]), .C(UART_out[5]), 
         .D(clk_c_enable_67), .Z(n3081)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (C)) */ ;
    defparam i3124_2_lut_3_lut_4_lut_4_lut.init = 16'hd0f0;
    LUT4 i3123_2_lut_3_lut_4_lut_4_lut (.A(n7345), .B(n370[2]), .C(UART_out[4]), 
         .D(clk_c_enable_67), .Z(n3079)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (C)) */ ;
    defparam i3123_2_lut_3_lut_4_lut_4_lut.init = 16'hd0f0;
    LUT4 i3122_2_lut_3_lut_4_lut_4_lut (.A(n7345), .B(n370[2]), .C(UART_out[3]), 
         .D(clk_c_enable_67), .Z(n3077)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (C)) */ ;
    defparam i3122_2_lut_3_lut_4_lut_4_lut.init = 16'hd0f0;
    LUT4 i3121_2_lut_3_lut_4_lut_4_lut (.A(n7345), .B(n370[2]), .C(UART_out[2]), 
         .D(clk_c_enable_67), .Z(n3075)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (C)) */ ;
    defparam i3121_2_lut_3_lut_4_lut_4_lut.init = 16'hd0f0;
    LUT4 i3120_2_lut_3_lut_4_lut_4_lut (.A(n7345), .B(n370[2]), .C(UART_out[1]), 
         .D(clk_c_enable_67), .Z(n3073)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (C)) */ ;
    defparam i3120_2_lut_3_lut_4_lut_4_lut.init = 16'hd0f0;
    LUT4 i3119_2_lut_3_lut_4_lut_4_lut (.A(n7345), .B(n370[2]), .C(UART_out[0]), 
         .D(clk_c_enable_67), .Z(n3071)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (C)) */ ;
    defparam i3119_2_lut_3_lut_4_lut_4_lut.init = 16'hd0f0;
    LUT4 i5965_4_lut (.A(valid_data), .B(n370[0]), .C(n7342), .D(n374), 
         .Z(clk_UART_enable_5)) /* synthesis lut_function=((B (C+!(D))+!B (C (D)))+!A) */ ;
    defparam i5965_4_lut.init = 16'hf5dd;
    LUT4 stopbit_bdd_4_lut_6100 (.A(stopbit), .B(data), .C(parity_check_reg), 
         .D(n1755[0]), .Z(n7195)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D))+!B !(C+!(D)))) */ ;
    defparam stopbit_bdd_4_lut_6100.init = 16'hc388;
    LUT4 stopbit_bdd_2_lut_6099 (.A(stopbit), .B(data), .Z(n7194)) /* synthesis lut_function=(A (B)) */ ;
    defparam stopbit_bdd_2_lut_6099.init = 16'h8888;
    FD1P3DX out_reg__i7 (.D(n3083), .SP(clk_c_enable_155), .CK(clk_c), 
            .CD(error_1__N_334), .Q(UART_out[7])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=12, LSE_RCOL=63, LSE_LLINE=48, LSE_RLINE=52 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam out_reg__i7.GSR = "DISABLED";
    FD1P3DX out_reg__i6 (.D(n3081), .SP(clk_c_enable_155), .CK(clk_c), 
            .CD(error_1__N_334), .Q(UART_out[6])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=12, LSE_RCOL=63, LSE_LLINE=48, LSE_RLINE=52 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam out_reg__i6.GSR = "DISABLED";
    FD1P3DX out_reg__i5 (.D(n3079), .SP(clk_c_enable_155), .CK(clk_c), 
            .CD(error_1__N_334), .Q(UART_out[5])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=12, LSE_RCOL=63, LSE_LLINE=48, LSE_RLINE=52 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam out_reg__i5.GSR = "DISABLED";
    FD1P3DX out_reg__i4 (.D(n3077), .SP(clk_c_enable_155), .CK(clk_c), 
            .CD(error_1__N_334), .Q(UART_out[4])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=12, LSE_RCOL=63, LSE_LLINE=48, LSE_RLINE=52 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam out_reg__i4.GSR = "DISABLED";
    FD1P3DX data_iteration_step_reg_974__i0 (.D(n22[0]), .SP(clk_c_enable_155), 
            .CK(clk_c), .CD(error_1__N_334), .Q(data_iteration_step_reg[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(119[35:62])
    defparam data_iteration_step_reg_974__i0.GSR = "DISABLED";
    FD1P3DX stop_iteration_step_reg_973__i0 (.D(n17[0]), .SP(clk_c_enable_156), 
            .CK(clk_c), .CD(error_1__N_334), .Q(stop_iteration_step_reg[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(125[35:62])
    defparam stop_iteration_step_reg_973__i0.GSR = "DISABLED";
    FD1P3DX out_reg__i3 (.D(n3075), .SP(clk_c_enable_155), .CK(clk_c), 
            .CD(error_1__N_334), .Q(UART_out[3])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=12, LSE_RCOL=63, LSE_LLINE=48, LSE_RLINE=52 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam out_reg__i3.GSR = "DISABLED";
    FD1P3DX out_reg__i2 (.D(n3073), .SP(clk_c_enable_155), .CK(clk_c), 
            .CD(error_1__N_334), .Q(UART_out[2])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=12, LSE_RCOL=63, LSE_LLINE=48, LSE_RLINE=52 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam out_reg__i2.GSR = "DISABLED";
    LUT4 i3029_2_lut (.A(data_iteration_step_reg[0]), .B(n370[2]), .Z(n22[0])) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(119[35:62])
    defparam i3029_2_lut.init = 16'h4444;
    FD1P3DX wait_iteration_step_reg_963__i1 (.D(n6572), .SP(clk_c_enable_62), 
            .CK(clk_c), .CD(error_1__N_334), .Q(wait_iteration_step_reg[1]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam wait_iteration_step_reg_963__i1.GSR = "DISABLED";
    FD1P3DX state_reg_FSM__i5 (.D(n415), .SP(clk_c_enable_67), .CK(clk_c), 
            .CD(error_1__N_334), .Q(valid_error_next_N_409));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam state_reg_FSM__i5.GSR = "DISABLED";
    FD1P3DX out_reg__i1 (.D(n3071), .SP(clk_c_enable_155), .CK(clk_c), 
            .CD(error_1__N_334), .Q(UART_out[1])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=12, LSE_RCOL=63, LSE_LLINE=48, LSE_RLINE=52 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam out_reg__i1.GSR = "DISABLED";
    FD1P3DX state_reg_FSM__i4 (.D(n6604), .SP(clk_c_enable_67), .CK(clk_c), 
            .CD(error_1__N_334), .Q(n374));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam state_reg_FSM__i4.GSR = "DISABLED";
    FD1P3DX state_reg_FSM__i3 (.D(n1943), .SP(clk_c_enable_67), .CK(clk_c), 
            .CD(error_1__N_334), .Q(n375));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam state_reg_FSM__i3.GSR = "DISABLED";
    FD1P3DX state_reg_FSM__i2 (.D(n1945), .SP(clk_c_enable_67), .CK(clk_c), 
            .CD(error_1__N_334), .Q(n370[2]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam state_reg_FSM__i2.GSR = "DISABLED";
    LUT4 i3048_2_lut (.A(stop_iteration_step_reg[0]), .B(n375), .Z(n17[0])) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(125[35:62])
    defparam i3048_2_lut.init = 16'h4444;
    FD1P3DX out_reg__i0 (.D(n3039), .SP(clk_c_enable_155), .CK(clk_c), 
            .CD(error_1__N_334), .Q(UART_out[0])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=12, LSE_RCOL=63, LSE_LLINE=48, LSE_RLINE=52 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam out_reg__i0.GSR = "DISABLED";
    LUT4 i2_3_lut_4_lut (.A(n7349), .B(data), .C(n374), .D(valid_data), 
         .Z(n6370)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h8000;
    LUT4 LEDS_c_bdd_2_lut_6104 (.A(n7206), .B(n375), .Z(n7207)) /* synthesis lut_function=(A (B)) */ ;
    defparam LEDS_c_bdd_2_lut_6104.init = 16'h8888;
    LUT4 i3172_3_lut (.A(data_iteration_step_reg[1]), .B(n370[2]), .C(data_iteration_step_reg[0]), 
         .Z(n22[1])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(119[35:62])
    defparam i3172_3_lut.init = 16'h4848;
    LUT4 i3173_4_lut (.A(data_iteration_step_reg[2]), .B(n370[2]), .C(data_iteration_step_reg[1]), 
         .D(data_iteration_step_reg[0]), .Z(n22[2])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(119[35:62])
    defparam i3173_4_lut.init = 16'h4888;
    LUT4 i3174_3_lut (.A(stop_iteration_step_reg[1]), .B(n375), .C(stop_iteration_step_reg[0]), 
         .Z(n17[1])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(125[35:62])
    defparam i3174_3_lut.init = 16'h4848;
    FD1P3DX valid_out_reg_83 (.D(n6370), .SP(clk_UART_enable_5), .CK(clk_UART), 
            .CD(error_1__N_334), .Q(UART_valid_out)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=12, LSE_RCOL=63, LSE_LLINE=48, LSE_RLINE=52 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam valid_out_reg_83.GSR = "DISABLED";
    LUT4 i325_2_lut_rep_133 (.A(data), .B(n370[0]), .Z(n7345)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam i325_2_lut_rep_133.init = 16'h4444;
    LUT4 i1189_3_lut_4_lut (.A(data), .B(n370[0]), .C(n3949), .D(n370[2]), 
         .Z(n1945)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B+!(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam i1189_3_lut_4_lut.init = 16'h4f44;
    LUT4 i1_2_lut_3_lut_4_lut (.A(data), .B(n370[0]), .C(valid_data), 
         .D(n370[2]), .Z(clk_UART_enable_4)) /* synthesis lut_function=(A (C (D))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf040;
    LUT4 i3001_2_lut_3_lut_4_lut_4_lut_1_lut (.A(data), .Z(n3039)) /* synthesis lut_function=(A) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam i3001_2_lut_3_lut_4_lut_4_lut_1_lut.init = 16'haaaa;
    LUT4 i1_2_lut_rep_122_3_lut (.A(data), .B(n370[0]), .C(n370[2]), .Z(n7334)) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam i1_2_lut_rep_122_3_lut.init = 16'hf4f4;
    LUT4 i142_3_lut_4_lut_4_lut (.A(data), .B(parity_check_reg), .C(n7348), 
         .D(n1755[0]), .Z(n356)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B+(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(128[12:36])
    defparam i142_3_lut_4_lut_4_lut.init = 16'h5655;
    LUT4 i2960_2_lut_3_lut (.A(data), .B(parity_check_reg), .C(n370[2]), 
         .Z(parity_check_next_N_414)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(128[12:36])
    defparam i2960_2_lut_3_lut.init = 16'h6060;
    LUT4 equal_20_i3_2_lut_rep_136 (.A(stop_iteration_step_reg[0]), .B(stop_iteration_step_reg[1]), 
         .Z(n7348)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(126[10:38])
    defparam equal_20_i3_2_lut_rep_136.init = 16'heeee;
    LUT4 n375_bdd_4_lut (.A(stop_iteration_step_reg[1]), .B(stopbit), .C(stop_iteration_step_reg[0]), 
         .D(n1755[0]), .Z(n7206)) /* synthesis lut_function=(A+!(B+!(C+!(D)))) */ ;
    defparam n375_bdd_4_lut.init = 16'hbabb;
    LUT4 equal_22_i3_2_lut_rep_137 (.A(wait_iteration_step_reg[0]), .B(wait_iteration_step_reg[1]), 
         .Z(n7349)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(164[13:41])
    defparam equal_22_i3_2_lut_rep_137.init = 16'heeee;
    LUT4 i5135_3_lut_4_lut_2_lut (.A(wait_iteration_step_reg[0]), .B(n374), 
         .Z(n13[0])) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(164[13:41])
    defparam i5135_3_lut_4_lut_2_lut.init = 16'h4444;
    LUT4 i3095_2_lut_rep_130_3_lut (.A(wait_iteration_step_reg[0]), .B(wait_iteration_step_reg[1]), 
         .C(data), .Z(n7342)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(164[13:41])
    defparam i3095_2_lut_rep_130_3_lut.init = 16'he0e0;
    LUT4 i1_2_lut_3_lut (.A(wait_iteration_step_reg[0]), .B(wait_iteration_step_reg[1]), 
         .C(n374), .Z(n4)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(164[13:41])
    defparam i1_2_lut_3_lut.init = 16'he0e0;
    LUT4 i2_4_lut_3_lut (.A(wait_iteration_step_reg[0]), .B(wait_iteration_step_reg[1]), 
         .C(n374), .Z(n6572)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(164[13:41])
    defparam i2_4_lut_3_lut.init = 16'h6060;
    FD1P3DX data_iteration_step_reg_974__i1 (.D(n22[1]), .SP(clk_c_enable_155), 
            .CK(clk_c), .CD(error_1__N_334), .Q(data_iteration_step_reg[1]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(119[35:62])
    defparam data_iteration_step_reg_974__i1.GSR = "DISABLED";
    FD1P3DX data_iteration_step_reg_974__i2 (.D(n22[2]), .SP(clk_c_enable_155), 
            .CK(clk_c), .CD(error_1__N_334), .Q(data_iteration_step_reg[2]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(119[35:62])
    defparam data_iteration_step_reg_974__i2.GSR = "DISABLED";
    FD1P3DX stop_iteration_step_reg_973__i1 (.D(n17[1]), .SP(clk_c_enable_156), 
            .CK(clk_c), .CD(error_1__N_334), .Q(stop_iteration_step_reg[1]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(125[35:62])
    defparam stop_iteration_step_reg_973__i1.GSR = "DISABLED";
    LUT4 i2_3_lut (.A(valid_error_next_N_409), .B(valid_data), .C(n370[0]), 
         .Z(clk_UART_enable_1)) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam i2_3_lut.init = 16'hfbfb;
    LUT4 i5968_2_lut (.A(rst_n_c), .B(\c_ready[1] ), .Z(error_1__N_334)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(67[5:11])
    defparam i5968_2_lut.init = 16'h7777;
    LUT4 i2980_2_lut (.A(valid_error_next_N_409), .B(valid_data), .Z(n1773)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(77[11] 87[5])
    defparam i2980_2_lut.init = 16'h8888;
    LUT4 i1_4_lut (.A(valid_error_next_N_409), .B(data), .C(n370[0]), 
         .D(n4), .Z(n2843)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam i1_4_lut.init = 16'heeea;
    LUT4 reduce_or_174_i1_4_lut (.A(data), .B(n356), .C(n374), .D(n375), 
         .Z(n415)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam reduce_or_174_i1_4_lut.init = 16'hdc50;
    LUT4 n7195_bdd_4_lut (.A(n7195), .B(n7194), .C(stop_iteration_step_reg[0]), 
         .D(stop_iteration_step_reg[1]), .Z(n7313)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n7195_bdd_4_lut.init = 16'h00ca;
    LUT4 i1_4_lut_adj_26 (.A(data), .B(n374), .C(n7207), .D(n7349), 
         .Z(n6604)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam i1_4_lut_adj_26.init = 16'ha0a8;
    LUT4 i1187_4_lut (.A(n375), .B(n3949), .C(n7313), .D(n370[2]), .Z(n1943)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_state.v(102[4] 179[11])
    defparam i1187_4_lut.init = 16'heca0;
    LUT4 i2_3_lut_adj_27 (.A(data_iteration_step_reg[1]), .B(data_iteration_step_reg[2]), 
         .C(data_iteration_step_reg[0]), .Z(n3949)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_27.init = 16'h8080;
    
endmodule
//
// Verilog Description of module UART_config
//

module UART_config (stopbit, clk_VGA, clk_VGA_enable_1, \c_data[0] , 
            n1755, \c_data[1] , \c_ready[1] , n7359, c_ready_next_N_344, 
            \c_addr[1] , n7360, c_valid, \c_addr[0] , n3880, n7353, 
            n7361, n7325) /* synthesis syn_module_defined=1 */ ;
    output stopbit;
    input clk_VGA;
    input clk_VGA_enable_1;
    input \c_data[0] ;
    output [0:0]n1755;
    input \c_data[1] ;
    output \c_ready[1] ;
    input n7359;
    input c_ready_next_N_344;
    input \c_addr[1] ;
    input n7360;
    input c_valid;
    input \c_addr[0] ;
    output n3880;
    output n7353;
    input n7361;
    output n7325;
    
    wire clk_VGA /* synthesis is_clock=1, SET_AS_NETWORK=clk_VGA */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(36[6:13])
    
    wire clk_VGA_enable_2;
    
    FD1P3AX stop_bit_reg_20 (.D(\c_data[0] ), .SP(clk_VGA_enable_1), .CK(clk_VGA), 
            .Q(stopbit)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=13, LSE_RCOL=63, LSE_LLINE=43, LSE_RLINE=46 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_config.v(41[11] 45[5])
    defparam stop_bit_reg_20.GSR = "ENABLED";
    FD1P3AX parity_bit_reg_i0_i0 (.D(\c_data[1] ), .SP(clk_VGA_enable_2), 
            .CK(clk_VGA), .Q(n1755[0])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=13, LSE_RCOL=63, LSE_LLINE=43, LSE_RLINE=46 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_config.v(41[11] 45[5])
    defparam parity_bit_reg_i0_i0.GSR = "ENABLED";
    FD1S3JX c_ready_reg_22 (.D(c_ready_next_N_344), .CK(clk_VGA), .PD(n7359), 
            .Q(\c_ready[1] )) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=13, LSE_RCOL=63, LSE_LLINE=43, LSE_RLINE=46 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_config.v(41[11] 45[5])
    defparam c_ready_reg_22.GSR = "ENABLED";
    LUT4 i388_2_lut_3_lut_4_lut (.A(\c_addr[1] ), .B(n7360), .C(c_valid), 
         .D(\c_addr[0] ), .Z(clk_VGA_enable_2)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_config.v(55[6:32])
    defparam i388_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i6059_2_lut_3_lut_4_lut (.A(\c_addr[1] ), .B(n7360), .C(c_valid), 
         .D(\c_addr[0] ), .Z(n3880)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_config.v(55[6:32])
    defparam i6059_2_lut_3_lut_4_lut.init = 16'h0f1f;
    LUT4 i1_2_lut_rep_141 (.A(\c_addr[1] ), .B(\c_addr[0] ), .Z(n7353)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_config.v(41[11] 45[5])
    defparam i1_2_lut_rep_141.init = 16'h2222;
    LUT4 i1_2_lut_rep_113_3_lut_4_lut (.A(\c_addr[1] ), .B(\c_addr[0] ), 
         .C(n7361), .D(c_valid), .Z(n7325)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_config.v(41[11] 45[5])
    defparam i1_2_lut_rep_113_3_lut_4_lut.init = 16'h0002;
    
endmodule
//
// Verilog Description of module UART_sampler
//

module UART_sampler (valid_data, clk_UART, clk_UART_enable_2, out_next_N_449, 
            flag_reg, data, clk_UART_enable_3, n7, clk_c, clk_c_enable_147, 
            clk_c_enable_32, in_c, clk_c_enable_153, n1553, \counter_23__N_178[9] , 
            n7320, n101, n127, clk_c_enable_67, clkout_N_203, n7319, 
            n7329) /* synthesis syn_module_defined=1 */ ;
    output valid_data;
    input clk_UART;
    input clk_UART_enable_2;
    output out_next_N_449;
    output flag_reg;
    output data;
    input clk_UART_enable_3;
    output n7;
    input clk_c;
    input clk_c_enable_147;
    input clk_c_enable_32;
    input in_c;
    input clk_c_enable_153;
    input n1553;
    input \counter_23__N_178[9] ;
    output n7320;
    input [23:0]n101;
    output [23:0]n127;
    output clk_c_enable_67;
    output clkout_N_203;
    output n7319;
    output n7329;
    
    wire clk_UART /* synthesis is_clock=1, SET_AS_NETWORK=clk_UART */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(37[6:14])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    
    wire flag_next, out_next_N_447;
    wire [3:0]val_reg;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(26[30:37])
    wire [3:0]nr_1_reg;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(25[30:38])
    
    wire n3049;
    wire [3:0]n21;
    wire [3:0]nr_0_reg;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(24[30:38])
    
    wire n3047;
    wire [3:0]n21_adj_1112;
    wire [3:0]n21_adj_1113;
    
    wire n7363, n7372, n6944, n6945, n6864;
    
    FD1S3IX valid_reg_45 (.D(out_next_N_449), .CK(clk_UART), .CD(clk_UART_enable_2), 
            .Q(valid_data)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=14, LSE_RCOL=71, LSE_LLINE=54, LSE_RLINE=55 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(40[11] 47[5])
    defparam valid_reg_45.GSR = "ENABLED";
    FD1P3AX flag_reg_46 (.D(flag_next), .SP(clk_UART_enable_2), .CK(clk_UART), 
            .Q(flag_reg)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=14, LSE_RCOL=71, LSE_LLINE=54, LSE_RLINE=55 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(40[11] 47[5])
    defparam flag_reg_46.GSR = "ENABLED";
    FD1P3AX out_reg_44 (.D(out_next_N_447), .SP(clk_UART_enable_3), .CK(clk_UART), 
            .Q(data)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=14, LSE_RCOL=71, LSE_LLINE=54, LSE_RLINE=55 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(40[11] 47[5])
    defparam out_reg_44.GSR = "ENABLED";
    LUT4 val_reg_1__bdd_4_lut (.A(val_reg[1]), .B(val_reg[2]), .C(val_reg[0]), 
         .D(val_reg[3]), .Z(n7)) /* synthesis lut_function=(A (B (D)+!B !(C+(D)))+!A (B (C (D))+!B !(D))) */ ;
    defparam val_reg_1__bdd_4_lut.init = 16'hc813;
    FD1P3IX nr_1_reg_976__i3 (.D(n21[3]), .SP(clk_c_enable_147), .CD(n3049), 
            .CK(clk_c), .Q(nr_1_reg[3]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(73[29:41])
    defparam nr_1_reg_976__i3.GSR = "ENABLED";
    FD1P3IX nr_1_reg_976__i2 (.D(n21[2]), .SP(clk_c_enable_147), .CD(n3049), 
            .CK(clk_c), .Q(nr_1_reg[2]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(73[29:41])
    defparam nr_1_reg_976__i2.GSR = "ENABLED";
    FD1P3IX nr_1_reg_976__i1 (.D(n21[1]), .SP(clk_c_enable_147), .CD(n3049), 
            .CK(clk_c), .Q(nr_1_reg[1]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(73[29:41])
    defparam nr_1_reg_976__i1.GSR = "ENABLED";
    FD1P3IX nr_0_reg_977__i3 (.D(n21_adj_1112[3]), .SP(clk_c_enable_32), 
            .CD(n3047), .CK(clk_c), .Q(nr_0_reg[3]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(74[27:39])
    defparam nr_0_reg_977__i3.GSR = "ENABLED";
    LUT4 i5222_2_lut (.A(in_c), .B(nr_1_reg[0]), .Z(n21[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(73[29:41])
    defparam i5222_2_lut.init = 16'h6666;
    FD1P3IX nr_0_reg_977__i2 (.D(n21_adj_1112[2]), .SP(clk_c_enable_32), 
            .CD(n3047), .CK(clk_c), .Q(nr_0_reg[2]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(74[27:39])
    defparam nr_0_reg_977__i2.GSR = "ENABLED";
    FD1P3IX nr_0_reg_977__i1 (.D(n21_adj_1112[1]), .SP(clk_c_enable_32), 
            .CD(n3047), .CK(clk_c), .Q(nr_0_reg[1]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(74[27:39])
    defparam nr_0_reg_977__i1.GSR = "ENABLED";
    FD1P3AX val_reg_978__i0 (.D(n21_adj_1113[0]), .SP(clk_c_enable_153), 
            .CK(clk_c), .Q(val_reg[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(63[17:28])
    defparam val_reg_978__i0.GSR = "ENABLED";
    LUT4 i5202_2_lut (.A(nr_0_reg[1]), .B(nr_0_reg[0]), .Z(n21_adj_1112[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(74[27:39])
    defparam i5202_2_lut.init = 16'h6666;
    FD1P3IX nr_0_reg_977__i0 (.D(n7363), .SP(clk_c_enable_32), .CD(n3047), 
            .CK(clk_c), .Q(nr_0_reg[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(74[27:39])
    defparam nr_0_reg_977__i0.GSR = "ENABLED";
    LUT4 i5171_1_lut (.A(val_reg[0]), .Z(n21_adj_1113[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(63[17:28])
    defparam i5171_1_lut.init = 16'h5555;
    LUT4 i3004_2_lut_rep_108 (.A(n1553), .B(\counter_23__N_178[9] ), .Z(n7320)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i3004_2_lut_rep_108.init = 16'h2222;
    LUT4 i3024_2_lut_3_lut (.A(n1553), .B(\counter_23__N_178[9] ), .C(n101[23]), 
         .Z(n127[23])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i3024_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i315_2_lut_rep_104_3_lut_4_lut (.A(n1553), .B(\counter_23__N_178[9] ), 
         .C(valid_data), .D(clk_UART), .Z(clk_c_enable_67)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i315_2_lut_rep_104_3_lut_4_lut.init = 16'h0020;
    LUT4 i3025_2_lut_3_lut (.A(n1553), .B(\counter_23__N_178[9] ), .C(n101[22]), 
         .Z(n127[22])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i3025_2_lut_3_lut.init = 16'hd0d0;
    LUT4 clkout_I_0_2_lut_3_lut (.A(n1553), .B(\counter_23__N_178[9] ), 
         .C(clk_UART), .Z(clkout_N_203)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (C)) */ ;
    defparam clkout_I_0_2_lut_3_lut.init = 16'hd2d2;
    LUT4 i3000_2_lut_3_lut (.A(n1553), .B(\counter_23__N_178[9] ), .C(n101[0]), 
         .Z(n127[0])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i3000_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i1_3_lut_4_lut (.A(n1553), .B(\counter_23__N_178[9] ), .C(clk_UART), 
         .D(clk_UART_enable_3), .Z(n3049)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_3_lut_4_lut.init = 16'h0200;
    LUT4 i104_2_lut_rep_107_3_lut (.A(n1553), .B(\counter_23__N_178[9] ), 
         .C(clk_UART), .Z(n7319)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i104_2_lut_rep_107_3_lut.init = 16'hfdfd;
    LUT4 i3026_2_lut_3_lut (.A(n1553), .B(\counter_23__N_178[9] ), .C(n101[21]), 
         .Z(n127[21])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i3026_2_lut_3_lut.init = 16'hd0d0;
    FD1P3IX nr_1_reg_976__i0 (.D(n21[0]), .SP(clk_c_enable_147), .CD(n3049), 
            .CK(clk_c), .Q(nr_1_reg[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(73[29:41])
    defparam nr_1_reg_976__i0.GSR = "ENABLED";
    LUT4 i3027_2_lut_3_lut (.A(n1553), .B(\counter_23__N_178[9] ), .C(n101[20]), 
         .Z(n127[20])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i3027_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i6028_2_lut_rep_117_3_lut (.A(in_c), .B(n7), .C(out_next_N_449), 
         .Z(n7329)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(72[8] 75[11])
    defparam i6028_2_lut_rep_117_3_lut.init = 16'hf1f1;
    LUT4 i2272_3_lut_4_lut_2_lut_2_lut (.A(clk_c_enable_153), .B(out_next_N_449), 
         .Z(n3047)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(72[8] 75[11])
    defparam i2272_3_lut_4_lut_2_lut_2_lut.init = 16'h8888;
    LUT4 i5173_2_lut (.A(val_reg[1]), .B(val_reg[0]), .Z(n21_adj_1113[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(63[17:28])
    defparam i5173_2_lut.init = 16'h6666;
    LUT4 i5244_3_lut_4_lut (.A(nr_1_reg[1]), .B(n7372), .C(nr_1_reg[2]), 
         .D(nr_1_reg[3]), .Z(n21[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(73[29:41])
    defparam i5244_3_lut_4_lut.init = 16'h7f80;
    LUT4 i3028_2_lut_3_lut (.A(n1553), .B(\counter_23__N_178[9] ), .C(n101[19]), 
         .Z(n127[19])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i3028_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i3030_2_lut_3_lut (.A(n1553), .B(\counter_23__N_178[9] ), .C(n101[18]), 
         .Z(n127[18])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i3030_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i3031_2_lut_3_lut (.A(n1553), .B(\counter_23__N_178[9] ), .C(n101[17]), 
         .Z(n127[17])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i3031_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i3032_2_lut_3_lut (.A(n1553), .B(\counter_23__N_178[9] ), .C(n101[16]), 
         .Z(n127[16])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i3032_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i3033_2_lut_3_lut (.A(n1553), .B(\counter_23__N_178[9] ), .C(n101[15]), 
         .Z(n127[15])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i3033_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i3034_2_lut_3_lut (.A(n1553), .B(\counter_23__N_178[9] ), .C(n101[14]), 
         .Z(n127[14])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i3034_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i3035_2_lut_3_lut (.A(n1553), .B(\counter_23__N_178[9] ), .C(n101[13]), 
         .Z(n127[13])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i3035_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i3036_2_lut_3_lut (.A(n1553), .B(\counter_23__N_178[9] ), .C(n101[12]), 
         .Z(n127[12])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i3036_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i3037_2_lut_3_lut (.A(n1553), .B(\counter_23__N_178[9] ), .C(n101[11]), 
         .Z(n127[11])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i3037_2_lut_3_lut.init = 16'hd0d0;
    FD1P3AX val_reg_978__i1 (.D(n21_adj_1113[1]), .SP(clk_c_enable_153), 
            .CK(clk_c), .Q(val_reg[1]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(63[17:28])
    defparam val_reg_978__i1.GSR = "ENABLED";
    FD1P3AX val_reg_978__i2 (.D(n21_adj_1113[2]), .SP(clk_c_enable_153), 
            .CK(clk_c), .Q(val_reg[2]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(63[17:28])
    defparam val_reg_978__i2.GSR = "ENABLED";
    FD1P3AX val_reg_978__i3 (.D(n21_adj_1113[3]), .SP(clk_c_enable_153), 
            .CK(clk_c), .Q(val_reg[3]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(63[17:28])
    defparam val_reg_978__i3.GSR = "ENABLED";
    LUT4 i3038_2_lut_3_lut (.A(n1553), .B(\counter_23__N_178[9] ), .C(n101[10]), 
         .Z(n127[10])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i3038_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i3039_2_lut_3_lut (.A(n1553), .B(\counter_23__N_178[9] ), .C(n101[9]), 
         .Z(n127[9])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i3039_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i3_4_lut (.A(val_reg[2]), .B(val_reg[3]), .C(val_reg[0]), .D(val_reg[1]), 
         .Z(out_next_N_449)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    LUT4 i3040_2_lut_3_lut (.A(n1553), .B(\counter_23__N_178[9] ), .C(n101[8]), 
         .Z(n127[8])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i3040_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i3041_2_lut_3_lut (.A(n1553), .B(\counter_23__N_178[9] ), .C(n101[7]), 
         .Z(n127[7])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i3041_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i3042_2_lut_3_lut (.A(n1553), .B(\counter_23__N_178[9] ), .C(n101[6]), 
         .Z(n127[6])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i3042_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i3043_2_lut_3_lut (.A(n1553), .B(\counter_23__N_178[9] ), .C(n101[5]), 
         .Z(n127[5])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i3043_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i6062_2_lut (.A(in_c), .B(flag_reg), .Z(flag_next)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i6062_2_lut.init = 16'h1111;
    LUT4 i3044_2_lut_3_lut (.A(n1553), .B(\counter_23__N_178[9] ), .C(n101[4]), 
         .Z(n127[4])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i3044_2_lut_3_lut.init = 16'hd0d0;
    PFUMX nr_1_reg_3__I_0_i8 (.BLUT(n6944), .ALUT(n6945), .C0(n6864), 
          .Z(out_next_N_447)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=14, LSE_RCOL=71, LSE_LLINE=54, LSE_RLINE=55 */ ;
    LUT4 i5922_1_lut_3_lut_3_lut (.A(nr_1_reg[3]), .B(nr_0_reg[3]), .C(nr_0_reg[2]), 
         .Z(n6945)) /* synthesis lut_function=(!(A (B (C))+!A (B+(C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(68[11:31])
    defparam i5922_1_lut_3_lut_3_lut.init = 16'h2b2b;
    LUT4 i6068_3_lut_4_lut (.A(nr_1_reg[3]), .B(nr_0_reg[3]), .C(nr_0_reg[2]), 
         .D(nr_1_reg[2]), .Z(n6864)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(68[11:31])
    defparam i6068_3_lut_4_lut.init = 16'h6ff6;
    LUT4 i3045_2_lut_3_lut (.A(n1553), .B(\counter_23__N_178[9] ), .C(n101[3]), 
         .Z(n127[3])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i3045_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i5187_3_lut_4_lut (.A(val_reg[0]), .B(val_reg[1]), .C(val_reg[2]), 
         .D(val_reg[3]), .Z(n21_adj_1113[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i5187_3_lut_4_lut.init = 16'h7f80;
    LUT4 i3046_2_lut_3_lut (.A(n1553), .B(\counter_23__N_178[9] ), .C(n101[2]), 
         .Z(n127[2])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i3046_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i5180_2_lut_3_lut (.A(val_reg[0]), .B(val_reg[1]), .C(val_reg[2]), 
         .Z(n21_adj_1113[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i5180_2_lut_3_lut.init = 16'h7878;
    LUT4 i1_1_lut_rep_151 (.A(nr_0_reg[0]), .Z(n7363)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(68[11:31])
    defparam i1_1_lut_rep_151.init = 16'h5555;
    LUT4 i5921_1_lut_4_lut_4_lut (.A(nr_0_reg[0]), .B(nr_1_reg[0]), .C(nr_1_reg[1]), 
         .D(nr_0_reg[1]), .Z(n6944)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+!(D))+!B !((D)+!C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(68[11:31])
    defparam i5921_1_lut_4_lut_4_lut.init = 16'h40f4;
    LUT4 i3047_2_lut_3_lut (.A(n1553), .B(\counter_23__N_178[9] ), .C(n101[1]), 
         .Z(n127[1])) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i3047_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i5216_3_lut_4_lut (.A(nr_0_reg[1]), .B(nr_0_reg[0]), .C(nr_0_reg[2]), 
         .D(nr_0_reg[3]), .Z(n21_adj_1112[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(74[27:39])
    defparam i5216_3_lut_4_lut.init = 16'h7f80;
    LUT4 i5209_2_lut_3_lut (.A(nr_0_reg[1]), .B(nr_0_reg[0]), .C(nr_0_reg[2]), 
         .Z(n21_adj_1112[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(74[27:39])
    defparam i5209_2_lut_3_lut.init = 16'h7878;
    LUT4 i5224_2_lut_rep_160 (.A(in_c), .B(nr_1_reg[0]), .Z(n7372)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(73[29:41])
    defparam i5224_2_lut_rep_160.init = 16'h8888;
    LUT4 i5237_2_lut_3_lut_4_lut (.A(in_c), .B(nr_1_reg[0]), .C(nr_1_reg[2]), 
         .D(nr_1_reg[1]), .Z(n21[2])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(73[29:41])
    defparam i5237_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i5230_2_lut_3_lut (.A(in_c), .B(nr_1_reg[0]), .C(nr_1_reg[1]), 
         .Z(n21[1])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/uart_sampler.v(73[29:41])
    defparam i5230_2_lut_3_lut.init = 16'h7878;
    
endmodule
//
// Verilog Description of module DB
//

module DB (button_ff, clk_DB, btnVS_c, \ctr_ff[1] , button_signal_VS, 
           clk_c, clk_c_enable_142, n3055, button_signal_HS, \ctr_ff[1]_adj_2 , 
           button_ff_adj_3, btnHS_c, clk_c_enable_34, n3042, button_ff_adj_4, 
           btnVGA_c, button_signal_DEBUG_VGA, \ctr_ff[1]_adj_5 , clk_c_enable_144, 
           n3051, button_ff_adj_6, btnUART_c, button_signal_DEBUG_UART, 
           \ctr_ff[1]_adj_7 , clk_c_enable_143, n3053) /* synthesis syn_module_defined=1 */ ;
    output button_ff;
    input clk_DB;
    input btnVS_c;
    output \ctr_ff[1] ;
    output button_signal_VS;
    input clk_c;
    input clk_c_enable_142;
    input n3055;
    output button_signal_HS;
    output \ctr_ff[1]_adj_2 ;
    output button_ff_adj_3;
    input btnHS_c;
    input clk_c_enable_34;
    input n3042;
    output button_ff_adj_4;
    input btnVGA_c;
    output button_signal_DEBUG_VGA;
    output \ctr_ff[1]_adj_5 ;
    input clk_c_enable_144;
    input n3051;
    output button_ff_adj_6;
    input btnUART_c;
    output button_signal_DEBUG_UART;
    output \ctr_ff[1]_adj_7 ;
    input clk_c_enable_143;
    input n3053;
    
    wire clk_DB /* synthesis is_clock=1, SET_AS_NETWORK=clk_DB */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(38[6:12])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    
    DB_debouncer DB_VS (.button_ff(button_ff), .clk_DB(clk_DB), .btnVS_c(btnVS_c), 
            .\ctr_ff[1] (\ctr_ff[1] ), .button_signal_VS(button_signal_VS), 
            .clk_c(clk_c), .clk_c_enable_142(clk_c_enable_142), .n3055(n3055)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db.v(20[14:74])
    DB_debouncer_U1 DB_HS (.button_signal_HS(button_signal_HS), .clk_DB(clk_DB), 
            .\ctr_ff[1] (\ctr_ff[1]_adj_2 ), .button_ff(button_ff_adj_3), 
            .btnHS_c(btnHS_c), .clk_c(clk_c), .clk_c_enable_34(clk_c_enable_34), 
            .n3042(n3042)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db.v(19[14:74])
    DB_debouncer_U2 DB_DF_VGA (.button_ff(button_ff_adj_4), .clk_DB(clk_DB), 
            .btnVGA_c(btnVGA_c), .button_signal_DEBUG_VGA(button_signal_DEBUG_VGA), 
            .\ctr_ff[1] (\ctr_ff[1]_adj_5 ), .clk_c(clk_c), .clk_c_enable_144(clk_c_enable_144), 
            .n3051(n3051)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db.v(22[14:86])
    DB_debouncer_U3 DB_DF_UART (.button_ff(button_ff_adj_6), .clk_DB(clk_DB), 
            .btnUART_c(btnUART_c), .button_signal_DEBUG_UART(button_signal_DEBUG_UART), 
            .\ctr_ff[1] (\ctr_ff[1]_adj_7 ), .clk_c(clk_c), .clk_c_enable_143(clk_c_enable_143), 
            .n3053(n3053)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db.v(21[14:89])
    
endmodule
//
// Verilog Description of module DB_debouncer
//

module DB_debouncer (button_ff, clk_DB, btnVS_c, \ctr_ff[1] , button_signal_VS, 
            clk_c, clk_c_enable_142, n3055) /* synthesis syn_module_defined=1 */ ;
    output button_ff;
    input clk_DB;
    input btnVS_c;
    output \ctr_ff[1] ;
    output button_signal_VS;
    input clk_c;
    input clk_c_enable_142;
    input n3055;
    
    wire clk_DB /* synthesis is_clock=1, SET_AS_NETWORK=clk_DB */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(38[6:12])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    wire [1:0]n23;
    wire [1:0]n13;
    
    FD1S3AX button_ff_19 (.D(btnVS_c), .CK(clk_DB), .Q(button_ff)) /* synthesis LSE_LINE_FILE_ID=18, LSE_LCOL=14, LSE_RCOL=74, LSE_LLINE=20, LSE_RLINE=20 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(19[14] 23[8])
    defparam button_ff_19.GSR = "ENABLED";
    LUT4 i5326_2_lut (.A(\ctr_ff[1] ), .B(n23[0]), .Z(n13[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(33[19:29])
    defparam i5326_2_lut.init = 16'h6666;
    FD1P3AX sync_ff_18 (.D(button_ff), .SP(\ctr_ff[1] ), .CK(clk_DB), 
            .Q(button_signal_VS)) /* synthesis LSE_LINE_FILE_ID=18, LSE_LCOL=14, LSE_RCOL=74, LSE_LLINE=20, LSE_RLINE=20 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(19[14] 23[8])
    defparam sync_ff_18.GSR = "ENABLED";
    LUT4 i5324_1_lut (.A(n23[0]), .Z(n13[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(33[19:29])
    defparam i5324_1_lut.init = 16'h5555;
    FD1P3IX ctr_ff_968__i1 (.D(n13[1]), .SP(clk_c_enable_142), .CD(n3055), 
            .CK(clk_c), .Q(\ctr_ff[1] ));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(33[19:29])
    defparam ctr_ff_968__i1.GSR = "ENABLED";
    FD1P3IX ctr_ff_968__i0 (.D(n13[0]), .SP(clk_c_enable_142), .CD(n3055), 
            .CK(clk_c), .Q(n23[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(33[19:29])
    defparam ctr_ff_968__i0.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module DB_debouncer_U1
//

module DB_debouncer_U1 (button_signal_HS, clk_DB, \ctr_ff[1] , button_ff, 
            btnHS_c, clk_c, clk_c_enable_34, n3042) /* synthesis syn_module_defined=1 */ ;
    output button_signal_HS;
    input clk_DB;
    output \ctr_ff[1] ;
    output button_ff;
    input btnHS_c;
    input clk_c;
    input clk_c_enable_34;
    input n3042;
    
    wire clk_DB /* synthesis is_clock=1, SET_AS_NETWORK=clk_DB */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(38[6:12])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    wire [1:0]n13;
    wire [1:0]n23;
    
    FD1P3AX sync_ff_18 (.D(button_ff), .SP(\ctr_ff[1] ), .CK(clk_DB), 
            .Q(button_signal_HS)) /* synthesis LSE_LINE_FILE_ID=18, LSE_LCOL=14, LSE_RCOL=74, LSE_LLINE=19, LSE_RLINE=19 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(19[14] 23[8])
    defparam sync_ff_18.GSR = "ENABLED";
    FD1S3AX button_ff_19 (.D(btnHS_c), .CK(clk_DB), .Q(button_ff)) /* synthesis LSE_LINE_FILE_ID=18, LSE_LCOL=14, LSE_RCOL=74, LSE_LLINE=19, LSE_RLINE=19 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(19[14] 23[8])
    defparam button_ff_19.GSR = "ENABLED";
    FD1P3IX ctr_ff_990__i1 (.D(n13[1]), .SP(clk_c_enable_34), .CD(n3042), 
            .CK(clk_c), .Q(\ctr_ff[1] ));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(33[19:29])
    defparam ctr_ff_990__i1.GSR = "ENABLED";
    LUT4 i5158_2_lut (.A(\ctr_ff[1] ), .B(n23[0]), .Z(n13[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(33[19:29])
    defparam i5158_2_lut.init = 16'h6666;
    FD1P3IX ctr_ff_990__i0 (.D(n13[0]), .SP(clk_c_enable_34), .CD(n3042), 
            .CK(clk_c), .Q(n23[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(33[19:29])
    defparam ctr_ff_990__i0.GSR = "ENABLED";
    LUT4 i5156_1_lut (.A(n23[0]), .Z(n13[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(33[19:29])
    defparam i5156_1_lut.init = 16'h5555;
    
endmodule
//
// Verilog Description of module DB_debouncer_U2
//

module DB_debouncer_U2 (button_ff, clk_DB, btnVGA_c, button_signal_DEBUG_VGA, 
            \ctr_ff[1] , clk_c, clk_c_enable_144, n3051) /* synthesis syn_module_defined=1 */ ;
    output button_ff;
    input clk_DB;
    input btnVGA_c;
    output button_signal_DEBUG_VGA;
    output \ctr_ff[1] ;
    input clk_c;
    input clk_c_enable_144;
    input n3051;
    
    wire clk_DB /* synthesis is_clock=1, SET_AS_NETWORK=clk_DB */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(38[6:12])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    wire [1:0]n23;
    wire [1:0]n13;
    
    FD1S3AX button_ff_19 (.D(btnVGA_c), .CK(clk_DB), .Q(button_ff)) /* synthesis LSE_LINE_FILE_ID=18, LSE_LCOL=14, LSE_RCOL=86, LSE_LLINE=22, LSE_RLINE=22 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(19[14] 23[8])
    defparam button_ff_19.GSR = "ENABLED";
    FD1P3AX sync_ff_18 (.D(button_ff), .SP(\ctr_ff[1] ), .CK(clk_DB), 
            .Q(button_signal_DEBUG_VGA)) /* synthesis LSE_LINE_FILE_ID=18, LSE_LCOL=14, LSE_RCOL=86, LSE_LLINE=22, LSE_RLINE=22 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(19[14] 23[8])
    defparam sync_ff_18.GSR = "ENABLED";
    LUT4 i5296_2_lut (.A(\ctr_ff[1] ), .B(n23[0]), .Z(n13[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(33[19:29])
    defparam i5296_2_lut.init = 16'h6666;
    LUT4 i5294_1_lut (.A(n23[0]), .Z(n13[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(33[19:29])
    defparam i5294_1_lut.init = 16'h5555;
    FD1P3IX ctr_ff_972__i1 (.D(n13[1]), .SP(clk_c_enable_144), .CD(n3051), 
            .CK(clk_c), .Q(\ctr_ff[1] ));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(33[19:29])
    defparam ctr_ff_972__i1.GSR = "ENABLED";
    FD1P3IX ctr_ff_972__i0 (.D(n13[0]), .SP(clk_c_enable_144), .CD(n3051), 
            .CK(clk_c), .Q(n23[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(33[19:29])
    defparam ctr_ff_972__i0.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module DB_debouncer_U3
//

module DB_debouncer_U3 (button_ff, clk_DB, btnUART_c, button_signal_DEBUG_UART, 
            \ctr_ff[1] , clk_c, clk_c_enable_143, n3053) /* synthesis syn_module_defined=1 */ ;
    output button_ff;
    input clk_DB;
    input btnUART_c;
    output button_signal_DEBUG_UART;
    output \ctr_ff[1] ;
    input clk_c;
    input clk_c_enable_143;
    input n3053;
    
    wire clk_DB /* synthesis is_clock=1, SET_AS_NETWORK=clk_DB */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(38[6:12])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    wire [1:0]n23;
    wire [1:0]n13;
    
    FD1S3AX button_ff_19 (.D(btnUART_c), .CK(clk_DB), .Q(button_ff)) /* synthesis LSE_LINE_FILE_ID=18, LSE_LCOL=14, LSE_RCOL=89, LSE_LLINE=21, LSE_RLINE=21 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(19[14] 23[8])
    defparam button_ff_19.GSR = "ENABLED";
    FD1P3AX sync_ff_18 (.D(button_ff), .SP(\ctr_ff[1] ), .CK(clk_DB), 
            .Q(button_signal_DEBUG_UART)) /* synthesis LSE_LINE_FILE_ID=18, LSE_LCOL=14, LSE_RCOL=89, LSE_LLINE=21, LSE_RLINE=21 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(19[14] 23[8])
    defparam sync_ff_18.GSR = "ENABLED";
    LUT4 i5311_2_lut (.A(\ctr_ff[1] ), .B(n23[0]), .Z(n13[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(33[19:29])
    defparam i5311_2_lut.init = 16'h6666;
    LUT4 i5309_1_lut (.A(n23[0]), .Z(n13[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(33[19:29])
    defparam i5309_1_lut.init = 16'h5555;
    FD1P3IX ctr_ff_970__i1 (.D(n13[1]), .SP(clk_c_enable_143), .CD(n3053), 
            .CK(clk_c), .Q(\ctr_ff[1] ));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(33[19:29])
    defparam ctr_ff_970__i1.GSR = "ENABLED";
    FD1P3IX ctr_ff_970__i0 (.D(n13[0]), .SP(clk_c_enable_143), .CD(n3053), 
            .CK(clk_c), .Q(n23[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/db_debouncer.v(33[19:29])
    defparam ctr_ff_970__i0.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module UART_PLL
//

module UART_PLL (clk_c, clk_VGA, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input clk_c;
    output clk_VGA;
    input GND_net;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    wire clk_VGA /* synthesis is_clock=1, SET_AS_NETWORK=clk_VGA */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(36[6:13])
    
    wire CLKFB_t;
    
    EHXPLLJ PLLInst_0 (.CLKI(clk_c), .CLKFB(CLKFB_t), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .LOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(GND_net), .RESETC(GND_net), .RESETD(GND_net), .RESETM(GND_net), 
            .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .PLLCLK(GND_net), .PLLRST(GND_net), .PLLSTB(GND_net), 
            .PLLWE(GND_net), .PLLDATI0(GND_net), .PLLDATI1(GND_net), .PLLDATI2(GND_net), 
            .PLLDATI3(GND_net), .PLLDATI4(GND_net), .PLLDATI5(GND_net), 
            .PLLDATI6(GND_net), .PLLDATI7(GND_net), .PLLADDR0(GND_net), 
            .PLLADDR1(GND_net), .PLLADDR2(GND_net), .PLLADDR3(GND_net), 
            .PLLADDR4(GND_net), .CLKOP(clk_VGA), .CLKINTFB(CLKFB_t)) /* synthesis FREQUENCY_PIN_CLKOS3="1.846154", FREQUENCY_PIN_CLKOS2="128.000000", FREQUENCY_PIN_CLKOS="76.800000", FREQUENCY_PIN_CLKOP="48.000000", FREQUENCY_PIN_CLKI="12.000000", ICP_CURRENT="7", LPF_RESISTOR="40", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=85, LSE_LLINE=47, LSE_RLINE=47 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(47[10:85])
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 4;
    defparam PLLInst_0.CLKOP_DIV = 8;
    defparam PLLInst_0.CLKOS_DIV = 5;
    defparam PLLInst_0.CLKOS2_DIV = 3;
    defparam PLLInst_0.CLKOS3_DIV = 26;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "ENABLED";
    defparam PLLInst_0.VCO_BYPASS_A0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_B0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_C0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_D0 = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 7;
    defparam PLLInst_0.CLKOS_CPHASE = 4;
    defparam PLLInst_0.CLKOS2_CPHASE = 2;
    defparam PLLInst_0.CLKOS3_CPHASE = 25;
    defparam PLLInst_0.CLKOP_FPHASE = 0;
    defparam PLLInst_0.CLKOS_FPHASE = 0;
    defparam PLLInst_0.CLKOS2_FPHASE = 0;
    defparam PLLInst_0.CLKOS3_FPHASE = 0;
    defparam PLLInst_0.FEEDBK_PATH = "INT_DIVA";
    defparam PLLInst_0.FRACN_ENABLE = "DISABLED";
    defparam PLLInst_0.FRACN_DIV = 0;
    defparam PLLInst_0.CLKOP_TRIM_POL = "RISING";
    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0;
    defparam PLLInst_0.CLKOS_TRIM_POL = "RISING";
    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0;
    defparam PLLInst_0.PLL_USE_WB = "DISABLED";
    defparam PLLInst_0.PREDIVIDER_MUXA1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXB1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXC1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXD1 = 1;
    defparam PLLInst_0.OUTDIVIDER_MUXA2 = "DIVA";
    defparam PLLInst_0.OUTDIVIDER_MUXB2 = "DIVB";
    defparam PLLInst_0.OUTDIVIDER_MUXC2 = "DIVC";
    defparam PLLInst_0.OUTDIVIDER_MUXD2 = "DIVD";
    defparam PLLInst_0.PLL_LOCK_MODE = 0;
    defparam PLLInst_0.STDBY_ENABLE = "DISABLED";
    defparam PLLInst_0.DPHASE_SOURCE = "DISABLED";
    defparam PLLInst_0.PLLRST_ENA = "DISABLED";
    defparam PLLInst_0.MRST_ENA = "DISABLED";
    defparam PLLInst_0.DCRST_ENA = "DISABLED";
    defparam PLLInst_0.DDRST_ENA = "DISABLED";
    defparam PLLInst_0.INTFB_WAKE = "DISABLED";
    
endmodule
//
// Verilog Description of module VGA
//

module VGA (V_left_margin, \c_data[0] , n7362, \c_data[1] , H_Left_Margin_nxt_8__N_957, 
            H_sync_pulse, clk_c, \V_right_margin[6] , \V_right_margin[5] , 
            \V_right_margin[4] , \V_right_margin[1] , H_left_margin, V_sync_pulse, 
            \H_right_margin[7] , Load_config, \H_right_margin[6] , V_Count_Max_nxt_11__N_1037, 
            V_Count_Max_nxt_11__N_1036, V_Count_Max_nxt_11__N_1035, H_Count_Max_nxt_11__N_1018, 
            H_Left_Margin_nxt_8__N_963, H_Left_Margin_nxt_8__N_958, V_Right_Margin_nxt_9__N_999, 
            V_Right_Margin_nxt_9__N_996, V_Right_Margin_nxt_9__N_995, V_Right_Margin_nxt_9__N_994, 
            V_Sync_Pulse_nxt_7__N_1015, H_Sync_Pulse_nxt_7__N_1003, H_Right_Margin_nxt_10__N_987, 
            H_Right_Margin_nxt_10__N_985, H_Right_Margin_nxt_10__N_984, 
            H_Right_Margin_nxt_10__N_983, V_Left_Margin_nxt_5__N_976, V_Left_Margin_nxt_5__N_974, 
            V_Left_Margin_nxt_5__N_973, \H_right_margin[5] , \H_right_margin[3] , 
            H_BackPorch_nxt_7__N_780, n2589, n7326, c_ready_nxt_N_904, 
            \H_count_max[10] , \V_count_max[4] , \V_count_max[5] , \V_count_max[6] , 
            \c_data[2] , \baudrate_next_23__N_262[0] , button_signal_DEBUG_VGA, 
            clk_c_enable_89, n7358, H_Count_Max_nxt_11__N_1021, c_valid, 
            \c_addr[3] , \c_addr[2] , Data_VGA, GREEN_c_0, BLUE_c_2, 
            BLUE_c_1, BLUE_c_0, Count_h, GND_net, Count_v, GREEN_c_1, 
            BLUE_c_3, GREEN_c_2, GREEN_c_3, RED_c_0, RED_c_1, RED_c_2, 
            n1417, Active_nxt_N_1066, n6758, RED_c_3, VSYNC_c, HSYNC_c, 
            n3044, n1115, n6752, rst_n_c, n3046, n1112) /* synthesis syn_module_defined=1 */ ;
    output [5:0]V_left_margin;
    input \c_data[0] ;
    output n7362;
    input \c_data[1] ;
    output H_Left_Margin_nxt_8__N_957;
    output [7:0]H_sync_pulse;
    input clk_c;
    output \V_right_margin[6] ;
    output \V_right_margin[5] ;
    output \V_right_margin[4] ;
    output \V_right_margin[1] ;
    output [8:0]H_left_margin;
    output [7:0]V_sync_pulse;
    output \H_right_margin[7] ;
    output Load_config;
    output \H_right_margin[6] ;
    input V_Count_Max_nxt_11__N_1037;
    input V_Count_Max_nxt_11__N_1036;
    input V_Count_Max_nxt_11__N_1035;
    input H_Count_Max_nxt_11__N_1018;
    input H_Left_Margin_nxt_8__N_963;
    input H_Left_Margin_nxt_8__N_958;
    input V_Right_Margin_nxt_9__N_999;
    input V_Right_Margin_nxt_9__N_996;
    input V_Right_Margin_nxt_9__N_995;
    input V_Right_Margin_nxt_9__N_994;
    input V_Sync_Pulse_nxt_7__N_1015;
    input H_Sync_Pulse_nxt_7__N_1003;
    input H_Right_Margin_nxt_10__N_987;
    input H_Right_Margin_nxt_10__N_985;
    input H_Right_Margin_nxt_10__N_984;
    input H_Right_Margin_nxt_10__N_983;
    input V_Left_Margin_nxt_5__N_976;
    input V_Left_Margin_nxt_5__N_974;
    input V_Left_Margin_nxt_5__N_973;
    output \H_right_margin[5] ;
    output \H_right_margin[3] ;
    input H_BackPorch_nxt_7__N_780;
    input n2589;
    input n7326;
    output c_ready_nxt_N_904;
    output \H_count_max[10] ;
    output \V_count_max[4] ;
    output \V_count_max[5] ;
    output \V_count_max[6] ;
    input \c_data[2] ;
    output \baudrate_next_23__N_262[0] ;
    input button_signal_DEBUG_VGA;
    output clk_c_enable_89;
    output n7358;
    output H_Count_Max_nxt_11__N_1021;
    input c_valid;
    input \c_addr[3] ;
    input \c_addr[2] ;
    input [11:0]Data_VGA;
    output GREEN_c_0;
    output BLUE_c_2;
    output BLUE_c_1;
    output BLUE_c_0;
    output [11:0]Count_h;
    input GND_net;
    output [11:0]Count_v;
    output GREEN_c_1;
    output BLUE_c_3;
    output GREEN_c_2;
    output GREEN_c_3;
    output RED_c_0;
    output RED_c_1;
    output RED_c_2;
    input n1417;
    input Active_nxt_N_1066;
    input n6758;
    output RED_c_3;
    output VSYNC_c;
    output HSYNC_c;
    output n3044;
    input n1115;
    input n6752;
    input rst_n_c;
    output n3046;
    input n1112;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    wire HSYNC_c /* synthesis SET_AS_NETWORK=HSYNC_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(17[8:13])
    wire [9:0]V_right_margin;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga.v(34[30:44])
    wire [10:0]H_right_margin;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga.v(32[30:44])
    wire [11:0]V_count_max;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga.v(38[27:38])
    wire [11:0]H_count_max;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga.v(36[27:38])
    
    wire Count_h_11__N_948;
    
    VGA_Config config1 (.V_left_margin({V_left_margin}), .\c_data[0] (\c_data[0] ), 
            .n7362(n7362), .\c_data[1] (\c_data[1] ), .H_Left_Margin_nxt_8__N_957(H_Left_Margin_nxt_8__N_957), 
            .H_sync_pulse({H_sync_pulse}), .clk_c(clk_c), .V_right_margin({V_right_margin[9:7], 
            \V_right_margin[6] , \V_right_margin[5] , \V_right_margin[4] , 
            V_right_margin[3:2], \V_right_margin[1] , V_right_margin[0]}), 
            .H_right_margin({H_right_margin[10:8], \H_right_margin[7] , 
            \H_right_margin[6] , \H_right_margin[5] , H_right_margin[4], 
            \H_right_margin[3] , H_right_margin[2:0]}), .V_count_max({V_count_max[11:7], 
            \V_count_max[6] , \V_count_max[5] , \V_count_max[4] , V_count_max[3:0]}), 
            .H_left_margin({H_left_margin}), .V_sync_pulse({V_sync_pulse}), 
            .H_count_max({H_count_max[11], \H_count_max[10] , H_count_max[9:0]}), 
            .Load_config(Load_config), .V_Count_Max_nxt_11__N_1037(V_Count_Max_nxt_11__N_1037), 
            .V_Count_Max_nxt_11__N_1036(V_Count_Max_nxt_11__N_1036), .V_Count_Max_nxt_11__N_1035(V_Count_Max_nxt_11__N_1035), 
            .H_Count_Max_nxt_11__N_1018(H_Count_Max_nxt_11__N_1018), .H_Left_Margin_nxt_8__N_963(H_Left_Margin_nxt_8__N_963), 
            .H_Left_Margin_nxt_8__N_958(H_Left_Margin_nxt_8__N_958), .V_Right_Margin_nxt_9__N_999(V_Right_Margin_nxt_9__N_999), 
            .V_Right_Margin_nxt_9__N_996(V_Right_Margin_nxt_9__N_996), .V_Right_Margin_nxt_9__N_995(V_Right_Margin_nxt_9__N_995), 
            .V_Right_Margin_nxt_9__N_994(V_Right_Margin_nxt_9__N_994), .V_Sync_Pulse_nxt_7__N_1015(V_Sync_Pulse_nxt_7__N_1015), 
            .H_Sync_Pulse_nxt_7__N_1003(H_Sync_Pulse_nxt_7__N_1003), .H_Right_Margin_nxt_10__N_987(H_Right_Margin_nxt_10__N_987), 
            .H_Right_Margin_nxt_10__N_985(H_Right_Margin_nxt_10__N_985), .H_Right_Margin_nxt_10__N_984(H_Right_Margin_nxt_10__N_984), 
            .H_Right_Margin_nxt_10__N_983(H_Right_Margin_nxt_10__N_983), .V_Left_Margin_nxt_5__N_976(V_Left_Margin_nxt_5__N_976), 
            .V_Left_Margin_nxt_5__N_974(V_Left_Margin_nxt_5__N_974), .V_Left_Margin_nxt_5__N_973(V_Left_Margin_nxt_5__N_973), 
            .H_BackPorch_nxt_7__N_780(H_BackPorch_nxt_7__N_780), .n2589(n2589), 
            .n7326(n7326), .c_ready_nxt_N_904(c_ready_nxt_N_904), .\c_data[2] (\c_data[2] ), 
            .\baudrate_next_23__N_262[0] (\baudrate_next_23__N_262[0] ), .button_signal_DEBUG_VGA(button_signal_DEBUG_VGA), 
            .clk_c_enable_89(clk_c_enable_89), .n7358(n7358), .H_Count_Max_nxt_11__N_1021(H_Count_Max_nxt_11__N_1021), 
            .c_valid(c_valid), .\c_addr[3] (\c_addr[3] ), .\c_addr[2] (\c_addr[2] )) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga.v(44[13] 57[34])
    VGA_Assign_color assgncolor (.clk_c(clk_c), .Data_VGA({Data_VGA}), .GREEN_c_0(GREEN_c_0), 
            .BLUE_c_2(BLUE_c_2), .BLUE_c_1(BLUE_c_1), .BLUE_c_0(BLUE_c_0), 
            .Count_h({Count_h}), .GND_net(GND_net), .H_right_margin({H_right_margin[10:8], 
            \H_right_margin[7] , \H_right_margin[6] , \H_right_margin[5] , 
            H_right_margin[4], \H_right_margin[3] , H_right_margin[2:0]}), 
            .Count_v({Count_v}), .V_right_margin({V_right_margin[9:7], \V_right_margin[6] , 
            \V_right_margin[5] , \V_right_margin[4] , V_right_margin[3:2], 
            \V_right_margin[1] , V_right_margin[0]}), .GREEN_c_1(GREEN_c_1), 
            .BLUE_c_3(BLUE_c_3), .GREEN_c_2(GREEN_c_2), .GREEN_c_3(GREEN_c_3), 
            .RED_c_0(RED_c_0), .RED_c_1(RED_c_1), .RED_c_2(RED_c_2), .n1417(n1417), 
            .Active_nxt_N_1066(Active_nxt_N_1066), .n6758(n6758), .RED_c_3(RED_c_3)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga.v(74[19] 85[20])
    VGA_Counter CounterV (.VSYNC_c(VSYNC_c), .HSYNC_c(HSYNC_c), .Count_h_11__N_948(Count_h_11__N_948), 
            .Count_v({Count_v}), .GND_net(GND_net), .V_count_max({V_count_max[11:7], 
            \V_count_max[6] , \V_count_max[5] , \V_count_max[4] , V_count_max[3:0]}), 
            .n3044(n3044), .n1115(n1115), .n6752(n6752), .rst_n_c(rst_n_c), 
            .Load_config(Load_config)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga.v(67[14] 72[25])
    VGA_Counter_U0 CounterH (.HSYNC_c(HSYNC_c), .clk_c(clk_c), .Count_h_11__N_948(Count_h_11__N_948), 
            .Count_h({Count_h}), .GND_net(GND_net), .n3046(n3046), .H_count_max({H_count_max[11], 
            \H_count_max[10] , H_count_max[9:0]}), .n6758(n6758), .n1112(n1112)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga.v(60[14] 65[25])
    
endmodule
//
// Verilog Description of module VGA_Config
//

module VGA_Config (V_left_margin, \c_data[0] , n7362, \c_data[1] , H_Left_Margin_nxt_8__N_957, 
            H_sync_pulse, clk_c, V_right_margin, H_right_margin, V_count_max, 
            H_left_margin, V_sync_pulse, H_count_max, Load_config, V_Count_Max_nxt_11__N_1037, 
            V_Count_Max_nxt_11__N_1036, V_Count_Max_nxt_11__N_1035, H_Count_Max_nxt_11__N_1018, 
            H_Left_Margin_nxt_8__N_963, H_Left_Margin_nxt_8__N_958, V_Right_Margin_nxt_9__N_999, 
            V_Right_Margin_nxt_9__N_996, V_Right_Margin_nxt_9__N_995, V_Right_Margin_nxt_9__N_994, 
            V_Sync_Pulse_nxt_7__N_1015, H_Sync_Pulse_nxt_7__N_1003, H_Right_Margin_nxt_10__N_987, 
            H_Right_Margin_nxt_10__N_985, H_Right_Margin_nxt_10__N_984, 
            H_Right_Margin_nxt_10__N_983, V_Left_Margin_nxt_5__N_976, V_Left_Margin_nxt_5__N_974, 
            V_Left_Margin_nxt_5__N_973, H_BackPorch_nxt_7__N_780, n2589, 
            n7326, c_ready_nxt_N_904, \c_data[2] , \baudrate_next_23__N_262[0] , 
            button_signal_DEBUG_VGA, clk_c_enable_89, n7358, H_Count_Max_nxt_11__N_1021, 
            c_valid, \c_addr[3] , \c_addr[2] ) /* synthesis syn_module_defined=1 */ ;
    output [5:0]V_left_margin;
    input \c_data[0] ;
    output n7362;
    input \c_data[1] ;
    output H_Left_Margin_nxt_8__N_957;
    output [7:0]H_sync_pulse;
    input clk_c;
    output [9:0]V_right_margin;
    output [10:0]H_right_margin;
    output [11:0]V_count_max;
    output [8:0]H_left_margin;
    output [7:0]V_sync_pulse;
    output [11:0]H_count_max;
    output Load_config;
    input V_Count_Max_nxt_11__N_1037;
    input V_Count_Max_nxt_11__N_1036;
    input V_Count_Max_nxt_11__N_1035;
    input H_Count_Max_nxt_11__N_1018;
    input H_Left_Margin_nxt_8__N_963;
    input H_Left_Margin_nxt_8__N_958;
    input V_Right_Margin_nxt_9__N_999;
    input V_Right_Margin_nxt_9__N_996;
    input V_Right_Margin_nxt_9__N_995;
    input V_Right_Margin_nxt_9__N_994;
    input V_Sync_Pulse_nxt_7__N_1015;
    input H_Sync_Pulse_nxt_7__N_1003;
    input H_Right_Margin_nxt_10__N_987;
    input H_Right_Margin_nxt_10__N_985;
    input H_Right_Margin_nxt_10__N_984;
    input H_Right_Margin_nxt_10__N_983;
    input V_Left_Margin_nxt_5__N_976;
    input V_Left_Margin_nxt_5__N_974;
    input V_Left_Margin_nxt_5__N_973;
    input H_BackPorch_nxt_7__N_780;
    input n2589;
    input n7326;
    output c_ready_nxt_N_904;
    input \c_data[2] ;
    output \baudrate_next_23__N_262[0] ;
    input button_signal_DEBUG_VGA;
    output clk_c_enable_89;
    output n7358;
    output H_Count_Max_nxt_11__N_1021;
    input c_valid;
    input \c_addr[3] ;
    input \c_addr[2] ;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    wire H_Left_Margin_nxt_8__N_967 /* synthesis is_clock=1, SET_AS_NETWORK=\vga/config1/H_Left_Margin_nxt_8__N_967 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(43[49:66])
    
    wire V_Left_Margin_nxt_5__N_971;
    wire [7:0]H_Sync_Pulse_nxt;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(47[49:65])
    wire [9:0]V_Right_Margin_nxt;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(46[51:69])
    wire [10:0]H_Right_Margin_nxt;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(45[51:69])
    wire [11:0]V_Count_Max_nxt;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(50[49:64])
    wire [8:0]H_Left_Margin_nxt;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(43[49:66])
    wire [5:0]V_Left_Margin_nxt;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(44[49:66])
    wire [7:0]V_Sync_Pulse_nxt;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(48[49:65])
    wire [11:0]H_Count_Max_nxt;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(49[48:63])
    
    wire V_Right_Margin_nxt_9__N_1000, V_Left_Margin_nxt_5__N_978, Load_nxt, 
        c_data_1_derived_1, Load_nxt_N_1042, V_Count_Max_nxt_11__N_1040, 
        V_Count_Max_nxt_11__N_1039, V_Count_Max_nxt_11__N_1038, V_Count_Max_nxt_11__N_1033, 
        V_Count_Max_nxt_11__N_1032, H_Count_Max_nxt_11__N_1024, H_Count_Max_nxt_11__N_1022, 
        H_Count_Max_nxt_11__N_1020, H_Count_Max_nxt_11__N_1019, H_Count_Max_nxt_11__N_1017, 
        H_Left_Margin_nxt_8__N_962, H_Left_Margin_nxt_8__N_961, H_Left_Margin_nxt_8__N_960, 
        H_Left_Margin_nxt_8__N_956, H_Left_Margin_nxt_8__N_952, V_Right_Margin_nxt_9__N_992, 
        V_Right_Margin_nxt_9__N_991, V_Sync_Pulse_nxt_7__N_1014, H_Sync_Pulse_nxt_7__N_1007, 
        H_Sync_Pulse_nxt_7__N_1006, H_Sync_Pulse_nxt_7__N_1005, H_Sync_Pulse_nxt_7__N_1004, 
        H_Sync_Pulse_nxt_7__N_1002, H_Sync_Pulse_nxt_7__N_1001, H_Right_Margin_nxt_10__N_986, 
        H_Right_Margin_nxt_10__N_982, H_Right_Margin_nxt_10__N_981, H_Right_Margin_nxt_10__N_980;
    
    LUT4 V_left_margin_5__I_0_3_lut (.A(V_left_margin[5]), .B(\c_data[0] ), 
         .C(n7362), .Z(V_Left_Margin_nxt_5__N_971)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(129[3] 139[6])
    defparam V_left_margin_5__I_0_3_lut.init = 16'h3a3a;
    LUT4 i1107_1_lut (.A(\c_data[1] ), .Z(H_Left_Margin_nxt_8__N_957)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam i1107_1_lut.init = 16'h5555;
    FD1S3AY H_Sync_Pulse_reg_i1 (.D(H_Sync_Pulse_nxt[1]), .CK(clk_c), .Q(H_sync_pulse[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Sync_Pulse_reg_i1.GSR = "ENABLED";
    FD1S3AY V_Right_Margin_reg_i9 (.D(V_Right_Margin_nxt[9]), .CK(clk_c), 
            .Q(V_right_margin[9])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Right_Margin_reg_i9.GSR = "ENABLED";
    FD1S3AX V_Right_Margin_reg_i8 (.D(V_Right_Margin_nxt[8]), .CK(clk_c), 
            .Q(V_right_margin[8])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Right_Margin_reg_i8.GSR = "ENABLED";
    FD1S3AX V_Right_Margin_reg_i7 (.D(V_Right_Margin_nxt[7]), .CK(clk_c), 
            .Q(V_right_margin[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Right_Margin_reg_i7.GSR = "ENABLED";
    FD1S3AX V_Right_Margin_reg_i6 (.D(V_Right_Margin_nxt[6]), .CK(clk_c), 
            .Q(V_right_margin[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Right_Margin_reg_i6.GSR = "ENABLED";
    FD1S3AX V_Right_Margin_reg_i5 (.D(V_Right_Margin_nxt[5]), .CK(clk_c), 
            .Q(V_right_margin[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Right_Margin_reg_i5.GSR = "ENABLED";
    FD1S3AX V_Right_Margin_reg_i4 (.D(V_Right_Margin_nxt[4]), .CK(clk_c), 
            .Q(V_right_margin[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Right_Margin_reg_i4.GSR = "ENABLED";
    FD1S3AX V_Right_Margin_reg_i3 (.D(V_Right_Margin_nxt[3]), .CK(clk_c), 
            .Q(V_right_margin[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Right_Margin_reg_i3.GSR = "ENABLED";
    FD1S3AX V_Right_Margin_reg_i2 (.D(V_Right_Margin_nxt[2]), .CK(clk_c), 
            .Q(V_right_margin[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Right_Margin_reg_i2.GSR = "ENABLED";
    FD1S3AX V_Right_Margin_reg_i1 (.D(V_Right_Margin_nxt[1]), .CK(clk_c), 
            .Q(V_right_margin[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Right_Margin_reg_i1.GSR = "ENABLED";
    FD1S3AX H_Right_Margin_reg_i10 (.D(H_Right_Margin_nxt[10]), .CK(clk_c), 
            .Q(H_right_margin[10])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Right_Margin_reg_i10.GSR = "ENABLED";
    FD1S3AY H_Right_Margin_reg_i9 (.D(H_Right_Margin_nxt[9]), .CK(clk_c), 
            .Q(H_right_margin[9])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Right_Margin_reg_i9.GSR = "ENABLED";
    FD1S1I V_Count_Max_nxt_11__I_0_i1 (.D(V_count_max[0]), .CK(H_Left_Margin_nxt_8__N_967), 
           .CD(n7362), .Q(V_Count_Max_nxt[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Count_Max_nxt_11__I_0_i1.GSR = "DISABLED";
    FD1S3AX H_Left_Margin_reg_i0 (.D(H_Left_Margin_nxt[0]), .CK(clk_c), 
            .Q(H_left_margin[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Left_Margin_reg_i0.GSR = "ENABLED";
    FD1S3AY V_Left_Margin_reg_i0 (.D(V_Left_Margin_nxt[0]), .CK(clk_c), 
            .Q(V_left_margin[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Left_Margin_reg_i0.GSR = "ENABLED";
    FD1S3AX H_Right_Margin_reg_i0 (.D(H_Right_Margin_nxt[0]), .CK(clk_c), 
            .Q(H_right_margin[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Right_Margin_reg_i0.GSR = "ENABLED";
    FD1S3AY V_Right_Margin_reg_i0 (.D(V_Right_Margin_nxt[0]), .CK(clk_c), 
            .Q(V_right_margin[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Right_Margin_reg_i0.GSR = "ENABLED";
    FD1S3AX H_Sync_Pulse_reg_i0 (.D(H_Sync_Pulse_nxt[0]), .CK(clk_c), .Q(H_sync_pulse[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Sync_Pulse_reg_i0.GSR = "ENABLED";
    FD1S3AX V_Sync_Pulse_reg_i0 (.D(V_Sync_Pulse_nxt[0]), .CK(clk_c), .Q(V_sync_pulse[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Sync_Pulse_reg_i0.GSR = "ENABLED";
    FD1S3AX H_Count_Max_reg_i0 (.D(H_Count_Max_nxt[0]), .CK(clk_c), .Q(H_count_max[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Count_Max_reg_i0.GSR = "ENABLED";
    FD1S3AX V_Count_Max_reg_i0 (.D(V_Count_Max_nxt[0]), .CK(clk_c), .Q(V_count_max[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Count_Max_reg_i0.GSR = "ENABLED";
    FD1S3AY H_Right_Margin_reg_i8 (.D(H_Right_Margin_nxt[8]), .CK(clk_c), 
            .Q(H_right_margin[8])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Right_Margin_reg_i8.GSR = "ENABLED";
    FD1S3AX H_Right_Margin_reg_i7 (.D(H_Right_Margin_nxt[7]), .CK(clk_c), 
            .Q(H_right_margin[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Right_Margin_reg_i7.GSR = "ENABLED";
    FD1S1I H_Count_Max_nxt_11__I_0_i1 (.D(H_count_max[0]), .CK(H_Left_Margin_nxt_8__N_967), 
           .CD(n7362), .Q(H_Count_Max_nxt[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Count_Max_nxt_11__I_0_i1.GSR = "DISABLED";
    FD1S1I H_Left_Margin_nxt_8__I_0_i1 (.D(H_left_margin[0]), .CK(H_Left_Margin_nxt_8__N_967), 
           .CD(n7362), .Q(H_Left_Margin_nxt[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Left_Margin_nxt_8__I_0_i1.GSR = "DISABLED";
    FD1S1A V_Right_Margin_nxt_9__I_0_i1 (.D(V_Right_Margin_nxt_9__N_1000), 
           .CK(H_Left_Margin_nxt_8__N_967), .Q(V_Right_Margin_nxt[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Right_Margin_nxt_9__I_0_i1.GSR = "DISABLED";
    FD1S1I V_Sync_Pulse_nxt_7__I_0_i1 (.D(V_sync_pulse[0]), .CK(H_Left_Margin_nxt_8__N_967), 
           .CD(n7362), .Q(V_Sync_Pulse_nxt[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Sync_Pulse_nxt_7__I_0_i1.GSR = "DISABLED";
    FD1S1I H_Sync_Pulse_nxt_7__I_0_i1 (.D(H_sync_pulse[0]), .CK(H_Left_Margin_nxt_8__N_967), 
           .CD(n7362), .Q(H_Sync_Pulse_nxt[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Sync_Pulse_nxt_7__I_0_i1.GSR = "DISABLED";
    FD1S1I H_Right_Margin_nxt_10__I_0_i1 (.D(H_right_margin[0]), .CK(H_Left_Margin_nxt_8__N_967), 
           .CD(n7362), .Q(H_Right_Margin_nxt[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Right_Margin_nxt_10__I_0_i1.GSR = "DISABLED";
    FD1S1A V_Left_Margin_nxt_5__I_0_i1 (.D(V_Left_Margin_nxt_5__N_978), .CK(H_Left_Margin_nxt_8__N_967), 
           .Q(V_Left_Margin_nxt[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Left_Margin_nxt_5__I_0_i1.GSR = "DISABLED";
    FD1S3AY Load_reg_732 (.D(Load_nxt), .CK(clk_c), .Q(Load_config)) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam Load_reg_732.GSR = "ENABLED";
    FD1S1D V_Left_Margin_nxt_5__N_979_I_0 (.D(c_data_1_derived_1), .CK(c_data_1_derived_1), 
           .CD(Load_nxt_N_1042), .Q(Load_nxt)) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Left_Margin_nxt_5__N_979_I_0.GSR = "DISABLED";
    FD1S3AX H_Right_Margin_reg_i6 (.D(H_Right_Margin_nxt[6]), .CK(clk_c), 
            .Q(H_right_margin[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Right_Margin_reg_i6.GSR = "ENABLED";
    FD1S1A V_Count_Max_nxt_11__I_0_i2 (.D(V_Count_Max_nxt_11__N_1040), .CK(H_Left_Margin_nxt_8__N_967), 
           .Q(V_Count_Max_nxt[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Count_Max_nxt_11__I_0_i2.GSR = "DISABLED";
    FD1S1A V_Count_Max_nxt_11__I_0_i3 (.D(V_Count_Max_nxt_11__N_1039), .CK(H_Left_Margin_nxt_8__N_967), 
           .Q(V_Count_Max_nxt[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Count_Max_nxt_11__I_0_i3.GSR = "DISABLED";
    FD1S1A V_Count_Max_nxt_11__I_0_i4 (.D(V_Count_Max_nxt_11__N_1038), .CK(H_Left_Margin_nxt_8__N_967), 
           .Q(V_Count_Max_nxt[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Count_Max_nxt_11__I_0_i4.GSR = "DISABLED";
    FD1S1A V_Count_Max_nxt_11__I_0_i5 (.D(V_Count_Max_nxt_11__N_1037), .CK(H_Left_Margin_nxt_8__N_967), 
           .Q(V_Count_Max_nxt[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Count_Max_nxt_11__I_0_i5.GSR = "DISABLED";
    FD1S1A V_Count_Max_nxt_11__I_0_i6 (.D(V_Count_Max_nxt_11__N_1036), .CK(H_Left_Margin_nxt_8__N_967), 
           .Q(V_Count_Max_nxt[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Count_Max_nxt_11__I_0_i6.GSR = "DISABLED";
    FD1S1A V_Count_Max_nxt_11__I_0_i7 (.D(V_Count_Max_nxt_11__N_1035), .CK(H_Left_Margin_nxt_8__N_967), 
           .Q(V_Count_Max_nxt[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Count_Max_nxt_11__I_0_i7.GSR = "DISABLED";
    FD1S1I V_Count_Max_nxt_11__I_0_i8 (.D(V_count_max[7]), .CK(H_Left_Margin_nxt_8__N_967), 
           .CD(n7362), .Q(V_Count_Max_nxt[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Count_Max_nxt_11__I_0_i8.GSR = "DISABLED";
    FD1S1A V_Count_Max_nxt_11__I_0_i9 (.D(V_Count_Max_nxt_11__N_1033), .CK(H_Left_Margin_nxt_8__N_967), 
           .Q(V_Count_Max_nxt[8])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Count_Max_nxt_11__I_0_i9.GSR = "DISABLED";
    FD1S1A V_Count_Max_nxt_11__I_0_i10 (.D(V_Count_Max_nxt_11__N_1032), .CK(H_Left_Margin_nxt_8__N_967), 
           .Q(V_Count_Max_nxt[9])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Count_Max_nxt_11__I_0_i10.GSR = "DISABLED";
    FD1S1I V_Count_Max_nxt_11__I_0_i11 (.D(V_count_max[10]), .CK(H_Left_Margin_nxt_8__N_967), 
           .CD(n7362), .Q(V_Count_Max_nxt[10])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Count_Max_nxt_11__I_0_i11.GSR = "DISABLED";
    FD1S1I V_Count_Max_nxt_11__I_0_i12 (.D(V_count_max[11]), .CK(H_Left_Margin_nxt_8__N_967), 
           .CD(n7362), .Q(V_Count_Max_nxt[11])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Count_Max_nxt_11__I_0_i12.GSR = "DISABLED";
    FD1S1I H_Count_Max_nxt_11__I_0_i2 (.D(H_count_max[1]), .CK(H_Left_Margin_nxt_8__N_967), 
           .CD(n7362), .Q(H_Count_Max_nxt[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Count_Max_nxt_11__I_0_i2.GSR = "DISABLED";
    FD1S1I H_Count_Max_nxt_11__I_0_i3 (.D(H_count_max[2]), .CK(H_Left_Margin_nxt_8__N_967), 
           .CD(n7362), .Q(H_Count_Max_nxt[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Count_Max_nxt_11__I_0_i3.GSR = "DISABLED";
    FD1S1I H_Count_Max_nxt_11__I_0_i4 (.D(H_count_max[3]), .CK(H_Left_Margin_nxt_8__N_967), 
           .CD(n7362), .Q(H_Count_Max_nxt[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Count_Max_nxt_11__I_0_i4.GSR = "DISABLED";
    FD1S1I H_Count_Max_nxt_11__I_0_i5 (.D(H_count_max[4]), .CK(H_Left_Margin_nxt_8__N_967), 
           .CD(n7362), .Q(H_Count_Max_nxt[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Count_Max_nxt_11__I_0_i5.GSR = "DISABLED";
    FD1S1A H_Count_Max_nxt_11__I_0_i6 (.D(H_Count_Max_nxt_11__N_1024), .CK(H_Left_Margin_nxt_8__N_967), 
           .Q(H_Count_Max_nxt[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Count_Max_nxt_11__I_0_i6.GSR = "DISABLED";
    FD1S1I H_Count_Max_nxt_11__I_0_i7 (.D(H_count_max[6]), .CK(H_Left_Margin_nxt_8__N_967), 
           .CD(n7362), .Q(H_Count_Max_nxt[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Count_Max_nxt_11__I_0_i7.GSR = "DISABLED";
    FD1S1A H_Count_Max_nxt_11__I_0_i8 (.D(H_Count_Max_nxt_11__N_1022), .CK(H_Left_Margin_nxt_8__N_967), 
           .Q(H_Count_Max_nxt[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Count_Max_nxt_11__I_0_i8.GSR = "DISABLED";
    FD1S1A H_Count_Max_nxt_11__I_0_i9 (.D(H_Count_Max_nxt_11__N_1020), .CK(H_Left_Margin_nxt_8__N_967), 
           .Q(H_Count_Max_nxt[8])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Count_Max_nxt_11__I_0_i9.GSR = "DISABLED";
    FD1S1A H_Count_Max_nxt_11__I_0_i10 (.D(H_Count_Max_nxt_11__N_1019), .CK(H_Left_Margin_nxt_8__N_967), 
           .Q(H_Count_Max_nxt[9])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Count_Max_nxt_11__I_0_i10.GSR = "DISABLED";
    FD1S1A H_Count_Max_nxt_11__I_0_i11 (.D(H_Count_Max_nxt_11__N_1018), .CK(H_Left_Margin_nxt_8__N_967), 
           .Q(H_Count_Max_nxt[10])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Count_Max_nxt_11__I_0_i11.GSR = "DISABLED";
    FD1S1A H_Count_Max_nxt_11__I_0_i12 (.D(H_Count_Max_nxt_11__N_1017), .CK(H_Left_Margin_nxt_8__N_967), 
           .Q(H_Count_Max_nxt[11])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Count_Max_nxt_11__I_0_i12.GSR = "DISABLED";
    FD1S1I H_Left_Margin_nxt_8__I_0_i2 (.D(H_left_margin[1]), .CK(H_Left_Margin_nxt_8__N_967), 
           .CD(n7362), .Q(H_Left_Margin_nxt[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Left_Margin_nxt_8__I_0_i2.GSR = "DISABLED";
    FD1S1A H_Left_Margin_nxt_8__I_0_i3 (.D(H_Left_Margin_nxt_8__N_963), .CK(H_Left_Margin_nxt_8__N_967), 
           .Q(H_Left_Margin_nxt[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Left_Margin_nxt_8__I_0_i3.GSR = "DISABLED";
    FD1S1A H_Left_Margin_nxt_8__I_0_i4 (.D(H_Left_Margin_nxt_8__N_962), .CK(H_Left_Margin_nxt_8__N_967), 
           .Q(H_Left_Margin_nxt[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Left_Margin_nxt_8__I_0_i4.GSR = "DISABLED";
    FD1S1A H_Left_Margin_nxt_8__I_0_i5 (.D(H_Left_Margin_nxt_8__N_961), .CK(H_Left_Margin_nxt_8__N_967), 
           .Q(H_Left_Margin_nxt[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Left_Margin_nxt_8__I_0_i5.GSR = "DISABLED";
    FD1S1A H_Left_Margin_nxt_8__I_0_i6 (.D(H_Left_Margin_nxt_8__N_960), .CK(H_Left_Margin_nxt_8__N_967), 
           .Q(H_Left_Margin_nxt[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Left_Margin_nxt_8__I_0_i6.GSR = "DISABLED";
    FD1S1A H_Left_Margin_nxt_8__I_0_i7 (.D(H_Left_Margin_nxt_8__N_958), .CK(H_Left_Margin_nxt_8__N_967), 
           .Q(H_Left_Margin_nxt[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Left_Margin_nxt_8__I_0_i7.GSR = "DISABLED";
    FD1S1A H_Left_Margin_nxt_8__I_0_i8 (.D(H_Left_Margin_nxt_8__N_956), .CK(H_Left_Margin_nxt_8__N_967), 
           .Q(H_Left_Margin_nxt[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Left_Margin_nxt_8__I_0_i8.GSR = "DISABLED";
    FD1S1A H_Left_Margin_nxt_8__I_0_i9 (.D(H_Left_Margin_nxt_8__N_952), .CK(H_Left_Margin_nxt_8__N_967), 
           .Q(H_Left_Margin_nxt[8])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Left_Margin_nxt_8__I_0_i9.GSR = "DISABLED";
    FD1S1A V_Right_Margin_nxt_9__I_0_i2 (.D(V_Right_Margin_nxt_9__N_999), 
           .CK(H_Left_Margin_nxt_8__N_967), .Q(V_Right_Margin_nxt[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Right_Margin_nxt_9__I_0_i2.GSR = "DISABLED";
    FD1S1I V_Right_Margin_nxt_9__I_0_i3 (.D(V_right_margin[2]), .CK(H_Left_Margin_nxt_8__N_967), 
           .CD(n7362), .Q(V_Right_Margin_nxt[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Right_Margin_nxt_9__I_0_i3.GSR = "DISABLED";
    FD1S1I V_Right_Margin_nxt_9__I_0_i4 (.D(V_right_margin[3]), .CK(H_Left_Margin_nxt_8__N_967), 
           .CD(n7362), .Q(V_Right_Margin_nxt[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Right_Margin_nxt_9__I_0_i4.GSR = "DISABLED";
    FD1S1A V_Right_Margin_nxt_9__I_0_i5 (.D(V_Right_Margin_nxt_9__N_996), 
           .CK(H_Left_Margin_nxt_8__N_967), .Q(V_Right_Margin_nxt[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Right_Margin_nxt_9__I_0_i5.GSR = "DISABLED";
    FD1S1A V_Right_Margin_nxt_9__I_0_i6 (.D(V_Right_Margin_nxt_9__N_995), 
           .CK(H_Left_Margin_nxt_8__N_967), .Q(V_Right_Margin_nxt[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Right_Margin_nxt_9__I_0_i6.GSR = "DISABLED";
    FD1S1A V_Right_Margin_nxt_9__I_0_i7 (.D(V_Right_Margin_nxt_9__N_994), 
           .CK(H_Left_Margin_nxt_8__N_967), .Q(V_Right_Margin_nxt[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Right_Margin_nxt_9__I_0_i7.GSR = "DISABLED";
    FD1S1I V_Right_Margin_nxt_9__I_0_i8 (.D(V_right_margin[7]), .CK(H_Left_Margin_nxt_8__N_967), 
           .CD(n7362), .Q(V_Right_Margin_nxt[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Right_Margin_nxt_9__I_0_i8.GSR = "DISABLED";
    FD1S1A V_Right_Margin_nxt_9__I_0_i9 (.D(V_Right_Margin_nxt_9__N_992), 
           .CK(H_Left_Margin_nxt_8__N_967), .Q(V_Right_Margin_nxt[8])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Right_Margin_nxt_9__I_0_i9.GSR = "DISABLED";
    FD1S1A V_Right_Margin_nxt_9__I_0_i10 (.D(V_Right_Margin_nxt_9__N_991), 
           .CK(H_Left_Margin_nxt_8__N_967), .Q(V_Right_Margin_nxt[9])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Right_Margin_nxt_9__I_0_i10.GSR = "DISABLED";
    FD1S1A V_Sync_Pulse_nxt_7__I_0_i2 (.D(V_Sync_Pulse_nxt_7__N_1015), .CK(H_Left_Margin_nxt_8__N_967), 
           .Q(V_Sync_Pulse_nxt[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Sync_Pulse_nxt_7__I_0_i2.GSR = "DISABLED";
    FD1S1A V_Sync_Pulse_nxt_7__I_0_i3 (.D(V_Sync_Pulse_nxt_7__N_1014), .CK(H_Left_Margin_nxt_8__N_967), 
           .Q(V_Sync_Pulse_nxt[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Sync_Pulse_nxt_7__I_0_i3.GSR = "DISABLED";
    FD1S1I V_Sync_Pulse_nxt_7__I_0_i4 (.D(V_sync_pulse[3]), .CK(H_Left_Margin_nxt_8__N_967), 
           .CD(n7362), .Q(V_Sync_Pulse_nxt[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Sync_Pulse_nxt_7__I_0_i4.GSR = "DISABLED";
    FD1S1I V_Sync_Pulse_nxt_7__I_0_i5 (.D(V_sync_pulse[4]), .CK(H_Left_Margin_nxt_8__N_967), 
           .CD(n7362), .Q(V_Sync_Pulse_nxt[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Sync_Pulse_nxt_7__I_0_i5.GSR = "DISABLED";
    FD1S1I V_Sync_Pulse_nxt_7__I_0_i6 (.D(V_sync_pulse[5]), .CK(H_Left_Margin_nxt_8__N_967), 
           .CD(n7362), .Q(V_Sync_Pulse_nxt[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Sync_Pulse_nxt_7__I_0_i6.GSR = "DISABLED";
    FD1S1I V_Sync_Pulse_nxt_7__I_0_i7 (.D(V_sync_pulse[6]), .CK(H_Left_Margin_nxt_8__N_967), 
           .CD(n7362), .Q(V_Sync_Pulse_nxt[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Sync_Pulse_nxt_7__I_0_i7.GSR = "DISABLED";
    FD1S1I V_Sync_Pulse_nxt_7__I_0_i8 (.D(V_sync_pulse[7]), .CK(H_Left_Margin_nxt_8__N_967), 
           .CD(n7362), .Q(V_Sync_Pulse_nxt[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Sync_Pulse_nxt_7__I_0_i8.GSR = "DISABLED";
    FD1S1A H_Sync_Pulse_nxt_7__I_0_i2 (.D(H_Sync_Pulse_nxt_7__N_1007), .CK(H_Left_Margin_nxt_8__N_967), 
           .Q(H_Sync_Pulse_nxt[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Sync_Pulse_nxt_7__I_0_i2.GSR = "DISABLED";
    FD1S1A H_Sync_Pulse_nxt_7__I_0_i3 (.D(H_Sync_Pulse_nxt_7__N_1006), .CK(H_Left_Margin_nxt_8__N_967), 
           .Q(H_Sync_Pulse_nxt[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Sync_Pulse_nxt_7__I_0_i3.GSR = "DISABLED";
    FD1S1A H_Sync_Pulse_nxt_7__I_0_i4 (.D(H_Sync_Pulse_nxt_7__N_1005), .CK(H_Left_Margin_nxt_8__N_967), 
           .Q(H_Sync_Pulse_nxt[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Sync_Pulse_nxt_7__I_0_i4.GSR = "DISABLED";
    FD1S1A H_Sync_Pulse_nxt_7__I_0_i5 (.D(H_Sync_Pulse_nxt_7__N_1004), .CK(H_Left_Margin_nxt_8__N_967), 
           .Q(H_Sync_Pulse_nxt[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Sync_Pulse_nxt_7__I_0_i5.GSR = "DISABLED";
    FD1S1A H_Sync_Pulse_nxt_7__I_0_i6 (.D(H_Sync_Pulse_nxt_7__N_1003), .CK(H_Left_Margin_nxt_8__N_967), 
           .Q(H_Sync_Pulse_nxt[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Sync_Pulse_nxt_7__I_0_i6.GSR = "DISABLED";
    FD1S1A H_Sync_Pulse_nxt_7__I_0_i7 (.D(H_Sync_Pulse_nxt_7__N_1002), .CK(H_Left_Margin_nxt_8__N_967), 
           .Q(H_Sync_Pulse_nxt[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Sync_Pulse_nxt_7__I_0_i7.GSR = "DISABLED";
    FD1S1A H_Sync_Pulse_nxt_7__I_0_i8 (.D(H_Sync_Pulse_nxt_7__N_1001), .CK(H_Left_Margin_nxt_8__N_967), 
           .Q(H_Sync_Pulse_nxt[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Sync_Pulse_nxt_7__I_0_i8.GSR = "DISABLED";
    FD1S1I H_Right_Margin_nxt_10__I_0_i2 (.D(H_right_margin[1]), .CK(H_Left_Margin_nxt_8__N_967), 
           .CD(n7362), .Q(H_Right_Margin_nxt[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Right_Margin_nxt_10__I_0_i2.GSR = "DISABLED";
    FD1S1I H_Right_Margin_nxt_10__I_0_i3 (.D(H_right_margin[2]), .CK(H_Left_Margin_nxt_8__N_967), 
           .CD(n7362), .Q(H_Right_Margin_nxt[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Right_Margin_nxt_10__I_0_i3.GSR = "DISABLED";
    FD1S1A H_Right_Margin_nxt_10__I_0_i4 (.D(H_Right_Margin_nxt_10__N_987), 
           .CK(H_Left_Margin_nxt_8__N_967), .Q(H_Right_Margin_nxt[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Right_Margin_nxt_10__I_0_i4.GSR = "DISABLED";
    FD1S1A H_Right_Margin_nxt_10__I_0_i5 (.D(H_Right_Margin_nxt_10__N_986), 
           .CK(H_Left_Margin_nxt_8__N_967), .Q(H_Right_Margin_nxt[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Right_Margin_nxt_10__I_0_i5.GSR = "DISABLED";
    FD1S1A H_Right_Margin_nxt_10__I_0_i6 (.D(H_Right_Margin_nxt_10__N_985), 
           .CK(H_Left_Margin_nxt_8__N_967), .Q(H_Right_Margin_nxt[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Right_Margin_nxt_10__I_0_i6.GSR = "DISABLED";
    FD1S1A H_Right_Margin_nxt_10__I_0_i7 (.D(H_Right_Margin_nxt_10__N_984), 
           .CK(H_Left_Margin_nxt_8__N_967), .Q(H_Right_Margin_nxt[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Right_Margin_nxt_10__I_0_i7.GSR = "DISABLED";
    FD1S1A H_Right_Margin_nxt_10__I_0_i8 (.D(H_Right_Margin_nxt_10__N_983), 
           .CK(H_Left_Margin_nxt_8__N_967), .Q(H_Right_Margin_nxt[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Right_Margin_nxt_10__I_0_i8.GSR = "DISABLED";
    FD1S1A H_Right_Margin_nxt_10__I_0_i9 (.D(H_Right_Margin_nxt_10__N_982), 
           .CK(H_Left_Margin_nxt_8__N_967), .Q(H_Right_Margin_nxt[8])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Right_Margin_nxt_10__I_0_i9.GSR = "DISABLED";
    FD1S1A H_Right_Margin_nxt_10__I_0_i10 (.D(H_Right_Margin_nxt_10__N_981), 
           .CK(H_Left_Margin_nxt_8__N_967), .Q(H_Right_Margin_nxt[9])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Right_Margin_nxt_10__I_0_i10.GSR = "DISABLED";
    FD1S1A H_Right_Margin_nxt_10__I_0_i11 (.D(H_Right_Margin_nxt_10__N_980), 
           .CK(H_Left_Margin_nxt_8__N_967), .Q(H_Right_Margin_nxt[10])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam H_Right_Margin_nxt_10__I_0_i11.GSR = "DISABLED";
    FD1S1A V_Left_Margin_nxt_5__I_0_i2 (.D(V_Left_Margin_nxt_5__N_976), .CK(H_Left_Margin_nxt_8__N_967), 
           .Q(V_Left_Margin_nxt[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Left_Margin_nxt_5__I_0_i2.GSR = "DISABLED";
    FD1S1I V_Left_Margin_nxt_5__I_0_i3 (.D(V_left_margin[2]), .CK(H_Left_Margin_nxt_8__N_967), 
           .CD(n7362), .Q(V_Left_Margin_nxt[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Left_Margin_nxt_5__I_0_i3.GSR = "DISABLED";
    FD1S1A V_Left_Margin_nxt_5__I_0_i4 (.D(V_Left_Margin_nxt_5__N_974), .CK(H_Left_Margin_nxt_8__N_967), 
           .Q(V_Left_Margin_nxt[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Left_Margin_nxt_5__I_0_i4.GSR = "DISABLED";
    FD1S1A V_Left_Margin_nxt_5__I_0_i5 (.D(V_Left_Margin_nxt_5__N_973), .CK(H_Left_Margin_nxt_8__N_967), 
           .Q(V_Left_Margin_nxt[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Left_Margin_nxt_5__I_0_i5.GSR = "DISABLED";
    FD1S1A V_Left_Margin_nxt_5__I_0_i6 (.D(V_Left_Margin_nxt_5__N_971), .CK(H_Left_Margin_nxt_8__N_967), 
           .Q(V_Left_Margin_nxt[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(80[2] 143[5])
    defparam V_Left_Margin_nxt_5__I_0_i6.GSR = "DISABLED";
    FD1S3AX H_Right_Margin_reg_i5 (.D(H_Right_Margin_nxt[5]), .CK(clk_c), 
            .Q(H_right_margin[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Right_Margin_reg_i5.GSR = "ENABLED";
    FD1S3AY H_Right_Margin_reg_i4 (.D(H_Right_Margin_nxt[4]), .CK(clk_c), 
            .Q(H_right_margin[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Right_Margin_reg_i4.GSR = "ENABLED";
    FD1S3AX H_Right_Margin_reg_i3 (.D(H_Right_Margin_nxt[3]), .CK(clk_c), 
            .Q(H_right_margin[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Right_Margin_reg_i3.GSR = "ENABLED";
    FD1S3AX H_Right_Margin_reg_i2 (.D(H_Right_Margin_nxt[2]), .CK(clk_c), 
            .Q(H_right_margin[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Right_Margin_reg_i2.GSR = "ENABLED";
    FD1S3AX H_Right_Margin_reg_i1 (.D(H_Right_Margin_nxt[1]), .CK(clk_c), 
            .Q(H_right_margin[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Right_Margin_reg_i1.GSR = "ENABLED";
    FD1S3AY V_Left_Margin_reg_i5 (.D(V_Left_Margin_nxt[5]), .CK(clk_c), 
            .Q(V_left_margin[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Left_Margin_reg_i5.GSR = "ENABLED";
    FD1S3AX V_Left_Margin_reg_i4 (.D(V_Left_Margin_nxt[4]), .CK(clk_c), 
            .Q(V_left_margin[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Left_Margin_reg_i4.GSR = "ENABLED";
    FD1S3AX V_Left_Margin_reg_i3 (.D(V_Left_Margin_nxt[3]), .CK(clk_c), 
            .Q(V_left_margin[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Left_Margin_reg_i3.GSR = "ENABLED";
    FD1S3AX V_Left_Margin_reg_i2 (.D(V_Left_Margin_nxt[2]), .CK(clk_c), 
            .Q(V_left_margin[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Left_Margin_reg_i2.GSR = "ENABLED";
    FD1S3AX V_Left_Margin_reg_i1 (.D(V_Left_Margin_nxt[1]), .CK(clk_c), 
            .Q(V_left_margin[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Left_Margin_reg_i1.GSR = "ENABLED";
    FD1S3AX H_Left_Margin_reg_i8 (.D(H_Left_Margin_nxt[8]), .CK(clk_c), 
            .Q(H_left_margin[8])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Left_Margin_reg_i8.GSR = "ENABLED";
    FD1S3AY H_Left_Margin_reg_i7 (.D(H_Left_Margin_nxt[7]), .CK(clk_c), 
            .Q(H_left_margin[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Left_Margin_reg_i7.GSR = "ENABLED";
    FD1S3AX H_Left_Margin_reg_i6 (.D(H_Left_Margin_nxt[6]), .CK(clk_c), 
            .Q(H_left_margin[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Left_Margin_reg_i6.GSR = "ENABLED";
    FD1S3AX H_Left_Margin_reg_i5 (.D(H_Left_Margin_nxt[5]), .CK(clk_c), 
            .Q(H_left_margin[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Left_Margin_reg_i5.GSR = "ENABLED";
    FD1S3AY H_Left_Margin_reg_i4 (.D(H_Left_Margin_nxt[4]), .CK(clk_c), 
            .Q(H_left_margin[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Left_Margin_reg_i4.GSR = "ENABLED";
    FD1S3AX H_Left_Margin_reg_i3 (.D(H_Left_Margin_nxt[3]), .CK(clk_c), 
            .Q(H_left_margin[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Left_Margin_reg_i3.GSR = "ENABLED";
    FD1S3AX H_Left_Margin_reg_i2 (.D(H_Left_Margin_nxt[2]), .CK(clk_c), 
            .Q(H_left_margin[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Left_Margin_reg_i2.GSR = "ENABLED";
    FD1S3AX H_Left_Margin_reg_i1 (.D(H_Left_Margin_nxt[1]), .CK(clk_c), 
            .Q(H_left_margin[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Left_Margin_reg_i1.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut (.A(c_data_1_derived_1), .B(H_BackPorch_nxt_7__N_780), 
         .C(n2589), .D(n7326), .Z(c_ready_nxt_N_904)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (C+!(D)))) */ ;
    defparam i1_4_lut_4_lut.init = 16'h0700;
    LUT4 H_sync_pulse_4__I_0_3_lut (.A(H_sync_pulse[4]), .B(\c_data[1] ), 
         .C(n7362), .Z(H_Sync_Pulse_nxt_7__N_1004)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(129[3] 139[6])
    defparam H_sync_pulse_4__I_0_3_lut.init = 16'h3a3a;
    FD1S3AY H_Sync_Pulse_reg_i2 (.D(H_Sync_Pulse_nxt[2]), .CK(clk_c), .Q(H_sync_pulse[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Sync_Pulse_reg_i2.GSR = "ENABLED";
    FD1S3AY H_Sync_Pulse_reg_i3 (.D(H_Sync_Pulse_nxt[3]), .CK(clk_c), .Q(H_sync_pulse[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Sync_Pulse_reg_i3.GSR = "ENABLED";
    FD1S3AY H_Sync_Pulse_reg_i4 (.D(H_Sync_Pulse_nxt[4]), .CK(clk_c), .Q(H_sync_pulse[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Sync_Pulse_reg_i4.GSR = "ENABLED";
    FD1S3AX H_Sync_Pulse_reg_i5 (.D(H_Sync_Pulse_nxt[5]), .CK(clk_c), .Q(H_sync_pulse[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Sync_Pulse_reg_i5.GSR = "ENABLED";
    FD1S3AY H_Sync_Pulse_reg_i6 (.D(H_Sync_Pulse_nxt[6]), .CK(clk_c), .Q(H_sync_pulse[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Sync_Pulse_reg_i6.GSR = "ENABLED";
    FD1S3AX H_Sync_Pulse_reg_i7 (.D(H_Sync_Pulse_nxt[7]), .CK(clk_c), .Q(H_sync_pulse[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Sync_Pulse_reg_i7.GSR = "ENABLED";
    FD1S3AX V_Sync_Pulse_reg_i1 (.D(V_Sync_Pulse_nxt[1]), .CK(clk_c), .Q(V_sync_pulse[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Sync_Pulse_reg_i1.GSR = "ENABLED";
    FD1S3AX V_Sync_Pulse_reg_i2 (.D(V_Sync_Pulse_nxt[2]), .CK(clk_c), .Q(V_sync_pulse[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Sync_Pulse_reg_i2.GSR = "ENABLED";
    FD1S3AX V_Sync_Pulse_reg_i3 (.D(V_Sync_Pulse_nxt[3]), .CK(clk_c), .Q(V_sync_pulse[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Sync_Pulse_reg_i3.GSR = "ENABLED";
    FD1S3AX V_Sync_Pulse_reg_i4 (.D(V_Sync_Pulse_nxt[4]), .CK(clk_c), .Q(V_sync_pulse[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Sync_Pulse_reg_i4.GSR = "ENABLED";
    FD1S3AX V_Sync_Pulse_reg_i5 (.D(V_Sync_Pulse_nxt[5]), .CK(clk_c), .Q(V_sync_pulse[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Sync_Pulse_reg_i5.GSR = "ENABLED";
    FD1S3AX V_Sync_Pulse_reg_i6 (.D(V_Sync_Pulse_nxt[6]), .CK(clk_c), .Q(V_sync_pulse[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Sync_Pulse_reg_i6.GSR = "ENABLED";
    FD1S3AX V_Sync_Pulse_reg_i7 (.D(V_Sync_Pulse_nxt[7]), .CK(clk_c), .Q(V_sync_pulse[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Sync_Pulse_reg_i7.GSR = "ENABLED";
    FD1S3AX H_Count_Max_reg_i1 (.D(H_Count_Max_nxt[1]), .CK(clk_c), .Q(H_count_max[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Count_Max_reg_i1.GSR = "ENABLED";
    FD1S3AX H_Count_Max_reg_i2 (.D(H_Count_Max_nxt[2]), .CK(clk_c), .Q(H_count_max[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Count_Max_reg_i2.GSR = "ENABLED";
    FD1S3AX H_Count_Max_reg_i3 (.D(H_Count_Max_nxt[3]), .CK(clk_c), .Q(H_count_max[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Count_Max_reg_i3.GSR = "ENABLED";
    FD1S3AX H_Count_Max_reg_i4 (.D(H_Count_Max_nxt[4]), .CK(clk_c), .Q(H_count_max[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Count_Max_reg_i4.GSR = "ENABLED";
    FD1S3AY H_Count_Max_reg_i5 (.D(H_Count_Max_nxt[5]), .CK(clk_c), .Q(H_count_max[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Count_Max_reg_i5.GSR = "ENABLED";
    FD1S3AX H_Count_Max_reg_i6 (.D(H_Count_Max_nxt[6]), .CK(clk_c), .Q(H_count_max[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Count_Max_reg_i6.GSR = "ENABLED";
    FD1S3AX H_Count_Max_reg_i7 (.D(H_Count_Max_nxt[7]), .CK(clk_c), .Q(H_count_max[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Count_Max_reg_i7.GSR = "ENABLED";
    FD1S3AY H_Count_Max_reg_i8 (.D(H_Count_Max_nxt[8]), .CK(clk_c), .Q(H_count_max[8])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Count_Max_reg_i8.GSR = "ENABLED";
    FD1S3AY H_Count_Max_reg_i9 (.D(H_Count_Max_nxt[9]), .CK(clk_c), .Q(H_count_max[9])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Count_Max_reg_i9.GSR = "ENABLED";
    FD1S3AX H_Count_Max_reg_i10 (.D(H_Count_Max_nxt[10]), .CK(clk_c), .Q(H_count_max[10])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Count_Max_reg_i10.GSR = "ENABLED";
    FD1S3AX H_Count_Max_reg_i11 (.D(H_Count_Max_nxt[11]), .CK(clk_c), .Q(H_count_max[11])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam H_Count_Max_reg_i11.GSR = "ENABLED";
    FD1S3AX V_Count_Max_reg_i1 (.D(V_Count_Max_nxt[1]), .CK(clk_c), .Q(V_count_max[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Count_Max_reg_i1.GSR = "ENABLED";
    FD1S3AY V_Count_Max_reg_i2 (.D(V_Count_Max_nxt[2]), .CK(clk_c), .Q(V_count_max[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Count_Max_reg_i2.GSR = "ENABLED";
    FD1S3AY V_Count_Max_reg_i3 (.D(V_Count_Max_nxt[3]), .CK(clk_c), .Q(V_count_max[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Count_Max_reg_i3.GSR = "ENABLED";
    FD1S3AX V_Count_Max_reg_i4 (.D(V_Count_Max_nxt[4]), .CK(clk_c), .Q(V_count_max[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Count_Max_reg_i4.GSR = "ENABLED";
    FD1S3AX V_Count_Max_reg_i5 (.D(V_Count_Max_nxt[5]), .CK(clk_c), .Q(V_count_max[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Count_Max_reg_i5.GSR = "ENABLED";
    FD1S3AX V_Count_Max_reg_i6 (.D(V_Count_Max_nxt[6]), .CK(clk_c), .Q(V_count_max[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Count_Max_reg_i6.GSR = "ENABLED";
    FD1S3AX V_Count_Max_reg_i7 (.D(V_Count_Max_nxt[7]), .CK(clk_c), .Q(V_count_max[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Count_Max_reg_i7.GSR = "ENABLED";
    FD1S3AX V_Count_Max_reg_i8 (.D(V_Count_Max_nxt[8]), .CK(clk_c), .Q(V_count_max[8])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Count_Max_reg_i8.GSR = "ENABLED";
    FD1S3AY V_Count_Max_reg_i9 (.D(V_Count_Max_nxt[9]), .CK(clk_c), .Q(V_count_max[9])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Count_Max_reg_i9.GSR = "ENABLED";
    FD1S3AX V_Count_Max_reg_i10 (.D(V_Count_Max_nxt[10]), .CK(clk_c), .Q(V_count_max[10])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Count_Max_reg_i10.GSR = "ENABLED";
    FD1S3AX V_Count_Max_reg_i11 (.D(V_Count_Max_nxt[11]), .CK(clk_c), .Q(V_count_max[11])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=34, LSE_LLINE=44, LSE_RLINE=57 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(67[3] 77[6])
    defparam V_Count_Max_reg_i11.GSR = "ENABLED";
    LUT4 i6027_2_lut_rep_135 (.A(\c_data[0] ), .B(\c_data[1] ), .Z(c_data_1_derived_1)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i6027_2_lut_rep_135.init = 16'h7777;
    LUT4 V_left_margin_0__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n7362), .D(V_left_margin[0]), .Z(V_Left_Margin_nxt_5__N_978)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam V_left_margin_0__I_0_3_lut_4_lut.init = 16'h7f70;
    LUT4 V_right_margin_0__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n7362), .D(V_right_margin[0]), .Z(V_Right_Margin_nxt_9__N_1000)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam V_right_margin_0__I_0_3_lut_4_lut.init = 16'h7f70;
    LUT4 i5995_2_lut_2_lut_3_lut (.A(\c_data[0] ), .B(\c_data[1] ), .C(n7362), 
         .Z(H_Left_Margin_nxt_8__N_967)) /* synthesis lut_function=(!(A (B (C)))) */ ;
    defparam i5995_2_lut_2_lut_3_lut.init = 16'h7f7f;
    LUT4 i6056_2_lut_3_lut (.A(\c_data[0] ), .B(\c_data[1] ), .C(\c_data[2] ), 
         .Z(\baudrate_next_23__N_262[0] )) /* synthesis lut_function=(!(A (B+(C))+!A (C))) */ ;
    defparam i6056_2_lut_3_lut.init = 16'h0707;
    LUT4 V_count_max_2__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n7362), .D(V_count_max[2]), .Z(V_Count_Max_nxt_11__N_1039)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam V_count_max_2__I_0_3_lut_4_lut.init = 16'h7f70;
    LUT4 V_count_max_9__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n7362), .D(V_count_max[9]), .Z(V_Count_Max_nxt_11__N_1032)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam V_count_max_9__I_0_3_lut_4_lut.init = 16'h7f70;
    LUT4 V_right_margin_9__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n7362), .D(V_right_margin[9]), .Z(V_Right_Margin_nxt_9__N_991)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam V_right_margin_9__I_0_3_lut_4_lut.init = 16'h7f70;
    LUT4 H_sync_pulse_1__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n7362), .D(H_sync_pulse[1]), .Z(H_Sync_Pulse_nxt_7__N_1007)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam H_sync_pulse_1__I_0_3_lut_4_lut.init = 16'h7f70;
    LUT4 H_sync_pulse_2__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n7362), .D(H_sync_pulse[2]), .Z(H_Sync_Pulse_nxt_7__N_1006)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam H_sync_pulse_2__I_0_3_lut_4_lut.init = 16'h7f70;
    LUT4 H_right_margin_8__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n7362), .D(H_right_margin[8]), .Z(H_Right_Margin_nxt_10__N_982)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam H_right_margin_8__I_0_3_lut_4_lut.init = 16'h7f70;
    LUT4 i2_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), .C(H_BackPorch_nxt_7__N_780), 
         .D(button_signal_DEBUG_VGA), .Z(clk_c_enable_89)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((D)+!C))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0070;
    LUT4 H_count_max_5__I_0_3_lut (.A(H_count_max[5]), .B(\c_data[1] ), 
         .C(n7362), .Z(H_Count_Max_nxt_11__N_1024)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(129[3] 139[6])
    defparam H_count_max_5__I_0_3_lut.init = 16'h3a3a;
    LUT4 i3197_2_lut_rep_146 (.A(\c_data[0] ), .B(\c_data[1] ), .Z(n7358)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3197_2_lut_rep_146.init = 16'heeee;
    LUT4 i3198_1_lut_2_lut (.A(\c_data[0] ), .B(\c_data[1] ), .Z(H_Count_Max_nxt_11__N_1021)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i3198_1_lut_2_lut.init = 16'h1111;
    LUT4 H_count_max_8__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n7362), .D(H_count_max[8]), .Z(H_Count_Max_nxt_11__N_1020)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam H_count_max_8__I_0_3_lut_4_lut.init = 16'h1f10;
    LUT4 V_count_max_3__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n7362), .D(V_count_max[3]), .Z(V_Count_Max_nxt_11__N_1038)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam V_count_max_3__I_0_3_lut_4_lut.init = 16'h1f10;
    LUT4 V_count_max_1__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n7362), .D(V_count_max[1]), .Z(V_Count_Max_nxt_11__N_1040)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam V_count_max_1__I_0_3_lut_4_lut.init = 16'h4f40;
    LUT4 V_count_max_8__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n7362), .D(V_count_max[8]), .Z(V_Count_Max_nxt_11__N_1033)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam V_count_max_8__I_0_3_lut_4_lut.init = 16'h4f40;
    LUT4 H_count_max_7__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n7362), .D(H_count_max[7]), .Z(H_Count_Max_nxt_11__N_1022)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_count_max_7__I_0_3_lut_4_lut.init = 16'h4f40;
    LUT4 H_count_max_11__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n7362), .D(H_count_max[11]), .Z(H_Count_Max_nxt_11__N_1017)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_count_max_11__I_0_3_lut_4_lut.init = 16'h4f40;
    LUT4 H_count_max_9__I_0_3_lut (.A(H_count_max[9]), .B(\c_data[0] ), 
         .C(n7362), .Z(H_Count_Max_nxt_11__N_1019)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(129[3] 139[6])
    defparam H_count_max_9__I_0_3_lut.init = 16'h3a3a;
    LUT4 H_left_margin_3__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n7362), .D(H_left_margin[3]), .Z(H_Left_Margin_nxt_8__N_962)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_left_margin_3__I_0_3_lut_4_lut.init = 16'h4f40;
    LUT4 H_left_margin_5__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n7362), .D(H_left_margin[5]), .Z(H_Left_Margin_nxt_8__N_960)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_left_margin_5__I_0_3_lut_4_lut.init = 16'h4f40;
    LUT4 H_left_margin_8__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n7362), .D(H_left_margin[8]), .Z(H_Left_Margin_nxt_8__N_952)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_left_margin_8__I_0_3_lut_4_lut.init = 16'h4f40;
    LUT4 V_right_margin_8__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n7362), .D(V_right_margin[8]), .Z(V_Right_Margin_nxt_9__N_992)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam V_right_margin_8__I_0_3_lut_4_lut.init = 16'h4f40;
    LUT4 V_sync_pulse_2__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n7362), .D(V_sync_pulse[2]), .Z(V_Sync_Pulse_nxt_7__N_1014)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam V_sync_pulse_2__I_0_3_lut_4_lut.init = 16'h4f40;
    LUT4 H_sync_pulse_7__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n7362), .D(H_sync_pulse[7]), .Z(H_Sync_Pulse_nxt_7__N_1001)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_sync_pulse_7__I_0_3_lut_4_lut.init = 16'h4f40;
    LUT4 H_right_margin_10__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n7362), .D(H_right_margin[10]), .Z(H_Right_Margin_nxt_10__N_980)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cm_assign_data.v(146[5] 177[12])
    defparam H_right_margin_10__I_0_3_lut_4_lut.init = 16'h4f40;
    LUT4 H_left_margin_4__I_0_3_lut (.A(H_left_margin[4]), .B(\c_data[1] ), 
         .C(n7362), .Z(H_Left_Margin_nxt_8__N_961)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(129[3] 139[6])
    defparam H_left_margin_4__I_0_3_lut.init = 16'h3a3a;
    LUT4 H_left_margin_7__I_0_3_lut (.A(H_left_margin[7]), .B(\c_data[1] ), 
         .C(n7362), .Z(H_Left_Margin_nxt_8__N_956)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(129[3] 139[6])
    defparam H_left_margin_7__I_0_3_lut.init = 16'h3a3a;
    LUT4 i2_3_lut_rep_150 (.A(c_valid), .B(\c_addr[3] ), .C(\c_addr[2] ), 
         .Z(n7362)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_rep_150.init = 16'h8080;
    LUT4 Load_nxt_I_0_2_lut_4_lut (.A(c_valid), .B(\c_addr[3] ), .C(\c_addr[2] ), 
         .D(Load_config), .Z(Load_nxt_N_1042)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam Load_nxt_I_0_2_lut_4_lut.init = 16'hff7f;
    LUT4 H_sync_pulse_6__I_0_3_lut (.A(H_sync_pulse[6]), .B(\c_data[1] ), 
         .C(n7362), .Z(H_Sync_Pulse_nxt_7__N_1002)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(129[3] 139[6])
    defparam H_sync_pulse_6__I_0_3_lut.init = 16'h3a3a;
    LUT4 H_sync_pulse_3__I_0_3_lut (.A(H_sync_pulse[3]), .B(\c_data[1] ), 
         .C(n7362), .Z(H_Sync_Pulse_nxt_7__N_1005)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(129[3] 139[6])
    defparam H_sync_pulse_3__I_0_3_lut.init = 16'h3a3a;
    LUT4 H_right_margin_4__I_0_3_lut (.A(H_right_margin[4]), .B(\c_data[1] ), 
         .C(n7362), .Z(H_Right_Margin_nxt_10__N_986)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(129[3] 139[6])
    defparam H_right_margin_4__I_0_3_lut.init = 16'h3a3a;
    LUT4 H_right_margin_9__I_0_3_lut (.A(H_right_margin[9]), .B(\c_data[1] ), 
         .C(n7362), .Z(H_Right_Margin_nxt_10__N_981)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_config.v(129[3] 139[6])
    defparam H_right_margin_9__I_0_3_lut.init = 16'h3a3a;
    
endmodule
//
// Verilog Description of module VGA_Assign_color
//

module VGA_Assign_color (clk_c, Data_VGA, GREEN_c_0, BLUE_c_2, BLUE_c_1, 
            BLUE_c_0, Count_h, GND_net, H_right_margin, Count_v, V_right_margin, 
            GREEN_c_1, BLUE_c_3, GREEN_c_2, GREEN_c_3, RED_c_0, RED_c_1, 
            RED_c_2, n1417, Active_nxt_N_1066, n6758, RED_c_3) /* synthesis syn_module_defined=1 */ ;
    input clk_c;
    input [11:0]Data_VGA;
    output GREEN_c_0;
    output BLUE_c_2;
    output BLUE_c_1;
    output BLUE_c_0;
    input [11:0]Count_h;
    input GND_net;
    input [10:0]H_right_margin;
    input [11:0]Count_v;
    input [9:0]V_right_margin;
    output GREEN_c_1;
    output BLUE_c_3;
    output GREEN_c_2;
    output GREEN_c_3;
    output RED_c_0;
    output RED_c_1;
    output RED_c_2;
    input n1417;
    input Active_nxt_N_1066;
    input n6758;
    output RED_c_3;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    
    wire Active_reg, Active_nxt, n6246, Active_nxt_N_1065, n6245, 
        n6244, n6243, n6242, n6241, n6235, Active_nxt_N_1067, n6234, 
        n6233, n6232, n6231, n6230, n6;
    
    FD1S3AX Active_reg_17 (.D(Active_nxt), .CK(clk_c), .Q(Active_reg)) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=19, LSE_RCOL=20, LSE_LLINE=74, LSE_RLINE=85 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(31[8] 33[6])
    defparam Active_reg_17.GSR = "ENABLED";
    LUT4 i2988_2_lut (.A(Data_VGA[4]), .B(Active_reg), .Z(GREEN_c_0)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(46[20:49])
    defparam i2988_2_lut.init = 16'h8888;
    LUT4 i3075_2_lut (.A(Data_VGA[10]), .B(Active_reg), .Z(BLUE_c_2)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(47[20:49])
    defparam i3075_2_lut.init = 16'h8888;
    LUT4 i3076_2_lut (.A(Data_VGA[9]), .B(Active_reg), .Z(BLUE_c_1)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(47[20:49])
    defparam i3076_2_lut.init = 16'h8888;
    LUT4 i2989_2_lut (.A(Data_VGA[8]), .B(Active_reg), .Z(BLUE_c_0)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(47[20:49])
    defparam i2989_2_lut.init = 16'h8888;
    CCU2D sub_823_add_2_13 (.A0(Count_h[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6246), .S1(Active_nxt_N_1065));
    defparam sub_823_add_2_13.INIT0 = 16'hf555;
    defparam sub_823_add_2_13.INIT1 = 16'h0000;
    defparam sub_823_add_2_13.INJECT1_0 = "NO";
    defparam sub_823_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_823_add_2_11 (.A0(H_right_margin[9]), .B0(Count_h[9]), .C0(GND_net), 
          .D0(GND_net), .A1(H_right_margin[10]), .B1(Count_h[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n6245), .COUT(n6246));
    defparam sub_823_add_2_11.INIT0 = 16'h5999;
    defparam sub_823_add_2_11.INIT1 = 16'h5999;
    defparam sub_823_add_2_11.INJECT1_0 = "NO";
    defparam sub_823_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_823_add_2_9 (.A0(H_right_margin[7]), .B0(Count_h[7]), .C0(GND_net), 
          .D0(GND_net), .A1(H_right_margin[8]), .B1(Count_h[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n6244), .COUT(n6245));
    defparam sub_823_add_2_9.INIT0 = 16'h5999;
    defparam sub_823_add_2_9.INIT1 = 16'h5999;
    defparam sub_823_add_2_9.INJECT1_0 = "NO";
    defparam sub_823_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_823_add_2_7 (.A0(H_right_margin[5]), .B0(Count_h[5]), .C0(GND_net), 
          .D0(GND_net), .A1(H_right_margin[6]), .B1(Count_h[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n6243), .COUT(n6244));
    defparam sub_823_add_2_7.INIT0 = 16'h5999;
    defparam sub_823_add_2_7.INIT1 = 16'h5999;
    defparam sub_823_add_2_7.INJECT1_0 = "NO";
    defparam sub_823_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_823_add_2_5 (.A0(H_right_margin[3]), .B0(Count_h[3]), .C0(GND_net), 
          .D0(GND_net), .A1(H_right_margin[4]), .B1(Count_h[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n6242), .COUT(n6243));
    defparam sub_823_add_2_5.INIT0 = 16'h5999;
    defparam sub_823_add_2_5.INIT1 = 16'h5999;
    defparam sub_823_add_2_5.INJECT1_0 = "NO";
    defparam sub_823_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_823_add_2_3 (.A0(H_right_margin[1]), .B0(Count_h[1]), .C0(GND_net), 
          .D0(GND_net), .A1(H_right_margin[2]), .B1(Count_h[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n6241), .COUT(n6242));
    defparam sub_823_add_2_3.INIT0 = 16'h5999;
    defparam sub_823_add_2_3.INIT1 = 16'h5999;
    defparam sub_823_add_2_3.INJECT1_0 = "NO";
    defparam sub_823_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_823_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(H_right_margin[0]), .B1(Count_h[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n6241));
    defparam sub_823_add_2_1.INIT0 = 16'h0000;
    defparam sub_823_add_2_1.INIT1 = 16'h5999;
    defparam sub_823_add_2_1.INJECT1_0 = "NO";
    defparam sub_823_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_824_add_2_13 (.A0(Count_v[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6235), .S1(Active_nxt_N_1067));
    defparam sub_824_add_2_13.INIT0 = 16'hf555;
    defparam sub_824_add_2_13.INIT1 = 16'h0000;
    defparam sub_824_add_2_13.INJECT1_0 = "NO";
    defparam sub_824_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_824_add_2_11 (.A0(V_right_margin[9]), .B0(Count_v[9]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_v[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6234), .COUT(n6235));
    defparam sub_824_add_2_11.INIT0 = 16'h5999;
    defparam sub_824_add_2_11.INIT1 = 16'hf555;
    defparam sub_824_add_2_11.INJECT1_0 = "NO";
    defparam sub_824_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_824_add_2_9 (.A0(V_right_margin[7]), .B0(Count_v[7]), .C0(GND_net), 
          .D0(GND_net), .A1(V_right_margin[8]), .B1(Count_v[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n6233), .COUT(n6234));
    defparam sub_824_add_2_9.INIT0 = 16'h5999;
    defparam sub_824_add_2_9.INIT1 = 16'h5999;
    defparam sub_824_add_2_9.INJECT1_0 = "NO";
    defparam sub_824_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_824_add_2_7 (.A0(V_right_margin[5]), .B0(Count_v[5]), .C0(GND_net), 
          .D0(GND_net), .A1(V_right_margin[6]), .B1(Count_v[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n6232), .COUT(n6233));
    defparam sub_824_add_2_7.INIT0 = 16'h5999;
    defparam sub_824_add_2_7.INIT1 = 16'h5999;
    defparam sub_824_add_2_7.INJECT1_0 = "NO";
    defparam sub_824_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_824_add_2_5 (.A0(V_right_margin[3]), .B0(Count_v[3]), .C0(GND_net), 
          .D0(GND_net), .A1(V_right_margin[4]), .B1(Count_v[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n6231), .COUT(n6232));
    defparam sub_824_add_2_5.INIT0 = 16'h5999;
    defparam sub_824_add_2_5.INIT1 = 16'h5999;
    defparam sub_824_add_2_5.INJECT1_0 = "NO";
    defparam sub_824_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_824_add_2_3 (.A0(V_right_margin[1]), .B0(Count_v[1]), .C0(GND_net), 
          .D0(GND_net), .A1(V_right_margin[2]), .B1(Count_v[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n6230), .COUT(n6231));
    defparam sub_824_add_2_3.INIT0 = 16'h5999;
    defparam sub_824_add_2_3.INIT1 = 16'h5999;
    defparam sub_824_add_2_3.INJECT1_0 = "NO";
    defparam sub_824_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_824_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(V_right_margin[0]), .B1(Count_v[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n6230));
    defparam sub_824_add_2_1.INIT0 = 16'h0000;
    defparam sub_824_add_2_1.INIT1 = 16'h5999;
    defparam sub_824_add_2_1.INJECT1_0 = "NO";
    defparam sub_824_add_2_1.INJECT1_1 = "NO";
    LUT4 i3079_2_lut (.A(Data_VGA[5]), .B(Active_reg), .Z(GREEN_c_1)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(46[20:49])
    defparam i3079_2_lut.init = 16'h8888;
    LUT4 i3074_2_lut (.A(Data_VGA[11]), .B(Active_reg), .Z(BLUE_c_3)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(47[20:49])
    defparam i3074_2_lut.init = 16'h8888;
    LUT4 i3078_2_lut (.A(Data_VGA[6]), .B(Active_reg), .Z(GREEN_c_2)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(46[20:49])
    defparam i3078_2_lut.init = 16'h8888;
    LUT4 i3077_2_lut (.A(Data_VGA[7]), .B(Active_reg), .Z(GREEN_c_3)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(46[20:49])
    defparam i3077_2_lut.init = 16'h8888;
    LUT4 i2987_2_lut (.A(Data_VGA[0]), .B(Active_reg), .Z(RED_c_0)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(45[17:46])
    defparam i2987_2_lut.init = 16'h8888;
    LUT4 i3082_2_lut (.A(Data_VGA[1]), .B(Active_reg), .Z(RED_c_1)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(45[17:46])
    defparam i3082_2_lut.init = 16'h8888;
    LUT4 i3081_2_lut (.A(Data_VGA[2]), .B(Active_reg), .Z(RED_c_2)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(45[17:46])
    defparam i3081_2_lut.init = 16'h8888;
    LUT4 i3_4_lut (.A(n1417), .B(n6), .C(Active_nxt_N_1066), .D(n6758), 
         .Z(Active_nxt)) /* synthesis lut_function=(A (B (C))+!A (B (C (D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(38[6:108])
    defparam i3_4_lut.init = 16'hc080;
    LUT4 i2_2_lut (.A(Active_nxt_N_1067), .B(Active_nxt_N_1065), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(38[6:108])
    defparam i2_2_lut.init = 16'h8888;
    LUT4 i3080_2_lut (.A(Data_VGA[3]), .B(Active_reg), .Z(RED_c_3)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_assign_color.v(45[17:46])
    defparam i3080_2_lut.init = 16'h8888;
    
endmodule
//
// Verilog Description of module VGA_Counter
//

module VGA_Counter (VSYNC_c, HSYNC_c, Count_h_11__N_948, Count_v, GND_net, 
            V_count_max, n3044, n1115, n6752, rst_n_c, Load_config) /* synthesis syn_module_defined=1 */ ;
    output VSYNC_c;
    input HSYNC_c;
    output Count_h_11__N_948;
    output [11:0]Count_v;
    input GND_net;
    input [11:0]V_count_max;
    output n3044;
    input n1115;
    input n6752;
    input rst_n_c;
    input Load_config;
    
    wire HSYNC_c /* synthesis SET_AS_NETWORK=HSYNC_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(17[8:13])
    
    wire n1767;
    wire [11:0]n53;
    
    wire n1498;
    wire [11:0]n67;
    
    wire n6258, n6257, n6256, n6255, n6254, n6253, n6252, n6251, 
        n6250, n6249, n6248, n6247;
    
    FD1S3DX Sync_State_reg_13 (.D(n1767), .CK(HSYNC_c), .CD(Count_h_11__N_948), 
            .Q(VSYNC_c)) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=14, LSE_RCOL=25, LSE_LLINE=67, LSE_RLINE=72 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(31[3] 34[6])
    defparam Sync_State_reg_13.GSR = "DISABLED";
    LUT4 i3019_2_lut (.A(n53[0]), .B(n1498), .Z(n67[0])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i3019_2_lut.init = 16'h2222;
    FD1S3DX Count_reg_988__i0 (.D(n67[0]), .CK(HSYNC_c), .CD(Count_h_11__N_948), 
            .Q(Count_v[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_988__i0.GSR = "DISABLED";
    LUT4 i3137_2_lut (.A(n53[1]), .B(n1498), .Z(n67[1])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i3137_2_lut.init = 16'h2222;
    LUT4 i3138_2_lut (.A(n53[2]), .B(n1498), .Z(n67[2])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i3138_2_lut.init = 16'h2222;
    LUT4 i3139_2_lut (.A(n53[3]), .B(n1498), .Z(n67[3])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i3139_2_lut.init = 16'h2222;
    LUT4 i3140_2_lut (.A(n53[4]), .B(n1498), .Z(n67[4])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i3140_2_lut.init = 16'h2222;
    LUT4 i3141_2_lut (.A(n53[5]), .B(n1498), .Z(n67[5])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i3141_2_lut.init = 16'h2222;
    LUT4 i3142_2_lut (.A(n53[6]), .B(n1498), .Z(n67[6])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i3142_2_lut.init = 16'h2222;
    LUT4 i3143_2_lut (.A(n53[7]), .B(n1498), .Z(n67[7])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i3143_2_lut.init = 16'h2222;
    LUT4 i3144_2_lut (.A(n53[8]), .B(n1498), .Z(n67[8])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i3144_2_lut.init = 16'h2222;
    LUT4 i3145_2_lut (.A(n53[9]), .B(n1498), .Z(n67[9])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i3145_2_lut.init = 16'h2222;
    LUT4 i3146_2_lut (.A(n53[10]), .B(n1498), .Z(n67[10])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i3146_2_lut.init = 16'h2222;
    LUT4 i3147_2_lut (.A(n53[11]), .B(n1498), .Z(n67[11])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i3147_2_lut.init = 16'h2222;
    CCU2D Count_reg_988_add_4_13 (.A0(Count_v[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6258), .S0(n53[11]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_988_add_4_13.INIT0 = 16'hfaaa;
    defparam Count_reg_988_add_4_13.INIT1 = 16'h0000;
    defparam Count_reg_988_add_4_13.INJECT1_0 = "NO";
    defparam Count_reg_988_add_4_13.INJECT1_1 = "NO";
    CCU2D Count_reg_988_add_4_11 (.A0(Count_v[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_v[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6257), .COUT(n6258), .S0(n53[9]), .S1(n53[10]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_988_add_4_11.INIT0 = 16'hfaaa;
    defparam Count_reg_988_add_4_11.INIT1 = 16'hfaaa;
    defparam Count_reg_988_add_4_11.INJECT1_0 = "NO";
    defparam Count_reg_988_add_4_11.INJECT1_1 = "NO";
    CCU2D Count_reg_988_add_4_9 (.A0(Count_v[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_v[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6256), .COUT(n6257), .S0(n53[7]), .S1(n53[8]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_988_add_4_9.INIT0 = 16'hfaaa;
    defparam Count_reg_988_add_4_9.INIT1 = 16'hfaaa;
    defparam Count_reg_988_add_4_9.INJECT1_0 = "NO";
    defparam Count_reg_988_add_4_9.INJECT1_1 = "NO";
    CCU2D Count_reg_988_add_4_7 (.A0(Count_v[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_v[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6255), .COUT(n6256), .S0(n53[5]), .S1(n53[6]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_988_add_4_7.INIT0 = 16'hfaaa;
    defparam Count_reg_988_add_4_7.INIT1 = 16'hfaaa;
    defparam Count_reg_988_add_4_7.INJECT1_0 = "NO";
    defparam Count_reg_988_add_4_7.INJECT1_1 = "NO";
    CCU2D Count_reg_988_add_4_5 (.A0(Count_v[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_v[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6254), .COUT(n6255), .S0(n53[3]), .S1(n53[4]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_988_add_4_5.INIT0 = 16'hfaaa;
    defparam Count_reg_988_add_4_5.INIT1 = 16'hfaaa;
    defparam Count_reg_988_add_4_5.INJECT1_0 = "NO";
    defparam Count_reg_988_add_4_5.INJECT1_1 = "NO";
    CCU2D Count_reg_988_add_4_3 (.A0(Count_v[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_v[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6253), .COUT(n6254), .S0(n53[1]), .S1(n53[2]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_988_add_4_3.INIT0 = 16'hfaaa;
    defparam Count_reg_988_add_4_3.INIT1 = 16'hfaaa;
    defparam Count_reg_988_add_4_3.INJECT1_0 = "NO";
    defparam Count_reg_988_add_4_3.INJECT1_1 = "NO";
    CCU2D Count_reg_988_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_v[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n6253), .S1(n53[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_988_add_4_1.INIT0 = 16'hF000;
    defparam Count_reg_988_add_4_1.INIT1 = 16'h0555;
    defparam Count_reg_988_add_4_1.INJECT1_0 = "NO";
    defparam Count_reg_988_add_4_1.INJECT1_1 = "NO";
    CCU2D sub_821_add_2_13 (.A0(Count_v[11]), .B0(V_count_max[11]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6252), .S1(n1498));
    defparam sub_821_add_2_13.INIT0 = 16'h5999;
    defparam sub_821_add_2_13.INIT1 = 16'h0000;
    defparam sub_821_add_2_13.INJECT1_0 = "NO";
    defparam sub_821_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_821_add_2_11 (.A0(Count_v[9]), .B0(V_count_max[9]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_v[10]), .B1(V_count_max[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n6251), .COUT(n6252));
    defparam sub_821_add_2_11.INIT0 = 16'h5999;
    defparam sub_821_add_2_11.INIT1 = 16'h5999;
    defparam sub_821_add_2_11.INJECT1_0 = "NO";
    defparam sub_821_add_2_11.INJECT1_1 = "NO";
    LUT4 i2269_1_lut (.A(VSYNC_c), .Z(n3044)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(31[3] 34[6])
    defparam i2269_1_lut.init = 16'h5555;
    CCU2D sub_821_add_2_9 (.A0(Count_v[7]), .B0(V_count_max[7]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_v[8]), .B1(V_count_max[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n6250), .COUT(n6251));
    defparam sub_821_add_2_9.INIT0 = 16'h5999;
    defparam sub_821_add_2_9.INIT1 = 16'h5999;
    defparam sub_821_add_2_9.INJECT1_0 = "NO";
    defparam sub_821_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_821_add_2_7 (.A0(Count_v[5]), .B0(V_count_max[5]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_v[6]), .B1(V_count_max[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n6249), .COUT(n6250));
    defparam sub_821_add_2_7.INIT0 = 16'h5999;
    defparam sub_821_add_2_7.INIT1 = 16'h5999;
    defparam sub_821_add_2_7.INJECT1_0 = "NO";
    defparam sub_821_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_821_add_2_5 (.A0(Count_v[3]), .B0(V_count_max[3]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_v[4]), .B1(V_count_max[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n6248), .COUT(n6249));
    defparam sub_821_add_2_5.INIT0 = 16'h5999;
    defparam sub_821_add_2_5.INIT1 = 16'h5999;
    defparam sub_821_add_2_5.INJECT1_0 = "NO";
    defparam sub_821_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_821_add_2_3 (.A0(Count_v[1]), .B0(V_count_max[1]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_v[2]), .B1(V_count_max[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n6247), .COUT(n6248));
    defparam sub_821_add_2_3.INIT0 = 16'h5999;
    defparam sub_821_add_2_3.INIT1 = 16'h5999;
    defparam sub_821_add_2_3.INJECT1_0 = "NO";
    defparam sub_821_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_821_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Count_v[0]), .B1(V_count_max[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n6247));
    defparam sub_821_add_2_1.INIT0 = 16'h0000;
    defparam sub_821_add_2_1.INIT1 = 16'h5999;
    defparam sub_821_add_2_1.INJECT1_0 = "NO";
    defparam sub_821_add_2_1.INJECT1_1 = "NO";
    FD1S3DX Count_reg_988__i1 (.D(n67[1]), .CK(HSYNC_c), .CD(Count_h_11__N_948), 
            .Q(Count_v[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_988__i1.GSR = "DISABLED";
    FD1S3DX Count_reg_988__i2 (.D(n67[2]), .CK(HSYNC_c), .CD(Count_h_11__N_948), 
            .Q(Count_v[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_988__i2.GSR = "DISABLED";
    FD1S3DX Count_reg_988__i3 (.D(n67[3]), .CK(HSYNC_c), .CD(Count_h_11__N_948), 
            .Q(Count_v[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_988__i3.GSR = "DISABLED";
    FD1S3DX Count_reg_988__i4 (.D(n67[4]), .CK(HSYNC_c), .CD(Count_h_11__N_948), 
            .Q(Count_v[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_988__i4.GSR = "DISABLED";
    FD1S3DX Count_reg_988__i5 (.D(n67[5]), .CK(HSYNC_c), .CD(Count_h_11__N_948), 
            .Q(Count_v[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_988__i5.GSR = "DISABLED";
    FD1S3DX Count_reg_988__i6 (.D(n67[6]), .CK(HSYNC_c), .CD(Count_h_11__N_948), 
            .Q(Count_v[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_988__i6.GSR = "DISABLED";
    FD1S3DX Count_reg_988__i7 (.D(n67[7]), .CK(HSYNC_c), .CD(Count_h_11__N_948), 
            .Q(Count_v[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_988__i7.GSR = "DISABLED";
    FD1S3DX Count_reg_988__i8 (.D(n67[8]), .CK(HSYNC_c), .CD(Count_h_11__N_948), 
            .Q(Count_v[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_988__i8.GSR = "DISABLED";
    FD1S3DX Count_reg_988__i9 (.D(n67[9]), .CK(HSYNC_c), .CD(Count_h_11__N_948), 
            .Q(Count_v[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_988__i9.GSR = "DISABLED";
    FD1S3DX Count_reg_988__i10 (.D(n67[10]), .CK(HSYNC_c), .CD(Count_h_11__N_948), 
            .Q(Count_v[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_988__i10.GSR = "DISABLED";
    FD1S3DX Count_reg_988__i11 (.D(n67[11]), .CK(HSYNC_c), .CD(Count_h_11__N_948), 
            .Q(Count_v[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_988__i11.GSR = "DISABLED";
    LUT4 i2952_3_lut (.A(n1115), .B(n1498), .C(n6752), .Z(n1767)) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(31[3] 34[6])
    defparam i2952_3_lut.init = 16'h3232;
    LUT4 i5983_2_lut (.A(rst_n_c), .B(Load_config), .Z(Count_h_11__N_948)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(25[6:12])
    defparam i5983_2_lut.init = 16'h1111;
    
endmodule
//
// Verilog Description of module VGA_Counter_U0
//

module VGA_Counter_U0 (HSYNC_c, clk_c, Count_h_11__N_948, Count_h, GND_net, 
            n3046, H_count_max, n6758, n1112) /* synthesis syn_module_defined=1 */ ;
    output HSYNC_c;
    input clk_c;
    input Count_h_11__N_948;
    output [11:0]Count_h;
    input GND_net;
    output n3046;
    input [11:0]H_count_max;
    input n6758;
    input n1112;
    
    wire HSYNC_c /* synthesis SET_AS_NETWORK=HSYNC_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(17[8:13])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    
    wire n1769, n6261;
    wire [11:0]n53;
    
    wire n6262, n6260, n1483;
    wire [11:0]n67;
    
    wire n6171, n6170, n6259, n6169, n6168, n6167, n6166, n6264, 
        n6263;
    
    FD1S3DX Sync_State_reg_13 (.D(n1769), .CK(clk_c), .CD(Count_h_11__N_948), 
            .Q(HSYNC_c)) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=14, LSE_RCOL=25, LSE_LLINE=60, LSE_RLINE=65 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(31[3] 34[6])
    defparam Sync_State_reg_13.GSR = "DISABLED";
    CCU2D Count_reg_987_add_4_7 (.A0(Count_h[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6261), .COUT(n6262), .S0(n53[5]), .S1(n53[6]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_987_add_4_7.INIT0 = 16'hfaaa;
    defparam Count_reg_987_add_4_7.INIT1 = 16'hfaaa;
    defparam Count_reg_987_add_4_7.INJECT1_0 = "NO";
    defparam Count_reg_987_add_4_7.INJECT1_1 = "NO";
    CCU2D Count_reg_987_add_4_5 (.A0(Count_h[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6260), .COUT(n6261), .S0(n53[3]), .S1(n53[4]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_987_add_4_5.INIT0 = 16'hfaaa;
    defparam Count_reg_987_add_4_5.INIT1 = 16'hfaaa;
    defparam Count_reg_987_add_4_5.INJECT1_0 = "NO";
    defparam Count_reg_987_add_4_5.INJECT1_1 = "NO";
    LUT4 i2271_1_lut (.A(HSYNC_c), .Z(n3046)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(31[3] 34[6])
    defparam i2271_1_lut.init = 16'h5555;
    LUT4 i3020_2_lut (.A(n53[0]), .B(n1483), .Z(n67[0])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i3020_2_lut.init = 16'h2222;
    FD1S3DX Count_reg_987__i0 (.D(n67[0]), .CK(clk_c), .CD(Count_h_11__N_948), 
            .Q(Count_h[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_987__i0.GSR = "DISABLED";
    CCU2D sub_819_add_2_13 (.A0(Count_h[11]), .B0(H_count_max[11]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6171), .S1(n1483));
    defparam sub_819_add_2_13.INIT0 = 16'h5999;
    defparam sub_819_add_2_13.INIT1 = 16'h0000;
    defparam sub_819_add_2_13.INJECT1_0 = "NO";
    defparam sub_819_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_819_add_2_11 (.A0(Count_h[9]), .B0(H_count_max[9]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[10]), .B1(H_count_max[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n6170), .COUT(n6171));
    defparam sub_819_add_2_11.INIT0 = 16'h5999;
    defparam sub_819_add_2_11.INIT1 = 16'h5999;
    defparam sub_819_add_2_11.INJECT1_0 = "NO";
    defparam sub_819_add_2_11.INJECT1_1 = "NO";
    LUT4 i3148_2_lut (.A(n53[1]), .B(n1483), .Z(n67[1])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i3148_2_lut.init = 16'h2222;
    LUT4 i3149_2_lut (.A(n53[2]), .B(n1483), .Z(n67[2])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i3149_2_lut.init = 16'h2222;
    LUT4 i3150_2_lut (.A(n53[3]), .B(n1483), .Z(n67[3])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i3150_2_lut.init = 16'h2222;
    CCU2D Count_reg_987_add_4_3 (.A0(Count_h[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6259), .COUT(n6260), .S0(n53[1]), .S1(n53[2]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_987_add_4_3.INIT0 = 16'hfaaa;
    defparam Count_reg_987_add_4_3.INIT1 = 16'hfaaa;
    defparam Count_reg_987_add_4_3.INJECT1_0 = "NO";
    defparam Count_reg_987_add_4_3.INJECT1_1 = "NO";
    CCU2D Count_reg_987_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n6259), .S1(n53[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_987_add_4_1.INIT0 = 16'hF000;
    defparam Count_reg_987_add_4_1.INIT1 = 16'h0555;
    defparam Count_reg_987_add_4_1.INJECT1_0 = "NO";
    defparam Count_reg_987_add_4_1.INJECT1_1 = "NO";
    LUT4 i3151_2_lut (.A(n53[4]), .B(n1483), .Z(n67[4])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i3151_2_lut.init = 16'h2222;
    LUT4 i3152_2_lut (.A(n53[5]), .B(n1483), .Z(n67[5])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i3152_2_lut.init = 16'h2222;
    LUT4 i3153_2_lut (.A(n53[6]), .B(n1483), .Z(n67[6])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i3153_2_lut.init = 16'h2222;
    LUT4 i3154_2_lut (.A(n53[7]), .B(n1483), .Z(n67[7])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i3154_2_lut.init = 16'h2222;
    LUT4 i3155_2_lut (.A(n53[8]), .B(n1483), .Z(n67[8])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i3155_2_lut.init = 16'h2222;
    LUT4 i3156_2_lut (.A(n53[9]), .B(n1483), .Z(n67[9])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i3156_2_lut.init = 16'h2222;
    LUT4 i3157_2_lut (.A(n53[10]), .B(n1483), .Z(n67[10])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i3157_2_lut.init = 16'h2222;
    LUT4 i3158_2_lut (.A(n53[11]), .B(n1483), .Z(n67[11])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam i3158_2_lut.init = 16'h2222;
    CCU2D sub_819_add_2_9 (.A0(Count_h[7]), .B0(H_count_max[7]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[8]), .B1(H_count_max[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n6169), .COUT(n6170));
    defparam sub_819_add_2_9.INIT0 = 16'h5999;
    defparam sub_819_add_2_9.INIT1 = 16'h5999;
    defparam sub_819_add_2_9.INJECT1_0 = "NO";
    defparam sub_819_add_2_9.INJECT1_1 = "NO";
    FD1S3DX Count_reg_987__i1 (.D(n67[1]), .CK(clk_c), .CD(Count_h_11__N_948), 
            .Q(Count_h[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_987__i1.GSR = "DISABLED";
    FD1S3DX Count_reg_987__i2 (.D(n67[2]), .CK(clk_c), .CD(Count_h_11__N_948), 
            .Q(Count_h[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_987__i2.GSR = "DISABLED";
    FD1S3DX Count_reg_987__i3 (.D(n67[3]), .CK(clk_c), .CD(Count_h_11__N_948), 
            .Q(Count_h[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_987__i3.GSR = "DISABLED";
    FD1S3DX Count_reg_987__i4 (.D(n67[4]), .CK(clk_c), .CD(Count_h_11__N_948), 
            .Q(Count_h[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_987__i4.GSR = "DISABLED";
    FD1S3DX Count_reg_987__i5 (.D(n67[5]), .CK(clk_c), .CD(Count_h_11__N_948), 
            .Q(Count_h[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_987__i5.GSR = "DISABLED";
    FD1S3DX Count_reg_987__i6 (.D(n67[6]), .CK(clk_c), .CD(Count_h_11__N_948), 
            .Q(Count_h[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_987__i6.GSR = "DISABLED";
    FD1S3DX Count_reg_987__i7 (.D(n67[7]), .CK(clk_c), .CD(Count_h_11__N_948), 
            .Q(Count_h[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_987__i7.GSR = "DISABLED";
    FD1S3DX Count_reg_987__i8 (.D(n67[8]), .CK(clk_c), .CD(Count_h_11__N_948), 
            .Q(Count_h[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_987__i8.GSR = "DISABLED";
    FD1S3DX Count_reg_987__i9 (.D(n67[9]), .CK(clk_c), .CD(Count_h_11__N_948), 
            .Q(Count_h[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_987__i9.GSR = "DISABLED";
    FD1S3DX Count_reg_987__i10 (.D(n67[10]), .CK(clk_c), .CD(Count_h_11__N_948), 
            .Q(Count_h[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_987__i10.GSR = "DISABLED";
    FD1S3DX Count_reg_987__i11 (.D(n67[11]), .CK(clk_c), .CD(Count_h_11__N_948), 
            .Q(Count_h[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_987__i11.GSR = "DISABLED";
    CCU2D sub_819_add_2_7 (.A0(Count_h[5]), .B0(H_count_max[5]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[6]), .B1(H_count_max[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n6168), .COUT(n6169));
    defparam sub_819_add_2_7.INIT0 = 16'h5999;
    defparam sub_819_add_2_7.INIT1 = 16'h5999;
    defparam sub_819_add_2_7.INJECT1_0 = "NO";
    defparam sub_819_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_819_add_2_5 (.A0(Count_h[3]), .B0(H_count_max[3]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[4]), .B1(H_count_max[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n6167), .COUT(n6168));
    defparam sub_819_add_2_5.INIT0 = 16'h5999;
    defparam sub_819_add_2_5.INIT1 = 16'h5999;
    defparam sub_819_add_2_5.INJECT1_0 = "NO";
    defparam sub_819_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_819_add_2_3 (.A0(Count_h[1]), .B0(H_count_max[1]), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[2]), .B1(H_count_max[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n6166), .COUT(n6167));
    defparam sub_819_add_2_3.INIT0 = 16'h5999;
    defparam sub_819_add_2_3.INIT1 = 16'h5999;
    defparam sub_819_add_2_3.INJECT1_0 = "NO";
    defparam sub_819_add_2_3.INJECT1_1 = "NO";
    LUT4 i2954_4_lut (.A(n6758), .B(n1483), .C(n1112), .D(Count_h[8]), 
         .Z(n1769)) /* synthesis lut_function=(!(A (B)+!A (B+!(C+(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(31[3] 34[6])
    defparam i2954_4_lut.init = 16'h3332;
    CCU2D sub_819_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Count_h[0]), .B1(H_count_max[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n6166));
    defparam sub_819_add_2_1.INIT0 = 16'h0000;
    defparam sub_819_add_2_1.INIT1 = 16'h5999;
    defparam sub_819_add_2_1.INJECT1_0 = "NO";
    defparam sub_819_add_2_1.INJECT1_1 = "NO";
    CCU2D Count_reg_987_add_4_13 (.A0(Count_h[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6264), .S0(n53[11]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_987_add_4_13.INIT0 = 16'hfaaa;
    defparam Count_reg_987_add_4_13.INIT1 = 16'h0000;
    defparam Count_reg_987_add_4_13.INJECT1_0 = "NO";
    defparam Count_reg_987_add_4_13.INJECT1_1 = "NO";
    CCU2D Count_reg_987_add_4_11 (.A0(Count_h[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6263), .COUT(n6264), .S0(n53[9]), .S1(n53[10]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_987_add_4_11.INIT0 = 16'hfaaa;
    defparam Count_reg_987_add_4_11.INIT1 = 16'hfaaa;
    defparam Count_reg_987_add_4_11.INJECT1_0 = "NO";
    defparam Count_reg_987_add_4_11.INJECT1_1 = "NO";
    CCU2D Count_reg_987_add_4_9 (.A0(Count_h[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Count_h[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6262), .COUT(n6263), .S0(n53[7]), .S1(n53[8]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/vga_counter.v(44[16:29])
    defparam Count_reg_987_add_4_9.INIT0 = 16'hfaaa;
    defparam Count_reg_987_add_4_9.INIT1 = 16'hfaaa;
    defparam Count_reg_987_add_4_9.INJECT1_0 = "NO";
    defparam Count_reg_987_add_4_9.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module CD
//

module CD (clk_UART, clk_c, clkout_N_203, counter, n127, GND_net, 
           \counter_23__N_178[9] , \counter_23__N_178[7] , \counter_23__N_178[8] , 
           \counter_23__N_178[5] , \counter_23__N_178[6] , \counter_23__N_178[3] , 
           \counter_23__N_178[4] , \counter_23__N_178[1] , \counter_23__N_178[2] , 
           \counter_23__N_178[0] , n101, c_UART_ready, rst_n_c, clk_LM, 
           counter_31__N_85, clk_DB, counter_31__N_85_adj_1, c_VGA_ready, 
           clk_VGA, n3880, n7359, \c_data[0] , \c_data[1] , \c_data[2] , 
           \baudrate_next_23__N_262[0] , n7361, c_addr, c_valid, n7326, 
           \H_BackPorch_nxt_7__N_772[3] , n7362, \V_count_max[5] , V_Count_Max_nxt_11__N_1036, 
           \V_right_margin[1] , V_Right_Margin_nxt_9__N_999, \V_right_margin[5] , 
           V_Right_Margin_nxt_9__N_995, \H_right_margin[3] , H_Right_Margin_nxt_10__N_987, 
           \H_right_margin[5] , H_Right_Margin_nxt_10__N_985, \V_left_margin[1] , 
           V_Left_Margin_nxt_5__N_976, n7360, c_ready_next_N_344, n7338) /* synthesis syn_module_defined=1 */ ;
    output clk_UART;
    input clk_c;
    input clkout_N_203;
    output [23:0]counter;
    input [23:0]n127;
    input GND_net;
    output \counter_23__N_178[9] ;
    output \counter_23__N_178[7] ;
    output \counter_23__N_178[8] ;
    output \counter_23__N_178[5] ;
    output \counter_23__N_178[6] ;
    output \counter_23__N_178[3] ;
    output \counter_23__N_178[4] ;
    output \counter_23__N_178[1] ;
    output \counter_23__N_178[2] ;
    output \counter_23__N_178[0] ;
    output [23:0]n101;
    output c_UART_ready;
    input rst_n_c;
    output clk_LM;
    output counter_31__N_85;
    output clk_DB;
    output counter_31__N_85_adj_1;
    output c_VGA_ready;
    input clk_VGA;
    input n3880;
    input n7359;
    input \c_data[0] ;
    input \c_data[1] ;
    input \c_data[2] ;
    input \baudrate_next_23__N_262[0] ;
    output n7361;
    input [3:0]c_addr;
    input c_valid;
    output n7326;
    output \H_BackPorch_nxt_7__N_772[3] ;
    input n7362;
    input \V_count_max[5] ;
    output V_Count_Max_nxt_11__N_1036;
    input \V_right_margin[1] ;
    output V_Right_Margin_nxt_9__N_999;
    input \V_right_margin[5] ;
    output V_Right_Margin_nxt_9__N_995;
    input \H_right_margin[3] ;
    output H_Right_Margin_nxt_10__N_987;
    input \H_right_margin[5] ;
    output H_Right_Margin_nxt_10__N_985;
    input \V_left_margin[1] ;
    output V_Left_Margin_nxt_5__N_976;
    output n7360;
    output c_ready_next_N_344;
    output n7338;
    
    wire clk_UART /* synthesis is_clock=1, SET_AS_NETWORK=clk_UART */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(37[6:14])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    wire clk_LM /* synthesis is_clock=1, SET_AS_NETWORK=clk_LM */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(39[6:12])
    wire clk_DB /* synthesis is_clock=1, SET_AS_NETWORK=clk_DB */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(38[6:12])
    wire clk_VGA /* synthesis is_clock=1, SET_AS_NETWORK=clk_VGA */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(36[6:13])
    wire [23:0]baudrate;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd.v(38[32:40])
    
    \CD_counter(WIDTH=24)  CNT_UART (.clk_UART(clk_UART), .clk_c(clk_c), 
            .clkout_N_203(clkout_N_203), .counter({counter}), .n127({n127}), 
            .GND_net(GND_net), .\counter_23__N_178[9] (\counter_23__N_178[9] ), 
            .\baudrate[7] (baudrate[7]), .\counter_23__N_178[7] (\counter_23__N_178[7] ), 
            .\counter_23__N_178[8] (\counter_23__N_178[8] ), .\baudrate[6] (baudrate[6]), 
            .\counter_23__N_178[5] (\counter_23__N_178[5] ), .\counter_23__N_178[6] (\counter_23__N_178[6] ), 
            .\baudrate[3] (baudrate[3]), .\baudrate[4] (baudrate[4]), .\counter_23__N_178[3] (\counter_23__N_178[3] ), 
            .\counter_23__N_178[4] (\counter_23__N_178[4] ), .\baudrate[1] (baudrate[1]), 
            .\baudrate[2] (baudrate[2]), .\counter_23__N_178[1] (\counter_23__N_178[1] ), 
            .\counter_23__N_178[2] (\counter_23__N_178[2] ), .\baudrate[0] (baudrate[0]), 
            .\counter_23__N_178[0] (\counter_23__N_178[0] ), .n101({n101}), 
            .c_UART_ready(c_UART_ready), .rst_n_c(rst_n_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd.v(42[44:128])
    \CD_counter(WIDTH=32)  CNT_LM (.clk_LM(clk_LM), .clk_c(clk_c), .GND_net(GND_net), 
            .counter_31__N_85(counter_31__N_85)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd.v(43[51:125])
    \CD_counter(WIDTH=32)_U5  CNT_DB (.clk_DB(clk_DB), .clk_c(clk_c), .counter_31__N_85(counter_31__N_85_adj_1), 
            .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd.v(44[49:121])
    CD_config CLOCK_DIVIDER_CONFIG (.c_VGA_ready(c_VGA_ready), .clk_VGA(clk_VGA), 
            .n3880(n3880), .c_UART_ready(c_UART_ready), .n7359(n7359), 
            .\c_data[0] (\c_data[0] ), .\c_data[1] (\c_data[1] ), .\c_data[2] (\c_data[2] ), 
            .\baudrate[0] (baudrate[0]), .\baudrate_next_23__N_262[0] (\baudrate_next_23__N_262[0] ), 
            .\baudrate[7] (baudrate[7]), .\baudrate[6] (baudrate[6]), .\baudrate[4] (baudrate[4]), 
            .\baudrate[2] (baudrate[2]), .n7361(n7361), .c_addr({c_addr}), 
            .c_valid(c_valid), .n7326(n7326), .\H_BackPorch_nxt_7__N_772[3] (\H_BackPorch_nxt_7__N_772[3] ), 
            .\baudrate[1] (baudrate[1]), .\baudrate[3] (baudrate[3]), .n7362(n7362), 
            .\V_count_max[5] (\V_count_max[5] ), .V_Count_Max_nxt_11__N_1036(V_Count_Max_nxt_11__N_1036), 
            .\V_right_margin[1] (\V_right_margin[1] ), .V_Right_Margin_nxt_9__N_999(V_Right_Margin_nxt_9__N_999), 
            .\V_right_margin[5] (\V_right_margin[5] ), .V_Right_Margin_nxt_9__N_995(V_Right_Margin_nxt_9__N_995), 
            .\H_right_margin[3] (\H_right_margin[3] ), .H_Right_Margin_nxt_10__N_987(H_Right_Margin_nxt_10__N_987), 
            .\H_right_margin[5] (\H_right_margin[5] ), .H_Right_Margin_nxt_10__N_985(H_Right_Margin_nxt_10__N_985), 
            .\V_left_margin[1] (\V_left_margin[1] ), .V_Left_Margin_nxt_5__N_976(V_Left_Margin_nxt_5__N_976), 
            .n7360(n7360), .c_ready_next_N_344(c_ready_next_N_344), .n7338(n7338)) /* synthesis syn_module_defined=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd.v(46[11] 49[51])
    
endmodule
//
// Verilog Description of module \CD_counter(WIDTH=24) 
//

module \CD_counter(WIDTH=24)  (clk_UART, clk_c, clkout_N_203, counter, 
            n127, GND_net, \counter_23__N_178[9] , \baudrate[7] , \counter_23__N_178[7] , 
            \counter_23__N_178[8] , \baudrate[6] , \counter_23__N_178[5] , 
            \counter_23__N_178[6] , \baudrate[3] , \baudrate[4] , \counter_23__N_178[3] , 
            \counter_23__N_178[4] , \baudrate[1] , \baudrate[2] , \counter_23__N_178[1] , 
            \counter_23__N_178[2] , \baudrate[0] , \counter_23__N_178[0] , 
            n101, c_UART_ready, rst_n_c) /* synthesis syn_module_defined=1 */ ;
    output clk_UART;
    input clk_c;
    input clkout_N_203;
    output [23:0]counter;
    input [23:0]n127;
    input GND_net;
    output \counter_23__N_178[9] ;
    input \baudrate[7] ;
    output \counter_23__N_178[7] ;
    output \counter_23__N_178[8] ;
    input \baudrate[6] ;
    output \counter_23__N_178[5] ;
    output \counter_23__N_178[6] ;
    input \baudrate[3] ;
    input \baudrate[4] ;
    output \counter_23__N_178[3] ;
    output \counter_23__N_178[4] ;
    input \baudrate[1] ;
    input \baudrate[2] ;
    output \counter_23__N_178[1] ;
    output \counter_23__N_178[2] ;
    input \baudrate[0] ;
    output \counter_23__N_178[0] ;
    output [23:0]n101;
    input c_UART_ready;
    input rst_n_c;
    
    wire clk_UART /* synthesis is_clock=1, SET_AS_NETWORK=clk_UART */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(37[6:14])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    
    wire clk_UART_N_18, n6191, n6190, n6189, n6188, n6187, n6217, 
        n6216, n6215, n6214, n6213, n6212, n6211, n6210, n6209, 
        n6208, n6207, n6206;
    
    FD1S3DX clkout_17 (.D(clkout_N_203), .CK(clk_c), .CD(clk_UART_N_18), 
            .Q(clk_UART)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=44, LSE_RCOL=128, LSE_LLINE=42, LSE_RLINE=42 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(25[13] 28[7])
    defparam clkout_17.GSR = "DISABLED";
    FD1S3DX counter_964__i0 (.D(n127[0]), .CK(clk_c), .CD(clk_UART_N_18), 
            .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_964__i0.GSR = "DISABLED";
    FD1S3DX counter_964__i23 (.D(n127[23]), .CK(clk_c), .CD(clk_UART_N_18), 
            .Q(counter[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_964__i23.GSR = "DISABLED";
    FD1S3DX counter_964__i22 (.D(n127[22]), .CK(clk_c), .CD(clk_UART_N_18), 
            .Q(counter[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_964__i22.GSR = "DISABLED";
    FD1S3DX counter_964__i21 (.D(n127[21]), .CK(clk_c), .CD(clk_UART_N_18), 
            .Q(counter[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_964__i21.GSR = "DISABLED";
    FD1S3DX counter_964__i20 (.D(n127[20]), .CK(clk_c), .CD(clk_UART_N_18), 
            .Q(counter[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_964__i20.GSR = "DISABLED";
    FD1S3DX counter_964__i19 (.D(n127[19]), .CK(clk_c), .CD(clk_UART_N_18), 
            .Q(counter[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_964__i19.GSR = "DISABLED";
    FD1S3DX counter_964__i18 (.D(n127[18]), .CK(clk_c), .CD(clk_UART_N_18), 
            .Q(counter[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_964__i18.GSR = "DISABLED";
    FD1S3DX counter_964__i17 (.D(n127[17]), .CK(clk_c), .CD(clk_UART_N_18), 
            .Q(counter[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_964__i17.GSR = "DISABLED";
    FD1S3DX counter_964__i16 (.D(n127[16]), .CK(clk_c), .CD(clk_UART_N_18), 
            .Q(counter[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_964__i16.GSR = "DISABLED";
    FD1S3DX counter_964__i15 (.D(n127[15]), .CK(clk_c), .CD(clk_UART_N_18), 
            .Q(counter[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_964__i15.GSR = "DISABLED";
    FD1S3DX counter_964__i14 (.D(n127[14]), .CK(clk_c), .CD(clk_UART_N_18), 
            .Q(counter[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_964__i14.GSR = "DISABLED";
    FD1S3DX counter_964__i13 (.D(n127[13]), .CK(clk_c), .CD(clk_UART_N_18), 
            .Q(counter[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_964__i13.GSR = "DISABLED";
    FD1S3DX counter_964__i12 (.D(n127[12]), .CK(clk_c), .CD(clk_UART_N_18), 
            .Q(counter[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_964__i12.GSR = "DISABLED";
    FD1S3DX counter_964__i11 (.D(n127[11]), .CK(clk_c), .CD(clk_UART_N_18), 
            .Q(counter[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_964__i11.GSR = "DISABLED";
    FD1S3DX counter_964__i10 (.D(n127[10]), .CK(clk_c), .CD(clk_UART_N_18), 
            .Q(counter[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_964__i10.GSR = "DISABLED";
    FD1S3DX counter_964__i9 (.D(n127[9]), .CK(clk_c), .CD(clk_UART_N_18), 
            .Q(counter[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_964__i9.GSR = "DISABLED";
    FD1S3DX counter_964__i8 (.D(n127[8]), .CK(clk_c), .CD(clk_UART_N_18), 
            .Q(counter[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_964__i8.GSR = "DISABLED";
    FD1S3DX counter_964__i7 (.D(n127[7]), .CK(clk_c), .CD(clk_UART_N_18), 
            .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_964__i7.GSR = "DISABLED";
    FD1S3DX counter_964__i6 (.D(n127[6]), .CK(clk_c), .CD(clk_UART_N_18), 
            .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_964__i6.GSR = "DISABLED";
    FD1S3DX counter_964__i5 (.D(n127[5]), .CK(clk_c), .CD(clk_UART_N_18), 
            .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_964__i5.GSR = "DISABLED";
    FD1S3DX counter_964__i4 (.D(n127[4]), .CK(clk_c), .CD(clk_UART_N_18), 
            .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_964__i4.GSR = "DISABLED";
    FD1S3DX counter_964__i3 (.D(n127[3]), .CK(clk_c), .CD(clk_UART_N_18), 
            .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_964__i3.GSR = "DISABLED";
    FD1S3DX counter_964__i2 (.D(n127[2]), .CK(clk_c), .CD(clk_UART_N_18), 
            .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_964__i2.GSR = "DISABLED";
    FD1S3DX counter_964__i1 (.D(n127[1]), .CK(clk_c), .CD(clk_UART_N_18), 
            .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_964__i1.GSR = "DISABLED";
    CCU2D limit_23__I_0_add_2_11 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6191), .S0(\counter_23__N_178[9] ));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(27[28:37])
    defparam limit_23__I_0_add_2_11.INIT0 = 16'hffff;
    defparam limit_23__I_0_add_2_11.INIT1 = 16'h0000;
    defparam limit_23__I_0_add_2_11.INJECT1_0 = "NO";
    defparam limit_23__I_0_add_2_11.INJECT1_1 = "NO";
    CCU2D limit_23__I_0_add_2_9 (.A0(\baudrate[7] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6190), .COUT(n6191), .S0(\counter_23__N_178[7] ), .S1(\counter_23__N_178[8] ));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(27[28:37])
    defparam limit_23__I_0_add_2_9.INIT0 = 16'h5555;
    defparam limit_23__I_0_add_2_9.INIT1 = 16'hffff;
    defparam limit_23__I_0_add_2_9.INJECT1_0 = "NO";
    defparam limit_23__I_0_add_2_9.INJECT1_1 = "NO";
    CCU2D limit_23__I_0_add_2_7 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\baudrate[6] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6189), .COUT(n6190), .S0(\counter_23__N_178[5] ), 
          .S1(\counter_23__N_178[6] ));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(27[28:37])
    defparam limit_23__I_0_add_2_7.INIT0 = 16'hffff;
    defparam limit_23__I_0_add_2_7.INIT1 = 16'h5555;
    defparam limit_23__I_0_add_2_7.INJECT1_0 = "NO";
    defparam limit_23__I_0_add_2_7.INJECT1_1 = "NO";
    CCU2D limit_23__I_0_add_2_5 (.A0(\baudrate[3] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\baudrate[4] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6188), .COUT(n6189), .S0(\counter_23__N_178[3] ), 
          .S1(\counter_23__N_178[4] ));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(27[28:37])
    defparam limit_23__I_0_add_2_5.INIT0 = 16'h5555;
    defparam limit_23__I_0_add_2_5.INIT1 = 16'h5555;
    defparam limit_23__I_0_add_2_5.INJECT1_0 = "NO";
    defparam limit_23__I_0_add_2_5.INJECT1_1 = "NO";
    CCU2D limit_23__I_0_add_2_3 (.A0(\baudrate[1] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\baudrate[2] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6187), .COUT(n6188), .S0(\counter_23__N_178[1] ), 
          .S1(\counter_23__N_178[2] ));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(27[28:37])
    defparam limit_23__I_0_add_2_3.INIT0 = 16'h5555;
    defparam limit_23__I_0_add_2_3.INIT1 = 16'h5555;
    defparam limit_23__I_0_add_2_3.INJECT1_0 = "NO";
    defparam limit_23__I_0_add_2_3.INJECT1_1 = "NO";
    CCU2D limit_23__I_0_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\baudrate[0] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n6187), .S1(\counter_23__N_178[0] ));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(27[28:37])
    defparam limit_23__I_0_add_2_1.INIT0 = 16'hF000;
    defparam limit_23__I_0_add_2_1.INIT1 = 16'h5555;
    defparam limit_23__I_0_add_2_1.INJECT1_0 = "NO";
    defparam limit_23__I_0_add_2_1.INJECT1_1 = "NO";
    CCU2D counter_964_add_4_25 (.A0(counter[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6217), .S0(n101[23]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_964_add_4_25.INIT0 = 16'hfaaa;
    defparam counter_964_add_4_25.INIT1 = 16'h0000;
    defparam counter_964_add_4_25.INJECT1_0 = "NO";
    defparam counter_964_add_4_25.INJECT1_1 = "NO";
    CCU2D counter_964_add_4_23 (.A0(counter[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6216), .COUT(n6217), .S0(n101[21]), .S1(n101[22]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_964_add_4_23.INIT0 = 16'hfaaa;
    defparam counter_964_add_4_23.INIT1 = 16'hfaaa;
    defparam counter_964_add_4_23.INJECT1_0 = "NO";
    defparam counter_964_add_4_23.INJECT1_1 = "NO";
    CCU2D counter_964_add_4_21 (.A0(counter[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6215), .COUT(n6216), .S0(n101[19]), .S1(n101[20]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_964_add_4_21.INIT0 = 16'hfaaa;
    defparam counter_964_add_4_21.INIT1 = 16'hfaaa;
    defparam counter_964_add_4_21.INJECT1_0 = "NO";
    defparam counter_964_add_4_21.INJECT1_1 = "NO";
    CCU2D counter_964_add_4_19 (.A0(counter[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6214), .COUT(n6215), .S0(n101[17]), .S1(n101[18]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_964_add_4_19.INIT0 = 16'hfaaa;
    defparam counter_964_add_4_19.INIT1 = 16'hfaaa;
    defparam counter_964_add_4_19.INJECT1_0 = "NO";
    defparam counter_964_add_4_19.INJECT1_1 = "NO";
    CCU2D counter_964_add_4_17 (.A0(counter[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6213), .COUT(n6214), .S0(n101[15]), .S1(n101[16]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_964_add_4_17.INIT0 = 16'hfaaa;
    defparam counter_964_add_4_17.INIT1 = 16'hfaaa;
    defparam counter_964_add_4_17.INJECT1_0 = "NO";
    defparam counter_964_add_4_17.INJECT1_1 = "NO";
    CCU2D counter_964_add_4_15 (.A0(counter[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6212), .COUT(n6213), .S0(n101[13]), .S1(n101[14]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_964_add_4_15.INIT0 = 16'hfaaa;
    defparam counter_964_add_4_15.INIT1 = 16'hfaaa;
    defparam counter_964_add_4_15.INJECT1_0 = "NO";
    defparam counter_964_add_4_15.INJECT1_1 = "NO";
    CCU2D counter_964_add_4_13 (.A0(counter[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6211), .COUT(n6212), .S0(n101[11]), .S1(n101[12]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_964_add_4_13.INIT0 = 16'hfaaa;
    defparam counter_964_add_4_13.INIT1 = 16'hfaaa;
    defparam counter_964_add_4_13.INJECT1_0 = "NO";
    defparam counter_964_add_4_13.INJECT1_1 = "NO";
    CCU2D counter_964_add_4_11 (.A0(counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6210), .COUT(n6211), .S0(n101[9]), .S1(n101[10]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_964_add_4_11.INIT0 = 16'hfaaa;
    defparam counter_964_add_4_11.INIT1 = 16'hfaaa;
    defparam counter_964_add_4_11.INJECT1_0 = "NO";
    defparam counter_964_add_4_11.INJECT1_1 = "NO";
    CCU2D counter_964_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6209), .COUT(n6210), .S0(n101[7]), .S1(n101[8]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_964_add_4_9.INIT0 = 16'hfaaa;
    defparam counter_964_add_4_9.INIT1 = 16'hfaaa;
    defparam counter_964_add_4_9.INJECT1_0 = "NO";
    defparam counter_964_add_4_9.INJECT1_1 = "NO";
    CCU2D counter_964_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6208), .COUT(n6209), .S0(n101[5]), .S1(n101[6]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_964_add_4_7.INIT0 = 16'hfaaa;
    defparam counter_964_add_4_7.INIT1 = 16'hfaaa;
    defparam counter_964_add_4_7.INJECT1_0 = "NO";
    defparam counter_964_add_4_7.INJECT1_1 = "NO";
    CCU2D counter_964_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6207), .COUT(n6208), .S0(n101[3]), .S1(n101[4]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_964_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_964_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_964_add_4_5.INJECT1_0 = "NO";
    defparam counter_964_add_4_5.INJECT1_1 = "NO";
    CCU2D counter_964_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6206), .COUT(n6207), .S0(n101[1]), .S1(n101[2]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_964_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_964_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_964_add_4_3.INJECT1_0 = "NO";
    defparam counter_964_add_4_3.INJECT1_1 = "NO";
    CCU2D counter_964_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n6206), .S1(n101[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_964_add_4_1.INIT0 = 16'hF000;
    defparam counter_964_add_4_1.INIT1 = 16'h0555;
    defparam counter_964_add_4_1.INJECT1_0 = "NO";
    defparam counter_964_add_4_1.INJECT1_1 = "NO";
    LUT4 i5963_2_lut (.A(c_UART_ready), .B(rst_n_c), .Z(clk_UART_N_18)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(22[8:14])
    defparam i5963_2_lut.init = 16'h7777;
    
endmodule
//
// Verilog Description of module \CD_counter(WIDTH=32) 
//

module \CD_counter(WIDTH=32)  (clk_LM, clk_c, GND_net, counter_31__N_85) /* synthesis syn_module_defined=1 */ ;
    output clk_LM;
    input clk_c;
    input GND_net;
    output counter_31__N_85;
    
    wire clk_LM /* synthesis is_clock=1, SET_AS_NETWORK=clk_LM */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(39[6:12])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    
    wire clkout_N_118, n6346;
    wire [31:0]counter;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(19[19:26])
    
    wire n6345, n6344, n6343, n6342, n6341, n6340, n6339, n6338, 
        n6337, n6336, n6335, n6334, n6333;
    wire [31:0]n133;
    
    wire n6332, n6316, n6315, n6314, n6313, n6312, n6311, n6310, 
        n6309, n6308, n6307, n6306, n6305, n6304, n6303, n6302, 
        n6301;
    
    FD1S3AX clkout_17 (.D(clkout_N_118), .CK(clk_c), .Q(clk_LM)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=51, LSE_RCOL=125, LSE_LLINE=43, LSE_RLINE=43 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(25[13] 28[7])
    defparam clkout_17.GSR = "ENABLED";
    CCU2D add_5131_32 (.A0(counter[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n6346), 
          .S1(counter_31__N_85));
    defparam add_5131_32.INIT0 = 16'h5555;
    defparam add_5131_32.INIT1 = 16'h0000;
    defparam add_5131_32.INJECT1_0 = "NO";
    defparam add_5131_32.INJECT1_1 = "NO";
    CCU2D add_5131_30 (.A0(counter[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6345), .COUT(n6346));
    defparam add_5131_30.INIT0 = 16'h5555;
    defparam add_5131_30.INIT1 = 16'h5555;
    defparam add_5131_30.INJECT1_0 = "NO";
    defparam add_5131_30.INJECT1_1 = "NO";
    CCU2D add_5131_28 (.A0(counter[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6344), .COUT(n6345));
    defparam add_5131_28.INIT0 = 16'h5555;
    defparam add_5131_28.INIT1 = 16'h5555;
    defparam add_5131_28.INJECT1_0 = "NO";
    defparam add_5131_28.INJECT1_1 = "NO";
    CCU2D add_5131_26 (.A0(counter[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6343), .COUT(n6344));
    defparam add_5131_26.INIT0 = 16'h5555;
    defparam add_5131_26.INIT1 = 16'h5555;
    defparam add_5131_26.INJECT1_0 = "NO";
    defparam add_5131_26.INJECT1_1 = "NO";
    CCU2D add_5131_24 (.A0(counter[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6342), .COUT(n6343));
    defparam add_5131_24.INIT0 = 16'h5555;
    defparam add_5131_24.INIT1 = 16'h5555;
    defparam add_5131_24.INJECT1_0 = "NO";
    defparam add_5131_24.INJECT1_1 = "NO";
    LUT4 clkout_I_0_2_lut (.A(clk_LM), .B(counter_31__N_85), .Z(clkout_N_118)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(27[16:57])
    defparam clkout_I_0_2_lut.init = 16'h6666;
    CCU2D add_5131_22 (.A0(counter[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6341), .COUT(n6342));
    defparam add_5131_22.INIT0 = 16'h5555;
    defparam add_5131_22.INIT1 = 16'h5555;
    defparam add_5131_22.INJECT1_0 = "NO";
    defparam add_5131_22.INJECT1_1 = "NO";
    CCU2D add_5131_20 (.A0(counter[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6340), .COUT(n6341));
    defparam add_5131_20.INIT0 = 16'h5555;
    defparam add_5131_20.INIT1 = 16'h5555;
    defparam add_5131_20.INJECT1_0 = "NO";
    defparam add_5131_20.INJECT1_1 = "NO";
    CCU2D add_5131_18 (.A0(counter[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6339), .COUT(n6340));
    defparam add_5131_18.INIT0 = 16'h5555;
    defparam add_5131_18.INIT1 = 16'h5555;
    defparam add_5131_18.INJECT1_0 = "NO";
    defparam add_5131_18.INJECT1_1 = "NO";
    CCU2D add_5131_16 (.A0(counter[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6338), .COUT(n6339));
    defparam add_5131_16.INIT0 = 16'h5555;
    defparam add_5131_16.INIT1 = 16'h5555;
    defparam add_5131_16.INJECT1_0 = "NO";
    defparam add_5131_16.INJECT1_1 = "NO";
    CCU2D add_5131_14 (.A0(counter[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6337), .COUT(n6338));
    defparam add_5131_14.INIT0 = 16'h5555;
    defparam add_5131_14.INIT1 = 16'h5555;
    defparam add_5131_14.INJECT1_0 = "NO";
    defparam add_5131_14.INJECT1_1 = "NO";
    CCU2D add_5131_12 (.A0(counter[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6336), .COUT(n6337));
    defparam add_5131_12.INIT0 = 16'h5555;
    defparam add_5131_12.INIT1 = 16'h5555;
    defparam add_5131_12.INJECT1_0 = "NO";
    defparam add_5131_12.INJECT1_1 = "NO";
    CCU2D add_5131_10 (.A0(counter[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6335), .COUT(n6336));
    defparam add_5131_10.INIT0 = 16'h5aaa;
    defparam add_5131_10.INIT1 = 16'h5555;
    defparam add_5131_10.INJECT1_0 = "NO";
    defparam add_5131_10.INJECT1_1 = "NO";
    CCU2D add_5131_8 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6334), .COUT(n6335));
    defparam add_5131_8.INIT0 = 16'h5555;
    defparam add_5131_8.INIT1 = 16'h5555;
    defparam add_5131_8.INJECT1_0 = "NO";
    defparam add_5131_8.INJECT1_1 = "NO";
    CCU2D add_5131_6 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6333), .COUT(n6334));
    defparam add_5131_6.INIT0 = 16'h5555;
    defparam add_5131_6.INIT1 = 16'h5aaa;
    defparam add_5131_6.INJECT1_0 = "NO";
    defparam add_5131_6.INJECT1_1 = "NO";
    FD1S3IX counter_965__i0 (.D(n133[0]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965__i0.GSR = "ENABLED";
    CCU2D add_5131_4 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6332), .COUT(n6333));
    defparam add_5131_4.INIT0 = 16'h5555;
    defparam add_5131_4.INIT1 = 16'h5aaa;
    defparam add_5131_4.INJECT1_0 = "NO";
    defparam add_5131_4.INJECT1_1 = "NO";
    CCU2D add_5131_2 (.A0(counter[1]), .B0(counter[0]), .C0(GND_net), 
          .D0(GND_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n6332));
    defparam add_5131_2.INIT0 = 16'h7000;
    defparam add_5131_2.INIT1 = 16'h5aaa;
    defparam add_5131_2.INJECT1_0 = "NO";
    defparam add_5131_2.INJECT1_1 = "NO";
    CCU2D counter_965_add_4_33 (.A0(counter[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6316), .S0(n133[31]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965_add_4_33.INIT0 = 16'hfaaa;
    defparam counter_965_add_4_33.INIT1 = 16'h0000;
    defparam counter_965_add_4_33.INJECT1_0 = "NO";
    defparam counter_965_add_4_33.INJECT1_1 = "NO";
    CCU2D counter_965_add_4_31 (.A0(counter[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6315), .COUT(n6316), .S0(n133[29]), .S1(n133[30]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965_add_4_31.INIT0 = 16'hfaaa;
    defparam counter_965_add_4_31.INIT1 = 16'hfaaa;
    defparam counter_965_add_4_31.INJECT1_0 = "NO";
    defparam counter_965_add_4_31.INJECT1_1 = "NO";
    CCU2D counter_965_add_4_29 (.A0(counter[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6314), .COUT(n6315), .S0(n133[27]), .S1(n133[28]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965_add_4_29.INIT0 = 16'hfaaa;
    defparam counter_965_add_4_29.INIT1 = 16'hfaaa;
    defparam counter_965_add_4_29.INJECT1_0 = "NO";
    defparam counter_965_add_4_29.INJECT1_1 = "NO";
    CCU2D counter_965_add_4_27 (.A0(counter[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6313), .COUT(n6314), .S0(n133[25]), .S1(n133[26]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965_add_4_27.INIT0 = 16'hfaaa;
    defparam counter_965_add_4_27.INIT1 = 16'hfaaa;
    defparam counter_965_add_4_27.INJECT1_0 = "NO";
    defparam counter_965_add_4_27.INJECT1_1 = "NO";
    CCU2D counter_965_add_4_25 (.A0(counter[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6312), .COUT(n6313), .S0(n133[23]), .S1(n133[24]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965_add_4_25.INIT0 = 16'hfaaa;
    defparam counter_965_add_4_25.INIT1 = 16'hfaaa;
    defparam counter_965_add_4_25.INJECT1_0 = "NO";
    defparam counter_965_add_4_25.INJECT1_1 = "NO";
    CCU2D counter_965_add_4_23 (.A0(counter[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6311), .COUT(n6312), .S0(n133[21]), .S1(n133[22]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965_add_4_23.INIT0 = 16'hfaaa;
    defparam counter_965_add_4_23.INIT1 = 16'hfaaa;
    defparam counter_965_add_4_23.INJECT1_0 = "NO";
    defparam counter_965_add_4_23.INJECT1_1 = "NO";
    CCU2D counter_965_add_4_21 (.A0(counter[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6310), .COUT(n6311), .S0(n133[19]), .S1(n133[20]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965_add_4_21.INIT0 = 16'hfaaa;
    defparam counter_965_add_4_21.INIT1 = 16'hfaaa;
    defparam counter_965_add_4_21.INJECT1_0 = "NO";
    defparam counter_965_add_4_21.INJECT1_1 = "NO";
    CCU2D counter_965_add_4_19 (.A0(counter[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6309), .COUT(n6310), .S0(n133[17]), .S1(n133[18]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965_add_4_19.INIT0 = 16'hfaaa;
    defparam counter_965_add_4_19.INIT1 = 16'hfaaa;
    defparam counter_965_add_4_19.INJECT1_0 = "NO";
    defparam counter_965_add_4_19.INJECT1_1 = "NO";
    CCU2D counter_965_add_4_17 (.A0(counter[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6308), .COUT(n6309), .S0(n133[15]), .S1(n133[16]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965_add_4_17.INIT0 = 16'hfaaa;
    defparam counter_965_add_4_17.INIT1 = 16'hfaaa;
    defparam counter_965_add_4_17.INJECT1_0 = "NO";
    defparam counter_965_add_4_17.INJECT1_1 = "NO";
    CCU2D counter_965_add_4_15 (.A0(counter[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6307), .COUT(n6308), .S0(n133[13]), .S1(n133[14]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965_add_4_15.INIT0 = 16'hfaaa;
    defparam counter_965_add_4_15.INIT1 = 16'hfaaa;
    defparam counter_965_add_4_15.INJECT1_0 = "NO";
    defparam counter_965_add_4_15.INJECT1_1 = "NO";
    CCU2D counter_965_add_4_13 (.A0(counter[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6306), .COUT(n6307), .S0(n133[11]), .S1(n133[12]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965_add_4_13.INIT0 = 16'hfaaa;
    defparam counter_965_add_4_13.INIT1 = 16'hfaaa;
    defparam counter_965_add_4_13.INJECT1_0 = "NO";
    defparam counter_965_add_4_13.INJECT1_1 = "NO";
    CCU2D counter_965_add_4_11 (.A0(counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6305), .COUT(n6306), .S0(n133[9]), .S1(n133[10]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965_add_4_11.INIT0 = 16'hfaaa;
    defparam counter_965_add_4_11.INIT1 = 16'hfaaa;
    defparam counter_965_add_4_11.INJECT1_0 = "NO";
    defparam counter_965_add_4_11.INJECT1_1 = "NO";
    CCU2D counter_965_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6304), .COUT(n6305), .S0(n133[7]), .S1(n133[8]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965_add_4_9.INIT0 = 16'hfaaa;
    defparam counter_965_add_4_9.INIT1 = 16'hfaaa;
    defparam counter_965_add_4_9.INJECT1_0 = "NO";
    defparam counter_965_add_4_9.INJECT1_1 = "NO";
    CCU2D counter_965_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6303), .COUT(n6304), .S0(n133[5]), .S1(n133[6]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965_add_4_7.INIT0 = 16'hfaaa;
    defparam counter_965_add_4_7.INIT1 = 16'hfaaa;
    defparam counter_965_add_4_7.INJECT1_0 = "NO";
    defparam counter_965_add_4_7.INJECT1_1 = "NO";
    CCU2D counter_965_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6302), .COUT(n6303), .S0(n133[3]), .S1(n133[4]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_965_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_965_add_4_5.INJECT1_0 = "NO";
    defparam counter_965_add_4_5.INJECT1_1 = "NO";
    CCU2D counter_965_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6301), .COUT(n6302), .S0(n133[1]), .S1(n133[2]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_965_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_965_add_4_3.INJECT1_0 = "NO";
    defparam counter_965_add_4_3.INJECT1_1 = "NO";
    CCU2D counter_965_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n6301), .S1(n133[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965_add_4_1.INIT0 = 16'hF000;
    defparam counter_965_add_4_1.INIT1 = 16'h0555;
    defparam counter_965_add_4_1.INJECT1_0 = "NO";
    defparam counter_965_add_4_1.INJECT1_1 = "NO";
    FD1S3IX counter_965__i1 (.D(n133[1]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965__i1.GSR = "ENABLED";
    FD1S3IX counter_965__i2 (.D(n133[2]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965__i2.GSR = "ENABLED";
    FD1S3IX counter_965__i3 (.D(n133[3]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965__i3.GSR = "ENABLED";
    FD1S3IX counter_965__i4 (.D(n133[4]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965__i4.GSR = "ENABLED";
    FD1S3IX counter_965__i5 (.D(n133[5]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965__i5.GSR = "ENABLED";
    FD1S3IX counter_965__i6 (.D(n133[6]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965__i6.GSR = "ENABLED";
    FD1S3IX counter_965__i7 (.D(n133[7]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965__i7.GSR = "ENABLED";
    FD1S3IX counter_965__i8 (.D(n133[8]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965__i8.GSR = "ENABLED";
    FD1S3IX counter_965__i9 (.D(n133[9]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965__i9.GSR = "ENABLED";
    FD1S3IX counter_965__i10 (.D(n133[10]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965__i10.GSR = "ENABLED";
    FD1S3IX counter_965__i11 (.D(n133[11]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965__i11.GSR = "ENABLED";
    FD1S3IX counter_965__i12 (.D(n133[12]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965__i12.GSR = "ENABLED";
    FD1S3IX counter_965__i13 (.D(n133[13]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965__i13.GSR = "ENABLED";
    FD1S3IX counter_965__i14 (.D(n133[14]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965__i14.GSR = "ENABLED";
    FD1S3IX counter_965__i15 (.D(n133[15]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965__i15.GSR = "ENABLED";
    FD1S3IX counter_965__i16 (.D(n133[16]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965__i16.GSR = "ENABLED";
    FD1S3IX counter_965__i17 (.D(n133[17]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965__i17.GSR = "ENABLED";
    FD1S3IX counter_965__i18 (.D(n133[18]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965__i18.GSR = "ENABLED";
    FD1S3IX counter_965__i19 (.D(n133[19]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965__i19.GSR = "ENABLED";
    FD1S3IX counter_965__i20 (.D(n133[20]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965__i20.GSR = "ENABLED";
    FD1S3IX counter_965__i21 (.D(n133[21]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965__i21.GSR = "ENABLED";
    FD1S3IX counter_965__i22 (.D(n133[22]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965__i22.GSR = "ENABLED";
    FD1S3IX counter_965__i23 (.D(n133[23]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965__i23.GSR = "ENABLED";
    FD1S3IX counter_965__i24 (.D(n133[24]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965__i24.GSR = "ENABLED";
    FD1S3IX counter_965__i25 (.D(n133[25]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965__i25.GSR = "ENABLED";
    FD1S3IX counter_965__i26 (.D(n133[26]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965__i26.GSR = "ENABLED";
    FD1S3IX counter_965__i27 (.D(n133[27]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965__i27.GSR = "ENABLED";
    FD1S3IX counter_965__i28 (.D(n133[28]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965__i28.GSR = "ENABLED";
    FD1S3IX counter_965__i29 (.D(n133[29]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965__i29.GSR = "ENABLED";
    FD1S3IX counter_965__i30 (.D(n133[30]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965__i30.GSR = "ENABLED";
    FD1S3IX counter_965__i31 (.D(n133[31]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_965__i31.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module \CD_counter(WIDTH=32)_U5 
//

module \CD_counter(WIDTH=32)_U5  (clk_DB, clk_c, counter_31__N_85, GND_net) /* synthesis syn_module_defined=1 */ ;
    output clk_DB;
    input clk_c;
    output counter_31__N_85;
    input GND_net;
    
    wire clk_DB /* synthesis is_clock=1, SET_AS_NETWORK=clk_DB */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(38[6:12])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(6[7:10])
    
    wire clkout_N_118;
    wire [31:0]counter;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(19[19:26])
    wire [31:0]n133;
    
    wire n6331, n6330, n6329, n6328, n6327, n6326, n6325, n6324, 
        n6323, n6322, n6321, n6320, n6319, n6318, n6317, n6300, 
        n6299, n6298, n6297, n6296, n6295, n6294, n6293, n6292, 
        n6291, n6290, n6289, n6288, n6287, n6286, n6285;
    
    FD1S3AX clkout_17 (.D(clkout_N_118), .CK(clk_c), .Q(clk_DB)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=49, LSE_RCOL=121, LSE_LLINE=44, LSE_RLINE=44 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(25[13] 28[7])
    defparam clkout_17.GSR = "ENABLED";
    FD1S3IX counter_966__i0 (.D(n133[0]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966__i0.GSR = "ENABLED";
    LUT4 clkout_I_0_2_lut (.A(clk_DB), .B(counter_31__N_85), .Z(clkout_N_118)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(27[16:57])
    defparam clkout_I_0_2_lut.init = 16'h6666;
    CCU2D add_5130_32 (.A0(counter[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n6331), 
          .S1(counter_31__N_85));
    defparam add_5130_32.INIT0 = 16'h5555;
    defparam add_5130_32.INIT1 = 16'h0000;
    defparam add_5130_32.INJECT1_0 = "NO";
    defparam add_5130_32.INJECT1_1 = "NO";
    CCU2D add_5130_30 (.A0(counter[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6330), .COUT(n6331));
    defparam add_5130_30.INIT0 = 16'h5555;
    defparam add_5130_30.INIT1 = 16'h5555;
    defparam add_5130_30.INJECT1_0 = "NO";
    defparam add_5130_30.INJECT1_1 = "NO";
    CCU2D add_5130_28 (.A0(counter[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6329), .COUT(n6330));
    defparam add_5130_28.INIT0 = 16'h5555;
    defparam add_5130_28.INIT1 = 16'h5555;
    defparam add_5130_28.INJECT1_0 = "NO";
    defparam add_5130_28.INJECT1_1 = "NO";
    CCU2D add_5130_26 (.A0(counter[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6328), .COUT(n6329));
    defparam add_5130_26.INIT0 = 16'h5555;
    defparam add_5130_26.INIT1 = 16'h5555;
    defparam add_5130_26.INJECT1_0 = "NO";
    defparam add_5130_26.INJECT1_1 = "NO";
    CCU2D add_5130_24 (.A0(counter[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6327), .COUT(n6328));
    defparam add_5130_24.INIT0 = 16'h5555;
    defparam add_5130_24.INIT1 = 16'h5555;
    defparam add_5130_24.INJECT1_0 = "NO";
    defparam add_5130_24.INJECT1_1 = "NO";
    CCU2D add_5130_22 (.A0(counter[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6326), .COUT(n6327));
    defparam add_5130_22.INIT0 = 16'h5555;
    defparam add_5130_22.INIT1 = 16'h5555;
    defparam add_5130_22.INJECT1_0 = "NO";
    defparam add_5130_22.INJECT1_1 = "NO";
    CCU2D add_5130_20 (.A0(counter[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6325), .COUT(n6326));
    defparam add_5130_20.INIT0 = 16'h5555;
    defparam add_5130_20.INIT1 = 16'h5555;
    defparam add_5130_20.INJECT1_0 = "NO";
    defparam add_5130_20.INJECT1_1 = "NO";
    CCU2D add_5130_18 (.A0(counter[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6324), .COUT(n6325));
    defparam add_5130_18.INIT0 = 16'h5555;
    defparam add_5130_18.INIT1 = 16'h5555;
    defparam add_5130_18.INJECT1_0 = "NO";
    defparam add_5130_18.INJECT1_1 = "NO";
    CCU2D add_5130_16 (.A0(counter[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6323), .COUT(n6324));
    defparam add_5130_16.INIT0 = 16'h5555;
    defparam add_5130_16.INIT1 = 16'h5555;
    defparam add_5130_16.INJECT1_0 = "NO";
    defparam add_5130_16.INJECT1_1 = "NO";
    CCU2D add_5130_14 (.A0(counter[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6322), .COUT(n6323));
    defparam add_5130_14.INIT0 = 16'h5555;
    defparam add_5130_14.INIT1 = 16'h5555;
    defparam add_5130_14.INJECT1_0 = "NO";
    defparam add_5130_14.INJECT1_1 = "NO";
    CCU2D add_5130_12 (.A0(counter[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6321), .COUT(n6322));
    defparam add_5130_12.INIT0 = 16'h5555;
    defparam add_5130_12.INIT1 = 16'h5555;
    defparam add_5130_12.INJECT1_0 = "NO";
    defparam add_5130_12.INJECT1_1 = "NO";
    CCU2D add_5130_10 (.A0(counter[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6320), .COUT(n6321));
    defparam add_5130_10.INIT0 = 16'h5aaa;
    defparam add_5130_10.INIT1 = 16'h5555;
    defparam add_5130_10.INJECT1_0 = "NO";
    defparam add_5130_10.INJECT1_1 = "NO";
    CCU2D add_5130_8 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6319), .COUT(n6320));
    defparam add_5130_8.INIT0 = 16'h5555;
    defparam add_5130_8.INIT1 = 16'h5555;
    defparam add_5130_8.INJECT1_0 = "NO";
    defparam add_5130_8.INJECT1_1 = "NO";
    CCU2D add_5130_6 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6318), .COUT(n6319));
    defparam add_5130_6.INIT0 = 16'h5555;
    defparam add_5130_6.INIT1 = 16'h5aaa;
    defparam add_5130_6.INJECT1_0 = "NO";
    defparam add_5130_6.INJECT1_1 = "NO";
    CCU2D add_5130_4 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6317), .COUT(n6318));
    defparam add_5130_4.INIT0 = 16'h5555;
    defparam add_5130_4.INIT1 = 16'h5aaa;
    defparam add_5130_4.INJECT1_0 = "NO";
    defparam add_5130_4.INJECT1_1 = "NO";
    CCU2D add_5130_2 (.A0(counter[1]), .B0(counter[0]), .C0(GND_net), 
          .D0(GND_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n6317));
    defparam add_5130_2.INIT0 = 16'h7000;
    defparam add_5130_2.INIT1 = 16'h5aaa;
    defparam add_5130_2.INJECT1_0 = "NO";
    defparam add_5130_2.INJECT1_1 = "NO";
    FD1S3IX counter_966__i1 (.D(n133[1]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966__i1.GSR = "ENABLED";
    CCU2D counter_966_add_4_33 (.A0(counter[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6300), .S0(n133[31]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966_add_4_33.INIT0 = 16'hfaaa;
    defparam counter_966_add_4_33.INIT1 = 16'h0000;
    defparam counter_966_add_4_33.INJECT1_0 = "NO";
    defparam counter_966_add_4_33.INJECT1_1 = "NO";
    CCU2D counter_966_add_4_31 (.A0(counter[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6299), .COUT(n6300), .S0(n133[29]), .S1(n133[30]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966_add_4_31.INIT0 = 16'hfaaa;
    defparam counter_966_add_4_31.INIT1 = 16'hfaaa;
    defparam counter_966_add_4_31.INJECT1_0 = "NO";
    defparam counter_966_add_4_31.INJECT1_1 = "NO";
    CCU2D counter_966_add_4_29 (.A0(counter[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6298), .COUT(n6299), .S0(n133[27]), .S1(n133[28]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966_add_4_29.INIT0 = 16'hfaaa;
    defparam counter_966_add_4_29.INIT1 = 16'hfaaa;
    defparam counter_966_add_4_29.INJECT1_0 = "NO";
    defparam counter_966_add_4_29.INJECT1_1 = "NO";
    CCU2D counter_966_add_4_27 (.A0(counter[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6297), .COUT(n6298), .S0(n133[25]), .S1(n133[26]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966_add_4_27.INIT0 = 16'hfaaa;
    defparam counter_966_add_4_27.INIT1 = 16'hfaaa;
    defparam counter_966_add_4_27.INJECT1_0 = "NO";
    defparam counter_966_add_4_27.INJECT1_1 = "NO";
    FD1S3IX counter_966__i2 (.D(n133[2]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966__i2.GSR = "ENABLED";
    FD1S3IX counter_966__i3 (.D(n133[3]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966__i3.GSR = "ENABLED";
    FD1S3IX counter_966__i4 (.D(n133[4]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966__i4.GSR = "ENABLED";
    FD1S3IX counter_966__i5 (.D(n133[5]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966__i5.GSR = "ENABLED";
    FD1S3IX counter_966__i6 (.D(n133[6]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966__i6.GSR = "ENABLED";
    FD1S3IX counter_966__i7 (.D(n133[7]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966__i7.GSR = "ENABLED";
    FD1S3IX counter_966__i8 (.D(n133[8]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966__i8.GSR = "ENABLED";
    FD1S3IX counter_966__i9 (.D(n133[9]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966__i9.GSR = "ENABLED";
    FD1S3IX counter_966__i10 (.D(n133[10]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966__i10.GSR = "ENABLED";
    FD1S3IX counter_966__i11 (.D(n133[11]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966__i11.GSR = "ENABLED";
    FD1S3IX counter_966__i12 (.D(n133[12]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966__i12.GSR = "ENABLED";
    FD1S3IX counter_966__i13 (.D(n133[13]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966__i13.GSR = "ENABLED";
    FD1S3IX counter_966__i14 (.D(n133[14]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966__i14.GSR = "ENABLED";
    FD1S3IX counter_966__i15 (.D(n133[15]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966__i15.GSR = "ENABLED";
    FD1S3IX counter_966__i16 (.D(n133[16]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966__i16.GSR = "ENABLED";
    FD1S3IX counter_966__i17 (.D(n133[17]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966__i17.GSR = "ENABLED";
    FD1S3IX counter_966__i18 (.D(n133[18]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966__i18.GSR = "ENABLED";
    FD1S3IX counter_966__i19 (.D(n133[19]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966__i19.GSR = "ENABLED";
    FD1S3IX counter_966__i20 (.D(n133[20]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966__i20.GSR = "ENABLED";
    FD1S3IX counter_966__i21 (.D(n133[21]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966__i21.GSR = "ENABLED";
    FD1S3IX counter_966__i22 (.D(n133[22]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966__i22.GSR = "ENABLED";
    FD1S3IX counter_966__i23 (.D(n133[23]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966__i23.GSR = "ENABLED";
    FD1S3IX counter_966__i24 (.D(n133[24]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966__i24.GSR = "ENABLED";
    FD1S3IX counter_966__i25 (.D(n133[25]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966__i25.GSR = "ENABLED";
    FD1S3IX counter_966__i26 (.D(n133[26]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966__i26.GSR = "ENABLED";
    FD1S3IX counter_966__i27 (.D(n133[27]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966__i27.GSR = "ENABLED";
    FD1S3IX counter_966__i28 (.D(n133[28]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966__i28.GSR = "ENABLED";
    FD1S3IX counter_966__i29 (.D(n133[29]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966__i29.GSR = "ENABLED";
    FD1S3IX counter_966__i30 (.D(n133[30]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966__i30.GSR = "ENABLED";
    FD1S3IX counter_966__i31 (.D(n133[31]), .CK(clk_c), .CD(counter_31__N_85), 
            .Q(counter[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966__i31.GSR = "ENABLED";
    CCU2D counter_966_add_4_25 (.A0(counter[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6296), .COUT(n6297), .S0(n133[23]), .S1(n133[24]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966_add_4_25.INIT0 = 16'hfaaa;
    defparam counter_966_add_4_25.INIT1 = 16'hfaaa;
    defparam counter_966_add_4_25.INJECT1_0 = "NO";
    defparam counter_966_add_4_25.INJECT1_1 = "NO";
    CCU2D counter_966_add_4_23 (.A0(counter[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6295), .COUT(n6296), .S0(n133[21]), .S1(n133[22]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966_add_4_23.INIT0 = 16'hfaaa;
    defparam counter_966_add_4_23.INIT1 = 16'hfaaa;
    defparam counter_966_add_4_23.INJECT1_0 = "NO";
    defparam counter_966_add_4_23.INJECT1_1 = "NO";
    CCU2D counter_966_add_4_21 (.A0(counter[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6294), .COUT(n6295), .S0(n133[19]), .S1(n133[20]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966_add_4_21.INIT0 = 16'hfaaa;
    defparam counter_966_add_4_21.INIT1 = 16'hfaaa;
    defparam counter_966_add_4_21.INJECT1_0 = "NO";
    defparam counter_966_add_4_21.INJECT1_1 = "NO";
    CCU2D counter_966_add_4_19 (.A0(counter[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6293), .COUT(n6294), .S0(n133[17]), .S1(n133[18]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966_add_4_19.INIT0 = 16'hfaaa;
    defparam counter_966_add_4_19.INIT1 = 16'hfaaa;
    defparam counter_966_add_4_19.INJECT1_0 = "NO";
    defparam counter_966_add_4_19.INJECT1_1 = "NO";
    CCU2D counter_966_add_4_17 (.A0(counter[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6292), .COUT(n6293), .S0(n133[15]), .S1(n133[16]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966_add_4_17.INIT0 = 16'hfaaa;
    defparam counter_966_add_4_17.INIT1 = 16'hfaaa;
    defparam counter_966_add_4_17.INJECT1_0 = "NO";
    defparam counter_966_add_4_17.INJECT1_1 = "NO";
    CCU2D counter_966_add_4_15 (.A0(counter[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6291), .COUT(n6292), .S0(n133[13]), .S1(n133[14]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966_add_4_15.INIT0 = 16'hfaaa;
    defparam counter_966_add_4_15.INIT1 = 16'hfaaa;
    defparam counter_966_add_4_15.INJECT1_0 = "NO";
    defparam counter_966_add_4_15.INJECT1_1 = "NO";
    CCU2D counter_966_add_4_13 (.A0(counter[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6290), .COUT(n6291), .S0(n133[11]), .S1(n133[12]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966_add_4_13.INIT0 = 16'hfaaa;
    defparam counter_966_add_4_13.INIT1 = 16'hfaaa;
    defparam counter_966_add_4_13.INJECT1_0 = "NO";
    defparam counter_966_add_4_13.INJECT1_1 = "NO";
    CCU2D counter_966_add_4_11 (.A0(counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6289), .COUT(n6290), .S0(n133[9]), .S1(n133[10]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966_add_4_11.INIT0 = 16'hfaaa;
    defparam counter_966_add_4_11.INIT1 = 16'hfaaa;
    defparam counter_966_add_4_11.INJECT1_0 = "NO";
    defparam counter_966_add_4_11.INJECT1_1 = "NO";
    CCU2D counter_966_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6288), .COUT(n6289), .S0(n133[7]), .S1(n133[8]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966_add_4_9.INIT0 = 16'hfaaa;
    defparam counter_966_add_4_9.INIT1 = 16'hfaaa;
    defparam counter_966_add_4_9.INJECT1_0 = "NO";
    defparam counter_966_add_4_9.INJECT1_1 = "NO";
    CCU2D counter_966_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6287), .COUT(n6288), .S0(n133[5]), .S1(n133[6]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966_add_4_7.INIT0 = 16'hfaaa;
    defparam counter_966_add_4_7.INIT1 = 16'hfaaa;
    defparam counter_966_add_4_7.INJECT1_0 = "NO";
    defparam counter_966_add_4_7.INJECT1_1 = "NO";
    CCU2D counter_966_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6286), .COUT(n6287), .S0(n133[3]), .S1(n133[4]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_966_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_966_add_4_5.INJECT1_0 = "NO";
    defparam counter_966_add_4_5.INJECT1_1 = "NO";
    CCU2D counter_966_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6285), .COUT(n6286), .S0(n133[1]), .S1(n133[2]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_966_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_966_add_4_3.INJECT1_0 = "NO";
    defparam counter_966_add_4_3.INJECT1_1 = "NO";
    CCU2D counter_966_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n6285), .S1(n133[0]));   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_counter.v(26[46:60])
    defparam counter_966_add_4_1.INIT0 = 16'hF000;
    defparam counter_966_add_4_1.INIT1 = 16'h0555;
    defparam counter_966_add_4_1.INJECT1_0 = "NO";
    defparam counter_966_add_4_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module CD_config
//

module CD_config (c_VGA_ready, clk_VGA, n3880, c_UART_ready, n7359, 
            \c_data[0] , \c_data[1] , \c_data[2] , \baudrate[0] , \baudrate_next_23__N_262[0] , 
            \baudrate[7] , \baudrate[6] , \baudrate[4] , \baudrate[2] , 
            n7361, c_addr, c_valid, n7326, \H_BackPorch_nxt_7__N_772[3] , 
            \baudrate[1] , \baudrate[3] , n7362, \V_count_max[5] , V_Count_Max_nxt_11__N_1036, 
            \V_right_margin[1] , V_Right_Margin_nxt_9__N_999, \V_right_margin[5] , 
            V_Right_Margin_nxt_9__N_995, \H_right_margin[3] , H_Right_Margin_nxt_10__N_987, 
            \H_right_margin[5] , H_Right_Margin_nxt_10__N_985, \V_left_margin[1] , 
            V_Left_Margin_nxt_5__N_976, n7360, c_ready_next_N_344, n7338) /* synthesis syn_module_defined=1 */ ;
    output c_VGA_ready;
    input clk_VGA;
    input n3880;
    output c_UART_ready;
    input n7359;
    input \c_data[0] ;
    input \c_data[1] ;
    input \c_data[2] ;
    output \baudrate[0] ;
    input \baudrate_next_23__N_262[0] ;
    output \baudrate[7] ;
    output \baudrate[6] ;
    output \baudrate[4] ;
    output \baudrate[2] ;
    output n7361;
    input [3:0]c_addr;
    input c_valid;
    output n7326;
    output \H_BackPorch_nxt_7__N_772[3] ;
    output \baudrate[1] ;
    output \baudrate[3] ;
    input n7362;
    input \V_count_max[5] ;
    output V_Count_Max_nxt_11__N_1036;
    input \V_right_margin[1] ;
    output V_Right_Margin_nxt_9__N_999;
    input \V_right_margin[5] ;
    output V_Right_Margin_nxt_9__N_995;
    input \H_right_margin[3] ;
    output H_Right_Margin_nxt_10__N_987;
    input \H_right_margin[5] ;
    output H_Right_Margin_nxt_10__N_985;
    input \V_left_margin[1] ;
    output V_Left_Margin_nxt_5__N_976;
    output n7360;
    output c_ready_next_N_344;
    output n7338;
    
    wire clk_VGA /* synthesis is_clock=1, SET_AS_NETWORK=clk_VGA */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cs.v(36[6:13])
    
    wire n7340, n7327;
    wire [23:0]baudrate_next_23__N_262;
    
    wire clk_VGA_enable_9, n3069, n7344, n3068, n3067, n7354;
    
    FD1S3JX c_VGA_ready_reg_27 (.D(n7340), .CK(clk_VGA), .PD(n3880), .Q(c_VGA_ready)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=51, LSE_LLINE=46, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(44[7] 49[5])
    defparam c_VGA_ready_reg_27.GSR = "ENABLED";
    FD1S3JX c_UART_ready_reg_28 (.D(n7327), .CK(clk_VGA), .PD(n7359), 
            .Q(c_UART_ready)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=51, LSE_LLINE=46, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(44[7] 49[5])
    defparam c_UART_ready_reg_28.GSR = "ENABLED";
    LUT4 c_data_0__bdd_3_lut (.A(\c_data[0] ), .B(\c_data[1] ), .C(\c_data[2] ), 
         .Z(baudrate_next_23__N_262[1])) /* synthesis lut_function=(!(A (C)+!A !((C)+!B))) */ ;
    defparam c_data_0__bdd_3_lut.init = 16'h5b5b;
    FD1P3AY baudrate_reg_i0_i0 (.D(\baudrate_next_23__N_262[0] ), .SP(clk_VGA_enable_9), 
            .CK(clk_VGA), .Q(\baudrate[0] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=51, LSE_LLINE=46, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(44[7] 49[5])
    defparam baudrate_reg_i0_i0.GSR = "ENABLED";
    FD1P3IX baudrate_reg_i0_i7 (.D(\c_data[0] ), .SP(clk_VGA_enable_9), 
            .CD(n3069), .CK(clk_VGA), .Q(\baudrate[7] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=51, LSE_LLINE=46, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(44[7] 49[5])
    defparam baudrate_reg_i0_i7.GSR = "ENABLED";
    FD1P3IX baudrate_reg_i0_i6 (.D(n7344), .SP(clk_VGA_enable_9), .CD(n3069), 
            .CK(clk_VGA), .Q(\baudrate[6] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=51, LSE_LLINE=46, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(44[7] 49[5])
    defparam baudrate_reg_i0_i6.GSR = "ENABLED";
    FD1P3IX baudrate_reg_i0_i4 (.D(baudrate_next_23__N_262[3]), .SP(clk_VGA_enable_9), 
            .CD(n3068), .CK(clk_VGA), .Q(\baudrate[4] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=51, LSE_LLINE=46, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(44[7] 49[5])
    defparam baudrate_reg_i0_i4.GSR = "ENABLED";
    FD1P3JX baudrate_reg_i0_i2 (.D(n7354), .SP(clk_VGA_enable_9), .PD(n3067), 
            .CK(clk_VGA), .Q(\baudrate[2] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=51, LSE_LLINE=46, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(44[7] 49[5])
    defparam baudrate_reg_i0_i2.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_114_4_lut (.A(n7361), .B(c_addr[1]), .C(c_addr[0]), 
         .D(c_valid), .Z(n7326)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(71[16:46])
    defparam i1_2_lut_rep_114_4_lut.init = 16'hfffe;
    LUT4 i1132_1_lut_rep_132 (.A(\c_data[0] ), .Z(n7344)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(62[6] 69[13])
    defparam i1132_1_lut_rep_132.init = 16'h5555;
    LUT4 i2293_2_lut_2_lut (.A(\c_data[0] ), .B(clk_VGA_enable_9), .Z(n3068)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(62[6] 69[13])
    defparam i2293_2_lut_2_lut.init = 16'h4444;
    LUT4 i2999_2_lut_2_lut (.A(\c_data[0] ), .B(\c_data[1] ), .Z(\H_BackPorch_nxt_7__N_772[3] )) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(62[6] 69[13])
    defparam i2999_2_lut_2_lut.init = 16'hdddd;
    FD1P3AX baudrate_reg_i0_i1 (.D(baudrate_next_23__N_262[1]), .SP(clk_VGA_enable_9), 
            .CK(clk_VGA), .Q(\baudrate[1] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=51, LSE_LLINE=46, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(44[7] 49[5])
    defparam baudrate_reg_i0_i1.GSR = "ENABLED";
    FD1P3AY baudrate_reg_i0_i3 (.D(baudrate_next_23__N_262[3]), .SP(clk_VGA_enable_9), 
            .CK(clk_VGA), .Q(\baudrate[3] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=11, LSE_RCOL=51, LSE_LLINE=46, LSE_RLINE=49 */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(44[7] 49[5])
    defparam baudrate_reg_i0_i3.GSR = "ENABLED";
    LUT4 i1137_2_lut_rep_142 (.A(\c_data[0] ), .B(\c_data[1] ), .Z(n7354)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(62[6] 69[13])
    defparam i1137_2_lut_rep_142.init = 16'h6666;
    LUT4 V_count_max_5__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n7362), .D(\V_count_max[5] ), .Z(V_Count_Max_nxt_11__N_1036)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(62[6] 69[13])
    defparam V_count_max_5__I_0_3_lut_4_lut.init = 16'h6f60;
    LUT4 V_right_margin_1__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n7362), .D(\V_right_margin[1] ), .Z(V_Right_Margin_nxt_9__N_999)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(62[6] 69[13])
    defparam V_right_margin_1__I_0_3_lut_4_lut.init = 16'h6f60;
    LUT4 V_right_margin_5__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n7362), .D(\V_right_margin[5] ), .Z(V_Right_Margin_nxt_9__N_995)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(62[6] 69[13])
    defparam V_right_margin_5__I_0_3_lut_4_lut.init = 16'h6f60;
    LUT4 H_right_margin_3__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n7362), .D(\H_right_margin[3] ), .Z(H_Right_Margin_nxt_10__N_987)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(62[6] 69[13])
    defparam H_right_margin_3__I_0_3_lut_4_lut.init = 16'h6f60;
    LUT4 H_right_margin_5__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n7362), .D(\H_right_margin[5] ), .Z(H_Right_Margin_nxt_10__N_985)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(62[6] 69[13])
    defparam H_right_margin_5__I_0_3_lut_4_lut.init = 16'h6f60;
    LUT4 V_left_margin_1__I_0_3_lut_4_lut (.A(\c_data[0] ), .B(\c_data[1] ), 
         .C(n7362), .D(\V_left_margin[1] ), .Z(V_Left_Margin_nxt_5__N_976)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(62[6] 69[13])
    defparam V_left_margin_1__I_0_3_lut_4_lut.init = 16'h6f60;
    LUT4 c_addr_3__I_0_30_i6_2_lut_rep_148 (.A(c_addr[2]), .B(c_addr[3]), 
         .Z(n7360)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(61[7:36])
    defparam c_addr_3__I_0_30_i6_2_lut_rep_148.init = 16'hdddd;
    LUT4 i1_2_lut_rep_115_3_lut_4_lut (.A(c_addr[2]), .B(c_addr[3]), .C(c_addr[0]), 
         .D(c_addr[1]), .Z(n7327)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(61[7:36])
    defparam i1_2_lut_rep_115_3_lut_4_lut.init = 16'hfffd;
    LUT4 n6_bdd_3_lut_4_lut (.A(c_addr[2]), .B(c_addr[3]), .C(c_addr[0]), 
         .D(c_addr[1]), .Z(c_ready_next_N_344)) /* synthesis lut_function=((B+(C (D)+!C !(D)))+!A) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(61[7:36])
    defparam n6_bdd_3_lut_4_lut.init = 16'hfddf;
    LUT4 i1_4_lut_rep_111 (.A(c_valid), .B(\c_data[1] ), .C(n7327), .D(\c_data[2] ), 
         .Z(clk_VGA_enable_9)) /* synthesis lut_function=(!((B (C+(D))+!B (C))+!A)) */ ;
    defparam i1_4_lut_rep_111.init = 16'h020a;
    LUT4 i2292_2_lut_4_lut (.A(c_valid), .B(\c_data[1] ), .C(n7327), .D(\c_data[2] ), 
         .Z(n3067)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i2292_2_lut_4_lut.init = 16'h0200;
    LUT4 c_addr_3__I_0_i6_2_lut_rep_149 (.A(c_addr[2]), .B(c_addr[3]), .Z(n7361)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(71[16:46])
    defparam c_addr_3__I_0_i6_2_lut_rep_149.init = 16'hbbbb;
    LUT4 i3161_2_lut_rep_126_3_lut (.A(c_addr[2]), .B(c_addr[3]), .C(c_valid), 
         .Z(n7338)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(71[16:46])
    defparam i3161_2_lut_rep_126_3_lut.init = 16'hfbfb;
    LUT4 i2294_2_lut_3_lut (.A(c_valid), .B(n7327), .C(\c_data[2] ), .Z(n3069)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i2294_2_lut_3_lut.init = 16'h0202;
    LUT4 i2_3_lut_rep_128_4_lut (.A(c_addr[2]), .B(c_addr[3]), .C(c_addr[0]), 
         .D(c_addr[1]), .Z(n7340)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(71[16:46])
    defparam i2_3_lut_rep_128_4_lut.init = 16'hfffb;
    LUT4 i3090_2_lut (.A(\c_data[1] ), .B(\c_data[2] ), .Z(baudrate_next_23__N_262[3])) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/denisa/desktop/github/incercari/implementare/diamond/cs_implementation/source/cd_config.v(62[6] 69[13])
    defparam i3090_2_lut.init = 16'heeee;
    
endmodule
