comp:
	vsim -c -do "do comp.do;quit -f"
sim:
	vsim -do "modelsim.do"
clean:
	rm -f transcript
	rm -f vsim.wlf
	rm -rf work
	rm -f *.log
tags:
	exuberant-ctags -e $(SRC)
