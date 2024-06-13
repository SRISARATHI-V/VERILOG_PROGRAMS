module mux4_1_tb;
  reg s0, s1;
  reg i0,i1,i2,i3;
  wire y;
  
  mux_4_1 mux(s0, s1, i0, i1, i2, i3, y);
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    s1=0;s0=0;i0=00;i1=01;i2=10;i3=11;#10
    s1=0;s0=1;i0=00;i1=01;i2=10;i3=11;#10
    s1=1;s0=0;i0=00;i1=01;i2=10;i3=11;#10
    s1=1;s0=1;i0=00;i1=01;i2=10;i3=11;#10
    $finish;
  end
endmodule
    
  
