module mo_no_1010_tb;
  reg clk,rst,x;
  wire z;
  mo_no_1010 mo(clk,rst,x,z);
  initial clk=0;
  always #2 clk=~clk;
  initial begin
    $dumpfile("mo_no_1010.vcd");
    $dumpvars(1);
    x=0;
    rst=0;
    #2 rst=1;
    #3 x=1;
    #3 x=1;
    #3 x=0; 
    #3 x=1;
    #3 x=0;
    #3 x=1;
    #3 x=0;
    $finish;
  end
endmodule
    
    
