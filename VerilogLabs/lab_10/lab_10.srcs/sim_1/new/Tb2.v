`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2023 11:57:58
// Design Name: 
// Module Name: Tb2
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


module Tb2;
    reg [3:0] A, B;
    reg C0;
    wire [3:0] Sum;
    wire C4;
    
    CLA_Adder u9(A,B,C0,Sum,C4);
    
    initial begin
    C0 = 0;
    A = 5; B = 5; #10
    A = 3; B = 11; #10
    A = 1; B = 15; #10
    A = 7; B = 9;  #10
    $stop;
    end


endmodule
