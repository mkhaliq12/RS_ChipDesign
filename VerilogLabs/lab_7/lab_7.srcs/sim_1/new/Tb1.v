`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2023 13:06:38
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
    reg D, clk;
    wire Q, Qn;
    
    MSFF D1(D, clk, Q, Qn);
    
    initial begin
    D = 0;
    clk = 0;    #5
    clk = 1;    #5
    clk = 0;
    D = 1;      #5
    clk = 1;    #5
    clk = 0;    #5
    clk = 1;    #5
    clk = 0;    #5
    D = 0;      
    clk = 1;     #5
    clk = 0;     #5
    clk = 1;     #5
    $stop;
    end
    

endmodule
