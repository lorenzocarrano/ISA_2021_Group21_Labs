source /software/scripts/init_questa10.7c

rm -rf work
vlib work

vlog -sv ../tb/top.sv
vsim top
