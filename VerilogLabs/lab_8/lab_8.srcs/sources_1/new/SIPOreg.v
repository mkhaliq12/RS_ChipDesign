`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2023 14:26:21
// Design Name: 
// Module Name: SIPOreg
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


module SIPOreg(
    input SI,
    input clk,
    output [7:0]PO
    );
    
    wire a,b,c,d,e,f,g, h;
    DFF D0(SI, clk, a);
    DFF D1(a, clk, b);
    DFF D2(b, clk, c);
    DFF D3(c, clk, d);
    DFF D4(d, clk, e);
    DFF D5(e, clk, f);
    DFF D6(f, clk, g);
    DFF D7(g, clk, h);
    
    assign PO = {h,g,f,e,d,c,b,a};
   
endmodule
