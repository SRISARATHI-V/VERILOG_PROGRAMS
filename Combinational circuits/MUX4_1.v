module  mux4_1(S,i0,i1,i2,i3,y);
  input [1:0] S;
  input [1:0]i0,i1,i2,i3;
  output reg [1:0]y;
  always @(*)
    begin 
      case(S)
        2'b00: y=i0;
        2'b01: y=i1;
        2'b10: y=i2;
        2'b11: y=i3;
      endcase
    end
endmodule
               
               
