module ce_pe_tb( );

reg [31:0]a;
reg [2:0]var;
wire [7:0]d;
reg clk,ena,wea;

initial
begin
clk = 0;
end

always
begin
#1 clk= ~clk;
end

pe_cu p(a,var,d,clk,ena,wea);

//assign out=8'b00100;
initial
begin
a = 32'd14;
var = 3'd0;
ena = 1'b1;
wea = 1'b0;
end
initial
begin
$monitor($time,"%b",d);
end

endmodule
