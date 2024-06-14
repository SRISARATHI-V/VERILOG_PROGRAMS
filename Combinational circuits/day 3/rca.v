.module fa(input a,b,cin,output sum,cout);
  assign sum=a^b^cin;
  assign cout=((a&b)|(b&cin)|(a&cin));
endmodule
module ripple_ca(a,b,cin,s,cout);
  parameter size=4;
  input [size-1:0]a,b;
  input cin;
  output[size-1:0] s,cout;
  genvar i;
  fa fa0(a[0],b[0],cin,s[0],cout[0]);
  for(i=1;i<size;i++)
    begin 
      fa fa1(a[i],b[i],cout[i-1],s[i],cout[i]);
    end
endmodule
