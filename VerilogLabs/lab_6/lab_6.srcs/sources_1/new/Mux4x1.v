`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2023 11:58:25
// Design Name: 
// Module Name: Mux4x1
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


module Mux4x1(
    input [3:0] sig,
    input [1:0] sel,
    output out
    );
    
    assign out = (sig[0] & ~sel[0] & ~sel[1]) | (sig[1] & sel[0] & ~sel[1]) | (sig[2] & ~sel[0] &  sel[1]) | (sig[3] & sel[0] &  sel[1]);

endmodule
