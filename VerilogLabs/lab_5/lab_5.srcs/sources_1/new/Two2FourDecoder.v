`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////


module Two2FourDecoder(
       input [1:0] A,
       output D0,
       output D1,
       output D2,
       output D3
    );
    wire N0, N1;
    
     not n1(N0, A[0]);
     not n2(N1, A[1]);
     
     and a1(D0, N1, N0); //00
     and a2(D1, N1, A[0]);//01
     and a3(D2, A[1], N0); //10
     and a4(D3, A[1], A[0]); //11
    
endmodule

