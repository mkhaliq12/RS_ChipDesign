`timescale 1ns / 1ps

module DFF(
    input D, 
    input clk,
    output reg Q,
    output reg Qn
);

always@(posedge clk) begin
    Q <= D;
    Qn <= ~D;

end

endmodule