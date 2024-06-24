module dff_tb;
  wire Q;
  reg clk,rst,D;
  dff dff_tb(.clk(clk),.rst(rst),.D(D),.Q(Q));
  initial begin
    D=0;
    clk=0;
    rst=0;
    $dumpfile("test.vcd");
    $dumpvars(1);
    #200$finish;
  end
  always  #3D=~D;
  always  #5clk=~clk;
  always  #20rst=~rst;
endmodule
