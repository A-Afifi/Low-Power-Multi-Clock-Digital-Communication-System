###################################################################

# Created by write_sdc on Wed Oct 1 02:26:39 2025

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions -max scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -max_library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -min scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -min_library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c
group_path -name INOUT  -from [list [get_ports CLK] [get_ports RST] [get_ports EN] [get_ports {ALU_FUN[3]}] [get_ports {ALU_FUN[2]}] [get_ports {ALU_FUN[1]}] [get_ports {ALU_FUN[0]}] [get_ports {A[7]}] [get_ports {A[6]}] [get_ports {A[5]}] [get_ports {A[4]}] [get_ports {A[3]}] [get_ports {A[2]}] [get_ports {A[1]}] [get_ports {A[0]}] [get_ports {B[7]}] [get_ports {B[6]}] [get_ports {B[5]}] [get_ports {B[4]}] [get_ports {B[3]}] [get_ports {B[2]}] [get_ports {B[1]}] [get_ports {B[0]}]]  -to [list [get_ports {ALU_OUT[15]}] [get_ports {ALU_OUT[14]}] [get_ports {ALU_OUT[13]}] [get_ports {ALU_OUT[12]}] [get_ports {ALU_OUT[11]}] [get_ports {ALU_OUT[10]}] [get_ports {ALU_OUT[9]}] [get_ports {ALU_OUT[8]}] [get_ports {ALU_OUT[7]}] [get_ports {ALU_OUT[6]}] [get_ports {ALU_OUT[5]}] [get_ports {ALU_OUT[4]}] [get_ports {ALU_OUT[3]}] [get_ports {ALU_OUT[2]}] [get_ports {ALU_OUT[1]}] [get_ports {ALU_OUT[0]}] [get_ports OUT_Valid]]
group_path -name INREG  -from [list [get_ports CLK] [get_ports RST] [get_ports EN] [get_ports {ALU_FUN[3]}] [get_ports {ALU_FUN[2]}] [get_ports {ALU_FUN[1]}] [get_ports {ALU_FUN[0]}] [get_ports {A[7]}] [get_ports {A[6]}] [get_ports {A[5]}] [get_ports {A[4]}] [get_ports {A[3]}] [get_ports {A[2]}] [get_ports {A[1]}] [get_ports {A[0]}] [get_ports {B[7]}] [get_ports {B[6]}] [get_ports {B[5]}] [get_ports {B[4]}] [get_ports {B[3]}] [get_ports {B[2]}] [get_ports {B[1]}] [get_ports {B[0]}]]
group_path -name REGOUT  -to [list [get_ports {ALU_OUT[15]}] [get_ports {ALU_OUT[14]}] [get_ports {ALU_OUT[13]}] [get_ports {ALU_OUT[12]}] [get_ports {ALU_OUT[11]}] [get_ports {ALU_OUT[10]}] [get_ports {ALU_OUT[9]}] [get_ports {ALU_OUT[8]}] [get_ports {ALU_OUT[7]}] [get_ports {ALU_OUT[6]}] [get_ports {ALU_OUT[5]}] [get_ports {ALU_OUT[4]}] [get_ports {ALU_OUT[3]}] [get_ports {ALU_OUT[2]}] [get_ports {ALU_OUT[1]}] [get_ports {ALU_OUT[0]}] [get_ports OUT_Valid]]
