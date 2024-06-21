

module DB
(
input clk,
input rst_n,

input btnHS,
input btnVS,
input btnDF_UART,
input btnDF_VGA,
 
output HS,
output VS,
output DF_UART,
output DF_VGA
);

DB_debouncer DB_HS(.clk(clk), .rst_n(rst_n), .button(btnHS), .signal(HS));	
DB_debouncer DB_VS(.clk(clk), .rst_n(rst_n), .button(btnVS), .signal(VS));	
DB_debouncer DB_DF_UART(.clk(clk), .rst_n(rst_n), .button(btnDF_UART), .signal(DF_UART));	
DB_debouncer DB_DF_VGA(.clk(clk), .rst_n(rst_n), .button(btnDF_VGA), .signal(DF_VGA));	

endmodule

