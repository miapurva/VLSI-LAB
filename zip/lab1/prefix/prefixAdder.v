module prefixAdder(X,Y,cin,cout,SUM,clk);

input[31:0] X,Y;
input cin,clk;

output[31:0] SUM;

output cout;

wire[31:0] P,G,A;

//pre-calculating generate g_i, propogate p_i and bit-alive a_i bit
assign P = X^Y;
assign G = X&Y;
assign A = P|G;

//computing carries
wire[31:0] carry;
assign carry[0]=cin;

//wire[14:0] gOutL1;
wire[14:0] level01_FFIN_gOutL1;
//wire[14:0] aOutL1;
wire[14:0] level01_FFIN_aOutL1;

//stage 1
blackBox level1_01(G[0],A[0],carry[0],carry[1]);

whiteBox level1_02(G[2],A[2],G[1],A[1],level01_FFIN_gOutL1[0],level01_FFIN_aOutL1[0]);
whiteBox level1_03(G[4],A[4],G[3],A[3],level01_FFIN_gOutL1[1],level01_FFIN_aOutL1[1]);
whiteBox level1_04(G[6],A[6],G[5],A[5],level01_FFIN_gOutL1[2],level01_FFIN_aOutL1[2]);
whiteBox level1_05(G[8],A[8],G[7],A[7],level01_FFIN_gOutL1[3],level01_FFIN_aOutL1[3]);
whiteBox level1_06(G[10],A[10],G[9],A[9],level01_FFIN_gOutL1[4],level01_FFIN_aOutL1[4]);
whiteBox level1_07(G[12],A[12],G[11],A[11],level01_FFIN_gOutL1[5],level01_FFIN_aOutL1[5]);
whiteBox level1_08(G[14],A[14],G[13],A[13],level01_FFIN_gOutL1[6],level01_FFIN_aOutL1[6]);
whiteBox level1_09(G[16],A[16],G[15],A[15],level01_FFIN_gOutL1[7],level01_FFIN_aOutL1[7]);
whiteBox level1_10(G[18],A[18],G[17],A[17],level01_FFIN_gOutL1[8],level01_FFIN_aOutL1[8]);
whiteBox level1_11(G[20],A[20],G[19],A[19],level01_FFIN_gOutL1[9],level01_FFIN_aOutL1[9]);
whiteBox level1_12(G[22],A[22],G[21],A[21],level01_FFIN_gOutL1[10],level01_FFIN_aOutL1[10]);
whiteBox level1_13(G[24],A[24],G[23],A[23],level01_FFIN_gOutL1[11],level01_FFIN_aOutL1[11]);
whiteBox level1_14(G[26],A[26],G[25],A[25],level01_FFIN_gOutL1[12],level01_FFIN_aOutL1[12]);
whiteBox level1_15(G[28],A[28],G[27],A[27],level01_FFIN_gOutL1[13],level01_FFIN_aOutL1[13]);
whiteBox level1_16(G[30],A[30],G[29],A[29],level01_FFIN_gOutL1[14],level01_FFIN_aOutL1[14]);

//stage 1 D-FlipFlops

//propogate P through levels
wire[31:0] level01_PFF_OUT;
DFlipFlop32 layer01_P_FF(P,clk,level01_PFF_OUT);

//propogate carry through levels
wire[1:0] level_01_carryFF_OUT;
DFlipFlop2IN layer01_CARRY_FF(carry[1],carry[0],clk,level_01_carryFF_OUT[1],level_01_carryFF_OUT[0]);

//assign CARRYL1=level_01_carryFF_OUT;

//propogate G and A
wire[31:0] level01_FFOUT_G;
DFlipFlop32 layer01_G_FF(G[31:0],clk,level01_FFOUT_G);

wire[31:0] level01_FFOUT_A;
DFlipFlop32 layer01_A_FF(A[31:0],clk,level01_FFOUT_A);
//

//stage 1 D-FlipFlops

//propogate  gOut and aOut through leveles
wire[14:0] level01_FFOUT_gOutL1;
wire[14:0] level01_FFOUT_aOutL1;
DFlipFlop15 layer01_gOutL1_FF(level01_FFIN_gOutL1[14:0],clk,level01_FFOUT_gOutL1[14:0]);
DFlipFlop15 layer01_aOutL1_FF(level01_FFIN_aOutL1[14:0],clk,level01_FFOUT_aOutL1[14:0]);

