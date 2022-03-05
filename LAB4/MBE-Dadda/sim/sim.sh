source /software/scripts/init_questa10.7c

rm -rf work
vlib work

vcom ../src/fpuvhdl/adder/*
vcom ../src/fpuvhdl/common/*
vcom ../src/fpuvhdl/multiplier/*
vcom ../src/MBE/*
vlog -sv ../tb/top.sv
vsim top
