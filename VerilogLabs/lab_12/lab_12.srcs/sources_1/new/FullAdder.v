`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module FullAdder(
    input A,
    input B,
    input Cin,
    output S,
    output Cout
    );
    
    assign {Cout, S} = A + B + Cin;
endmodule
