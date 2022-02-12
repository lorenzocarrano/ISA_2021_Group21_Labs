analyze -f vhdl -lib WORK ../src/myTypes.vhd
analyze -f vhdl -lib WORK ../src/mux3to1_A.vhd
analyze -f vhdl -lib WORK ../src/mux3to1_B.vhd
analyze -f vhdl -lib WORK ../src/register_file.vhd
analyze -f vhdl -lib WORK ../src/immediate_gen.vhd
analyze -f vhdl -lib WORK ../src/abs_component.vhd
analyze -f vhdl -lib WORK ../src/ALU.vhd
analyze -f vhdl -lib WORK ../src/DataHazardUnit.vhd
analyze -f vhdl -lib WORK ../src/ForwardingUnit.vhd
analyze -f vhdl -lib WORK ../src/controller.vhd
analyze -f vhdl -lib WORK ../src/Datapath.vhd
analyze -f vhdl -lib WORK ../src/riscv.vhd

set power_preserve_rtl_hier_names true

elaborate riscv -arch ARCH -lib WORK > elaborate.txt

create_clock -name MY_CLK -period 3.6 CLK
set_dont_touch_network MY_CLK
set_clock_uncertainty 0.07 [get_clocks MY_CLK]

set_input_delay 0.5 -max -clock MY_CLK [remove_from_collection [all_inputs] CLK]
set_output_delay 0.5 -max -clock MY_CLK [all_outputs]

set OLOAD [load_of NangateOpenCellLibrary/BUF_X4/A]
set_load $OLOAD [all_outputs]

compile

report_timing > timing.txt
report_area > area.txt

ungroup -all -flatten
change_names -hierarchy -rules verilog

write_sdf ../netlist/riscv.sdf
write -f verilog -hierarchy -output ../netlist/riscv.v
write_sdc ../netlist/riscv.sdc

quit


