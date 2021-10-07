There are two methods to calculate odd parity from an N-bit register.

Either performing XOR operation on all concurrent bits of register 

  assign parity_out = (data_in[0]  ^ data_in[1]) ^
                      (data_in[2]  ^ data_in[3]) ^
                      (data_in[4]  ^ data_in[5]) ^
                      (data_in[6]  ^ data_in[7]) ^
                      (data_in[8]  ^ data_in[9]) ^
                      (data_in[10] ^ data_in[11]) ^
                      (data_in[12] ^ data_in[13]) ^
                      (data_in[14] ^ data_in[15]);

OR use systemverilog XOR reduction operator on the whole register.

  assign parity_out = ^|data_in;

In the RTL, I have used single-line XOR reduction operator as it is easy to understand and pretty straighf-forward.