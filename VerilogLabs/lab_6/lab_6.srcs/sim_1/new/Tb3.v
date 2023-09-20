`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2023 11:21:28
// Design Name: 
// Module Name: Tb3
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


module Tb3;
    
    
    reg [3:0] sel;
    reg en;
    wire [15:0] out;
    
    Four2SixteenDecoder U5(sel, en, out);
    
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
    sel = 8;
    #10 
    sel = 9;
    #10 
    sel = 10;
    #10 
    sel = 11;
    #10 
    sel = 12;
    #10 
    sel = 13;
    #10 
    sel = 14;
    #10 
    sel = 15;
    #10 
 
        
    $stop;
    end
    
endmodule

