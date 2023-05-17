// Insert a module header that describes your module appropriately.
// This module acts as a seven-segment decoder to output signals to an active-low led display
module ssd0(in, out);
	input  [3:0] in;
	output [6:0] out;

// In LEARNING EXPERIENCE E.3, replace this continuous assignment with the logic that drives HEX0.
// You may use a structural model and primitive logic gates or a continuous assignment model using
// PERMITTED dataflow operators.

// Since you wrote this logic in Learning Experience E.2, you may copy that logic from the previous
// assignment and paste it here to replace the continuous assignment. IF YOU HAVE CHOSEN TO MODIFY
// YOUR SEVEN-SEGMENT DECODER LOGIC, USE YOUR NEW CODE IN THIS MODULE.
	
	wire an, bn, cn, dn, ab, anbn, cd, cndn, bd, bndn, andn, abcn, bdn, abndn, acndn, abd, bc, anc, anD;
	wire [6:0] result;
	//for formatting purposes
	//in[3] = a
	//in[2] = b
	//in[1] = c
	//in[0] = d
	
	//not operators
	not n1(an, in[3]);
	not n7(bn, in[2]);
	not n2(cn, in[1]);
	not n3(dn, in[0]);
	
	//and operators
	and a1(ab, in[3], in[2]);
	and a2(cd, in[1], in[0]);
	and b1(bd, in[2], in[0]);
	and a3(andn, an, dn);
	and a4(abcn, ab, cn);
	and a5(bdn, in[2], dn);
	and a6(abndn, in[3], bndn);
	and a8(abd, in[3], bd);
	and a9(bc, in[2], in[1]);
	and b2(anc, an, in[1]);
	and b3(anbn, an, bn);
	and b4(cndn, cn, dn);
	and b5(bndn, bn, dn);
	and b6(acndn, in[3], cndn);
	and b7(anD, an, in[0]);
	
	//or operators
	or o1(result[6], anbn, cndn, abcn, bdn),
		o2(result[5], cndn, ab),
		o3(result[4], anbn, bndn, cd),
		o4(result[3], anD, abndn, acndn, bd),
		o5(result[2], anbn, bndn, cd),
		o6(result[1], cndn, ab),
		o7(result[0], andn, abd, bc, anc);
	
	
	//assign statements
	assign out[0] = result[6];
	assign out[1] = result[5];
	assign out[2] = result[4];
	assign out[3] = result[3];
	assign out[4] = result[2];
	assign out[5] = result[1];
	assign out[6] = result[0];

endmodule

// If your module requires instances of other modules, you may write them here and instantiate
// them in the ssd0 module accordingly.
