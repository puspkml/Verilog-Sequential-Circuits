module tb_piso();
	reg d0,d1,d2,d3,clk,rst,en,s;
	wire s_out;
	initial begin
		clk=1;
	end
	always #5 clk=~clk;
	piso dut (.d0(d0),.d1(d1),.d2(d2),.d3(d3),.clk(clk),.en(en),.rst(rst),.s(s),.s_out(s_out));
	initial begin
		$dumpfile("piso_waveform.vcd");
		$dumpvars(0,tb_piso);
		rst=1;en=0;d0=0;d1=0;d2=0;d3=0;s=0;#10;
		rst=0;en=1;s=0;d0=0;d1=1;d2=0;d3=1;#10;
		s=1;#60;
		$finish;
	end
endmodule
