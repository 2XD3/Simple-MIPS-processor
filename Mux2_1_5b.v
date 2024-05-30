module Mux2_1_5b(S,D0,D1,O);
input S;
input [4:0] D0,D1;
output reg [4:0] O;

always @(*)
	case(S)
	0: O=D0;
	1: O=D1;
	endcase
	
endmodule