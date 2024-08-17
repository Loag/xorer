module tb_xorer;
  reg run;
  reg enabled;
  reg [31:0] data;
  reg [31:0] key;
  reg [31:0] value;

  xorer xor_chip(
    .enabled(enabled),
    .data(data),
    .key(key),
    .value(value)
  );

  always @(posedge run) begin
      assert (value === 32'b11111111111111111111111111111110) else $fatal(1, "the zor value is not correct %b", value);
  end

  initial begin
    run = 1'b0;
    
    // setup state
    enabled = 1'b1; 
    data = 32'b11111111111111111111111111111111; 
    key =  32'b00000000000000000000000000000001;
    #10; // this here means to wait 10 time units

    $display("Initial state: data = %b key = %b", data, key);

    run = 1'b1;
  end
endmodule