module tff_tb;
  reg clk,t;
  wire q;
  tff T(.clk(clk),.t(t),.q(q));
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end 
    
    always #2 clk=~clk;
 
  initial begin
    clk=0;
    t=0;#5
    t=1;#5
    t=0;#5
    $finish;
  end
endmodule
