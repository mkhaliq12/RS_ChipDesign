`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////


module TrafficController(
    input clk,
    input reset,
    output reg [1:0] NS,
    output reg [1:0] EW
    );
    
    reg[1:0] count;
    reg [1:0] state;
    always@(posedge clk) begin
        if(reset) begin 
            count = 0;
            state = 0;
        end
        
        if (state == 0) begin
            NS = 2;
            EW = 0;
            if (count == 2) begin state = 1; count = 0;end
        end
        
        else if (state == 1) begin
            NS = 1;
            EW = 0;
            if (count == 1) begin state = 2; count = 0; end
        end
            
        else if (state == 2) begin
            NS = 0;
            EW = 2;
            if (count == 2) begin state = 3; count = 0; end
        end
        
        else if (state == 3) begin
            NS = 0;
            EW = 1;
            if (count == 1) begin state = 0; count = 0; end
        end
        
        count = count + 1;
        
            
    end
endmodule
