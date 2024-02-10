all:	result.vcd
result.vcd:	lcm.vhdl	lcmTB.vhdl
	ghdl	-a	-fsynopsys	lcm.vhdl
	ghdl	-a	lcmTB.vhdl
	ghdl	-e	-fsynopsys my_lcm_tb
	ghdl	-r	-fsynopsys my_lcm_tb	--vcd=result.vcd	--stop-time=20us
clean:
	rm	-rf	result.vcd