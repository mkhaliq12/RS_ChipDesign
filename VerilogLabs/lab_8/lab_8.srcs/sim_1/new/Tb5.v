`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2023 15:35:21
// Design Name: 
// Module Name: Tb5
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


module Tb5;
    reg clk;
    reg clr;
    wire [7:0] C;
    
    RingCounter R1(clk, clr, C);
    
    always
    begin
    clk = 0;
    forever #10 clk = ~clk;
    end
    
    initial begin
    clr = 1; #20
    clr = 0;
    
    repeat(50)
    #10 clr = 0;
    $stop;
    end

endmodule
