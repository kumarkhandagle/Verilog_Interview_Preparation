
//////Just hit Run do not change any part of the code here

module tb;
reg clk;
reg start;
wire clkout;

  parameter x = 4;
  parameter y = 6;
  parameter z = 7;
  parameter w = 62;
 
  integer temp;
  integer  count;
  
uart_clk uut (clk, start,clkout);

  initial begin
    clk = 0;
    start = 0;
    temp = x*y*w*z;
    #20;
    if(clkout == 0)begin
      $display("-------------------------------");
      $display("Test Passed for START Condition");
    end
    else
      $display("Test Failed for START Condition");
    
    #40;
    start = 1;
  end
  
 always #5 clk = ~clk;  ///10 nsec clock source 
  
always@(posedge clk)
 begin
   if(start == 1) begin
   	if(count < temp)
    	 count <= count + 1;
   	else
    	 count <= 0; 
 	end 
 end
  
initial 
begin
#104220; 
if(count == (temp - 1) && (clkout == 0))
  $display("Test Passed for desired CLK rate Generation");
 else
   $display("Test Failed for desired clock rate Generation");
$display("-------------------------------");
end 
  
initial 
begin
#104250;
$finish;
end
  
endmodule

///////////////////Do not change anything here//////////