module spram_tb;

reg clk,wr_en;
reg [9:0]address;
reg [7:0]din;
wire [7:0]dout;

spram spram_tb(clk,wr_en,address,din,dout);

initial begin
  $dumpfile("dump.vcd");
  $dumpvars(1);
clk = 0;
din = 8'h56;
wr_en = 0;
address = 55;
#20
wr_en = 1;
#20;
wr_en = 0;
address = 66;
din = 8'h36;
#20
wr_en = 1;
#20 
wr_en = 0;
#20
address = 55;
#20
$finish();

end

always #10 clk = ~clk; 
endmodule
