`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2023 16:05:44
// Design Name: 
// Module Name: Tb4
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


module Tb4;

    reg [3:0] A, B;
    wire [7:0] C;

    ArrayMultiplierCSA A2(A,B,C);
    
    initial begin
    A = 3; B = 5; #10
    A = 2; #10
    A = 4; B = 3; #10
    $stop;
    end


endmodule
