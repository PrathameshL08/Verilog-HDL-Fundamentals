`timescale 1ns / 1ps 

module fsm(x, clk, rst, y, ps);

input x, clk, rst;
output reg y;
output reg ps;

reg ns;

parameter s0 = 1'b0;  // Even parity
parameter s1 = 1'b1;  // Odd parity

 
always @(posedge clk) begin
    if (rst)
        ps <= s0;
    else
        ps <= ns;
end

 
always @(*) begin
    ns = ps;
    y  = 1'b0;

    case (ps)
        s0: begin
            if (x) begin
                ns = s1;
                y  = 1'b0;
            end
            else begin
                ns = s0;
                y  = 1'b1;
            end
        end

        s1: begin
            if (x) begin
                ns = s0;
                y  = 1'b1;
            end
            else begin
                ns = s1;
                y  = 1'b0;
            end
        end

        default: begin
            ns = s0;
            y  = 1'b0;
        end
    endcase
end

endmodule
