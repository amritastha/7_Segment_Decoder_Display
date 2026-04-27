# 7_Segment_Decoder_Display

## Overview:
- Produce a combinational circuit functioning as a seven-segment decoder to receive a three-bit binary number and mapped to the corresponding decimal digits ranging from 0 to 7
- Eight permuatations (000 to 111) will be mapped to the decimal digits 0 through 7

## Purpose:
- Design, implement, and test a combinational logic circuit by ultilizing the minimum number of gates as possible to function as a seven-segment decoder that receives a three-bit binary number as its input and where each of the seven outputs (a, b, c, d, e, f, and g) represents one segment of the 7-segment LED display to visually display the corresponding decimal (equivalent) value ranging from 0 to 7 based on the segment combinations

## Technologies Used:
- Programming Language: Verilog
- Online Verilog platform: https://www.edaplayground.com

## Setup Instructions:
<img width="1425" height="528" alt="image" src="https://github.com/user-attachments/assets/0b4740b9-e2c7-4b40-afaf-710cc2573fa8" />

- Tools/Equipment Required:
  - 3 7408 Quad 2-input AND ICs
  - 3 7432 Quad 2-input OR ICs
  - 1 7486 Quad 2-input XOR IC
  - 1 7404 Hex Inverter
  - 1 MAN74 7-segment LED display
  - 1 Switch
  - 10k-ohm and 330-ohm Resistors
  - Breadboard and wires
  - DC Power Supply

## How to Run:
1.  Open Online Verilog platform: https://www.edaplayground.com
2.  Upload the provided 7_Segment_Decoder_Display_Design.sv and 7_Segment_Decoder_Display_Design_Testbench.sv file to the platform
3.  After compiling the code, run the testbech to view results

## Key Features:
- Utilizes the minimum number of gates possible by employing Karnaugh maps (K-map) for simplification
- Verified using Verilog with a test bench covering all the test cases
- Designed in structural model by using only 2-, 3-, and 4-input gates

## Contribution: 
This was an individual project. I generated the truth table for the seven-segment decoder to determine all possible input combinations and the corresponding desired output values for each segment, derived the K-maps, and implemented, tested, and verified the circuit functionality on the breadboard.

## Sample Test:
Sample Verilog Design Code Testbench Results
<img width="1539" height="549" alt="image" src="https://github.com/user-attachments/assets/67482c45-1bf6-4e49-be80-f48f917175f6" />

## Reflection:
- Derived K-maps to reduce Boolean expressions to simplify digital logic design which potentially enhanced the circuit's overall efficiency
- Employed Verilog to simulate a structural model to test the functionality of the circuit
- Learned that reduction of components (such as logic gates) can have a significant impact on the performance and cost of digital circuits as fewer gates can lead to lower circuit complexity
- Gained an understanding of the importance of Verilog as a tool for design, simulation, and verification of digital circuits before physical implementation on a breadboard
