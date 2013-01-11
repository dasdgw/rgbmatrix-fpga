work:
	vlib work
comp:
	vcom ../../../rgbmatrix_pkg.vhd
	vcom ../../../i2c_iface.vhd
	vcom ../../i2c_iface_tb.vhd
sim:
	vsim -do "run.do"
clean:
	rm -f transcript
	rm -f vsim.wlf
	rm -rf work
