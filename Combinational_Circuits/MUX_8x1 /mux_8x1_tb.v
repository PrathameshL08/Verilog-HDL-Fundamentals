`timescale 1ns / 1ps 
module mux_8x1_tb();

    reg [7:0] i;
    reg [2:0] sel;
    wire y;

    mux_8x1 dut(
        .i(i),
        .sel(sel),
        .y(y)
    );

    initial
      begin
        i = 8'b10110011;

        sel = 3'b111;
        #5;
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

        $finish;
    end

endmodule
