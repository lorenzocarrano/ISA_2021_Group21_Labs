#!bin/bash
read_file -format vhdl {/home/isa21_2021_2022/labs/lab1/ISAL1/src_advanced/fir_unfolded.vhd /home/isa21_2021_2022/labs/lab1/ISAL1/src_advanced/stage.vhd /home/isa21_2021_2022/labs/lab1/ISAL1/src_advanced/add_mul.vhd /home/isa21_2021_2022/labs/lab1/ISAL1/src_advanced/register.vhd /home/isa21_2021_2022/labs/lab1/ISAL1/src_advanced/fd.vhd}
analyze -library WORK -format vhdl {/home/isa21_2021_2022/labs/lab1/ISAL1/src_advanced/fir_unfolded.vhd /home/isa21_2021_2022/labs/lab1/ISAL1/src_advanced/stage.vhd /home/isa21_2021_2022/labs/lab1/ISAL1/src_advanced/add_mul.vhd /home/isa21_2021_2022/labs/lab1/ISAL1/src_advanced/register.vhd /home/isa21_2021_2022/labs/lab1/ISAL1/src_advanced/fd.vhd}
set power_preserve_rtl_hier_names true
elaborate myfir -arch ARCH -lib WORK > ./elaborate.txt
uniquify
link
create_clock -name MY_CLK -period 0 CLK
set_dont_touch_network MY_CLK
set_clock_uncertainty 0.07 [get_clocks MY_CLK]
set_input_delay 0.5 -max -clock MY_CLK [remove_from_collection [all_inputs] CLK]
set_output_delay 0.5 -max -clock MY_CLK [all_outputs]
set OLOAD [load_of NangateOpenCellLibrary/BUF_X4/A]
set_load $OLOAD [all_outputs]
compile
report_timing > report_timing_pipelined1.txt
report_area > report_area_pipelined1.txt
ungroup -all -flatten
change_names -hierarchy -rules verilog
write_sdf ../netlist_unfolded/myfir_unfolded.sdf
write -f verilog -hierarchy -output ../netlist_unfolded/myfir_unfolded.v
write_sdc ../netlist_unfolded/myfir_unfolded.sdc
quit
