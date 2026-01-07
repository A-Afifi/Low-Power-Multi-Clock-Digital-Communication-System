vlib work
vlog *.*v
vsim -voptargs=+acc work.RST_SYN_tb
do wave.do
run -all