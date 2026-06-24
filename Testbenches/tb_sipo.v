module tb_sipo();
	reg s_in,clk,en,rst;
	wire p0,p1,p2,p3;
	initial begin
		clk =1;	
	end
	always #5 clk =~clk;
	sipo dut (.s_in(s_in),.clk(clk),.en(en),.rst(rst),.p0(p0),.p1(p1),.p2(p2),.p3(p3));
	initial begin
		$dumpfile("sipo_waveform.vcd");
		$dumpvars(0,tb_sipo);
		rst =1;en=0;s_in=0;#10;
		rst=0;en=1;s_in=1;#10;
		s_in=0;#10;s_in=1;#10;s_in=0;#10;
		s_in=1;#10;rst=0;en=0;s_in=0;#50;
		$finish;
	end
endmodule
