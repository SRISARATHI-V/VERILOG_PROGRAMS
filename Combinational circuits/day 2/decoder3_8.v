module decoder3_8(input [2:0]d,output reg [7:0] y);
  always @ (d)
    begin
      case(d)
        000:y[7]=1;
        001:y[6]=1;
        010:y[5]=1;
        011:y[4]=1;
        100:y[3]=1;
        101:y[2]=1;
        110:y[1]=1;
        111:y[0]=1;
        default y=0;
      endcase
    end
endmodule
