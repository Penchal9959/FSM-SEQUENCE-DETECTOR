module moorey1100111(
input in,
input clk,
input rst, 
output reg out
);

reg[2:0]cst;
reg[2:0]nst;
parameter s0 = 3'b000;
parameter s1 = 3'b001;
parameter s2 = 3'b010;
parameter s3 = 3'b011;
parameter s4 = 3'b100;
parameter s5 = 3'b101;
parameter s6 = 3'b110;
parameter s7 = 3'b111;

always@(posedge clk)
begin
if(rst)
begin
out = 1'b0;
cst = s0;
nst = s0;
end

else
begin
cst = nst;
case(cst)

s0:
begin
out=1'b0;
if(in)
begin
nst=s1;
end
else
begin
//out=1'b0;
nst=s0;
end
end


s1:
begin
out=1'b0;
if(in)
begin
nst=s2;
end
else
begin
//out=1'b0;
nst=s0;
end
end

s2:
begin
out=1'b0;
if(in)
begin
nst=s2;
end
else
begin
//out=1'b0;
nst=s3;
end
end

s3:
begin
out=1'b0;
if(in)
begin
nst=s1;
end
else
begin
//out=1'b0;
nst=s4; 
end
end

s4:
begin
out=1'b0;
if(in)
begin
nst=s5;
end
else
begin
//out=1'b0;
nst=s0; 
end
end

s5:
begin
out=1'b0;
if(in)
begin
nst=s6;
end
else
begin
//out=1'b0;
nst=s0; 
end
end

s6:
begin
out=1'b0;
if(in)
begin
nst=s7;
end
else
begin
//out=1'b0;
nst=s3; 
end
end

s7:
begin
out=1'b1;
if(in)
begin
nst=s1;
end
else
begin
//out=1'b0;
nst=s0; 
end
end
endcase
end
end
endmodule
