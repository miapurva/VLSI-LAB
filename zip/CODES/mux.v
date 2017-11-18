module mux(a,b,d,e,f,c);
input [1:0]a;
input [255:0]b;
input [255:0]d;
input [255:0]e;
input [255:0]f;

output [255:0]c;
reg [255:0]c;

always@*
begin
	if(a[0] == 0 && a[1] == 0)
		c[255:0] = b[255:0];
	if(a[0] == 1 && a[1] == 0)
		c[255:0] = d[255:0];
	if(a[0] == 0 && a[1] == 1)
		c[255:0] = e[255:0];
	if(a[0] == 1 && a[1] == 1)
		c[255:0] = f[255:0];
end
endmodule