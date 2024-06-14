module synch_counter(clk,rst,up,cnt);
  input clk,rst;
  input up;
  output reg [3:0] cnt;
  always @ (posedge clk)
    begin 
      if(!rst)
        begin
          cnt<=0;
        end
      else
        begin
          
          if(up)
             cnt<=cnt+1;
          else
            cnt<=cnt-1;
        end 
    end
endmodule
     
