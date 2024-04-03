
test_minMag:
	verilator --cc --exe ../rtl/FMUL.v FMUL_Test.cpp -o FMUL --build
	cat data_minMag.txt | obj_dir/FMUL -rminMag
