module tb_d_latch();
	reg d,e;
	wire q,u;
	d_latch dut (
		.d(d),
		.e(e),
		.u(u),
		.q(q)
	);
	initial begin
		$dumpfile("d_latch_waveform.vcd");
		$dumpvars(0,tb_d_latch);
		d=0;e=0;#10;
		d=1;e=0;#10;
		d=0;e=1;#10;
		d=1;e=1;#10;
		$finish;
	end
endmodule