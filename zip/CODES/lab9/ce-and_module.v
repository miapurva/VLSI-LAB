module ce(w,x,out);
input [3:0]w;
input x;
output[3:0]out;

assign out[0]=w[0]& x;
assign out[1]=w[1]& x;
assign out[2]=w[2]& x;
assign out[3]=w[3]& x;
endmodule
