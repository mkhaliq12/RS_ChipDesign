`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module Two2FourDecoder(
    input [1:0] sel,
    input en,
    output reg [3:0] out
    
    );
    
    
    always@(*) begin
        if(en) begin
            case (sel)
                0: out = 1;
                1: out = 2;
                2: out = 4;
                3: out = 8;
            endcase
        end
        else out = 0;
    end
endmodule
