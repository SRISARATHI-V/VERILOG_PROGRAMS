module right_sr(clk,rst,din,dout);
  input clk,rst,din;
  output reg [3:0] dout;
  always @ (posedge clk or posedge rst)
    begin 
      if (rst)
        begin
          dout <=4'b0000;
        end
      else 
        dout={dout[3:1],din};
    end
endmodule

