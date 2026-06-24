module t_flipflop(
	input wire t,
	input wire clk,
	output reg q = 0,
	output reg u
	);
	always @(posedge clk) begin
		q <= t^q;
		u <= ~q;
	end
endmodule
