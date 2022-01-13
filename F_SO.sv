module F_SO(Enable,DOUT,SO_row,SO_col,SO_MemWrite,F_row,F_col,DIN,F_MemWrite,F_Enable,Clock);
  input F_Enable,F_MemWrite,Clock;
  input [5:0] F_row,F_col;
  input [7:0] DIN [2:0][2:0];
  
  output reg Enable,SO_MemWrite;
  output reg [5:0] SO_row,SO_col;
  output reg [7:0] DOUT [2:0][2:0];
  
  always @(posedge Clock)
    begin 
      
      SO_MemWrite <= F_MemWrite;
      SO_row <= F_row;
      SO_col <= F_col;
      DOUT <= DIN;
      Enable <= F_Enable;
          
    end 
endmodule
