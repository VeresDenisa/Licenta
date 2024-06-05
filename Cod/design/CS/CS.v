`timescale 1 ns/1 ns

module CS
#(`include "../PARAM/LM_params.v")
(
input clk,
input rst,

input btnHS,
input btnVS,
input btnUART,
input btnVGA, 

input in,

output HSYNC,
output VSYNC,

output [WIDTH_LEDS-1:0]LEDS,

output [3:0]RED, 
output [3:0]GREEN, 
output [3:0]BLUE
);

// debounced switches
wire button_signal_HS;
wire button_signal_VS;
wire button_signal_DEBUG_UART;
wire button_signal_DEBUG_VGA;

// clock signal for VGA, UART, DB and LM
wire clk_VGA;
wire clk_UART;
wire clk_DB;
wire clk_LM;

// Configuraion bus
wire c_valid;
wire [2:0]c_ready;
wire [13:0]c_data;
wire [3:0]c_addr;

CD cd(.clk(clk), .rst(rst), .clkinVGA(clk_VGA),
					.c_valid(c_valid), .c_addr(c_addr), .c_data(c_data[7:0]), .c_ready(c_ready[2]), 
					.clk_VGA(clk_VGA), .clk_UART(clk_UART), .clk_LM(clk_LM), .clk_DB(clk_DB));	

DB db(.clk(clk_DB), .rst(rst),
  .btnHS(btnHS), .HS(button_signal_HS), 
	.btnVS(btnVS), .VS(button_signal_VS), 
	.btnDF_UART(btnUART), .DF_UART(button_signal_DEBUG_UART), 
	.btnDF_VGA(btnVGA), .DF_VGA(button_signal_DEBUG_VGA)
);	
			
// UART erors and data					
wire [1:0]UART_error;		
wire UART_valid_error;

wire [7:0]UART_out;		
wire UART_valid_out;
					
UART uart(.clk(clk_UART), .rst(rst),
  .in(in), .clkinVGA(clk_VGA),
	.c_valid(c_valid), .c_addr(c_addr), .c_data(c_data[7:0]), .c_ready(c_ready[1]),
	.error(UART_error), .valid_error(UART_valid_error),
	.out(UART_out), .valid_out(UART_valid_out)
);

wire [7:0]UART_out_CM_data;
wire UART_out_CM_data_empty;

Sync_Reg #(.SIZE(8)) FIFO_UART_CM(
  .w_clk(clk_UART), .r_clk(clk_LM), .rst(rst), 
  .w_data(UART_out), .w_en(UART_valid_out & ~button_signal_DEBUG_UART), 
  .r_data(UART_out_CM_data), .r_empty(UART_out_CM_data_empty));	
  
wire [7:0]config_status;
wire [3:0] Config_Notification;
wire Config_Notification_Valid;
wire [3:0] Config_Error;
wire Error_Valid;
wire [3:0] VGA_Notification;
wire VGA_Notification_Valid;
wire [11:0] Data_VGA;

Color_Manager cm  (.Clk(clk), .Rst(rst),
		.Empty(UART_out_CM_data_empty), .RXD_Data(UART_out_CM_data),
		.C_Rdy(&c_ready), .C_Addr(c_addr),
		.C_Data(c_data), .C_Valid(c_valid),
		.Vertical_Split(button_signal_VS), .Horizontal_Split(button_signal_HS),
	  .VGA_Debugg(button_signal_DEBUG_VGA),
		.HSync(HSYNC), .VSync(VSYNC),
		.Config_Status(config_status),
		.Config_Notification(Config_Notification), .Config_Notification_Valid(Config_Notification_Valid),
		.Config_Error(Config_Error), .Error_Valid(Error_Valid),
		.VGA_Notification(VGA_Notification), .VGA_Notification_Valid(VGA_Notification_Valid),
	  .Data_VGA(Data_VGA));

VGA_Control vga(.Clk(clk), .Rst(rst),
  .Data_in(Data_VGA),
	.C_valid(c_valid), .C_addr(c_addr[3:2]), 
	.C_data(c_data[1:0]), .C_rdy(c_ready[0]),
	.Red(RED), .Green(GREEN), .Blue(BLUE), 
	.HSync(HSYNC), .VSync(VSYNC));
		

// wires between Led Manager and the 3 FIFO witch synchonizes the data 
wire UART_info_empty;
wire [7:0]UART_out_data;

wire UART_error_empty;
wire [1:0]UART_error_data;

wire VGA_error_empty;
wire [3:0]VGA_error_data;
		
Sync_Reg #(.SIZE(8)) FIFO_UART_info(
  .w_clk(clk_UART), .r_clk(clk_LM), .rst(rst), 
  .w_data(UART_out), .w_en(UART_valid_out & button_signal_DEBUG_UART), 
  .r_data(UART_out_data), .r_empty(UART_info_empty));	
  	
Sync_Reg #(.SIZE(2)) FIFO_UART_error(
  .w_clk(clk_UART), .r_clk(clk_LM), .rst(rst), 
  .w_data(UART_error), .w_en(UART_valid_error), 
  .r_data(UART_error_data), .r_empty(UART_error_empty));
  		
Sync_Reg #(.SIZE(4)) FIFO_CM_error(
  .w_clk(clk_VGA), .r_clk(clk_LM), .rst(rst), 
  .w_data((VGA_Notification_Valid) ? (VGA_Notification) : ((Error_Valid) ? (Config_Error) : ((Config_Notification_Valid) ? (Config_Notification) : 4'b0000))), .w_en((Config_Notification_Valid | Error_Valid | VGA_Notification_Valid) & ~button_signal_DEBUG_UART), 
  .r_data(VGA_error_data), .r_empty(VGA_error_empty));

LM lm(
  .clk(clk_LM), .rst(rst),
  .UART_data_debug_switch(button_signal_DEBUG_UART), 
  .UART_data(UART_out_data), .UART_data_valid(UART_info_empty),
  .CM_errors(VGA_error_data), .CM_errors_valid(VGA_error_empty),
  .UART_errors(UART_error_data), .UART_errors_valid(UART_error_empty),
  .config_notification(config_status),
  .leds(LEDS)
);			
endmodule