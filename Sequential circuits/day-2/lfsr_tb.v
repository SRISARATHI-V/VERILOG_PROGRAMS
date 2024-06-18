module lfsr_tb;
  reg clk,rst;
  wire [3:0]op;
  lfsr lfsr_tb(clk,rst,op);
  always #3 clk=~clk;
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    
    clk=0;
    rst=1;#5
    rst=0;#20
    $finish;
  end
endmodule
