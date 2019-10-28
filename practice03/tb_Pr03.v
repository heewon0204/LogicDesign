module	tb_Pr03		;

reg	sel	;
reg	in0	;
reg	in1	;

wire	out1	;

wire	out2	;

wire	out3	;

mux2to1_cond dut_1(	.out( out1 ),
			.sel( sel  ),
			.in0( in0  ),
			.in1( in1  ));

mux2to1_if dut_2(	.out( out2 ),
			.sel( sel  ),
			.in0( in0  ),
			.in1( in1  ));

mux2to1_case dut_3(	.out( out3 ),
			.sel( sel  ),
			.in0( in0  ),
			.in1( in1  ));


initial begin
	$display("Conditional Expression : out1");
	$display("Using 'IF' : out2");
	$display("Using 'CASE' : out3");
	$display("================================================================");
	$display("sel	in0	in1	out1	out2	out3");
	$display("================================================================");
		#(50)  {sel, in0, in1} = 3'b000;  #(50)  $display("%b\t%b\t%b\t%b\t%b\t%b", sel, in0, in1, out1, out2, out3);
		#(50)  {sel, in0, in1} = 3'b001;  #(50)  $display("%b\t%b\t%b\t%b\t%b\t%b", sel, in0, in1, out1, out2, out3);
		#(50)  {sel, in0, in1} = 3'b010;  #(50)  $display("%b\t%b\t%b\t%b\t%b\t%b", sel, in0, in1, out1, out2, out3);
		#(50)  {sel, in0, in1} = 3'b011;  #(50)  $display("%b\t%b\t%b\t%b\t%b\t%b", sel, in0, in1, out1, out2, out3);
		#(50)  {sel, in0, in1} = 3'b100;  #(50)  $display("%b\t%b\t%b\t%b\t%b\t%b", sel, in0, in1, out1, out2, out3);
		#(50)  {sel, in0, in1} = 3'b101;  #(50)  $display("%b\t%b\t%b\t%b\t%b\t%b", sel, in0, in1, out1, out2, out3);
		#(50)  {sel, in0, in1} = 3'b110;  #(50)  $display("%b\t%b\t%b\t%b\t%b\t%b", sel, in0, in1, out1, out2, out3);
		#(50)  {sel, in0, in1} = 3'b111;  #(50)  $display("%b\t%b\t%b\t%b\t%b\t%b", sel, in0, in1, out1, out2, out3);
		#(50)  $finish ;
end

endmodule

//=========================================================================================

module	tb_Pr03_4to1		;

reg [1:0] sel	;
reg	in0	;
reg	in1	;
reg	in2	;
reg	in3	;

wire	out1	;
wire	out2	;
wire	out0	;

mux4to1_case dut_1(	.out( out0 ),
			.sel( sel  ),
			.in0( in0  ),
			.in1( in1  ),
			.in2( in2  ),
			.in3( in3  ));

mux4to1_if dut_2(	.out( out1 ),
			.sel( sel  ),
			.in0( in0  ),
			.in1( in1  ),
			.in2( in2  ),
			.in3( in3  ));

mux4to1_inst dut_3(	.out( out2 ),
			.sel( sel  ),
			.in0( in0  ),
			.in1( in1  ),
			.in2( in2  ),
			.in3( in3  ));

initial begin
	$display("Conditional Expression : out1");
	$display("Using 'IF' : out2");
	$display("Using 'CASE' : out3");
	$display("================================================================");
	$display("sel[1]	sel[0]	in0	in1	in2	in3	out0	out1	out2");
	$display("================================================================");
		#(50)  {sel[1], sel[0], in0, in1, in2, in3} = 6'b000000;  #(50)   $display("%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", sel[1], sel[0], in0, in1, in2, in3, out0, out1, out2);
		#(50)  {sel[1], sel[0], in0, in1, in2, in3} = 6'b000001;  #(50)   $display("%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", sel[1], sel[0], in0, in1, in2, in3, out0, out1, out2);
		#(50)  {sel[1], sel[0], in0, in1, in2, in3} = 6'b000010;  #(50)   $display("%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", sel[1], sel[0], in0, in1, in2, in3, out0, out1, out2);
		#(50)  {sel[1], sel[0], in0, in1, in2, in3} = 6'b000011;  #(50)   $display("%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", sel[1], sel[0], in0, in1, in2, in3, out0, out1, out2);
		#(50)  $finish ;
end

endmodule

//=========================================================================================




