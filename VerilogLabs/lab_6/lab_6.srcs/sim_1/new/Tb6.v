`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2023 12:38:28
// Design Name: 
// Module Name: Tb6
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


module Tb6;
    wire [15:0] sig;
    assign sig = 16'b1010_1010_1010_1010;
    reg [3:0]sel;
    wire out;
    
    Mux16x1 U12(sig, sel, out);
    
    initial begin
        sel = 0;    #10
        sel = 1;    #10
        sel = 2;    #10
        sel = 3;    #10
        sel = 4;    #10
        sel = 5;    #10
        sel = 6;    #10
        sel = 7;    #10
        sel = 8;    #10
        sel = 9;    #10
        sel = 10;    #10
        sel = 11;    #10
        sel = 12;    #10
        sel = 13;    #10
        sel = 14;    #10
        sel = 15;    #10
        
        $stop;
    end

endmodule
