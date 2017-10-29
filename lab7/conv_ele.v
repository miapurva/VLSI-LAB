module coversion_element(a, b, res);
input [3:0]a;
input b;
output [3:0]res;
	wire [3:0]res;

	assign res[0] = a[0] & b;
	assign res[1] = a[1] & b;
	assign res[2] = a[2] & b;
	assign res[3] = a[3] & b;

endmodule