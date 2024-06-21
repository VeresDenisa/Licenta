[ActiveSupport PAR]
; Global primary clocks
GLOBAL_PRIMARY_USED = 3;
; Global primary clock #0
GLOBAL_PRIMARY_0_SIGNALNAME = clk_VGA;
GLOBAL_PRIMARY_0_DRIVERTYPE = PLL;
GLOBAL_PRIMARY_0_LOADNUM = 10;
; Global primary clock #1
GLOBAL_PRIMARY_1_SIGNALNAME = clk_c;
GLOBAL_PRIMARY_1_DRIVERTYPE = CLK_PIN;
GLOBAL_PRIMARY_1_LOADNUM = 218;
; Global primary clock #2
GLOBAL_PRIMARY_2_SIGNALNAME = vga/config1/H_Left_Margin_nxt_8__N_967;
GLOBAL_PRIMARY_2_DRIVERTYPE = SLICE;
GLOBAL_PRIMARY_2_LOADNUM = 41;
; # of global secondary clocks
GLOBAL_SECONDARY_USED = 8;
; Global secondary clock #0
GLOBAL_SECONDARY_0_SIGNALNAME = counter_31__N_85;
GLOBAL_SECONDARY_0_DRIVERTYPE = SLICE;
GLOBAL_SECONDARY_0_LOADNUM = 19;
GLOBAL_SECONDARY_0_SIGTYPE = RST;
; Global secondary clock #1
GLOBAL_SECONDARY_1_SIGNALNAME = clk_UART;
GLOBAL_SECONDARY_1_DRIVERTYPE = SLICE;
GLOBAL_SECONDARY_1_LOADNUM = 14;
GLOBAL_SECONDARY_1_SIGTYPE = CLK;
; Global secondary clock #2
GLOBAL_SECONDARY_2_SIGNALNAME = HSYNC_c;
GLOBAL_SECONDARY_2_DRIVERTYPE = SLICE;
GLOBAL_SECONDARY_2_LOADNUM = 16;
GLOBAL_SECONDARY_2_SIGTYPE = CLK+CE+RST;
; Global secondary clock #3
GLOBAL_SECONDARY_3_SIGNALNAME = counter_31__N_85_adj_1144;
GLOBAL_SECONDARY_3_DRIVERTYPE = SLICE;
GLOBAL_SECONDARY_3_LOADNUM = 23;
GLOBAL_SECONDARY_3_SIGTYPE = RST;
; Global secondary clock #4
GLOBAL_SECONDARY_4_SIGNALNAME = n7362;
GLOBAL_SECONDARY_4_DRIVERTYPE = SLICE;
GLOBAL_SECONDARY_4_LOADNUM = 64;
GLOBAL_SECONDARY_4_SIGTYPE = RST;
; Global secondary clock #5
GLOBAL_SECONDARY_5_SIGNALNAME = uart/UART_STATE/error_1__N_334;
GLOBAL_SECONDARY_5_DRIVERTYPE = SLICE;
GLOBAL_SECONDARY_5_LOADNUM = 14;
GLOBAL_SECONDARY_5_SIGTYPE = RST;
; Global secondary clock #6
GLOBAL_SECONDARY_6_SIGNALNAME = vga/Count_h_11__N_948;
GLOBAL_SECONDARY_6_DRIVERTYPE = SLICE;
GLOBAL_SECONDARY_6_LOADNUM = 14;
GLOBAL_SECONDARY_6_SIGTYPE = RST;
; Global secondary clock #7
GLOBAL_SECONDARY_7_SIGNALNAME = cd/CNT_UART/clk_UART_N_18;
GLOBAL_SECONDARY_7_DRIVERTYPE = SLICE;
GLOBAL_SECONDARY_7_LOADNUM = 13;
GLOBAL_SECONDARY_7_SIGTYPE = RST;
; I/O Bank 0 Usage
BANK_0_USED = 1;
BANK_0_AVAIL = 51;
BANK_0_VCCIO = 3.3V;
BANK_0_VREF1 = NA;
; I/O Bank 1 Usage
BANK_1_USED = 8;
BANK_1_AVAIL = 52;
BANK_1_VCCIO = 3.3V;
BANK_1_VREF1 = NA;
; I/O Bank 2 Usage
BANK_2_USED = 5;
BANK_2_AVAIL = 52;
BANK_2_VCCIO = 2.5V;
BANK_2_VREF1 = NA;
; I/O Bank 3 Usage
BANK_3_USED = 4;
BANK_3_AVAIL = 16;
BANK_3_VCCIO = 3.3V;
BANK_3_VREF1 = NA;
; I/O Bank 4 Usage
BANK_4_USED = 7;
BANK_4_AVAIL = 16;
BANK_4_VCCIO = 3.3V;
BANK_4_VREF1 = NA;
; I/O Bank 5 Usage
BANK_5_USED = 5;
BANK_5_AVAIL = 20;
BANK_5_VCCIO = 3.3V;
BANK_5_VREF1 = NA;