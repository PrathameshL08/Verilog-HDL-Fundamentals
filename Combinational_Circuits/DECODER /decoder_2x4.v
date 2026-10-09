`timescale 1ns / ps 

module decoder_2x4(
input i0,i1,
output reg [3:0]y
    );
    always@(*) begin 
    y=4'b0000;
    
    case({i1,i0})
     2'b00: y[0]=1'b1;
     2'b01: y[1]=1'b1;
      2'b10: y[2]=1'b1; 
      2'b11: y[3]=1'b1;
       
    endcase 
    end 
    
endmodule
