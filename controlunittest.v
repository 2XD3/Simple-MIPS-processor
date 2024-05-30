`timescale 1ns/100ps
module controlunittest();
reg [5:0] Opcode;
wire RegDst,MemRead,MemWrite,RegWrite,MemToReg,ALUSrc;
wire [1:0] ALUOp;


Control_Unit c(Opcode,RegDst,MemRead,MemWrite,RegWrite,MemToReg,ALUOp,ALUSrc);

initial begin
	Opcode = 1;
	#10 Opcode = 3;
	#10 Opcode = 5;
	#10 Opcode = 7;
	#10 Opcode = 4;
	#10 Opcode = 2;
end

initial begin
#80 $stop;
end

endmodule