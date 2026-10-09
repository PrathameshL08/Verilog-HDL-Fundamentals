`timescale 1ns / 1ps 

module decoder_2x4_tb();
reg i0,i1;
wire [3:0]y;
decoder_2x4 dut(i0,i1,y);
initial 
begin
i1=0;
i0=0;
#5;

i1=0;
i0=1;
#5;

i1=1;
i0=0;
#5;

i1=1;
i0=1;
#5;

i1=0;
i0=0;
#5;
$finish;
end 
endmodule
