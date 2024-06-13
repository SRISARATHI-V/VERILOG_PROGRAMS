module halfadder(input a,b,output sum,carry);
  assign sum=a^b;
  assign carry =a&b;
endmodule
module fulladder(input a,b,cin,sum,cout);
  wire c,c1,s;
  halfadder ha(a,b,s,c);
  halfadder ha1(s,cin,sum,c1);
  assign cout=c|c1;
endmodule
