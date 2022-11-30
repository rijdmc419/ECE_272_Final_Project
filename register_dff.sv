module register_dff #(parameter N=10) (input logic [N-1:0] in,
													output logic [N-1:0] out,
													input logic clk, reset);
													
					always_ff @ (posedge clk)
					begin 
					if (reset == 1'b0)
						out <= 1'b0;
					else
						out <= in;
					end
					
endmodule 
					