`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2023 11:01:36
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
    
    
    reg [2:0] sel;
    reg en;
    wire [7:0] out;
    
    Three2EightDecoder U1(sel, en, out);
    
    initial 
    begin
    en = 0;
    sel = 0;
    #10
    en = 1;
    sel = 0;
    #10
    sel = 1;
    #10
    sel = 2;
    #10
    sel = 3;
    #10
    sel = 4;
    #10
    sel = 5;
    #10
    sel = 6;
    #10
    sel = 7;
    #10    
        
    $stop;
    end
    
endmodule
