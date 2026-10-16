`timescale 1ns / 1ps

module d_ff(
    input [1:0] d,
    input clk,
    input rst,
    output reg [1:0] q
);

    always @(posedge clk) begin
        if (rst)
            q <= 2'b00;
        else
            q <= d;
    end

endmodule
