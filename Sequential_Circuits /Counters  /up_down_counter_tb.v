`timescale 1ns / 1ps
module up_down_counter_tb();
    reg  clk, rst, m;
     wire [2:0] q;


up_down_counter dut(clk,rst,m,q);
always #5 clk = ~clk;
initial
begin
m=1'b0;
clk = 1'b0;
rst = 1'b1;
#10;
rst = 1'b0;
#100;
m=1'b1;
#100;
$finish ;
end 
endmodule
