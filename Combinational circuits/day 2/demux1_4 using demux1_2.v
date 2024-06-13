module demux1_2(
  input s,
  input i,
  output y0, y1);
  
  assign {y0,y1} = s?{1'b0,i}: {i,1'b0};
endmodule

module demux1_4(
  input sel0, sel1,
  input  i,
  output reg y0, y1, y2, y3);
  
  wire z1,z2;
  
  demux1_2 d1(sel0, i, z1, z2);
  demux1_2 d2(sel1, z1, y0, y1);
  demux1_2 d3(sel1, z2, y2, y3);
endmodule
