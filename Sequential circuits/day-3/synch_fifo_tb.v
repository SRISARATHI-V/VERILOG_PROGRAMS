module synch_fifo_tb;
  reg clk,rst,w_en,r_en;
  reg[7:0]din;
  wire [7:0]dout;
  wire full,empty;
  synch_fifo synch_fifo_tb(clk,rst,w_en,r_en,din,dout,full,empty);
  initial clk=1;
  always #2 clk=~clk;
  integer i;
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars(1);
    rst=1;
    w_en=0;
    r_en=0;
    din=8'b0;
    #4
    rst=0;
    #4
    rst=1;
    w_en=0;
    r_en=1;
    for(i=0;i<8;i=i+1)
      begin
        #4;
      end
    w_en=1;
    r_en=0;
    for(i=0;i<8;i=i+1)
      begin
        din=i;
        #4;
      end
 
  end
endmodule
