module data_concatenation( input logic data,
									input logic clk,
									input logic [3:0] counter,
									output logic [7:0] y);
			logic [7:0] a;					
	
// synchronous reset 
	always_ff @(posedge clk) 
		if (counter == 11) 
			 a <= 0; 
		else if(counter == 1 | counter == 11)
			 a <= a;
		else if (counter == 10)
			 y <= a;
		else
			 a[counter-1] <= data;
			
		
endmodule