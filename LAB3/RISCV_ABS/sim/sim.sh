#!/bin/bash
source /software/scripts/init_msim6.2g
rm -r work
vlib work
vcom -93 -work ./work ../src/myTypes.vhd
vcom -93 -work ./work ../src/mux3to1_A.vhd
vcom -93 -work ./work ../src/mux3to1_B.vhd
vcom -93 -work ./work ../src/register_file.vhd
vcom -93 -work ./work ../src/immediate_gen.vhd
vcom -93 -work ./work ../src/abs_component.vhd
vcom -93 -work ./work ../src/ALU.vhd
vcom -93 -work ./work ../src/DataHazardUnit.vhd
vcom -93 -work ./work ../src/ForwardingUnit.vhd
vcom -93 -work ./work ../src/controller.vhd
vcom -93 -work ./work ../src/Datapath.vhd
vcom -93 -work ./work ../src/riscv.vhd

vcom -93 -work ./work ../testbench/data_memory.vhd
vcom -93 -work ./work ../testbench/instruction_memory.vhd
vcom -93 -work ./work ../testbench/riscv_tb.vhd

vsim work.riscv_tb
run 2500 ns

