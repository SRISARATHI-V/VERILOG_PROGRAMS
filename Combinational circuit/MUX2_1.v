module mux2_1(Y,S,I0,I1);
  input S;
  input I0,I1;
  output Y;
  assign Y=S?I1:I0;
endmodule
