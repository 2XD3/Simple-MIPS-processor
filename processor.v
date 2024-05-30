module processor(clk,Inst,RD);
input [31:0] Inst;
input clk;
output [31:0] RD;
	wire RegDst,RegWrite,ALUSrc,MemWrite,MemRead,MemToReg;
	wire [1:0] ALUOp;
	wire [2:0] ALUctrl;
	Control_Unit c1(Inst[31:26],RegDst,MemRead,MemWrite,RegWrite,MemToReg,ALUOp,ALUSrc);
	ALU_Control c2(ALUOp,ALUctrl);
	datapath d(clk,Inst,RegDst,RegWrite,ALUSrc,ALUctrl,MemWrite,MemRead,MemToReg,RD);
endmodule