module fulladder(A,B,C,S,carry);
  input A,B,C;
  output reg S,carry;
  reg x,y,z;
  always @(A,B,C)
    begin
      S=A^B^C;
      x=A&B;
      y=B&C;
      z=A&C;
      carry=x|y|z;
    end
endmodule
