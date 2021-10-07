////////////////////////////////////////////////////////////////////////////////
//
//  Filename      : 5x32_decoder.sv
//  Author        : Abdur-Rehman
//  Creation Date : 04/08/2020
//  Email         : abdurrehmansiddiqui30@gmail.com
//
//  Open source and free to use SystemVerilog programs for your task
//
//  Description
//  ===========
//  SystemVerilog program for 5x32 decoder
//
////////////////////////////////////////////////////////////////////////////////

module decoder5to32 (
  input      [ 4:0] Data_in , // 5-bit data input
  output reg [31:0] Data_out  // 32-bit data output
);

  always @(Data_in)
    case (Data_in)   //case statement. Check all the 8 combinations.
      5'b00000 : Data_out = 32'h00000001;
      5'b00001 : Data_out = 32'h00000002;
      5'b00010 : Data_out = 32'h00000004;
      5'b00011 : Data_out = 32'h00000008;
      5'b00100 : Data_out = 32'h00000010;
      5'b00101 : Data_out = 32'h00000020;
      5'b00110 : Data_out = 32'h00000040;
      5'b00111 : Data_out = 32'h00000080;
      5'b01000 : Data_out = 32'h00000100;
      5'b01001 : Data_out = 32'h00000200;
      5'b01010 : Data_out = 32'h00000400;
      5'b01011 : Data_out = 32'h00000800;
      5'b01100 : Data_out = 32'h00001000;
      5'b01101 : Data_out = 32'h00002000;
      5'b01110 : Data_out = 32'h00004000;
      5'b01111 : Data_out = 32'h00008000;
      5'b10000 : Data_out = 32'h00010000;
      5'b10001 : Data_out = 32'h00020000;
      5'b10010 : Data_out = 32'h00040000;
      5'b10011 : Data_out = 32'h00080000;
      5'b10100 : Data_out = 32'h00100000;
      5'b10101 : Data_out = 32'h00200000;
      5'b10110 : Data_out = 32'h00400000;
      5'b10111 : Data_out = 32'h00800000;
      5'b11000 : Data_out = 32'h01000000;
      5'b11001 : Data_out = 32'h02000000;
      5'b11010 : Data_out = 32'h04000000;
      5'b11011 : Data_out = 32'h08000000;
      5'b11100 : Data_out = 32'h10000000;
      5'b11101 : Data_out = 32'h20000000;
      5'b11110 : Data_out = 32'h40000000;
      5'b11111 : Data_out = 32'h80000000;

      //To make sure that latches are not created create a default value for output.
      default : Data_out = 32'b00000000000000000000000000000000;
    endcase

  endmodule