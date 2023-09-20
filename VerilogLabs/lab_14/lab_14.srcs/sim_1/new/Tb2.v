`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2023 13:59:32
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
    reg clk, reset;
    reg [1:0] ain;
    wire yout;

    SequenceDetectorMoore U2(clk, reset, ain, yout);
    
    initial begin
        clk = 0;
        forever 
        #10 clk = ~ clk;
    end
       
   initial begin
       reset = 1;
       ain = 0;
       #25
       reset = 0;
       ain = 3;
       #10
       ain = 0;
       #30
       ain = 2;
       #10
       ain = 0;
       #20
       ain = 1;
       #20
       ain = 0;
       #50
       ain = 0;
       
           $stop;   
       end

endmodule
