`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module Tb1;
    reg clk;
    reg reset; 
    reg ain;
    wire yout;
    wire [1:0] count;
    
    SequenceDetectorMealy U1(clk, reset, ain, yout, count);
    
    initial begin
    clk = 0;
    forever 
    #10 clk = ~ clk;
    end
    
    initial begin
    reset = 1;
    ain = 0;
    #20
    reset = 0;
    #15
    ain = 1;
    repeat (20) #10 ain = 1;
    
    end

endmodule
