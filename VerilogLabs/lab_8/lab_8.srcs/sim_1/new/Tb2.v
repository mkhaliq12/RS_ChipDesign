`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module Tb2;
    reg SI;
    reg clk;
    wire [7:0]PO;
    
    SIPOreg S1(SI, clk, PO);
    
    
    always
    begin
    clk = 0;
    forever #10 clk = ~clk;
    end
    
    initial begin
    SI = 0; #5
    SI = 1; #10
    SI = 0; #20
    SI = 1; #20
    SI = 0; #20
    SI = 1; #20
    SI = 0; #20
    SI = 1; #20
    SI = 0; #20
    SI = 1; #20
    SI = 0; #20
    SI = 1; #20
    SI = 0; #20
    SI = 1; #20
    SI = 0; #20
    SI = 1; #20
    SI = 0; #20
    SI = 1; #20
    repeat(50)
        #10 SI= 0;
    $stop;
    end

endmodule
