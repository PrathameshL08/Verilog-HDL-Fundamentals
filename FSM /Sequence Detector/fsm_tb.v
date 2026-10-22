`timescale 1ns / 1ps 
module fsm_tb();

reg clk, rst, x;
wire y;
wire [1:0] ps;

fsm dut (
    .clk(clk),
    .rst(rst),
    .x(x),
    .y(y),
    .ps(ps)
);

always #5 clk = ~clk;

initial begin
    clk = 1'b0;
    rst = 1'b1;
    x   = 1'b0;

    #10;
    rst = 1'b0;

    // Input sequence: 1101101
    #10; x = 1'b1;
    #10; x = 1'b1;
    #10; x = 1'b0;
    #10; x = 1'b1;  
    #10; x = 1'b1;
    #10; x = 1'b0;
    #10; x = 1'b1;  

    #10;
    x = 1'b0;

    #1;
    $finish;
end

endmodule
