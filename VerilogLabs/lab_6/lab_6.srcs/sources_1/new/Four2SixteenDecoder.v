`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2023 11:13:05
// Design Name: 
// Module Name: Four2SixteenDecoder
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


module Four2SixteenDecoder(
    input [3:0] sel,
    input en,
    output [15:0] out
    );
    wire [3:0]en2;
    
    Two2FourDecoder D3 (sel[1:0], en2[0], out[3:0]);
    Two2FourDecoder D4 (sel[1:0], en2[1], out[7:4]);
    Two2FourDecoder D5 (sel[1:0], en2[2], out[11:8]);
    Two2FourDecoder D6 (sel[1:0], en2[3], out[15:12]);
    
    Two2FourDecoder D7 (sel[3:2], en, en2);
    
    
endmodule
