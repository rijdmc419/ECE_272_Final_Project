module comparator #(parameter N = 8, M = 17, F = 2)
							(input logic [N-1:0] a,
							 input logic [M-1:0]c,
							output logic eq, neq, lt, lte, gt, gte);
							
							
			assign eq = (a == c);
			assign neq = (a != c);
			assign lt = (a < c);
			assign lte = (a <= F*c);
			assign gt = (a > c);
			assign gte = (a >= F*c);
endmodule