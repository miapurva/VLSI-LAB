// Usage: iverilog -o test priofinal.v xyz.v conv_ele.v
// vvp test

module pe_256bit(d,y,v);
	input [255:0]d;
	output v;
	output [255:0]y;
	wire v;
	wire [255:0]y;
	wire [255:0]p,k,q,j,r,h,c,x,z;

	//first layer
	PriorityEncoder_4Bit	a1(d[   3   :   0   ],y[    3   :   0   ],v1);
	PriorityEncoder_4Bit	a2(d[	7	:	4	],y[	7	:	4	],v2);
	PriorityEncoder_4Bit	a3(d[	11	:	8	],y[	11	:	8	],v3);
	PriorityEncoder_4Bit	a4(d[	15	:	12	],y[	15	:	12	],v4);
	PriorityEncoder_4Bit	a5(d[	19	:	16	],y[	19	:	16	],v5);
	PriorityEncoder_4Bit	a6(d[	23	:	20	],y[	23	:	20	],v6);
	PriorityEncoder_4Bit	a7(d[	27	:	24	],y[	27	:	24	],v7);
	PriorityEncoder_4Bit	a8(d[	31	:	28	],y[	31	:	28	],v8);
	PriorityEncoder_4Bit	a9(d[	35	:	32	],y[	35	:	32	],v9);
	PriorityEncoder_4Bit	a10(d[	39	:	36	],y[	39	:	36	],v10);
	PriorityEncoder_4Bit	a11(d[	43	:	40	],y[	43	:	40	],v11);
	PriorityEncoder_4Bit	a12(d[	47	:	44	],y[	47	:	44	],v12);
	PriorityEncoder_4Bit	a13(d[	51	:	48	],y[	51	:	48	],v13);
	PriorityEncoder_4Bit	a14(d[	55	:	52	],y[	55	:	52	],v14);
	PriorityEncoder_4Bit	a15(d[	59	:	56	],y[	59	:	56	],v15);
	PriorityEncoder_4Bit	a16(d[	63	:	60	],y[	63	:	60	],v16);
	PriorityEncoder_4Bit	a17(d[	67	:	64	],y[	67	:	64	],v17);
	PriorityEncoder_4Bit	a18(d[	71	:	68	],y[	71	:	68	],v18);
	PriorityEncoder_4Bit	a19(d[	75	:	72	],y[	75	:	72	],v19);
	PriorityEncoder_4Bit	a21(d[	79	:	76	],y[	79	:	76	],v20);
	PriorityEncoder_4Bit	a22(d[	83	:	80	],y[	83	:	80	],v21);
	PriorityEncoder_4Bit	a23(d[	87	:	84	],y[	87	:	84	],v22);
	PriorityEncoder_4Bit	a24(d[	91	:	88	],y[	91	:	88	],v23);
	PriorityEncoder_4Bit	a25(d[	95	:	92	],y[	95	:	92	],v24);
	PriorityEncoder_4Bit	a26(d[	99	:	96	],y[	99	:	96	],v25);
	PriorityEncoder_4Bit	a27(d[	103	:	100	],y[	103	:	100	],v26);
	PriorityEncoder_4Bit	a28(d[	107	:	104	],y[	107	:	104	],v27);
	PriorityEncoder_4Bit	a29(d[	111	:	108	],y[	111	:	108	],v28);
	PriorityEncoder_4Bit	a30(d[	115	:	112	],y[	115	:	112	],v29);
	PriorityEncoder_4Bit	a31(d[	119	:	116	],y[	119	:	116	],v30);
	PriorityEncoder_4Bit	a32(d[	123	:	120	],y[	123	:	120	],v31);
	PriorityEncoder_4Bit	a33(d[	127	:	124	],y[	127	:	124	],v32);
	PriorityEncoder_4Bit	a34(d[	131	:	128	],y[	131	:	128	],v33);
	PriorityEncoder_4Bit	a35(d[	135	:	132	],y[	135	:	132	],v34);
	PriorityEncoder_4Bit	a36(d[	139	:	136	],y[	139	:	136	],v35);
	PriorityEncoder_4Bit	a37(d[	143	:	140	],y[	143	:	140	],v36);
	PriorityEncoder_4Bit	a38(d[	147	:	144	],y[	147	:	144	],v37);
	PriorityEncoder_4Bit	a39(d[	151	:	148	],y[	151	:	148	],v38);
	PriorityEncoder_4Bit	a40(d[	155	:	152	],y[	155	:	152	],v39);
	PriorityEncoder_4Bit	a41(d[	159	:	156	],y[	159	:	156	],v40);
	PriorityEncoder_4Bit	a42(d[	163	:	160	],y[	163	:	160	],v41);
	PriorityEncoder_4Bit	a43(d[	167	:	164	],y[	167	:	164	],v42);
	PriorityEncoder_4Bit	a44(d[	171	:	168	],y[	171	:	168	],v43);
	PriorityEncoder_4Bit	a45(d[	175	:	172	],y[	175	:	172	],v44);
	PriorityEncoder_4Bit	a46(d[	179	:	176	],y[	179	:	176	],v45);
	PriorityEncoder_4Bit	a47(d[	183	:	180	],y[	183	:	180	],v46);
	PriorityEncoder_4Bit	a48(d[	187	:	184	],y[	187	:	184	],v47);
	PriorityEncoder_4Bit	a49(d[	191	:	188	],y[	191	:	188	],v48);
	PriorityEncoder_4Bit	a50(d[	195	:	192	],y[	195	:	192	],v49);
	PriorityEncoder_4Bit	a51(d[	199	:	196	],y[	199	:	196	],v50);
	PriorityEncoder_4Bit	a52(d[	203	:	200	],y[	203	:	200	],v51);
	PriorityEncoder_4Bit	a53(d[	207	:	204	],y[	207	:	204	],v52);
	PriorityEncoder_4Bit	a54(d[	211	:	208	],y[	211	:	208	],v53);
	PriorityEncoder_4Bit	a55(d[	215	:	212	],y[	215	:	212	],v54);
	PriorityEncoder_4Bit	a56(d[	219	:	216	],y[	219	:	216	],v55);
	PriorityEncoder_4Bit	a57(d[	223	:	220	],y[	223	:	220	],v56);
	PriorityEncoder_4Bit	a58(d[	227	:	224	],y[	227	:	224	],v57);
	PriorityEncoder_4Bit	a59(d[	231	:	228	],y[	231	:	228	],v58);
	PriorityEncoder_4Bit	a60(d[	235	:	232	],y[	235	:	232	],v59);
	PriorityEncoder_4Bit	a61(d[	239	:	236	],y[	239	:	236	],v60);
	PriorityEncoder_4Bit	a62(d[	243	:	240	],y[	243	:	240	],v61);
	PriorityEncoder_4Bit	a63(d[	247	:	244	],y[	247	:	244	],v62);
	PriorityEncoder_4Bit	a64(d[	251	:	248	],y[	251	:	248	],v63);
	PriorityEncoder_4Bit	a20(d[	255	:	252	],y[	255	:	252	],v64);

	//second layer

	assign p[	0	]=y[	0	] | y [	1	] | y [	2	] | y [	3	];
	assign p[	1	]=y[	4	] | y [	5	] | y [	6	] | y [	7	];
	assign p[	2	]=y[	8	] | y [	9	] | y [	10	] | y [	11	];
	assign p[	3	]=y[	12	] | y [	13	] | y [	14	] | y [	15	];
	assign p[	4	]=y[	16	] | y [	17	] | y [	18	] | y [	19	];
	assign p[	5	]=y[	20	] | y [	21	] | y [	22	] | y [	23	];
	assign p[	6	]=y[	24	] | y [	25	] | y [	26	] | y [	27	];
	assign p[	7	]=y[	28	] | y [	29	] | y [	30	] | y [	31	];
	assign p[	8	]=y[	32	] | y [	33	] | y [	34	] | y [	35	];
	assign p[	9	]=y[	36	] | y [	37	] | y [	38	] | y [	39	];
	assign p[	10	]=y[	40	] | y [	41	] | y [	42	] | y [	43	];
	assign p[	11	]=y[	44	] | y [	45	] | y [	46	] | y [	47	];
	assign p[	12	]=y[	48	] | y [	49	] | y [	50	] | y [	51	];
	assign p[	13	]=y[	52	] | y [	53	] | y [	54	] | y [	55	];
	assign p[	14	]=y[	56	] | y [	57	] | y [	58	] | y [	59	];
	assign p[	15	]=y[	60	] | y [	61	] | y [	62	] | y [	63	];
	assign p[	16	]=y[	64	] | y [	65	] | y [	66	] | y [	67	];
	assign p[	17	]=y[	68	] | y [	69	] | y [	70	] | y [	71	];
	assign p[	18	]=y[	72	] | y [	73	] | y [	74	] | y [	75	];
	assign p[	19	]=y[	76	] | y [	77	] | y [	78	] | y [	79	];
	assign p[	20	]=y[	80	] | y [	81	] | y [	82	] | y [	83	];
	assign p[	21	]=y[	84	] | y [	85	] | y [	86	] | y [	87	];
	assign p[	22	]=y[	88	] | y [	89	] | y [	90	] | y [	91	];
	assign p[	23	]=y[	92	] | y [	93	] | y [	94	] | y [	95	];
	assign p[	24	]=y[	96	] | y [	97	] | y [	98	] | y [	99	];
	assign p[	25	]=y[	100	] | y [	101	] | y [	102	] | y [	103	];
	assign p[	26	]=y[	104	] | y [	105	] | y [	106	] | y [	107	];
	assign p[	27	]=y[	108	] | y [	109	] | y [	110	] | y [	111	];
	assign p[	28	]=y[	112	] | y [	113	] | y [	114	] | y [	115	];
	assign p[	29	]=y[	116	] | y [	117	] | y [	118	] | y [	119	];
	assign p[	30	]=y[	120	] | y [	121	] | y [	122	] | y [	123	];
	assign p[	31	]=y[	124	] | y [	125	] | y [	126	] | y [	127	];
	assign p[	32	]=y[	128	] | y [	129	] | y [	130	] | y [	131	];
	assign p[	33	]=y[	132	] | y [	133	] | y [	134	] | y [	135	];
	assign p[	34	]=y[	136	] | y [	137	] | y [	138	] | y [	139	];
	assign p[	35	]=y[	140	] | y [	141	] | y [	142	] | y [	143	];
	assign p[	36	]=y[	144	] | y [	145	] | y [	146	] | y [	147	];
	assign p[	37	]=y[	148	] | y [	149	] | y [	150	] | y [	151	];
	assign p[	38	]=y[	152	] | y [	153	] | y [	154	] | y [	155	];
	assign p[	39	]=y[	156	] | y [	157	] | y [	158	] | y [	159	];
	assign p[	40	]=y[	160	] | y [	161	] | y [	162	] | y [	163	];
	assign p[	41	]=y[	164	] | y [	165	] | y [	166	] | y [	167	];
	assign p[	42	]=y[	168	] | y [	169	] | y [	170	] | y [	171	];
	assign p[	43	]=y[	172	] | y [	173	] | y [	174	] | y [	175	];
	assign p[	44	]=y[	176	] | y [	177	] | y [	178	] | y [	179	];
	assign p[	45	]=y[	180	] | y [	181	] | y [	182	] | y [	183	];
	assign p[	46	]=y[	184	] | y [	185	] | y [	186	] | y [	187	];
	assign p[	47	]=y[	188	] | y [	189	] | y [	190	] | y [	191	];
	assign p[	48	]=y[	192	] | y [	193	] | y [	194	] | y [	195	];
	assign p[	49	]=y[	196	] | y [	197	] | y [	198	] | y [	199	];
	assign p[	50	]=y[	200	] | y [	201	] | y [	202	] | y [	203	];
	assign p[	51	]=y[	204	] | y [	205	] | y [	206	] | y [	207	];
	assign p[	52	]=y[	208	] | y [	209	] | y [	210	] | y [	211	];
	assign p[	53	]=y[	212	] | y [	213	] | y [	214	] | y [	215	];
	assign p[	54	]=y[	216	] | y [	217	] | y [	218	] | y [	219	];
	assign p[	55	]=y[	220	] | y [	221	] | y [	222	] | y [	223	];
	assign p[	56	]=y[	224	] | y [	225	] | y [	226	] | y [	227	];
	assign p[	57	]=y[	228	] | y [	229	] | y [	230	] | y [	231	];
	assign p[	58	]=y[	232	] | y [	233	] | y [	234	] | y [	235	];
	assign p[	59	]=y[	236	] | y [	237	] | y [	238	] | y [	239	];
	assign p[	60	]=y[	240	] | y [	241	] | y [	242	] | y [	243	];
	assign p[	61	]=y[	244	] | y [	245	] | y [	246	] | y [	247	];
	assign p[	62	]=y[	248	] | y [	249	] | y [	250	] | y [	251	];
	assign p[	63	]=y[	252	] | y [	253	] | y [	254	] | y [	255	];



	//third layer
	PriorityEncoder_4Bit	b1(p[	3	:	0	],k[	3	:	0	],v65);
	PriorityEncoder_4Bit	b2(p[	7	:	4	],k[	7	:	4	],v66);
	PriorityEncoder_4Bit	b3(p[	11	:	8	],k[	11	:	8	],v67);
	PriorityEncoder_4Bit	b4(p[	15	:	12	],k[	15	:	12	],v68);
	PriorityEncoder_4Bit	b5(p[	19	:	16	],k[	19	:	16	],v69);
	PriorityEncoder_4Bit	b6(p[	23	:	20	],k[	23	:	20	],v70);
	PriorityEncoder_4Bit	b7(p[	27	:	24	],k[	27	:	24	],v71);
	PriorityEncoder_4Bit	b8(p[	31	:	28	],k[	31	:	28	],v72);
	PriorityEncoder_4Bit	b9(p[	35	:	32	],k[	35	:	32	],v78);
	PriorityEncoder_4Bit	b10(p[	39	:	36	],k[	39	:	36	],v73);
	PriorityEncoder_4Bit	b11(p[	43	:	40	],k[	43	:	40	],v74);
	PriorityEncoder_4Bit	b12(p[	47	:	44	],k[	47	:	44	],v75);
	PriorityEncoder_4Bit	b13(p[	51	:	48	],k[	51	:	48	],v76);
	PriorityEncoder_4Bit	b14(p[	55	:	52	],k[	55	:	52	],v77);
	PriorityEncoder_4Bit	b15(p[	59	:	56	],k[	59	:	56	],v79);
	PriorityEncoder_4Bit	b16(p[	63	:	60	],k[	63	:	60	],v80);

	coversion_element u21(y[	3	:	0	],k[	0	],z[	3	:	0	]);
	coversion_element u22(y[	7	:	4	],k[	1	],z[	7	:	4	]);
	coversion_element u23(y[	11	:	8	],k[	2	],z[	11	:	8	]);
	coversion_element u24(y[	15	:	12	],k[	3	],z[	15	:	12	]);
	coversion_element u25(y[	19	:	16	],k[	4	],z[	19	:	16	]);
	coversion_element u26(y[	23	:	20	],k[	5	],z[	23	:	20	]);
	coversion_element u27(y[	27	:	24	],k[	6	],z[	27	:	24	]);
	coversion_element u28(y[	31	:	28	],k[	7	],z[	31	:	28	]);
	coversion_element u29(y[	35	:	32	],k[	8	],z[	35	:	32	]);
	coversion_element u30(y[	39	:	36	],k[	9	],z[	39	:	36	]);
	coversion_element u31(y[	43	:	40	],k[	10	],z[	43	:	40	]);
	coversion_element u32(y[	47	:	44	],k[	11	],z[	47	:	44	]);
	coversion_element u33(y[	51	:	48	],k[	12	],z[	51	:	48	]);
	coversion_element u34(y[	55	:	52	],k[	13	],z[	55	:	52	]);
	coversion_element u35(y[	59	:	56	],k[	14	],z[	59	:	56	]);
	coversion_element u36(y[	63	:	60	],k[	15	],z[	63	:	60	]);
	coversion_element u37(y[	67	:	64	],k[	16	],z[	67	:	64	]);
	coversion_element u38(y[	71	:	68	],k[	17	],z[	71	:	68	]);
	coversion_element u39(y[	75	:	72	],k[	18	],z[	75	:	72	]);
	coversion_element u40(y[	79	:	76	],k[	19	],z[	79	:	76	]);
	coversion_element u41(y[	83	:	80	],k[	20	],z[	83	:	80	]);
	coversion_element u42(y[	87	:	84	],k[	21	],z[	87	:	84	]);
	coversion_element u43(y[	91	:	88	],k[	22	],z[	91	:	88	]);
	coversion_element u44(y[	95	:	92	],k[	23	],z[	95	:	92	]);
	coversion_element u45(y[	99	:	96	],k[	24	],z[	99	:	96	]);
	coversion_element u46(y[	103	:	100	],k[	25	],z[	103	:	100	]);
	coversion_element u47(y[	107	:	104	],k[	26	],z[	107	:	104	]);
	coversion_element u48(y[	111	:	108	],k[	27	],z[	111	:	108	]);
	coversion_element u49(y[	115	:	112	],k[	28	],z[	115	:	112	]);
	coversion_element u50(y[	119	:	116	],k[	29	],z[	119	:	116	]);
	coversion_element u51(y[	123	:	120	],k[	30	],z[	123	:	120	]);
	coversion_element u52(y[	127	:	124	],k[	31	],z[	127	:	124	]);
	coversion_element u53(y[	131	:	128	],k[	32	],z[	131	:	128	]);
	coversion_element u54(y[	135	:	132	],k[	33	],z[	135	:	132	]);
	coversion_element u55(y[	139	:	136	],k[	34	],z[	139	:	136	]);
	coversion_element u56(y[	143	:	140	],k[	35	],z[	143	:	140	]);
	coversion_element u57(y[	147	:	144	],k[	36	],z[	147	:	144	]);
	coversion_element u58(y[	151	:	148	],k[	37	],z[	151	:	148	]);
	coversion_element u60(y[	155	:	152	],k[	38	],z[	155	:	152	]);
	coversion_element u59(y[	159	:	156	],k[	39	],z[	159	:	156	]);
	coversion_element u84(y[	163	:	160	],k[	40	],z[	163	:	160	]);
	coversion_element u61(y[	167	:	164	],k[	41	],z[	167	:	164	]);
	coversion_element u62(y[	171	:	168	],k[	42	],z[	171	:	168	]);
	coversion_element u63(y[	175	:	172	],k[	43	],z[	175	:	172	]);
	coversion_element u64(y[	179	:	176	],k[	44	],z[	179	:	176	]);
	coversion_element u65(y[	183	:	180	],k[	45	],z[	183	:	180	]);
	coversion_element u66(y[	187	:	184	],k[	46	],z[	187	:	184	]);
	coversion_element u67(y[	191	:	188	],k[	47	],z[	191	:	188	]);
	coversion_element u68(y[	195	:	192	],k[	48	],z[	195	:	192	]);
	coversion_element u69(y[	199	:	196	],k[	49	],z[	199	:	196	]);
	coversion_element u70(y[	203	:	200	],k[	50	],z[	203	:	200	]);
	coversion_element u71(y[	207	:	204	],k[	51	],z[	207	:	204	]);
	coversion_element u72(y[	211	:	208	],k[	52	],z[	211	:	208	]);
	coversion_element u73(y[	215	:	212	],k[	53	],z[	215	:	212	]);
	coversion_element u74(y[	219	:	216	],k[	54	],z[	219	:	216	]);
	coversion_element u75(y[	223	:	220	],k[	55	],z[	223	:	220	]);
	coversion_element u76(y[	227	:	224	],k[	56	],z[	227	:	224	]);
	coversion_element u77(y[	231	:	228	],k[	57	],z[	231	:	228	]);
	coversion_element u78(y[	235	:	232	],k[	58	],z[	235	:	232	]);
	coversion_element u79(y[	239	:	236	],k[	59	],z[	239	:	236	]);
	coversion_element u80(y[	243	:	240	],k[	60	],z[	243	:	240	]);
	coversion_element u81(y[	247	:	244	],k[	61	],z[	247	:	244	]);
	coversion_element u82(y[	251	:	248	],k[	62	],z[	251	:	248	]);
	coversion_element u83(y[	255	:	252	],k[	63	],z[	255	:	252	]);


	//fourth layer
	
	assign q[	0	]=k[	0	] | k [	1	] | k [	2	] | k [	3	];
	assign q[	1	]=k[	4	] | k [	5	] | k [	6	] | k [	7	];
	assign q[	2	]=k[	8	] | k [	9	] | k [	10	] | k [	11	];
	assign q[	3	]=k[	12	] | k [	13	] | k [	14	] | k [	15	];
	assign q[	4	]=k[	16	] | k [	17	] | k [	18	] | k [	19	];
	assign q[	5	]=k[	20	] | k [	21	] | k [	22	] | k [	23	];
	assign q[	6	]=k[	24	] | k [	25	] | k [	26	] | k [	27	];
	assign q[	7	]=k[	28	] | k [	29	] | k [	30	] | k [	31	];
	assign q[	8	]=k[	32	] | k [	33	] | k [	34	] | k [	35	];
	assign q[	9	]=k[	36	] | k [	37	] | k [	38	] | k [	39	];
	assign q[	10	]=k[	40	] | k [	41	] | k [	42	] | k [	43	];
	assign q[	11	]=k[	44	] | k [	45	] | k [	46	] | k [	47	];
	assign q[	12	]=k[	48	] | k [	49	] | k [	50	] | k [	51	];
	assign q[	13	]=k[	52	] | k [	53	] | k [	54	] | k [	55	];
	assign q[	14	]=k[	56	] | k [	57	] | k [	58	] | k [	59	];
	assign q[	15	]=k[	60	] | k [	61	] | k [	62	] | k [	63	];


	//fifth layer
	PriorityEncoder_4Bit	c1(q[	3	:	0	],j[	3	:	0	],v81);	
	PriorityEncoder_4Bit	c2(q[	7	:	4	],j[	7	:	4	],v82);	
	PriorityEncoder_4Bit	c3(q[	11	:	8	],j[	11	:	8	],v83);
	PriorityEncoder_4Bit	c4(q[	15	:	12	],j[	15	:	12	],v84);

	coversion_element 	u5  (z[3:0],j[0],x[3:0]);
	coversion_element 	u6  (z[7:4],j[0],x[7:4]);
	coversion_element 	u7  (z[11:8],j[0],x[11:8]);
	coversion_element 	u8  (z[15:12],j[0],x[15:12]);
	coversion_element 	u9  (z[19:16],j[1],x[19:16]);
	coversion_element 	u10 (z[23:20],j[1],x[23:20]);
	coversion_element 	u11 (z[27:24],j[1],x[27:24]);
	coversion_element 	u12 (z[31:28],j[1],x[31:28]);
	coversion_element 	u13 (z[35:32],j[2],x[35:32]);
	coversion_element	u14 (z[39:36],j[2],x[39:36]);
	coversion_element 	u15 (z[43:40],j[2],x[43:40]);
	coversion_element 	u16 (z[47:44],j[2],x[47:44]);
	coversion_element 	u17 (z[51:48],j[3],x[51:48]);
	coversion_element 	u18 (z[55:52],j[3],x[55:52]);
	coversion_element 	u19 (z[59:56],j[3],x[59:56]);
	coversion_element 	u20 (z[63:60],j[3],x[63:60]);	
	coversion_element 	u85 (z[67:64],j[4],x[67:64]);
	coversion_element	u103(z[	71	:	68	],j[	4	],x[	71	:	68	]);
	coversion_element	u104(z[	75	:	72	],j[	4	],x[	75	:	72	]);
	coversion_element	u105(z[	79	:	76	],j[	4	],x[	79	:	76	]);
	coversion_element	u106(z[	83	:	80	],j[	5	],x[	83	:	80	]);
	coversion_element	u107(z[	87	:	84	],j[	5	],x[	87	:	84	]);
	coversion_element	u108(z[	91	:	88	],j[	5	],x[	91	:	88	]);
	coversion_element	u109(z[	95	:	92	],j[	5	],x[	95	:	92	]);
	coversion_element	u110(z[	99	:	96	],j[	6	],x[	99	:	96	]);
	coversion_element	u111(z[	103	:	100	],j[	6	],x[	103	:	100	]);
	coversion_element	u112(z[	107	:	104	],j[	6	],x[	107	:	104	]);
	coversion_element	u113(z[	111	:	108	],j[	6	],x[	111	:	108	]);
	coversion_element	u114(z[	115	:	112	],j[	7	],x[	115	:	112	]);
	coversion_element	u115(z[	119	:	116	],j[	7	],x[	119	:	116	]);
	coversion_element	u116(z[	123	:	120	],j[	7	],x[	123	:	120	]);
	coversion_element	u117(z[	127	:	124	],j[	7	],x[	127	:	124	]);
	coversion_element	u118(z[	131	:	128	],j[	8	],x[	131	:	128	]);
	coversion_element	u119(z[	135	:	132	],j[	8	],x[	135	:	132	]);
	coversion_element	u120(z[	139	:	136	],j[	8	],x[	139	:	136	]);
	coversion_element	u121(z[	143	:	140	],j[	8	],x[	143	:	140	]);
	coversion_element	u122(z[	147	:	144	],j[	9	],x[	147	:	144	]);
	coversion_element	u123(z[	151	:	148	],j[	9	],x[	151	:	148	]);
	coversion_element	u124(z[	155	:	152	],j[	9	],x[	155	:	152	]);
	coversion_element	u125(z[	159	:	156	],j[	9	],x[	159	:	156	]);
	coversion_element	u126(z[	163	:	160	],j[	10	],x[	163	:	160	]);
	coversion_element	u127(z[	167	:	164	],j[	10	],x[	167	:	164	]);
	coversion_element	u128(z[	171	:	168	],j[	10	],x[	171	:	168	]);
	coversion_element	u129(z[	175	:	172	],j[	10	],x[	175	:	172	]);
	coversion_element	u130(z[	179	:	176	],j[	11	],x[	179	:	176	]);
	coversion_element	u131(z[	183	:	180	],j[	11	],x[	183	:	180	]);
	coversion_element	u132(z[	187	:	184	],j[	11	],x[	187	:	184	]);
	coversion_element	u133(z[	191	:	188	],j[	11	],x[	191	:	188	]);
	coversion_element	u134(z[	195	:	192	],j[	12	],x[	195	:	192	]);
	coversion_element	u135(z[	199	:	196	],j[	12	],x[	199	:	196	]);
	coversion_element	u136(z[	203	:	200	],j[	12	],x[	203	:	200	]);
	coversion_element	u137(z[	207	:	204	],j[	12	],x[	207	:	204	]);
	coversion_element	u138(z[	211	:	208	],j[	13	],x[	211	:	208	]);
	coversion_element	u139(z[	215	:	212	],j[	13	],x[	215	:	212	]);
	coversion_element	u140(z[	219	:	216	],j[	13	],x[	219	:	216	]);
	coversion_element	u141(z[	223	:	220	],j[	13	],x[	223	:	220	]);
	coversion_element	u142(z[	227	:	224	],j[	14	],x[	227	:	224	]);
	coversion_element	u143(z[	231	:	228	],j[	14	],x[	231	:	228	]);
	coversion_element	u144(z[	235	:	232	],j[	14	],x[	235	:	232	]);
	coversion_element	u145(z[	239	:	236	],j[	14	],x[	239	:	236	]);
	coversion_element	u146(z[	243	:	240	],j[	15	],x[	243	:	240	]);
	coversion_element	u147(z[	247	:	244	],j[	15	],x[	247	:	244	]);
	coversion_element	u148(z[	251	:	248	],j[	15	],x[	251	:	248	]);
	coversion_element	u149(z[	255	:	252	],j[	15	],x[	255	:	252	]);



	//sixth layer
	

	assign r[	0	]=j[	0	] | j [	1	] | j [	2	] | j [	3	];
	assign r[	1	]=j[	4	] | j [	5	] | j [	6	] | j [	7	];
	assign r[	2	]=j[	8	] | j [	9	] | j [	10	] | j [	11	];
	assign r[	3	]=j[	12	] | j [	13	] | j [	14	] | j [	15	];

	//seventh layer
	PriorityEncoder_4Bit d1(r[3:0],h[3:0],v85);

	//eighth layer
	//assign t[0] = h[0]|h[1]|h[2]|h[3];

	coversion_element	j86	(x[	3	:	0	],h[	0	],c[	3	:	0	]);
	coversion_element	j87	(x[	7	:	4	],h[	0	],c[	7	:	4	]);
	coversion_element	j88	(x[	11	:	8	],h[	0	],c[	11	:	8	]);
	coversion_element	j89	(x[	15	:	12	],h[	0	],c[	15	:	12	]);
	coversion_element	j90	(x[	19	:	16	],h[	0	],c[	19	:	16	]);
	coversion_element	j91	(x[	23	:	20	],h[	0	],c[	23	:	20	]);
	coversion_element	j92	(x[	27	:	24	],h[	0	],c[	27	:	24	]);
	coversion_element	j93	(x[	31	:	28	],h[	0	],c[	31	:	28	]);
	coversion_element	j94	(x[	35	:	32	],h[	0	],c[	35	:	32	]);
	coversion_element	j95	(x[	39	:	36	],h[	0	],c[	39	:	36	]);
	coversion_element	j96	(x[	43	:	40	],h[	0	],c[	43	:	40	]);
	coversion_element	j97	(x[	47	:	44	],h[	0	],c[	47	:	44	]);
	coversion_element	j98	(x[	51	:	48	],h[	0	],c[	51	:	48	]);
	coversion_element	j99	(x[	55	:	52	],h[	0	],c[	55	:	52	]);
	coversion_element	j100	(x[	59	:	56	],h[	0	],c[	59	:	56	]);
	coversion_element	j101	(x[	63	:	60	],h[	0	],c[	63	:	60	]);
	coversion_element	j102	(x[	67	:	64	],h[	1	],c[	67	:	64	]);
	coversion_element	j103	(x[	71	:	68	],h[	1	],c[	71	:	68	]);
	coversion_element	j104	(x[	75	:	72	],h[	1	],c[	75	:	72	]);
	coversion_element	j105	(x[	79	:	76	],h[	1	],c[	79	:	76	]);
	coversion_element	j106	(x[	83	:	80	],h[	1	],c[	83	:	80	]);
	coversion_element	j107	(x[	87	:	84	],h[	1	],c[	87	:	84	]);
	coversion_element	j108	(x[	91	:	88	],h[	1	],c[	91	:	88	]);
	coversion_element	j109	(x[	95	:	92	],h[	1	],c[	95	:	92	]);
	coversion_element	j110	(x[	99	:	96	],h[	1	],c[	99	:	96	]);
	coversion_element	j111	(x[	103	:	100	],h[	1	],c[	103	:	100	]);
	coversion_element	j112	(x[	107	:	104	],h[	1	],c[	107	:	104	]);
	coversion_element	j113	(x[	111	:	108	],h[	1	],c[	111	:	108	]);
	coversion_element	j114	(x[	115	:	112	],h[	1	],c[	115	:	112	]);
	coversion_element	j115	(x[	119	:	116	],h[	1	],c[	119	:	116	]);
	coversion_element	j116	(x[	123	:	120	],h[	1	],c[	123	:	120	]);
	coversion_element	j117	(x[	127	:	124	],h[	1	],c[	127	:	124	]);
	coversion_element	j118	(x[	131	:	128	],h[	2	],c[	131	:	128	]);
	coversion_element	j119	(x[	135	:	132	],h[	2	],c[	135	:	132	]);
	coversion_element	j120	(x[	139	:	136	],h[	2	],c[	139	:	136	]);
	coversion_element	j121	(x[	143	:	140	],h[	2	],c[	143	:	140	]);
	coversion_element	j122	(x[	147	:	144	],h[	2	],c[	147	:	144	]);
	coversion_element	j123	(x[	151	:	148	],h[	2	],c[	151	:	148	]);
	coversion_element	j124	(x[	155	:	152	],h[	2	],c[	155	:	152	]);
	coversion_element	j125	(x[	159	:	156	],h[	2	],c[	159	:	156	]);
	coversion_element	j126	(x[	163	:	160	],h[	2	],c[	163	:	160	]);
	coversion_element	j127	(x[	167	:	164	],h[	2	],c[	167	:	164	]);
	coversion_element	j128	(x[	171	:	168	],h[	2	],c[	171	:	168	]);
	coversion_element	j129	(x[	175	:	172	],h[	2	],c[	175	:	172	]);
	coversion_element	j130	(x[	179	:	176	],h[	2	],c[	179	:	176	]);
	coversion_element	j131	(x[	183	:	180	],h[	2	],c[	183	:	180	]);
	coversion_element	j132	(x[	187	:	184	],h[	2	],c[	187	:	184	]);
	coversion_element	j133	(x[	191	:	188	],h[	2	],c[	191	:	188	]);
	coversion_element	j134	(x[	195	:	192	],h[	3	],c[	195	:	192	]);
	coversion_element	j135	(x[	199	:	196	],h[	3	],c[	199	:	196	]);
	coversion_element	j136	(x[	203	:	200	],h[	3	],c[	203	:	200	]);
	coversion_element	j137	(x[	207	:	204	],h[	3	],c[	207	:	204	]);
	coversion_element	j138	(x[	211	:	208	],h[	3	],c[	211	:	208	]);
	coversion_element	j139	(x[	215	:	212	],h[	3	],c[	215	:	212	]);
	coversion_element	j140	(x[	219	:	216	],h[	3	],c[	219	:	216	]);
	coversion_element	j141	(x[	223	:	220	],h[	3	],c[	223	:	220	]);
	coversion_element	j142	(x[	227	:	224	],h[	3	],c[	227	:	224	]);
	coversion_element	j143	(x[	231	:	228	],h[	3	],c[	231	:	228	]);
	coversion_element	j144	(x[	235	:	232	],h[	3	],c[	235	:	232	]);
	coversion_element	j145	(x[	239	:	236	],h[	3	],c[	239	:	236	]);
	coversion_element	j146	(x[	243	:	240	],h[	3	],c[	243	:	240	]);
	coversion_element	j147	(x[	247	:	244	],h[	3	],c[	247	:	244	]);
	coversion_element	j148	(x[	251	:	248	],h[	3	],c[	251	:	248	]);
	coversion_element	j149	(x[	255	:	252	],h[	3	],c[	255	:	252	]);


endmodule

module pe_256bit_Test();
reg [255:0] D;
wire [255:0] Y;
wire V;

pe_256bit i(D,Y,V);

initial 
begin
// Initialize Inputs
D = 0;

#100;        
#2 D = 256'b00001;
#2 D = 256'b1110;
#2 D = 256'b00101;
#2 D = 256'b0110;
#2 D = 256'b0001;
/*#2 D = 4'b1010;
#2 D = 4'b1111;*/
end 
initial 
begin
$monitor("time=",$time,, "D=%b : Y=%b V=%b",D,Y,V); 
end
endmodule