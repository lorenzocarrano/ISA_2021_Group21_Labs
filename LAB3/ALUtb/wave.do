onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Literal -radix decimal /alutb/a
add wave -noupdate -format Literal -radix decimal /alutb/b
add wave -noupdate -format Literal -radix decimal /alutb/y
add wave -noupdate -format Literal /alutb/ctrl
add wave -noupdate -divider {ALU internal Signals}
add wave -noupdate -format Literal -radix decimal /alutb/uut/a
add wave -noupdate -format Literal -radix decimal /alutb/uut/b
add wave -noupdate -format Literal -radix decimal /alutb/uut/y
add wave -noupdate -format Literal /alutb/uut/ctrl
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {9 ns} 0}
configure wave -namecolwidth 177
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
WaveRestoreZoom {0 ns} {16 ns}
