module tb_jk_latch();
	reg j,k;
	wire q,u;
	jk_latch dut (
		.j(j),
		.k(k),
		.q(q),
		.u(u)
	);
	initial begin
		$dumpfile("jk_latch_waveform.vcd");
		$dumpvars(0,tb_jk_latch);
		j=0;k=0;#10;		
		j=1;k=0;#10;
		j=0;k=0;#10;
		j=0;k=1;#10;
		j=0;k=0;#10;
		j=1;k=1;#10;
		j=0;k=0;#10;
		$finish;
	end
endmodule