module melay1100111test;
reg in;
reg clk;
reg rst;

wire out;

//mealydesign DUT(.in(in), .clk(clk), .rst(rst), .out(out));
mealy1100111design DUT(.in(in), .clk(clk), .rst(rst), .out(out));

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
//////////////////////////////
in = 0;
#10;

in = 0;
#10;

in = 1;
#10;

in = 1;
#10;

in = 0;
#10;

in = 0;
#10;

in = 1;
#10;

in = 1;
#10;

in = 1;
#10;

in = 0;
#10;

in = 0;
#10;

in = 1;
#10;

in = 1;
#10;

in = 1;
#10;

in = 0;
#10;

in = 1;
#10;

in = 1;
#10;

in = 0;
#10;

in = 0;
#10;

in = 1;
#10;

in = 1;
#10;

in = 1;
#10;

#500 $finish;
end

always #5 clk = ~clk;
endmodule
