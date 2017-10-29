module pe_256bit(input [255:0]d, output [7:0]y, output v);
	reg v;
	reg [7:0]y;

	wire [250:0]w;
	wire [250:0]p,k;

	//first layer
	PriorityEncoder_4Bit	(d[ 3   :   0   ],y[    3   :   0   ],v);
	PriorityEncoder_4Bit	(d[	7	:	4	],y[	7	:	4	],v);
	PriorityEncoder_4Bit	(d[	11	:	8	],y[	11	:	8	],v);
	PriorityEncoder_4Bit	(d[	15	:	12	],y[	15	:	12	],v);
	PriorityEncoder_4Bit	(d[	19	:	16	],y[	19	:	16	],v);
	PriorityEncoder_4Bit	(d[	23	:	20	],y[	23	:	20	],v);
	PriorityEncoder_4Bit	(d[	27	:	24	],y[	27	:	24	],v);
	PriorityEncoder_4Bit	(d[	31	:	28	],y[	31	:	28	],v);
	PriorityEncoder_4Bit	(d[	35	:	32	],y[	35	:	32	],v);
	PriorityEncoder_4Bit	(d[	39	:	36	],y[	39	:	36	],v);
	PriorityEncoder_4Bit	(d[	43	:	40	],y[	43	:	40	],v);
	PriorityEncoder_4Bit	(d[	47	:	44	],y[	47	:	44	],v);
	PriorityEncoder_4Bit	(d[	51	:	48	],y[	51	:	48	],v);
	PriorityEncoder_4Bit	(d[	55	:	52	],y[	55	:	52	],v);
	PriorityEncoder_4Bit	(d[	59	:	56	],y[	59	:	56	],v);
	PriorityEncoder_4Bit	(d[	63	:	60	],y[	63	:	60	],v);
	PriorityEncoder_4Bit	(d[	67	:	64	],y[	67	:	64	],v);
	PriorityEncoder_4Bit	(d[	71	:	68	],y[	71	:	68	],v);
	PriorityEncoder_4Bit	(d[	75	:	72	],y[	75	:	72	],v);
	PriorityEncoder_4Bit	(d[	79	:	76	],y[	79	:	76	],v);
	PriorityEncoder_4Bit	(d[	83	:	80	],y[	83	:	80	],v);
	PriorityEncoder_4Bit	(d[	87	:	84	],y[	87	:	84	],v);
	PriorityEncoder_4Bit	(d[	91	:	88	],y[	91	:	88	],v);
	PriorityEncoder_4Bit	(d[	95	:	92	],y[	95	:	92	],v);
	PriorityEncoder_4Bit	(d[	99	:	96	],y[	99	:	96	],v);
	PriorityEncoder_4Bit	(d[	103	:	100	],y[	103	:	100	],v);
	PriorityEncoder_4Bit	(d[	107	:	104	],y[	107	:	104	],v);
	PriorityEncoder_4Bit	(d[	111	:	108	],y[	111	:	108	],v);
	PriorityEncoder_4Bit	(d[	115	:	112	],y[	115	:	112	],v);
	PriorityEncoder_4Bit	(d[	119	:	116	],y[	119	:	116	],v);
	PriorityEncoder_4Bit	(d[	123	:	120	],y[	123	:	120	],v);
	PriorityEncoder_4Bit	(d[	127	:	124	],y[	127	:	124	],v);
	PriorityEncoder_4Bit	(d[	131	:	128	],y[	131	:	128	],v);
	PriorityEncoder_4Bit	(d[	135	:	132	],y[	135	:	132	],v);
	PriorityEncoder_4Bit	(d[	139	:	136	],y[	139	:	136	],v);
	PriorityEncoder_4Bit	(d[	143	:	140	],y[	143	:	140	],v);
	PriorityEncoder_4Bit	(d[	147	:	144	],y[	147	:	144	],v);
	PriorityEncoder_4Bit	(d[	151	:	148	],y[	151	:	148	],v);
	PriorityEncoder_4Bit	(d[	155	:	152	],y[	155	:	152	],v);
	PriorityEncoder_4Bit	(d[	159	:	156	],y[	159	:	156	],v);
	PriorityEncoder_4Bit	(d[	163	:	160	],y[	163	:	160	],v);
	PriorityEncoder_4Bit	(d[	167	:	164	],y[	167	:	164	],v);
	PriorityEncoder_4Bit	(d[	171	:	168	],y[	171	:	168	],v);
	PriorityEncoder_4Bit	(d[	175	:	172	],y[	175	:	172	],v);
	PriorityEncoder_4Bit	(d[	179	:	176	],y[	179	:	176	],v);
	PriorityEncoder_4Bit	(d[	183	:	180	],y[	183	:	180	],v);
	PriorityEncoder_4Bit	(d[	187	:	184	],y[	187	:	184	],v);
	PriorityEncoder_4Bit	(d[	191	:	188	],y[	191	:	188	],v);
	PriorityEncoder_4Bit	(d[	195	:	192	],y[	195	:	192	],v);
	PriorityEncoder_4Bit	(d[	199	:	196	],y[	199	:	196	],v);
	PriorityEncoder_4Bit	(d[	203	:	200	],y[	203	:	200	],v);
	PriorityEncoder_4Bit	(d[	207	:	204	],y[	207	:	204	],v);
	PriorityEncoder_4Bit	(d[	211	:	208	],y[	211	:	208	],v);
	PriorityEncoder_4Bit	(d[	215	:	212	],y[	215	:	212	],v);
	PriorityEncoder_4Bit	(d[	219	:	216	],y[	219	:	216	],v);
	PriorityEncoder_4Bit	(d[	223	:	220	],y[	223	:	220	],v);
	PriorityEncoder_4Bit	(d[	227	:	224	],y[	227	:	224	],v);
	PriorityEncoder_4Bit	(d[	231	:	228	],y[	231	:	228	],v);
	PriorityEncoder_4Bit	(d[	235	:	232	],y[	235	:	232	],v);
	PriorityEncoder_4Bit	(d[	239	:	236	],y[	239	:	236	],v);
	PriorityEncoder_4Bit	(d[	243	:	240	],y[	243	:	240	],v);
	PriorityEncoder_4Bit	(d[	247	:	244	],y[	247	:	244	],v);
	PriorityEncoder_4Bit	(d[	251	:	248	],y[	251	:	248	],v);
	PriorityEncoder_4Bit	(d[	255	:	252	],y[	255	:	252	],v);

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
	PriorityEncoder_4Bit	(p[	3	:	0	],k[	3	:	0	],v);
	PriorityEncoder_4Bit	(p[	7	:	4	],k[	7	:	4	],v);
	PriorityEncoder_4Bit	(p[	11	:	8	],k[	11	:	8	],v);
	PriorityEncoder_4Bit	(p[	15	:	12	],k[	15	:	12	],v);
	PriorityEncoder_4Bit	(p[	19	:	16	],k[	19	:	16	],v);
	PriorityEncoder_4Bit	(p[	23	:	20	],k[	23	:	20	],v);
	PriorityEncoder_4Bit	(p[	27	:	24	],k[	27	:	24	],v);
	PriorityEncoder_4Bit	(p[	31	:	28	],k[	31	:	28	],v);
	PriorityEncoder_4Bit	(p[	35	:	32	],k[	35	:	32	],v);
	PriorityEncoder_4Bit	(p[	39	:	36	],k[	39	:	36	],v);
	PriorityEncoder_4Bit	(p[	43	:	40	],k[	43	:	40	],v);
	PriorityEncoder_4Bit	(p[	47	:	44	],k[	47	:	44	],v);
	PriorityEncoder_4Bit	(p[	51	:	48	],k[	51	:	48	],v);
	PriorityEncoder_4Bit	(p[	55	:	52	],k[	55	:	52	],v);
	PriorityEncoder_4Bit	(p[	59	:	56	],k[	59	:	56	],v);
	PriorityEncoder_4Bit	(p[	63	:	60	],k[	63	:	60	],v);

	//fourth layer
	coversion_element(y[3:0],k[1],z[7:4]);
	coversion_element(y[7:4],k[0],z[7:4]);
	coversion_element(y[	11	:	8	],k[	2	],z[	11	:	8	]);
	coversion_element(y[	15	:	12	],k[	3	],z[	15	:	12	]);
	coversion_element(y[	19	:	16	],k[	4	],z[	19	:	16	]);
	coversion_element(y[	23	:	20	],k[	5	],z[	23	:	20	]);
	coversion_element(y[	27	:	24	],k[	6	],z[	27	:	24	]);
	coversion_element(y[	31	:	28	],k[	7	],z[	31	:	28	]);
	coversion_element(y[	35	:	32	],k[	8	],z[	35	:	32	]);
	coversion_element(y[	39	:	36	],k[	9	],z[	39	:	36	]);
	coversion_element(y[	43	:	40	],k[	10	],z[	43	:	40	]);
	coversion_element(y[	47	:	44	],k[	11	],z[	47	:	44	]);
	coversion_element(y[	51	:	48	],k[	12	],z[	51	:	48	]);
	coversion_element(y[	55	:	52	],k[	13	],z[	55	:	52	]);
	coversion_element(y[	59	:	56	],k[	14	],z[	59	:	56	]);
	coversion_element(y[	63	:	60	],k[	15	],z[	63	:	60	]);
	coversion_element(y[	67	:	64	],k[	16	],z[	67	:	64	]);
	coversion_element(y[	71	:	68	],k[	17	],z[	71	:	68	]);
	coversion_element(y[	75	:	72	],k[	18	],z[	75	:	72	]);
	coversion_element(y[	79	:	76	],k[	19	],z[	79	:	76	]);
	coversion_element(y[	83	:	80	],k[	20	],z[	83	:	80	]);
	coversion_element(y[	87	:	84	],k[	21	],z[	87	:	84	]);
	coversion_element(y[	91	:	88	],k[	22	],z[	91	:	88	]);
	coversion_element(y[	95	:	92	],k[	23	],z[	95	:	92	]);
	coversion_element(y[	99	:	96	],k[	24	],z[	99	:	96	]);
	coversion_element(y[	103	:	100	],k[	25	],z[	103	:	100	]);
	coversion_element(y[	107	:	104	],k[	26	],z[	107	:	104	]);
	coversion_element(y[	111	:	108	],k[	27	],z[	111	:	108	]);
	coversion_element(y[	115	:	112	],k[	28	],z[	115	:	112	]);
	coversion_element(y[	119	:	116	],k[	29	],z[	119	:	116	]);
	coversion_element(y[	123	:	120	],k[	30	],z[	123	:	120	]);
	coversion_element(y[	127	:	124	],k[	31	],z[	127	:	124	]);
	coversion_element(y[	131	:	128	],k[	32	],z[	131	:	128	]);
	coversion_element(y[	135	:	132	],k[	33	],z[	135	:	132	]);
	coversion_element(y[	139	:	136	],k[	34	],z[	139	:	136	]);
	coversion_element(y[	143	:	140	],k[	35	],z[	143	:	140	]);
	coversion_element(y[	147	:	144	],k[	36	],z[	147	:	144	]);
	coversion_element(y[	151	:	148	],k[	37	],z[	151	:	148	]);
	coversion_element(y[	155	:	152	],k[	38	],z[	155	:	152	]);
	coversion_element(y[	159	:	156	],k[	39	],z[	159	:	156	]);
	coversion_element(y[	163	:	160	],k[	40	],z[	163	:	160	]);
	coversion_element(y[	167	:	164	],k[	41	],z[	167	:	164	]);
	coversion_element(y[	171	:	168	],k[	42	],z[	171	:	168	]);
	coversion_element(y[	175	:	172	],k[	43	],z[	175	:	172	]);
	coversion_element(y[	179	:	176	],k[	44	],z[	179	:	176	]);
	coversion_element(y[	183	:	180	],k[	45	],z[	183	:	180	]);
	coversion_element(y[	187	:	184	],k[	46	],z[	187	:	184	]);
	coversion_element(y[	191	:	188	],k[	47	],z[	191	:	188	]);
	coversion_element(y[	195	:	192	],k[	48	],z[	195	:	192	]);
	coversion_element(y[	199	:	196	],k[	49	],z[	199	:	196	]);
	coversion_element(y[	203	:	200	],k[	50	],z[	203	:	200	]);
	coversion_element(y[	207	:	204	],k[	51	],z[	207	:	204	]);
	coversion_element(y[	211	:	208	],k[	52	],z[	211	:	208	]);
	coversion_element(y[	215	:	212	],k[	53	],z[	215	:	212	]);
	coversion_element(y[	219	:	216	],k[	54	],z[	219	:	216	]);
	coversion_element(y[	223	:	220	],k[	55	],z[	223	:	220	]);
	coversion_element(y[	227	:	224	],k[	56	],z[	227	:	224	]);
	coversion_element(y[	231	:	228	],k[	57	],z[	231	:	228	]);
	coversion_element(y[	235	:	232	],k[	58	],z[	235	:	232	]);
	coversion_element(y[	239	:	236	],k[	59	],z[	239	:	236	]);
	coversion_element(y[	243	:	240	],k[	60	],z[	243	:	240	]);
	coversion_element(y[	247	:	244	],k[	61	],z[	247	:	244	]);
	coversion_element(y[	251	:	248	],k[	62	],z[	251	:	248	]);
	coversion_element(y[	255	:	252	],k[	63	],z[	255	:	252	]);

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
	PriorityEncoder_4Bit	(q[	3	:	0	],j[	3	:	0	],v);	
	PriorityEncoder_4Bit	(q[	7	:	4	],j[	7	:	4	],v);	
	PriorityEncoder_4Bit	(q[	11	:	8	],j[	11	:	8	],v);
	PriorityEncoder_4Bit	(q[	15	:	12	],j[	15	:	12	],v);

	//sixth layer	
	/*coversion_element(z[3:0],j[0],x[3:0]);
	coversion_element(z[7:4],j[1],x[7:4]);
	coversion_element(z[11:8],j[2],x[11:8]);
	coversion_element(z[15:12],j[3],x[15:12]);
	/*
	coversion_element(z[19:16],j[4],x[19:16]);
	coversion_element(z[23:20],j[5],x[23:20]);
	coversion_element(z[27:24],j[6],x[27:24]);
	coversion_element(z[31:28],j[7],x[31:28]);
	coversion_element(z[35:32],j[8],x[35:32]);
	coversion_element(z[39:36],j[9],x[39:36]);
	coversion_element(z[43:40],j[10],x[43:40]);
	coversion_element(z[47:44],j[11],x[47:44]);
	coversion_element(z[51:48],j[12],x[51:48]);
	coversion_element(z[55:52],j[13],x[55:52]);
	coversion_element(z[59:56],j[14],x[59:56]);
	coversion_element(z[63:60],j[15],x[63:60]);
	*/

	assign r[	0	]=j[	0	] | j [	1	] | j [	2	] | j [	3	];
	assign r[	1	]=j[	4	] | j [	5	] | j [	6	] | j [	7	];
	assign r[	2	]=j[	8	] | j [	9	] | j [	10	] | j [	11	];
	assign r[	3	]=j[	12	] | j [	13	] | j [	14	] | j [	15	];

	//seventh layer
	PriorityEncoder_4Bit(r[3:0],h[3:0],v);

	//eighth layer
	assign t[0] = r[0]|r[1]|r[2]|r[3];

	coversion_element(j[3:0],h[0],c[3:0]);
	coversion_element(j[7:4],h[1],c[7:4]);
	coversion_element(j[11:8],h[2],c[11:8]);
	coversion_element(j[15:12],h[3],c[15:12]);

endmodule