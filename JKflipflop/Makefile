all:	result.vcd
result.vcd:	JKflipflop.vhdl	JKflipflopTB.vhdl
	ghdl	-a	-fsynopsys	JKflipflop.vhdl
	ghdl	-a	-fsynopsys	JKflipflopTB.vhdl
	ghdl	-e	-fsynopsys	my_jk_tb
	ghdl	-r	-fsynopsys	my_jk_tb	--vcd=result.vcd	--stop-time=20us
clean:
	rm	-rf	result.vcd