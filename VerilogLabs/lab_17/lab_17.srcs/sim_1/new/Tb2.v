`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2023 12:11:06
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
    reg clk, reset, loaden;
    reg [7:0] load;
    wire [7:0] instruction;
    
    TopModule T1(clk, reset, load, loaden, instruction);
    
    initial begin
    clk = 0;
    forever 
    #10 clk = ~clk;
    end
    
    initial begin
    reset = 1;
    loaden = 0;
    load = 15;
    #20
    reset = 0;
    repeat(20) #20;
    loaden = 1;
    #15
    loaden = 0;
    $stop;
    end

endmodule
