`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2023 10:36:23
// Design Name: 
// Module Name: Tb1
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


module Tb1;
    reg [11:0] A, B;
    reg Cin;
    wire [11:0] Sum;
    wire Cout;
    
    NonUnifromAdder U2(A,B,Cin,Sum,Cout);
    initial begin
    Cin = 0;
    A = 50; B = 20; #10
    A = 7; B = 31; # 10
    A = 65; B = 15; # 10
    $stop;
    
    
    end
    

endmodule
