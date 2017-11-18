module pe_256(D, result,l4);
input[255:0]D;
wire[3:0]w[84:0];// stage outputs
wire [63:0]o;//or output 1st stage
wire [16:0]o1;
wire [3:0]o2;
wire [63:0]l1;
wire [15:0]l2;
wire [3:0]l3;
output l4;
wire [3:0]cout[127:0];
wire [3:0]fin[63:0];
wire [255:0]outfi;
real result1;
integer n,p;
output [255:0]result;


//stage1
priority4bit a(D[3:0],w[0],l1[0]);
priority4bit a1(D[7:4],w[1],l1[1]);
priority4bit  a2(D[11:8] ,w[2],l1[2]);
priority4bit  a3(D[15:12],w[3],l1[3]);
priority4bit  a4(D[19:16],w[4],l1[4]);
priority4bit  a5(D[23:20],w[5],l1[5]);
priority4bit  a6(D[27:24],w[6],l1[6]);
priority4bit  a7(D[31:28],w[7],l1[7]);
priority4bit  a8(D[35:32],w[8],l1[8]);
priority4bit  a9(D[39:36],w[9],l1[9]);
priority4bit  a10(D[43:40],w[10],l1[10]);
priority4bit  a11(D[47:44],w[11],l1[11]);
priority4bit  a12(D[51:48],w[12],l1[12]);
priority4bit  a13(D[55:52],w[13],l1[13]);
priority4bit  a14(D[59:56],w[14],l1[14]);
priority4bit  a15(D[63:60],w[15],l1[15]);
priority4bit  a16(D[67:64],w[16],l1[16]);
priority4bit  a17(D[71:68],w[17],l1[17]);
priority4bit  a18(D[75:72],w[18],l1[18]);
priority4bit  a19(D[79:76],w[19],l1[19]);
priority4bit  a20(D[83:80],w[20],l1[20]);
priority4bit  a21(D[87:84],w[21],l1[21]);
priority4bit  a22(D[91:88],w[22],l1[22]);
priority4bit  a23(D[95:92],w[23],l1[23]);
priority4bit  a24(D[99:96],w[24],l1[24]);
priority4bit  a25(D[103:100],w[25],l1[25]);
priority4bit  a26(D[107:104],w[26],l1[26]);
priority4bit  a27(D[111:108],w[27],l1[27]);
priority4bit  a28(D[115:112],w[28],l1[28]);
priority4bit  a29(D[119:116],w[29],l1[29]);
priority4bit  a30(D[123:120],w[30],l1[30]);
priority4bit  a31(D[127:124],w[31],l1[31]);
priority4bit  a32(D[131:128],w[32],l1[32]);
priority4bit  a33(D[135:132],w[33],l1[33]);
priority4bit  a34(D[139:136],w[34],l1[34]);
priority4bit  a35(D[143:140],w[35],l1[35]);
priority4bit  a36(D[147:144],w[36],l1[36]);
priority4bit  a37(D[151:148],w[37],l1[37]);
priority4bit  a38(D[155:152],w[38],l1[38]);
priority4bit  a39(D[159:156],w[39],l1[39]);
priority4bit  a40(D[163:160],w[40],l1[40]);
priority4bit  a41(D[167:164],w[41],l1[41]);
priority4bit  a42(D[171:168],w[42],l1[42]);
priority4bit  a43(D[175:172],w[43],l1[43]);
priority4bit  a44(D[179:176],w[44],l1[44]);
priority4bit  a45(D[183:180],w[45],l1[45]);
priority4bit  a46(D[187:184],w[46],l1[46]);
priority4bit  a47(D[191:188],w[47],l1[47]);
priority4bit  a48(D[195:192],w[48],l1[48]);
priority4bit  a49(D[199:196],w[49],l1[49]);
priority4bit  a50(D[203:200],w[50],l1[50]);
priority4bit  a51(D[207:204],w[51],l1[51]);
priority4bit  a52(D[211:208],w[52],l1[52]);
priority4bit  a53(D[215:212],w[53],l1[53]);
priority4bit  a54(D[219:216],w[54],l1[54]);
priority4bit  a55(D[223:220],w[55],l1[55]);
priority4bit  a56(D[227:224],w[56],l1[56]);
priority4bit  a57(D[231:228],w[57],l1[57]);
priority4bit  a58(D[235:232],w[58],l1[58]);
priority4bit  a59(D[239:236],w[59],l1[59]);
priority4bit  a60(D[243:240],w[60],l1[60]);
priority4bit  a61(D[247:244],w[61],l1[61]);
priority4bit  a62(D[251:248],w[62],l1[62]);
priority4bit  a63(D[255:252],w[63],l1[63]);

