`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2023 10:30:29
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
    reg [1:0] sel;
    reg en;
    wire [3:0] out;
    
    Two2FourDecoder U1(sel, en, out);
    
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
    $stop;
    end
    
    
endmodule
