module index(n_col,n_row,p_col,p_row,clk);
  input [5:0] p_row,p_col;
  output reg [5:0] n_col,n_row;
  input clk;
  
  initial begin 
    n_col <= 6'b00000;
    n_row <= 6'b00000;
  end
  
  always @(posedge clk)
    begin
      
      n_col <= p_col;
      n_row <= p_row;
      
    end
  
endmodule
