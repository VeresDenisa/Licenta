`timescale 1 ns/1 ns  

module VGA_Control_tb
	#(`include "../PARAM/VGA_Width_Parameters.v");
	
	 
	parameter CLK_F     	 = 2;
	parameter RST_DURATION 	 = 3;
	parameter WAIT 		     = 100;
	parameter WAIT_CONFIG 	 = 600;
	
	reg Clk, Rst, C_valid;
	reg [CONFIG_WIDTH-1:0] C_addr, C_data;
	reg [DATA_WIDTH-1:0] Data_in;
	
	wire  C_rdy;
	wire  HSync;
	wire  VSync;
	wire [COLOR_WIDTH-1:0]  Red;
	wire [COLOR_WIDTH-1:0]  Green;
	wire [COLOR_WIDTH-1:0]  Blue;

	
	VGA_Control vga(.Clk(Clk),
					.Rst(Rst),
					.C_valid(C_valid), 
					.C_addr(C_addr), 
					.C_data(C_data),
					.Data_in(Data_in),
					.C_rdy(C_rdy),
					.Red(Red), 
					.Green(Green), 
					.Blue(Blue), 
					.HSync(HSync), 
					.VSync(VSync));

	defparam		VGA_Control_tb.vga.config1.H_Left_Margin_RD	= 'b1;//1;
	defparam		VGA_Control_tb.vga.config1.V_Left_Margin_RD	= 'b10;//2;
	defparam		VGA_Control_tb.vga.config1.H_Right_Margin_RD= 'b0111;//7;
	defparam		VGA_Control_tb.vga.config1.V_Right_Margin_RD= 'b1000;//8;
	defparam		VGA_Control_tb.vga.config1.H_Sync_Pulse_RD	= 'b1;//1;
	defparam		VGA_Control_tb.vga.config1.V_Sync_Pulse_RD	= 'b0;//0;
	defparam		VGA_Control_tb.vga.config1.H_Count_Max_RD	= 'b1010;//10;
	defparam		VGA_Control_tb.vga.config1.V_Count_Max_RD	= 'b1100;//12;
	
	initial 
	begin
		//making the Clock signal
		Clk = 1'b1;
		forever #CLK_F Clk = ~Clk;
	end
				
	initial
	begin
		//1 clock cicle reset
		Rst = 1'b1;
		#RST_DURATION 
		Rst = 1'b0;
	end
	
	
	initial
	begin
		//Set the data
		C_valid = 0;
		C_addr  = 4'b1000;
		C_data  = 2'b00;
		Data_in = 12'b101011111010;

		
		#WAIT_CONFIG
		C_valid = 1;
		C_addr  = 4'b1011;
		C_data  = 2'b10;
		Data_in = 12'b111011110000;
	end
	


endmodule