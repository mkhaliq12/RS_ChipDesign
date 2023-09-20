`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module Tb1;
    reg clk, reset, loaden;
    reg [7:0] load;
    wire [7:0] count;
    
    Counter C1(clk, reset, load, loaden, count);
    
    initial begin
    clk = 0;
    forever 
    #10 clk = ~clk;
    end
    
    initial begin
    reset = 1;
    loaden = 0;
    load = 15;
    #20
    reset = 0;
    repeat(20) #20;
    loaden = 1;
    #15
    loaden = 0;
    $stop;
    
    
    end

endmodule
