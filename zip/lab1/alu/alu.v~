`include "memory.v"
`include "floadd.v"
module alu(opcode,rgstr1,rgstr2,out,address);

input [4:0] opcode,address;
input[31:0] rgstr1,rgstr2;
output [31:0] out;
reg [31:0] out;
wire [31:0] out1;
floadd f1(rgstr1[31],rgstr1[30:23],rgstr1[22:0],rgstr2[31],rgstr2[30:23],rgstr2[22:0],out1[31],out1[30:23],out1[22:0]);
parameter ADD   = 5'b00000;
parameter ADC   = 5'b00001;
parameter SUB   = 5'b00010;
parameter SBB   = 5'b00011;
parameter MUL   = 5'b00100;
parameter FADD  = 5'b00101;
parameter FSUB  = 5'b00110;
parameter FMUL  = 5'b00111;
parameter AND   = 5'b01000;
parameter OR    = 5'b01001;
parameter XOR   = 5'b01010;
parameter NAND  = 5'b01011;
parameter NOR   = 5'b01100;
parameter XNOR  = 5'b01101;
parameter NOT   = 5'b01110;
parameter NEG   = 5'b01111;
parameter LOAD  = 5'b10000;
parameter STORE = 5'b11000;

reg [4:0] madd;
reg mread;
reg [31:0] min;
wire [31:0] mout;
memory memory1(madd,min,mout,mread);
reg   [31:0]  mem  [31:0];

initial
begin

//mem[0]=32'd0;
mem[1]=32'd1;
mem[2]=32'd2;
mem[3]=32'd3;
mem[4]=32'd4;
mem[5]=32'd5;
mem[6]=32'd6;
mem[7]=32'd7;
mem[8]=32'd8;
mem[9]=32'd9;
mem[10]=32'd10;
mem[11]=32'd11;
mem[12]=32'd12;
mem[13]=32'd13;
mem[14]=32'd14;
mem[15]=32'd15;
mem[16]=32'd16;
mem[17]=32'd17;
mem[18]=32'd18;
mem[19]=32'd19;
mem[20]=32'd20;
mem[21]=32'd21;
mem[22]=32'd22;
mem[23]=32'd23;
mem[24]=32'd24;
mem[25]=32'd25;
mem[26]=32'd26;
mem[27]=32'd27;
mem[28]=32'd28;
mem[29]=32'd29;
mem[30]=32'd30;
mem[31]=32'd31;

end

always @(*) 
begin

case (opcode )
                                           
                     
	ADD:begin  
	
	out= rgstr1+rgstr2;            
                                
         end	
    FADD:begin
		
		out[31:0]=out1[31:0];
		
		end
        SUB:begin       
                        
                            
          end
                        
        ADC:begin
                        
                              
         end
                        
        MUL:begin 
                        
                              
                        
         end
                
        AND:begin
                        
                               
                       
         end
                        
        OR:begin
                        
                              
                       
         end
                        
        XOR:begin
                        
                               
                       
         end
                        
        NAND:begin
                        
                                
                       
         end
                        
        NOR:begin
                       
                               
                       
         end
                        
        NOT:begin
                        
                               
         end
                        
         NEG:begin
                        
                           
         end
                        
         LOAD: begin
                             
          out=mem[address] ;
                                
               end
                        
         STORE:begin
                        
                                
               end 
                        
                        
                        		
endcase

end

endmodule
			
                
