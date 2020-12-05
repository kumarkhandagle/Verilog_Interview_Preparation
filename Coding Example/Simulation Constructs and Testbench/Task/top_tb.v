module tb;
 
  task simple(input en, input [3:0] b, output [3:0] c);
    if(en==1)
    c = b;
    else
    c = 0;
  endtask
  
  
  reg a ;
  reg [3:0] t1 ;
  reg [3:0] t2 ;   
  
  
  
  initial begin
    a = 0;
    simple(a,t1,t2);
    #5;
    a = 1;
    t1 = 1;
    simple(a,t1,t2);
    #20;
    a = 0;
    simple(a,t1,t2);
    #25;
    a = 1;
    t1 = 5;
    simple(a,t1,t2);
    #50;
    a = 0;
    simple(a,t1,t2);
  end 
  
  
  initial begin
    $dumpvars;
    $dumpfile("dump.vcd");
  end 
  
endmodule