There are two ways to make a barrel shifter.

1) Using simple assign statement with turnary operator (which I have used in code)
OR
2) Using case statemet

RTL code snippet for case statement is here:

always @*
  case(shfit_mag)
    3'o0:    data_out = data_in;
    3'o1:    data_out = {data_in[0], data_in[7:1]};
    3'o2:    data_out = {data_in[1:0], data_in[7:2]};
    3'o3:    data_out = {data_in[2:0], data_in[7:3]};
    3'o4:    data_out = {data_in[3:0], data_in[7:4]};
    3'o5:    data_out = {data_in[4:0], data_in[7:5]};
    3'o6:    data_out = {data_in[5:0], data_in[7:6]};
    default: data_out = {data_in[6:0], data_in[7]};
  endcase