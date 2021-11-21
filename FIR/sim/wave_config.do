onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /tb_fir/CLK_i
add wave -noupdate -format Logic /tb_fir/RST_n_i
add wave -noupdate -format Literal -radix decimal /tb_fir/DIN_i
add wave -noupdate -format Literal -radix decimal /tb_fir/DOUT_i
add wave -noupdate -format Logic /tb_fir/VIN_i
add wave -noupdate -format Literal /tb_fir/H0_i
add wave -noupdate -format Literal /tb_fir/H1_i
add wave -noupdate -format Literal /tb_fir/H2_i
add wave -noupdate -format Literal /tb_fir/H3_i
add wave -noupdate -format Literal /tb_fir/H4_i
add wave -noupdate -format Literal /tb_fir/H5_i
add wave -noupdate -format Literal /tb_fir/H6_i
add wave -noupdate -format Literal /tb_fir/H7_i
add wave -noupdate -format Literal /tb_fir/H8_i
add wave -noupdate -format Literal /tb_fir/H9_i
add wave -noupdate -format Literal /tb_fir/H10_i
add wave -noupdate -format Logic /tb_fir/VOUT_i
add wave -noupdate -format Logic /tb_fir/END_SIM_i
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1976 ns} 0}
configure wave -namecolwidth 187
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
update
WaveRestoreZoom {1550 ns} {2498 ns}
