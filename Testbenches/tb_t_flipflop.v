module tb_t_flipflop();
	reg t,clk;
	wire q,u;
	initial begin
		clk = 1;
	end
	always #5 clk = ~clk;
	t_flipflop dut (.t(t),.clk(clk),.q(q),.u(u));
	initial begin
		$dumpfile("t_flipflop_waveform.vcd");
		$dumpvars(0,tb_t_flipflop);
		t=0;#10;
		t=1;#10;
		t=0;#10;
		t=1;#10;
		$finish;
	end
endmodule
