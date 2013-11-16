set sysid_base 0x0
set rgbmatrix_base 0x400

puts [get_service_paths master]
set mypath [ lindex [ get_service_paths master ] 0 ]
    open_service master $mypath
puts "jtag master: $mypath"

puts [jtag_debug_sample_reset $mypath]
puts [jtag_debug_sample_clock $mypath]
puts [jtag_debug_sample_clock $mypath]
puts [master_read_32  $mypath $sysid_base 1]
puts [master_read_32  $mypath $rgbmatrix_base 1]
puts [master_write_32  $mypath $rgbmatrix_base 0x0000FFFF]
puts "commands: cls red set_color <0xXXXXXXXX>"

for {set x 0} {$x<0x800} {incr x 4} {
    set address [expr $rgbmatrix_base + $x ]
    master_write_32  $mypath $address 0x0000FFFF
}

proc cls {} {
    global mypath
    global rgbmatrix_base
    
    for {set x 0} {$x<0x800} {incr x 4} {
	set address [expr $rgbmatrix_base + $x ]
	master_write_32  $mypath $address 0x00000000
    }
}

proc red {} {
    global mypath
    global rgbmatrix_base
    
    for {set x 0} {$x<0x800} {incr x 4} {
	set address [expr $rgbmatrix_base + $x ]
	master_write_32  $mypath $address 0x000000FF
    }
}

proc set_color {color} {
    global mypath
    global rgbmatrix_base
    
    for {set x 0} {$x<0x800} {incr x 4} {
	set address [expr $rgbmatrix_base + $x ]
	master_write_32  $mypath $address $color
    }
}

