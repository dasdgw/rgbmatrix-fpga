all: import gen
import:
	ghdl -i --workdir=work --work=work ../../util_pkg.vhd ../../../rgbmatrix_pkg.vhd ../../../i2c_iface.vhd ../../../i2c_slave.vhd ../../i2c_iface_tb.vhd
gen:
	ghdl -m --workdir=work --work=work i2c_iface_tb
run:
	./i2c_iface_tb --stop-time=2us --wave=i2c_iface.ghw 

view: 
	gtkwave i2c_iface.ghw -a i2c_iface.sav
