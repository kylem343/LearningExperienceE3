// Insert a module header that describes your module appropriately.

module ssd4(in, out);
	input  [3:0] in;
	output [6:0] out;
	
// In LEARNING EXPERIENCE E.3, replace this continuous assignment with the logic that drives HEX4.
// You may use a structural model and primitive logic gates or a continuous assignment model using
// PERMITTED dataflow operators.

// If you do not use HEX4 in LE E.3, leave the continuous assignment as it is.

	assign out = 7'b1111111;

endmodule

// If your module requires instances of other modules, you may write them here and instantiate
// them in the ssd4 module accordingly.
