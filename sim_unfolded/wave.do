onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_fir_unfolded/CLK_i
add wave -noupdate /tb_fir_unfolded/RST_n_i
add wave -noupdate /tb_fir_unfolded/DIN0_i
add wave -noupdate /tb_fir_unfolded/DIN1_i
add wave -noupdate /tb_fir_unfolded/DIN2_i
add wave -noupdate /tb_fir_unfolded/VIN_i
add wave -noupdate /tb_fir_unfolded/H0_i
add wave -noupdate /tb_fir_unfolded/H1_i
add wave -noupdate /tb_fir_unfolded/H2_i
add wave -noupdate /tb_fir_unfolded/H3_i
add wave -noupdate /tb_fir_unfolded/H4_i
add wave -noupdate /tb_fir_unfolded/H5_i
add wave -noupdate /tb_fir_unfolded/H6_i
add wave -noupdate /tb_fir_unfolded/H7_i
add wave -noupdate /tb_fir_unfolded/H8_i
add wave -noupdate /tb_fir_unfolded/H9_i
add wave -noupdate /tb_fir_unfolded/H10_i
add wave -noupdate -radix decimal /tb_fir_unfolded/DOUT0_i
add wave -noupdate -radix decimal /tb_fir_unfolded/DOUT1_i
add wave -noupdate -radix decimal /tb_fir_unfolded/DOUT2_i
add wave -noupdate /tb_fir_unfolded/VOUT_i
add wave -noupdate /tb_fir_unfolded/END_SIM_i
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {705 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {1 us}
