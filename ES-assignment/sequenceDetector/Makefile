all:	result.vcd
result.vcd:	sequence_detector.vhdl	sequence_detector_tb.vhdl
	ghdl	-a	-fsynopsys	sequence_detector.vhdl
	ghdl	-a	-fsynopsys	sequence_detector_tb.vhdl
	ghdl	-e	-fsynopsys	my_sequence_tb
	ghdl	-r	-fsynopsys	my_sequence_tb 	--vcd=result.vcd	--stop-time=20us
clean:
	rm	-rf	result.vcd