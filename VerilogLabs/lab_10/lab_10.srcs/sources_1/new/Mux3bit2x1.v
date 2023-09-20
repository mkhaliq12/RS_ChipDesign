module Mux3bit2x1(    
    input sel,
    input [2:0] A,
    input [2:0] B,
    output [2:0] out
    );
    
    assign out = (sel) ? B : A;
endmodule
