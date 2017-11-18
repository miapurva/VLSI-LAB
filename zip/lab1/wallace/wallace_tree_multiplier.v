module carry_save_adder(clk,a,b,c,s,cout);
input clk;
input[63:0] a,b,c;
output[63:0] s,cout;
wire[63:0] ws,wc;

assign ws = a ^ b ^ c;
assign wc[0] = 0;
assign wc[63:1] = (a & b) | (b & c) | (c & a);

dff_64 d1(ws,clk,s);
dff_64 d2(wc,clk,cout);
endmodule
//dot
module dot(gl,al,gr,G);

input gl,al,gr;

output G;

assign G = gl | (al & gr);

endmodule

//circle
module circle(gl,al,gr,ar,G,A);

input gl,al,gr,ar;
output G,A;

assign G = gl | (al & gr);
assign A = al & ar;

endmodule
//dff
module dff(D,clk,Q);

input D,clk;
output Q;
reg Q;

initial 
begin
Q=0;
end

always @(posedge clk)
begin
	Q <= D;
end

endmodule

//dff_32
module dff_32(D,clk,Q);
input clk;
input[31:0] D;
output[31:0] Q;
reg[31:0] Q;

initial 
begin 
	Q[31:0]=0;
end

always @(posedge clk)
begin
	Q <= D;
end

endmodule

//dff_64
module dff_64(D,clk,Q);
input clk;
input[63:0] D;
output[63:0] Q;
reg[63:0] Q;

initial 
begin 
	Q[63:0]=0;
end

always @(posedge clk)
begin
	Q <= D;
end

endmodule


//prefix adder
module prefixadder(i,j,cin,s,cout,clk);
input [31:0] i,j;
output [31:0] s;
input cin,clk;
output cout;
wire s0cin,s1cin,s2cin,s3cin,s4cin,s5cin;
wire[31:0]wg,wa,s1wg,s1wa,s2wg,s2wa,s3wg,s3wa,s4wg,s4wa,s5wg,s5wa;
wire[31:0] g,s2p,s0p,s1p,s3p,s4p,s5p,p,a;

wire [79:0] G,A,s1G,s1A,s2G,s2A,s3G,s3A,s4G,s4A,s5G,s5A;

assign g = i & j;
assign p = i ^ j;
assign a = g | p;

//D - FlipFlop Stage - 0

dff s0c(cin,clk,s0cin);

dff g0(g[0],clk,wg[0]);
dff a0(a[0],clk,wa[0]);

dff g1(g[1],clk,wg[1]);
dff a1(a[1],clk,wa[1]);

dff g2(g[2],clk,wg[2]);
dff a2(a[2],clk,wa[2]);

dff g3(g[3],clk,wg[3]);
dff a3(a[3],clk,wa[3]);

dff g4(g[4],clk,wg[4]);
dff a4(a[4],clk,wa[4]);

dff g5(g[5],clk,wg[5]);
dff a5(a[5],clk,wa[5]);

dff g6(g[6],clk,wg[6]);
dff a6(a[6],clk,wa[6]);

dff g7(g[7],clk,wg[7]);
dff a7(a[7],clk,wa[7]);

dff g8(g[8],clk,wg[8]);
dff a8(a[8],clk,wa[8]);

dff g9(g[9],clk,wg[9]);
dff a9(a[9],clk,wa[9]);

dff g10(g[10],clk,wg[10]);
dff a10(a[10],clk,wa[10]);

dff g11(g[11],clk,wg[11]);
dff a11(a[11],clk,wa[11]);

dff g12(g[12],clk,wg[12]);
dff a12(a[12],clk,wa[12]);

dff g13(g[13],clk,wg[13]);
dff a13(a[13],clk,wa[13]);

dff g14(g[14],clk,wg[14]);
dff a14(a[14],clk,wa[14]);

dff g15(g[15],clk,wg[15]);
dff a15(a[15],clk,wa[15]);

dff g16(g[16],clk,wg[16]);
dff a16(a[16],clk,wa[16]);

dff g17(g[17],clk,wg[17]);
dff a17(a[17],clk,wa[17]);

dff g18(g[18],clk,wg[18]);
dff a18(a[18],clk,wa[18]);

dff g19(g[19],clk,wg[19]);
dff a19(a[19],clk,wa[19]);

dff g20(g[20],clk,wg[20]);
dff a20(a[20],clk,wa[20]);

dff g21(g[21],clk,wg[21]);
dff a21(a[21],clk,wa[21]);

dff g22(g[22],clk,wg[22]);
dff a22(a[22],clk,wa[22]);

dff g23(g[23],clk,wg[23]);
dff a23(a[23],clk,wa[23]);

dff g24(g[24],clk,wg[24]);
dff a24(a[24],clk,wa[24]);

dff g25(g[25],clk,wg[25]);
dff a25(a[25],clk,wa[25]);

dff g26(g[26],clk,wg[26]);
dff a26(a[26],clk,wa[26]);

dff g27(g[27],clk,wg[27]);
dff a27(a[27],clk,wa[27]);

dff g28(g[28],clk,wg[28]);
dff a28(a[28],clk,wa[28]);

dff g29(g[29],clk,wg[29]);
dff a29(a[29],clk,wa[29]);

dff g30(g[30],clk,wg[30]);
dff a30(a[30],clk,wa[30]);

dff g31(g[31],clk,wg[31]);
dff a31(a[31],clk,wa[31]);

dff s0p0(p[0],clk,s0p[0]);	
dff s0p1(p[1],clk,s0p[1]);	
dff s0p2(p[2],clk,s0p[2]);	
dff s0p3(p[3],clk,s0p[3]);	
dff s0p4(p[4],clk,s0p[4]);	
dff s0p5(p[5],clk,s0p[5]);	
dff s0p6(p[6],clk,s0p[6]);	
dff s0p7(p[7],clk,s0p[7]);	
dff s0p8(p[8],clk,s0p[8]);	
dff s0p9(p[9],clk,s0p[9]);	
dff s0p10(p[10],clk,s0p[10]);	
dff s0p11(p[11],clk,s0p[11]);	
dff s0p12(p[12],clk,s0p[12]);	
dff s0p13(p[13],clk,s0p[13]);	
dff s0p14(p[14],clk,s0p[14]);	
dff s0p15(p[15],clk,s0p[15]);	
dff s0p16(p[16],clk,s0p[16]);	
dff s0p17(p[17],clk,s0p[17]);	
dff s0p18(p[18],clk,s0p[18]);	
dff s0p19(p[19],clk,s0p[19]);	
dff s0p20(p[20],clk,s0p[20]);	
dff s0p21(p[21],clk,s0p[21]);	
dff s0p22(p[22],clk,s0p[22]);	
dff s0p23(p[23],clk,s0p[23]);	
dff s0p24(p[24],clk,s0p[24]);	
dff s0p25(p[25],clk,s0p[25]);	
dff s0p26(p[26],clk,s0p[26]);	
dff s0p27(p[27],clk,s0p[27]);	
dff s0p28(p[28],clk,s0p[28]);	
dff s0p29(p[29],clk,s0p[29]);	
dff s0p30(p[30],clk,s0p[30]);	
dff s0p31(p[31],clk,s0p[31]);	

//end

//stage 1

dot d101(wg[0],wa[0],s0cin,G[0]);

circle c101(wg[2],wa[2],wg[1],wa[1],G[1],A[1]);

circle c102(wg[4],wa[4],wg[3],wa[3],G[2],A[2]);

circle c103(wg[6],wa[6],wg[5],wa[5],G[3],A[3]);

circle c104(wg[8],wa[8],wg[7],wa[7],G[4],A[4]);

circle c105(wg[10],wa[10],wg[9],wa[9],G[5],A[5]);

circle c106(wg[12],wa[12],wg[11],wa[11],G[6],A[6]);

circle c107(wg[14],wa[14],wg[13],wa[13],G[7],A[7]);

circle c108(wg[16],wa[16],wg[15],wa[15],G[8],A[8]);

circle c109(wg[18],wa[18],wg[17],wa[17],G[9],A[9]);

circle c110(wg[20],wa[20],wg[19],wa[19],G[10],A[10]);

circle c111(wg[22],wa[22],wg[21],wa[21],G[11],A[11]);

circle c112(wg[24],wa[24],wg[23],wa[23],G[12],A[12]);

circle c113(wg[26],wa[26],wg[25],wa[25],G[13],A[13]);

circle c114(wg[28],wa[28],wg[27],wa[27],G[14],A[14]);

circle c115(wg[30],wa[30],wg[29],wa[29],G[15],A[15]);

//end

//D - FlipFlop Stage 1

dff s1c(s0cin,clk,s1cin);

dff s1G0(G[0],clk,s1G[0]);

dff s1g1(wg[1],clk,s1wg[1]);
dff s1a1(wa[1],clk,s1wa[1]);

dff s1G1(G[1],clk,s1G[1]);
dff s1A1(A[1],clk,s1A[1]);

dff s1g3(wg[3],clk,s1wg[3]);
dff s1a3(wa[3],clk,s1wa[3]);

dff s1G2(G[2],clk,s1G[2]);
dff s1A2(A[2],clk,s1A[2]);

dff s1g5(wg[5],clk,s1wg[5]);
dff s1a5(wa[5],clk,s1wa[5]);

dff s1G3(G[3],clk,s1G[3]);
dff s1A3(A[3],clk,s1A[3]);

dff s1g7(wg[7],clk,s1wg[7]);
dff s1a7(wa[7],clk,s1wa[7]);

dff s1G4(G[4],clk,s1G[4]);
dff s1A4(A[4],clk,s1A[4]);

dff s1g9(wg[9],clk,s1wg[9]);
dff s1a9(wa[9],clk,s1wa[9]);

dff s1G5(G[5],clk,s1G[5]);
dff s1A5(A[5],clk,s1A[5]);

dff s1g11(wg[11],clk,s1wg[11]);
dff s1a11(wa[11],clk,s1wa[11]);

dff s1G6(G[6],clk,s1G[6]);
dff s1A6(A[6],clk,s1A[6]);

dff s1g13(wg[13],clk,s1wg[13]);
dff s1a13(wa[13],clk,s1wa[13]);

dff s1G7(G[7],clk,s1G[7]);
dff s1A7(A[7],clk,s1A[7]);

dff s1g15(wg[15],clk,s1wg[15]);
dff s1a15(wa[15],clk,s1wa[15]);

dff s1G8(G[8],clk,s1G[8]);
dff s1A8(A[8],clk,s1A[8]);

dff s1g17(wg[17],clk,s1wg[17]);
dff s1a17(wa[17],clk,s1wa[17]);

dff s1G9(G[9],clk,s1G[9]);
dff s1A9(A[9],clk,s1A[9]);

dff s1g19(wg[19],clk,s1wg[19]);
dff s1a19(wa[19],clk,s1wa[19]);

dff s1G10(G[10],clk,s1G[10]);
dff s1A10(A[10],clk,s1A[10]);

dff s1g21(wg[21],clk,s1wg[21]);
dff s1a21(wa[21],clk,s1wa[21]);

dff s1G11(G[11],clk,s1G[11]);
dff s1A11(A[11],clk,s1A[11]);

dff s1g23(wg[23],clk,s1wg[23]);
dff s1a23(wa[23],clk,s1wa[23]);

dff s1G12(G[12],clk,s1G[12]);
dff s1A12(A[12],clk,s1A[12]);

dff s1g25(wg[25],clk,s1wg[25]);
dff s1a25(wa[25],clk,s1wa[25]);

dff s1G13(G[13],clk,s1G[13]);
dff s1A13(A[13],clk,s1A[13]);

dff s1g27(wg[27],clk,s1wg[27]);
dff s1a27(wa[27],clk,s1wa[27]);

dff s1G14(G[14],clk,s1G[14]);
dff s1A14(A[14],clk,s1A[14]);

dff s1g29(wg[29],clk,s1wg[29]);
dff s1a29(wa[29],clk,s1wa[29]);

dff s1G15(G[15],clk,s1G[15]);
dff s1A15(A[15],clk,s1A[15]);

dff s1g31(wg[31],clk,s1wg[31]);
dff s1a31(wa[31],clk,s1wa[31]);

