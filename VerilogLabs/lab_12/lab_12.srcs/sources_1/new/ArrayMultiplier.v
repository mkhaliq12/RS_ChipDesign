`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module ArrayMultiplier(
    input [3:0] A,
    input [3:0] B,
    output [7:0] C
    );
    
    wire[3:0] w;
    wire[3:0] x;
    wire[3:0] y;
    wire[3:0] z;
    
    assign w = {4{B[0]}} & A;
    assign x = {4{B[1]}} & A;
    assign y = {4{B[2]}} & A;
    assign z = {4{B[3]}} & A;
    
    wire o;
    assign o = 0;
    
   wire [3:0] F1out, F2out, F3out;
   wire cout1, cout2, cout3;
    
    
    FourBitAdder F1(x, {o, w[3:1]}, o, F1out, cout1);
    FourBitAdder F2(y, {cout1, F1out[3:1]}, o, F2out, cout2);
    FourBitAdder F3(z, {cout2, F2out[3:1]}, o, F3out, cout3);
    
    assign C = {cout3, F3out, F2out[0], F1out[0], w[0]};
endmodule
