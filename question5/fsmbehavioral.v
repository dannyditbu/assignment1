module fsmbehavioral(e, w, clk, out);
output out;
input e, w, clk;
reg out;
reg q1, q2;
reg prevq1, prevq2;
	always @(posedge clk) begin
		assign q1 = e | (prevq1 & ~prevq2) | (prevq1 & w);
		assign q2 = w | (~prevq1 & prevq2) | (prevq2 & e);
		assign out = ~q1 & ~q2;
		assign prevq1 = q1;
		assign prevq2 = q2;
	end
endmodule
