module PriorityEncoder_4Bit(input [0:3] D,
    output [1:0] Y,
    output V);
	//input [3:0]D;
	//output [1:0]Y;
	//output V;
	reg V;
	reg [1:0]Y;
	always @ (D)
	begin
		Y[1] <= D[2] | D[3];
		Y[0] <= D[3] | D[1] & ~D[2];
		V = D[0] | D[1] | D[2] | D[3];
	end
endmodule

module PriorityEncoder_4Bit_Test;
reg [3:0] D;
wire [1:0] Y;
wire V;
// Instantiate the Unit Under Test (UUT)
PriorityEncoder_4Bit uut (
	.D(D), 
	.Y(Y), 
	.V(V)
);
initial 
begin
// Initialize Inputs
D = 0;

#100;        
#2 D = 4'b0000;
#2 D = 4'b1000;
#2 D = 4'b0100;
#2 D = 4'b0010;
#2 D = 4'b0001;
/*#2 D = 4'b1010;
#2 D = 4'b1111;*/
end 
initial 
begin
$monitor("time=",$time,, "D=%b : Y=%b V=%b",D,Y,V); 
end
endmodule