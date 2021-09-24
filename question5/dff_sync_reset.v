module dff_sync_reset(data, clk, q);
input data, clk;
output q;
reg q;
	always @ (posedge clk)
	q <= data;
endmodule
