all: result.vcd
result.vcd:	mux.vhdl	muxTB.vhdl
	ghdl	-a	-fsynopsys	mux.vhdl
	ghdl	-a	-fsynopsys	muxTB.vhdl
	ghdl	-e	-fsynopsys	my_mux_tb
	ghdl	-r	-fsynopsys	my_mux_tb	--vcd=result.vcd	--stop-time=20us
clean:
	rm	-rf	result.vcd





	