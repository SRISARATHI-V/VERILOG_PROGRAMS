module mux_2_1(
  input s,
  input i0, i1,
  output y);
  
  assign y = s ? i1 : i0;
endmodule

module mux_4_1(
  input s0, s1,
  input  i0,i1,i2,i3,
  output reg y);
  
  wire y0, y1;
  
  mux_2_1 m1(s0, i2, i3, y1);
  mux_2_1 m2(s0, i0, i1, y0);
  mux_2_1 m3(s1, y1, y0, y);
endmodule
               
