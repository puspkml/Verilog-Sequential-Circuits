module tb_sr_latch();
	reg s,r;
	wire q,u;
	sr_latch dut (
		.s(s),
		.r(r),
		.q(q),
		.u(u)
	);
	initial begin
		$dumpfile("sr_latch_waveform.vcd");
		$dumpvars(0,tb_sr_latch);
		s = 1;r = 0;
		#10;
		s = 0;r = 0;
		#10;
		s = 0;r = 1;
		#10;
		s = 0;r = 0;
		#10;
		s = 1;r = 1;
		#10;
		s = 0;r = 0;
		#10;
		$finish;
	end
endmodule