//stage 1 or
assign o[   0   ]=w[    0   ][0]|w[ 0   ][1]|w[ 0   ][2]|w[ 0   ][3];
assign o[	1	]=w[	1	][0]|w[	1	][1]|w[	1	][2]|w[	1	][3];
assign o[	2	]=w[	2	][0]|w[	2	][1]|w[	2	][2]|w[	2	][3];
assign o[	3	]=w[	3	][0]|w[	3	][1]|w[	3	][2]|w[	3	][3];
assign o[	4	]=w[	4	][0]|w[	4	][1]|w[	4	][2]|w[	4	][3];
assign o[	5	]=w[	5	][0]|w[	5	][1]|w[	5	][2]|w[	5	][3];
assign o[	6	]=w[	6	][0]|w[	6	][1]|w[	6	][2]|w[	6	][3];
assign o[	7	]=w[	7	][0]|w[	7	][1]|w[	7	][2]|w[	7	][3];
assign o[	8	]=w[	8	][0]|w[	8	][1]|w[	8	][2]|w[	8	][3];
assign o[	9	]=w[	9	][0]|w[	9	][1]|w[	9	][2]|w[	9	][3];
assign o[	10	]=w[	10	][0]|w[	10	][1]|w[	10	][2]|w[	10	][3];
assign o[	11	]=w[	11	][0]|w[	11	][1]|w[	11	][2]|w[	11	][3];
assign o[	12	]=w[	12	][0]|w[	12	][1]|w[	12	][2]|w[	12	][3];
assign o[	13	]=w[	13	][0]|w[	13	][1]|w[	13	][2]|w[	13	][3];
assign o[	14	]=w[	14	][0]|w[	14	][1]|w[	14	][2]|w[	14	][3];
assign o[	15	]=w[	15	][0]|w[	15	][1]|w[	15	][2]|w[	15	][3];
assign o[	16	]=w[	16	][0]|w[	16	][1]|w[	16	][2]|w[	16	][3];
assign o[	17	]=w[	17	][0]|w[	17	][1]|w[	17	][2]|w[	17	][3];
assign o[	18	]=w[	18	][0]|w[	18	][1]|w[	18	][2]|w[	18	][3];
assign o[	19	]=w[	19	][0]|w[	19	][1]|w[	19	][2]|w[	19	][3];
assign o[	20	]=w[	20	][0]|w[	20	][1]|w[	20	][2]|w[	20	][3];
assign o[	21	]=w[	21	][0]|w[	21	][1]|w[	21	][2]|w[	21	][3];
assign o[	22	]=w[	22	][0]|w[	22	][1]|w[	22	][2]|w[	22	][3];
assign o[	23	]=w[	23	][0]|w[	23	][1]|w[	23	][2]|w[	23	][3];
assign o[	24	]=w[	24	][0]|w[	24	][1]|w[	24	][2]|w[	24	][3];
assign o[	25	]=w[	25	][0]|w[	25	][1]|w[	25	][2]|w[	25	][3];
assign o[	26	]=w[	26	][0]|w[	26	][1]|w[	26	][2]|w[	26	][3];
assign o[	27	]=w[	27	][0]|w[	27	][1]|w[	27	][2]|w[	27	][3];
assign o[	28	]=w[	28	][0]|w[	28	][1]|w[	28	][2]|w[	28	][3];
assign o[	29	]=w[	29	][0]|w[	29	][1]|w[	29	][2]|w[	29	][3];
assign o[	30	]=w[	30	][0]|w[	30	][1]|w[	30	][2]|w[	30	][3];
assign o[	31	]=w[	31	][0]|w[	31	][1]|w[	31	][2]|w[	31	][3];
assign o[	32	]=w[	32	][0]|w[	32	][1]|w[	32	][2]|w[	32	][3];
assign o[	33	]=w[	33	][0]|w[	33	][1]|w[	33	][2]|w[	33	][3];
assign o[	34	]=w[	34	][0]|w[	34	][1]|w[	34	][2]|w[	34	][3];
assign o[	35	]=w[	35	][0]|w[	35	][1]|w[	35	][2]|w[	35	][3];
assign o[	36	]=w[	36	][0]|w[	36	][1]|w[	36	][2]|w[	36	][3];
assign o[	37	]=w[	37	][0]|w[	37	][1]|w[	37	][2]|w[	37	][3];
assign o[	38	]=w[	38	][0]|w[	38	][1]|w[	38	][2]|w[	38	][3];
assign o[	39	]=w[	39	][0]|w[	39	][1]|w[	39	][2]|w[	39	][3];
assign o[	40	]=w[	40	][0]|w[	40	][1]|w[	40	][2]|w[	40	][3];
assign o[	41	]=w[	41	][0]|w[	41	][1]|w[	41	][2]|w[	41	][3];
assign o[	42	]=w[	42	][0]|w[	42	][1]|w[	42	][2]|w[	42	][3];
assign o[	43	]=w[	43	][0]|w[	43	][1]|w[	43	][2]|w[	43	][3];
assign o[	44	]=w[	44	][0]|w[	44	][1]|w[	44	][2]|w[	44	][3];
assign o[	45	]=w[	45	][0]|w[	45	][1]|w[	45	][2]|w[	45	][3];
assign o[	46	]=w[	46	][0]|w[	46	][1]|w[	46	][2]|w[	46	][3];
assign o[	47	]=w[	47	][0]|w[	47	][1]|w[	47	][2]|w[	47	][3];
assign o[	48	]=w[	48	][0]|w[	48	][1]|w[	48	][2]|w[	48	][3];
assign o[	49	]=w[	49	][0]|w[	49	][1]|w[	49	][2]|w[	49	][3];
assign o[	50	]=w[	50	][0]|w[	50	][1]|w[	50	][2]|w[	50	][3];
assign o[	51	]=w[	51	][0]|w[	51	][1]|w[	51	][2]|w[	51	][3];
assign o[	52	]=w[	52	][0]|w[	52	][1]|w[	52	][2]|w[	52	][3];
assign o[	53	]=w[	53	][0]|w[	53	][1]|w[	53	][2]|w[	53	][3];
assign o[	54	]=w[	54	][0]|w[	54	][1]|w[	54	][2]|w[	54	][3];
assign o[	55	]=w[	55	][0]|w[	55	][1]|w[	55	][2]|w[	55	][3];
assign o[	56	]=w[	56	][0]|w[	56	][1]|w[	56	][2]|w[	56	][3];
assign o[	57	]=w[	57	][0]|w[	57	][1]|w[	57	][2]|w[	57	][3];
assign o[	58	]=w[	58	][0]|w[	58	][1]|w[	58	][2]|w[	58	][3];
assign o[	59	]=w[	59	][0]|w[	59	][1]|w[	59	][2]|w[	59	][3];
assign o[	60	]=w[	60	][0]|w[	60	][1]|w[	60	][2]|w[	60	][3];
assign o[	61	]=w[	61	][0]|w[	61	][1]|w[	61	][2]|w[	61	][3];
assign o[   62	]=w[	62	][0]|w[	62	][1]|w[	62	][2]|w[	62	][3];
assign o[	63	]=w[	63	][0]|w[	63	][1]|w[	63	][2]|w[	63	][3];

