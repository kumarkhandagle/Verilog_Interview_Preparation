//////////////////////DO NOT CHANGE THE CODE ////////////////
module tb();
  
 reg a,b,c,d;
 reg [1:0] sel;
 wire y;
 integer err;
  
  
top uut (a,b,c,d,sel,y);
  
  initial begin
   a = 1;
   b = 1;
   c = 1;
   d = 1;
   sel = 0;
   err = 0;
  end 
  
 
  
initial
begin
 #1;
  sel = 2'b00;
  if( y == 1)
      $display("Test passed at %0t",$time);
  else
    begin
      err++;
      $display("Test Failed at %0t",$time);
    end 
 #1;
  sel = 2'b01;
  if( y == 1)
   $display("Test passed at %0t",$time);
  else
    begin
      err++;
     $display("Test Failed at %0t",$time);
    end 
  
   #1;
  sel = 2'b10;
  if( y == 1)
    $display("Test passed at %0t",$time);
  else
    begin
      err++;
      $display("Test Failed at %0t",$time);
    end 
  
   #1;
  sel = 2'b11;
  if( y == 1)
   $display("Test passed at %0t",$time);
  else
    begin
      err++;
    $display("Test Failed at %0t",$time);
    end 
  
 #1;
  if(err == 0) begin
    $display("-------------------------");
    $display("Test Successfully Cleared");
    $display("-------------------------");
  end
  else begin
    $display("-------------------------");
    $display("Test Failed with %0d errors",err);
    $display("-------------------------");
  end  
end

  initial begin
    $dumpvars;
    $dumpfile("dump.vcd");
    
  end 
  
endmodule
  
//////////////////DO NOT CHANGE THE CODE ////////////////////  