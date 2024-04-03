
compile:
	verilator --cc --exe --assert -Wno-STMTDLY -O3 --trace --threads 1 --top-module Tile -CFLAGS  -I../obj_dir -o VTile ../rtl/Tile.sv top.cc mm.cc --build
	
test_median:
	obj_dir/VTile median.riscv-large.hex

test_qsort:
	obj_dir/VTile qsort.riscv-large.hex
	
test_vvadd:
	obj_dir/VTile vvadd.riscv-large.hex
	
clean:
	rm -rf obj_dir
	rm -rf *.vcd
