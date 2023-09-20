`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2023 11:07:28
// Design Name: 
// Module Name: Mux5bit2x1
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


module Mux5bit2x1(
    input sel,
    input [4:0] A,
    input [4:0] B,
    output [4:0] out
    );
    
    assign out = (sel) ? B : A;
    endmodule