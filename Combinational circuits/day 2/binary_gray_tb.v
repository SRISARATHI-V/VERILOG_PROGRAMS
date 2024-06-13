module bin_gr_tb;
  reg [3:0] binary, gray;
  bin_gr bg(binary, gray);
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    binary = 4'b1011; #1;
    binary = 4'b0111; #1;
    binary = 4'b0101; #1;
    binary = 4'b1100; #1;
    binary = 4'b1111;
  end
endmodule
