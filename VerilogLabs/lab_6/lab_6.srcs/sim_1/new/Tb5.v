`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2023 12:18:12
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
    wire [3:0] sig;
    assign sig = 4'b1010;
    reg [1:0]sel;
    wire out;
    
    Mux4x1 M1(sig, sel, out);
    
    initial begin
        sel = 0;    #10
        sel = 1;    #10
        sel = 2;    #10
        sel = 3;    #10
        
        $stop;
    end


endmodule
