`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module Tb4;
    reg clk, reset;
    wire [1:0] NS, EW;
    
    TrafficController U4(clk, reset, NS, EW);
    
    initial begin
    clk = 0;
    forever 
    #10 clk = ~clk;
    end
    
    initial begin
    reset = 1;
    #30
    repeat (30) #10 reset = 0;
    end

endmodule
