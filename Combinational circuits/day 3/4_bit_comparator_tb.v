module comparator_tb;
  reg [3:0] a,b;
  wire agb,alb,aeb;
  comparator cmp(a,b,agb,alb,aeb);
  initial begin 
    $dupfile("dump.vcd");
    $dumpvars(1);
    a=1;b=1;#3
    a=2;b=4;#3
    a=8;b=3;#3
    a=9;b=9;#3
    $finish;
  end
endmodule
