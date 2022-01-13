module SO_ST(DOUT,ST_row,ST_col,ST_MemWrite,SO_row,SO_col,DIN,SO_MemWrite,Clock);
  input SO_MemWrite,Clock;
  input [5:0] SO_row,SO_col;
  input [7:0] DIN;
  
  output reg ST_MemWrite;
  output reg [5:0] ST_row,ST_col;
  output reg [7:0] DOUT;
  
  always @(posedge Clock)
    begin 
      
      ST_MemWrite <= SO_MemWrite;
      ST_row <= SO_row;
      ST_col <= SO_col;
      DOUT <= DIN;
          
    end 
endmodule
