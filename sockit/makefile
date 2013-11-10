# if you don't have 64bit Quartus installed remove '--64bit'
QUARTUS_OPTS = --no_banner --64bit

program:
	quartus_pgm $(QUARTUS_OPTS) -m jtag -c 1 -o "p;build/DE0_Nano.sof"
#	quartus_pgm -m jtag -c USB-Blaster[USB-0] -o "p;build/DE0_Nano.sof"

start_server:
	quartus_stp $(QUARTUS_OPTS) -t ../tcl/vjtag_server.tcl &

detect:
	quartus_pgm $(QUARTUS_OPTS) -c 1 -a

compile:
	quartus_sh $(QUARTUS_OPTS) --flow compile DE0_Nano -c DE0_Nano

convert_flash:
	quartus_cpf $(QUARTUS_OPTS) -c de0nano.cof

program_flash:
	quartus_pgm $(QUARTUS_OPTS) -c 1 de0nano.cdf

quartus:
	quartus $(QUARTUS_OPTS) sockit.qpf
clean:
	rm -rf incremental_db
	rm -rf db
	rm -rf greybox_tmp
	rm -rf build/*

tags:
	exuberant-ctags -Re

.PHONY :compile

