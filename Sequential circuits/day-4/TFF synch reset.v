module tff(T,clk,rst,Q);
  input T,clk,rst;
  output reg Q=0;
  always @(posedge clk)
    begin
      if(rst)
        begin
          Q<=0;
        end
      else
        Q<=T?~Q:Q;
    end
endmodule
  
