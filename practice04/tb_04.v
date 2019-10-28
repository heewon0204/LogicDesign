
module tb_3to8	;

reg	[2:0]	in	;
reg		en	;

wire		out0	;
wire		out1	;



dec3to8_shift	dut_1(	.out( out0	),
			.in( in		),
			.en( en		));

dec3to8_case	dut_2(	.out( out1	),
			.in( in		),
			.en( en		));

	
initial begin
	$display("==============================================================================================");
	$display("in	en	out0	out1");
	$display("===============================================================================================");
	#(50){en, in} = 4'b1000;	#(50) $display("%b\t%b\t%b\t%b", in,en,out0,out1);
	#(50){en, in} = 4'b1001;	#(50) $display("%b\t%b\t%b\t%b", in,en,out0,out1);
	#(50){en, in} = 4'b1010;	#(50) $display("%b\t%b\t%b\t%b", in,en,out0,out1);
	#(50){en, in} = 4'b1011;	#(50) $display("%b\t%b\t%b\t%b", in,en,out0,out1);
	#(50){en, in} = 4'b1100;	#(50) $display("%b\t%b\t%b\t%b", in,en,out0,out1);
	#(50){en, in} = 4'b1101;	#(50) $display("%b\t%b\t%b\t%b", in,en,out0,out1);
	#(50){en, in} = 4'b1110;	#(50) $display("%b\t%b\t%b\t%b", in,en,out0,out1);
	#(50){en, in} = 4'b1111;	#(50) $display("%b\t%b\t%b\t%b", in,en,out0,out1);
	#(50)	$finish;
end

endmodule

//==============================================================================================================

module tb_sequential ;

wire	q_latch		;
wire	q_dff_asyn	;
wire	q_dff_syn	;

reg	d	;
reg	clk	;
reg	rst_n	;

initial	clk = 1'b0	;

always #(100) clk = ~clk	;


d_latch		dut_0(	.q(	q_latch	),
			.d(	d	),
			.clk(	clk	),
			.rst_n(	rst_n	));

dff_asyn	dut_1(	.q(	q_dff_asyn),
			.d(	d	),
			.clk(	clk	),
			.rst_n(	rst_n	));

dff_syn		dut_2(	.q(	q_dff_syn),
			.d(	d	),
			.clk(	clk	),
			.rst_n(	rst_n	));


initial begin
	$display("==============================================================================================");
	$display("rst_n	d	q0	q1	q2");
	$display("==============================================================================================");
	#(0)	{rst_n, d} = 2'b00;
	#(50)	{rst_n, d} = 2'b00;	#(50)	$display("%b\t%b\t%b\t%b\t%b", rst_n, d, q_latch, q_dff_asyn, q_dff_syn);
	#(50)	{rst_n, d} = 2'b10;	#(50)	$display("%b\t%b\t%b\t%b\t%b", rst_n, d, q_latch, q_dff_asyn, q_dff_syn);
	#(50)	{rst_n, d} = 2'b10;	#(50)	$display("%b\t%b\t%b\t%b\t%b", rst_n, d, q_latch, q_dff_asyn, q_dff_syn);
	#(50)	{rst_n, d} = 2'b11;	#(50)	$display("%b\t%b\t%b\t%b\t%b", rst_n, d, q_latch, q_dff_asyn, q_dff_syn);
	#(50)	{rst_n, d} = 2'b11;	#(50)	$display("%b\t%b\t%b\t%b\t%b", rst_n, d, q_latch, q_dff_asyn, q_dff_syn);
	#(50)	{rst_n, d} = 2'b10;	#(50)	$display("%b\t%b\t%b\t%b\t%b", rst_n, d, q_latch, q_dff_asyn, q_dff_syn);
	#(50)	{rst_n, d} = 2'b11;	#(50)	$display("%b\t%b\t%b\t%b\t%b", rst_n, d, q_latch, q_dff_asyn, q_dff_syn);
	$finish;
end

endmodule
