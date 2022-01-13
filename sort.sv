module sort(input clk,
  input en,
  input [7:0] number [8:0],
  output reg [7:0] out 
);
reg [7:0] temp;
integer i,j;
  
  reg [7:0]sortMem[8:0];
  
  
  always @ (posedge clk)
    begin
      if(en == 1)
        begin
      for(i = 0;i<9;i++)
        sortMem[i] = number[i];
        end
    end

    always @(negedge clk)
    begin
      if(en == 1)
        begin
      for (i=0; i<=8; i=i+1)
	begin
      for(j=i+1; j<=8; j=j+1)
		if (sortMem [i] > sortMem [j])
		begin
		  temp = sortMem [i];
          sortMem [i] = sortMem [j];
          sortMem [j] = temp;
          
		end
	end
      out <= sortMem [4];
        end
      
    end
endmodule 
