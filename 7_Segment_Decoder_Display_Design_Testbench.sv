// File: CMPE 212 Proj1 Verilog Testbench
// Author: Amrita Shrestha
// Date: 12/9/24
// Description: This Verilog testbench is used to test the Verilog implementation of the combinational circuit that functions as a seven-segment decoder.

module testbench4proj1();
   reg [3:0] switches;
   reg [3:0] inputs;
   wire [6:0] outputs;
   
	// Connects constant to either input or output
  	// component
   proj1 test1(
     .A(inputs[2]), .B(inputs[1]), .C(inputs[0]),
     .a(outputs[6]), .b(outputs[5]), .c(outputs[4]),
     .d(outputs[3]), .e(outputs[2]), .f(outputs[1]),
     .g(outputs[0])
   );
  
  initial
    // Displays testbench output based on different
    // combinations of inputs to display the a, b, c,
    // d, e, f, and g outputs
    begin
      switches = 4'b  0000;
      $display("|\t A\t B\t C\t |\t a\t b\t c\t d\t e\t f\t g\t |");
      $display("|\t ________________________________________________________________________________________|");
      
      #85 $finish;
    end
  
  always
    begin
      // Initializes the values of switches to represent
      // values of the inputs
      inputs [0] = switches[0];
      inputs [1] = switches[1];
      inputs [2] = switches[2];
      #10 $display("|\t %b\t %b\t %b\t |\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t |", inputs[2], inputs[1], inputs[0],
                   outputs[6], outputs[5], outputs[4],
                   outputs[3], outputs[2], outputs[1], 
                   outputs[0]);
      
      // Increments the switches/inputs
      switches = switches + 001;
    end
endmodule