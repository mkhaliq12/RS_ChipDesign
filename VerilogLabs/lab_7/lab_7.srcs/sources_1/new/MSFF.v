`timescale 1ns / 1ps

module MSFF(
    input D,
    input clk,
    output Q,
    output Qn
    );
    
    wire a, b;
    wire c, d;
    nand (a, D, clk);
    nand (b, ~D, clk);
    nand (c, a, d);
    nand (d, b, c);
    
    wire e,f;
    nand(e, c, ~clk);
    nand (f, d, ~clk);
    nand (Q, e, Qn);
    nand (Qn, f, Q);
    
endmodule