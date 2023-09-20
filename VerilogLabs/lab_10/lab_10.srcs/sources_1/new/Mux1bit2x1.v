`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2023 10:15:57
// Design Name: 
// Module Name: Mux1bit2x1
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


module Mux1bit2x1(
    input sel,
    input A,
    input B,
    output out
    );
    
    assign out = (sel) ? B:A;
endmodule
