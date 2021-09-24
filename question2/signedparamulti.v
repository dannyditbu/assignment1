module signedparamulti(x, y, out);
input [4:0] x,y;
output [9:0] out;
integer i;
reg bit0;
reg [9:0] temp;
reg[4:0] tempx, tempy;
reg [9:0] out;
reg [4:0] andop;
reg [9:0] extendedandop;

	 
	always @(x or y) begin
		assign tempx = x[4]?~x + 1:x;
		assign tempy = y[4]?~y + 1:y;
		assign temp = 9'b0;
		for (i = 0; i < 5; i = i + 1) begin
			if (tempx[1]) begin
				temp = temp + (tempy<<1);
			end
		end
		if (tempx[4] ^ tempy[4]) begin
			temp = ~temp + 1;
		end 
		out = temp;
	end
endmodule
	//always @ (x or y) begin
	//	if (y[4] == 0) begin
	//		for (i = 0; i < 5; i = i+1) begin
	//			bit0 = temp[0];
	//			andop = x & {5{bit0}};
	//			extendedandop = {{(4-i){andop[4]}},andop};
	//			out = out + andop;
	//			temp = temp >> 1;
	//		end
	//	end else begin
	//		temp = ~temp + 1'b1;
	//		for (i = 0; i < 5; i = i+1) begin
	//			bit0 = temp[0];
	//			andop = x & {5{bit0}};
	//			extendedandop = {{(4-i){andop[4]}},andop};
	//			out = out + andop;
	//			temp = temp >> 1;
		//	end
	//	end
	//end

