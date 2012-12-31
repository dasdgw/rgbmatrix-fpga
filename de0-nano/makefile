program:
	quartus_pgm -m jtag -c 1 -o "p;build/DE0_Nano.sof"
#	quartus_pgm -m jtag -c USB-Blaster[USB-0] -o "p;build/DE0_Nano.sof"

start_server:
	quartus_stp -t ../tcl/vjtag_server.tcl &

detect:
	linux32 quartus_pgm -c 1 -a

compile:
	quartus_sh --flow compile DE0_Nano -c DE0_Nano

sim_i2c_iface:
	./sim_i2c_iface.sh

clean:
	rm -rf incremental_db
	rm -rf db
	rm -rf greybox_tmp
	rm -rf build/*

tags:
	exuberant-ctags -Re

.PHONY :compile

