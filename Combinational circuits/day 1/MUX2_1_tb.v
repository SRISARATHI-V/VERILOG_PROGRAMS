module mux2_1_tb;
  reg S,I0,I1;
  wire Y;
  mux2_1 m(.S(S),.I0(I0),.I1(I1),.Y(Y));
  initial begin 
    $dumpfile("mux2_1.vcd");
    $dumpvars(1,mux2_1_tb);
    $monitor("%t: S=%b I0=%b I1=%b Y=%b",$time,S,I0,I1,Y);
    I0=0;I1=1;
    S=0;#10
    S=1;#10
    $finish;
  end
endmodule
  
