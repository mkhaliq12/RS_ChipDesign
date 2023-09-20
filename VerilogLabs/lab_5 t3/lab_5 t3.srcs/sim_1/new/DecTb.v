`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module DecTb;
    reg [2:0] sel;
    wire [7:0] out;

Three2EightDecoder U1(sel, out);
    
initial begin
    sel = 0;
    #10
    sel = 1;
    #10;
    sel = 2;
    #10
    sel = 3;
    #10
    sel = 4;
    #10
    sel = 5;
    #10
    sel = 6;
    #10
    sel = 7;
    #10
    $stop;
end

endmodule
