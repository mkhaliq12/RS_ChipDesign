`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2023 09:33:48
// Design Name: 
// Module Name: decoderTB
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


module decoderTB;
    reg [1:0] sel;
    wire D0, D1, D2, D3;
    
    Two2FourDecoder U1(sel, D0, D1, D2, D3);
    
    initial 
    begin
    sel = 0;
    #10
    sel = 1;
    #10
    sel = 2;
    #10
    sel = 3;
    #10
    $stop;
    end
    
    endmodule