wire[13:0] level02_FFIN_gOutL2;
wire[13:0] level02_FFIN_aOutL2;
//wire[14:0] aOutL1;
//

//stage 2
blackBox level2_01(level01_FFOUT_G[1],level01_FFOUT_A[1],level_01_carryFF_OUT[1],carry[2]);
blackBox level2_02(level01_FFOUT_gOutL1[0],level01_FFOUT_aOutL1[0],level_01_carryFF_OUT[1],carry[3]);

whiteBox level2_03(level01_FFOUT_G[5],level01_FFOUT_A[5],level01_FFOUT_gOutL1[1],level01_FFOUT_aOutL1[1],level02_FFIN_gOutL2[0],level02_FFIN_aOutL2[0]);
whiteBox level2_04(level01_FFOUT_gOutL1[2],level01_FFOUT_aOutL1[2],level01_FFOUT_gOutL1[1],level01_FFOUT_aOutL1[1],level02_FFIN_gOutL2[1],level02_FFIN_aOutL2[1]);

whiteBox level2_05(level01_FFOUT_G[9],level01_FFOUT_A[9],level01_FFOUT_gOutL1[3],level01_FFOUT_aOutL1[3],level02_FFIN_gOutL2[2],level02_FFIN_aOutL2[2]);
whiteBox level2_06(level01_FFOUT_gOutL1[4],level01_FFOUT_aOutL1[4],level01_FFOUT_gOutL1[3],level01_FFOUT_aOutL1[3],level02_FFIN_gOutL2[3],level02_FFIN_aOutL2[3]);

whiteBox level2_07(level01_FFOUT_G[13],level01_FFOUT_A[13],level01_FFOUT_gOutL1[5],level01_FFOUT_aOutL1[5],level02_FFIN_gOutL2[4],level02_FFIN_aOutL2[4]);
whiteBox level2_08(level01_FFOUT_gOutL1[6],level01_FFOUT_aOutL1[6],level01_FFOUT_gOutL1[5],level01_FFOUT_aOutL1[5],level02_FFIN_gOutL2[5],level02_FFIN_aOutL2[5]);

whiteBox level2_09(level01_FFOUT_G[17],level01_FFOUT_A[17],level01_FFOUT_gOutL1[7],level01_FFOUT_aOutL1[7],level02_FFIN_gOutL2[6],level02_FFIN_aOutL2[6]);
whiteBox level2_10(level01_FFOUT_gOutL1[8],level01_FFOUT_aOutL1[8],level01_FFOUT_gOutL1[7],level01_FFOUT_aOutL1[7],level02_FFIN_gOutL2[7],level02_FFIN_aOutL2[7]);

whiteBox level2_11(level01_FFOUT_G[21],level01_FFOUT_A[21],level01_FFOUT_gOutL1[9],level01_FFOUT_aOutL1[9],level02_FFIN_gOutL2[8],level02_FFIN_aOutL2[8]);
whiteBox level2_12(level01_FFOUT_gOutL1[10],level01_FFOUT_aOutL1[10],level01_FFOUT_gOutL1[9],level01_FFOUT_aOutL1[9],level02_FFIN_gOutL2[9],level02_FFIN_aOutL2[9]);

whiteBox level2_13(level01_FFOUT_G[25],level01_FFOUT_A[25],level01_FFOUT_gOutL1[11],level01_FFOUT_aOutL1[11],level02_FFIN_gOutL2[10],level02_FFIN_aOutL2[10]);
whiteBox level2_14(level01_FFOUT_gOutL1[12],level01_FFOUT_aOutL1[12],level01_FFOUT_gOutL1[11],level01_FFOUT_aOutL1[11],level02_FFIN_gOutL2[11],level02_FFIN_aOutL2[11]);

whiteBox level2_15(level01_FFOUT_G[29],level01_FFOUT_A[29],level01_FFOUT_gOutL1[13],level01_FFOUT_aOutL1[13],level02_FFIN_gOutL2[12],level02_FFIN_aOutL2[12]);
whiteBox level2_16(level01_FFOUT_gOutL1[14],level01_FFOUT_aOutL1[14],level01_FFOUT_gOutL1[13],level01_FFOUT_aOutL1[13],level02_FFIN_gOutL2[13],level02_FFIN_aOutL2[13]);

//stage 2 D-FlipFlops

