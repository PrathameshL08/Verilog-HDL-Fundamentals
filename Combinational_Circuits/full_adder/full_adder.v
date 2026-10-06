
module full_adder(
input A,B,
input Cin,
output Cout,
output Sum
    );
    
    wire w1,w2,w3;
    
    half_adder h1(.X(A),.Y(B),.Cout_h(w2),.Sum_h(w1));
    half_adder h2(.X(w1),.Y(Cin),.Cout_h(w3),.Sum_h(Sum));
    assign Cout = w2 | w3 ;
    
endmodule


// haff adder 
module half_adder(
input X,Y, 
output Cout_h,
output Sum_h
);

assign Sum_h = X ^ Y;
assign Cout_h = X & Y;

endmodule