dff s1p0(s0p[0],clk,s1p[0]);
dff s1p1(s0p[1],clk,s1p[1]);
dff s1p2(s0p[2],clk,s1p[2]);
dff s1p3(s0p[3],clk,s1p[3]);
dff s1p4(s0p[4],clk,s1p[4]);
dff s1p5(s0p[5],clk,s1p[5]);
dff s1p6(s0p[6],clk,s1p[6]);
dff s1p7(s0p[7],clk,s1p[7]);
dff s1p8(s0p[8],clk,s1p[8]);
dff s1p9(s0p[9],clk,s1p[9]);
dff s1p10(s0p[10],clk,s1p[10]);
dff s1p11(s0p[11],clk,s1p[11]);
dff s1p12(s0p[12],clk,s1p[12]);
dff s1p13(s0p[13],clk,s1p[13]);
dff s1p14(s0p[14],clk,s1p[14]);
dff s1p15(s0p[15],clk,s1p[15]);
dff s1p16(s0p[16],clk,s1p[16]);
dff s1p17(s0p[17],clk,s1p[17]);
dff s1p18(s0p[18],clk,s1p[18]);
dff s1p19(s0p[19],clk,s1p[19]);
dff s1p20(s0p[20],clk,s1p[20]);
dff s1p21(s0p[21],clk,s1p[21]);
dff s1p22(s0p[22],clk,s1p[22]);
dff s1p23(s0p[23],clk,s1p[23]);
dff s1p24(s0p[24],clk,s1p[24]);
dff s1p25(s0p[25],clk,s1p[25]);
dff s1p26(s0p[26],clk,s1p[26]);
dff s1p27(s0p[27],clk,s1p[27]);
dff s1p28(s0p[28],clk,s1p[28]);
dff s1p29(s0p[29],clk,s1p[29]);
dff s1p30(s0p[30],clk,s1p[30]);
dff s1p31(s0p[31],clk,s1p[31]);	

//end

//Stage - 2

dot d201(s1wg[1],s1wa[1],s1G[0],s1G[16]);
dot d202(s1G[1],s1A[1],s1G[0],s1G[17]);

circle c201(s1wg[5],s1wa[5],s1G[2],s1A[2],s1G[18],s1A[18]);
circle c202(s1G[3],s1A[3],s1G[2],s1A[2],s1G[19],s1A[19]);

circle c203(s1wg[9],s1wa[9],s1G[4],s1A[4],s1G[20],s1A[20]);
circle c204(s1G[5],s1A[5],s1G[4],s1A[4],s1G[21],s1A[21]);

circle c205(s1wg[13],s1wa[13],s1G[6],s1A[6],s1G[22],s1A[22]);
circle c206(s1G[7],s1A[7],s1G[6],s1A[6],s1G[23],s1A[23]);

circle c207(s1wg[17],s1wa[17],s1G[8],s1A[8],s1G[24],s1A[24]);
circle c208(s1G[9],s1A[9],s1G[8],s1A[8],s1G[25],s1A[25]);

circle c209(s1wg[21],s1wa[21],s1G[10],s1A[10],s1G[26],s1A[26]);
circle c210(s1G[11],s1A[11],s1G[10],s1A[10],s1G[27],s1A[27]);

circle c211(s1wg[25],s1wa[25],s1G[12],s1A[12],s1G[28],s1A[28]);
circle c212(s1G[13],s1A[13],s1G[12],s1A[12],s1G[29],s1A[29]);

circle c213(s1wg[29],s1wa[29],s1G[14],s1A[14],s1G[30],s1A[30]);
circle c214(s1G[15],s1A[15],s1G[14],s1A[14],s1G[31],s1A[31]);

//end

//D- FlipFlop Stage - 2

dff s2c(s1cin,clk,s2cin);

dff s2G0(s1G[0],clk,s2G[0]);

dff s2G16(s1G[16],clk,s2G[16]);

dff s2G17(s1G[17],clk,s2G[17]);

dff s2wg3(s1wg[3],clk,s2wg[3]);
dff s2wa3(s1wa[3],clk,s2wa[3]);

dff s2G2(s1G[2],clk,s2G[2]);
dff s2A2(s1A[2],clk,s2A[2]);

dff s2G18(s1G[18],clk,s2G[18]);
dff s2A18(s1A[18],clk,s2A[18]);

dff s2G19(s1G[19],clk,s2G[19]);
dff s2A19(s1A[19],clk,s2A[19]);

dff s2wg7(s1wg[7],clk,s2wg[7]);
dff s2wa7(s1wa[7],clk,s2wa[7]);

dff s2G4(s1G[4],clk,s2G[4]);
dff s2A4(s1A[4],clk,s2A[4]);

dff s2G20(s1G[20],clk,s2G[20]);
dff s2A20(s1A[20],clk,s2A[20]);

dff s2G21(s1G[21],clk,s2G[21]);
dff s2A21(s1A[21],clk,s2A[21]);

dff s2wg11(s1wg[11],clk,s2wg[11]);
dff s2wa11(s1wa[11],clk,s2wa[11]);

dff s2G6(s1G[6],clk,s2G[6]);
dff s2A6(s1A[6],clk,s2A[6]);

dff s2G22(s1G[22],clk,s2G[22]);
dff s2A22(s1A[22],clk,s2A[22]);

dff s2G23(s1G[23],clk,s2G[23]);
dff s2A23(s1A[23],clk,s2A[23]);

dff s2wg15(s1wg[15],clk,s2wg[15]);
dff s2wa15(s1wa[15],clk,s2wa[15]);

dff s2G8(s1G[8],clk,s2G[8]);
dff s2A8(s1A[8],clk,s2A[8]);

dff s2G24(s1G[24],clk,s2G[24]);
dff s2A24(s1A[24],clk,s2A[24]);

dff s2G25(s1G[25],clk,s2G[25]);
dff s2A25(s1A[25],clk,s2A[25]);

dff s2wg19(s1wg[19],clk,s2wg[19]);
dff s2wa19(s1wa[19],clk,s2wa[19]);

dff s2G10(s1G[10],clk,s2G[10]);
dff s2A10(s1A[10],clk,s2A[10]);

dff s2G26(s1G[26],clk,s2G[26]);
dff s2A26(s1A[26],clk,s2A[26]);

dff s2G27(s1G[27],clk,s2G[27]);
dff s2A27(s1A[27],clk,s2A[27]);

dff s2wg23(s1wg[23],clk,s2wg[23]);
dff s2wa23(s1wa[23],clk,s2wa[23]);

dff s2G12(s1G[12],clk,s2G[12]);
dff s2A12(s1A[12],clk,s2A[12]);

dff s2G28(s1G[28],clk,s2G[28]);
dff s2A28(s1A[28],clk,s2A[28]);

dff s2G29(s1G[29],clk,s2G[29]);
dff s2A29(s1A[29],clk,s2A[29]);

dff s2wg27(s1wg[27],clk,s2wg[27]);
dff s2wa27(s1wa[27],clk,s2wa[27]);

dff s2G14(s1G[14],clk,s2G[14]);
dff s2A14(s1A[14],clk,s2A[14]);

dff s2G30(s1G[30],clk,s2G[30]);
dff s2A30(s1A[30],clk,s2A[30]);

dff s2G31(s1G[31],clk,s2G[31]);
dff s2A31(s1A[31],clk,s2A[31]);

dff s2wg31(s1wg[31],clk,s2wg[31]);
dff s2wa31(s1wa[31],clk,s2wa[31]);

dff s2p0(s1p[0],clk,s2p[0]);	
dff s2p1(s1p[1],clk,s2p[1]);	
dff s2p2(s1p[2],clk,s2p[2]);	
dff s2p3(s1p[3],clk,s2p[3]);	
dff s2p4(s1p[4],clk,s2p[4]);	
dff s2p5(s1p[5],clk,s2p[5]);	
dff s2p6(s1p[6],clk,s2p[6]);	
dff s2p7(s1p[7],clk,s2p[7]);	
dff s2p8(s1p[8],clk,s2p[8]);	
dff s2p9(s1p[9],clk,s2p[9]);	
dff s2p10(s1p[10],clk,s2p[10]);	
dff s2p11(s1p[11],clk,s2p[11]);	
dff s2p12(s1p[12],clk,s2p[12]);	
dff s2p13(s1p[13],clk,s2p[13]);	
dff s2p14(s1p[14],clk,s2p[14]);	
dff s2p15(s1p[15],clk,s2p[15]);	
dff s2p16(s1p[16],clk,s2p[16]);	
dff s2p17(s1p[17],clk,s2p[17]);	
dff s2p18(s1p[18],clk,s2p[18]);	
dff s2p19(s1p[19],clk,s2p[19]);	
dff s2p20(s1p[20],clk,s2p[20]);	
dff s2p21(s1p[21],clk,s2p[21]);	
dff s2p22(s1p[22],clk,s2p[22]);	
dff s2p23(s1p[23],clk,s2p[23]);	
dff s2p24(s1p[24],clk,s2p[24]);	
dff s2p25(s1p[25],clk,s2p[25]);	
dff s2p26(s1p[26],clk,s2p[26]);	
dff s2p27(s1p[27],clk,s2p[27]);	
dff s2p28(s1p[28],clk,s2p[28]);	
dff s2p29(s1p[29],clk,s2p[29]);	
dff s2p30(s1p[30],clk,s2p[30]);	
dff s2p31(s1p[31],clk,s2p[31]);	

//end

//Stage - 3

dot d301(s2wg[3],s2wa[3],s2G[17],s2G[32]);
dot d302(s2G[2],s2A[2],s2G[17],s2G[33]);
dot d303(s2G[18],s2A[18],s2G[17],s2G[34]);
dot d304(s2G[19],s2A[19],s2G[17],s2G[35]);


circle c301(s2wg[11],s2wa[11],s2G[21],s2A[21],s2G[36],s2A[36]);
circle c302(s2G[6],s2A[6],s2G[21],s2A[21],s2G[37],s2A[37]);
circle c303(s2G[22],s2A[22],s2G[21],s2A[21],s2G[38],s2A[38]);
circle c304(s2G[23],s2A[23],s2G[21],s2A[21],s2G[39],s2A[39]);

circle c305(s2wg[19],s2wa[19],s2G[25],s2A[25],s2G[40],s2A[40]);
circle c306(s2G[10],s2A[10],s2G[25],s2A[25],s2G[41],s2A[41]);
circle c307(s2G[26],s2A[26],s2G[25],s2A[25],s2G[42],s2A[42]);
circle c308(s2G[27],s2A[27],s2G[25],s2A[25],s2G[43],s2A[43]);

circle c309(s2wg[27],s2wa[27],s2G[29],s2A[29],s2G[44],s2A[44]);
circle c310(s2G[14],s2A[14],s2G[29],s2A[29],s2G[45],s2A[45]);
circle c311(s2G[30],s2A[30],s2G[29],s2A[29],s2G[46],s2A[46]);
circle c312(s2G[31],s2A[31],s2G[29],s2A[29],s2G[47],s2A[47]);

//end

//D - FlipFlop Stage - 3

dff s3c(s2cin,clk,s3cin);

dff s3G0(s2G[0],clk,s3G[0]);

dff s3G16(s2G[16],clk,s3G[16]);

dff s3G17(s2G[17],clk,s3G[17]);

dff s3G32(s2G[32],clk,s3G[32]);

dff s3G33(s2G[33],clk,s3G[33]);

dff s3G34(s2G[34],clk,s3G[34]);

dff s3G35(s2G[35],clk,s3G[35]);

dff s3wg7(s2wg[7],clk,s3wg[7]);
dff s3wa7(s2wa[7],clk,s3wa[7]);

dff s3G4(s2G[4],clk,s3G[4]);
dff s3A4(s2A[4],clk,s3A[4]);

dff s3G20(s2G[20],clk,s3G[20]);
dff s3A20(s2A[20],clk,s3A[20]);

dff s3G21(s2G[21],clk,s3G[21]);
dff s3A21(s2A[21],clk,s3A[21]);

dff s3G36(s2G[36],clk,s3G[36]);
dff s3A36(s2A[36],clk,s3A[36]);

dff s3G37(s2G[37],clk,s3G[37]);
dff s3A37(s2A[37],clk,s3A[37]);

dff s3G38(s2G[38],clk,s3G[38]);
dff s3A38(s2A[38],clk,s3A[38]);

dff s3G39(s2G[39],clk,s3G[39]);
dff s3A39(s2A[39],clk,s3A[39]);

dff s3wg15(s2wg[15],clk,s3wg[15]);
dff s3wa15(s2wa[15],clk,s3wa[15]);

dff s3G8(s2G[8],clk,s3G[8]);
dff s3A8(s2A[8],clk,s3A[8]);

dff s3G24(s2G[24],clk,s3G[24]);
dff s3A24(s2A[24],clk,s3A[24]);

dff s3G25(s2G[25],clk,s3G[25]);
dff s3A25(s2A[25],clk,s3A[25]);

dff s3G40(s2G[40],clk,s3G[40]);
dff s3A40(s2A[40],clk,s3A[40]);

