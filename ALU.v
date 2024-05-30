module ALU(A,B,Opcode,O,overflow);
input [31:0] A,B;
input [2:0] Opcode;
output reg [31:0] O;
output reg overflow;
	
	always @(*)
	case(Opcode)
	0: O= ~A;
	1: O= A&B;
	2: O= A^B;
	3: O= A|B;
	4: begin 
	O= A-1; 
	if(A[31] && ~O[31]) overflow =1; else overflow =0;
	end
	5: begin
	O= A+B;
	if((~A[31] && ~B[31] && O[31]) || (A[31] && B[31] && ~O[31])) overflow =1; else overflow =0;
	end
	6: begin
	O= A-B;
	if((~A[31] && B[31] && O[31]) || (A[31] && ~B[31] && ~O[31])) overflow =1; else overflow =0;
	end
	7: begin 
	O= A+1; 
	if(~A[31] && O[31]) overflow =1; else overflow =0;
	end
	endcase
	
endmodule