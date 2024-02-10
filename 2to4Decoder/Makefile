all:	result.vcd

result.vcd:	decoder.vhdl	decoderTB.vhdl
	ghdl	-a	-fsynopsys	decoder.vhdl
	ghdl	-a	-fsynopsys	decoderTB.vhdl
	ghdl	-e	-fsynopsys	my_decoder_tb
	ghdl	-r	-fsynopsys	my_decoder_tb	--vcd=result.vcd
clean:
	rm	-rf	result.vcd