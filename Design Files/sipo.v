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
module sipo(
	input wire s_in,
	input wire clk,
	input wire en,
	input wire rst,
	output wire p0,
	output wire p1,
	output wire p2,
	output wire p3);
        d_flop ff0 (.clk(clk),.d(s_in),.en(en),.rst(rst),.q(p0));
        d_flop ff1 (.clk(clk),.d(p0),.en(en),.rst(rst),.q(p1));
        d_flop ff2 (.clk(clk),.d(p1),.en(en),.rst(rst),.q(p2));
        d_flop ff3 (.clk(clk),.d(p2),.en(en),.rst(rst),.q(p3));
endmodule	
