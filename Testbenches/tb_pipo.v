module tb_pipo();
	reg d0,d1,d2,d3,rst,en,clk;
	wire q0,q1,q2,q3;
	initial clk=1;
	always #5 clk=~clk;
	pipo dut (.d0(d0),.d1(d1),.d2(d2),.d3(d3),
		.clk(clk),.rst(rst),.en(en),.q0(q0),.q1(q1),.q2(q2),.q3(q3));
	initial begin
		$dumpfile("pipo_waveform.vcd");
		$dumpvars(0,tb_pipo);
		rst=1;en=0;d0=1;d1=0;d2=1;d3=0;#10;
		en=1;rst=0;#10;
		en =0;rst=0;#20;
		$finish;
	end
endmodule
