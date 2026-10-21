`timescale 1ns / 1ps 

module johnson_counter_tb();

    reg clk, rst;
    wire [3:0] q;

    johnson_counter dut (
        .clk(clk),
        .rst(rst),
        .q(q)
    );

     always #5 clk = ~clk;

    initial begin
        clk = 1'b0;
        rst = 1'b1;

        @(negedge clk);
        rst = 1'b0;
        #100;
         $finish;
    end


endmodule
