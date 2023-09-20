`timescale 1ns / 1ps

module AddMux(
    input [1:0] sel,
    input [7:0] A,
    input [7:0] B,
    input [7:0] C,
    input [7:0] D,
    output [7:0] Out
    );
    
    assign Out = sel[1] ? (sel[0] ? D : C) : (sel[0] ? B : A);

endmodule