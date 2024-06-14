module comparator(a,b,agb,alb,aeb);
  input [3:0]a,b;
  output reg agb=0,alb=0,aeb=0;
  always @(*)
    begin 
      if(a>b)
        agb=1;
      else if(a<b)
        alb=1;
      else
        aeb=1;
    end
endmodule
