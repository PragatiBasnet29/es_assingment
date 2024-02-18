all:	result.vcd
result.vcd:	fulladder.vhdl	fulladderTB.vhdl
	ghdl	-a	-fsynopsys	fulladder.vhdl
	ghdl	-a	-fsynopsys	fulladderTB.vhdl
	ghdl	-e	-fsynopsys	fa_test
	ghdl	-r	-fsynopsys	fa_test	--vcd=result.vcd
clean:
	rm	-rf	result.vcd