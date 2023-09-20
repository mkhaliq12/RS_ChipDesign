`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2023 10:15:57
// Design Name: 
// Module Name: Mux4bit2X1
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


module Mux4bit2X1(
    input sel,
    input [3:0] A,
    input [3:0] B,
    output [3:0] out
    );
    
    assign out = (sel) ? B : A;
endmodule
