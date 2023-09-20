`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module ShiftAddMultiplier(
    input [3:0] A,
    input [3:0] B,
    input clk,
    input load,
    output reg [7:0] Out
    );
    
    reg [3:0] Q;
    reg [7:0] X;
    reg [2:0] N;
    reg [7:0] P;
    
    always@(posedge clk) begin
        if (load) begin
            X <= {4'd0, A};
            Q <= B;
            N <= 4;
            P <= 0;
            end
        else if (N > 0) begin
            if (Q[0] == 1) P = P + X;
            X = X << 1;
            Q = Q >> 1;
            N = N -1;
            end
        else Out <= P;
            
    end
    
endmodule
