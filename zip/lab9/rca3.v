module rca3(s,cout,a,b,c);

input [2:0]a,b;
input c;
output [2:0]s;
output cout;
wire [1:0]w;

fulladder f1(s[0],w[0],a[0],b[0],c);
fulladder f2(s[1],w[1],a[1],b[1],w[0]);
fulladder f3(s[2],cout,a[2],b[2],w[1]);

endmodule

