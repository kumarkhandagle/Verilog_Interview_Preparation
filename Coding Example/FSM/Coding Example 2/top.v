module top(input clk, input rst, output reg y);

  
parameter zero = 0;
parameter one = 1;
reg state,next_state;
  
/////////////////Reset state Logic //////////////  
always@(posedge clk)
  begin
    if(rst)
      state <= zero;
     else
       state <= next_state;
  end  
 /////////////Next State Decoder and Output Logic ///////
  
  always@(state)
    begin
      case(state)
       zero: 
        begin 
         next_state = one; 
         y = 0; 
        end
       one : 
         begin
         next_state = zero;
         y = 1;  
         end	      
        endcase     
      end

 ////////////////////////////////////////////////// 
endmodule