
all:	result.vcd
result.vcd:	gcd.vhdl	gcdTB.vhdl
	ghdl	-a	-fsynopsys	gcd.vhdl
	ghdl	-a	-fsynopsys  gcdTB.vhdl
	ghdl	-e	-fsynopsys  my_gcd_tb
	ghdl	-r	-fsynopsys  my_gcd_tb	--vcd=result.vcd	--stop-time=2000us
clean:
	rm	-rf	result.vcd