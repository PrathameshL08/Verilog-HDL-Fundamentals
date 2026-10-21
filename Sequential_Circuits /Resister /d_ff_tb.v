`timescale 1ns / 1ps 
module d_ff_tb();

    reg [1:0] d;
    reg clk, rst;
    wire [1:0] q;

    d_ff dut (.d(d), .clk(clk), .rst(rst), .q(q));

    always #5 clk = ~clk;

    initial begin
        clk = 1'b0;
        rst = 1'b1;
        d = 2'b00;

        #10;
        rst = 1'b0;

        d = 2'b10;
        #5;
        d = 2'b11;
        #5;
        d = 2'b00;
        #5;
        d = 2'b01;
        #5;
        d = 2'b11;
        #10;

        $finish;
    end

endmodule
