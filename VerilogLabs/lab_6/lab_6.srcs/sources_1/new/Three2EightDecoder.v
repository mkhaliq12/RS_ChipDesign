`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module Three2EightDecoder(
    input [2:0] sel,
    input en,
    output [7:0] out
    );
    wire en1, en2;
    
    Two2FourDecoder D1(sel[1:0], en1, out[3:0]);
    Two2FourDecoder D2(sel[1:0], en2, out[7:4]);
        
    
    assign en1 = ~sel[2] & en;
    assign en2 = sel[2] & en;

endmodule