//stage 2
priority4bit    b(o[3:0],w[64],l2[0]);
priority4bit 	b1(o[7:4],w[65],l2[1]);
priority4bit 	b2(o[11:8],w[66],l2[2]);
priority4bit 	b3(o[15:12],w[67],l2[3]);
priority4bit 	b4(o[19:16],w[68],l2[4]);
priority4bit 	b5(o[23:20],w[69],l2[5]);
priority4bit 	b6(o[27:24],w[70],l2[6]);
priority4bit 	b7(o[31:28],w[71],l2[7]);
priority4bit 	b8(o[35:32],w[72],l2[8]);
priority4bit 	b9(o[39:36],w[73],l2[9]);
priority4bit 	b10(o[43:40],w[74],l2[10]);
priority4bit 	b11(o[47:44],w[75],l2[11]);
priority4bit 	b12(o[51:48],w[76],l2[12]);
priority4bit 	b13(o[55:52],w[77],l2[13]);
priority4bit 	b14(o[59:56],w[78],l2[14]);
priority4bit 	b15(o[63:60],w[79],l2[15]);

//ce
ce   e  (w[0    ],w[64  ][0 ],cout[0    ]);
ce   e1	(w[1	],w[64	][1	],cout[1	]);
ce   e2	(w[2	],w[64	][2	],cout[2	]);
ce   e3	(w[3	],w[64	][3	],cout[3	]);
ce   e4	(w[4	],w[65	][0	],cout[4	]);
ce   e5	(w[5	],w[65	][1	],cout[5	]);
ce   e6	(w[6	],w[65	][2	],cout[6	]);
ce   e7	(w[7	],w[65	][3	],cout[7	]);
ce   e8	(w[8	],w[66	][0	],cout[8	]);
ce   e9	(w[9	],w[66	][1	],cout[9	]);
ce   e10	(w[10	],w[66	][2	],cout[10	]);
ce   e11	(w[11	],w[66	][3	],cout[11	]);
ce   e12	(w[12	],w[67	][0	],cout[12	]);
ce   e13	(w[13	],w[67	][1	],cout[13	]);
ce   e14	(w[14	],w[67	][2	],cout[14	]);
ce   e15	(w[15	],w[67	][3	],cout[15	]);
ce   e16	(w[16	],w[68	][0	],cout[16	]);
ce   e17	(w[17	],w[68	][1	],cout[17	]);
ce   e18	(w[18	],w[68	][2	],cout[18	]);
ce   e19	(w[19	],w[68	][3	],cout[19	]);
ce   e20	(w[20	],w[69	][0	],cout[20	]);
ce   e21	(w[21	],w[69	][1	],cout[21	]);
ce   e22	(w[22	],w[69	][2	],cout[22	]);
ce   e23	(w[23	],w[69	][3	],cout[23	]);
ce   e24	(w[24	],w[70	][0	],cout[24	]);
ce   e25	(w[25	],w[70	][1	],cout[25	]);
ce   e26	(w[26	],w[70	][2	],cout[26	]);
ce   e27	(w[27	],w[70	][3	],cout[27	]);
ce   e28	(w[28	],w[71	][0	],cout[28	]);
ce   e29	(w[29	],w[71	][1	],cout[29	]);
ce   e30	(w[30	],w[71	][2	],cout[30	]);
ce   e31	(w[31	],w[71	][3	],cout[31	]);
ce   e32	(w[32	],w[72	][0	],cout[32	]);
ce   e33	(w[33	],w[72	][1	],cout[33	]);
ce   e34	(w[34	],w[72	][2	],cout[34	]);
ce   e35	(w[35	],w[72	][3	],cout[35	]);
ce   e36	(w[36	],w[73	][0	],cout[36	]);
ce   e37	(w[37	],w[73	][1	],cout[37	]);
ce   e38	(w[38	],w[73	][2	],cout[38	]);
ce   e39	(w[39	],w[73	][3	],cout[39	]);
ce   e40	(w[40	],w[74	][0	],cout[40	]);
ce   e41	(w[41	],w[74	][1	],cout[41	]);
ce   e42	(w[42	],w[74	][2	],cout[42	]);
ce   e43	(w[43	],w[74	][3	],cout[43	]);
ce   e44	(w[44	],w[75	][0	],cout[44	]);
ce   e45	(w[45	],w[75	][1	],cout[45	]);
ce   e46	(w[46	],w[75	][2	],cout[46	]);
ce   e47	(w[47	],w[75	][3	],cout[47	]);
ce   e48	(w[48	],w[76	][0	],cout[48	]);
ce   e49	(w[49	],w[76	][1	],cout[49	]);
ce   e50	(w[50	],w[76	][2	],cout[50	]);
ce   e51	(w[51	],w[76	][3	],cout[51	]);
ce   e52	(w[52	],w[77	][0	],cout[52	]);
ce   e53	(w[53	],w[77	][1	],cout[53	]);
ce   e54	(w[54	],w[77	][2	],cout[54	]);
ce   e55	(w[55	],w[77	][3	],cout[55	]);
ce   e56	(w[56	],w[78	][0	],cout[56	]);
ce   e57	(w[57	],w[78	][1	],cout[57	]);
ce   e58	(w[58	],w[78	][2	],cout[58	]);
ce   e59	(w[59	],w[78	][3	],cout[59	]);
ce   e60	(w[60	],w[79	][0	],cout[60	]);
ce   e61	(w[61	],w[79	][1	],cout[61	]);
ce   e62	(w[62	],w[79	][2	],cout[62	]);
ce   e63	(w[63	],w[79	][3	],cout[63	]);



