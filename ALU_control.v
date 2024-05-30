module ALU_Control (ALUOp,ALUctrl);
	input [1:0] ALUOp;
	output reg [2:0] ALUctrl;
	
	always @(*)
	 begin
		case(ALUOp)
			0: ALUctrl= 3'b001;
			1: ALUctrl= 3'b011;
			2: ALUctrl=3'b101;
			3: ALUctrl=3'b110;
			default: ALUctrl=3'bz;
		endcase
	 end
endmodule