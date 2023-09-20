`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2023 14:44:40
// Design Name: 
// Module Name: clkdiv
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


module clkdiv(
    input clk100,
    output reg clk
    );
    reg [26:0] a;
    
    always@(posedge clk100) begin
    a = a + 1;
    if (a==100000000) begin
        clk = ~clk;
        a = 0;
    end
    
    end
    
endmodule
