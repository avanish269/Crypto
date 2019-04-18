module mul(q,i0,i1,sel);
	output q;
	reg q;
	input i0,i1,sel;
	wire nsel;
	always @(i0 or i1 or sel or nsel)
		begin
			case(sel)
				1'b0: q=i0;
				1'b1: q=i1;
			endcase
		end
		not (nsel,sel);
endmodule
