module clock(clk);
  output reg clk;
  initial clk <=0;
  always #1 clk = ~clk;

endmodule
