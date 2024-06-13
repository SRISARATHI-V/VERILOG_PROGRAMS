module demux2_1(s,i,y0,y1);
  input s,i;
  output reg y0,y1;
  assign {y1,y0}=s?{1,i}:{0,i};
endmodule

  
