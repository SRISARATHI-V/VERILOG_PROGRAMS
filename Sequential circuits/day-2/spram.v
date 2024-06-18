module spram(clk,wr_en,address,din,dout);
  input clk,wr_en;
  input [9:0]address;
  input [7:0]din;
  output reg[7:0] dout;
  reg [7:0] ram_block[0:1023];
  always @(posedge clk)
    begin 
      if(wr_en)
        ram_block[address] <= din;
      else
        dout <=ram_block[address];
    end
endmodule
