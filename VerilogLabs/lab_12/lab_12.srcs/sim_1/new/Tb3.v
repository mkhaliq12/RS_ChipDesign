`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module Tb3;
    reg [3:0] A, B;
    wire [7:0] C;

    ArrayMultiplier A1(A,B,C);
    
    initial begin
    A = 3; B = 5; #10
    A = 2; #10
    A = 4; B = 3; #10
    $stop;
    end

endmodule
