module andadder (a, b, sin, cin, cout, sum);
input  a, b, sin;
input  cin;
output cout;
output  sum;
wire  temp;  
//reg cout, sum;
	//and #5 a1(temp, a, b);
	assign temp = a & b;
	assign sum = cin ^ (temp ^ sin);
	assign cout = (temp & sin) | (sin & cin) | (temp & cin);
endmodule
