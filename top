// Included Files
`include "sort.sv"
`include "memory.sv"
`include "clock.sv"
`include "indexCounter.sv"
`include "index.sv"
`include "F_SO.sv"
`include "SO_ST.sv"
`include "REG.sv"
`include "REG_Address.sv"


module top ();
  // Clock Wire
  wire clk;
  
  // Wires For The First Stage (Fetch)
  wire MemWrite_Flag;
  wire [5:0] Row_Flag,Col_Flag;
  wire [5:0] address_col,address_row,Next_address_col,Next_address_row;
  wire [7:0] DIN;
  wire [7:0] DOUT[2:0][2:0];
  
  // Wires For The Second Stage (Sort)
  wire enable,SO_MemWrite;
  wire [5:0] SO_row,SO_col;
  wire [7:0] SO_Output;
  wire [7:0] SO_DOUT[2:0][2:0];
  
  // Wire For The Third Stage (Store)
  wire ST_MemWrite;
  wire [5:0] ST_row,ST_col;
  wire [7:0] ST_Output;
  wire [7:0] ST_DOUT[2:0][2:0];
  
  
  
  
  // First Stage (Fetch)
  clock Clock_Generated(clk);
  index index(address_col,address_row,Next_address_col,Next_address_row,clk);
  indexCounter indexCounter(Next_address_col,Next_address_row,address_col,address_row,clk);
  memory M1(1'b1, 1'b0, address_row,address_col, DIN, DOUT, clk);
  REG register(MemWrite_Flag,1'b1,clk);
  REG_Address REG_Row(Row_Flag,address_row,clk);
  REG_Address REG_Col(Col_Flag,address_col,clk);
  
  // F_SO Block
  F_SO F_SO_Block(enable,SO_DOUT,SO_row,SO_col,SO_MemWrite,Row_Flag,Col_Flag,DOUT,MemWrite_Flag,1'b1,clk);
  
  // Second Stage (Sort)
  sort sort1(clk,enable,
             {SO_DOUT[0][0],SO_DOUT[0][1],SO_DOUT[0][2],
              SO_DOUT[1][0],SO_DOUT[1][1],SO_DOUT[1][2],
              SO_DOUT[2][0],SO_DOUT[2][1],SO_DOUT[2][2]},SO_Output);
  
  // SO_ST Block
  SO_ST SO_ST_Block(ST_Output,ST_row,ST_col,ST_MemWrite,SO_row,SO_col,SO_Output,SO_MemWrite,clk);
  
  // Third Stage (Store)
  memory M2(1'b0,ST_MemWrite,ST_row,ST_col,ST_Output,ST_DOUT,clk);
  


endmodule 
