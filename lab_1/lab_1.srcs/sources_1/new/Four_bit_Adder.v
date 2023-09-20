`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////


module Four_bit_Adder(
    input [3:0] A,
    input [3:0] B,
    output [3:0] Sum,
    output OV_S,
    output OV_U
    );
    
    assign Sum = A + B;
    assign OV_S = ~((A[4]^ B[4]) & (A[4]^Sum[4]));
    assign OV_U = ~((A[4]^B[4]) & ~Sum[4]) | (A[4]&B[4]); 
    

    
    
endmodule
