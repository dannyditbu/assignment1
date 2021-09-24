module paramulti(x, y, out);
//parameter N;
input [3:0] x, y;
output [7:0] out;
//reg [3:0] x, y;
reg [7:0] out;
//reg [3:0] out, bit0, andop;
	//structure for 1st row
	andadder x0y0(y[0], x[0], 0, 0, coutx0y0, out[0]);
	andadder x0y1(y[1], x[0], 0, 0, coutx0y1, sumx0y1);
	andadder x0y2(y[2], x[0], 0, 0, coutx0y2, sumx0y2);
	andadder xoy3(y[3], x[0], 0, 0, coutx0y3, sumx0y3);
	
	//stucture for 2nd row
	andadder x1y0(y[0], x[1], sumx0y1, coutx0y0, coutx1y0, out[1]);
	andadder x1y1(y[1], x[1], sumx0y2, coutx0y1, coutx1y1, sumx1y1);
	andadder x1y2(y[2], x[1], sumx0y3, coutx0y2, coutx1y2, sumx1y2);
	andadder x1y3(y[3], x[1], 0, coutx0y3, coutx1y3, sumx1y3);

	//Structure for 3rd row
	andadder x2y0(y[0], x[2], sumx1y1, coutx1y0, coutx2y0, out[2]);
	andadder x2y1(y[1], x[2], sumx1y2, coutx1y1, coutx2y1, sumx2y1);
	andadder x2y2(y[2], x[2], sumx1y3, coutx1y2, coutx2y2, sumx2y2);
	andadder x2y3(y[3], x[2], 0, coutx1y3, coutx2y3, sumx2y3);

	//Strucutre for last row
	andadder x3y0(y[0], x[3], sumx2y1, coutx2y0, coutx3y0, out[3]);
	andadder x3y1(y[1], x[3], sumx2y2, coutx2y1, coutx3y1, sumx3y1);
	andadder x3y2(y[2], x[3], sumx2y3, coutx2y2, coutx3y2, sumx3y2);
	andadder x3y3(y[3], x[3], 0, coutx2y3, coutx3y3, sumx2y3);

	//Structure for carry row
	fulladder f0(sumx3y1, coutx3y0, 0, coutf0, out[4]);
	fulladder f1(sumx3y2, coutx3y1, coutf0, coutf1, out[5]);
	fulladder f2(sumx3y3, coutx3y2, coutf1, coutf2, out[6]);
	fulladder f3(0, coutx3y3, coutf2, coutf3, out[7]);

	//Assign values to each bit of the output
	//out[0] = sumx0y0;
	//out[1] = sumx1y0;
	//out[2] = sumx2y0;
	//out[3] = sumx3y0;
	//out[4] = sumf0;
	//out[5] = sumf1;
	//out[6] = sumf2;
	//out[7] = sumf3;
endmodule
