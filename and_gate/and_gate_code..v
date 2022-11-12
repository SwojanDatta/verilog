// Code your design here
module and_gate(input a, input b, output reg c);	// always er vitore = er left ke reg ditehobe otherwise wire wire bole chillabe 
  
  always @( a or b )
    begin 
      c = (a && b);
    end
  
  
endmodule 