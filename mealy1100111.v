module mealydesign(
input in,
input clk,
input rst, 
output reg out
);

reg[2:0]cst;
reg[2:0]nst;
//parameter [1:0]s0 = 2'b000;
//parameter [1:0]s1 = 2'b001;
//parameter [1:0]s2 = 2'b010;
//parameter [1:0]s3 = 2'b011;
//parameter [1:0]s4 = 3'b100;
//parameter [1:0]s5 = 3'b101;
//parameter [1:0]s6 = 3'b110;

parameter s0 = 3'b000;
parameter s1 = 3'b001;
parameter s2 = 3'b010;
parameter s3 = 3'b011;
parameter s4 = 3'b100;
parameter s5 = 3'b101;
parameter s6 = 3'b110;

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

s0:if(in)
begin
out=1'b0;
nst=s1;
end
else
begin
out=1'b0;
nst=s0;
end


s1:if(in)
begin
out=1'b0;
nst=s2;
end
else
begin
out=1'b0;
nst=s0;
end

s2:if(in)
begin
out=1'b0;
nst=s2;
end
else
begin
out=1'b0;
nst=s3;
end

s3:if(in)
begin
out=1'b0;
nst=s1;
end
else
begin
out=1'b0;
nst=s4;
end

s4:if(in)
begin
out=1'b0;
nst=s5;
end
else
begin
out=1'b0;
nst=s0;
end

s5:if(in)
begin
out=1'b0;
nst=s6;
end
else
begin
out=1'b0;
nst=s0;
end

s6:if(in)
begin
out=1'b1;
nst=s0;
end
else
begin
out=1'b0;
nst=s0;
end

endcase
end
end
endmodule
