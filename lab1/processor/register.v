module register(rsrc1, rsrc2, rdst, in, out1, out2, read, write);

input [4:0] rsrc1,rsrc2,rdst;
input [31:0] in;
output [31:0] out1,out2;
reg [31:0] out1,out2;
input read,write;

reg [16:1] register [31:0];

always @(*)

begin
	if(read)
	begin
	out1=register[rsrc1];
	out2=register[rsrc2];
	end

	else
	begin
	register[rdst]=in;
	#1 $display($time, ".register[%d]=%b\n",rdst,in);
	end
end


initial

begin
/*
register[1]=32'd7;
register[2]=32'd3;
register[3]=32'd8;
register[4]=32'd7;
register[5]=32'd2;
register[6]=32'd6;
register[7]=32'd4;
register[8]=32'd2;
register[9]=32'd1;
register[10]=32'd2;
register[11]=32'd8;
register[12]=32'd3;
register[13]=32'd6;
register[14]=32'd7;
register[15]=32'd4;
register[16]=32'd5;
*/
end

endmodule
