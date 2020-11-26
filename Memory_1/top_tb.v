
module tb();
reg wen;
reg clk;
reg [6:0] addr;
reg [7:0] din;
wire [7:0] dout;


top uut (wen,clk,addr,din,dout);
always #5 clk = ~clk;
  
initial begin
   wen = 0;
   clk = 0; 
end
  
initial begin
  #10;
  addr = 12;
  din = 123;
  wen = 1;
  $display("-------------------------------------");
  $display("Data written on RAM at addr : %0d is %0d",addr,din);
  #50;
  wen = 0;
  addr = 12;
  #70
  $display("Data read out of RAM at addr : %0d is %0d",addr,dout);
  if(dout == din)
    $display("Test Passed");
  else
    $display("Test Failed");
  $display("-------------------------------------");    
  #200;
  $finish; 
end  
  
  initial begin
  $dumpvars;
  $dumpfile("dump.vcd");
  end
endmodule
