module full_adder_4bit_bh_tb;
reg [3:0] a,b;
reg cin;
wire [3:0] s;
wire cout;
full_adder_4bit_bh_fa4(s,cout,a,b,cin);
initial
$monitor("time=%d /t a=%b /t b=%b /t cin=%b /t s=%b /t cout=%b",$time,a,b,cin,cout);
initial begin
a = 0;
b = 0;
cin = 0;
	repeat(16) begin//all options
	#10 a = a + 1;
		repeat(16) begin//all options
		#10 b = b + 1;
			repeat(2) begin//optoins for cin
			#10 cin=~cin;
			end
		end
	end
endmodule

