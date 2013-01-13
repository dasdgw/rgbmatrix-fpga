# if you don't have 64bit Quartus installed comment the following line 
64BIT = --64bit

program:
	quartus_pgm $(64BIT) -m jtag -c 1 -o "p;build/DE0_Nano.sof"
#	quartus_pgm -m jtag -c USB-Blaster[USB-0] -o "p;build/DE0_Nano.sof"

start_server:
	quartus_stp $(64BIT) -t ../tcl/vjtag_server.tcl &

detect:
	quartus_pgm $(64BIT) -c 1 -a

compile:
	quartus_sh $(64BIT) --flow compile DE0_Nano -c DE0_Nano

convert_flash:
	quartus_cpf $(64BIT) -c de0nano.cof

program_flash:
	quartus_pgm $(64BIT) -c 1 de0nano.cdf

quartus:
	quartus $(64BIT) DE0_Nano.qpf
clean:
	rm -rf incremental_db
	rm -rf db
	rm -rf greybox_tmp
	rm -rf build/*

tags:
	exuberant-ctags -Re

.PHONY :compile