//or stage2

assign o1[	0	]=w[	64	][0]|w[	64	][1]|w[	64	][2]|w[	64	][3];
assign o1[	1	]=w[	65	][0]|w[	65	][1]|w[	65	][2]|w[	65	][3];
assign o1[	2	]=w[	66	][0]|w[	66	][1]|w[	66	][2]|w[	66	][3];
assign o1[	3	]=w[	67	][0]|w[	67	][1]|w[	67	][2]|w[	67	][3];
assign o1[	4	]=w[	68	][0]|w[	68	][1]|w[	68	][2]|w[	68	][3];
assign o1[	5	]=w[	69	][0]|w[	69	][1]|w[	69	][2]|w[	69	][3];
assign o1[	6	]=w[	70	][0]|w[	70	][1]|w[	70	][2]|w[	70	][3];
assign o1[	7	]=w[	71	][0]|w[	71	][1]|w[	71	][2]|w[	71	][3];
assign o1[	8	]=w[	72	][0]|w[	72	][1]|w[	72	][2]|w[	72	][3];
assign o1[	9	]=w[	73	][0]|w[	73	][1]|w[	73	][2]|w[	73	][3];
assign o1[	10	]=w[	74	][0]|w[	74	][1]|w[	74	][2]|w[	74	][3];
assign o1[	11	]=w[	75	][0]|w[	75	][1]|w[	75	][2]|w[	75	][3];
assign o1[	12	]=w[	76	][0]|w[	76	][1]|w[	76	][2]|w[	76	][3];
assign o1[	13	]=w[	77	][0]|w[	77	][1]|w[	77	][2]|w[	77	][3];
assign o1[	14	]=w[	78	][0]|w[	78	][1]|w[	78	][2]|w[	78	][3];
assign o1[  15  ]=w[    79  ][0]|w[ 79  ][1]|w[ 79  ][2]|w[ 79  ][3];

