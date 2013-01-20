SRC  = ../../util_pkg.vhd
SRC  += ../../../rgbmatrix_pkg.vhd
SRC  += ../../../i2c_iface.vhd
SRC  += ../../i2c_iface_tb.vhd

work:
	vlib work
comp:
	vcom -2008 $(SRC)
sim:
	vsim -do "run.do"
clean:
	rm -f transcript
	rm -f vsim.wlf
	rm -rf work
	rm -f *.log
