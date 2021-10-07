////////////////////////////////////////////////////////////////////////////////
//
//  Filename      : barrel_shifter.sv
//  Author        : Abdur-Rehman
//  Creation Date : 04/08/2020
//  Email         : abdurrehmansiddiqui30@gmail.com
//
//  Open source and free to use SystemVerilog programs for your task
//
//  Description
//  ===========
//  SystemVerilog program for 8-bit barrel shifter MUX
//
////////////////////////////////////////////////////////////////////////////////

module barrrel_shifter (
  input  [7:0] data_in  ,
  input  [2:0] shift_mag,
  output [7:0] data_out
);

  wire [7:0] temp0;
  wire [7:0] temp1;


  // A barrel shifter is a digital circuit that can shift a data word by a specified number of bits
  // without the use of any sequential logic, only pure combinational logic, i.e. it inherently
  // provides a binary operation.

  assign temp0    = shift_mag[0]?{data_in[0], data_in[7:1]}:data_in;
  assign temp1    = shift_mag[1]?{temp0[1:0], temp0[7:2]}  :temp0;
  assign data_out = shift_mag[2]?{temp1[3:0], temp1[7:4]}  :temp1;

endmodule