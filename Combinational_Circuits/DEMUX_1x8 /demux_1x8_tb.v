`timescale 1ns / 1ps


module demux_1x8_tb();

    reg i;
    reg [2:0] sel;
    wire [7:0] y;

    demux_1x8 dut (
        .i(i),
        .sel(sel),
        .y(y)
    );

    initial begin
        i = 1'b1;

        sel = 3'b000;
         #5;
        sel = 3'b001;
         #5;
        sel = 3'b010;
         #5;
        sel = 3'b011; 
        #5;
        sel = 3'b100; 
        #5;
        sel = 3'b101; 
        #5;
        sel = 3'b110; 
        #5;
        sel = 3'b111;
         #5;

        i = 1'b0;
        sel = 3'b000; 
        #5;

        $finish;
    end

endmodule
