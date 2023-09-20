`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////


module NonUnifromAdder(
    input [11:0] A,
    input [11:0] B,
    input Cin,
    output [11:0] Sum,
    output Cout
    );
    
    wire [2:0] S1; 
    wire [2:0] S1C;
    wire C1, C1C;
    wire [3:0] S2; 
    wire [3:0] S2C;
    wire C2, C2C;
    wire [5:0] S3; 
    wire [5:0] S3C;
    wire C3, C3C;
    
    assign {C1, S1} = A[2:0] + B[2:0];
    assign {C1C, S1C} = A[2:0] + B[2:0] + 1; 
    assign {C2, S2} = A[6:3] + B[6:3];
    assign {C2C, S2C} = A[6:3] + B[6:3] + 1;
    assign {C3, S3} = A[11:7] + B[11:7];
    assign {C3C, S3C} = A[11:7] + B[11:7] + 1;      
        
    wire C1out, C2out;   
    Mux3bit2x1 M1(Cin, S1, S1C, Sum[2:0]);
    Mux1bit2x1 M2(Cin, C1, C1C, C1out);
    
    Mux4bit2X1 M3(C1out, S2, S2C, Sum[6:3]);
    Mux1bit2x1 M4(C1out, C2, C2C, C2out);
    
    Mux5bit2x1 M5(C2out, S3, S3C, Sum[11:7]);
    Mux1bit2x1 M6(C2out, C3, C3C, Cout);


endmodule
