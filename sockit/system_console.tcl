set sysid_base 0x0
set rgbmatrix_base 0x2000
set rgbmatrix_size 0x2000

set rgbmatrix_cols 32
set rgbmatrix_rows 16
#pixel width in byte
set pixel_width 4

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

for {set x 0} {$x<$rgbmatrix_size} {incr x $pixel_width} {
    set address [expr $rgbmatrix_base + $x ]
    master_write_32  $mypath $address 0x0000FFFF
}

proc cls {} {
    global mypath
    global rgbmatrix_base
    global rgbmatrix_size
    global pixel_width
    
    for {set x 0} {$x<$rgbmatrix_size} {incr x $pixel_width} {
	set address [expr $rgbmatrix_base + $x ]
	master_write_32  $mypath $address 0x00000000
    }
}

proc red {} {
    global mypath
    global rgbmatrix_base
    global rgbmatrix_size
    global pixel_width

    for {set x 0} {$x<$rgbmatrix_size} {incr x $pixel_width} {
	set address [expr $rgbmatrix_base + $x ]
	master_write_32  $mypath $address 0x000000FF
    }
}

proc set_color {color} {
    global mypath
    global rgbmatrix_base
    global rgbmatrix_size
    global pixel_width

    for {set x 0} {$x<$rgbmatrix_size} {incr x $pixel_width} {
	set address [expr $rgbmatrix_base + $x ]
	master_write_32  $mypath $address $color
    }
}

proc corners {} {
    global mypath
    global rgbmatrix_base
    global rgbmatrix_size
    global rgbmatrix_cols
    global rgbmatrix_rows
    global pixel_width

    master_write_32  $mypath 0x2004 0x0000EF00
    #0,0
#    master_write_32  $mypath $rgbmatrix_base 0x000000EF
    
    #31,0
#   set address [expr {$rgbmatrix_base + [expr{[expr{$rgbmatrix_cols -1}] * $pixel_width}]} ]
#   master_write_32  $mypath $address 0x0000EF00
#
#   #0,15
#   set address [expr {$rgbmatrix_base + [expr{[expr{$rgbmatrix_cols * [expr{$rgbmatrix_rows-1}]}] * $pixel_width}]} ]
#   master_write_32  $mypath $address 0x00EF0000
#   
#   #31,15
#   set address [expr {$rgbmatrix_base + [expr{[expr{ [expr{$rgbmatrix_cols *$rgbmatrix_rows}]}-1] * $pixel_width}]} ]
#et address [expr {$rgbmatrix_base + $rgbmatrix_size -1} ]
#   master_write_32  $mypath $address 0x0000EFEF

#    for {set x 0} {$x<$rgbmatrix_size} {incr x $pixel_width} {
      #    }
}

proc put_pixel {x,y} {
    global mypath
    global rgbmatrix_base
    global rgbmatrix_size
    global pixel_width

    set address [expr {$rgbmatrix_base + [expr{ [expr{ $x + [expr{$rgbmatrix_cols*$y} ]}] * $pixel_width}]} ]
    master_write_32  $mypath $address 0x00EF0000

}
