//////Just hit Run do not change any part of the code here


module tb;
reg clk;
reg clk_t; 
reg st; 
parameter m = 5;
parameter x = 4;
wire clkout;
integer temp,err;
initial begin
  st = 0;  
  clk = 0;
  clk_t = 0;
  temp = 0;
  err = 0;
end
  
always #5 clk = ~clk;  ///Generation of 10 nSec Clock for input
    
top uut (clk, clkout);
  
always@(posedge clk) begin
     if(temp < m)
       temp++;
      else begin
        clk_t <= ~clk_t;
        temp <= 0;
   	  end
 end

  always@(posedge clk)
    begin
      if(clk_t == clkout)
        $display("TEST PASSED at %0t",$time);
      else begin
        $display("TEST FAILED at %0t",$time);
        err++;
      end
 end 
  
      
initial begin
$dumpvars;
$dumpfile("dump.vcd");   
#1000;
  if(err == 0) begin
    $display("--------------------------");
    $display("Test Successfully Cleared with 0 Errors");
    $display("--------------------------");
    end
    else begin
    $display("--------------------------");
    $display("Test Failed with %0d Errors",err);
  	$display("--------------------------");
    end
#5;
$finish;  
end  
endmodule


///////////////////Do not change anything here//////////