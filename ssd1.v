// Insert a module header that describes your module appropriately.
// This module acts as a seven-segment decoder to output signals to an active-low led display
module ssd1(in, out);
	input  [3:0] in;
	output [6:0] out;
	
// In LEARNING EXPERIENCE E.3, replace this continuous assignment with the logic that drives HEX1.
// You may use a structural model and primitive logic gates or a continuous assignment model using
// PERMITTED dataflow operators.
	
	wire [6:0] result;
	/*
	in[3] = A
	in[2] = B
	in[1] = C
	in[0] = D
	
	*/
	
	assign result[0] = ((~in[2] & ~in[1]) | (in[3] & ~in[1]) | (in[2] & ~in[0]));
	assign result[1] = ((~in[3] & ~in[0]) | (~in[3] & in[2] & in[1]) | (in[2] & ~in[0]) | (in[3] & ~in[1] & in[0]));
	assign result[2] = ((~in[2] & in[0]) | (in[1] & in[0]) | (in[3] & ~in[1] & ~in[0]));
	assign result[3] = ((~in[3] & ~in[2] & in[0]) | in[1] | (in[3] & ~in[0]) | (in[3] & in[2]));
	assign result[4] = ((~in[2] & in[0]) | (in[1] & in[0]) | (in[3] & ~in[1] & ~in[0]));
	assign result[5] = ((~in[3] & ~in[0]) | (~in[3] & in[2] & in[1]) | (in[2] & ~in[0]) | (in[3] & ~in[1] & in[0]));
	assign result[6] = ((~in[3] & in[1]) | (~in[2] & in[0]) | (in[2] & in[1] & ~in[0]) | (~in[3] & ~in[2]));
	
	assign out = result;

endmodule

// If your module requires instances of other modules, you may write them here and instantiate
// them in the ssd1 module accordingly.
