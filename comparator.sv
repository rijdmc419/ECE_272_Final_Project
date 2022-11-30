module comparator #(parameter N = 8)
							(input logic [N-1:0] a,
							 input logic [10:0]c,
							output logic eq, neq, lt, lte, gt, gte);
							
							
			assign eq = (a == c);
			assign neq = (a != c);
			assign lt = (a < c);
			assign lte = (a <= c);
			assign gt = (a > c);
			assign gte = (a >= c);
endmodule