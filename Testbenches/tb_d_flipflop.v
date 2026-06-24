module tb_d_flipflop();
        reg d,clk,rst,en;
        wire q;
        
        initial begin
                clk = 1;
        end
        
        always #5 clk = ~clk;
        
        d_flipflop dut (.d(d),.clk(clk),.q(q),.en(en),.rst(rst));
        
        initial begin
                $dumpfile("d_flipflop_waveform.vcd");
                $dumpvars(0,tb_d_flipflop);
                d = 0; rst=0; en=0; #10;
                en=1; rst=0; d=1; #10;
                d = 0; #10;
                d = 1; #30;
                $finish;
        end
endmodule
