module mux(c,a,b,s,clk);
input a,b,s,clk;
output c;
wire x;
assign x= (s) ? a : b;
dff d1(c,clk,x);
endmodule
