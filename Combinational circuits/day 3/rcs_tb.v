module ripple_ca_tb;
  reg [3:0] a,b;
  reg cin;
  wire [3:0] s,cout;
  ripple_ca rca(a,b,cin,s,cout);
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    
    a=1;b=1;cin=0;#3
    a=0;b=1;cin=0;#3
    a=1;b=0;cin=1;#3
    a=0;b=1;cin=1;#3
    
    $finish;
  end
endmodule
