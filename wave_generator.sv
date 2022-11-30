module wave_generator#(parameter N=10) (input logic clk, res,
													 input logic [N-1:0] f,
													 output logic w);
							
		logic [26:0] n1;
		
		always_ff @(posedge clk)
		begin
			if (n1 == 10000000/f | ~res)
				n1 <= 0;
			else
				n1 <= n1 + 1;
		end
		
		assign w = (n1 > 10000000/(2*f));	
			
endmodule

		
													 