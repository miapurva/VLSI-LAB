/*
Initializing BRAM in .coe file
*/
module pe_cu(a,var,d,clk,ena,wea);
output [7:0]d;
input [2:0]var;
input clk;
input ena;
input wea;
input [31:0]a;
wire [255:0]r,out,m;
wire [31:0]out1;

//BRAM(clk,ena,wea,addra,dina,douta);
wire [31:0]k[7:0];

wire cout;
wire [2:0]s;
wire [2:0]s1;
wire [2:0]s2;
wire [2:0]s3;
wire [2:0]s4;
wire [2:0]s5;
wire [2:0]s6;

//bram 32*8
//assign d[7:0]=8'd10;

blk_mem_gen_0 y1(clk,ena,wea,var,a,k[0]);
rca3 z1(s,cout,var,3'd1,1'b0);

blk_mem_gen_0 y2(clk,ena,wea,s,a,k[1]);  
rca3 z2(s1,cout,s,3'd1,1'b0);

blk_mem_gen_0 y3(clk,ena,wea,s1,a,k[2]);  
rca3 z3(s2,cout,s1,3'd1,1'b0);
//assign d[7:0]=k[2][7:0];

blk_mem_gen_0 y4(clk,ena,wea,s2,a,k[3]);  
rca3 z4(s3,cout,s2,3'd1,1'b0);

blk_mem_gen_0 y5(clk,ena,wea,s3,a,k[4]);  
rca3 z5(s4,cout,s3,3'd1,1'b0);

blk_mem_gen_0 y6(clk,ena,wea,s4,a,k[5]);  
rca3 z6(s5,cout,s4,3'd1,1'b0);

blk_mem_gen_0 y7(clk,ena,wea,s5,a,k[6]);  
rca3 z7(s6,cout,s5,3'd1,1'b0);

blk_mem_gen_0 y8(clk,ena,wea,s6,a,k[7]);


//CU
cu fr0(m[31:0],k[0],clk);
cu fr1(m[63:32],k[1],clk);
cu fr2(m[95:64],k[2],clk);
cu fr3(m[127:96],k[3],clk);
cu fr4(m[159:128],k[4],clk);
cu fr5(m[191:160],k[5],clk);
cu fr6(m[223:192],k[6],clk);
cu fr7(m[255:224],k[7],clk);
//assign d[7:0]=m[231:224];   

//pe
wire v;
pe_256 p1(m[255:0],d[7:0],v,clk);

endmodule
