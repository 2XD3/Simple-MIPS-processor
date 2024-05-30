module datapath(clk,Inst,RegDst,RegWrite,ALUSrc,ALUctrl,MemWrite,MemRead,MemToReg,RD);
input [31:0] Inst;
input clk,RegDst,RegWrite,ALUSrc,MemWrite,MemRead,MemToReg;
input [2:0] ALUctrl;
output [31:0] RD;

	wire [4:0] WR;
	wire [31:0] WD,RD1,RD2,extend,in,ALUO;
	wire overflow;
	
	Mux2_1_5b m1(RegDst,Inst[20:16],Inst[15:11],WR);
	Register r(RegWrite,WR,WD,Inst[25:21],Inst[20:16],clk,RD1,RD2);
	sign_extend s(Inst[15:0],extend);
	Mux2_1 m2(ALUSrc,RD2,extend,in);
	ALU a(RD1,in,ALUctrl,ALUO,overflow);
	SRAM mem(ALUO,RD2,RD,MemWrite,MemRead,clk);
	Mux2_1 m3(MemToReg,ALUO,RD,WD);
	
endmodule