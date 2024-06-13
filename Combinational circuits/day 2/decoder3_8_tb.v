module decoder3_8_tb;
  reg [2:0]d;
  wire [7:0]y;
  decoder3_8 de(d,y);
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    d[0]=0;d[1]=0;d[2]=0;#3
    d[0]=0;d[1]=0;d[2]=1;#3
    d[0]=0;d[1]=1;d[2]=0;#3
    d[0]=0;d[1]=1;d[2]=1;#3
    d[0]=1;d[1]=0;d[2]=0;#3
    d[0]=1;d[1]=0;d[2]=1;#3
    d[0]=1;d[1]=1;d[2]=0;#3
    d[0]=1;d[1]=1;d[2]=1;#3
    $finish;
  end
endmodule
