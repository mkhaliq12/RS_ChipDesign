`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2023 09:36:39
// Design Name: 
// Module Name: Top_Module
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


module Top_Module(
    input [3:0] A,
    input [3:0] B,
    output OV_S,
    output OV_U,
    output [6:0] seg,
    output [3:0] an
    );
    
    wire [3:0] Sum;
    assign an = 4'b0000;
    
    Four_bit_Adder U1(A,B,Sum, OV_S, OV_U);
    Seven_Segment U2(Sum, seg);
    
endmodule
