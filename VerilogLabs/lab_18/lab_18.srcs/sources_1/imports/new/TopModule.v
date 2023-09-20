`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module TopModule(
    input clk,
    input reset,
    input cond1,
    input cond2,
    input [1:0] condSel,
    input subroutine,
    input return,
    input polarity,
    input [7:0] branch,
    input [7:0] address2,
    output [7:0] instr
    );
    
    wire cond;
    wire spud, spen;
    wire [1:0] addSel, sp;
    wire [7:0] add2, pc, subReg, add, add2pc;
    
    
    NextAddLogic U1(polarity, cond, subroutine, return, spud, spen, addSel);
    CondMux U2(condSel, cond1, cond2, cond);
    AddMux U3(addSel, pc, subReg, add2, branch, add);
    SecondAddReg(clk, address2, add2);
    FullAdderIncrementer(add, add2pc);
    PCregister(clk, add2pc, pc);
    StackPointer(clk, reset, spud, spen, sp);
    SubroutineRAreg(clk, subroutine, sp, suReg);
    ProgramMem(add, instr);
    
    
endmodule
    