module PriorityEncoder_4Bit(d,y,v);
	input [3:0]d;
	output [3:0]y;
	output v;
	wire v;
	wire [3:0]y;
	assign y[0] = d[0] & 1'b1;
	assign y[1] = d[1] & ~d[0] & 1'b1;
	assign y[2] = d[2] & ~d[1] & ~d[0] & 1'b1;
	assign y[3] = d[3] & ~d[2] & ~d[1] & ~d[0] & 1'b1;
	assign v = d[0] | d[1] | d[2] | d[3];

endmodule

/*
module abc();
reg [3:0]d;
wire [3:0]y;
wire v;
PriorityEncoder_4Bit a(d,y,v);

initial
begin
#100
#2 d=4'b1100;
#2 d=4'b1101;
#2 d=4'b1000;
end

initial
begin
$monitor($time," d=%b, y=%b, v=%b",d,y,v);
end

endmodule
*/