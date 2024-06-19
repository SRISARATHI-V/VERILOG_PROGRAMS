module synch_fifo #(parameter depth=8)(clk,rst,w_en,r_en,din,dout,full,empty);
  input clk,rst,w_en,r_en;
  input [7:0]din;
  output reg [7:0]dout;
  output reg full,empty;
  reg[$clog2(depth-1):0]w_ptr,r_ptr;
  reg[7:0]fifo[depth];
  always @(posedge clk)
    begin
      if(!rst)
        begin
          w_ptr <=0;
          r_ptr <=0;
          dout <=0;
        end
    end
  always @(posedge clk)
    begin
      if(w_en & !full)
        begin
          fifo[w_ptr] <=din;
          w_ptr <=w_ptr+1;
        end
    end
  always @(posedge clk)
    begin
      if(r_en & !empty)
        begin
          dout <= fifo[r_ptr];
          r_ptr <=r_ptr+1;
        end
    end
  assign full=((w_ptr+1)==r_ptr);
  assign empty=(w_ptr==r_ptr);
endmodule
  
  
