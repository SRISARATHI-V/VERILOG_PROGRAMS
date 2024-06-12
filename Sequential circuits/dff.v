module dff(clk,d,q);
  input clk,d;
  output reg q=0;
  always @(posedge clk)
    begin 
      q<=d;
    end
endmodule
