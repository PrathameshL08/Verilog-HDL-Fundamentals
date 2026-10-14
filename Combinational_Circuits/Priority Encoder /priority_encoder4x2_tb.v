`timescale 1ns / 1ps

module priority_encoder4x2_tb();
reg [3:0]d;
wire valid;
wire [1:0]y;
priority_encoder4x2 dut( d , y , valid );
initial begin 
d = 4'b0000;
#5;
d = 4'b0001;
#5;
d = 4'b0010;
#5;
d = 4'b0100;
#5;
d = 4'b1000;
#5;
d = 4'b0110;
#5;
d = 4'b1111;
#5;
d = 4'b0011;
#5;
$finish;
end 
endmodule
