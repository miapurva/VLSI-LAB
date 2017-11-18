module rca32(a,b,c,s,cout);
input [31:0]a,b;
input c;

output [31:0]s;
output cout;

wire w;

rca16 fa0(a[15:0],b[15:0],c,s[15:0],w);
rca16 fa1(a[31:16],b[31:16],w,s[31:16],cout);

endmodule