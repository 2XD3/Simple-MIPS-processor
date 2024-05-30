module sign_extend(I,O);
input [15:0] I;
output reg [31:0] O;

always @(*)
begin
	O[15:0] = I[15:0];
	O[31:16] = {16{I[15]}};
end
endmodule
