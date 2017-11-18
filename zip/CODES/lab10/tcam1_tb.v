module tcam_test;

reg [143:0]W;
wire [255:0]N;

tcam tgh(W,N);

initial
begin
	W = 144'd0;
end 
 
initial 
begin
  $monitor("W=%b,N=%b",W,N); 
 end      
endmodule