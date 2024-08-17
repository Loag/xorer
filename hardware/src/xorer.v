// a device that takes in a key and data and xors them together

module xorer (
  input wire enabled, // enabled, active high
  input wire[31:0] data,
  input wire[31:0] key,
  output reg [31:0] value // output
);

  // Executed whenever the signals in the sensitivity list (in this case, en, rst or d) change.
  always @(enabled)
  if (enabled) // if reset is low, then reset q
    value <= data ^ key;
endmodule