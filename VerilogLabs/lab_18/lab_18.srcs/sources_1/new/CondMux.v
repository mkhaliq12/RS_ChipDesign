`timescale 1ns / 1ps

module CondMux(
input[1:0] sel,
input A,
input B,
output out
);
    
    assign out = sel[1] ? (sel[0]? 1'b1 : B) : (sel[0] ? A : 1'b0);

endmodule
