module lfsr(q,clk);
	output q;
	input clk;
	reg load,q;
	reg [7:0] seed;
	wire [7:0] so,si;
	wire newbit;
	initial
		begin
			seed=8'b00000001;
			load=1'b0;
		end
	dff33 f[7:0](so,clk,si);
	mul m1[7:0](si,seed,{so[6],so[5],so[4],so[3],so[2],so[1],so[0],newbit},load);
	xor33 x(newbit,so[7],so[6],so[3],so[1]);
	always @(posedge clk)
		begin
			load=1'b1;
			q=newbit;
		end
endmodule