dff s3G41(s2G[41],clk,s3G[41]);
dff s3A41(s2A[41],clk,s3A[41]);

dff s3G42(s2G[42],clk,s3G[42]);
dff s3A42(s2A[42],clk,s3A[42]);

dff s3G43(s2G[43],clk,s3G[43]);
dff s3A43(s2A[43],clk,s3A[43]);

dff s3wg23(s2wg[23],clk,s3wg[23]);
dff s3wa23(s2wa[23],clk,s3wa[23]);

dff s3G12(s2G[12],clk,s3G[12]);
dff s3A12(s2A[12],clk,s3A[12]);

dff s3G28(s2G[28],clk,s3G[28]);
dff s3A28(s2A[28],clk,s3A[28]);

dff s3G29(s2G[29],clk,s3G[29]);
dff s3A29(s2A[29],clk,s3A[29]);

dff s3G44(s2G[44],clk,s3G[44]);
dff s3A44(s2A[44],clk,s3A[44]);

dff s3G45(s2G[45],clk,s3G[45]);
dff s3A45(s2A[45],clk,s3A[45]);

dff s3G46(s2G[46],clk,s3G[46]);
dff s3A46(s2A[46],clk,s3A[46]);

dff s3G47(s2G[47],clk,s3G[47]);
dff s3A47(s2A[47],clk,s3A[47]);

dff s3wg31(s2wg[31],clk,s3wg[31]);
dff s3wa31(s2wa[31],clk,s3wa[31]);

dff s3p0(s2p[0],clk,s3p[0]);
dff s3p1(s2p[1],clk,s3p[1]);
dff s3p2(s2p[2],clk,s3p[2]);
dff s3p3(s2p[3],clk,s3p[3]);
dff s3p4(s2p[4],clk,s3p[4]);
dff s3p5(s2p[5],clk,s3p[5]);
dff s3p6(s2p[6],clk,s3p[6]);
dff s3p7(s2p[7],clk,s3p[7]);
dff s3p8(s2p[8],clk,s3p[8]);
dff s3p9(s2p[9],clk,s3p[9]);
dff s3p10(s2p[10],clk,s3p[10]);
dff s3p11(s2p[11],clk,s3p[11]);
dff s3p12(s2p[12],clk,s3p[12]);
dff s3p13(s2p[13],clk,s3p[13]);
dff s3p14(s2p[14],clk,s3p[14]);
dff s3p15(s2p[15],clk,s3p[15]);
dff s3p16(s2p[16],clk,s3p[16]);
dff s3p17(s2p[17],clk,s3p[17]);
dff s3p18(s2p[18],clk,s3p[18]);
dff s3p19(s2p[19],clk,s3p[19]);
dff s3p20(s2p[20],clk,s3p[20]);
dff s3p21(s2p[21],clk,s3p[21]);
dff s3p22(s2p[22],clk,s3p[22]);
dff s3p23(s2p[23],clk,s3p[23]);
dff s3p24(s2p[24],clk,s3p[24]);
dff s3p25(s2p[25],clk,s3p[25]);
dff s3p26(s2p[26],clk,s3p[26]);
dff s3p27(s2p[27],clk,s3p[27]);
dff s3p28(s2p[28],clk,s3p[28]);
dff s3p29(s2p[29],clk,s3p[29]);
dff s3p30(s2p[30],clk,s3p[30]);
dff s3p31(s2p[31],clk,s3p[31]);

//end

//Stage - 4

dot d401(s3wg[7],s3wa[7],s3G[35],s3G[48]);
dot d402(s3G[4],s3A[4],s3G[35],s3G[49]);
dot d403(s3G[20],s3A[20],s3G[35],s3G[50]);
dot d404(s3G[21],s3A[21],s3G[35],s3G[51]);
dot d405(s3G[36],s3A[36],s3G[35],s3G[52]);
dot d406(s3G[37],s3A[37],s3G[35],s3G[53]);
dot d407(s3G[38],s3A[38],s3G[35],s3G[54]);
dot d408(s3G[39],s3A[39],s3G[35],s3G[55]);


circle c409(s3wg[23],s3wa[23],s3G[43],s3A[43],s3G[56],s3A[56]);
circle c410(s3G[12],s3A[12],s3G[43],s3A[43],s3G[57],s3A[57]);
circle c411(s3G[28],s3A[28],s3G[43],s3A[43],s3G[58],s3A[58]);
circle c412(s3G[29],s3A[29],s3G[43],s3A[43],s3G[59],s3A[59]);
circle c413(s3G[44],s3A[44],s3G[43],s3A[43],s3G[60],s3A[60]);
circle c414(s3G[45],s3A[45],s3G[43],s3A[43],s3G[61],s3A[61]);
circle c415(s3G[46],s3A[46],s3G[43],s3A[43],s3G[62],s3A[62]);
circle c416(s3G[47],s3A[47],s3G[43],s3A[43],s3G[63],s3A[63]);

//end

//D - Flip Flop Stage - 4

dff s4c(s3cin,clk,s4cin);

dff s4G0(s3G[0],clk,s4G[0]);

dff s4G16(s3G[16],clk,s4G[16]);

dff s4G17(s3G[17],clk,s4G[17]);

dff s4G32(s3G[32],clk,s4G[32]);

dff s4G33(s3G[33],clk,s4G[33]);

dff s4G34(s3G[34],clk,s4G[34]);

dff s4G35(s3G[35],clk,s4G[35]);

dff s4G48(s3G[48],clk,s4G[48]);

dff s4G49(s3G[49],clk,s4G[49]);

dff s4G50(s3G[50],clk,s4G[50]);

dff s4G51(s3G[51],clk,s4G[51]);

dff s4G52(s3G[52],clk,s4G[52]);

dff s4G53(s3G[53],clk,s4G[53]);

dff s4G54(s3G[54],clk,s4G[54]);

dff s4G55(s3G[55],clk,s4G[55]);

dff s4wg15(s3wg[15],clk,s4wg[15]);
dff s4wa15(s3wa[15],clk,s4wa[15]);

dff s4G8(s3G[8],clk,s4G[8]);
dff s4A8(s3A[8],clk,s4A[8]);

dff s4G24(s3G[24],clk,s4G[24]);
dff s4A24(s3A[24],clk,s4A[24]);

dff s4G25(s3G[25],clk,s4G[25]);
dff s4A25(s3A[25],clk,s4A[25]);

dff s4G40(s3G[40],clk,s4G[40]);
dff s4A40(s3A[40],clk,s4A[40]);

dff s4G41(s3G[41],clk,s4G[41]);
dff s4A41(s3A[41],clk,s4A[41]);

dff s4G42(s3G[42],clk,s4G[42]);
dff s4A42(s3A[42],clk,s4A[42]);

dff s4G43(s3G[43],clk,s4G[43]);
dff s4A43(s3A[43],clk,s4A[43]);

dff s4G56(s3G[56],clk,s4G[56]);
dff s4A56(s3A[56],clk,s4A[56]);

dff s4G57(s3G[57],clk,s4G[57]);
dff s4A57(s3A[57],clk,s4A[57]);

dff s4G58(s3G[58],clk,s4G[58]);
dff s4A58(s3A[58],clk,s4A[58]);

dff s4G59(s3G[59],clk,s4G[59]);
dff s4A59(s3A[59],clk,s4A[59]);

dff s4G60(s3G[60],clk,s4G[60]);
dff s4A60(s3A[60],clk,s4A[60]);

dff s4G61(s3G[61],clk,s4G[61]);
dff s4A61(s3A[61],clk,s4A[61]);

dff s4G62(s3G[62],clk,s4G[62]);
dff s4A62(s3A[62],clk,s4A[62]);

dff s4G63(s3G[63],clk,s4G[63]);
dff s4A63(s3A[63],clk,s4A[63]);

dff s4wg31(s3wg[31],clk,s4wg[31]);
dff s4wa31(s3wa[31],clk,s4wa[31]);

dff s4p0(s3p[0],clk,s4p[0]);
dff s4p1(s3p[1],clk,s4p[1]);
dff s4p2(s3p[2],clk,s4p[2]);
dff s4p3(s3p[3],clk,s4p[3]);
dff s4p4(s3p[4],clk,s4p[4]);
dff s4p5(s3p[5],clk,s4p[5]);
dff s4p6(s3p[6],clk,s4p[6]);
dff s4p7(s3p[7],clk,s4p[7]);
dff s4p8(s3p[8],clk,s4p[8]);
dff s4p9(s3p[9],clk,s4p[9]);
dff s4p10(s3p[10],clk,s4p[10]);
dff s4p11(s3p[11],clk,s4p[11]);
dff s4p12(s3p[12],clk,s4p[12]);
dff s4p13(s3p[13],clk,s4p[13]);
dff s4p14(s3p[14],clk,s4p[14]);
dff s4p15(s3p[15],clk,s4p[15]);
dff s4p16(s3p[16],clk,s4p[16]);
dff s4p17(s3p[17],clk,s4p[17]);
dff s4p18(s3p[18],clk,s4p[18]);
dff s4p19(s3p[19],clk,s4p[19]);
dff s4p20(s3p[20],clk,s4p[20]);
dff s4p21(s3p[21],clk,s4p[21]);
dff s4p22(s3p[22],clk,s4p[22]);
dff s4p23(s3p[23],clk,s4p[23]);
dff s4p24(s3p[24],clk,s4p[24]);
dff s4p25(s3p[25],clk,s4p[25]);
dff s4p26(s3p[26],clk,s4p[26]);
dff s4p27(s3p[27],clk,s4p[27]);
dff s4p28(s3p[28],clk,s4p[28]);
dff s4p29(s3p[29],clk,s4p[29]);
dff s4p30(s3p[30],clk,s4p[30]);
dff s4p31(s3p[31],clk,s4p[31]);

//end

//Stage - 5

dot d501(s4wg[15],s4wa[15],s4G[55],s4G[64]);
dot d502(s4G[8],s4A[8],s4G[55],s4G[65]);
dot d503(s4G[24],s4A[24],s4G[55],s4G[66]);
dot d504(s4G[25],s4A[25],s4G[55],s4G[67]);
dot d505(s4G[40],s4A[40],s4G[55],s4G[68]);
dot d506(s4G[41],s4A[41],s4G[55],s4G[69]);
dot d507(s4G[42],s4A[42],s4G[55],s4G[70]);
dot d508(s4G[43],s4A[43],s4G[55],s4G[71]);
dot d509(s4G[56],s4A[56],s4G[55],s4G[72]);
dot d510(s4G[57],s4A[57],s4G[55],s4G[73]);
dot d511(s4G[58],s4A[58],s4G[55],s4G[74]);
dot d512(s4G[59],s4A[59],s4G[55],s4G[75]);
dot d513(s4G[60],s4A[60],s4G[55],s4G[76]);
dot d514(s4G[61],s4A[61],s4G[55],s4G[77]);
dot d515(s4G[62],s4A[62],s4G[55],s4G[78]);
dot d516(s4G[63],s4A[63],s4G[55],s4G[79]);

//end

//D - Flip Flop Stage - 5

dff s5(s4cin,clk,s5cin);

dff s5G0(s4G[0],clk,s5G[0]);

dff s5G16(s4G[16],clk,s5G[16]);

dff s5G17(s4G[17],clk,s5G[17]);

dff s5G32(s4G[32],clk,s5G[32]);

dff s5G33(s4G[33],clk,s5G[33]);

dff s5G34(s4G[34],clk,s5G[34]);

dff s5G35(s4G[35],clk,s5G[35]);

dff s5G48(s4G[48],clk,s5G[48]);

dff s5G49(s4G[49],clk,s5G[49]);

dff s5G50(s4G[50],clk,s5G[50]);

dff s5G51(s4G[51],clk,s5G[51]);

dff s5G52(s4G[52],clk,s5G[52]);

dff s5G53(s4G[53],clk,s5G[53]);

dff s5G54(s4G[54],clk,s5G[54]);

dff s5G55(s4G[55],clk,s5G[55]);

dff s5G64(s4G[64],clk,s5G[64]);

dff s5G65(s4G[65],clk,s5G[65]);

dff s5G66(s4G[66],clk,s5G[66]);

dff s5G67(s4G[67],clk,s5G[67]);

dff s5G68(s4G[68],clk,s5G[68]);

dff s5G69(s4G[69],clk,s5G[69]);

dff s5G70(s4G[70],clk,s5G[70]);

dff s5G71(s4G[71],clk,s5G[71]);

dff s5G72(s4G[72],clk,s5G[72]);

dff s5G73(s4G[73],clk,s5G[73]);

