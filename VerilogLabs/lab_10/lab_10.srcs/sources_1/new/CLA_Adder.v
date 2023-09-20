`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2023 09:50:14
// Design Name: 
// Module Name: CLA_Adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module CLA_Adder(
    input [3:0] A,
    input [3:0] B,
    input C0,
    output [3:0] Sum,
    output C4
    );
    
    wire C1, C2, C3;
    wire G0, G1, G2, G3;
    wire P0, P1, P2, P3;
    
    assign G0 = A[0] & B[0];
    assign G1 = A[1] & B[1];
    assign G2 = A[2] & B[2];
    assign G3 = A[3] & B[3];
    
    assign P0 = A[0] ^ B[0];
    assign P1 = A[1] ^ B[1];
    assign P2 = A[2] ^ B[2];
    assign P3 = A[3] ^ B[3];
    
    assign C1 = G0 | (P0 & C0);
    assign C2 = G1 | (G0 & P1) | (C0 & P0 & P1);
    assign C3 = G2 | (G1 & P2) | (G0 & P1 & P2) | (C0 & P0 & P1 & P2);
    assign C4 = G3 | (G2 & P3) | (G1 & P2 & P3) | (G0 & P1 & P2 & P3) | (C0 & P0 & P1 & P2 & P3);
    
    assign Sum[0] = A[0] + B[0] + C0;
    assign Sum[1] = A[1] + B[1] + C1;
    assign Sum[2] = A[2] + B[2] + C2;
    assign Sum[3] = A[3] + B[3] + C3;
    
endmodule
