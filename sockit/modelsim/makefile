TOP=heartbeat_tb
SRC=../

sim: comp
#	vsim -c work.$(TOP) -quiet -do "run -all;;quit"
	vsim work.$(TOP) -do "run -all"


comp:
	test -d work || vlib work
	vcom -quiet $(SRC)*.vhd
	vcom -quiet *.vhd
clean:
	rm -rf work
	rm -rf transcript
	rm -rf vsim.wlf
	rm -rf *~