dff s5G74(s4G[74],clk,s5G[74]);

dff s5G75(s4G[75],clk,s5G[75]);

dff s5G76(s4G[76],clk,s5G[76]);

dff s5G77(s4G[77],clk,s5G[77]);

dff s5G78(s4G[78],clk,s5G[78]);

dff s5G79(s4G[79],clk,s5G[79]);

dff s5wg31(s4wg[31],clk,s5wg[31]);
dff s5wa31(s4wa[31],clk,s5wa[31]);

dff s5p0(s4p[0],clk,s5p[0]);
dff s5p1(s4p[1],clk,s5p[1]);
dff s5p2(s4p[2],clk,s5p[2]);
dff s5p3(s4p[3],clk,s5p[3]);
dff s5p4(s4p[4],clk,s5p[4]);
dff s5p5(s4p[5],clk,s5p[5]);
dff s5p6(s4p[6],clk,s5p[6]);
dff s5p7(s4p[7],clk,s5p[7]);
dff s5p8(s4p[8],clk,s5p[8]);
dff s5p9(s4p[9],clk,s5p[9]);
dff s5p10(s4p[10],clk,s5p[10]);
dff s5p11(s4p[11],clk,s5p[11]);
dff s5p12(s4p[12],clk,s5p[12]);
dff s5p13(s4p[13],clk,s5p[13]);
dff s5p14(s4p[14],clk,s5p[14]);
dff s5p15(s4p[15],clk,s5p[15]);
dff s5p16(s4p[16],clk,s5p[16]);
dff s5p17(s4p[17],clk,s5p[17]);
dff s5p18(s4p[18],clk,s5p[18]);
dff s5p19(s4p[19],clk,s5p[19]);
dff s5p20(s4p[20],clk,s5p[20]);
dff s5p21(s4p[21],clk,s5p[21]);
dff s5p22(s4p[22],clk,s5p[22]);
dff s5p23(s4p[23],clk,s5p[23]);
dff s5p24(s4p[24],clk,s5p[24]);
dff s5p25(s4p[25],clk,s5p[25]);
dff s5p26(s4p[26],clk,s5p[26]);
dff s5p27(s4p[27],clk,s5p[27]);
dff s5p28(s4p[28],clk,s5p[28]);
dff s5p29(s4p[29],clk,s5p[29]);
dff s5p30(s4p[30],clk,s5p[30]);
dff s5p31(s4p[31],clk,s5p[31]);
//end

assign s[0] = s5p[0] ^ s5cin;
assign s[1] = s5p[1] ^ s5G[0];
assign s[2] = s5p[2] ^ s5G[16];
assign s[3] = s5p[3] ^ s5G[17];
assign s[4] = s5p[4] ^ s5G[32];
assign s[5] = s5p[5] ^ s5G[33];
assign s[6] = s5p[6] ^ s5G[34];
assign s[7] = s5p[7] ^ s5G[35];
assign s[8] = s5p[8] ^ s5G[48];
assign s[9] = s5p[9] ^ s5G[49];
assign s[10] = s5p[10] ^ s5G[50];
assign s[11] = s5p[11] ^ s5G[51];
assign s[12] = s5p[12] ^ s5G[52];
assign s[13] = s5p[13] ^ s5G[53];
assign s[14] = s5p[14] ^ s5G[54];
assign s[15] = s5p[15] ^ s5G[55];
assign s[16] = s5p[16] ^ s5G[64];
assign s[17] = s5p[17] ^ s5G[65];
assign s[18] = s5p[18] ^ s5G[66];
assign s[19] = s5p[19] ^ s5G[67];
assign s[20] = s5p[20] ^ s5G[68];
assign s[21] = s5p[21] ^ s5G[69];
assign s[22] = s5p[22] ^ s5G[70];
assign s[23] = s5p[23] ^ s5G[71];
assign s[24] = s5p[24] ^ s5G[72];
assign s[25] = s5p[25] ^ s5G[73];
assign s[26] = s5p[26] ^ s5G[74];
assign s[27] = s5p[27] ^ s5G[75];
assign s[28] = s5p[28] ^ s5G[76];
assign s[29] = s5p[29] ^ s5G[77];
assign s[30] = s5p[30] ^ s5G[78];
assign s[31] = s5p[31] ^ s5G[79];

dot d6(s5wg[31],s5wa[31],s5G[79],cout);

endmodule

//multiplier

module wallace_tree_multiplier(clk,a,b,p);
input clk;
input[31:0] a,b;
output[63:0] p;

wire[63:0] wp0,wp1,wp2,wp3,wp4,wp5,wp6,wp7,wp8,wp9,wp10,wp11,wp12,wp13,wp14,wp15,wp16,wp17,wp18,wp19,wp20,wp21,wp22;
wire[63:0] wp23,wp24,wp25,wp26,wp27,wp28,wp29,wp30,wp31;

wire[63:0] wpd[99:0],w1,w2;
wire[31:0] w[50:0];
wire w3,w4;

//P0

assign wp0[0] = b[0] & a[0];
assign wp0[1] = b[0] & a[1];
assign wp0[2] = b[0] & a[2];
assign wp0[3] = b[0] & a[3];
assign wp0[4] = b[0] & a[4];
assign wp0[5] = b[0] & a[5];
assign wp0[6] = b[0] & a[6];
assign wp0[7] = b[0] & a[7];
assign wp0[8] = b[0] & a[8];
assign wp0[9] = b[0] & a[9];
assign wp0[10] = b[0] & a[10];
assign wp0[11] = b[0] & a[11];
assign wp0[12] = b[0] & a[12];
assign wp0[13] = b[0] & a[13];
assign wp0[14] = b[0] & a[14];
assign wp0[15] = b[0] & a[15];
assign wp0[16] = b[0] & a[16];
assign wp0[17] = b[0] & a[17];
assign wp0[18] = b[0] & a[18];
assign wp0[19] = b[0] & a[19];
assign wp0[20] = b[0] & a[20];
assign wp0[21] = b[0] & a[21];
assign wp0[22] = b[0] & a[22];
assign wp0[23] = b[0] & a[23];
assign wp0[24] = b[0] & a[24];
assign wp0[25] = b[0] & a[25];
assign wp0[26] = b[0] & a[26];
assign wp0[27] = b[0] & a[27];
assign wp0[28] = b[0] & a[28];
assign wp0[29] = b[0] & a[29];
assign wp0[30] = b[0] & a[30];
assign wp0[31] = b[0] & a[31];
assign wp0[63:32]=0;


//P1

assign wp1[0] = 0;
assign wp1[1] = b[1] & a[0];
assign wp1[2] = b[1] & a[1];
assign wp1[3] = b[1] & a[2];
assign wp1[4] = b[1] & a[3];
assign wp1[5] = b[1] & a[4];
assign wp1[6] = b[1] & a[5];
assign wp1[7] = b[1] & a[6];
assign wp1[8] = b[1] & a[7];
assign wp1[9] = b[1] & a[8];
assign wp1[10] = b[1] & a[9];
assign wp1[11] = b[1] & a[10];
assign wp1[12] = b[1] & a[11];
assign wp1[13] = b[1] & a[12];
assign wp1[14] = b[1] & a[13];
assign wp1[15] = b[1] & a[14];
assign wp1[16] = b[1] & a[15];
assign wp1[17] = b[1] & a[16];
assign wp1[18] = b[1] & a[17];
assign wp1[19] = b[1] & a[18];
assign wp1[20] = b[1] & a[19];
assign wp1[21] = b[1] & a[20];
assign wp1[22] = b[1] & a[21];
assign wp1[23] = b[1] & a[22];
assign wp1[24] = b[1] & a[23];
assign wp1[25] = b[1] & a[24];
assign wp1[26] = b[1] & a[25];
assign wp1[27] = b[1] & a[26];
assign wp1[28] = b[1] & a[27];
assign wp1[29] = b[1] & a[28];
assign wp1[30] = b[1] & a[29];
assign wp1[31] = b[1] & a[30];
assign wp1[32] = b[1] & a[31];
assign wp1[63:33]=0;

//P2

assign wp2[1:0] = 0;
assign wp2[2] = b[2] & a[0];
assign wp2[3] = b[2] & a[1];
assign wp2[4] = b[2] & a[2];
assign wp2[5] = b[2] & a[3];
assign wp2[6] = b[2] & a[4];
assign wp2[7] = b[2] & a[5];
assign wp2[8] = b[2] & a[6];
assign wp2[9] = b[2] & a[7];
assign wp2[10] = b[2] & a[8];
assign wp2[11] = b[2] & a[9];
assign wp2[12] = b[2] & a[10];
assign wp2[13] = b[2] & a[11];
assign wp2[14] = b[2] & a[12];
assign wp2[15] = b[2] & a[13];
assign wp2[16] = b[2] & a[14];
assign wp2[17] = b[2] & a[15];
assign wp2[18] = b[2] & a[16];
assign wp2[19] = b[2] & a[17];
assign wp2[20] = b[2] & a[18];
assign wp2[21] = b[2] & a[19];
assign wp2[22] = b[2] & a[20];
assign wp2[23] = b[2] & a[21];
assign wp2[24] = b[2] & a[22];
assign wp2[25] = b[2] & a[23];
assign wp2[26] = b[2] & a[24];
assign wp2[27] = b[2] & a[25];
assign wp2[28] = b[2] & a[26];
assign wp2[29] = b[2] & a[27];
assign wp2[30] = b[2] & a[28];
assign wp2[31] = b[2] & a[29];
assign wp2[32] = b[2] & a[30];
assign wp2[33] = b[2] & a[31];
assign wp2[63:34]=0;



//P3

assign wp3[2:0] = 0;
assign wp3[3] = b[3] & a[0];
assign wp3[4] = b[3] & a[1];
assign wp3[5] = b[3] & a[2];
assign wp3[6] = b[3] & a[3];
assign wp3[7] = b[3] & a[4];
assign wp3[8] = b[3] & a[5];
assign wp3[9] = b[3] & a[6];
assign wp3[10] = b[3] & a[7];
assign wp3[11] = b[3] & a[8];
assign wp3[12] = b[3] & a[9];
assign wp3[13] = b[3] & a[10];
assign wp3[14] = b[3] & a[11];
assign wp3[15] = b[3] & a[12];
assign wp3[16] = b[3] & a[13];
assign wp3[17] = b[3] & a[14];
assign wp3[18] = b[3] & a[15];
assign wp3[19] = b[3] & a[16];
assign wp3[20] = b[3] & a[17];
assign wp3[21] = b[3] & a[18];
assign wp3[22] = b[3] & a[19];
assign wp3[23] = b[3] & a[20];
assign wp3[24] = b[3] & a[21];
assign wp3[25] = b[3] & a[22];
assign wp3[26] = b[3] & a[23];
assign wp3[27] = b[3] & a[24];
assign wp3[28] = b[3] & a[25];
assign wp3[29] = b[3] & a[26];
assign wp3[30] = b[3] & a[27];
assign wp3[31] = b[3] & a[28];
assign wp3[32] = b[3] & a[29];
assign wp3[33] = b[3] & a[30];
assign wp3[34] = b[3] & a[31];
assign wp3[63:35]=0;

//P4
assign wp4[3:0] = 0;
assign wp4[4] = b[4] & a[0];
assign wp4[5] = b[4] & a[1];
assign wp4[6] = b[4] & a[2];
assign wp4[7] = b[4] & a[3];
assign wp4[8] = b[4] & a[4];
assign wp4[9] = b[4] & a[5];
assign wp4[10] = b[4] & a[6];
assign wp4[11] = b[4] & a[7];
assign wp4[12] = b[4] & a[8];
assign wp4[13] = b[4] & a[9];
assign wp4[14] = b[4] & a[10];
assign wp4[15] = b[4] & a[11];
assign wp4[16] = b[4] & a[12];
assign wp4[17] = b[4] & a[13];
assign wp4[18] = b[4] & a[14];
assign wp4[19] = b[4] & a[15];
assign wp4[20] = b[4] & a[16];
assign wp4[21] = b[4] & a[17];
assign wp4[22] = b[4] & a[18];
assign wp4[23] = b[4] & a[19];
assign wp4[24] = b[4] & a[20];
assign wp4[25] = b[4] & a[21];
assign wp4[26] = b[4] & a[22];
assign wp4[27] = b[4] & a[23];
assign wp4[28] = b[4] & a[24];
assign wp4[29] = b[4] & a[25];
assign wp4[30] = b[4] & a[26];
assign wp4[31] = b[4] & a[27];
assign wp4[32] = b[4] & a[28];
assign wp4[33] = b[4] & a[29];
assign wp4[34] = b[4] & a[30];
assign wp4[35] = b[4] & a[31];
assign wp4[63:36]=0;

