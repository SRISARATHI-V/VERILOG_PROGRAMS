module universal_sr(clk,rst,din,sel,dout);
  input clk,rst,din=0;
  input [1:0] sel;
  output reg [3:0]dout;
  always @(posedge clk or posedge rst)
    begin
      if(rst)
        begin 
          dout <=4'b0000;
        end
      else
        case(sel)
          2'b00:dout<=4'b0;
          2'b01:dout<={dout[3:1],din};
          2'b10:dout<={din,dout[2:0]};
          2'b11:dout<=4'b0;
          default:dout<=din;
        endcase
    end
endmodule
          
