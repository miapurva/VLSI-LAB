module rca16(a,b,c,s,cout);
input [15:0]a,b;
input c;

output [15:0]s;
output cout;

wire [2:0]w;

rca4 fa0(a[3:0],b[3:0],c,s[3:0],w[0]);
rca4 fa1(a[7:4],b[7:4],w[0],s[7:4],w[1]);
rca4 fa2(a[11:8],b[11:8],w[1],s[11:8],w[2]);
rca4 fa3(a[15:12],b[15:12],w[2],s[15:12],cout);

endmodule