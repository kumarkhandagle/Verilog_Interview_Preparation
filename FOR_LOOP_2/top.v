module shift_register (input clk,rst, output reg [3:0] y );

  integer i;
  always@(posedge clk)
    begin
      if(rst==1'b1)   ////Synchronus Reset
        y <= 4'b0000;
      else begin
          for(i = 0; i< 3; i = i + 1) begin   ////Repetitive Hardware part
            y[i+1] <= y[i];
          end
            y[0] <= ~y[3]; 
        end 	
    end
  
endmodule
