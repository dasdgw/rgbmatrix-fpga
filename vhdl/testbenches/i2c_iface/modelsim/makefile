work:
	vlib work
comp:
	vcom -2008 ../../../rgbmatrix_pkg.vhd
	vcom -2008 ../../../i2c_iface.vhd
	vcom -2008 ../../i2c_iface_tb.vhd
sim:
	vsim -do "run.do"
clean:
	rm -f transcript
	rm -f vsim.wlf
	rm -rf work
