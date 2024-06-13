
module demux1_4_tb;
  reg s0, s1;
  reg i;
  wire y0,y1,y2,y3;
  
  demux1_4 dm(s0, s1, i, y0, y1, y2, y3);
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);

    s0=0; s1=0; i=0; #1;
    s0=0; s1=0; i=1; #1;
    s0=0; s1=1; i=0; #1;
    s0=0; s1=1; i=1; #1;
    s0=1; s1=0; i=0; #1;
    s0=1; s1=0; i=1; #1;
    s0=1; s1=1; i=0; #1;
    s0=1; s1=1; i=1; #1;
    $finish;
  end
endmodule
