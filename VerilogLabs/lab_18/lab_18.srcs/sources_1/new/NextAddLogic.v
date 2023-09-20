`timescale 1ns / 1ps
module NextAddLogic(
    input pol,
    input cond,
    input subroutine, //if 1 call subroutine
    input return,     //returns from subroutine 
    output reg spud,
    output reg spen,
    output reg [1:0] AddMux
);

    always@(*) begin
        if(pol ^ cond) begin
            if (subroutine) begin
                spen <= 1;
                spud <= 1;
            end
            else if (return) begin
                spen <= 1;
                spud <= 0;
            end
            else spen <= 0;
            
        end
            
    end

endmodule