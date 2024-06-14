module carry_lookahead_adder_tb;
  reg [3:0] A,B;
  reg Cin;
  wire Cout;
  wire [3:0] S;
  carry_lookahead_adder  clak(A,B,Cin,S,Cout);
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    A=1;B=1;Cin=0;#3
    A=2;B=3;Cin=1;#3
    A=5;B=2;Cin=1;#3
    A=2;B=4;Cin=0;#3
    $finish;
  end
endmodule
