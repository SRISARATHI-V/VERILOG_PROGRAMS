module demux1_4(s,i,y0,y1,y2,y3);
  input [1:0]s;
  input i;
  output reg y0,y1,y2,y3;
  always @(*) begin
    case(s)
      2'b00:{y0,y1,y2,y3}={i,3'b0};
      2'b01:{y0,y1,y2,y3}={1'b0,i,2'b0};
      2'b10:{y0,y1,y2,y3}={2'b0,i,1'b0};
      2'b11:{y0,y1,y2,y3}={3'b0,i};
    endcase
  end
endmodule
  
