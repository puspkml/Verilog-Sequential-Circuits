module jk_flipflop(
	input wire j,
	input wire k,
	input wire clk,
	output reg q,
	output reg u
	);
	always @(posedge clk) begin
		q <= ~u;
		u <= (k&q)|(~j&u);
	end
endmodule
