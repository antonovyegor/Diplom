
module NCO (
	clk,
	reset_n,
	clken,
	phi_inc_i,
	freq_mod_i,
	fsin_o,
	out_valid);	

	input		clk;
	input		reset_n;
	input		clken;
	input	[31:0]	phi_inc_i;
	input	[31:0]	freq_mod_i;
	output	[11:0]	fsin_o;
	output		out_valid;
endmodule