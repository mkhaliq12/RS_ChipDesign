`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////


module TimeShared32bitAdder(
    input [31:0] A,
    input [31:0] B,
    input load,
    input clk,
    output reg [31:0] C
    );
    
    reg [31:0] Ar, Br;
    reg [1:0] muxsel;
    wire [7:0] A8;
    wire [7:0] B8;
    wire [7:0] C8;
    wire Cout;
    reg Cin;
    
    Mux8bit4x1 M1(muxsel, Ar[31:14],Ar[23:16],Ar[15:8],Ar[7:0], A8);
    Mux8bit4x1 M2(muxsel, Br[31:14],Br[23:16],Br[15:8],Br[7:0], B8);
    
    assign {Cout, C8} = A8 + B8 + Cin; 
    
    always@(posedge clk)begin
        if (load)begin
            Ar <= A;
            Br <= B;
            C <= 0;
            Cin <= 0;
            muxsel <= 0;
        end
        
        if (muxsel < 4) begin
            case(muxsel)
                0: C[7:0] = C8;
                1: C[15:8] = C8;
                2: C[23:16] = C8;
                3: C[31:24] = C8;                
            endcase
 
            Cin = Cout;
            muxsel = muxsel + 1;
            
                   
        end
        
   
    end
    
endmodule
