onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -color Cyan /DATA_SYNC_tb/uut/CLK
add wave -noupdate -color Turquoise /DATA_SYNC_tb/uut/RST
add wave -noupdate -color Magenta /DATA_SYNC_tb/uut/unsync_bus
add wave -noupdate -color Magenta /DATA_SYNC_tb/uut/bus_enable
add wave -noupdate -color Gold /DATA_SYNC_tb/uut/en_sync_reg
add wave -noupdate -color Gold /DATA_SYNC_tb/uut/Pulse_FF_Out
add wave -noupdate -color Gold /DATA_SYNC_tb/uut/enable_pulse
add wave -noupdate -color {Lime Green} /DATA_SYNC_tb/uut/MUX_Data_Out
add wave -noupdate -color Gray90 /DATA_SYNC_tb/uut/sync_bus
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {73701 ps} 0}
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
WaveRestoreZoom {63244 ps} {134212 ps}
