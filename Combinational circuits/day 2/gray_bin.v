module gray_bin(input [3:0]gray ,output [3:0]binary);
  genvar i;
  for(i=0;i<4;i++)
    assign binary[i]=^(gray<<0);
  
endmodule
    