//stage3
priority4bit    c(o1[3:0],w[80],l3[0]);
priority4bit 	c1(o1[7:4],w[81],l3[1]);
priority4bit 	c2(o1[11:8],w[82],l3[2]);
priority4bit 	c3(o1[15:12],w[83],l3[3]);
//ce
ce   f  (cout[0 ],w[80  ][0 ],cout[64]);
ce   f1	(cout[1	],w[80	][0	],cout[65	]);
ce   f2	(cout[2	],w[80	][0	],cout[66	]);
ce   f3	(cout[3	],w[80	][0	],cout[67	]);
ce   f4	(cout[4	],w[80	][1	],cout[68	]);
ce   f5	(cout[5	],w[80	][1	],cout[69	]);
ce   f6	(cout[6	],w[80	][1 ],cout[70	]);
ce   f7	(cout[7	],w[80	][1	],cout[71	]);
ce   f8	(cout[8	],w[80	][2	],cout[72	]);
ce   f9	(cout[9	],w[80	][2	],cout[73	]);
ce   f10(cout[10],w[80	][2	],cout[74	]);
ce   f11(cout[11],w[80	][2	],cout[75	]);
ce   f12(cout[12],w[80	][3	],cout[76	]);
ce   f13(cout[13],w[80	][3	],cout[77	]);
ce   f14(cout[14],w[80	][3	],cout[78	]);
ce   f15(cout[15],w[80	][3	],cout[79	]);
ce   f16(cout[16],w[81	][0	],cout[80	]);
ce   f17(cout[17],w[81	][0	],cout[81	]);
ce   f18(cout[18],w[81	][0	],cout[82	]);
ce   f19(cout[19],w[81	][0	],cout[83	]);
ce   f20(cout[20],w[81	][1	],cout[84	]);
ce   f21(cout[21],w[81	][1	],cout[85	]);
ce   f22(cout[22],w[81	][1	],cout[86	]);
ce   f23(cout[23],w[81	][1	],cout[87	]);
ce   f24(cout[24],w[81	][2	],cout[88	]);
ce   f25(cout[25],w[81	][2	],cout[89	]);
ce   f26(cout[26],w[81	][2	],cout[90	]);
ce   f27(cout[27],w[81	][2	],cout[91	]);
ce   f28(cout[28],w[81	][3	],cout[92	]);
ce   f29(cout[29],w[81	][3	],cout[93	]);
ce   f30(cout[30],w[81	][3	],cout[94	]);
ce   f31(cout[31],w[81	][3	],cout[95	]);
ce   f32(cout[32],w[82	][0	],cout[96	]);
ce   f33(cout[33],w[82	][0	],cout[97	]);
ce   f34(cout[34],w[82	][0	],cout[98	]);
ce   f35(cout[35],w[82	][0	],cout[99	]);
ce   f36(cout[36],w[82	][1	],cout[100	]);
ce   f37(cout[37],w[82	][1	],cout[101	]);
ce   f38(cout[38],w[82	][1	],cout[102	]);
ce   f39(cout[39],w[82	][1	],cout[103	]);
ce   f40(cout[40],w[82	][2	],cout[104	]);
ce   f41(cout[41],w[82	][2	],cout[105	]);
ce   f42(cout[42],w[82	][2	],cout[106	]);
ce   f43(cout[43],w[82	][2	],cout[107	]);
ce   f44(cout[44],w[82	][3	],cout[108	]);
ce   f45(cout[45],w[82	][3	],cout[109	]);
ce   f46(cout[46],w[82	][3	],cout[110	]);
ce   f47(cout[47],w[82	][3	],cout[111	]);
ce   f48(cout[48],w[83	][0	],cout[112	]);
ce   f49(cout[49],w[83	][0	],cout[113	]);
ce   f50(cout[50],w[83	][0	],cout[114	]);
ce   f51(cout[51],w[83	][0	],cout[115	]);
ce   f52(cout[52],w[83	][1	],cout[116	]);
ce   f53(cout[53],w[83	][1	],cout[117	]);
ce   f54(cout[54],w[83	][1	],cout[118	]);
ce   f55(cout[55],w[83	][1	],cout[119	]);
ce   f56(cout[56],w[83	][2	],cout[120	]);
ce   f57(cout[57],w[83	][2	],cout[121	]);
ce   f58(cout[58],w[83	][2	],cout[122	]);
ce   f59(cout[59],w[83	][2	],cout[123	]);
ce   f60(cout[60],w[83	][3	],cout[124	]);
ce   f61(cout[61],w[83	][3	],cout[125	]);
ce   f62(cout[62],w[83	][3	],cout[126	]);
ce   f63(cout[63],w[83	][3	],cout[127	]);
 


//or stage3
assign o2[	0	]=w[	80	][0]|w[	80	][1]|w[	80	][2]|w[	80	][3];
assign o2[	1	]=w[	81	][0]|w[	81	][1]|w[	81	][2]|w[	81	][3];
assign o2[	2	]=w[	82	][0]|w[	82	][1]|w[	82	][2]|w[	82	][3];
assign o2[	3	]=w[	83	][0]|w[	83	][1]|w[	83	][2]|w[	83	][3];
//stage 4
priority4bit    d(o2[3:0],w[84],l4);
//
 
