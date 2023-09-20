`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2023 15:11:02
// Design Name: 
// Module Name: Tb4
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


module Tb4;
   reg [7:0] PI;
   reg clk;
   reg PEn;
   wire SO;
   
   always
   begin
   clk = 0;
   forever #10 clk = ~clk;
   end
   
   PISOreg p4(PI, clk, PEn, SO);
   
       initial begin
   PI = 0; #5
   PI = 8'b1010_1010;
   PEn = 1; #20
   PEn = 0;
   PI = 0;

   repeat(50)
       #10 PEn = 0;
   $stop;
   end

   
endmodule

