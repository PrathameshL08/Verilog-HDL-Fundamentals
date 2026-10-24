`timescale 1ns / 1ps 
module fsm_tb();

reg x, clk, rst;
wire y;
wire ps;

fsm dut(x, clk, rst, y, ps);

always #5 clk = ~clk;

initial begin
    clk = 1'b0;
    rst = 1'b1;
     x  = 1'b0;

    #10;
    rst = 1'b0;

 
    @(negedge clk); x = 1'b0;
    @(negedge clk); x = 1'b1;
    @(negedge clk); x = 1'b0;
    @(negedge clk); x = 1'b1;

    @(negedge clk);
    $finish;
end

endmodule
