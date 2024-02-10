all:	result.vcd
result.vcd:	demux.vhdl	demuxTB.vhdl
	ghdl	-a	-fsynopsys	demux.vhdl
	ghdl	-a	-fsynopsys	demuxTB.vhdl
	ghdl	-e	-fsynopsys	my_demux_tb
	ghdl	-r	-fsynopsys	my_demux_tb	--vcd=result.vcd
clean:
	rm	-rf	result.vcd
