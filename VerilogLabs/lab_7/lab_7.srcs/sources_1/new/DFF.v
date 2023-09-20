`timescale 1ns / 1ps


module DFF(
       input D,
       input clk,
       output Q,
       output Qn
    );
    
    wire a, b;
    nand (a, D, clk);
    nand (b, ~D, clk);
    nand (Q, a, Qn);
    nand (Qn, b, Q);
    
endmodule
