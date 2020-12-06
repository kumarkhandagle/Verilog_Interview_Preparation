module tb;
reg clk,rst,ld;
  wire [3:0] y;
  
  shift_register uut(clk,rst,ld,y);
  
initial begin
 clk = 0;
 rst = 0;
 ld = 0;
end
 
  always#5 clk = ~clk;
  
  initial begin
   rst = 1;
   #20;
    rst = 0;
   ld = 1;
   #20;
   ld = 0;
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