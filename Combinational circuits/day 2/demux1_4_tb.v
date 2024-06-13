module demux1_4_tb;
  reg [1:0]s;
  reg i;
  wire y0,y1,y2,y3;
  demux1_4 dm(s,i,y0,y1,y2,y3);
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars(1);
    s=00;i=0;#3
    s=00;i=1;#3
    s=01;i=0;#3
    s=01;i=1;#3
    s=10;i=0;#3
    s=10;i=1;#3
    s=11;i=0;#3
    s=11;i=1;#3
    $finish;
  end
endmodule
  
