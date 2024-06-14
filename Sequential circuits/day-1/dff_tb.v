module dff_tb;
  reg clk,d;
  wire q;
  dff D(.clk(clk),.d(d),.q(q));
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end 
    
    always #2 clk=~clk;
 
  initial begin
    clk=0;
    d=0;#5
    d=1;#5
    d=0;#5
    $finish;
  end
endmodule
