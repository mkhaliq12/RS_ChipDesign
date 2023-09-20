`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2023 09:50:49
// Design Name: 
// Module Name: Tb1
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


module Tb1;
    reg [7:0] A,B;
    reg load;
    reg clk;
    wire [7:0]C;
    
    BitSerialAdder U1(A,B,load,clk,C);
    
    initial
    begin
        clk = 0;
        forever
        #10 clk = ~clk;
    end

    initial begin
        load  = 1;
        A = 17; B = 12;
        #20
        repeat(15)
            #10 load = 0;
         
    end

endmodule
