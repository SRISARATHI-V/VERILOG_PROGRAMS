module tff(clk,t,q);
  input clk,t;
  output reg q=0;
  always @(posedge clk)
    begin
      if(t==0)
        q<=t;
      else
        q<=~q;
    end
endmodule
  

