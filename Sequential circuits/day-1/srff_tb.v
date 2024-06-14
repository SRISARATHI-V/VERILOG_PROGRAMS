module srff_tb;
  reg [1:0] sr;
  reg clk;
  wire q,qb;
  srff srf_tb(.clk(clk),.sr(sr),.q(q),.qb(qb));
  initial begin
    $dumpfile("srff.vcd");
    $dumpvars(1);
    clk=0;
    forever
    #2 clk=~clk;
  end
  initial begin
    sr=2'b00;#10
    sr=2'b01;#10
    sr=2'b10;#10
    sr=2'b11;#10
    $finish;
  end
endmodule
