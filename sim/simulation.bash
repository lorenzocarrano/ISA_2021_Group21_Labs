#!bin/bash
source compile.bash
vsim work.tb_fir
view wave
add wave *
run
