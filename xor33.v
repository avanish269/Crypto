module xor33(q,a,b,c,d);
	input a,b,c,d;
	output q;
	assign q=a^b^c^d;
endmodule
