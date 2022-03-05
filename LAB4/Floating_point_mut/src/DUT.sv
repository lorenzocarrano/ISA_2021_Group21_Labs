module DUT(dut_if.port_in in_inter, dut_if.port_out out_inter, output enum logic [2:0] {INITIAL, WAIT_0, WAIT_1, WAIT_2, WAIT_3, SEND_0, SEND_1} state);
	    
	logic VOUT_s;
	const logic VIN_s = 1;
	logic rst_n;
	assign rst_n = ~(in_inter.rst);

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
                    state <= WAIT_0;
                end
                
                WAIT_0: begin
                    if(in_inter.valid) begin
                        in_inter.ready <= 0;
                        //out_inter.data <= in_inter.A + in_inter.B;
                        $display("FPMUL: input A = %f, input B = %f", $bitstoshortreal(in_inter.A),$bitstoshortreal(in_inter.B));
                        $display("FPMUL: input A = %b, input B = %b", in_inter.A,in_inter.B);
                        state <= WAIT_1;
                    end
                end
			
				WAIT_1: begin
					state <= WAIT_2;
				end
				
				WAIT_2: begin
					state <= WAIT_3;
				end

				WAIT_3: begin
					state <= SEND_0;
				end      
				
				SEND_0: begin
					//if(VOUT_s) begin
						$display("FPMUL: output OUT = %f", $bitstoshortreal(out_inter.data));
                        $display("FPMUL: output OUT = %b", out_inter.data);
					//end
                    out_inter.valid <= 1;
					state <= SEND_1;
                end          

                SEND_1: begin
                    if(out_inter.ready) begin
                        out_inter.valid <= 0;
                        in_inter.ready <= 1;
                        state <= WAIT_0;
                    end
                end
        endcase
    end
endmodule: DUT
