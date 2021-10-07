////////////////////////////////////////////////////////////////////////////////
//
//  Filename      : 16x4_priority_encoder.sv
//  Author        : Abdur-Rehman
//  Creation Date : 04/08/2020
//  Email         : abdurrehmansiddiqui30@gmail.com
//
//  Open source and free to use SystemVerilog programs for your task
//
//  Description
//  ===========
//  SystemVerilog program for 16x4 priority encoder
//
////////////////////////////////////////////////////////////////////////////////

module priority_encoder_16by4_case (
  input      [15:0] data_in,          // 16-bit data input
  output reg [ 3:0] data_out          // 4-bit data output
);

  always @*
    case (data_in)                                      // case structure with data input parameter
      16'b0000000000000001 : data_out = 4'b0000;
      16'b000000000000001? : data_out = 4'b0001;
      16'b00000000000001?? : data_out = 4'b0010;
      16'b0000000000001??? : data_out = 4'b0011;
      16'b000000000001???? : data_out = 4'b0100;
      16'b00000000001????? : data_out = 4'b0101;
      16'b0000000001?????? : data_out = 4'b0110;
      16'b000000001??????? : data_out = 4'b0111;
      16'b00000001???????? : data_out = 4'b1000;
      16'b0000001????????? : data_out = 4'b1001;
      16'b000001?????????? : data_out = 4'b1010;
      16'b00001??????????? : data_out = 4'b1011;
      16'b0001???????????? : data_out = 4'b1100;
      16'b001????????????? : data_out = 4'b1101;
      16'b01?????????????? : data_out = 4'b1110;
      16'b1??????????????? : data_out = 4'b1111;
      default              : data_out = 4'bxxxx;        // assigning don't cares (X) for the default case
    endcase

endmodule