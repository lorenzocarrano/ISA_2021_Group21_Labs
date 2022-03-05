source /software/scripts/init_questa10.7c

rm -rf work
vlib work

vcom ../src/MBE/*
vcom ../src/fpuvhdl/common/*
vcom ../src/fpuvhdl/adder/fplzc_fplzc.vhd 
vcom ../src/fpuvhdl/adder/fpalign_struct.vhd 
vcom ../src/fpuvhdl/adder/fpinvert_fpinvert.vhd 
vcom ../src/fpuvhdl/adder/fpselcomplement_fpselcomplement.vhd 
vcom ../src/fpuvhdl/adder/fpswap_fpswap.vhd
vcom ../src/fpuvhdl/adder/fpadd_normalize_struct.vhd 
vcom ../src/fpuvhdl/adder/fpadd_stage1_struct.vhd 
vcom ../src/fpuvhdl/adder/fpadd_stage2_struct.vhd 
vcom ../src/fpuvhdl/adder/fpadd_stage3_struct.vhd 
vcom ../src/fpuvhdl/adder/fpadd_stage4_struct.vhd 
vcom ../src/fpuvhdl/adder/fpadd_stage5_struct.vhd 
vcom ../src/fpuvhdl/adder/fpadd_stage6_struct.vhd
vcom ../src/fpuvhdl/adder/fpadd_pipeline.vhd 

vcom ../src/fpuvhdl/multiplier/fd.vhd
vcom ../src/fpuvhdl/multiplier/register.vhd 
vcom ../src/fpuvhdl/multiplier/fpmul_stage1_struct.vhd 
vcom ../src/fpuvhdl/multiplier/fpmul_stage2_struct.vhd 
vcom ../src/fpuvhdl/multiplier/fpmul_stage3_struct.vhd 
vcom ../src/fpuvhdl/multiplier/fpmul_stage4_struct.vhd 
vcom ../src/fpuvhdl/multiplier/fpmul_pipeline.vhd

vlog -sv ../tb/top.sv
vsim top
