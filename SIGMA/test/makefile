

SIGMA: $(wildcard ../rtl/*.v)
	-verilator --trace --timing --binary --build --cc --top-module tb_flexdpe -o $@ $^ tb_sigma_gen.sv 
	make -C obj_dir -f Vtb_flexdpe.mk
	
clean:
	-rm flexdpe.vcd
	-rm out_dump.txt
	rm -rf obj_dir
