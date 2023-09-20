`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2023 10:45:21
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
    reg clk, reset, ain;
    wire yout;
    wire [1:0] state;
    
    SequenceDetector U1(clk, reset, ain, yout, state);
    
    initial begin
        clk = 0;
        forever
        #10 clk = ~clk;
    end

    initial begin
        reset = 1;
        ain = 0;
        #30
        reset = 0;
        ain = 0;
        #35
        ain = 1;
        #100
        ain = 0;
        #20
        $stop;
        
        
    
    end
endmodule
