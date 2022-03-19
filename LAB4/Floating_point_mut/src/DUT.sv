module DUT(dut_if.port_in in_inter, dut_if.port_out out_inter, output enum logic [1:0] {INITIAL, WAIT, SEND} state);
	    
	logic VOUT_s;
	const logic VIN_s = 1;
	logic rst_n;
	assign rst_n = ~(in_inter.rst);

	logic [3:0][31:0] array_A;
	logic [3:0][31:0] array_B;

    FPmul FPmul_under_test(.FP_A(in_inter.A),.FP_B(in_inter.B),.FP_Z(out_inter.data), .VIN(VIN_s), .VOUT(VOUT_s), .CLK(in_inter.clk), .RST_n(rst_n));

    always_ff @(posedge in_inter.clk)
    begin
        if(in_inter.rst) begin
            in_inter.ready <= 0;
            out_inter.data <= 'x;
            out_inter.valid <= 0;
            state <= INITIAL;
        end
        else case(state)
                INITIAL: begin
                    in_inter.ready <= 1;
                    state <= WAIT;
                end
                
                WAIT: begin
                    if(in_inter.valid) begin
                        in_inter.ready <= 0;
                        //out_inter.data <= in_inter.A + in_inter.B;
                   
						//array_A[4] <= array_A[3];
						//array_B[4] <= array_B[3];
						array_A[3] <= array_A[2];
						array_B[3] <= array_B[2];
						array_A[2] <= array_A[1];
						array_B[2] <= array_B[1];
						array_A[1] <= array_A[0];
						array_B[1] <= array_B[0];
						array_A[0] <= in_inter.A;
						array_B[0] <= in_inter.B;

                        if(VOUT_s) begin
							$display("FPMUL: input A = %f, input B = %f", $bitstoshortreal(array_A[1]),$bitstoshortreal(array_B[1]));
                        	$display("FPMUL: input A = %b, input B = %b", array_A[1],array_B[1]);
							$display("FPMUL: output OUT = %f", $bitstoshortreal(out_inter.data));
                        	$display("FPMUL: output OUT = %b", out_inter.data);
						end

                    	out_inter.valid <= 1;
						state <= SEND;
                    end
                end              

                SEND: begin
                    if(out_inter.ready) begin
                        out_inter.valid <= 0;
                        in_inter.ready <= 1;
                        state <= WAIT;
                    end
                end
        endcase
    end
endmodule: DUT
