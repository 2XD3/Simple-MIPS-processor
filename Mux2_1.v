module Mux2_1(S,D0,D1,O);
input S;
input [31:0] D0,D1;
output reg [31:0] O;

always @(*)
	case(S)
	0: O=D0;
	1: O=D1;
	endcase
	
endmodule