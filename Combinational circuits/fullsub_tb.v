module fullsub_tb;
  
  reg A,B,C;
  wire D,Bout;
  fullsub fs(.A(A),.B(B),.C(C),.D(D),.Bout(Bout));
  initial begin
    $dumpfile("fullsub.vcd");
    $dumpvars(1,fullsub_tb);
    $monitor("%0t: A=%b B=%b C=%b D=%b Bout=%b",$time,A,B,C,D,Bout);
    A=0;B=0;C=0;#10
    A=0;B=0;C=1;#10
    A=0;B=1;C=0;#10
    A=0;B=1;C=1;#10
    A=1;B=0;C=0;#10
    A=1;B=0;C=1;#10
    A=1;B=1;C=0;#10
    A=1;B=1;C=1;#10
    $finish;
  end
endmodule
             
