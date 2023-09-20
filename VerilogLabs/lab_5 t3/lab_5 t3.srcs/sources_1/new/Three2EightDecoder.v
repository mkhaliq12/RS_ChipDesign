`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module Three2EightDecoder(
    input [2:0] sel,
    output reg [7:0] out
    );
    
    always@(sel) begin
        case(sel)
        0: out = 1;
        1: out = 2;
        2: out = 4;
        3: out = 8;
        4: out = 16;
        5: out = 32;
        6: out = 64;
        7: out = 128;
        default: out = 0;
         
      
        endcase
    end
endmodule
