module                dpram(clk,wr_en,din,address_in_0,address_in_1,port_enable_0,port_enable_1,dout0,dout1);
  input clk,wr_en;
  input [3:0]din;
  input [7:0]address_in_0;
  input [7:0]address_in_1;
  input port_enable_0;
  input port_enable_1;
  output reg[7:0] dout0;
  output reg[7:0] dout1;
  reg [7:0]ram[0:15];
  always @(posedge clk)
    begin
      if(port_enable_0==1&&wr_en==1)
        ram[address_in_0] <= din;
    end
  assign dout0=port_enable_0?ram[address_in_0]:'dz;
  assign dout1=port_enable_1?ram[address_in_1]:'dz;
endmodule
  
  
  
