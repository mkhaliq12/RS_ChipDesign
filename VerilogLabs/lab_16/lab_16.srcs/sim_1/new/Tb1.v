`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module Tb1;
    reg clk, start;
    reg [2:0] a, b;
    wire [5:0] product;
    wire done;

    
    Multiplier3x3 U1(clk, start, a, b, product, done);
    
    initial begin 
        clk = 0;
        forever
        #10 clk = ~clk;
    
    end
    
    initial begin
        a = 3; b = 5;
        start = 1;
        #20
        start = 0;
        #100
        $stop;
        
    end
    
endmodule
