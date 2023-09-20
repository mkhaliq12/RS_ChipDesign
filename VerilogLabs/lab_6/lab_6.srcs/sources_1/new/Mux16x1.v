module Mux16x1(
    input [15:0] sig,
    input [3:0] sel,
    output out
);

    wire [3:0]out2;
    
    Mux4x1 M2(sig[3:0], sel[1:0], out2[0]);
    Mux4x1 M3(sig[7:4], sel[1:0], out2[1]);
    Mux4x1 M4(sig[11:8], sel[1:0], out2[2]);
    Mux4x1 M5(sig[15:12], sel[1:0], out2[3]);
    
    Mux4x1 M6(out2, sel[3:2], out);
    
    
    
    
endmodule