////////////////////////////////////////////////////////////////////////////////
//
//  Filename      : odd_parity_checker.sv
//  Author        : Abdur-Rehman
//  Creation Date : 04/08/2020
//  Email         : abdurrehmansiddiqui30@gmail.com
//
//  Open source and free to use SystemVerilog programs for your task
//
//  Description
//  ===========
//  SystemVerilog program to check odd parity of a 16-bit input
//
////////////////////////////////////////////////////////////////////////////////

module odd_parity_checker (
  input       [15:0] data_in   , //8-bit input
  output wire        parity_out  //1-bit output
);

// Using systemverilog XOR reduction operator on the whole register.

  assign parity_out = ^|data_in;

endmodule