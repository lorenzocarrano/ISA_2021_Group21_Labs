//`timescale 1ns

module tb_fir_unfolded ();

   wire CLK_i;
   wire RST_n_i;
   //originally was [15:00]
   wire [7:0] DIN0_i;
   wire [7:0] DIN1_i;
   wire [7:0] DIN2_i;
   wire VIN_i;
   wire [7:0] H0_i; 
   wire [7:0] H1_i;
   wire [7:0] H2_i;
   wire [7:0] H3_i;
   wire [7:0] H4_i; 
   wire [7:0] H5_i;
   wire [7:0] H6_i;
   wire [7:0] H7_i;
   wire [7:0] H8_i; 
   wire [7:0] H9_i;
   wire [7:0] H10_i;
   wire [7:0] DOUT0_i;
   wire [7:0] DOUT1_i;
   wire [7:0] DOUT2_i;
   wire VOUT_i;
   wire END_SIM_i;

    clk_gen CG(.END_SIM(END_SIM_i),
  	      .CLK(CLK_i),
	      .RST_n(RST_n_i));

    data_maker_unfolded SM(.CLK(CLK_i),
	         .RST_n(RST_n_i),
		 .VOUT(VIN_i),
		 .DOUT0(DIN0_i),
		 .DOUT1(DIN1_i),
		 .DOUT2(DIN2_i),
		 .H0(H0_i),
		 .H1(H1_i),
		 .H2(H2_i),
		 .H3(H3_i),
	     .H4(H4_i),
		 .H5(H5_i),
		 .H6(H6_i),
		 .H7(H7_i),
         .H8(H8_i),
		 .H9(H9_i),
		 .H10(H10_i),
		 .END_SIM(END_SIM_i));

    fir_unfolded UUT(.CLK(CLK_i),
	     .RST_n(RST_n_i),
	     .DIN0(DIN0_i),
		 .DIN1(DIN1_i),
		 .DIN2(DIN2_i),
         .VIN(VIN_i),
	     .H0(H0_i),
		 .H1(H1_i),
		 .H2(H2_i),
		 .H3(H3_i),
	     .H4(H4_i),
		 .H5(H5_i),
		 .H6(H6_i),
		 .H7(H7_i),
         .H8(H8_i),
		 .H9(H9_i),
		 .H10(H10_i),
         .DOUT0(DOUT0_i),
		 .DOUT1(DOUT1_i),
		 .DOUT2(DOUT2_i),
         .VOUT(VOUT_i));

    data_sink_unfolded DS(.CLK(CLK_i),
		.RST_n(RST_n_i),
		.VIN(VOUT_i),
		.DIN0(DOUT0_i), 
		.DIN1(DOUT1_i),
		.DIN2(DOUT2_i));   

endmodule

		   
