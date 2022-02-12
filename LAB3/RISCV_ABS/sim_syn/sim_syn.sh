#!/bin/bash
source /software/scripts/init_msim6.2g

rm -r work
vlib work
vlog -work ./work ../netlist/riscv.v

vcom -93 -work ./work ../src/myTypes.vhd
vcom -93 -work ./work ../testbench/data_memory.vhd
vcom -93 -work ./work ../testbench/instruction_memory.vhd
vcom -93 -work ./work ../testbench/riscv_tb_syn.vhd

vsim -L /software/dk/nangate45/verilog/msim6.2g work.riscv_abs_tb -do sim_syn.do

