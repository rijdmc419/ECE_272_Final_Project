module SIPO #(parameter N = 10) (input logic in, clk, res,
										   output logic [N-1:0] out);
											
				logic [3:0] count;
				logic [N-1: 0] inter;
				
				always_ff @ (negedge clk)
				begin 
					if (res)
					begin
						inter <= 10'b0000000000;
						out <= 10'b0000000000;
					end
					if ((count == N) | res)
					begin
						out <= inter;
						count <= 0;
					end
					else
					begin
						inter[count] <= in;
						count = count + 1;
					end
				end
			
endmodule
				
				