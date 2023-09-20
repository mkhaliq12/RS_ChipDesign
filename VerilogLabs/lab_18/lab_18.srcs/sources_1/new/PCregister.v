`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.06.2023 10:02:05
// Design Name: 
// Module Name: PCregister
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


module PCregister(
    input clk,
    input [7:0]in,
    output reg [7:0] out
    );
    
    always@(posedge clk) begin
        out <= in;    
    end
endmodule
