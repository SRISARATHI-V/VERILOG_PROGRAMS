module mo_no_1010(clk,rst,x,z);
  input clk,rst,x;
  output reg z;
  parameter A=3'b000;
  parameter B=3'b001;
  parameter C=3'b010;
  parameter D=3'b011;
  parameter E=3'b100;
  
  bit [2:0] state,next_state;
  always @(posedge clk or negedge rst)
    begin 
      if(!rst)
        state <= A;
      else
        state <= next_state;
    end
  always @(state or x)
    begin
      case(state)
        A:begin
          if(x==0) next_state=A;
          else next_state=B;
        end
        B:begin
          if(x==0) next_state=C;
          else next_state=B;
        end
         C:begin
           if(x==0) next_state=A;
          else next_state=D;
        end
         D:begin
           if(x==0) next_state=E;
          else next_state=B;
        end  
        E:begin
          if(x==0) next_state=A;
          else next_state=D;
        end 
        default: next_state=A;
      endcase
      assign z=(state==E);
    end
 

endmodule
                
        
  
  
  
  
