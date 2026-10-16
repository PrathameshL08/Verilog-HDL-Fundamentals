`timescale 1ns /1ps 
module jk_ff_tb();
    reg j, k, clk, rst;
    wire q;

    jk_ff dut (
        .j(j),
        .k(k),
        .clk(clk),
        .rst(rst),
        .q(q)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 1'b0;
        rst = 1'b1;
        j = 1'b0;
        k = 1'b0;

        #10;
        rst = 1'b0;

        @(negedge clk);
        {j,k} = 2'b00;  

        @(negedge clk);
        {j,k} = 2'b01;  

        @(negedge clk);
        {j,k} = 2'b10;  

        @(negedge clk);
        {j,k} = 2'b11;  

        @(negedge clk);
      {j,k} = 2'b00;   

        #10;
        $finish;
    end
endmodule
