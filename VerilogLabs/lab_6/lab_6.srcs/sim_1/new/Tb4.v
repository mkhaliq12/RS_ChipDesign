`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2023 11:45:48
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
    reg [3:0] in;
    wire [1:0] out;
    Encoder4x2 E1(in, out);
    
    initial begin
    in = 0; # 10
    in = 1; #10
    in = 2; # 10
    in = 4; # 10
    in = 8; #10
    $stop;
    end
    

endmodule
