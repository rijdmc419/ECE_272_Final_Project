module decoder #(parameter N = 8, M = 10)(input logic [N-1:0] in,
														 output logic [10:0] y);
		
			always_comb	
			case(in)
			28: y=440;
			default: y=0;
			endcase
			
			
			
endmodule