module shifter(y,a,s,clk);
input [31:0] a;

input [4:0]s;
input clk;
output [31:0] y;
wire [31:0]w1,w2,w3,w4,w5;
wire [4:0]s1,s2,s3,s4,s5;


//stage 1
mux m1(w1[0],a[1],a[0],s[0],clk);
mux m2(w1[1],a[2],a[1],s[0],clk);
mux m3(w1[2],a[3],a[2],s[0],clk);
mux m4(w1[3],a[4],a[3],s[0],clk);
mux m5(w1[4],a[5],a[4],s[0],clk);
mux m6(w1[5],a[6],a[5],s[0],clk);
mux m7(w1[6],a[7],a[6],s[0],clk);
mux m8(w1[7],a[8],a[7],s[0],clk);
mux m9(w1[8],a[9],a[8],s[0],clk);
mux m10(w1[9],a[10],a[9],s[0],clk);
mux m11(w1[10],a[11],a[10],s[0],clk);
mux m12(w1[11],a[12],a[11],s[0],clk);
mux m13(w1[12],a[13],a[12],s[0],clk);
mux m14(w1[13],a[14],a[13],s[0],clk);
mux m15(w1[14],a[15],a[14],s[0],clk);
mux m16(w1[15],a[16],a[15],s[0],clk);
mux m17(w1[16],a[17],a[16],s[0],clk);
mux m18(w1[17],a[18],a[17],s[0],clk);
mux m19(w1[18],a[19],a[18],s[0],clk);
mux m20(w1[19],a[20],a[19],s[0],clk);
mux m21(w1[20],a[21],a[20],s[0],clk);
mux m22(w1[21],a[22],a[21],s[0],clk);
mux m23(w1[22],a[23],a[22],s[0],clk);
mux m24(w1[23],a[24],a[23],s[0],clk);
mux m25(w1[24],a[25],a[24],s[0],clk);
mux m26(w1[25],a[26],a[25],s[0],clk);
mux m27(w1[26],a[27],a[26],s[0],clk);
mux m28(w1[27],a[28],a[27],s[0],clk);
mux m29(w1[28],a[29],a[28],s[0],clk);
mux m30(w1[29],a[30],a[29],s[0],clk);
mux m31(w1[30],a[31],a[30],s[0],clk);
mux m32(w1[31],0,a[31],s[0],clk);

dff5 d1(s1,clk,s);



//stage 2
mux n1(w2[0],w1[2],w1[0],s1[1],clk);
mux n2(w2[1],w1[3],w1[1],s1[1],clk);
mux n3(w2[2],w1[4],w1[2],s1[1],clk);
mux n4(w2[3],w1[5],w1[3],s1[1],clk);
mux n5(w2[4],w1[6],w1[4],s1[1],clk);
mux n6(w2[5],w1[7],w1[5],s1[1],clk);
mux n7(w2[6],w1[8],w1[6],s1[1],clk);
mux n8(w2[7],w1[9],w1[7],s1[1],clk);
mux n9(w2[8],w1[10],w1[8],s1[1],clk);
mux n10(w2[9],w1[11],w1[9],s1[1],clk);
mux n11(w2[10],w1[12],w1[10],s1[1],clk);
mux n12(w2[11],w1[13],w1[11],s1[1],clk);
mux n13(w2[12],w1[14],w1[12],s1[1],clk);
mux n14(w2[13],w1[15],w1[13],s1[1],clk);
mux n15(w2[14],w1[16],w1[14],s1[1],clk);
mux n16(w2[15],w1[17],w1[15],s1[1],clk);
mux n17(w2[16],w1[18],w1[16],s1[1],clk);
mux n18(w2[17],w1[19],w1[17],s1[1],clk);
mux n19(w2[18],w1[20],w1[18],s1[1],clk);
mux n20(w2[19],w1[21],w1[19],s1[1],clk);
mux n21(w2[20],w1[22],w1[20],s1[1],clk);
mux n22(w2[21],w1[23],w1[21],s1[1],clk);
mux n23(w2[22],w1[24],w1[22],s1[1],clk);
mux n24(w2[23],w1[25],w1[23],s1[1],clk);
mux n25(w2[24],w1[26],w1[24],s1[1],clk);
mux n26(w2[25],w1[27],w1[25],s1[1],clk);
mux n27(w2[26],w1[28],w1[26],s1[1],clk);
mux n28(w2[27],w1[29],w1[27],s1[1],clk);
mux n29(w2[28],w1[30],w1[28],s1[1],clk);
mux n30(w2[29],w1[31],w1[29],s1[1],clk);
mux n31(w2[30],0,w1[30],s1[1],clk);
mux n32(w2[31],0,w1[31],s1[1],clk);

