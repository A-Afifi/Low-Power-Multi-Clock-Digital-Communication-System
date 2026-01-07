vlib work
vlog *.*v
vsim -voptargs=+acc work.Integer_ClkDiv_tb
do wave.do
run -all