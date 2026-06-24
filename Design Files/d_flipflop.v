module d_flipflop(
        input wire d,
        input wire clk,
        input wire en,
        input wire rst,
        output reg q);

        always @(posedge clk) begin
                if (rst==1) begin
                        q<=0;
                end else if (en==1) begin
                        q<=d;
                end
        end
endmodule
