`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2023 14:43:11
// Design Name: 
// Module Name: Tb3
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


module Tb3;
    reg [7:0] PI;
    reg clk;
    wire [7:0] PO;
    
    always
    begin
    clk = 0;
    forever #10 clk = ~clk;
    end
    
    PIPOreg p2(PI, clk, PO);
    
        initial begin
   PI = 0; #5
    PI = 0; #10
    PI = 1; #20
    PI = 2; #20
    PI = 3; #20
    PI = 4; #20
    PI = 5; #20
    PI = 6; #20
    PI = 7; #20
    PI = 8; #20
    PI = 9; #20
    PI = 10; #20
    PI = 11; #20
    PI = 12; #20
    PI = 13; #20
    PI = 14; #20
    PI = 15; #20
    PI = 16; #20
    repeat(50)
        #10 PI= PI + 1;
    $stop;
    end

    
endmodule