//P5

assign wp5[4:0] = 0;
assign wp5[5] = b[5] & a[0];
assign wp5[6] = b[5] & a[1];
assign wp5[7] = b[5] & a[2];
assign wp5[8] = b[5] & a[3];
assign wp5[9] = b[5] & a[4];
assign wp5[10] = b[5] & a[5];
assign wp5[11] = b[5] & a[6];
assign wp5[12] = b[5] & a[7];
assign wp5[13] = b[5] & a[8];
assign wp5[14] = b[5] & a[9];
assign wp5[15] = b[5] & a[10];
assign wp5[16] = b[5] & a[11];
assign wp5[17] = b[5] & a[12];
assign wp5[18] = b[5] & a[13];
assign wp5[19] = b[5] & a[14];
assign wp5[20] = b[5] & a[15];
assign wp5[21] = b[5] & a[16];
assign wp5[22] = b[5] & a[17];
assign wp5[23] = b[5] & a[18];
assign wp5[24] = b[5] & a[19];
assign wp5[25] = b[5] & a[20];
assign wp5[26] = b[5] & a[21];
assign wp5[27] = b[5] & a[22];
assign wp5[28] = b[5] & a[23];
assign wp5[29] = b[5] & a[24];
assign wp5[30] = b[5] & a[25];
assign wp5[31] = b[5] & a[26];
assign wp5[32] = b[5] & a[27];
assign wp5[33] = b[5] & a[28];
assign wp5[34] = b[5] & a[29];
assign wp5[35] = b[5] & a[30];
assign wp5[36] = b[5] & a[31];
assign wp5[63:37]=0;

//P6

assign wp6[5:0] = 0;
assign wp6[6] = b[6] & a[0];
assign wp6[7] = b[6] & a[1];
assign wp6[8] = b[6] & a[2];
assign wp6[9] = b[6] & a[3];
assign wp6[10] = b[6] & a[4];
assign wp6[11] = b[6] & a[5];
assign wp6[12] = b[6] & a[6];
assign wp6[13] = b[6] & a[7];
assign wp6[14] = b[6] & a[8];
assign wp6[15] = b[6] & a[9];
assign wp6[16] = b[6] & a[10];
assign wp6[17] = b[6] & a[11];
assign wp6[18] = b[6] & a[12];
assign wp6[19] = b[6] & a[13];
assign wp6[20] = b[6] & a[14];
assign wp6[21] = b[6] & a[15];
assign wp6[22] = b[6] & a[16];
assign wp6[23] = b[6] & a[17];
assign wp6[24] = b[6] & a[18];
assign wp6[25] = b[6] & a[19];
assign wp6[26] = b[6] & a[20];
assign wp6[27] = b[6] & a[21];
assign wp6[28] = b[6] & a[22];
assign wp6[29] = b[6] & a[23];
assign wp6[30] = b[6] & a[24];
assign wp6[31] = b[6] & a[25];
assign wp6[32] = b[6] & a[26];
assign wp6[33] = b[6] & a[27];
assign wp6[34] = b[6] & a[28];
assign wp6[35] = b[6] & a[29];
assign wp6[36] = b[6] & a[30];
assign wp6[37] = b[6] & a[31];
assign wp6[63:38]=0;

//P7

assign wp7[6:0] = 0;
assign wp7[7] = b[7] & a[0];
assign wp7[8] = b[7] & a[1];
assign wp7[9] = b[7] & a[2];
assign wp7[10] = b[7] & a[3];
assign wp7[11] = b[7] & a[4];
assign wp7[12] = b[7] & a[5];
assign wp7[13] = b[7] & a[6];
assign wp7[14] = b[7] & a[7];
assign wp7[15] = b[7] & a[8];
assign wp7[16] = b[7] & a[9];
assign wp7[17] = b[7] & a[10];
assign wp7[18] = b[7] & a[11];
assign wp7[19] = b[7] & a[12];
assign wp7[20] = b[7] & a[13];
assign wp7[21] = b[7] & a[14];
assign wp7[22] = b[7] & a[15];
assign wp7[23] = b[7] & a[16];
assign wp7[24] = b[7] & a[17];
assign wp7[25] = b[7] & a[18];
assign wp7[26] = b[7] & a[19];
assign wp7[27] = b[7] & a[20];
assign wp7[28] = b[7] & a[21];
assign wp7[29] = b[7] & a[22];
assign wp7[30] = b[7] & a[23];
assign wp7[31] = b[7] & a[24];
assign wp7[32] = b[7] & a[25];
assign wp7[33] = b[7] & a[26];
assign wp7[34] = b[7] & a[27];
assign wp7[35] = b[7] & a[28];
assign wp7[36] = b[7] & a[29];
assign wp7[37] = b[7] & a[30];
assign wp7[38] = b[7] & a[31];
assign wp7[63:39]=0;


//P8

assign wp8[7:0] = 0;
assign wp8[8] = b[8] & a[0];
assign wp8[9] = b[8] & a[1];
assign wp8[10] = b[8] & a[2];
assign wp8[11] = b[8] & a[3];
assign wp8[12] = b[8] & a[4];
assign wp8[13] = b[8] & a[5];
assign wp8[14] = b[8] & a[6];
assign wp8[15] = b[8] & a[7];
assign wp8[16] = b[8] & a[8];
assign wp8[17] = b[8] & a[9];
assign wp8[18] = b[8] & a[10];
assign wp8[19] = b[8] & a[11];
assign wp8[20] = b[8] & a[12];
assign wp8[21] = b[8] & a[13];
assign wp8[22] = b[8] & a[14];
assign wp8[23] = b[8] & a[15];
assign wp8[24] = b[8] & a[16];
assign wp8[25] = b[8] & a[17];
assign wp8[26] = b[8] & a[18];
assign wp8[27] = b[8] & a[19];
assign wp8[28] = b[8] & a[20];
assign wp8[29] = b[8] & a[21];
assign wp8[30] = b[8] & a[22];
assign wp8[31] = b[8] & a[23];
assign wp8[32] = b[8] & a[24];
assign wp8[33] = b[8] & a[25];
assign wp8[34] = b[8] & a[26];
assign wp8[35] = b[8] & a[27];
assign wp8[36] = b[8] & a[28];
assign wp8[37] = b[8] & a[29];
assign wp8[38] = b[8] & a[30];
assign wp8[39] = b[8] & a[31];
assign wp8[63:40]=0;

//P9
assign wp9[8:0] = 0;
assign wp9[9] = b[9] & a[0];
assign wp9[10] = b[9] & a[1];
assign wp9[11] = b[9] & a[2];
assign wp9[12] = b[9] & a[3];
assign wp9[13] = b[9] & a[4];
assign wp9[14] = b[9] & a[5];
assign wp9[15] = b[9] & a[6];
assign wp9[16] = b[9] & a[7];
assign wp9[17] = b[9] & a[8];
assign wp9[18] = b[9] & a[9];
assign wp9[19] = b[9] & a[10];
assign wp9[20] = b[9] & a[11];
assign wp9[21] = b[9] & a[12];
assign wp9[22] = b[9] & a[13];
assign wp9[23] = b[9] & a[14];
assign wp9[24] = b[9] & a[15];
assign wp9[25] = b[9] & a[16];
assign wp9[26] = b[9] & a[17];
assign wp9[27] = b[9] & a[18];
assign wp9[28] = b[9] & a[19];
assign wp9[29] = b[9] & a[20];
assign wp9[30] = b[9] & a[21];
assign wp9[31] = b[9] & a[22];
assign wp9[32] = b[9] & a[23];
assign wp9[33] = b[9] & a[24];
assign wp9[34] = b[9] & a[25];
assign wp9[35] = b[9] & a[26];
assign wp9[36] = b[9] & a[27];
assign wp9[37] = b[9] & a[28];
assign wp9[38] = b[9] & a[29];
assign wp9[39] = b[9] & a[30];
assign wp9[40] = b[9] & a[31];
assign wp9[63:41]=0;

//P10
assign wp10[9:0] = 0;
assign wp10[10] = b[10] & a[0];
assign wp10[11] = b[10] & a[1];
assign wp10[12] = b[10] & a[2];
assign wp10[13] = b[10] & a[3];
assign wp10[14] = b[10] & a[4];
assign wp10[15] = b[10] & a[5];
assign wp10[16] = b[10] & a[6];
assign wp10[17] = b[10] & a[7];
assign wp10[18] = b[10] & a[8];
assign wp10[19] = b[10] & a[9];
assign wp10[20] = b[10] & a[10];
assign wp10[21] = b[10] & a[11];
assign wp10[22] = b[10] & a[12];
assign wp10[23] = b[10] & a[13];
assign wp10[24] = b[10] & a[14];
assign wp10[25] = b[10] & a[15];
assign wp10[26] = b[10] & a[16];
assign wp10[27] = b[10] & a[17];
assign wp10[28] = b[10] & a[18];
assign wp10[29] = b[10] & a[19];
assign wp10[30] = b[10] & a[20];
assign wp10[31] = b[10] & a[21];
assign wp10[32] = b[10] & a[22];
assign wp10[33] = b[10] & a[23];
assign wp10[34] = b[10] & a[24];
assign wp10[35] = b[10] & a[25];
assign wp10[36] = b[10] & a[26];
assign wp10[37] = b[10] & a[27];
assign wp10[38] = b[10] & a[28];
assign wp10[39] = b[10] & a[29];
assign wp10[40] = b[10] & a[30];
assign wp10[41] = b[10] & a[31];
assign wp10[63:42]=0;

//P11
assign wp11[10:0] = 0;
assign wp11[11] = b[11] & a[0];
assign wp11[12] = b[11] & a[1];
assign wp11[13] = b[11] & a[2];
assign wp11[14] = b[11] & a[3];
assign wp11[15] = b[11] & a[4];
assign wp11[16] = b[11] & a[5];
assign wp11[17] = b[11] & a[6];
assign wp11[18] = b[11] & a[7];
assign wp11[19] = b[11] & a[8];
assign wp11[20] = b[11] & a[9];
assign wp11[21] = b[11] & a[10];
assign wp11[22] = b[11] & a[11];
assign wp11[23] = b[11] & a[12];
assign wp11[24] = b[11] & a[13];
assign wp11[25] = b[11] & a[14];
assign wp11[26] = b[11] & a[15];
assign wp11[27] = b[11] & a[16];
assign wp11[28] = b[11] & a[17];
assign wp11[29] = b[11] & a[18];
assign wp11[30] = b[11] & a[19];
assign wp11[31] = b[11] & a[20];
assign wp11[32] = b[11] & a[21];
assign wp11[33] = b[11] & a[22];
assign wp11[34] = b[11] & a[23];
assign wp11[35] = b[11] & a[24];
assign wp11[36] = b[11] & a[25];
assign wp11[37] = b[11] & a[26];
assign wp11[38] = b[11] & a[27];
assign wp11[39] = b[11] & a[28];
assign wp11[40] = b[11] & a[29];
assign wp11[41] = b[11] & a[30];
assign wp11[42] = b[11] & a[31];
assign wp11[63:43]=0;

//P12
assign wp12[11:0] = 0;
assign wp12[12] = b[12] & a[0];
assign wp12[13] = b[12] & a[1];
assign wp12[14] = b[12] & a[2];
assign wp12[15] = b[12] & a[3];
assign wp12[16] = b[12] & a[4];
assign wp12[17] = b[12] & a[5];
assign wp12[18] = b[12] & a[6];
assign wp12[19] = b[12] & a[7];
assign wp12[20] = b[12] & a[8];
assign wp12[21] = b[12] & a[9];
assign wp12[22] = b[12] & a[10];
assign wp12[23] = b[12] & a[11];
assign wp12[24] = b[12] & a[12];
assign wp12[25] = b[12] & a[13];
assign wp12[26] = b[12] & a[14];
assign wp12[27] = b[12] & a[15];
assign wp12[28] = b[12] & a[16];
assign wp12[29] = b[12] & a[17];
assign wp12[30] = b[12] & a[18];
assign wp12[31] = b[12] & a[19];
assign wp12[32] = b[12] & a[20];
assign wp12[33] = b[12] & a[21];
assign wp12[34] = b[12] & a[22];
assign wp12[35] = b[12] & a[23];
assign wp12[36] = b[12] & a[24];
assign wp12[37] = b[12] & a[25];
assign wp12[38] = b[12] & a[26];
assign wp12[39] = b[12] & a[27];
assign wp12[40] = b[12] & a[28];
assign wp12[41] = b[12] & a[29];
assign wp12[42] = b[12] & a[30];
assign wp12[43] = b[12] & a[31];
assign wp12[63:44]=0;

