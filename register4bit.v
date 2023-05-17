////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Module:      register4bit
// Author:      JST/KLC
// Created:     25 October 2019
// Modified:    8 March 2022 (KLC)
// Version:     1.1
// Description: This is a 4-bit register with asynchronous reset and synchronous load enable.
//              The register contents are the present state of the sequential circuit 
//              ** Note that this modules uses Verilog constructs that you are NOT permitted ** 
//              ** to use in your code                                                       **
//
// *****************************************
// YOU MUST NOT MODIFY ANY PART OF THIS FILE
// *****************************************
//
////////////////////////////////////////////////////////////////////////////////////////////////////

module register4bit(clock, reset, enable, D, present);
	input        clock;		// Register clock
	input        reset;		// Register asynchronous reset
	input        enable;		// Register synchronous enable
	input  [3:0] D;		   // The register inputs represent the next state of a D flip-flop.
	output [3:0] present;	// The register outputs represent the present state.
	reg    [3:0] present;
	
	always@(posedge clock or negedge reset) begin
		if(reset == 1'b0)
			present <= 4'b0;
		else if(enable == 1'b1)
			present <= D;
	end
	
endmodule
