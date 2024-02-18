all:	result.vcd
result.vcd:	upcounter.vhdl	upcounterTB.vhdl
	ghdl	-a	-fsynopsys	upcounter.vhdl
	ghdl	-a	upcounterTB.vhdl
	ghdl	-e	-fsynopsys counter_tb
	ghdl	-r	-fsynopsys counter_tb --vcd=result.vcd	--stop-time=20us
clean:
	rm	-rf	result.vcd