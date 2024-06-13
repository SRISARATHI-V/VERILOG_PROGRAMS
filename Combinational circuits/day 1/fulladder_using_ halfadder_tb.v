module fulladder_tb;
  reg a,b,cin;
  wire sum,cout;
  fulladder fa(a,b,cin,sum,cout);
  initial begin 
    $dumpfile("fulladder.vcd");
    $dumpvars(1,fulladder_tb);
    a=0;b=0;cin=0;#10
    a=0;b=0;cin=1;#10
    a=0;b=1;cin=0;#10
    a=0;b=1;cin=1;#10
    a=1;b=0;cin=0;#10
    a=1;b=0;cin=1;#10
    a=1;b=1;cin=0;#10
    a=1;b=1;cin=1;#10
    $finish;
  end
endmodule
