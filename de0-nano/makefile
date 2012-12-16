program:
	quartus_pgm -m jtag -c 1 -o "p;build/DE0_Nano.sof"
#	quartus_pgm -m jtag -c USB-Blaster[USB-0] -o "p;build/DE0_Nano.sof"

start_server:
	quartus_stp -t ../tcl/vjtag_server.tcl &

clean:
	rm -fr db
	rm -fr incremental_db
