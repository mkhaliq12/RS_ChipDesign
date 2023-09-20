`timescale 1ns / 1ps

module SecondAddReg(
    input clk,
    input [7:0] add,
    output reg [7:0] out    
);

    always@(posedge clk) 
        out <= add;

endmodule