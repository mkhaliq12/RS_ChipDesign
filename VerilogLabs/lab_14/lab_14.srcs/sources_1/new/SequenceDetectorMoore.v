`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2023 13:21:17
// Design Name: 
// Module Name: SequenceDetectorMoore
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SequenceDetectorMoore(
    input clk,
    input reset,
    input [1:0] ain,
    output reg yout
    );
    
    reg [1:0] prev;
    
    always@(posedge clk) begin
        if (reset) begin yout <= 0; prev <= 0; end
        if (prev == 2'b01 & ain == 2'b00) yout <= 0;
        if (prev == 2'b11 & ain == 2'b00) yout <= 1;
        if (prev == 2'b10 & ain == 2'b00) yout <= ~yout;
        prev = ain;        
    end
    
endmodule
