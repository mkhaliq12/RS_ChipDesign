module PISOreg(
    input [7:0] PI,
    input clk, 
    input PEn,
    output reg SO
    );
    reg [7:0] S;
    
    always@(posedge clk)begin
    if (PEn)
        S <= PI;
    else begin
        SO <= S[7];
        S = S << 1;
      end
    
    end
    
endmodule