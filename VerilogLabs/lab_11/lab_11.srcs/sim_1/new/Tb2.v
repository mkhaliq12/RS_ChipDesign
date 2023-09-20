`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2023 11:37:14
// Design Name: 
// Module Name: Tb2
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


module Tb2;
    reg [31:0] A,B;
    reg load;
    reg clk;
    wire [31:0]C;
    
    TimeShared32bitAdder U2(A,B,load,clk,C);
    
    initial
    begin
    clk = 0;
    forever
    #10 clk = ~clk;
    end
    
    initial begin
    load  = 1;
    A = 32'h1111; B = 32'h111f;
    #20
    repeat(15)
        #10 load = 0;
     
    end
    
    endmodule