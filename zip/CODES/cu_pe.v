module pe_cu(a,var,d,clk,ena,wea);
output [7:0]d;

input clk;
input ena;
input wea;

wire [255:0]r;
wire [143:0]m;

//BRAM(clk,ena,wea,addra,dina,douta);


wire cout;
wire [1:0]s;
wire [1:0]s1;
wire [1:0]s2;
wire [1:0]s3;

//bram 32*8
//assign d[7:0]=8'd10;
input [1:0]var;
input [35:0]a;
wire [35:0]k[3:0];
blk_mem_gen_0 y1(clk,ena,wea,var,a,k[0]);
rca2 z1(s,cout,var);

blk_mem_gen_0 y2(clk,ena,wea,s,a,k[1]);  
rca2 z2(s1,cout,s);

blk_mem_gen_0 y3(clk,ena,wea,s1,a,k[2]);  
rca2 z3(s2,cout,s1);

blk_mem_gen_0 y4(clk,ena,wea,s2,a,k[3]);  
//assign d[7:0]=k[3][7:0];


//CU
cu fr0(m[35:0],k[0],clk);
cu fr1(m[71:36],k[1],clk);
cu fr2(m[107:72],k[2],clk);
cu fr3(m[143:108],k[3],clk);
//assign d[7:0]=m[143:136];   

//TCAM
tcam t1(m,r);
//assign d[7:0]=r[7:0];  


//pe
wire v;
pe_256 p1(r[255:0],d[7:0],v,clk);

endmodule
