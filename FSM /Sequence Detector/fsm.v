`timescale 1ns / 1ps 

module fsm(
    input clk, rst, x,
    output reg y,
    output reg [1:0] ps
);

reg [1:0] ns;

parameter s0 = 2'b00,
          s1 = 2'b01,
          s2 = 2'b10,
          s3 = 2'b11;

 
always @(posedge clk) begin
    if (rst)
        ps <= s0;
    else
        ps <= ns;
end
 
always @(*) begin
    y  = 1'b0;
    ns = s0;

    case (ps)
        s0: begin
            if (x)
                ns = s1;
            else
                ns = s0;
        end

        s1: begin
            if (x)
                ns = s2;
            else
                ns = s0;
        end

        s2: begin
            if (x)
                ns = s2;
            else
                ns = s3;
        end

        s3: begin
            if (x) begin
                ns = s1;
                y  = 1'b1;
            end
            else
                ns = s0;
        end

        default: begin
            ns = s0;
            y  = 1'b0;
        end
    endcase
end

endmodule


