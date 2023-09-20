`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////////////

module PIPOreg(
    input [7:0]PI,
    input clk,
    output [7:0]PO
    );
    
    DFF D0(PI[0], clk, PO[0]);
    DFF D1(PI[1], clk, PO[1]);
    DFF D2(PI[2], clk, PO[2]);
    DFF D3(PI[3], clk, PO[3]);
    DFF D4(PI[4], clk, PO[4]);
    DFF D5(PI[5], clk, PO[5]);
    DFF D6(PI[6], clk, PO[6]);
    DFF D7(PI[7], clk, PO[7]);
    

   
endmodule
