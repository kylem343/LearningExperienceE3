// Insert a module header that describes your module appropriately.
//This module is the sequential block to a counter that will advance the counter to the next state when KEY0 is pressed
module counter4bitlogic(present, D);
	input  [3:0] present;   // The inputs to this combinational block are the present state 
	output [3:0] D;         // The outputs of this combinational block are the D inputs to the flop flops
	
// In LEARNING EXPERIENCE E.3, replace this continuous assignment with the logic that represents
// your counter logic. Your logic should either use a structural model and primitive logic gates or
// a continuous assignment model using PERMITTED dataflow operators.

// Since you wrote this logic in Learning Experience E.1, you may copy that logic from the previous
// assignment and paste it here to replace the continuous assignment. IF YOU HAVE CHOSEN TO MODIFY
// YOUR COUNTER LOGIC, USE YOUR NEW CODE IN THIS MODULE.
	wire[3:0] result;
	
		
	assign result = (present == 4'b0000) ? 4'b1110:
						 (present == 4'b1110) ? 4'b1101:
						 (present == 4'b1101) ? 4'b1100:
						 (present == 4'b1100) ? 4'b1000:
						 (present == 4'b1000) ? 4'b0001:
						 (present == 4'b0001) ? 4'b0011:
						 (present == 4'b0011) ? 4'b0111:
						 (present == 4'b0111) ? 4'b1111:
						 (present == 4'b1111) ? 4'b1010:
						 (present == 4'b1010) ? 4'b0101:
						 (present == 4'b0101) ? 4'b1001:
						 (present == 4'b1001) ? 4'b0000: 4'bxxxx;
						 
	
	assign D = result; //Replace with your circuit
	
endmodule

// If your module required instances of other modules in Learning Experience E.1, remember to copy
// and place them into this module accordingly.

