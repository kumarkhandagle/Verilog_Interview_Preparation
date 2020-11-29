module tb;
reg clk;
reg rst;
wire y;

top uut (clk,rst,y);
  
initial begin
 clk =0;
 rst = 0;
end  
 
always#5 clk = ~clk;

initial begin
    #20;
    rst = 1;
    #20;
    rst = 0;
    $monitor("Value of y : %0b",y);
end

initial begin
  $dumpvars;
  $dumpfile("dump.vcd");
end
  
initial begin
#200;
$finish;
end  
endmodule