`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2023 09:44:11
// Design Name: 
// Module Name: Three2EightDecoder
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


module Three2EightDecoder(
    input [2:0] sel,
    output [7:0] out
    );
    
    assign out[0] = (sel == 0)? 1:0;
    assign out[1] = (sel == 1)? 1:0;
    assign out[2] = (sel == 2)? 1:0;
    assign out[3] = (sel == 3)? 1:0;
    assign out[4] = (sel == 4)? 1:0;
    assign out[5] = (sel == 5)? 1:0;
    assign out[6] = (sel == 6)? 1:0;
    assign out[7] = (sel == 7)? 1:0;
    
    
    
    
    
endmodule
