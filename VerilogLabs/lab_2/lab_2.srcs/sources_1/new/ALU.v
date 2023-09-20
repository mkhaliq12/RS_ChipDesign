`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module ALU(
    input [3:0] A,
    input [3:0] B,
    input [2:0] cont,
    input s,
    output reg [3:0] out
    );
    
   wire signed X, Y;
   assign X = A;
   assign Y = B;
    
always@(*) begin
    if (s == 0) begin
        case(cont) 
        3'b000: out = A + B;
        3'b001: out = A - B;
        3'b010: out = (A > B)? 1 : 0;
        3'b011: out = (A < B)? 1 : 0;
        3'b100: out = A >> B; 
        3'b101: out = A << B;
        endcase
    end
    
    else if (s == 1) begin
         case(cont) 
         3'b000: out = A + B;
         3'b001: out = A - B;
         3'b010: out = (X > Y)? 1 : 0;
         3'b011: out = (X < Y)? 1 : 0;
         3'b100: out = X >> Y;
         3'b101: out = X << Y;
         endcase 
    end
    

end
endmodule
