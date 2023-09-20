`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module Counter(
    input clk,
    input reset,
    input [7:0] load,
    input loaden,
    output reg [7:0] count
    );
    
    always@(posedge clk) begin
        if (reset) count <= 0;
        else if(loaden) count <= load;
        else count <= count + 1;
    end
    
endmodule
