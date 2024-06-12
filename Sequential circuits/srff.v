module srff(sr,clk,q,qb);
  input [1:0] sr;
  input clk;
  output reg q=0,qb;
  always @ (posedge clk)
    begin 
      case(sr)
        2'b00: q<=q;
        2'b01: q<=0;
        2'b10: q<=1;
        2'b11: q<=1'bz;
      endcase
    end
    assign qb=~q;
endmodule
  
      
