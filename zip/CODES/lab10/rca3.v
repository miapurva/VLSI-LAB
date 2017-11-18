module rca2(s,cout,a);

input [1:0]a;
wire [1:0]b;
wire c;
output [1:0]s;
output cout;
wire w;

assign b[1:0]=2'd0;
assign c=1'b1;

fulladder f1(s[0],w,a[0],b[0],c);
fulladder f2(s[1],cout,a[1],b[1],w);

endmodule

