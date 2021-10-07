////////////////////////////////////////////////////////////////////////////////
//
//  Filename      : 16x4_encoder.sv
//  Author        : Abdur-Rehman
//  Creation Date : 04/08/2020
//  Email         : abdurrehmansiddiqui30@gmail.com
//
//  Open source and free to use SystemVerilog programs for your task
//
//  Description
//  ===========
//  SystemVerilog program for 16x4 encoder
//
////////////////////////////////////////////////////////////////////////////////

module encoder_16_by_4_case (
  input      [15:0] data_in , // 16-bit data input
  output reg [ 3:0] data_out  // 16-bit data output
);

  always @*
    case (data_in)                                      //case structure with input parameter
      16'b0000000000000001 : data_out = 4'b0000;
      16'b0000000000000010 : data_out = 4'b0001;
      16'b0000000000000100 : data_out = 4'b0010;
      16'b0000000000001000 : data_out = 4'b0011;
      16'b0000000000010000 : data_out = 4'b0100;
      16'b0000000000100000 : data_out = 4'b0101;
      16'b0000000001000000 : data_out = 4'b0110;
      16'b0000000010000000 : data_out = 4'b0111;
      16'b0000000100000000 : data_out = 4'b1000;
      16'b0000001000000000 : data_out = 4'b1001;
      16'b0000010000000000 : data_out = 4'b1010;
      16'b0000100000000000 : data_out = 4'b1011;
      16'b0001000000000000 : data_out = 4'b1100;
      16'b0010000000000000 : data_out = 4'b1101;
      16'b0100000000000000 : data_out = 4'b1110;
      16'b1000000000000000 : data_out = 4'b1111;
      default              : data_out = 4'b0000;        // To make sure latches won't create, default assignment
    endcase

  endmodule