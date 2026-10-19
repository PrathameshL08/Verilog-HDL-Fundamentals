`timescale 1ns / 1ps 
module up_down_counter (
    input clk, rst, m,
    output reg [2:0] q
);

    always @(posedge clk) begin
        if (rst)
            q <= 3'b000;
        else begin
            case (m)
                1'b0: q <= q + 3'b001; // Count up
                1'b1: q <= q - 3'b001; // Count down
                default: q <= q;
            endcase
        end
    end

endmodule
