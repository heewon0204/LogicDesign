module mux2to1_cond(	out,
			in0,
			in1,
			sel );

output		out	;
input		in0	;
input		in1	;
input		sel	;

assign	out = (sel)? in1 : in0 ;

endmodule

//================================================

module mux2to1_if( out, in0, in1, sel);

output		out	;

input		in0	;
input		in1	;
input		sel	;

reg		out	;

always @(in0, in1, sel) begin
	if(sel == 1'b0) begin
		out = in0;
	end else begin
		out = in1;
	end
end
endmodule

//================================================

module mux2to1_case(	out,
			in0,
			in1,
			sel );

output		out	;
input		in0	;
input		in1	;
input		sel	;

reg		out	;

always @(in0, in1, sel) begin
	case({sel, in0, in1})
		3'b000 : out = in0	;
		3'b001 : out = in0	;
		3'b010 : out = in0	;
		3'b011 : out = in0	;
		3'b100 : out = in1	;
		3'b101 : out = in1	;
		3'b110 : out = in1	;
		3'b111 : out = in1	;
	endcase
end

endmodule



//================================================

module mux4to1_inst(	out,
			in0,
			in1,
			in2,
			in3,
			sel );

output		out	;

input		in0	;
input		in1	;
input		in2	;
input		in3	;

input	[1:0]	sel	;
		
wire 	[1:0]	o_mux2	;

mux2to1_case mux_U0(	.out ( o_mux2[0]),
			.in0 ( in0	),
			.in1 ( in1	),
			.sel ( sel[0]	));

mux2to1_case mux_U1(	.out ( o_mux2[1]),
			.in0 ( in2	),
			.in1 ( in3	),
			.sel ( sel[0]	));

mux2to1_case mux_U2(	.out ( out	),
			.in0 ( o_mux2[0] ),
			.in1 ( o_mux2[1]	),
			.sel ( sel[1]	));

endmodule


//================================================
module mux4to1_case(	out,
			in0,
			in1,
			in2,
			in3,
			sel);

output	out;

input	in0;
input	in1;
input	in2;
input	in3;
input	[1:0] sel;

reg	out;

always @(sel, in0, in1, in2, in3) begin
	case(sel)
	  2'b00 : out = in0;
	  2'b01 : out = in1;
	  2'b10 : out = in2;
	  2'b11 : out = in3;
	endcase
end

endmodule

//=================================================
module mux4to1_if( out, in0, in1, in2, in3, sel);

output		out	;

input		in0	;
input		in1	;
input		in2	;
input		in3	;
input		sel	;

reg		out	;

always @(sel, in0, in1, in2, in3) begin
	if(sel == 2'b00) begin
		out = in0;
	end else if(sel == 2'b01) begin
		out = in1;
	end else if(sel == 2'b10) begin
		out = in2;
	end else begin
		out = in3;
	end
end
endmodule
