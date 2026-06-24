module jk_latch(
	input wire j,
	input wire k,
	output reg q,
	output reg u
	);
	always @(*) begin
		q = ~k|(q&j);
		u = ~j|(u&k);
	end
endmodule