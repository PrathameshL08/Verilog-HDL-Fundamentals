'timescale 1ns / 1ps

module xor_gate_tb;
reg a,b;
wire y;
xor_gate dut(a,b,y);
initial
begin
a=1'b0; b=1'b0;
#10;
a=1'b1; b=1'b0;
#10;
a=1'b0; b=1'b1;
#10;
a=1'b1; b=1'b1;
#10; 
$finish;
end 
endmodule
