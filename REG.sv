module REG(DOUT,DIN,Clock);
  input DIN,Clock;
  
  output reg DOUT;
  
  always @(posedge Clock)
    begin
      
      DOUT <= DIN;
      
    end
endmodule
