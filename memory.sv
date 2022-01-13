module memory(memread,memwrite,address_row,address_col,DIN,DOUT,clk);
input memread, memwrite;
  input [5:0] address_row;
  input [5:0] address_col;
  input [7:0] DIN;
  output reg [7:0] DOUT [2:0][2:0];
  input clk;
  reg [7:0] location [63:0][63:0];

integer i,j;

initial begin 
	
  for (i=0;i<3;i++)
    for(j=0;j<3;j++)
      DOUT[i][j] = 8'b00000000;
  for (i=0; i<=64; i++)
      for(j=0;j<64;j++)
		begin
          location [i][j] = $urandom();
          
		end
	end
  always @ (posedge clk)
begin
if (memwrite == 1'b1)
  begin
    
  location [address_row+1][address_col+1] <= DIN;

  end
end

  always @(negedge clk)
begin
if (memread == 1'b1)
  begin
    
    DOUT[0][0] <= location [address_row][address_col];
    DOUT[0][1] <= location [address_row][address_col+1];
    DOUT[0][2] <= location [address_row][address_col+2];
    
    DOUT[1][0] <= location [address_row+1][address_col];
    DOUT[1][1] <= location [address_row+1][address_col+1];
    DOUT[1][2] <= location [address_row+1][address_col+2];
    
    DOUT[2][0] <= location [address_row+2][address_col];
    DOUT[2][1] <= location [address_row+2][address_col+1];
    DOUT[2][2] <= location [address_row+2][address_col+2];    
                     
  end
end


endmodule
