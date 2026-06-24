module tb_jk_flipflop();
	reg j,k,clk;
	wire q,u;
	initial begin
		clk = 1;
	end
	always #5 clk = ~clk;
	jk_flipflop dut (.j(j),.k(k),.clk(clk),.q(q),.u(u));
	initial begin
		$dumpfile("jk_flipflop_waveform.vcd");
		$dumpvars(0,tb_jk_flipflop);
		j=1;k=0;#10;
		j=0;k=0;#10;
		j=0;k=1;#10;
		j=0;k=0;#10;
		j=1;k=1;#10;
		$finish;
	end
endmodule
