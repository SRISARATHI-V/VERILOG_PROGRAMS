module universal_sr_tb;
  reg clk,rst,din;
  reg [1:0]sel;
  wire [3:0] dout;
  universal_sr tb(clk,rst,din,sel,dout);
  initial begin 
    forever #3 clk=~clk;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    clk=0;
    rst=1;
    din = 1'b1;
    sel=2'b00;#10
    sel = 2'b01;#10
    din = 1'b0;
    sel = 2'b10;#10
    sel=2'b11;#10
    $finish;
  end
endmodule
    
