`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////


module StackPointer(
    input clk,
    input reset,
    input ud,
    input en,
    output reg [1:0] p
    );
    
    always@(posedge clk) begin
    if (reset) p <= 0;
     
    else if(en) begin 
        if (ud) begin
            if (p < 3) 
                p <= p + 1; 
        end

        else begin
            if (p > 0)
                p <= p - 1;
        end
   
    end
    end
    
endmodule
