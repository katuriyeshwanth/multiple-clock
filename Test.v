module test;
reg clk1,clk2,a,b,c;
wire f1,f2;
multiple_clk dut(clk1,clk2,a,b,c,f1,f2);
initial
clk1=0;
always #5 clk1=~clk1;
initial clk2=0;
always #10 clk2=~clk2;
initial
begin
$monitor($time,"clk1=%b,clk2=%b,a=%b,b=%b,c=%b,f1=%b,f2=%b",clk1,clk2,a,b,c,f1,f2);
a=0;b=1;c=1;
#10 a=1;
#10 b=0;
#10 c=1;
#10 a=0;
#10 b=1;
#10 c=0;
#40 $stop;
end
endmodule
