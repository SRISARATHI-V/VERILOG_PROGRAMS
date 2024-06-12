module halfadder_tb;
  reg A,B;
  wire S,C;
  halfadder ha(.A(A),.B(B),.S(S),.C(C));
  initial begin
    $dumpfile("halfadder.vcd");
    $dumpvars(1);
    A=1'b0;B=1'b0;
    #10 A=1'b0;B=1'b1;	
    #10 A=1'b1;B=1'b0;
    #10 A=1'b1;B=1'b1;
    $monitor("time=%0t:A=%b B=%b S=%b C=%b",$time,A,B,S,C);
    $finish;
  end
endmodule
    
