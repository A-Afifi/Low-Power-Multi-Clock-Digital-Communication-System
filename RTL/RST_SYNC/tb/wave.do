onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -color Magenta /RST_SYN_tb/uut/CLK
add wave -noupdate -color Cyan /RST_SYN_tb/uut/RST
add wave -noupdate -color Gold /RST_SYN_tb/uut/SYNC_RST
add wave -noupdate -expand /RST_SYN_tb/uut/sync_reg
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {21405 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
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
WaveRestoreZoom {8777 ps} {79745 ps}
