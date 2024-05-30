`timescale 1ns/100ps
module processortest();
reg [31:0] Inst;
reg clk;
wire [31:0] RD;


processor p(clk,Inst,RD);
initial begin
clk =0;
end
always #10 clk=~clk; 

initial begin
	Inst = 32'b00000100010000110000100000100000; //add $1, $2, $3	
	#20 Inst = 32'b00001100010000110010000000100010; //sub $4, $2, $3
	#20 Inst = 32'b00010100010000110010100000100100; //and $5, $2, $3
	#20 Inst = 32'b00011100010000110011000000100101; //or $6, $2, $3
	
	#20 Inst = 32'b00001000000010000000000000000000; //sw $8, 0($0)
	#20 Inst = 32'b00010000011001110000000000000000; //lw $7, 0($3)
end

initial begin
#140 $stop;
end

endmodule