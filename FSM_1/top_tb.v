module tb;
reg clk;
reg rst;
wire r,y,g;

  top uut (clk,rst,r,y,g);
  
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
end
initial begin
 #50;
  $display("-------------------------");
  if(r == 1) 
    $display("Test passed for r LED");
  else
    $display("Test Failed for r LED");
 #10;
  if(y==1)
    $display("Test passed for y LED");
  else
    $display("Test Failed for y LED");
 #10;
  if(g == 1)
    $display("Test passed for g LED");
  else
    $display("Test Failed for g LED");
    $display("-------------------------");
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