//propogate P
wire[31:0] level02_PFF_OUT;
DFlipFlop32 layer02_P_FF(level01_PFF_OUT,clk,level02_PFF_OUT);

//stage 2:propogate COMPUTED carry 
wire[3:0] level_02_carryFF_OUT;
DFlipFlop4IN layer02_CARRY_FF(carry[3:2],level_01_carryFF_OUT[1:0],clk,level_02_carryFF_OUT[3:0]);

//assign CARRYL2=level_02_carryFF_OUT;

//propogate G and A
wire[31:0] level02_FFOUT_G;
DFlipFlop32 layer02_G_FF(level01_FFOUT_G,clk,level02_FFOUT_G);

wire[31:0] level02_FFOUT_A;
DFlipFlop32 layer02_A_FF(level01_FFOUT_A,clk,level02_FFOUT_A);
//

//stage 2 D-FlipFlops

//propogate gOut and aOut
wire[14:0] level02_FFOUT_gOutL1;
wire[14:0] level02_FFOUT_aOutL1;

DFlipFlop15 layer02_gOutL1_FF(level01_FFOUT_gOutL1[14:0],clk,level02_FFOUT_gOutL1[14:0]);
DFlipFlop15 layer02_aOutL1_FF(level01_FFOUT_aOutL1[14:0],clk,level02_FFOUT_aOutL1[14:0]);

wire[13:0] level02_FFOUT_gOutL2;
wire[13:0] level02_FFOUT_aOutL2;

DFlipFlop14 layer02_gOutL2_FF(level02_FFIN_gOutL2[13:0],clk,level02_FFOUT_gOutL2[13:0]);
DFlipFlop14 layer02_aOutL2_FF(level02_FFIN_aOutL2[13:0],clk,level02_FFOUT_aOutL2[13:0]);

wire[11:0] level03_FFIN_gOutL3;
wire[11:0] level03_FFIN_aOutL3;
//

//stage 3
blackBox level3_01(level02_FFOUT_G[3],level02_FFOUT_A[3],level_02_carryFF_OUT[3],carry[4]);
blackBox level3_02(level02_FFOUT_gOutL1[1],level02_FFOUT_aOutL1[1],level_02_carryFF_OUT[3],carry[5]);
blackBox level3_03(level02_FFOUT_gOutL2[0],level02_FFOUT_aOutL2[0],level_02_carryFF_OUT[3],carry[6]);
blackBox level3_04(level02_FFOUT_gOutL2[1],level02_FFOUT_aOutL2[1],level_02_carryFF_OUT[3],carry[7]);

whiteBox level3_05(level02_FFOUT_G[11],level02_FFOUT_A[11],level02_FFOUT_gOutL2[3],level02_FFOUT_aOutL2[3],level03_FFIN_gOutL3[0],level03_FFIN_aOutL3[0]);
whiteBox level3_06(level02_FFOUT_gOutL1[5],level02_FFOUT_aOutL1[5],level02_FFOUT_gOutL2[3],level02_FFOUT_aOutL2[3],level03_FFIN_gOutL3[1],level03_FFIN_aOutL3[1]);
whiteBox level3_07(level02_FFOUT_gOutL2[4],level02_FFOUT_aOutL2[4],level02_FFOUT_gOutL2[3],level02_FFOUT_aOutL2[3],level03_FFIN_gOutL3[2],level03_FFIN_aOutL3[2]);
whiteBox level3_08(level02_FFOUT_gOutL2[5],level02_FFOUT_aOutL2[5],level02_FFOUT_gOutL2[3],level02_FFOUT_aOutL2[3],level03_FFIN_gOutL3[3],level03_FFIN_aOutL3[3]);

whiteBox level3_09(level02_FFOUT_G[19],level02_FFOUT_A[19],level02_FFOUT_gOutL2[7],level02_FFOUT_aOutL2[7],level03_FFIN_gOutL3[4],level03_FFIN_aOutL3[4]);
whiteBox level3_10(level02_FFOUT_gOutL1[9],level02_FFOUT_aOutL1[9],level02_FFOUT_gOutL2[7],level02_FFOUT_aOutL2[7],level03_FFIN_gOutL3[5],level03_FFIN_aOutL3[5]);
whiteBox level3_11(level02_FFOUT_gOutL2[8],level02_FFOUT_aOutL2[8],level02_FFOUT_gOutL2[7],level02_FFOUT_aOutL2[7],level03_FFIN_gOutL3[6],level03_FFIN_aOutL3[6]);
whiteBox level3_12(level02_FFOUT_gOutL2[9],level02_FFOUT_aOutL2[9],level02_FFOUT_gOutL2[7],level02_FFOUT_aOutL2[7],level03_FFIN_gOutL3[7],level03_FFIN_aOutL3[7]);

