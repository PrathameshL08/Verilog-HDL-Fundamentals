`timescale 1ns / 1ps


module siso_register(
input rst,clk,data_in,
output  data_out,
output reg [3:0]q
 );
 always@(posedge clk) begin 
 if(rst)
 q <= 4'b0000;
 else begin 
 q[0] <= data_in;
 q[1] <= q[0];
 q[2] <= q[1];
 q[3] <= q[2];
     end  
 end
 assign data_out = q[3]; 
endmodule
