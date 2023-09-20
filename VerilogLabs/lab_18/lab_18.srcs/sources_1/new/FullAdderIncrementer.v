`timescale 1ns / 1ps

module FullAdderIncrementer(
    input [7:0] address,
    output [7:0] pc
);

    assign pc = address + 1;

endmodule