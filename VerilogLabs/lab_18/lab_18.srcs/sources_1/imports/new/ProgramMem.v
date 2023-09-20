`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module ProgramMem(
    input [7:0] address,
    output reg [7:0] instruction
    );
    
    reg [7:0] mem[0:255];
    
    always@(*) begin
        mem[0] = 0;
        mem[1] = 1;
        mem[2] = 2;
        mem[3] = 3;
        mem[4] = 4;
        mem[5] = 5;
        instruction = mem[address];
    end
    
        
    
endmodule
