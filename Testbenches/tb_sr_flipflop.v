module tb_sr_flipflop();
	reg s,r,clk;
	wire q,u;
	initial begin
		clk =0;
	end
	always #5 clk =~clk;
	sr_flipflop dut (.s(s),.r(r),.clk(clk),.q(q),.u(u));
	initial begin
		$dumpfile("sr_flipflop_waveform.vcd");
		$dumpvars(0,tb_sr_flipflop);
		s=1;r=0;#10;
		s=0;r=0;#10;
		s=0;r=1;#10;
		s=1;r=1;#10;
		$finish;
	end
endmodule
