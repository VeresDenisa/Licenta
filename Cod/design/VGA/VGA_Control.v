`timescale 1 ns/1 ns  
/*
	Module Name: VGA_Control 
 	This is a configurable module, a controller for the the VGA.

	VGA will respond to the configuration bus only at C_valid active, C_addr = 10, C_data can be:
	00(640x480-default);
	01 (800x600);
	10(1024x768).
*/

module VGA_Control
	#(`include "../PARAM/VGA_Width_Parameters.v")
	(input Clk,
	input Rst,
	input C_valid,
	input [CONFIG_WIDTH-1:0] C_addr,
	input [CONFIG_WIDTH-1:0] C_data,
	input [DATA_WIDTH-1:0]  Data_in,
	output 	C_rdy,
	output  HSync,
	output  VSync,
	output [COLOR_WIDTH-1:0] Red,
	output [COLOR_WIDTH-1:0] Green,
	output [COLOR_WIDTH-1:0] Blue);
	
	
	
	wire Load_config;
	
	wire [HL_MARGIN_WIDTH-1:0] 	H_left_margin;
	wire [HR_MARGIN_WIDTH-1:0] 	H_right_margin;
	wire [VL_MARGIN_WIDTH-1:0] 	V_left_margin;
	wire [VR_MARGIN_WIDTH-1:0] 	V_right_margin;
	
	wire [REZ_MAX_WIDTH-1:0] H_count_max;
	wire [PULSE_WIDTH-1:0]   H_sync_pulse;
	wire [REZ_MAX_WIDTH-1:0] V_count_max;
	wire [PULSE_WIDTH-1:0]   V_sync_pulse;

	wire  [REZ_MAX_WIDTH-1:0]  	Count_h;
	wire  [REZ_MAX_WIDTH-1:0]  	Count_v;
	
	VGA_Config config1(	.Clk(Clk), 
					.Rst(Rst),
					.Valid(C_valid),
					.Addr(C_addr),
					.Data(C_data),
					.Load_config(Load_config),
					.H_left_margin(H_left_margin),
					.H_right_margin(H_right_margin),
					.V_left_margin(V_left_margin),
					.V_right_margin(V_right_margin),
					.H_count_max(H_count_max),
					.H_sync_pulse(H_sync_pulse),
					.V_count_max(V_count_max),
					.V_sync_pulse(V_sync_pulse));
					
	
	VGA_Counter CounterH(.Clk(Clk),
					.Rst(Rst||Load_config),
					.Sync_pulse(H_sync_pulse),
					.Count_max(H_count_max), 
					.Counter_sync(HSync),
					.CounterP(Count_h));
					
	VGA_Counter CounterV(.Clk(HSync),
					.Rst(Rst||Load_config),
					.Sync_pulse(V_sync_pulse),
					.Count_max(V_count_max), 
					.Counter_sync(VSync),
					.CounterP(Count_v));
					
	VGA_Assign_color assgncolor(.Clk(Clk),
							.Rst(Rst),
							.Data(Data_in),
							.Count_h(Count_h),
							.Count_v(Count_v),
							.H_left_margin(H_left_margin),
							.H_right_margin(H_right_margin),
							.V_left_margin(V_left_margin),
							.V_right_margin(V_right_margin),
							.Red(Red),
							.Green(Green),
							.Blue(Blue));
					
	
    assign C_rdy = ~Load_config;
	
endmodule