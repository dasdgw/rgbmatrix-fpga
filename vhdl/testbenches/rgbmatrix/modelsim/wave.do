onerror {resume}
quietly WaveActivateNextPane {} 0
#add wave -noupdate /i2c_iface_tb/clk
#add wave -noupdate /i2c_iface_tb/rst
#add wave -noupdate /i2c_iface_tb/rst_out
#add wave -noupdate /i2c_iface_tb/output_tbd
#add wave -noupdate /i2c_iface_tb/valid
#add wave -noupdate /i2c_iface_tb/i2c_sclk
#add wave -noupdate /i2c_iface_tb/i2c_sdat
#add wave -noupdate -expand /i2c_iface_tb/DUT/r
add wave *
add wave /i2c_iface_tb/i2c_slave_1/*
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1090040000 ps} 0}
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
configure wave -timeline 1
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {3150 us}