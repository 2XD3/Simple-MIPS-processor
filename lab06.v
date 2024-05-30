module ALU_Control(ALUOp,ALUctrl);
input ALUOp [1:0];
output reg [2:0] ALUctrl;

	always @(*)
	begin
	case (ALUOp)
	begin
	0: ALUctrl = 1;
	1: ALUctrl = 3;
	2: ALUctrl = 5;
	3: ALUctrl = 6;
	endcase
	end
endmodulevvbv                                                              