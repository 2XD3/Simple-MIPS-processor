 `timescale 1ns/100ps
module datapathtest();
reg [31:0] Inst;
reg clk,RegDst,RegWrite,ALUSrc,MemWrite,MemRead,MemToReg;
reg [2:0] ALUctrl;
wire [31:0] RD;

datapath d(clk,Inst,RegDst,RegWrite,ALUSrc,ALUctrl,MemWrite,MemRead,MemToReg,RD);
initial begin
clk =0;
end
always #10 clk=~clk; 

initial begin
// add $1, $2, $3
	Inst = 32'h00430820;
	RegDst = 1;
	RegWrite = 1;
	ALUSrc = 0;
	ALUctrl = 3'b101;
	MemWrite = 0;
	MemRead = 0;
	MemToReg = 0;
//lw $1, 0($2)
	#20
	Inst = 32'h8c410000;
	RegDst = 0;
	RegWrite = 1;
	ALUSrc = 1;
	ALUctrl = 3'b101;
	MemWrite = 0;
	MemRead = 1;
	MemToReg = 1;
//sw $1, 0($2)
	#20
	Inst = 32'hac410000;
	RegDst = 0;
	RegWrite = 0;
	ALUSrc = 1;
	ALUctrl = 3'b101;
	MemWrite = 1;
	MemRead = 0;
	MemToReg = 1;
end
initial begin
#80 $stop;
end

endmodule