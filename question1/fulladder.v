module fulladder(a, b, cin, cout, sum);
input  a, b;
input cin;
output cout;
output  sum;

//reg cout,sum;

assign sum = cin ^ (a ^ b);
assign cout = (a & b) | (b & cin) | (a & cin);
endmodule
