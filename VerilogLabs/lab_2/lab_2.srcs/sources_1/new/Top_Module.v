`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2023 11:17:58
// Design Name: 
// Module Name: Top_Module
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


module Top_Module(
    input [3:0] A,
    input [3:0] B,
    input [4:0] pb,   //controls function
    input sw,           //controls sign
    output [6:0] seg,
    output [3:0] an
    );
    
    assign an = 4'b0000;
    wire [3:0] out;
    reg [2:0] cont;
    reg [2:0] deb;
    
    always@(pb) begin
        case(pb)
        5'b00001: cont = 0;
        5'b00010: cont = 1;
        5'b00100: cont = 2;
        5'b01000: cont = 3;
        5'b10000: cont = 4;
        default: cont = cont;
        endcase
    end 
    
    ALU u1(A, B, cont, sw, out);
    Seven_Segment(out, seg);
    
    
endmodule
