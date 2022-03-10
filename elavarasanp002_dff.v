module elavarasanp002_dff (input D,  
               
              input clk,  
              output reg q);  
  
    assign q=clk ? D:q; 
endmodule 