`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2023 10:53:41
// Design Name: 
// Module Name: Mux8bit4x1
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


module Mux8bit4x1(
    input sel,
    input [7:0]A,
    input [7:0]B, 
    output [7:0] Out
   
    );
   

    assign Out = (sel)?A:B;
endmodule
