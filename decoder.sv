module decoder #(parameter N = 10)(input logic [N-1:0] in, 
											  output logic y);
			
			logic [7:0] inter;
			assign inter = in[8:1];
			
			always_comb								  
			case(inter)
			21: y=2'b1;
			26: y=2'b1;
			28: y=2'b1;
			default: y=2'b0;
			endcase
			
endmodule