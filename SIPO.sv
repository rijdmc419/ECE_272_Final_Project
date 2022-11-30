module SIPO #(parameter N = 10) (input logic in, clk, res,
										   output logic [N-1:0] out);
											
				logic [3:0] count;
				logic [N-1: 0] inter, previous;
				logic trigger;
				
				always_ff @ (negedge clk)
				begin 
					if ((count == N) | res)
					begin
						count <= 0;
					end
					else
					begin
						inter[count] <= in;
						count = count + 1;
					end
				end
				
				assign trigger = (previous[8:1] == 8'hF0);
				assign previous = inter;
				
				always_comb
				case(trigger)
				0: out = inter;
				1: out = 10'b0;
				endcase
				
			
endmodule
				
				