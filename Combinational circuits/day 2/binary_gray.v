module bin_gr(input [3:0]binary,output [3:0]gray);
  genvar i;
  for(i=0;i<3;i++)
    begin
      assign gray[i]=binary[i]^binary[i+1];
    end
  assign gray[3]=binary[3];
endmodule
