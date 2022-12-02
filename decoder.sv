module decoder #(parameter N = 8, M = 10)(input logic [N-1:0] in,
														 output logic [16:0] y);
		
			//need a 17 bit output b/c max number for A half flat under A 440 needs 17 bits
			always_comb	
			case(in)
		 
			28: y = 22727; //A
			27: y = 21452; //S
			35: y = 20248; //D
			43: y = 19111; //F
			52: y = 18038; //G
			51: y = 17026; //H
			59: y = 16071; //J
			66: y = 15169; //K
			75: y = 14317; //L
			76: y = 13513; //;
			82: y = 12755; //'
			90: y = 12039; //enter
			
			21: y = 23393; //Q
			29: y = 22080; //W
			36: y = 20841; //E
			45: y = 19671; //R
			44: y = 18567; //T
			53: y = 17525; //Y
			60: y = 16543; //U
			67: y = 15613; //I
			68: y = 14737; //O
			77: y = 13910; //P
			84: y = 13129; //[
			91: y = 12392; //]
			
			18: y = 22080; //Left shift
			26: y = 20841; //Z
			34: y = 19671; //X
			33: y = 18567; //C
			42: y = 17525; //V
			50: y = 16542; //B
			49: y = 15613; //N
			58: y = 14736; //M
			65: y = 13910; //,
			73: y = 13129; //.
			74: y = 12391; // /
			89: y = 11697; //right shift
			
			default: y=0;
			
			endcase
			
			
			
endmodule