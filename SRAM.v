module SRAM(Addr,WD,RD,WE,RE,clk);
  input [31:0] Addr;
  input [31:0] WD;
  output reg [31:0] RD;
  input WE,RE,clk;

  reg [31:0] mem[31:0]; 
  	initial begin
	mem[3] <=5;
	mem[5] <=8;
	end

  always @(posedge clk)
  begin
    if (WE && !RE)
	begin 
      mem[Addr] <= WD;	
		RD <= 32'bz;
	end
    else if (RE && !WE)
      RD <= mem[Addr];
	else
      RD <= 32'bz;
	end

	
endmodule

