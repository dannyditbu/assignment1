module fsm(e,w,clk,out);
output out;
input e, w, clk;
reg q1,q2;
//reg out;
	
	//Structural description for the first dff
	and g1 (q1q2not,q1, ~q2);
	and g2 (q1w, w, q1);
	or f1 (d1, e, q1q2not, q1w);
	dff_sync_reset(d1, clk, q1);

	//Structural description for the second dff
	and g3 (q1notq2, ~q1, q2);
	and g4 (q2e, e, q2);
	or f2 (d2, w, q1notq2, q2e);
	dff_sync_reset(d2, clk, q2);

	assign out = ~q1 & ~q2;
endmodule
