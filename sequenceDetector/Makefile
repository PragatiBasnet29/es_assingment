all: result.vcd
result.vcd: SD.vhdl SDTB.vhdl
    ghdl -a SD.vhdl
    ghdl -a -fsynopsys SDTB.vhdl
    ghdl -e -fsynopsys my_sequence_tb
    ghdl -r -fsynopsys my_sequence_tb --vcd=result.vcd --stop-time=60us
clean:
    rm -rf result.vcd