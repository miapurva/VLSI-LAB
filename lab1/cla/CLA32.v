module CLA32(a,b,c,s,cout);
input [31:0]a,b;
input c;

output [31:0]s;
output cout;

wire [2:0]w;

CLA8 fa0(a[7:0],b[7:0],c,s[7:0],w[0]);
CLA8 fa1(a[15:8],b[15:8],w[0],s[15:8],w[1]);
CLA8 fa2(a[23:16],b[23:16],w[1],s[23:16],w[2]);
CLA8 fa3(a[31:24],b[31:24],w[2],s[31:24],cout);

endmodule
