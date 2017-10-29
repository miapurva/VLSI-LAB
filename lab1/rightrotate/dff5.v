module dff5(q,clk,d);
input[4:0]d;
input clk;
output[4:0]q;
reg[4:0]q;

always@(posedge clk)
begin
    q<=d;
end
endmodule
