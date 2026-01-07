onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /Integer_ClkDiv_tb/i_dev_ratio_tb
add wave -noupdate /Integer_ClkDiv_tb/i_clk_en_tb
add wave -noupdate /Integer_ClkDiv_tb/i_rst_n_tb
add wave -noupdate -color Magenta /Integer_ClkDiv_tb/i_ref_clk_tb
add wave -noupdate /Integer_ClkDiv_tb/DUT/New_clk
add wave -noupdate -color Cyan /Integer_ClkDiv_tb/o_div_clk_tb
add wave -noupdate -expand -group {Module internal signals} -color Coral /Integer_ClkDiv_tb/DUT/En
add wave -noupdate -expand -group {Module internal signals} -color Coral /Integer_ClkDiv_tb/DUT/Type
add wave -noupdate -expand -group {Module internal signals} /Integer_ClkDiv_tb/DUT/Half_Div
add wave -noupdate -expand -group {Module internal signals} /Integer_ClkDiv_tb/DUT/Half_Div_p1
add wave -noupdate -expand -group {Module internal signals} -color Coral /Integer_ClkDiv_tb/DUT/Count
add wave -noupdate -expand -group {Module internal signals} -color Coral /Integer_ClkDiv_tb/DUT/Flag
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {270000 ps} 0}
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
WaveRestoreZoom {0 ps} {488250 ps}