whiteBox level3_13(level02_FFOUT_G[27],level02_FFOUT_A[27],level02_FFOUT_gOutL2[11],level02_FFOUT_aOutL2[11],level03_FFIN_gOutL3[8],level03_FFIN_aOutL3[8]);
whiteBox level3_14(level02_FFOUT_gOutL1[13],level02_FFOUT_aOutL1[13],level02_FFOUT_gOutL2[11],level02_FFOUT_aOutL2[11],level03_FFIN_gOutL3[9],level03_FFIN_aOutL3[9]);
whiteBox level3_15(level02_FFOUT_gOutL2[12],level02_FFOUT_aOutL2[12],level02_FFOUT_gOutL2[11],level02_FFOUT_aOutL2[11],level03_FFIN_gOutL3[10],level03_FFIN_aOutL3[10]);
whiteBox level3_16(level02_FFOUT_gOutL2[13],level02_FFOUT_aOutL2[13],level02_FFOUT_gOutL2[11],level02_FFOUT_aOutL2[11],level03_FFIN_gOutL3[11],level03_FFIN_aOutL3[11]);

//stage 3 D-FlipFlops

//propogate P
wire[31:0] level03_PFF_OUT;
DFlipFlop32 layer03_P_FF(level02_PFF_OUT,clk,level03_PFF_OUT);

//propogate computed CARRY
wire[7:0] level_03_carryFF_OUT;
DFlipFlop8IN layer03_CARRY_FF(carry[7:4],level_02_carryFF_OUT[3:0],clk,level_03_carryFF_OUT[7:0]);
//assign CARRYL3=level_03_carryFF_OUT;

//propogate G and A
wire[31:0] level03_FFOUT_G;
DFlipFlop32 layer03_G_FF(level02_FFOUT_G,clk,level03_FFOUT_G);

wire[31:0] level03_FFOUT_A;
DFlipFlop32 layer03_A_FF(level02_FFOUT_A,clk,level03_FFOUT_A);
//

//stage 2 D-FlipFlops
wire[14:0] level03_FFOUT_gOutL1;
wire[14:0] level03_FFOUT_aOutL1;

DFlipFlop15 layer03_gOutL1_FF(level02_FFOUT_gOutL1[14:0],clk,level03_FFOUT_gOutL1[14:0]);
DFlipFlop15 layer03_aOutL1_FF(level02_FFOUT_aOutL1[14:0],clk,level03_FFOUT_aOutL1[14:0]);

wire[13:0] level03_FFOUT_gOutL2;
wire[13:0] level03_FFOUT_aOutL2;

DFlipFlop14 layer03_gOutL2_FF(level02_FFOUT_gOutL2[13:0],clk,level03_FFOUT_gOutL2[13:0]);
DFlipFlop14 layer03_aOutL2_FF(level02_FFOUT_aOutL2[13:0],clk,level03_FFOUT_aOutL2[13:0]);

wire[11:0] level03_FFOUT_gOutL3;
wire[11:0] level03_FFOUT_aOutL3;

DFlipFlop12 layer03_gOutL3_FF(level03_FFIN_gOutL3[11:0],clk,level03_FFOUT_gOutL3[11:0]);
DFlipFlop12 layer03_aOutL3_FF(level03_FFIN_aOutL3[11:0],clk,level03_FFOUT_aOutL3[11:0]);


wire[7:0] level04_FFIN_gOutL4;
wire[7:0] level04_FFIN_aOutL4;
//

