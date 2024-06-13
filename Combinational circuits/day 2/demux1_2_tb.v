module demux1_2_tb;
  reg s,i;
  wire y0,y1;
  demux1_2 dm(s,i,y0,y1);
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    s=0;i=0;#2
    s=0;i=1;#2
    s=1;i=0;#2
    s=1;i=1;#2
    $finish;
  end
endmodule
