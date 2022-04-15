class refmod extends uvm_component;
    `uvm_component_utils(refmod)
    
    packet_in tr_in;
    packet_out tr_out;
    uvm_get_port #(packet_in) in;
    uvm_put_port #(packet_out) out;

	//shortreal A_f;
	//shortreal B_f;
	shortreal A_f_vec [3:0];
	shortreal B_f_vec [3:0];
    
    function new(string name = "refmod", uvm_component parent);
        super.new(name, parent);
        in = new("in", this);
        out = new("out", this);
    endfunction
    
    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        tr_out = packet_out::type_id::create("tr_out", this);
    endfunction: build_phase
    
    virtual task run_phase(uvm_phase phase);
        super.run_phase(phase);
        
        forever begin
            in.get(tr_in);
			B_f_vec[1] <= B_f_vec[0];
			A_f_vec[1] <= A_f_vec[0];
			A_f_vec[0] = $bitstoshortreal(tr_in.A);
			B_f_vec[0] = $bitstoshortreal(tr_in.B);
		
            tr_out.data = $shortrealtobits(A_f_vec[1]*B_f_vec[1]);
            $display("refmod: input A = %f, input B = %f, output OUT = %f",A_f_vec[1], B_f_vec[1], $bitstoshortreal(tr_out.data));
			$display("refmod: input A = %b, input B = %b, output OUT = %b",$shortrealtobits(A_f_vec[1]), $shortrealtobits(A_f_vec[1]), tr_out.data);
            out.put(tr_out);
        end
    endtask: run_phase
endclass: refmod
