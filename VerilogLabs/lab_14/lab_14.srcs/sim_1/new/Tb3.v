`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module Tb3;
    reg clk, reset;
    wire [2:0] count;
    MealyFSMrom U3(clk, reset, count);
    
    initial begin
    clk = 0;
    forever
    #10 clk = ~clk;
    end
    
    initial begin
    reset = 1; #20
    reset = 0;
    repeat (20) #10 reset = 0;
    end
    
endmodule
