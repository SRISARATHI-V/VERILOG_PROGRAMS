module gray_bin_tb;
  reg [3:0] binary, gray;
  gray_bin gb(gray, binary);
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    
    gray = 4'b1110; #1;
    gray = 4'b1100; #1;
    gray = 4'b1011; #1;
    gray = 4'b1010; #1;
    gray = 4'b1000;
    $finish;
  end
endmodule
