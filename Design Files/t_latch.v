module t_latch(
	input wire t,
	output reg q,
	output reg u
	);
	always @(*) begin
		q = ~t|(q&t);
		u = ~t|(u&t);
	end
endmodule