`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2023 11:35:43
// Design Name: 
// Module Name: TopModule
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


module TopModule(
    input clk,
    input reset,
    input [7:0] load,
    input loaden,
    output [7:0] instruction
    );
    
    wire [7:0] count;
    
    Counter C2(clk, reset, load, loaden, count);
    ProgramMem P1(count, instruction);
    
    
endmodule
