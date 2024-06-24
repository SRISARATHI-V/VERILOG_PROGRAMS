module tff_tb;
  wire Q;
  reg T,clk,rst;
  tff tff_tb(.clk(clk),.T(T),.rst(rst),.Q(Q));
  initial begin 
    T=0;
    clk=0;
    rst=1;
   
    $dumpfile("tff.vcd");
    $dumpvars(1);
    #200$finish;
  end
  always  #3T=~T;
  always  #5clk=~clk;
  always #20rst=~rst;
endmodul
