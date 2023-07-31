module tt_um_urish_simon (
	input  wire [7:0] ui_in,	// Dedicated inputs
	output wire [7:0] uo_out,	// Dedicated outputs
	input  wire [7:0] uio_in,	// IOs: Input path
	output wire [7:0] uio_out,	// IOs: Output path
	output wire [7:0] uio_oe,	// IOs: Enable path (active high: 0=input, 1=output)
	input  wire       ena,
	input  wire       clk,
	input  wire       rst_n
);

  simon simon1 (
      .clk   (clk),
      .rst   (!rst_n),
      .ticks_per_milli (50),
      .btn   (ui_in[3:0]),
      .led   (uo_out[3:0]),
      .sound (uo_out[4])
  );

endmodule
