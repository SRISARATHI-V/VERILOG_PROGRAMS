module fulladder_tb;
  reg A,B,C;
  wire S,carry;
  fulladder fa(.A(A),.B(B),.C(C),.S(S),.carry(carry));
  initial begin
    $dumpfile("fulladder.vcd");
    $dumpvars(1,fulladder_tb);
    A=1'b0;B=1'b0;C=1'b0;
    #10 A=1'b0;B=1'b0;C=1'b1;
    #10 A=1'b0;B=1'b1;C=1'b0;
    #10 A=1'b0;B=1'b1;C=1'b1;
    #10 A=1'b1;B=1'b0;C=1'b0;
    #10 A=1'b1;B=1'b0;C=1'b1;
    #10 A=1'b1;B=1'b1;C=1'b0;
    #10 A=1'b1;B=1'b1;C=1'b1;#10
    $finish;
  
  end
  always @(A,B,C)
    $monitor("time=%0t:A=%b B=%b C=%b S=%b carry=%b",$time,A,B,C,S,carry);
endmodule
    
