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
 /////////////Next State Decoder Logic ///////
  
  always@(state)
    begin
      case(state)
       zero: next_state = one; 
        
       one : next_state = zero;    
      endcase     
      end
 //////////////////Output Decoder Logic///////////
    always@(state)
    begin
      case(state)
       zero: y = 0; 
  
       one : y = 1;    
      endcase     
      end
 ////////////////////////////////////////////////// 
endmodule