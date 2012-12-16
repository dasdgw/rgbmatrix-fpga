onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /ledctrl_tb/clk_in
add wave -noupdate /ledctrl_tb/rst
add wave -noupdate /ledctrl_tb/clk_out
add wave -noupdate /ledctrl_tb/lat
add wave -noupdate /ledctrl_tb/oe
add wave -noupdate /ledctrl_tb/rgb1
add wave -noupdate /ledctrl_tb/rgb2
add wave -noupdate /ledctrl_tb/led_addr
add wave -noupdate /ledctrl_tb/addr
add wave -noupdate /ledctrl_tb/data
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
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
configure wave -timeline 1
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {105 ns}
