module Register(RWE,WA,WD,RA1,RA2,clk,RD1,RD2);
input RWE,clk;	
input [31:0] WD;	
input [4:0] RA1,RA2,WA;	
output [31:0] RD1,RD2;	

	
	reg [31:0] r [31:0];	
	assign RD1 = RWE ? r [RA1] : 32'bz;	
	assign RD2 = RWE ? r [RA2] : 32'bz;	
	always @(posedge clk)	
	begin
		if(RWE)
		begin
			r[WA] = WD;		
		end
		
	end
	initial begin
	r[0] <=6;
	r[1] <=0;
	r[2] <=5;
	r[3] <=3;
	r[7] <=0;
	r[8] <=4;
	end
endmodule