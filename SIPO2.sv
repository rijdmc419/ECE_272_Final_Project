module SIPO2 #(parameter N = 10) (input logic in, clk, res,
										   output logic [7:0] out);
											
				logic [3:0] count;
				logic [N-1: 0] inter;
				logic [7:0] previous; 
				logic trigger;
				
				always_ff @ (negedge clk)
				begin 
					if ((count == N) | res)
					begin
						count <= 0;
						trigger <= (previous == 8'b11110000);
						previous <= res ? 8'b0:inter[8:1];
					end
					else
					begin
						inter[count] <= in;
						count = count + 1;
					end
				end
				
				
				always_comb
				case(trigger)
				0: out = inter[8:1];
				1: out = 8'b0;
				endcase
				
				
				
				
				
			
endmodule
				
				