module Processor(Opcode,RegDst,MemRead,MemWrite,RegWrite,MemToReg,ALUctrl,ALUSrc);
input [5:0] Opcode;
output reg RegDst,MemRead,MemWrite,RegWrite,MemToReg,ALUSrc;
output reg [2:0] ALUctrl;

	Control_Unit c1(Opcode,RegDst,MemRead,MemWrite,RegWrite,MemToReg,ALUOp,ALUSrc);
	ALU_Control c2(ALUop,ALUCtrl);
	
endmodule