//P13
assign wp13[12:0] = 0;
assign wp13[13] = b[13] & a[0];
assign wp13[14] = b[13] & a[1];
assign wp13[15] = b[13] & a[2];
assign wp13[16] = b[13] & a[3];
assign wp13[17] = b[13] & a[4];
assign wp13[18] = b[13] & a[5];
assign wp13[19] = b[13] & a[6];
assign wp13[20] = b[13] & a[7];
assign wp13[21] = b[13] & a[8];
assign wp13[22] = b[13] & a[9];
assign wp13[23] = b[13] & a[10];
assign wp13[24] = b[13] & a[11];
assign wp13[25] = b[13] & a[12];
assign wp13[26] = b[13] & a[13];
assign wp13[27] = b[13] & a[14];
assign wp13[28] = b[13] & a[15];
assign wp13[29] = b[13] & a[16];
assign wp13[30] = b[13] & a[17];
assign wp13[31] = b[13] & a[18];
assign wp13[32] = b[13] & a[19];
assign wp13[33] = b[13] & a[20];
assign wp13[34] = b[13] & a[21];
assign wp13[35] = b[13] & a[22];
assign wp13[36] = b[13] & a[23];
assign wp13[37] = b[13] & a[24];
assign wp13[38] = b[13] & a[25];
assign wp13[39] = b[13] & a[26];
assign wp13[40] = b[13] & a[27];
assign wp13[41] = b[13] & a[28];
assign wp13[42] = b[13] & a[29];
assign wp13[43] = b[13] & a[30];
assign wp13[44] = b[13] & a[31];
assign wp13[63:45]=0;

//P14
assign wp14[13:0] = 0;
assign wp14[14] = b[14] & a[0];
assign wp14[15] = b[14] & a[1];
assign wp14[16] = b[14] & a[2];
assign wp14[17] = b[14] & a[3];
assign wp14[18] = b[14] & a[4];
assign wp14[19] = b[14] & a[5];
assign wp14[20] = b[14] & a[6];
assign wp14[21] = b[14] & a[7];
assign wp14[22] = b[14] & a[8];
assign wp14[23] = b[14] & a[9];
assign wp14[24] = b[14] & a[10];
assign wp14[25] = b[14] & a[11];
assign wp14[26] = b[14] & a[12];
assign wp14[27] = b[14] & a[13];
assign wp14[28] = b[14] & a[14];
assign wp14[29] = b[14] & a[15];
assign wp14[30] = b[14] & a[16];
assign wp14[31] = b[14] & a[17];
assign wp14[32] = b[14] & a[18];
assign wp14[33] = b[14] & a[19];
assign wp14[34] = b[14] & a[20];
assign wp14[35] = b[14] & a[21];
assign wp14[36] = b[14] & a[22];
assign wp14[37] = b[14] & a[23];
assign wp14[38] = b[14] & a[24];
assign wp14[39] = b[14] & a[25];
assign wp14[40] = b[14] & a[26];
assign wp14[41] = b[14] & a[27];
assign wp14[42] = b[14] & a[28];
assign wp14[43] = b[14] & a[29];
assign wp14[44] = b[14] & a[30];
assign wp14[45] = b[14] & a[31];
assign wp14[63:46]=0;

//P15
assign wp15[14:0] = 0;
assign wp15[15] = b[15] & a[0];
assign wp15[16] = b[15] & a[1];
assign wp15[17] = b[15] & a[2];
assign wp15[18] = b[15] & a[3];
assign wp15[19] = b[15] & a[4];
assign wp15[20] = b[15] & a[5];
assign wp15[21] = b[15] & a[6];
assign wp15[22] = b[15] & a[7];
assign wp15[23] = b[15] & a[8];
assign wp15[24] = b[15] & a[9];
assign wp15[25] = b[15] & a[10];
assign wp15[26] = b[15] & a[11];
assign wp15[27] = b[15] & a[12];
assign wp15[28] = b[15] & a[13];
assign wp15[29] = b[15] & a[14];
assign wp15[30] = b[15] & a[15];
assign wp15[31] = b[15] & a[16];
assign wp15[32] = b[15] & a[17];
assign wp15[33] = b[15] & a[18];
assign wp15[34] = b[15] & a[19];
assign wp15[35] = b[15] & a[20];
assign wp15[36] = b[15] & a[21];
assign wp15[37] = b[15] & a[22];
assign wp15[38] = b[15] & a[23];
assign wp15[39] = b[15] & a[24];
assign wp15[40] = b[15] & a[25];
assign wp15[41] = b[15] & a[26];
assign wp15[42] = b[15] & a[27];
assign wp15[43] = b[15] & a[28];
assign wp15[44] = b[15] & a[29];
assign wp15[45] = b[15] & a[30];
assign wp15[46] = b[15] & a[31];
assign wp15[63:47]=0;

//P16
assign wp16[15:0] = 0;
assign wp16[16] = b[16] & a[0];
assign wp16[17] = b[16] & a[1];
assign wp16[18] = b[16] & a[2];
assign wp16[19] = b[16] & a[3];
assign wp16[20] = b[16] & a[4];
assign wp16[21] = b[16] & a[5];
assign wp16[22] = b[16] & a[6];
assign wp16[23] = b[16] & a[7];
assign wp16[24] = b[16] & a[8];
assign wp16[25] = b[16] & a[9];
assign wp16[26] = b[16] & a[10];
assign wp16[27] = b[16] & a[11];
assign wp16[28] = b[16] & a[12];
assign wp16[29] = b[16] & a[13];
assign wp16[30] = b[16] & a[14];
assign wp16[31] = b[16] & a[15];
assign wp16[32] = b[16] & a[16];
assign wp16[33] = b[16] & a[17];
assign wp16[34] = b[16] & a[18];
assign wp16[35] = b[16] & a[19];
assign wp16[36] = b[16] & a[20];
assign wp16[37] = b[16] & a[21];
assign wp16[38] = b[16] & a[22];
assign wp16[39] = b[16] & a[23];
assign wp16[40] = b[16] & a[24];
assign wp16[41] = b[16] & a[25];
assign wp16[42] = b[16] & a[26];
assign wp16[43] = b[16] & a[27];
assign wp16[44] = b[16] & a[28];
assign wp16[45] = b[16] & a[29];
assign wp16[46] = b[16] & a[30];
assign wp16[47] = b[16] & a[31];
assign wp16[63:48]=0;

//P17
assign wp17[16:0] = 0;
assign wp17[17] = b[17] & a[0];
assign wp17[18] = b[17] & a[1];
assign wp17[19] = b[17] & a[2];
assign wp17[20] = b[17] & a[3];
assign wp17[21] = b[17] & a[4];
assign wp17[22] = b[17] & a[5];
assign wp17[23] = b[17] & a[6];
assign wp17[24] = b[17] & a[7];
assign wp17[25] = b[17] & a[8];
assign wp17[26] = b[17] & a[9];
assign wp17[27] = b[17] & a[10];
assign wp17[28] = b[17] & a[11];
assign wp17[29] = b[17] & a[12];
assign wp17[30] = b[17] & a[13];
assign wp17[31] = b[17] & a[14];
assign wp17[32] = b[17] & a[15];
assign wp17[33] = b[17] & a[16];
assign wp17[34] = b[17] & a[17];
assign wp17[35] = b[17] & a[18];
assign wp17[36] = b[17] & a[19];
assign wp17[37] = b[17] & a[20];
assign wp17[38] = b[17] & a[21];
assign wp17[39] = b[17] & a[22];
assign wp17[40] = b[17] & a[23];
assign wp17[41] = b[17] & a[24];
assign wp17[42] = b[17] & a[25];
assign wp17[43] = b[17] & a[26];
assign wp17[44] = b[17] & a[27];
assign wp17[45] = b[17] & a[28];
assign wp17[46] = b[17] & a[29];
assign wp17[47] = b[17] & a[30];
assign wp17[48] = b[17] & a[31];
assign wp17[63:49]=0;

//P18
assign wp18[17:0] = 0;
assign wp18[18] = b[18] & a[0];
assign wp18[19] = b[18] & a[1];
assign wp18[20] = b[18] & a[2];
assign wp18[21] = b[18] & a[3];
assign wp18[22] = b[18] & a[4];
assign wp18[23] = b[18] & a[5];
assign wp18[24] = b[18] & a[6];
assign wp18[25] = b[18] & a[7];
assign wp18[26] = b[18] & a[8];
assign wp18[27] = b[18] & a[9];
assign wp18[28] = b[18] & a[10];
assign wp18[29] = b[18] & a[11];
assign wp18[30] = b[18] & a[12];
assign wp18[31] = b[18] & a[13];
assign wp18[32] = b[18] & a[14];
assign wp18[33] = b[18] & a[15];
assign wp18[34] = b[18] & a[16];
assign wp18[35] = b[18] & a[17];
assign wp18[36] = b[18] & a[18];
assign wp18[37] = b[18] & a[19];
assign wp18[38] = b[18] & a[20];
assign wp18[39] = b[18] & a[21];
assign wp18[40] = b[18] & a[22];
assign wp18[41] = b[18] & a[23];
assign wp18[42] = b[18] & a[24];
assign wp18[43] = b[18] & a[25];
assign wp18[44] = b[18] & a[26];
assign wp18[45] = b[18] & a[27];
assign wp18[46] = b[18] & a[28];
assign wp18[47] = b[18] & a[29];
assign wp18[48] = b[18] & a[30];
assign wp18[49] = b[18] & a[31];
assign wp18[63:50]=0;

//P19
assign wp19[18:0] = 0;
assign wp19[19] = b[19] & a[0];
assign wp19[20] = b[19] & a[1];
assign wp19[21] = b[19] & a[2];
assign wp19[22] = b[19] & a[3];
assign wp19[23] = b[19] & a[4];
assign wp19[24] = b[19] & a[5];
assign wp19[25] = b[19] & a[6];
assign wp19[26] = b[19] & a[7];
assign wp19[27] = b[19] & a[8];
assign wp19[28] = b[19] & a[9];
assign wp19[29] = b[19] & a[10];
assign wp19[30] = b[19] & a[11];
assign wp19[31] = b[19] & a[12];
assign wp19[32] = b[19] & a[13];
assign wp19[33] = b[19] & a[14];
assign wp19[34] = b[19] & a[15];
assign wp19[35] = b[19] & a[16];
assign wp19[36] = b[19] & a[17];
assign wp19[37] = b[19] & a[18];
assign wp19[38] = b[19] & a[19];
assign wp19[39] = b[19] & a[20];
assign wp19[40] = b[19] & a[21];
assign wp19[41] = b[19] & a[22];
assign wp19[42] = b[19] & a[23];
assign wp19[43] = b[19] & a[24];
assign wp19[44] = b[19] & a[25];
assign wp19[45] = b[19] & a[26];
assign wp19[46] = b[19] & a[27];
assign wp19[47] = b[19] & a[28];
assign wp19[48] = b[19] & a[29];
assign wp19[49] = b[19] & a[30];
assign wp19[50] = b[19] & a[31];
assign wp19[63:51]=0;

//P20
assign wp20[19:0] = 0;
assign wp20[20] = b[20] & a[0];
assign wp20[21] = b[20] & a[1];
assign wp20[22] = b[20] & a[2];
assign wp20[23] = b[20] & a[3];
assign wp20[24] = b[20] & a[4];
assign wp20[25] = b[20] & a[5];
assign wp20[26] = b[20] & a[6];
assign wp20[27] = b[20] & a[7];
assign wp20[28] = b[20] & a[8];
assign wp20[29] = b[20] & a[9];
assign wp20[30] = b[20] & a[10];
assign wp20[31] = b[20] & a[11];
assign wp20[32] = b[20] & a[12];
assign wp20[33] = b[20] & a[13];
assign wp20[34] = b[20] & a[14];
assign wp20[35] = b[20] & a[15];
assign wp20[36] = b[20] & a[16];
assign wp20[37] = b[20] & a[17];
assign wp20[38] = b[20] & a[18];
assign wp20[39] = b[20] & a[19];
assign wp20[40] = b[20] & a[20];
assign wp20[41] = b[20] & a[21];
assign wp20[42] = b[20] & a[22];
assign wp20[43] = b[20] & a[23];
assign wp20[44] = b[20] & a[24];
assign wp20[45] = b[20] & a[25];
assign wp20[46] = b[20] & a[26];
assign wp20[47] = b[20] & a[27];
assign wp20[48] = b[20] & a[28];
assign wp20[49] = b[20] & a[29];
assign wp20[50] = b[20] & a[30];
assign wp20[51] = b[20] & a[31];
assign wp20[63:52]=0;

