/*
-----COUNTER-----

This 32-bit counter has a limit input though which the maximum value is set.
When the count reaches the limit value, the clkock changes.
*/

`timescale 1 ns/1 ns

module CD_counter
  #(`include "../PARAM/CD_params.v", 
   parameter WIDTH = CLK_MAX_WIDTH)
(
input             clk, rst, 
input [WIDTH-1:0] limit,
output reg        clkout
);
  
  reg [WIDTH-1:0] counter;
  
  always@(posedge clk or posedge rst) begin
    if(rst) begin 
	    counter <= 'b0; 
	    clkout <= 1'b0;
	  end else begin
	    counter <= (counter >= limit - 1) ? 0 : counter + 1'b1;
	    clkout <= (counter >= limit - 1) ? ~clkout : clkout;
	  end
  end    
endmodule