//stage 4
blackBox level4_01(level03_FFOUT_G[7],level03_FFOUT_A[7],level_03_carryFF_OUT[7],carry[8]);
blackBox level4_02(level03_FFOUT_gOutL1[3],level03_FFOUT_aOutL1[3],level_03_carryFF_OUT[7],carry[9]);
blackBox level4_03(level03_FFOUT_gOutL2[2],level03_FFOUT_aOutL2[2],level_03_carryFF_OUT[7],carry[10]);
blackBox level4_04(level03_FFOUT_gOutL2[3],level03_FFOUT_aOutL2[3],level_03_carryFF_OUT[7],carry[11]);
blackBox level4_05(level03_FFOUT_gOutL3[0],level03_FFOUT_aOutL3[0],level_03_carryFF_OUT[7],carry[12]);
blackBox level4_06(level03_FFOUT_gOutL3[1],level03_FFOUT_aOutL3[1],level_03_carryFF_OUT[7],carry[13]);
blackBox level4_07(level03_FFOUT_gOutL3[2],level03_FFOUT_aOutL3[2],level_03_carryFF_OUT[7],carry[14]);
blackBox level4_08(level03_FFOUT_gOutL3[3],level03_FFOUT_aOutL3[3],level_03_carryFF_OUT[7],carry[15]);

whiteBox level4_09(level03_FFOUT_G[23],level03_FFOUT_A[23],level03_FFOUT_gOutL3[7],level03_FFOUT_aOutL3[7],level04_FFIN_gOutL4[0],level04_FFIN_aOutL4[0]);
whiteBox level4_10(level03_FFOUT_gOutL1[11],level03_FFOUT_aOutL1[11],level03_FFOUT_gOutL3[7],level03_FFOUT_aOutL3[7],level04_FFIN_gOutL4[1],level04_FFIN_aOutL4[1]);
whiteBox level4_11(level03_FFOUT_gOutL2[10],level03_FFOUT_aOutL2[10],level03_FFOUT_gOutL3[7],level03_FFOUT_aOutL3[7],level04_FFIN_gOutL4[2],level04_FFIN_aOutL4[2]);
whiteBox level4_12(level03_FFOUT_gOutL2[11],level03_FFOUT_aOutL2[11],level03_FFOUT_gOutL3[7],level03_FFOUT_aOutL3[7],level04_FFIN_gOutL4[3],level04_FFIN_aOutL4[3]);
whiteBox level4_13(level03_FFOUT_gOutL3[8],level03_FFOUT_aOutL3[8],level03_FFOUT_gOutL3[7],level03_FFOUT_aOutL3[7],level04_FFIN_gOutL4[4],level04_FFIN_aOutL4[4]);
whiteBox level4_14(level03_FFOUT_gOutL3[9],level03_FFOUT_aOutL3[9],level03_FFOUT_gOutL3[7],level03_FFOUT_aOutL3[7],level04_FFIN_gOutL4[5],level04_FFIN_aOutL4[5]);
whiteBox level4_15(level03_FFOUT_gOutL3[10],level03_FFOUT_aOutL3[10],level03_FFOUT_gOutL3[7],level03_FFOUT_aOutL3[7],level04_FFIN_gOutL4[6],level04_FFIN_aOutL4[6]);
whiteBox level4_16(level03_FFOUT_gOutL3[11],level03_FFOUT_aOutL3[11],level03_FFOUT_gOutL3[7],level03_FFOUT_aOutL3[7],level04_FFIN_gOutL4[7],level04_FFIN_aOutL4[7]);


//stage 4 D-FlipFlops
wire[31:0] level04_PFF_OUT;
DFlipFlop32 layer04_P_FF(level03_PFF_OUT,clk,level04_PFF_OUT);

wire[15:0] level_04_carryFF_OUT;
DFlipFlop16IN layer04_CARRY_FF(carry[15:8],level_03_carryFF_OUT[7:0],clk,level_04_carryFF_OUT[15:0]);
//assign CARRYL4=level_04_carryFF_OUT;

//propogate G and A
wire[31:0] level04_FFOUT_G;
DFlipFlop32 layer04_G_FF(level03_FFOUT_G,clk,level04_FFOUT_G);

wire[31:0] level04_FFOUT_A;
DFlipFlop32 layer04_A_FF(level03_FFOUT_A,clk,level04_FFOUT_A);
//

//stage 2 D-FlipFlops
wire[14:0] level04_FFOUT_gOutL1;
wire[14:0] level04_FFOUT_aOutL1;

DFlipFlop15 layer04_gOutL1_FF(level03_FFOUT_gOutL1[14:0],clk,level04_FFOUT_gOutL1[14:0]);
DFlipFlop15 layer04_aOutL1_FF(level03_FFOUT_aOutL1[14:0],clk,level04_FFOUT_aOutL1[14:0]);

wire[13:0] level04_FFOUT_gOutL2;
wire[13:0] level04_FFOUT_aOutL2;

