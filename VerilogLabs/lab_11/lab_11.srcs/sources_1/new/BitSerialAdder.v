`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module BitSerialAdder(
    input [7:0] A,
    input [7:0] B,
    input load,
    input clk,
    output reg [7:0] C
    );
    
    reg [7:0] In1, In2, Out;
    wire s, c;
    reg f;
    reg [3:0]count;

    
    assign {c, s} = In1[0] + In2[0] + f; 
    
    always@(posedge clk)
        if(load) begin
            In1 <= A;
            In2 <= B;
            count <= 0;
            f <= 0;
            Out <= 0;
        end
        
        else begin
            if(count < 7) begin
                 f = c;
                 Out[7] = s;
                 In1 = In1 >> 1;
                 In2 = In2 >> 1;
                 Out = Out >> 1;
                 count = count +1;
            end
            
            else C = Out;
                     
    end
        
endmodule
