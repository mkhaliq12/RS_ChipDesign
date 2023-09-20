`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module Multiplier3x3(
    input clk100,
    input start,
    input [2:0] multiplicand,
    input [2:0] multiplier,
    output reg [5:0] product,
    output reg done,
    output clk
    );
    

    clkdiv u2(clk100, clk);
    
    reg [1:0] state;
    reg [1:0] count;
    reg [2:0] mult;
    reg [5:0] accum;
    reg [5:0] m;
    
    always@(posedge clk) begin
        if (start) begin 
            state = 1; 
            done = 0; 
            count = 0; 
            accum = 0;
            product = 0;
            mult = multiplier;
            m = multiplicand;
        end
        
        else if (state == 1) begin
            if(mult[0] == 1)
                accum = accum + m;
            count = count + 1;
            mult = mult >> 1;
            m = m << 1;
            if (count == 3)
                state = 2; 
        end
        
        else if (state == 2) begin
            product = accum;
            done = 1;
        end
        
    end
endmodule

