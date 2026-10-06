`timescale 1ns / 1ps 
module full_adder_tb();
reg A,B,Cin;
wire Cout ,Sum;
full_adder dut(.A(A),.B(B),.Cin(Cin),.Cout(Cout),.Sum(Sum));
initial 
begin
  // Test all possible input combinations
A=1'b0; B=1'b0; Cin=1'b0;
#5;
A=1'b0; B=1'b0; Cin=1'b1;
#5;
A=1'b0; B=1'b1; Cin=1'b0;
#5;
A=1'b0; B=1'b1; Cin=1'b1;
#5;
A=1'b1; B=1'b0; Cin=1'b0;
#5;
A=1'b1; B=1'b0; Cin=1'b1;
#5;
A=1'b1; B=1'b1; Cin=1'b0;
#5;
A=1'b1; B=1'b1; Cin=1'b1;
#10;
$finish;
end 
endmodule
