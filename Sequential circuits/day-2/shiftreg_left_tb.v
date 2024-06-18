module right_sr_tb;
  reg clk,rst,din;
  wire [3:0]dout;
  right_sr right_sr_tb(clk,rst,din,dout);
  always 
      begin
      #2clk=~clk;
      end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    
    clk=0;
    rst=1;
    din=0;#20
    rst=0;#20
    din=1;#20
    rst=0;#20
    din=0;#20
    rst=1;#20
    din=1;#20
    rst=0;#20
    din=1;#20
    
    $finish;
  end
endmodule