ce   g	(cout[64	],w[84	][0	],fin[0	]);
ce   g1	(cout[65	],w[84	][0	],fin[1	]);
ce   g2	(cout[66	],w[84	][0	],fin[2	]);
ce   g3	(cout[67	],w[84	][0	],fin[3	]);
ce   g4	(cout[68	],w[84	][0	],fin[4	]);
ce   g5	(cout[69	],w[84	][0	],fin[5	]);
ce   g6	(cout[70	],w[84	][0	],fin[6	]);
ce   g7	(cout[71	],w[84	][0	],fin[7	]);
ce   g8	(cout[72	],w[84	][0	],fin[8	]);
ce   g9	(cout[73	],w[84	][0	],fin[9	]);
ce   g10(cout[74	],w[84	][0	],fin[10	]);
ce   g11(cout[75	],w[84	][0	],fin[11	]);
ce   g12(cout[76	],w[84	][0	],fin[12	]);
ce   g13(cout[77	],w[84	][0	],fin[13	]);
ce   g14(cout[78	],w[84	][0	],fin[14	]);
ce   g15(cout[79	],w[84	][0	],fin[15	]);
ce   g16(cout[80	],w[84	][1	],fin[16	]);
ce   g17(cout[81	],w[84	][1	],fin[17	]);
ce   g18(cout[82	],w[84	][1	],fin[18	]);
ce   g19(cout[83	],w[84	][1	],fin[19	]);
ce   g20(cout[84	],w[84	][1	],fin[20	]);
ce   g21(cout[85	],w[84	][1	],fin[21	]);
ce   g22(cout[86	],w[84	][1	],fin[22	]);
ce   g23(cout[87	],w[84	][1	],fin[23	]);
ce   g24(cout[88	],w[84	][1	],fin[24	]);
ce   g25(cout[89	],w[84	][1	],fin[25	]);
ce   g26(cout[90	],w[84	][1	],fin[26	]);
ce   g27(cout[91	],w[84	][1	],fin[27	]);
ce   g28(cout[92	],w[84	][1	],fin[28	]);
ce   g29(cout[93	],w[84	][1	],fin[29	]);
ce   g30(cout[94	],w[84	][1	],fin[30	]);
ce   g31(cout[95	],w[84	][1	],fin[31	]);
ce   g32(cout[96	],w[84	][2	],fin[32	]);
ce   g33(cout[97	],w[84	][2	],fin[33	]);
ce   g34(cout[98	],w[84	][2	],fin[34	]);
ce   g35(cout[99	],w[84	][2	],fin[35	]);
ce   g36(cout[100	],w[84	][2	],fin[36	]);
ce   g37(cout[101	],w[84	][2	],fin[37	]);
ce   g38(cout[102	],w[84	][2	],fin[38	]);
ce   g39(cout[103	],w[84	][2	],fin[39	]);
ce   g40(cout[104	],w[84	][2	],fin[40	]);
ce   g41(cout[105	],w[84	][2	],fin[41	]);
ce   g42(cout[106	],w[84	][2	],fin[42	]);
ce   g43(cout[107	],w[84	][2	],fin[43	]);
ce   g44(cout[108	],w[84	][2	],fin[44	]);
ce   g45(cout[109	],w[84	][2	],fin[45	]);
ce   g46(cout[110	],w[84	][2	],fin[46	]);
ce   g47(cout[111	],w[84	][2	],fin[47	]);
ce   g48(cout[112	],w[84	][3	],fin[48	]);
ce   g49(cout[113	],w[84	][3	],fin[49	]);
ce   g50(cout[114	],w[84	][3	],fin[50	]);
ce   g51(cout[115	],w[84	][3	],fin[51	]);
ce   g52(cout[116	],w[84	][3	],fin[52	]);
ce   g53(cout[117	],w[84	][3	],fin[53	]);
ce   g54(cout[118	],w[84	][3	],fin[54	]);
ce   g55(cout[119	],w[84	][3	],fin[55	]);
ce   g56(cout[120	],w[84	][3	],fin[56	]);
ce   g57(cout[121	],w[84	][3	],fin[57	]);
ce   g58(cout[122	],w[84	][3	],fin[58	]);
ce   g59(cout[123	],w[84	][3	],fin[59	]);
ce   g60(cout[124	],w[84	][3	],fin[60	]);
ce   g61(cout[125	],w[84	][3	],fin[61	]);
ce   g62(cout[126	],w[84	][3	],fin[62	]);
ce   g63(cout[127	],w[84	][3	],fin[63	]);

 
assign outfi[0	]=fin[0	][0	];
assign outfi[1	]=fin[0	][1	];
assign outfi[2	]=fin[0	][2	];
assign outfi[3	]=fin[0	][3	];
assign outfi[4	]=fin[1	][0	];
assign outfi[5	]=fin[1	][1	];
assign outfi[6	]=fin[1	][2	];
assign outfi[7	]=fin[1	][3	];
assign outfi[8	]=fin[2	][0	];
assign outfi[9	]=fin[2	][1	];
assign outfi[10	]=fin[2	][2	];
assign outfi[11	]=fin[2	][3	];
assign outfi[12	]=fin[3	][0	];
assign outfi[13	]=fin[3	][1	];
assign outfi[14	]=fin[3	][2	];
assign outfi[15	]=fin[3	][3	];
assign outfi[16	]=fin[4	][0	];
assign outfi[17	]=fin[4	][1	];
assign outfi[18	]=fin[4	][2	];
assign outfi[19	]=fin[4	][3	];
assign outfi[20	]=fin[5	][0	];
assign outfi[21	]=fin[5	][1	];
assign outfi[22	]=fin[5	][2	];
assign outfi[23	]=fin[5	][3	];
assign outfi[24	]=fin[6	][0	];
assign outfi[25	]=fin[6	][1	];
assign outfi[26	]=fin[6	][2	];
assign outfi[27	]=fin[6	][3	];
assign outfi[28	]=fin[7	][0	];
assign outfi[29	]=fin[7	][1	];
assign outfi[30	]=fin[7	][2	];
assign outfi[31	]=fin[7	][3	];
assign outfi[32	]=fin[8	][0	];
assign outfi[33	]=fin[8	][1	];
assign outfi[34	]=fin[8	][2	];
assign outfi[35	]=fin[8	][3	];
assign outfi[36	]=fin[9	][0	];
assign outfi[37	]=fin[9	][1	];
assign outfi[38	]=fin[9	][2	];
assign outfi[39	]=fin[9	][3	];
assign outfi[40	]=fin[10	][0	];
assign outfi[41	]=fin[10	][1	];
assign outfi[42	]=fin[10	][2	];
assign outfi[43	]=fin[10	][3	];
assign outfi[44	]=fin[11	][0	];
assign outfi[45	]=fin[11	][1	];
assign outfi[46	]=fin[11	][2	];
assign outfi[47	]=fin[11	][3	];
assign outfi[48	]=fin[12	][0	];
assign outfi[49	]=fin[12	][1	];
assign outfi[50	]=fin[12	][2	];
assign outfi[51	]=fin[12	][3	];
assign outfi[52	]=fin[13	][0	];
assign outfi[53	]=fin[13	][1	];
assign outfi[54	]=fin[13	][2	];
assign outfi[55	]=fin[13	][3	];
assign outfi[56	]=fin[14	][0	];
assign outfi[57	]=fin[14	][1	];
assign outfi[58	]=fin[14	][2	];
assign outfi[59	]=fin[14	][3	];
assign outfi[60	]=fin[15	][0	];
assign outfi[61	]=fin[15	][1	];
assign outfi[62	]=fin[15	][2	];
assign outfi[63	]=fin[15	][3	];
assign outfi[64	]=fin[16	][0	];
assign outfi[65	]=fin[16	][1	];
assign outfi[66	]=fin[16	][2	];
assign outfi[67	]=fin[16	][3	];
assign outfi[68	]=fin[17	][0	];
assign outfi[69	]=fin[17	][1	];
assign outfi[70	]=fin[17	][2	];
assign outfi[71	]=fin[17	][3	];
assign outfi[72	]=fin[18	][0	];
assign outfi[73	]=fin[18	][1	];
assign outfi[74	]=fin[18	][2	];
assign outfi[75	]=fin[18	][3	];
assign outfi[76	]=fin[19	][0	];
assign outfi[77	]=fin[19	][1	];
assign outfi[78	]=fin[19	][2	];
assign outfi[79	]=fin[19	][3	];
assign outfi[80	]=fin[20	][0	];
assign outfi[81	]=fin[20	][1	];
assign outfi[82	]=fin[20	][2	];
assign outfi[83	]=fin[20	][3	];
assign outfi[84	]=fin[21	][0	];
assign outfi[85	]=fin[21	][1	];
assign outfi[86	]=fin[21	][2	];
assign outfi[87	]=fin[21	][3	];
assign outfi[88	]=fin[22	][0	];
assign outfi[89	]=fin[22	][1	];
assign outfi[90	]=fin[22	][2	];
assign outfi[91	]=fin[22	][3	];
assign outfi[92	]=fin[23	][0	];
assign outfi[93	]=fin[23	][1	];
assign outfi[94	]=fin[23	][2	];
assign outfi[95	]=fin[23	][3	];
assign outfi[96	]=fin[24	][0	];
assign outfi[97	]=fin[24	][1	];
assign outfi[98	]=fin[24	][2	];
assign outfi[99	]=fin[24	][3	];
assign outfi[100	]=fin[25	][0	];
assign outfi[101	]=fin[25	][1	];
assign outfi[102	]=fin[25	][2	];
assign outfi[103	]=fin[25	][3	];
assign outfi[104	]=fin[26	][0	];
assign outfi[105	]=fin[26	][1	];
assign outfi[106	]=fin[26	][2	];
assign outfi[107	]=fin[26	][3	];
assign outfi[108	]=fin[27	][0	];
assign outfi[109	]=fin[27	][1	];
assign outfi[110	]=fin[27	][2	];
assign outfi[111	]=fin[27	][3	];
assign outfi[112	]=fin[28	][0	];
assign outfi[113	]=fin[28	][1	];
assign outfi[114	]=fin[28	][2	];
assign outfi[115	]=fin[28	][3	];
assign outfi[116	]=fin[29	][0	];
assign outfi[117	]=fin[29	][1	];
assign outfi[118	]=fin[29	][2	];
assign outfi[119	]=fin[29	][3	];
assign outfi[120	]=fin[30	][0	];
assign outfi[121	]=fin[30	][1	];
assign outfi[122	]=fin[30	][2	];
assign outfi[123	]=fin[30	][3	];
assign outfi[124	]=fin[31	][0	];
assign outfi[125	]=fin[31	][1	];
assign outfi[126	]=fin[31	][2	];
assign outfi[127	]=fin[31	][3	];
assign outfi[128	]=fin[32	][0	];
assign outfi[129	]=fin[32	][1	];
assign outfi[130	]=fin[32	][2	];
assign outfi[131	]=fin[32	][3	];
assign outfi[132	]=fin[33	][0	];
assign outfi[133	]=fin[33	][1	];
assign outfi[134	]=fin[33	][2	];
assign outfi[135	]=fin[33	][3	];
assign outfi[136	]=fin[34	][0	];
assign outfi[137	]=fin[34	][1	];
assign outfi[138	]=fin[34	][2	];
assign outfi[139	]=fin[34	][3	];
assign outfi[140	]=fin[35	][0	];
assign outfi[141	]=fin[35	][1	];
assign outfi[142	]=fin[35	][2	];
assign outfi[143	]=fin[35	][3	];
assign outfi[144	]=fin[36	][0	];
assign outfi[145	]=fin[36	][1	];
assign outfi[146	]=fin[36	][2	];
assign outfi[147	]=fin[36	][3	];
assign outfi[148	]=fin[37	][0	];
assign outfi[149	]=fin[37	][1	];
assign outfi[150	]=fin[37	][2	];
assign outfi[151	]=fin[37	][3	];
assign outfi[152	]=fin[38	][0	];
assign outfi[153	]=fin[38	][1	];
assign outfi[154	]=fin[38	][2	];
assign outfi[155	]=fin[38	][3	];
assign outfi[156	]=fin[39	][0	];
assign outfi[157	]=fin[39	][1	];
assign outfi[158	]=fin[39	][2	];
assign outfi[159	]=fin[39	][3	];
assign outfi[160	]=fin[40	][0	];
assign outfi[161	]=fin[40	][1	];
assign outfi[162	]=fin[40	][2	];
assign outfi[163	]=fin[40	][3	];
assign outfi[164	]=fin[41	][0	];
assign outfi[165	]=fin[41	][1	];
assign outfi[166	]=fin[41	][2	];
assign outfi[167	]=fin[41	][3	];
assign outfi[168	]=fin[42	][0	];
assign outfi[169	]=fin[42	][1	];
assign outfi[170	]=fin[42	][2	];
assign outfi[171	]=fin[42	][3	];
assign outfi[172	]=fin[43	][0	];
assign outfi[173	]=fin[43	][1	];
assign outfi[174	]=fin[43	][2	];
assign outfi[175	]=fin[43	][3	];
assign outfi[176	]=fin[44	][0	];
assign outfi[177	]=fin[44	][1	];
assign outfi[178	]=fin[44	][2	];
assign outfi[179	]=fin[44	][3	];
assign outfi[180	]=fin[45	][0	];
assign outfi[181	]=fin[45	][1	];
assign outfi[182	]=fin[45	][2	];
assign outfi[183	]=fin[45	][3	];
assign outfi[184	]=fin[46	][0	];
assign outfi[185	]=fin[46	][1	];
assign outfi[186	]=fin[46	][2	];
assign outfi[187	]=fin[46	][3	];
assign outfi[188	]=fin[47	][0	];
assign outfi[189	]=fin[47	][1	];
assign outfi[190	]=fin[47	][2	];
assign outfi[191	]=fin[47	][3	];
assign outfi[192	]=fin[48	][0	];
assign outfi[193	]=fin[48	][1	];
assign outfi[194	]=fin[48	][2	];
assign outfi[195	]=fin[48	][3	];
assign outfi[196	]=fin[49	][0	];
assign outfi[197	]=fin[49	][1	];
assign outfi[198	]=fin[49	][2	];
assign outfi[199	]=fin[49	][3	];
assign outfi[200	]=fin[50	][0	];
assign outfi[201	]=fin[50	][1	];
assign outfi[202	]=fin[50	][2	];
assign outfi[203	]=fin[50	][3	];
assign outfi[204	]=fin[51	][0	];
assign outfi[205	]=fin[51	][1	];
assign outfi[206	]=fin[51	][2	];
assign outfi[207	]=fin[51	][3	];
assign outfi[208	]=fin[52	][0	];
assign outfi[209	]=fin[52	][1	];
assign outfi[210	]=fin[52	][2	];
assign outfi[211	]=fin[52	][3	];
assign outfi[212	]=fin[53	][0	];
assign outfi[213	]=fin[53	][1	];
assign outfi[214	]=fin[53	][2	];
assign outfi[215	]=fin[53	][3	];
assign outfi[216	]=fin[54	][0	];
assign outfi[217	]=fin[54	][1	];
assign outfi[218	]=fin[54	][2	];
assign outfi[219	]=fin[54	][3	];
assign outfi[220	]=fin[55	][0	];
assign outfi[221	]=fin[55	][1	];
assign outfi[222	]=fin[55	][2	];
assign outfi[223	]=fin[55	][3	];
assign outfi[224	]=fin[56	][0	];
assign outfi[225	]=fin[56	][1	];
assign outfi[226	]=fin[56	][2	];
assign outfi[227	]=fin[56	][3	];
assign outfi[228	]=fin[57	][0	];
assign outfi[229	]=fin[57	][1	];
assign outfi[230	]=fin[57	][2	];
assign outfi[231	]=fin[57	][3	];
assign outfi[232	]=fin[58	][0	];
assign outfi[233	]=fin[58	][1	];
assign outfi[234	]=fin[58	][2	];
assign outfi[235	]=fin[58	][3	];
assign outfi[236	]=fin[59	][0	];
assign outfi[237	]=fin[59	][1	];
assign outfi[238	]=fin[59	][2	];
assign outfi[239	]=fin[59	][3	];
assign outfi[240	]=fin[60	][0	];
assign outfi[241	]=fin[60	][1	];
assign outfi[242	]=fin[60	][2	];
assign outfi[243	]=fin[60	][3	];
assign outfi[244	]=fin[61	][0	];
assign outfi[245	]=fin[61	][1	];
assign outfi[246	]=fin[61	][2	];
assign outfi[247	]=fin[61	][3	];
assign outfi[248	]=fin[62	][0	];
assign outfi[249	]=fin[62	][1	];
assign outfi[250	]=fin[62	][2	];
assign outfi[251	]=fin[62	][3	];
assign outfi[252	]=fin[63	][0	];
assign outfi[253	]=fin[63	][1	];
assign outfi[254	]=fin[63	][2	];
assign outfi[255	]=fin[63	][3	];
 
 
endmodule
