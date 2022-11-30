`timescale 1ms / 1000ps

module buffer #(parameter N= 8)
					(input logic [N-1:0] in,
				    output logic [N-1:0] out);
				  
	
	assign #10 out = in;
	
endmodule