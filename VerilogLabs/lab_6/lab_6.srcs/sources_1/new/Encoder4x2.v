`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2023 11:38:22
// Design Name: 
// Module Name: Encoder4x2
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


module Encoder4x2(
    input [3:0] in,
    output wire [1:0] out
    );
    
    assign out[0] = in[1] | in[3];
    assign out[1] = in[2] | in[3];
    
endmodule
