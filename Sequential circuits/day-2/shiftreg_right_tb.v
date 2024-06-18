module right_sr_tb;
  reg clk,rst,din;
  wire [3:0]dout;
  right_sr right_sr_tb(clk,rst,din,dout);
  always 
      begin
      #5 clk=~clk;
      end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    
    clk=0;
    rst=1;
    din=0;#10
    rst=0;#10
    din=1;#10
    din=0;#10
    din=1;#10
    rst=0;#10
    din=1;#10
    
    $finish;
  end
endmodule
    
