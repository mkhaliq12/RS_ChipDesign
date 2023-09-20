`timescale 1ns / 1ps

module ArrayMultiplierCSA(
    input [3:0] A,
    input [3:0] B,
    output[7:0] C
    );
    
    wire [3:0] P0, P1, P2, P3;
    wire o;
    assign o = 0;
    
    assign P0 = {4{A[0]}} & B;
    assign P1 = {4{A[1]}} & B;
    assign P2 = {4{A[2]}} & B;
    assign P3 = {4{A[3]}} & B;
    
    wire c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12;
    wire s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12;
    
    FullAdder FA1(P0[1], P1[0], o, s1, c1);
    FullAdder FA2(P0[2], P1[1], o, s2, c2);
    FullAdder FA3(P0[3], P1[2], o, s3, c3);
    
    FullAdder FA4(P2[0], s2, c1, s4, c4);
    FullAdder FA5(P2[1], s3, c2, s5, c5);
    FullAdder FA6(P1[3], P2[2], c3, s6, c6);

    FullAdder FA7(P3[0], s5, c4, s7, c7);
    FullAdder FA8(P3[1], s6, c5, s8, c8);
    FullAdder FA9(P2[3], P3[2], c6, s9, c9);  
    
    FullAdder FA10(c7, s8, c4, s10, c10);
    FullAdder FA11(c10, s9, c5, s11, c11);
    FullAdder FA12(P3[3], c9, c11, s12, c12);        
    
    assign C[0] = P0[0];
    assign C[7:1] = {c12, s12, s11, s10, s7, s4, s1};
    
endmodule
