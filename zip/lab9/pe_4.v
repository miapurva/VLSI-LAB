module priority4bit(D,Y,V);
 input [3:0] D;
 output [3:0] Y;
 output V;
  
 assign Y[0]=1&D[0];
 assign Y[1]=1&D[1]&~D[0];
 assign Y[2]=1&D[2]&~D[0]&~D[1];
 assign Y[3]=1&D[3]&~D[0]&~D[1]&~D[2];
 
 assign V = D[0]|D[1]|D[2]|D[3];
 
endmodule
