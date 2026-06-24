module d_flop(
	input wire d,
	input wire clk,
	input wire en,
	input wire rst,
	output reg q);
	always @(posedge clk) begin
		if (rst == 1) begin
			q<=0;
		end
		else if (en==1) begin 
			q<=d;
		end
	end
endmodule
module siso(
	input wire s_in,
	input wire clk,
	input wire en,
	input wire rst,
	output wire s_out);
	wire q0,q1,q2;
	d_flop ff0 (.clk(clk),.d(s_in),.en(en),.rst(rst),.q(q0));
        d_flop ff1 (.clk(clk),.d(q0),.en(en),.rst(rst),.q(q1));
        d_flop ff2 (.clk(clk),.d(q1),.en(en),.rst(rst),.q(q2));
        d_flop ff3 (.clk(clk),.d(q2),.en(en),.rst(rst),.q(s_out));
endmodule
