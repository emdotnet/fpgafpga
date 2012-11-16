# Makefile automatically generated by ghdl
# Version: GHDL 0.29 (20100109) [Sokcho edition] - mcode code generator
# Command used to generate this makefile:
# ghdl --gen-makefile midi_tb

GHDL=ghdl
GHDLFLAGS=
GHDLRUNFLAGS=--stop-time=30000ns --vcd=slice.vcd

# Default target : elaborate
all : elab

# Elaborate target.  Almost useless
elab : force
	$(GHDL) -c $(GHDLFLAGS) -e slice_tb

# Run target
run : force
	$(GHDL) -c $(GHDLFLAGS) -r slice_tb $(GHDLRUNFLAGS)

# Targets to analyze libraries
init: force
	# /usr/local/ghdl/translate/lib//v93/ieee/../../../../libraries/ieee/std_logic_1164.v93
	# /usr/local/ghdl/translate/lib//v93/ieee/../../../../libraries/ieee/std_logic_1164_body.v93
	$(GHDL) -a $(GHDLFLAGS) slice_tb.vhd
	# /usr/local/ghdl/translate/lib//v93/ieee/../../../../libraries/ieee/numeric_std.v93
	# /usr/local/ghdl/translate/lib//v93/ieee/../../../../libraries/ieee/numeric_std-body.v93
	$(GHDL) -a $(GHDLFLAGS) slice.vhd

force:
