`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module MealyFSMrom(
    input clk,
    input reset,
    output reg[2:0] count
    );
    
    reg [2:0] rom;
    
    always@(posedge clk) begin
        if(reset) rom = 0;
        else begin 
            rom = rom + 1;
            if (rom > 5)
                rom = 0;
         end
            
        
        case (rom)
        0: count = 3'b000;
        1: count = 3'b001;
        2: count = 3'b011;
        3: count = 3'b101;
        4: count = 3'b111;
        5: count = 3'b010;
        endcase
        end
endmodule
