module sr_latch(r,s,q,u);
	input r,s;
	output q,u;
	assign q = ~(u|r);
	assign u = ~(q|s);
endmodule