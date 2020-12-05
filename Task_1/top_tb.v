module tb;

  reg wr;
  reg clk;
  reg [3:0] addr, din;
  wire [3:0] dout;
  
  simple_ram uut(wr,clk,addr,din,dout); ///port mapping
  
 //////Start writing your code here ///////////////////////
  

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 //////////////End your code here ///////////////// 
  
  initial begin
    #200;
    $finish;
  end 
  
  initial begin
    $dumpvars;
    $dumpfile("dump.vcd");
  end 
  
endmodule