module top(input clk, input rst, output reg y);

  
parameter zero = 0;
parameter one = 1;
reg state,next_state;
  
/////////////////Reset state Logic //////////////  
always@(posedge clk)
  begin
    if(rst)
      state <= zero;
     else begin
     case(state)
       zero: 
        begin 
         state <= one; 
         y <= 1; 
        end
       one : 
         begin
         state <= zero;
         y <= 0;  
         end	      
        endcase       
     end
  end
 ////////////////////////////////////////////////// 
endmodule