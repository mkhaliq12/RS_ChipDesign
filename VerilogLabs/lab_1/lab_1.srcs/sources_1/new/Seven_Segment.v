`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2023 09:36:39
// Design Name: 
// Module Name: Seven_Segment
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


module Seven_Segment
  (
    input [3:0] Sum,
    output [6:0] Seg
    );

    reg [6:0] Hex_Encoding[0:15];

    initial begin
    Hex_Encoding[4'b0000] = 7'b1000000;
    Hex_Encoding[4'b0001] = 7'b1111001;
    Hex_Encoding[4'b0010] = 7'b0100100;
    Hex_Encoding[4'b0011] = 7'b0110000;
    Hex_Encoding[4'b0100] = 7'b0011001;
    Hex_Encoding[4'b0101] = 7'b0010010;
    Hex_Encoding[4'b0110] = 7'b0000010;
    Hex_Encoding[4'b0111] = 7'b1111000;
    Hex_Encoding[4'b1000] = 7'b0000000;
    Hex_Encoding[4'b1001] = 7'b0010000;
    Hex_Encoding[4'b1010] = 7'b0001000; //a	
    Hex_Encoding[4'b1011] = 7'b0000011; //b
    Hex_Encoding[4'b1100] = 7'b1000110; //c
    Hex_Encoding[4'b1101] = 7'b0100001; //d
    Hex_Encoding[4'b1110] = 7'b0000110; //e
    Hex_Encoding[4'b1111] = 7'b0001110; //f

    end


    assign Seg = Hex_Encoding[Sum[3:0]];


endmodule