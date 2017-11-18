module fulladder(s,cout,a,b,c);

input a,b,c;
output s,cout;

assign s=a^b^c;
assign cout=(a&b) | (b&c) | (c&a);
 
endmodule