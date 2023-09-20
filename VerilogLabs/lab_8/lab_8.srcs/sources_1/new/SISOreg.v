`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module SISOreg(
    input SI,
    input clk,
    output SO
    );
    wire a,b,c,d,e,f,g;
    DFF D0(SI, clk, a);
    DFF D1(a, clk, b);
    DFF D2(b, clk, c);
    DFF D3(c, clk, d);
    DFF D4(d, clk, e);
    DFF D5(e, clk, f);
    DFF D6(f, clk, g);
    DFF D7(g, clk, SO);
   
endmodule