dff5 d2(s2,clk,s1);

//stage 3
mux x1(w3[0],w2[4],w2[0],s2[2],clk);
mux x2(w3[1],w2[5],w2[1],s2[2],clk);
mux x3(w3[2],w2[6],w2[2],s2[2],clk);
mux x4(w3[3],w2[7],w2[3],s2[2],clk);
mux x5(w3[4],w2[8],w2[4],s2[2],clk);
mux x6(w3[5],w2[9],w2[5],s2[2],clk);
mux x7(w3[6],w2[10],w2[6],s2[2],clk);
mux x8(w3[7],w2[11],w2[7],s2[2],clk);
mux x9(w3[8],w2[12],w2[8],s2[2],clk);
mux x10(w3[9],w2[13],w2[9],s2[2],clk);
mux x11(w3[10],w2[14],w2[10],s2[2],clk);
mux x12(w3[11],w2[15],w2[11],s2[2],clk);
mux x13(w3[12],w2[16],w2[12],s2[2],clk);
mux x14(w3[13],w2[17],w2[13],s2[2],clk);
mux x15(w3[14],w2[18],w2[14],s2[2],clk);
mux x16(w3[15],w2[19],w2[15],s2[2],clk);
mux x17(w3[16],w2[20],w2[16],s2[2],clk);
mux x18(w3[17],w2[21],w2[17],s2[2],clk);
mux x19(w3[18],w2[22],w2[18],s2[2],clk);
mux x20(w3[19],w2[23],w2[19],s2[2],clk);
mux x21(w3[20],w2[24],w2[20],s2[2],clk);
mux x22(w3[21],w2[25],w2[21],s2[2],clk);
mux x23(w3[22],w2[26],w2[22],s2[2],clk);
mux x24(w3[23],w2[27],w2[23],s2[2],clk);
mux x25(w3[24],w2[28],w2[24],s2[2],clk);
mux x26(w3[25],w2[29],w2[25],s2[2],clk);
mux x27(w3[26],w2[30],w2[26],s2[2],clk);
mux x28(w3[27],w2[31],w2[27],s2[2],clk);
mux x29(w3[28],0,w2[28],s2[2],clk);
mux x30(w3[29],0,w2[29],s2[2],clk);
mux x31(w3[30],0,w2[30],s2[2],clk);
mux x32(w3[31],0,w2[31],s2[2],clk);

dff5 d3(s3,clk,s2);

