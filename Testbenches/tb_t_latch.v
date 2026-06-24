module tb_t_latch();
	reg t;
	wire q,u;
	t_latch dut (
		.t(t),
		.q(q),
		.u(u)
	);
	initial begin
		$dumpfile("t_latch_waveform.vcd");
		$dumpvars(0,tb_t_latch);
		t=0;#10;
		t=1;#10;
		t=0;#10;
		$finish;
	end
endmodule