//P21
assign wp21[20:0] = 0;
assign wp21[21] = b[21] & a[0];
assign wp21[22] = b[21] & a[1];
assign wp21[23] = b[21] & a[2];
assign wp21[24] = b[21] & a[3];
assign wp21[25] = b[21] & a[4];
assign wp21[26] = b[21] & a[5];
assign wp21[27] = b[21] & a[6];
assign wp21[28] = b[21] & a[7];
assign wp21[29] = b[21] & a[8];
assign wp21[30] = b[21] & a[9];
assign wp21[31] = b[21] & a[10];
assign wp21[32] = b[21] & a[11];
assign wp21[33] = b[21] & a[12];
assign wp21[34] = b[21] & a[13];
assign wp21[35] = b[21] & a[14];
assign wp21[36] = b[21] & a[15];
assign wp21[37] = b[21] & a[16];
assign wp21[38] = b[21] & a[17];
assign wp21[39] = b[21] & a[18];
assign wp21[40] = b[21] & a[19];
assign wp21[41] = b[21] & a[20];
assign wp21[42] = b[21] & a[21];
assign wp21[43] = b[21] & a[22];
assign wp21[44] = b[21] & a[23];
assign wp21[45] = b[21] & a[24];
assign wp21[46] = b[21] & a[25];
assign wp21[47] = b[21] & a[26];
assign wp21[48] = b[21] & a[27];
assign wp21[49] = b[21] & a[28];
assign wp21[50] = b[21] & a[29];
assign wp21[51] = b[21] & a[30];
assign wp21[52] = b[21] & a[31];
assign wp21[63:53]=0;

//P22
assign wp22[21:0] = 0;
assign wp22[22] = b[22] & a[0];
assign wp22[23] = b[22] & a[1];
assign wp22[24] = b[22] & a[2];
assign wp22[25] = b[22] & a[3];
assign wp22[26] = b[22] & a[4];
assign wp22[27] = b[22] & a[5];
assign wp22[28] = b[22] & a[6];
assign wp22[29] = b[22] & a[7];
assign wp22[30] = b[22] & a[8];
assign wp22[31] = b[22] & a[9];
assign wp22[32] = b[22] & a[10];
assign wp22[33] = b[22] & a[11];
assign wp22[34] = b[22] & a[12];
assign wp22[35] = b[22] & a[13];
assign wp22[36] = b[22] & a[14];
assign wp22[37] = b[22] & a[15];
assign wp22[38] = b[22] & a[16];
assign wp22[39] = b[22] & a[17];
assign wp22[40] = b[22] & a[18];
assign wp22[41] = b[22] & a[19];
assign wp22[42] = b[22] & a[20];
assign wp22[43] = b[22] & a[21];
assign wp22[44] = b[22] & a[22];
assign wp22[45] = b[22] & a[23];
assign wp22[46] = b[22] & a[24];
assign wp22[47] = b[22] & a[25];
assign wp22[48] = b[22] & a[26];
assign wp22[49] = b[22] & a[27];
assign wp22[50] = b[22] & a[28];
assign wp22[51] = b[22] & a[29];
assign wp22[52] = b[22] & a[30];
assign wp22[53] = b[22] & a[31];
assign wp22[63:54]=0;

//P23
assign wp23[22:0] = 0;
assign wp23[23] = b[23] & a[0];
assign wp23[24] = b[23] & a[1];
assign wp23[25] = b[23] & a[2];
assign wp23[26] = b[23] & a[3];
assign wp23[27] = b[23] & a[4];
assign wp23[28] = b[23] & a[5];
assign wp23[29] = b[23] & a[6];
assign wp23[30] = b[23] & a[7];
assign wp23[31] = b[23] & a[8];
assign wp23[32] = b[23] & a[9];
assign wp23[33] = b[23] & a[10];
assign wp23[34] = b[23] & a[11];
assign wp23[35] = b[23] & a[12];
assign wp23[36] = b[23] & a[13];
assign wp23[37] = b[23] & a[14];
assign wp23[38] = b[23] & a[15];
assign wp23[39] = b[23] & a[16];
assign wp23[40] = b[23] & a[17];
assign wp23[41] = b[23] & a[18];
assign wp23[42] = b[23] & a[19];
assign wp23[43] = b[23] & a[20];
assign wp23[44] = b[23] & a[21];
assign wp23[45] = b[23] & a[22];
assign wp23[46] = b[23] & a[23];
assign wp23[47] = b[23] & a[24];
assign wp23[48] = b[23] & a[25];
assign wp23[49] = b[23] & a[26];
assign wp23[50] = b[23] & a[27];
assign wp23[51] = b[23] & a[28];
assign wp23[52] = b[23] & a[29];
assign wp23[53] = b[23] & a[30];
assign wp23[54] = b[23] & a[31];
assign wp23[63:55]=0;

//P24
assign wp24[23:0] = 0;
assign wp24[24] = b[24] & a[0];
assign wp24[25] = b[24] & a[1];
assign wp24[26] = b[24] & a[2];
assign wp24[27] = b[24] & a[3];
assign wp24[28] = b[24] & a[4];
assign wp24[29] = b[24] & a[5];
assign wp24[30] = b[24] & a[6];
assign wp24[31] = b[24] & a[7];
assign wp24[32] = b[24] & a[8];
assign wp24[33] = b[24] & a[9];
assign wp24[34] = b[24] & a[10];
assign wp24[35] = b[24] & a[11];
assign wp24[36] = b[24] & a[12];
assign wp24[37] = b[24] & a[13];
assign wp24[38] = b[24] & a[14];
assign wp24[39] = b[24] & a[15];
assign wp24[40] = b[24] & a[16];
assign wp24[41] = b[24] & a[17];
assign wp24[42] = b[24] & a[18];
assign wp24[43] = b[24] & a[19];
assign wp24[44] = b[24] & a[20];
assign wp24[45] = b[24] & a[21];
assign wp24[46] = b[24] & a[22];
assign wp24[47] = b[24] & a[23];
assign wp24[48] = b[24] & a[24];
assign wp24[49] = b[24] & a[25];
assign wp24[50] = b[24] & a[26];
assign wp24[51] = b[24] & a[27];
assign wp24[52] = b[24] & a[28];
assign wp24[53] = b[24] & a[29];
assign wp24[54] = b[24] & a[30];
assign wp24[55] = b[24] & a[31];
assign wp24[63:56]=0;

//P25
assign wp25[24:0] = 0;
assign wp25[25] = b[25] & a[0];
assign wp25[26] = b[25] & a[1];
assign wp25[27] = b[25] & a[2];
assign wp25[28] = b[25] & a[3];
assign wp25[29] = b[25] & a[4];
assign wp25[30] = b[25] & a[5];
assign wp25[31] = b[25] & a[6];
assign wp25[32] = b[25] & a[7];
assign wp25[33] = b[25] & a[8];
assign wp25[34] = b[25] & a[9];
assign wp25[35] = b[25] & a[10];
assign wp25[36] = b[25] & a[11];
assign wp25[37] = b[25] & a[12];
assign wp25[38] = b[25] & a[13];
assign wp25[39] = b[25] & a[14];
assign wp25[40] = b[25] & a[15];
assign wp25[41] = b[25] & a[16];
assign wp25[42] = b[25] & a[17];
assign wp25[43] = b[25] & a[18];
assign wp25[44] = b[25] & a[19];
assign wp25[45] = b[25] & a[20];
assign wp25[46] = b[25] & a[21];
assign wp25[47] = b[25] & a[22];
assign wp25[48] = b[25] & a[23];
assign wp25[49] = b[25] & a[24];
assign wp25[50] = b[25] & a[25];
assign wp25[51] = b[25] & a[26];
assign wp25[52] = b[25] & a[27];
assign wp25[53] = b[25] & a[28];
assign wp25[54] = b[25] & a[29];
assign wp25[55] = b[25] & a[30];
assign wp25[56] = b[25] & a[31];
assign wp25[63:57]=0;

//P26
assign wp26[25:0] = 0;
assign wp26[26] = b[26] & a[0];
assign wp26[27] = b[26] & a[1];
assign wp26[28] = b[26] & a[2];
assign wp26[29] = b[26] & a[3];
assign wp26[30] = b[26] & a[4];
assign wp26[31] = b[26] & a[5];
assign wp26[32] = b[26] & a[6];
assign wp26[33] = b[26] & a[7];
assign wp26[34] = b[26] & a[8];
assign wp26[35] = b[26] & a[9];
assign wp26[36] = b[26] & a[10];
assign wp26[37] = b[26] & a[11];
assign wp26[38] = b[26] & a[12];
assign wp26[39] = b[26] & a[13];
assign wp26[40] = b[26] & a[14];
assign wp26[41] = b[26] & a[15];
assign wp26[42] = b[26] & a[16];
assign wp26[43] = b[26] & a[17];
assign wp26[44] = b[26] & a[18];
assign wp26[45] = b[26] & a[19];
assign wp26[46] = b[26] & a[20];
assign wp26[47] = b[26] & a[21];
assign wp26[48] = b[26] & a[22];
assign wp26[49] = b[26] & a[23];
assign wp26[50] = b[26] & a[24];
assign wp26[51] = b[26] & a[25];
assign wp26[52] = b[26] & a[26];
assign wp26[53] = b[26] & a[27];
assign wp26[54] = b[26] & a[28];
assign wp26[55] = b[26] & a[29];
assign wp26[56] = b[26] & a[30];
assign wp26[57] = b[26] & a[31];
assign wp26[63:58]=0;

//P27
assign wp27[26:0] = 0;
assign wp27[27] = b[27] & a[0];
assign wp27[28] = b[27] & a[1];
assign wp27[29] = b[27] & a[2];
assign wp27[30] = b[27] & a[3];
assign wp27[31] = b[27] & a[4];
assign wp27[32] = b[27] & a[5];
assign wp27[33] = b[27] & a[6];
assign wp27[34] = b[27] & a[7];
assign wp27[35] = b[27] & a[8];
assign wp27[36] = b[27] & a[9];
assign wp27[37] = b[27] & a[10];
assign wp27[38] = b[27] & a[11];
assign wp27[39] = b[27] & a[12];
assign wp27[40] = b[27] & a[13];
assign wp27[41] = b[27] & a[14];
assign wp27[42] = b[27] & a[15];
assign wp27[43] = b[27] & a[16];
assign wp27[44] = b[27] & a[17];
assign wp27[45] = b[27] & a[18];
assign wp27[46] = b[27] & a[19];
assign wp27[47] = b[27] & a[20];
assign wp27[48] = b[27] & a[21];
assign wp27[49] = b[27] & a[22];
assign wp27[50] = b[27] & a[23];
assign wp27[51] = b[27] & a[24];
assign wp27[52] = b[27] & a[25];
assign wp27[53] = b[27] & a[26];
assign wp27[54] = b[27] & a[27];
assign wp27[55] = b[27] & a[28];
assign wp27[56] = b[27] & a[29];
assign wp27[57] = b[27] & a[30];
assign wp27[58] = b[27] & a[31];
assign wp27[63:59]=0;

//P28
assign wp28[27:0] = 0;
assign wp28[28] = b[28] & a[0];
assign wp28[29] = b[28] & a[1];
assign wp28[30] = b[28] & a[2];
assign wp28[31] = b[28] & a[3];
assign wp28[32] = b[28] & a[4];
assign wp28[33] = b[28] & a[5];
assign wp28[34] = b[28] & a[6];
assign wp28[35] = b[28] & a[7];
assign wp28[36] = b[28] & a[8];
assign wp28[37] = b[28] & a[9];
assign wp28[38] = b[28] & a[10];
assign wp28[39] = b[28] & a[11];
assign wp28[40] = b[28] & a[12];
assign wp28[41] = b[28] & a[13];
assign wp28[42] = b[28] & a[14];
assign wp28[43] = b[28] & a[15];
assign wp28[44] = b[28] & a[16];
assign wp28[45] = b[28] & a[17];
assign wp28[46] = b[28] & a[18];
assign wp28[47] = b[28] & a[19];
assign wp28[48] = b[28] & a[20];
assign wp28[49] = b[28] & a[21];
assign wp28[50] = b[28] & a[22];
assign wp28[51] = b[28] & a[23];
assign wp28[52] = b[28] & a[24];
assign wp28[53] = b[28] & a[25];
assign wp28[54] = b[28] & a[26];
assign wp28[55] = b[28] & a[27];
assign wp28[56] = b[28] & a[28];
assign wp28[57] = b[28] & a[29];
assign wp28[58] = b[28] & a[30];
assign wp28[59] = b[28] & a[31];
assign wp28[63:60]=0;