//stage 4
mux z1(w4[0],w3[8],w3[0],s3[3],clk);
mux z2(w4[1],w3[9],w3[1],s3[3],clk);
mux z3(w4[2],w3[10],w3[2],s3[3],clk);
mux z4(w4[3],w3[11],w3[3],s3[3],clk);
mux z5(w4[4],w3[12],w3[4],s3[3],clk);
mux z6(w4[5],w3[13],w3[5],s3[3],clk);
mux z7(w4[6],w3[14],w3[6],s3[3],clk);
mux z8(w4[7],w3[15],w3[7],s3[3],clk);
mux z9(w4[8],w3[16],w3[8],s3[3],clk);
mux z10(w4[9],w3[17],w3[9],s3[3],clk);
mux z11(w4[10],w3[18],w3[10],s3[3],clk);
mux z12(w4[11],w3[19],w3[11],s3[3],clk);
mux z13(w4[12],w3[20],w3[12],s3[3],clk);
mux z14(w4[13],w3[21],w3[13],s3[3],clk);
mux z15(w4[14],w3[22],w3[14],s3[3],clk);
mux z16(w4[15],w3[23],w3[15],s3[3],clk);
mux z17(w4[16],w3[24],w3[16],s3[3],clk);
mux z18(w4[17],w3[25],w3[17],s3[3],clk);
mux z19(w4[18],w3[26],w3[18],s3[3],clk);
mux z20(w4[19],w3[27],w3[19],s3[3],clk);
mux z21(w4[20],w3[28],w3[20],s3[3],clk);
mux z22(w4[21],w3[29],w3[21],s3[3],clk);
mux z23(w4[22],w3[30],w3[22],s3[3],clk);
mux z24(w4[23],w3[31],w3[23],s3[3],clk);
mux z25(w4[24],0,w3[24],s3[3],clk);
mux z26(w4[25],0,w3[25],s3[3],clk);
mux z27(w4[26],0,w3[26],s3[3],clk);
mux z28(w4[27],0,w3[27],s3[3],clk);
mux z29(w4[28],0,w3[28],s3[3],clk);
mux z30(w4[29],0,w3[29],s3[3],clk);
mux z31(w4[30],0,w3[30],s3[3],clk);
mux z32(w4[31],0,w3[31],s3[3],clk);

dff5 d4(s4,clk,s3);

//stage 5
mux p1(w5[0],w4[16],w4[0],s4[4],clk);
mux p2(w5[1],w4[17],w4[1],s4[4],clk);
mux p3(w5[2],w4[18],w4[2],s4[4],clk);
mux p4(w5[3],w4[19],w4[3],s4[4],clk);
mux p5(w5[4],w4[20],w4[4],s4[4],clk);
mux p6(w5[5],w4[21],w4[5],s4[4],clk);
mux p7(w5[6],w4[22],w4[6],s4[4],clk);
mux p8(w5[7],w4[23],w4[7],s4[4],clk);
mux p9(w5[8],w4[24],w4[8],s4[4],clk);
mux p10(w5[9],w4[25],w4[9],s4[4],clk);
mux p11(w5[10],w4[26],w4[10],s4[4],clk);
mux p12(w5[11],w4[27],w4[11],s4[4],clk);
mux p13(w5[12],w4[28],w4[12],s4[4],clk);
mux p14(w5[13],w4[29],w4[13],s4[4],clk);
mux p15(w5[14],w4[30],w4[14],s4[4],clk);
mux p16(w5[15],w4[31],w4[15],s4[4],clk);
mux p17(w5[16],0,w4[16],s4[4],clk);
mux p18(w5[17],0,w4[17],s4[4],clk);
mux p19(w5[18],0,w4[18],s4[4],clk);
mux p20(w5[19],0,w4[19],s4[4],clk);
mux p21(w5[20],0,w4[20],s4[4],clk);
mux p22(w5[21],0,w4[21],s4[4],clk);
mux p23(w5[22],0,w4[22],s4[4],clk);
mux p24(w5[23],0,w4[23],s4[4],clk);
mux p25(w5[24],0,w4[24],s4[4],clk);
mux p26(w5[25],0,w4[25],s4[4],clk);
mux p27(w5[26],0,w4[26],s4[4],clk);
mux p28(w5[27],0,w4[27],s4[4],clk);
mux p29(w5[28],0,w4[28],s4[4],clk);
mux p30(w5[29],0,w4[29],s4[4],clk);
mux p31(w5[30],0,w4[30],s4[4],clk);
mux p32(w5[31],0,w4[31],s4[4],clk);



assign y=w5;
endmodule
