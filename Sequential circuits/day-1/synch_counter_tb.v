module synch_counter_tb;
  reg clk,rst,up;
  wire [3:0]cnt;
  synch_counter sc(clk,rst,up,cnt);
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    clk=0;rst=0;
    
    up=1;#4
    rst=1;#10
    rst=0;#10
    rst=1;#10
    up=0;#10
    $finish;
  end
  always #2clk=~clk;
endmodule
    
