`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2023 09:54:04
// Design Name: 
// Module Name: DecTB
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


module DecTB;
    reg [2:0] sel;
    wire [7:0] out;
    
    Three2EightDecoder u1(sel, out);
    
    initial begin
    sel = 0;
    #10
    sel = 1;
    #10;
    sel = 2;
    #10;
    sel = 3;
    #10;
    sel = 4;
    #10;
    sel = 5;
    #10;
    sel = 6;
    #10;   
    sel = 7;
    #10;   
    $stop;      
    end
    
endmodule
