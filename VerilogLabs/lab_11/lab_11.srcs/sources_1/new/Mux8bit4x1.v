`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2023 10:53:41
// Design Name: 
// Module Name: Mux8bit4x1
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


module Mux8bit4x1(
    input [1:0] sel,
    input [7:0]A,
    input [7:0]B,
    input [7:0]C,
    input [7:0]D, 
    output reg [7:0] Out
   
    );
   
    always@(*) begin
        case(sel)
        0: Out = D;
        1: Out = C;
        2: Out = B;
        3: Out = A;
        endcase
    end
endmodule
