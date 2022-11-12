// Code your testbench here
// or browse Examples
module and_test;	//eta semi-colon kintu
  
  reg aa,bb;	//input ke reg dite hoy
  reg cc;	   // output ke wire dite hoy but ekhane always use korsi so reg e dite hobe
  
  and_gate a1(.a(aa), .b(bb), .c(cc));	// module/object define korte hobe
  
  initial		//initial block ekbar e run hoy so eke variable initialization e use kora jabe 
    begin
      aa = 0;
      bb = 0;
    end
              
  always 		// jodi kuno kisu shuffle korte hoy tobe alway e likhte hobe
    begin
      #1 aa=~aa;	// format holo #period variable = variable;
      #1 bb=~bb;
    end
  
  //for monitor 
  initial begin
    //$monitor ("Value of A =%b, Value of B =%b, Value of C =%b  ", aa, bb, cc);
    $monitor ("AB = %b %b, C=%b",aa,bb,cc );
  end 
              
  initial begin		// ekbar file gula initialize kore dilei hobe
    $dumpfile("test.vcd");	// file gula dump korlam
    $dumpvars;				// variable gula dump korlam
    #100 $finish;			// last time bole dite hobe
  end
   
              
  
endmodule