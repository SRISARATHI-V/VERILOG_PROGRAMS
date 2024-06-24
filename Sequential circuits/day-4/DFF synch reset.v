module dff(D,clk,rst,Q);
  input D,clk,rst;
  output reg Q=0;
  always @(posedge clk)
    begin
      if(rst)
        begin
          Q<=0;
        end
      else
        Q<=D;
    end
endmodule
          
     
