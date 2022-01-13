
module indexCounter(n_col,n_row,p_col,p_row,clk);
  input [5:0] p_row,p_col;
  output reg [5:0] n_col,n_row;
  input clk;
  
  
  
  always @(*)
    begin
      if(p_col < 61)
        begin
          
      		n_col = p_col+1;
          	n_row = p_row;
         	
        end
      else
        begin
          
        	n_col = 6'b000000;
          if (p_row < 61)
        	n_row = p_row +6'b000001;
          else n_row = 6'b000000;
          
        end
      
      
    end
  
endmodule
