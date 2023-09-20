`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module SequenceDetector(
    input clk,
    input reset,
    input ain,
    output reg yout,
    output reg [1:0] state
    );
    
    //reg [1:0] state;
    
    always@(posedge clk) begin
        if (reset) begin state = 0; yout = 0; end
        else if (state == 0) begin
            if (ain) state = 1;
            else begin state = 0; end
        end
        
        else if (state == 1) begin
            if (ain) state = 2;
            else begin state = 0; end
        end
        
        else if (state == 2) begin
            if (ain) state = 3;
            else begin state = 0; end
        end
        
        else if (state == 3) begin
            if (ain) begin state = 3; yout = 1; end
            else begin state = 0; yout  = 0; end
        end
            
    end
endmodule