//P29
assign wp29[28:0] = 0;
assign wp29[29] = b[29] & a[0];
assign wp29[30] = b[29] & a[1];
assign wp29[31] = b[29] & a[2];
assign wp29[32] = b[29] & a[3];
assign wp29[33] = b[29] & a[4];
assign wp29[34] = b[29] & a[5];
assign wp29[35] = b[29] & a[6];
assign wp29[36] = b[29] & a[7];
assign wp29[37] = b[29] & a[8];
assign wp29[38] = b[29] & a[9];
assign wp29[39] = b[29] & a[10];
assign wp29[40] = b[29] & a[11];
assign wp29[41] = b[29] & a[12];
assign wp29[42] = b[29] & a[13];
assign wp29[43] = b[29] & a[14];
assign wp29[44] = b[29] & a[15];
assign wp29[45] = b[29] & a[16];
assign wp29[46] = b[29] & a[17];
assign wp29[47] = b[29] & a[18];
assign wp29[48] = b[29] & a[19];
assign wp29[49] = b[29] & a[20];
assign wp29[50] = b[29] & a[21];
assign wp29[51] = b[29] & a[22];
assign wp29[52] = b[29] & a[23];
assign wp29[53] = b[29] & a[24];
assign wp29[54] = b[29] & a[25];
assign wp29[55] = b[29] & a[26];
assign wp29[56] = b[29] & a[27];
assign wp29[57] = b[29] & a[28];
assign wp29[58] = b[29] & a[29];
assign wp29[59] = b[29] & a[30];
assign wp29[60] = b[29] & a[31];
assign wp29[63:61]=0;

//P30
assign wp30[29:0] = 0;
assign wp30[30] = b[30] & a[0];
assign wp30[31] = b[30] & a[1];
assign wp30[32] = b[30] & a[2];
assign wp30[33] = b[30] & a[3];
assign wp30[34] = b[30] & a[4];
assign wp30[35] = b[30] & a[5];
assign wp30[36] = b[30] & a[6];
assign wp30[37] = b[30] & a[7];
assign wp30[38] = b[30] & a[8];
assign wp30[39] = b[30] & a[9];
assign wp30[40] = b[30] & a[10];
assign wp30[41] = b[30] & a[11];
assign wp30[42] = b[30] & a[12];
assign wp30[43] = b[30] & a[13];
assign wp30[44] = b[30] & a[14];
assign wp30[45] = b[30] & a[15];
assign wp30[46] = b[30] & a[16];
assign wp30[47] = b[30] & a[17];
assign wp30[48] = b[30] & a[18];
assign wp30[49] = b[30] & a[19];
assign wp30[50] = b[30] & a[20];
assign wp30[51] = b[30] & a[21];
assign wp30[52] = b[30] & a[22];
assign wp30[53] = b[30] & a[23];
assign wp30[54] = b[30] & a[24];
assign wp30[55] = b[30] & a[25];
assign wp30[56] = b[30] & a[26];
assign wp30[57] = b[30] & a[27];
assign wp30[58] = b[30] & a[28];
assign wp30[59] = b[30] & a[29];
assign wp30[60] = b[30] & a[30];
assign wp30[61] = b[30] & a[31];
assign wp30[63:62]=0;


//P31
assign wp31[30:0] = 0;
assign wp31[31] = b[31] & a[0];
assign wp31[32] = b[31] & a[1];
assign wp31[33] = b[31] & a[2];
assign wp31[34] = b[31] & a[3];
assign wp31[35] = b[31] & a[4];
assign wp31[36] = b[31] & a[5];
assign wp31[37] = b[31] & a[6];
assign wp31[38] = b[31] & a[7];
assign wp31[39] = b[31] & a[8];
assign wp31[40] = b[31] & a[9];
assign wp31[41] = b[31] & a[10];
assign wp31[42] = b[31] & a[11];
assign wp31[43] = b[31] & a[12];
assign wp31[44] = b[31] & a[13];
assign wp31[45] = b[31] & a[14];
assign wp31[46] = b[31] & a[15];
assign wp31[47] = b[31] & a[16];
assign wp31[48] = b[31] & a[17];
assign wp31[49] = b[31] & a[18];
assign wp31[50] = b[31] & a[19];
assign wp31[51] = b[31] & a[20];
assign wp31[52] = b[31] & a[21];
assign wp31[53] = b[31] & a[22];
assign wp31[54] = b[31] & a[23];
assign wp31[55] = b[31] & a[24];
assign wp31[56] = b[31] & a[25];
assign wp31[57] = b[31] & a[26];
assign wp31[58] = b[31] & a[27];
assign wp31[59] = b[31] & a[28];
assign wp31[60] = b[31] & a[29];
assign wp31[61] = b[31] & a[30];
assign wp31[62] = b[31] & a[31];
assign wp31[63] = 0;

dff_64 df0(wp0,clk,wpd[0]);
dff_64 df1(wp1,clk,wpd[1]);
dff_64 df2(wp2,clk,wpd[2]);
dff_64 df3(wp3,clk,wpd[3]);
dff_64 df4(wp4,clk,wpd[4]);
dff_64 df5(wp5,clk,wpd[5]);
dff_64 df6(wp6,clk,wpd[6]);
dff_64 df7(wp7,clk,wpd[7]);
dff_64 df8(wp8,clk,wpd[8]);
dff_64 df9(wp9,clk,wpd[9]);
dff_64 df10(wp10,clk,wpd[10]);
dff_64 df11(wp11,clk,wpd[11]);
dff_64 df12(wp12,clk,wpd[12]);
dff_64 df13(wp13,clk,wpd[13]);
dff_64 df14(wp14,clk,wpd[14]);
dff_64 df15(wp15,clk,wpd[15]);
dff_64 df16(wp16,clk,wpd[16]);
dff_64 df17(wp17,clk,wpd[17]);
dff_64 df18(wp18,clk,wpd[18]);
dff_64 df19(wp19,clk,wpd[19]);
dff_64 df20(wp20,clk,wpd[20]);
dff_64 df21(wp21,clk,wpd[21]);
dff_64 df22(wp22,clk,wpd[22]);
dff_64 df23(wp23,clk,wpd[23]);
dff_64 df24(wp24,clk,wpd[24]);
dff_64 df25(wp25,clk,wpd[25]);
dff_64 df26(wp26,clk,wpd[26]);
dff_64 df27(wp27,clk,wpd[27]);
dff_64 df28(wp28,clk,wpd[28]);
dff_64 df29(wp29,clk,wpd[29]);
dff_64 df30(wp30,clk,wpd[30]);
dff_64 df31(wp31,clk,wpd[31]);

carry_save_adder csa0(clk,wpd[0],wpd[1],wpd[2],wpd[32],wpd[33]);
carry_save_adder csa1(clk,wpd[3],wpd[4],wpd[5],wpd[34],wpd[35]);
carry_save_adder csa2(clk,wpd[6],wpd[7],wpd[8],wpd[36],wpd[37]);
carry_save_adder csa3(clk,wpd[9],wpd[10],wpd[11],wpd[38],wpd[39]);
carry_save_adder csa4(clk,wpd[12],wpd[13],wpd[14],wpd[40],wpd[41]);
carry_save_adder csa5(clk,wpd[15],wpd[16],wpd[17],wpd[42],wpd[43]);
carry_save_adder csa6(clk,wpd[18],wpd[19],wpd[20],wpd[44],wpd[45]);
carry_save_adder csa7(clk,wpd[21],wpd[22],wpd[23],wpd[46],wpd[47]);
carry_save_adder csa8(clk,wpd[24],wpd[25],wpd[26],wpd[48],wpd[49]);
carry_save_adder csa9(clk,wpd[27],wpd[28],wpd[29],wpd[50],wpd[51]);
dff_64 df32(wpd[30],clk,wpd[52]);
dff_64 df33(wpd[31],clk,wpd[53]);

carry_save_adder csa10(clk,wpd[32],wpd[33],wpd[34],wpd[54],wpd[55]);
carry_save_adder csa11(clk,wpd[35],wpd[36],wpd[37],wpd[56],wpd[57]);
carry_save_adder csa12(clk,wpd[38],wpd[39],wpd[40],wpd[58],wpd[59]);
carry_save_adder csa13(clk,wpd[41],wpd[42],wpd[43],wpd[60],wpd[61]);
carry_save_adder csa14(clk,wpd[44],wpd[45],wpd[46],wpd[62],wpd[63]);
carry_save_adder csa15(clk,wpd[47],wpd[48],wpd[49],wpd[64],wpd[65]);
carry_save_adder csa16(clk,wpd[50],wpd[51],wpd[52],wpd[66],wpd[67]);
dff_64 df34(wpd[53],clk,wpd[68]);

carry_save_adder csa17(clk,wpd[54],wpd[55],wpd[56],wpd[69],wpd[70]);
carry_save_adder csa18(clk,wpd[57],wpd[58],wpd[59],wpd[71],wpd[72]);
carry_save_adder csa19(clk,wpd[60],wpd[61],wpd[62],wpd[73],wpd[74]);
carry_save_adder csa20(clk,wpd[63],wpd[64],wpd[65],wpd[75],wpd[76]);
carry_save_adder csa21(clk,wpd[66],wpd[67],wpd[68],wpd[77],wpd[78]);

carry_save_adder csa22(clk,wpd[69],wpd[70],wpd[71],wpd[79],wpd[80]);
carry_save_adder csa23(clk,wpd[72],wpd[73],wpd[74],wpd[81],wpd[82]);
carry_save_adder csa24(clk,wpd[75],wpd[76],wpd[77],wpd[83],wpd[84]);
dff_64 df35(wpd[78],clk,wpd[85]);

carry_save_adder csa25(clk,wpd[79],wpd[80],wpd[81],wpd[86],wpd[87]);
carry_save_adder csa26(clk,wpd[82],wpd[83],wpd[84],wpd[88],wpd[89]);
dff_64 df36(wpd[85],clk,wpd[90]);

carry_save_adder csa27(clk,wpd[86],wpd[87],wpd[88],wpd[91],wpd[92]);
dff_64 df37(wpd[89],clk,wpd[93]);
dff_64 df38(wpd[90],clk,wpd[94]);

carry_save_adder csa28(clk,wpd[91],wpd[92],wpd[93],wpd[95],wpd[96]);
dff_64 df39(wpd[94],clk,wpd[97]);

carry_save_adder csa29(clk,wpd[95],wpd[96],wpd[97],w1,w2);

prefixadder pf1(w1[31:0],w2[31:0],1'b0,w[12],w3,clk);

dff_32 df40(w1[63:32],clk,w[0]);
dff_32 df41(w2[63:32],clk,w[1]);

dff_32 df42(w[0],clk,w[2]);
dff_32 df43(w[1],clk,w[3]);

dff_32 df44(w[2],clk,w[4]);
dff_32 df45(w[3],clk,w[5]);

dff_32 df46(w[4],clk,w[6]);
dff_32 df47(w[5],clk,w[7]);

dff_32 df48(w[6],clk,w[8]);
dff_32 df49(w[7],clk,w[9]);

dff_32 df50(w[8],clk,w[10]);
dff_32 df51(w[9],clk,w[11]);

prefixadder pf2(w[10],w[11],w3,p[63:32],w4,clk);
//assign p[63:32]=0;
//assign p[31:0]=w[12];
//assign p=wp31;
dff_32 df57(w[12],clk,w[13]);
dff_32 df52(w[13],clk,w[14]);
dff_32 df53(w[14],clk,w[15]);
dff_32 df54(w[15],clk,w[16]);
dff_32 df55(w[16],clk,w[17]);
dff_32 df56(w[17],clk,p[31:0]);


endmodule
/*
module wallace_tree_multiplier_tb();
reg [31:0]x,y;
reg clk;
wire [63:0]s;

wallace_tree_multiplier w1(clk,x,y,s);

initial
begin

y=32'd2;
x=32'd0;


#2
y=32'd4;
x=32'd2;


#2
y=32'd6;
x=32'd4;


#2
y=32'd8;
x=32'd8;


#2
y=32'd3;
x=32'd16;


#2
y=32'd5;
x=32'd32;


#2
y=32'd7;
x=32'd64;


#2
y=32'd2;
x=32'd2;

end

initial
begin 
clk=0;
end
always
begin
#1 clk=~clk;
end
always 
begin
#200 $finish;
end 
initial
begin
$monitor($time,"\t%d , %d->%d, %d",x,y,s,s);
end
endmodule


*/









