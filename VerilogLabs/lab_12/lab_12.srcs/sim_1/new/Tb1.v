`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2023 12:34:09
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
    reg [3:0] A,B;
    reg clk;
    reg load;
    wire [7:0] Out;

    ShiftAddMultiplier U1(A,B,clk,load,Out);
    
    initial begin
    clk = 0;
    forever
    #10 clk = ~ clk;
    end 
    
    initial begin
        load = 1;
        A = 5;
        B = 3;
        #20
        repeat(15) #10 load = 0;
        
     end
     

endmodule
