module Control_Unit(Opcode,RegDst,MemRead,MemWrite,RegWrite,MemToReg,ALUOp,ALUSrc);
input [5:0] Opcode;
output reg RegDst,MemRead,MemWrite,RegWrite,MemToReg,ALUSrc;
output reg [1:0] ALUOp;

	always @(*)
	begin
	case(Opcode)
	1: begin
	ALUOp = 2; ALUSrc = 1'b0; RegDst =  1'b1; RegWrite = 1'b1; MemRead = 1'b0; MemWrite = 1'b0; MemToReg = 1'b0;
	end
	3: begin
	ALUOp = 3; ALUSrc = 1'b0; RegDst =  1'b1; RegWrite = 1'b1; MemRead = 1'b0; MemWrite = 1'b0; MemToReg = 1'b0;
	end
	5: begin
	ALUOp = 0; ALUSrc = 1'b0; RegDst =  1'b1; RegWrite = 1'b1; MemRead = 1'b0; MemWrite = 1'b0; MemToReg = 1'b0;
	end
	7: begin
	ALUOp = 1; ALUSrc = 1'b0; RegDst =  1'b1; RegWrite = 1'b1; MemRead = 1'b0; MemWrite = 1'b0; MemToReg = 1'b0;
	end
	4: begin
	ALUOp = 2; ALUSrc = 1'b1; RegDst =  1'b0; RegWrite = 1'b1; MemRead = 1'b1; MemWrite = 1'b0; MemToReg = 1'b1;
	end
	2: begin
	ALUOp = 2; ALUSrc = 1'b1; RegDst =  1'b0; RegWrite = 1'b1; MemRead = 1'b0; MemWrite = 1'b1; MemToReg = 1'b0;
	end
	endcase
	end
endmodule