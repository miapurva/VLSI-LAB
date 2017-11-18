module rca4(a,b,c,s,cout);
input [3:0]a,b;
input c;

output [3:0]s;
output cout;

wire [2:0]w;

fulladder fa0(a[0],b[0],c,s[0],w[0]);
fulladder fa1(a[1],b[1],w[0],s[1],w[1]);
fulladder fa2(a[2],b[2],w[1],s[2],w[2]);
fulladder fa3(a[3],b[3],w[2],s[3],cout);

endmodule
