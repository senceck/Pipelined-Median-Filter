module REG_Address(DOUT,DIN,Clock);
  input Clock;
  input [5:0] DIN;
  
  output reg [5:0] DOUT;
  
  always @(posedge Clock)
    begin
      
      DOUT <= DIN;
      
    end
endmodule
