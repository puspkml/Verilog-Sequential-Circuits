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
module piso(
        input wire d0,
	input wire d1,
	input wire d2,
	input wire d3,
        input wire clk,
        input wire en,
        input wire rst,
	input wire s,
        output wire s_out);
	wire q0,q1,q2;
	wire p1,p2,p3;
	assign p1 = (q0&s)|(~s&d1);
	assign p2 = (q1&s)|(~s&d2);
	assign p3 = (q2&s)|(~s&d3);
        d_flop ff0 (.clk(clk),.d(d0),.en(en),.rst(rst),.q(q0));
        d_flop ff1 (.clk(clk),.d(p1),.en(en),.rst(rst),.q(q1));
        d_flop ff2 (.clk(clk),.d(p2),.en(en),.rst(rst),.q(q2));
        d_flop ff3 (.clk(clk),.d(p3),.en(en),.rst(rst),.q(s_out));
endmodule
