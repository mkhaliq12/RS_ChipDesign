`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module Multiplier16bit(
    input [15:0] In1,
    input [15:0] In2,
    input clk,
    input load,
    output [31:0] Out,
    output reg[15:0] P3,
    output reg[15:0] P2,
    output reg[15:0] P1,
    output reg[15:0] P0,
    output [7:0] N1,
    output [7:0] N2,
    output [15:0] N3
    );
    
    reg [7:0] Ah, Al, Bh, Bl;
    //reg [15:0] P3, P2, P1, P0;
    wire selA, selB;
    reg [1:0]sel;
    //wire [7:0] N1, N2;
    //wire [15:0] N3; 
    
    Mux8bit4x1 M1(selA, Ah, Al, N1);
    Mux8bit4x1 M2(selB, Bh, Bl, N2);
    
    assign N3 = N1 * N2;
    assign selA = sel[0];
    assign selB = sel[1];
    
    always@(posedge clk) begin
        if (load) begin
            Ah <= In1[15:8];
            Bh <= In2[15:8];
            Al <= In1[7:0];
            Bl <= In2[7:0];
            sel <= 0;
        end
        
        else begin
            case(sel)
            0: P0 <= N3;
            1: P1 <= N3;
            2: P2 <= N3;
            3: P3 <= N3;
            endcase 
            sel = sel + 1;               
        end
    
    end
    
    assign Out = P0 + {P1, 8'd0} + {P2, 8'd0} + {P3, 16'd0};
endmodule
