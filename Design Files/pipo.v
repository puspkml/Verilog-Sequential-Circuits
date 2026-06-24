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
module pipo(
        input wire d0,
        input wire d1,
        input wire d2,
        input wire d3,
        input wire clk,
        input wire en,
        input wire rst,
        output wire q0,
        output wire q1,
	output wire q2,
	output wire q3);
        d_flop ff0 (.clk(clk),.d(d0),.en(en),.rst(rst),.q(q0));
        d_flop ff1 (.clk(clk),.d(d1),.en(en),.rst(rst),.q(q1));
        d_flop ff2 (.clk(clk),.d(d2),.en(en),.rst(rst),.q(q2));
        d_flop ff3 (.clk(clk),.d(d3),.en(en),.rst(rst),.q(q3));
endmodule
