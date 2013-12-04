onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group top_level /ledctrl_tb/clk
add wave -noupdate -group top_level /ledctrl_tb/rst
add wave -noupdate -group top_level /ledctrl_tb/clk_out
add wave -noupdate -group top_level /ledctrl_tb/rgb1
add wave -noupdate -group top_level /ledctrl_tb/rgb2
add wave -noupdate -group top_level /ledctrl_tb/led_addr
add wave -noupdate -group top_level /ledctrl_tb/lat
add wave -noupdate -group top_level /ledctrl_tb/oe
add wave -noupdate -group top_level /ledctrl_tb/addr
add wave -noupdate -group top_level /ledctrl_tb/data
add wave -noupdate -group top_level /ledctrl_tb/stop_clk
add wave -noupdate /ledctrl_tb/DUT/clk
add wave -noupdate /ledctrl_tb/DUT/rst
add wave -noupdate /ledctrl_tb/DUT/clk_out
add wave -noupdate /ledctrl_tb/DUT/rgb1
add wave -noupdate /ledctrl_tb/DUT/rgb2
add wave -noupdate /ledctrl_tb/DUT/lat
add wave -noupdate /ledctrl_tb/DUT/oe
add wave -noupdate -radix unsigned /ledctrl_tb/DUT/addr
add wave -noupdate -radix hexadecimal /ledctrl_tb/DUT/data
add wave -noupdate /ledctrl_tb/DUT/state
add wave -noupdate /ledctrl_tb/DUT/next_state
add wave -noupdate -radix decimal /ledctrl_tb/DUT/col_count
add wave -noupdate -radix decimal /ledctrl_tb/DUT/next_col_count
add wave -noupdate -radix decimal /ledctrl_tb/DUT/bpp_count
add wave -noupdate -radix decimal /ledctrl_tb/DUT/next_bpp_count
add wave -noupdate -radix unsigned /ledctrl_tb/DUT/s_led_addr
add wave -noupdate -radix unsigned /ledctrl_tb/DUT/next_led_addr
add wave -noupdate -radix decimal /ledctrl_tb/DUT/s_ram_addr
add wave -noupdate /ledctrl_tb/DUT/s_rgb1
add wave -noupdate /ledctrl_tb/DUT/next_rgb1
add wave -noupdate /ledctrl_tb/DUT/s_rgb2
add wave -noupdate /ledctrl_tb/DUT/next_rgb2
add wave -noupdate /ledctrl_tb/DUT/s_oe
add wave -noupdate /ledctrl_tb/DUT/s_lat
add wave -noupdate /ledctrl_tb/DUT/s_clk_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {160000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 165
configure wave -valuecolwidth 85
configure wave -justifyvalue left
configure wave -signalnamewidth 1
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
WaveRestoreZoom {0 ps} {501456 ps}
