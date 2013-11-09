onerror {resume}
quietly WaveActivateNextPane {} 0
# if you only want to see the top-level signals add:
# add wave *
# if you want to have every signal in the waveviewer use:
add wave -r /*
# if you want to add single signal use something like:
#add wave -noupdate /rgbmatrix_tb/DUT/i2c/i2c_memory_1/addr
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

