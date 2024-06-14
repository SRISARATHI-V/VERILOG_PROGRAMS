module jkff_tb;
  reg [1:0] jk;
  reg clk;
  wire q,qb;
  jkff jkf_tb(.clk(clk),.jk(jk),.q(q),.qb(qb));
  initial begin
    $dumpfile("jkff.vcd");
    $dumpvars(1);
    clk=0;
    forever
    #3clk=~clk;
  end
  initial begin
    jk=2'b00;#15
    jk=2'b01;#15
    jk=2'b10;#15
    jk=2'b11;#15
    $finish;
  end
endmodule
