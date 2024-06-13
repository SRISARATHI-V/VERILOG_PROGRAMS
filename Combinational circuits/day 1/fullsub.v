module fullsub(A,B,C,D,Bout);
  input A,B,C;
  output reg D,Bout;
  assign D = A^B^C;
  assign  Bout= (~A & B) | (~(A ^ B) & C);
endmodule
