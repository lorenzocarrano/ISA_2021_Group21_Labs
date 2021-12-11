source /software/scripts/init_synopsys_64.18

rm -rf work
mkdir work
rm ../netlist/myfir.*
touch ../netlist/myfir.v
touch ../netlist/myfir.sdc
touch ../netlist/myfir.sdf

dc_shell-xg-t -f script_syn.tcl 

source /software/scripts/init_msim6.2g

rm -rf work
vlib work

vcom -93 work ../tb/clk_gen.vhd 
vcom -93 work ../tb/data_maker_new.vhd 
vcom -93 work ../tb/data_sink.vhd 

vlog -work ./work ../netlist/myfir.v
vlog -work ./work ../tb/tb_fir.v 
vsim -c -L /software/dk/nangate45/verilog/msim6.2g -sdftyp /tb_fir/UUT=../netlist/myfir.sdf  work.tb_fir -do wave.tcl

source /software/scripts/init_synopsys_64.18

rm -rf work
mkdir work

vcd2saif -input ../vcd/myfir_syn.vcd -output ../saif/myfir_syn.saif

dc_shell-xg-t -f syn_power.tcl

cat report_power.txt
