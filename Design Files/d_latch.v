module d_latch(
	input wire d,
	input wire e,
	output reg q,
	output reg u
	);
	always @(*) begin
		q = ~((~d&e)|u);
		u = ~((d&e)|q);
	end
endmodule