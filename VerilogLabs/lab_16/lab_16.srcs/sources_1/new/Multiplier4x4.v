`timescale 1ns / 1ps

module Multiplier4x4(
        input clk100,
        input start,
        input [3:0] multiplicandAdd,
        input [3:0] multiplierAdd,
        output reg [5:0] product,
        output reg done,
        output clk
    );
    
    reg [3:0] Rom[0:31];
    
    always@(posedge clk) begin
        Rom[0] = 0;
        Rom[1] = 1;
        Rom[2] = 2;
        Rom[3] = 3;
        Rom[4] = 4;
        Rom[5] = 5;
        Rom[6] = 6;
        Rom[7] = 7;
        Rom[8] = 8;
        Rom[9] = 9;
        Rom[10] = 10;
        Rom[11] = 11;
        Rom[12] = 12;
        Rom[13] = 13;
        Rom[14] = 14;
        Rom[15] = 15;
        
        Rom[16] = 0;
        Rom[17] = 1;
        Rom[18] = 2;
        Rom[19] = 3;
        Rom[20] = 4;
        Rom[21] = 5;
        Rom[22] = 6;
        Rom[23] = 7;
        Rom[24] = 8;
        Rom[25] = 9;
        Rom[26] = 10;
        Rom[27] = 11;
        Rom[28] = 12;
        Rom[29] = 13;
        Rom[30] = 14;
        Rom[31] = 15;
        
        
        
        
    end
    
endmodule
