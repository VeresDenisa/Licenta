`timescale 1 ns/1 ns

module DB_nxtebouncer(
  input clk,
  input rst,
  input button,
  output signal
);

  reg ctr_nxt, ctr_ff; 
  reg [1:0] sync_nxt, sync_ff;
 
  always @(posedge clk or posedge rst) begin
    if(rst) begin
      ctr_ff <= 'd0;
      sync_ff <= 'd0;
    end else begin
      ctr_ff <= ctr_nxt;
      sync_ff <= sync_nxt; 
    end
  end
 
  always @(*) begin
    sync_nxt[0] = button;
    sync_nxt[1] = sync_ff[0];
    ctr_nxt = ctr_ff + 1'b1;
 
    if(ctr_ff == 1'b1) ctr_nxt = ctr_ff;
    if(!sync_ff[1]) ctr_nxt = 'd0;
  end
  
  assign signal = ctr_ff == 1'b1;
  
endmodule