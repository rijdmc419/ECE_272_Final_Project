module clr_mux(input logic d0,
					input logic sel,
					input logic d1,
					output logic y);
					
					assign y= sel? d1:d0;
					
endmodule