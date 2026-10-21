`timescale 1ns / 1ps

module siso_register_tb();
reg  rst,clk,serial_in;
wire  serial_out;
wire  [3:0]q;
siso_resister dut( rst,clk,serial_in,serial_out,q);
always #5 clk = ~clk;

    initial begin
        clk = 1'b0;
        rst = 1'b1;
        serial_in = 1'b0;

         
        @(negedge clk);
        rst = 1'b0;

        // Send 1101, LSB first: 1, 0, 1, 1
        serial_in = 1'b1;
        @(negedge clk);

        serial_in = 1'b0;
        @(negedge clk);

        serial_in = 1'b1;
        @(negedge clk);

        serial_in = 1'b1;
        @(negedge clk);

        
        #1;
        $finish;
    end

endmodule
