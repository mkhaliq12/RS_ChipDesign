`timescale 1ns / 1ps

module SubroutineRAreg(
    input clk,
    input store,
    input [1:0] sp,
    input [7:0] in,
    output [7:0] out
);
    reg [7:0] stack [3:0];

    always@(posedge clk) begin 
        if (store) begin
            stack[sp +1] <= in;
        end
    end
    
    assign out = stack[sp];
    

endmodule