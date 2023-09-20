`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2023 15:24:52
// Design Name: 
// Module Name: RingCounter
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


module RingCounter(
    input clk,
    input clr,
    output reg[7:0] C
    );
 
   
    always@(posedge clk)
        if (clr)
            C <= 0;
         else begin
            C <= {C[6:0], ~C[7]};
            end
endmodule

