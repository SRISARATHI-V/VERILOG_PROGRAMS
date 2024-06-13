module halfsub_tb;
  reg A,B;
  wire D,b;
  halfsub hs(A,B,D,b);
  initial begin
      $dumpfile("halfsub.vcd");
      $dumpvars(1,halfsub_tb);
      A=0;B=0; #10
      A=0;B=1; #10
      A=1;B=0; #10
      A=1;B=1; #10
      $finish;
  end
  always @(A,B)
     $monitor("At time %0t: A=%b B=%b, D=%b,b=%b",$time,A,B,D,b);
endmodule
