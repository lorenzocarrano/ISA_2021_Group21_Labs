source /software/scripts/init_msim6.2g

rm -rf work
vlib work

vcom -93 work ../tb/clk_gen.vhd 
vcom -93 work ../tb/data_maker_new.vhd 
vcom -93 work ../tb/data_sink.vhd 

vlog -work ./work ../innovus/myfir.v
vlog -work ./work ../tb/tb_fir.v 
vsim -c -L /software/dk/nangate45/verilog/msim6.2g -sdftyp /tb_fir/UUT=../innovus/myfir.sdf  work.tb_fir -do wave_innovus.tcl

