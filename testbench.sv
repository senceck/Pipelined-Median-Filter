module test;
  top t_top();
  reg [12:0] counter;
  integer i;
  initial begin
    counter <= 0;
    i <= 0;
  end
  
  always @(posedge t_top.clk)
    begin 
      counter = counter + 1;
      if (counter == 4099 )
        begin
          
          $display("\nData Before Sorting\n");
          
          for(i=0;i<64;i++)
            begin
                 
              $display("%h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h ",t_top.M1.location[i][0],t_top.M1.location[i][1],t_top.M1.location[i][2],t_top.M1.location[i][3],t_top.M1.location[i][4],t_top.M1.location[i][5],t_top.M1.location[i][6],t_top.M1.location[i][7],t_top.M1.location[i][8],t_top.M1.location[i][9],t_top.M1.location[i][10],t_top.M1.location[i][11],t_top.M1.location[i][12],t_top.M1.location[i][13],t_top.M1.location[i][14],t_top.M1.location[i][15],t_top.M1.location[i][16],t_top.M1.location[i][17],t_top.M1.location[i][18],t_top.M1.location[i][19]);       
              
            end
          
         
          
          $display("\nData After Sorting\n");
          
          
          for(i=0;i<64;i++)
            begin
              
             $display("%h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h ",t_top.M2.location[i][0],t_top.M2.location[i][1],t_top.M2.location[i][2],t_top.M2.location[i][3],t_top.M2.location[i][4],t_top.M2.location[i][5],t_top.M2.location[i][6],t_top.M2.location[i][7],t_top.M2.location[i][8],t_top.M2.location[i][9],t_top.M2.location[i][10],t_top.M2.location[i][11],t_top.M2.location[i][12],t_top.M2.location[i][13],t_top.M2.location[i][14],t_top.M2.location[i][15],t_top.M2.location[i][16],t_top.M2.location[i][17],t_top.M2.location[i][18],t_top.M2.location[i][19]);
              
            end
          
         
          $finish;
        end
    end
  
endmodule 
