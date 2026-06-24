module sr_flipflop(
	input wire s,
	input wire r,
	input wire clk,
	output reg q,
	output reg u
	);
	always @(posedge clk) begin
		q = s|(~r&q);
		u = r|(~s&u);
	end
endmodule
