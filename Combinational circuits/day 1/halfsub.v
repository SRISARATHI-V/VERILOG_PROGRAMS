module halfsub(A,B,D,b);
  input A,B;
  output reg D,b;
  assign  D=A^B;
  assign b=~A&B;
endmodule
  
