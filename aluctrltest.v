`timescale 1ns/100ps
module aluctrltest();
	reg [1:0] ALUOp;
	wire [2:0] ALUctrl;


ALU_Control a(ALUOp,ALUctrl);

initial begin
	ALUOp = 0;
	#10 ALUOp = 1;
	#10 ALUOp = 2;
	#10 ALUOp = 3;
	
end

initial begin
#50 $stop;
end

endmodule