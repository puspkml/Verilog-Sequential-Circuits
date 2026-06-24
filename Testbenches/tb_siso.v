module tb_siso;
	reg s_in, clk,en,rst;
	wire q0,q1,q2,s_out;
	initial begin
		clk = 1;
	end
	always #5 clk = ~clk;
	siso dut (.s_in(s_in),.clk(clk),.en(en),.rst(rst),.s_out(s_out));
		initial begin
			$dumpfile("siso_waveform.vcd");
			$dumpvars(0,tb_siso);
			rst=1;en=0;s_in=1;#5;
                        rst=1;en=1;s_in=1;#5;
                        rst=0;en=0;s_in=1;#5;
                        rst=1;en=0;s_in=0;#5;
                        rst=0;en=1;s_in=1;#15;
			s_in =0;#10;s_in=1;#10;s_in=0;#10;s_in=1;#50;
			$finish;
		end
endmodule
