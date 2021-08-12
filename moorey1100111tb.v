module moorey1100111test;
reg in;
reg clk;
reg rst;

wire out;

moorey1100111 uut(.in(in), .clk(clk), .rst(rst), .out(out));

initial 
begin
in = 0;
clk = 0;
rst = 0;
#10;

rst = 1;
#10;

rst = 0;
#10;

/////////////////////////////////
in = 0;
#20;

in = 0;
#20;

in = 1;
#20;

in = 1;
#20;

in = 0;
#20;

in = 0;
#20;

in = 1;
#20;

in = 1;
#20;

in = 1;
#20;

in = 0;
#20;

in = 0;
#20;

in = 1;
#20;

in = 1;
#20;

in = 1;
#20;

in = 0;
#20;

in = 1;
#20;

in = 1;
#20;

in = 0;
#20;

in = 0;
#20;

in = 1;
#20;

in = 1;
#20;

in = 1;
#20;

#500 $finish;
end

always #10 clk = ~clk;
endmodule
