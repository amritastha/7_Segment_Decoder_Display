/* File: CMPE 212 Proj1 Verilog Implementation 
** Author: Amrita Shrestha
** Date: 12/9/24
** Description: This Verilog code is the structural mode of the simplified version of implementation of the combinational circuit that functions as a seven-segment decoder for the 7-segment display. In this Verilog implementation, the standard inputs (A, B, and C) and outputs (a, b, c, d, e, f, g) are declared; however, for additional wires there are special case wires for each output (for example, the "a1" wire that stores the output for the inputs of B and w_notA_AND_notC (output of notA AND notC)).

** for example, w_ indicates a wire
** for example, a1 indicates a special case wire where it holds an output for two terms in expression before the final output
*/

// Structural Mode
// Inputs: A, B, C
// outputs: a, b, c, d, e, f
module proj1(a, b, c, d, e, f, g, A, B, C);
  
  input A, B, C;
  output a, b, c, d, e, f, g;
  
  // Represents the wires before reaching the final output
  wire a1, b1, d1, d2, f1, f2, g1;
  
  wire
  	// Necessary wires for output a
  	w_notA_AND_notC, w_A_AND_C,
  
  	// Necessary wires for output b
  	w_B_AND_C, w_notB_AND_notC,
  
  	// Necessary wires for output c
  	w_A_OR_notB,
  
  	// Necessary wires for output d
  	// Note: w_notA_AND_notC is already declared in output a
  	w_B_AND_notC, w_notA_AND_B,
  	w_A_AND_notB, w_A_AND_notB_AND_C,
  
  	// Necessary wires for output e
  	// Note: w_notA_AND_notC is already declared in output a and w_B_AND_notC is already declared in output d
  
  	// Necessary wires for output f
  	// Note: w_A_AND_notB is already declared in output d, and  w_notB_AND_notC is already declared in output b
  	w_A_AND_notC,
  	// Necessary wires for output g
  	// Note: w_A_and_notC is already declared in output f
  	w_A_XOR_B;
  
  // Implementation for a
  and (w_notA_AND_notC, ~A, ~C);
  and (w_A_AND_C, A, C);
  
  // Final Output for a
  or (a1, B, w_notA_AND_notC);
  or (a, a1, w_A_AND_C);
  
  // Implementation for b
  and (w_B_AND_C, B, C);
  and (w_notB_AND_notC, ~B, ~C);
  
  // Final Output for b
  or (b1, ~A, w_B_AND_C);
  or (b, b1, w_notB_AND_notC);
  
  // Implementation for c
  or (w_A_OR_notB, A, ~B);
  
  // Output for c
  or (c, w_A_OR_notB, C);
  
  // Implementation for d
  and (w_B_AND_notC, B, ~C);
  and (w_notA_AND_B, ~A, B);
  and (w_notA_AND_notC, ~A, ~C);
  and (w_A_AND_notB, A, ~B);
  and (w_A_AND_notB_AND_C, w_A_AND_notB, C);
  
  // Output for d
  or (d1, w_B_AND_notC, w_notA_AND_notC);
  or (d2, w_notA_AND_B, w_A_AND_notB_AND_C);
  or (d, d2, d1);
  
  // Implementation for e
  and (w_notA_AND_notC, ~A, ~C);
  and (w_B_AND_notC, B, ~C);
  
  // Output for e
  or (e, w_notA_AND_notC, w_B_AND_notC);
  
  // Implementation for f
  and (w_A_AND_notC, A, ~C);
  and (w_A_AND_notB, A, ~B);
  and (w_notB_AND_notC, ~B, ~C);
  
  // Output for f
  or (f1, w_A_AND_notC, w_notB_AND_notC);
  or (f, f1, w_A_AND_notB);
  
  // Implementation for g
  xor (w_A_XOR_B, A, B);
  and (w_A_AND_notC, A, ~C);
  
  // Output for g
  or (g, w_A_XOR_B, w_A_AND_notC);  
endmodule