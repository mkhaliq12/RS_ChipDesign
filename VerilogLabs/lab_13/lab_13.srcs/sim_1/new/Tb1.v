`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module Tb1;
    reg [15:0] In1,In2;
    reg clk, load;
    wire [31:0] Out;
    wire [15:0] P3, P2, P1, P0;
    wire [7:0] N1, N2;
    wire [15:0] N3; 
    
    Multiplier16bit U1(In1, In2, clk, load, Out, P3, P2, P1, P0, N1, N2, N3);
    
    initial begin
    clk = 0;
    forever
    #10 clk = ~clk;
    end
    
    initial begin
        In1 = 16'h3333;
        In2 = 16'h5555;
        load  = 1; #20
        load = 0;
        repeat (10) #10 load = 0;
    end

endmodule
