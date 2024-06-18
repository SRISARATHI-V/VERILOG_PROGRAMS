module me_no_1010(clk,rst,x,z);
  input clk,rst,x;
  output reg z;
  parameter A=2'b00;
  parameter B=2'b01;
  parameter C=2'b10;
  parameter D=2'b11;
  bit [1:0]s,n_s;
  always @(posedge clk or negedge rst)
    begin
      if(!rst)
        begin
          s <= A;
        end
      else
        s <=n_s;
    end
  always @(s or x)
    begin 
      case(s)
        A:begin
          if(x==0) n_s=A;
          else n_s=B;
        end
        B:begin
          if(x==0) n_s=C;
          else n_s=B;
        end
        C:begin
          if(x==0) n_s=A;
          else n_s=D;
        end
        D:begin
          if(x==0) n_s=A;
          else n_s=B;
        end
       default:n_s=A;
      endcase
    end
  assign z=(s==D)&&(x==0)?1:0;
endmodule
       
