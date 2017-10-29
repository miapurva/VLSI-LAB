//black dot Box Module
module blackBox(gL,aL,gR,gOut);

input gL,aL,gR;
output gOut;

assign gOut = gL | (aL&gR);

endmodule

//white dot box Module
module whiteBox(gL,aL,gR,aR,gOut,aOut);

input gL,aL,gR,aR;
output gOut,aOut;

assign gOut = gL | (aL&gR);
assign aOut = aL&aR;

endmodule
