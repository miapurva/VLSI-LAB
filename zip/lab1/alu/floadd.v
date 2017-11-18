module fa(a,b,c,s,co);//1 bit fulladder
input a,b,c;
output s,co;
assign s=a^b^c;
assign co=(a&b)|(b&c)|(c&a);
endmodule

module ab(a,b,c,s,coo);//4 bit adder using fulladder
input [3:0]a,b;
input c;
output [3:0]s;
output coo;
wire [2:0]co;
fa f1(a[0],b[0],c,s[0],co[0]);
fa f2(a[1],b[1],co[0],s[1],co[1]);
fa f3(a[2],b[2],co[1],s[2],co[2]);
fa f4(a[3],b[3],co[2],s[3],coo);
endmodule

module bb(a,b,c,s,coo);//8 bit addition using 4 bit addition
input [7:0]a,b;
input c;
output [7:0]s;
output coo;
wire [3:0]a1,a2,b1,b2,s1,s2;
wire co;
assign a1[0]=a[0];
assign a1[1]=a[1];
assign a1[2]=a[2];
assign a1[3]=a[3];
assign a2[0]=a[4];
assign a2[1]=a[5];
assign a2[2]=a[6];
assign a2[3]=a[7];
assign b1[0]=b[0];
assign b1[1]=b[1];
assign b1[2]=b[2];
assign b1[3]=b[3];
assign b2[0]=b[4];
assign b2[1]=b[5];
assign b2[2]=b[6];
assign b2[3]=b[7];
ab f1(a1,b1,c,s1,co);
ab f2(a2,b2,co,s2,coo);
assign s[0]=s1[0];
assign s[1]=s1[1];
assign s[2]=s1[2];
assign s[3]=s1[3];
assign s[4]=s2[0];
assign s[5]=s2[1];
assign s[6]=s2[2];
assign s[7]=s2[3];
endmodule

module cb(a,b,c,s,coo);//16 bit addtition using 8 bit addiitn
input [15:0]a,b;
input c;
output [15:0]s;
output coo;

wire co;

bb f1(a[7:0],b[7:0],c,s[7:0],co);
bb f2(a[15:8],b[15:8],co,s[15:8],coo);

endmodule

module db(a,b,c,s,coo);// 32 using 16
input [31:0]a,b;
input c;
output [31:0]s;
output coo;

wire co;

cb f1(a[15:0],b[15:0],c,s[15:0],co);
cb f2(a[31:16],b[31:16],co,s[31:16],coo);

endmodule


module floadd(as,ae,a,bs,be,b,rs,re,r);
input as,bs;
input [7:0]ae,be;
reg [7:0]ae1,be1;
input [22:0]a,b;
output rs;
reg rs;
output [7:0]re;
wire [7:0]re;
reg [7:0]re1;
wire [7:0]re2;
output [22:0]r;
wire [22:0]r;
reg [23:0]r1;
wire [23:0]r2;
wire [7:0]negae,negbe,asb,bsa;
wire s1,s2;
assign negae=~ae;
assign negbe=~be;
bb f1(ae,negbe,1'b1,asb,s1);
bb f2(be,negae,1'b1,bsa,s2);
reg [22:0]b1,a1;
always@(*)
begin
a1=a;
b1=b;
be1=be;
ae1=ae;
if(ae>be)
begin
b1=b>>asb;
a1=a;
be1=ae;
ae1=ae;
end
else
if(be>ae)
begin
a1=a>>bsa;
b1=b;
ae1=be;
be1=be;
end
end
wire s3,s4,s5;
wire [31:0]r5,r6;
bb f5(ae1,8'b0,1'b1,re2,s5);
db f3({8'b0,1'b1,a1},{8'b0,1'b1,b1},1'b0,r5,s3);
db f4({8'b0,1'b1,a1},{8'b1,1'b1,~b1},1'b1,r6,s4);
always@(*)
begin
if(as^bs==0)
begin
rs=as;
r1=r5[23:0];
re1=ae1;
if(r5[24]==1)
begin
r1=r5[24:1];
re1=re2;
end
end
else
begin
re1=ae1;
r1=r6[23:0];
if(r6[24]==1)
rs=1'b0;
else
rs=1'b1;
end
end
sup1 f6(re1,re,r1,r2);
assign r=r2[22:0];
endmodule

module sup1(re1,re,r1,r);
input [7:0]re1;
input [23:0]r1;
output [7:0]re;
wire [7:0]re;
output [23:0]r;
wire [23:0]r;
wire [7:0]re2,re3,re4,re5,re6,re7,re8,re9,re10,re11,re12,re13,re14,re15,re16,re17,re18,re19,re20,re21,re22;
wire [23:0]r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22;
sup2 f1(re1,re2,r1,r2);
sup2 f2(re2,re3,r2,r3);
sup2 f3(re3,re4,r3,r4);
sup2 f4(re4,re5,r4,r5);
sup2 f5(re5,re6,r5,r6);
sup2 f6(re6,re7,r6,r7);
sup2 f7(re7,re8,r7,r8);
sup2 f8(re8,re9,r8,r9);
sup2 f9(re9,re10,r9,r10);
sup2 f10(re10,re11,r10,r11);
sup2 f11(re11,re12,r11,r12);
sup2 f12(re12,re13,r12,r13);
sup2 f13(re13,re14,r13,r14);
sup2 f14(re14,re15,r14,r15);
sup2 f15(re15,re16,r15,r16);
sup2 f16(re16,re17,r16,r17);
sup2 f17(re17,re18,r17,r18);
sup2 f18(re18,re19,r18,r19);
sup2 f19(re19,re20,r19,r20);
sup2 f20(re20,re21,r20,r21);
sup2 f21(re21,re22,r21,r22);
sup2 f22(re22,re,r22,r);
endmodule

module sup2(re1,re,r1,r);
input [7:0]re1;
input [23:0]r1;
output [7:0]re;
reg re;
output [23:0]r;
reg r;
wire [7:0]re2;
wire s1;
bb f1(re1,8'b11111111,1'b0,re2,s1);
always@(*)
begin
re=re1;
r=r1;
if(r1[23]!=1)
begin
r=r1<<1;
re=re2;
end
end
endmodule