DFlipFlop14 layer04_gOutL2_FF(level03_FFOUT_gOutL2[13:0],clk,level04_FFOUT_gOutL2[13:0]);
DFlipFlop14 layer04_aOutL2_FF(level03_FFOUT_aOutL2[13:0],clk,level04_FFOUT_aOutL2[13:0]);

wire[11:0] level04_FFOUT_gOutL3;
wire[11:0] level04_FFOUT_aOutL3;

DFlipFlop12 layer04_gOutL3_FF(level03_FFOUT_gOutL3[11:0],clk,level04_FFOUT_gOutL3[11:0]);
DFlipFlop12 layer04_aOutL3_FF(level03_FFOUT_aOutL3[11:0],clk,level04_FFOUT_aOutL3[11:0]);


wire[7:0] level04_FFOUT_gOutL4;
wire[7:0] level04_FFOUT_aOutL4;
DFlipFlop8 layer04_gOutL4_FF(level04_FFIN_gOutL4[7:0],clk,level04_FFOUT_gOutL4[7:0]);
DFlipFlop8 layer04_aOutL4_FF(level04_FFIN_aOutL4[7:0],clk,level04_FFOUT_aOutL4[7:0]);

//

//stage 5
blackBox level5_01(level04_FFOUT_G[15],level04_FFOUT_A[15],level_04_carryFF_OUT[15],carry[16]);
blackBox level5_02(level04_FFOUT_gOutL1[7],level04_FFOUT_aOutL1[7],level_04_carryFF_OUT[15],carry[17]);
blackBox level5_03(level04_FFOUT_gOutL2[6],level04_FFOUT_aOutL2[6],level_04_carryFF_OUT[15],carry[18]);
blackBox level5_04(level04_FFOUT_gOutL2[7],level04_FFOUT_aOutL2[7],level_04_carryFF_OUT[15],carry[19]);
blackBox level5_05(level04_FFOUT_gOutL3[4],level04_FFOUT_aOutL3[4],level_04_carryFF_OUT[15],carry[20]);
blackBox level5_06(level04_FFOUT_gOutL3[5],level04_FFOUT_aOutL3[5],level_04_carryFF_OUT[15],carry[21]);
blackBox level5_07(level04_FFOUT_gOutL3[6],level04_FFOUT_aOutL3[6],level_04_carryFF_OUT[15],carry[22]);
blackBox level5_08(level04_FFOUT_gOutL3[7],level04_FFOUT_aOutL3[7],level_04_carryFF_OUT[15],carry[23]);
blackBox level5_09(level04_FFOUT_gOutL4[0],level04_FFOUT_aOutL4[0],level_04_carryFF_OUT[15],carry[24]);
blackBox level5_10(level04_FFOUT_gOutL4[1],level04_FFOUT_aOutL4[1],level_04_carryFF_OUT[15],carry[25]);
blackBox level5_11(level04_FFOUT_gOutL4[2],level04_FFOUT_aOutL4[2],level_04_carryFF_OUT[15],carry[26]);
blackBox level5_12(level04_FFOUT_gOutL4[3],level04_FFOUT_aOutL4[3],level_04_carryFF_OUT[15],carry[27]);
blackBox level5_13(level04_FFOUT_gOutL4[4],level04_FFOUT_aOutL4[4],level_04_carryFF_OUT[15],carry[28]);
blackBox level5_14(level04_FFOUT_gOutL4[5],level04_FFOUT_aOutL4[5],level_04_carryFF_OUT[15],carry[29]);
blackBox level5_15(level04_FFOUT_gOutL4[6],level04_FFOUT_aOutL4[6],level_04_carryFF_OUT[15],carry[30]);
blackBox level5_16(level04_FFOUT_gOutL4[7],level04_FFOUT_aOutL4[7],level_04_carryFF_OUT[15],carry[31]);

//stage 5 carry
wire[31:0] level_05_carry_OUT;
assign level_05_carry_OUT[31:16]= carry[31:16];
assign level_05_carry_OUT[15:0] = level_04_carryFF_OUT[15:0];
//
//assign CARRYL5=level_05_carry_OUT;

//last level for cout
blackBox carry_out(level04_FFOUT_G[31],level04_FFOUT_A[31],carry[31],cout);

assign SUM = level04_PFF_OUT^level_05_carry_OUT;

endmodule