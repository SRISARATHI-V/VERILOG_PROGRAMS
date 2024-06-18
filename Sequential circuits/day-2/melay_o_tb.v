module me_o_1010_tb;
  reg clk,rst,x;
  wire z;
  me0o_1010 sq(clk,rst,x,z);
 
  initial clk=0;
  always #2clk=~clk;
  initial begin
    x=0;
    
    rst=0;
    #2 rst=1;
    #5 x=1;
    #5 x=0;
    #5 x=1;
    #5 x=0;#10
    $finish;
  end
  initial begin
    $dumpfile("me_o_1010.vcd");
    $dumpvars(1);
  
  end 
endmodule
    
