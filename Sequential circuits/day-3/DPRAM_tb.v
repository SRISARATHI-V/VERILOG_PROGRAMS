module tb;

   
    reg clk;
    reg wr_en;
    reg [7:0] din;
    reg [3:0] address_in_0;
    reg [3:0] address_in_1;
    reg port_enable_0;
    reg port_enable_1;

    
    wire [7:0] dout0;
    wire [7:0] dout1;
    
    integer i;

    
    dpram dpram_tb(
        .clk(clk), 
        .wr_en(wr_en), 
      .din(din), 
      .address_in_0(address_in_0), 
      .address_in_1(address_in_1), 
      .port_enable_0(port_enable_0), 
      .port_enable_1(port_enable_1), 
        .dout0(dout0), 
      .dout1(dout1)
    );
    always #5 clk=~clk;
   

    initial begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
        
   
      
        clk = 1;
        address_in_1 = 0;
        port_enable_0 = 0;
        port_enable_1 = 0;
        wr_en = 0;
        din = 0;
        address_in_0 = 0;  
        #20;
        
        port_enable_0 = 1;  
        wr_en = 1;
      for(i=1; i <= 16; i = i + 1) begin
            din = i;
            address_in_0 = i-1;
            #10;
        end
        wr_en = 0;
        port_enable_0 = 0;  
       
        port_enable_1 = 1;  
        for(i=1; i <= 16; i = i + 1) begin
            address_in_1 = i-1;
            #10;
        end
        port_enable_1 = 0;
    end
      
endmodule
