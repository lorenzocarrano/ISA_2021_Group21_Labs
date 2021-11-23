#!bin/bash
rm -r work
rm *.{log,svf}
rm elaborate.txt
#reading source files from common, adder and multpiplier directories
read_file -format vhdl ../fpuvhdl/common/fpnormalize_fpnormalize.vhd
read_file -format vhdl ../fpuvhdl/common/fpround_fpround.vhd
read_file -format vhdl ../fpuvhdl/common/packfp_packfp.vhd
read_file -format vhdl ../fpuvhdl/common/unpackfp_unpackfp.vhd

read_file -format vhdl ../fpuvhdl/adder/fpadd_normalize_struct.vhd
read_file -format vhdl ../fpuvhdl/adder/fpadd_pipeline.vhd
read_file -format vhdl ../fpuvhdl/adder/fpadd_stage1_struct.vhd
read_file -format vhdl ../fpuvhdl/adder/fpadd_stage2_struct.vhd
read_file -format vhdl ../fpuvhdl/adder/fpadd_stage3_struct.vhd
read_file -format vhdl ../fpuvhdl/adder/fpadd_stage4_struct.vhd
read_file -format vhdl ../fpuvhdl/adder/fpadd_stage5_struct.vhd
read_file -format vhdl ../fpuvhdl/adder/fpadd_stage6_struct.vhd
read_file -format vhdl ../fpuvhdl/adder/fpalign_struct.vhd
read_file -format vhdl ../fpuvhdl/adder/fpinvert_fpinvert.vhd
read_file -format vhdl ../fpuvhdl/adder/fplzc_fplzc.vhd
read_file -format vhdl ../fpuvhdl/adder/fpselcomplement_fpselcomplement.vhd
read_file -format vhdl ../fpuvhdl/adder/fpswap_fpswap.vhd

read_file -format vhdl ../fpuvhdl/multiplier/fpmul_pipeline.vhd
#read_file -format vhdl ../fpuvhdl/multiplier/fpmul_single_cycle.vhd
read_file -format vhdl ../fpuvhdl/multiplier/fpmul_stage1_struct.vhd
read_file -format vhdl ../fpuvhdl/multiplier/fpmul_stage2_struct.vhd
read_file -format vhdl ../fpuvhdl/multiplier/fpmul_stage3_struct.vhd
read_file -format vhdl ../fpuvhdl/multiplier/fpmul_stage4_struct.vhd
read_file -format vhdl ../fpuvhdl/multiplier/fd.vhd
read_file -format vhdl ../fpuvhdl/multiplier/register.vhd
############################################

analyze -library WORK -format vhdl ../fpuvhdl/common/fpnormalize_fpnormalize.vhd
analyze -library WORK -format vhdl ../fpuvhdl/common/fpround_fpround.vhd
analyze -library WORK -format vhdl ../fpuvhdl/common/packfp_packfp.vhd
analyze -library WORK -format vhdl ../fpuvhdl/common/unpackfp_unpackfp.vhd

analyze -library WORK -format vhdl ../fpuvhdl/adder/fpadd_normalize_struct.vhd
analyze -library WORK -format vhdl ../fpuvhdl/adder/fpadd_pipeline.vhd
analyze -library WORK -format vhdl ../fpuvhdl/adder/fpadd_stage1_struct.vhd
analyze -library WORK -format vhdl ../fpuvhdl/adder/fpadd_stage2_struct.vhd
analyze -library WORK -format vhdl ../fpuvhdl/adder/fpadd_stage3_struct.vhd
analyze -library WORK -format vhdl ../fpuvhdl/adder/fpadd_stage4_struct.vhd
analyze -library WORK -format vhdl ../fpuvhdl/adder/fpadd_stage5_struct.vhd
analyze -library WORK -format vhdl ../fpuvhdl/adder/fpadd_stage6_struct.vhd
analyze -library WORK -format vhdl ../fpuvhdl/adder/fpalign_struct.vhd
analyze -library WORK -format vhdl ../fpuvhdl/adder/fpinvert_fpinvert.vhd
analyze -library WORK -format vhdl ../fpuvhdl/adder/fplzc_fplzc.vhd
analyze -library WORK -format vhdl ../fpuvhdl/adder/fpselcomplement_fpselcomplement.vhd
analyze -library WORK -format vhdl ../fpuvhdl/adder/fpswap_fpswap.vhd

analyze -library WORK -format vhdl ../fpuvhdl/multiplier/fpmul_pipeline.vhd
#analyze -library WORK -format vhdl ../fpuvhdl/multiplier/fpmul_single_cycle.vhd
analyze -library WORK -format vhdl ../fpuvhdl/multiplier/fpmul_stage1_struct.vhd
analyze -library WORK -format vhdl ../fpuvhdl/multiplier/fpmul_stage2_struct.vhd
analyze -library WORK -format vhdl ../fpuvhdl/multiplier/fpmul_stage3_struct.vhd
analyze -library WORK -format vhdl ../fpuvhdl/multiplier/fpmul_stage4_struct.vhd
analyze -library WORK -format vhdl ../fpuvhdl/multiplier/fd.vhd
analyze -library WORK -format vhdl ../fpuvhdl/multiplier/register.vhd

############################################

#synthesis commands:
set power_preserve_rtl_hier_names true
elaborate FPmul -arch pipeline -lib WORK > ./elaborate.txt
uniquify
link
create_clock -name MY_CLK -period 1.56 CLK
set_dont_touch_network MY_CLK
set_clock_uncertainty 0.07 [get_clocks MY_CLK]
set_input_delay 0.5 -max -clock MY_CLK [remove_from_collection [all_inputs] CLK]
set_output_delay 0.5 -max -clock MY_CLK [all_outputs]
set OLOAD [load_of NangateOpenCellLibrary/BUF_X4/A]
set_load $OLOAD [all_outputs]
ungroup -all -flatten
set_implementation DW02_mult/pparch [find cell *mult*]
compile
report_timing > report_timing_1_56_pparch.txt
report_area > report_area_1_56_pparch.txt
#ungroup -all -flatten
change_names -hierarchy -rules verilog
write_sdf ../netlist/FPmul.sdf
write -f verilog -hierarchy -output ../netlist/FPmul.v
write_sdc ../netlist/FPmul.sdc
quit
