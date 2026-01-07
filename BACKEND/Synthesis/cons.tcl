
####################################################################################
# Constraints
# ----------------------------------------------------------------------------
#
# 0. Design Compiler variables
#
# 1. Master Clock Definitions
#
# 2. Generated Clock Definitions
#
# 3. Clock Uncertainties
#
# 4. Clock Latencies 
#
# 5. Clock Relationships
#
# 6. #set input/output delay on ports
#
# 7. Driving cells
#
# 8. Output load

####################################################################################
           #########################################################
                  #### Section 0 : DC Variables ####
           #########################################################
#################################################################################### 

# Prevent assign statements in the generated netlist (must be applied before compile command)
set_fix_multiple_port_nets -all -buffer_constants -feedthroughs

####################################################################################
           #########################################################
                  #### Section 1 : Clock Definition ####
           #########################################################
#################################################################################### 
# 1. Master Clock Definitions 
# 2. Generated Clock Definitions
# 3. Clock Latencies
# 4. Clock Uncertainties
# 4. Clock Transitions
####################################################################################

# Skew
set CLK_SETUP_SKEW 0.2
set CLK_HOLD_SKEW 0.1


#1. Master Clocks ----------------------------------------------------------------------------------------

# REF CLOCK (50 MHz)
set CLK1_NAME REF_CLK
set CLK1_PER 20
set CLK1_RISE 0.05
set CLK1_FALL 0.05


#2. UART_RX CLOCK (3.686 MHz) 
set CLK2_NAME UART_CLK
set CLK2_PER 271.296
set CLK2_RISE 0.05
set CLK2_FALL 0.05


create_clock -name $CLK1_NAME -period $CLK1_PER -waveform "0 [expr $CLK1_PER/2]" [get_ports REF_CLK]
set_clock_uncertainty -setup $CLK_SETUP_SKEW  [get_clocks $CLK1_NAME]
set_clock_uncertainty -hold  $CLK_HOLD_SKEW   [get_clocks $CLK1_NAME]
set_clock_transition  -rise  $CLK1_RISE       [get_clocks $CLK1_NAME]
set_clock_transition  -fall  $CLK1_FALL       [get_clocks $CLK1_NAME]


create_clock -name $CLK2_NAME -period $CLK2_PER -waveform "0 [expr $CLK2_PER/2]" [get_ports UART_CLK]
set_clock_uncertainty -setup $CLK_SETUP_SKEW  [get_clocks $CLK2_NAME]
set_clock_uncertainty -hold  $CLK_HOLD_SKEW   [get_clocks $CLK2_NAME]
set_clock_transition  -rise  $CLK2_RISE       [get_clocks $CLK2_NAME]
set_clock_transition  -fall  $CLK2_FALL       [get_clocks $CLK2_NAME]
 

#2. Generated clocks --------------------------------------------------------------------------------------

#  UART_RX_CLK
set G_CLK1_NAME UART_RX_CLK

#  UART_TX_CLK
set G_CLK2_NAME UART_TX_CLK

#  ALU_CLK
set G_CLK3_NAME ALU_CLK


create_generated_clock -master_clock $CLK2_NAME -source [get_ports UART_CLK] \
                       -name $G_CLK1_NAME [get_port UART_RX_ClkDiv/o_div_clk] -divide_by 1 

set_clock_uncertainty  -setup $CLK_SETUP_SKEW  [get_clocks $G_CLK1_NAME]
set_clock_uncertainty  -hold  $CLK_HOLD_SKEW   [get_clocks $G_CLK1_NAME]



create_generated_clock -master_clock $CLK2_NAME -source [get_ports UART_CLK] \
                       -name $G_CLK2_NAME [get_port UART_TX_ClkDiv/o_div_clk]  -divide_by 32

set_clock_uncertainty  -setup $CLK_SETUP_SKEW  [get_clocks $G_CLK2_NAME]
set_clock_uncertainty  -hold  $CLK_HOLD_SKEW   [get_clocks $G_CLK2_NAME]



create_generated_clock -master_clock $CLK1_NAME -source [get_ports REF_CLK] \
                       -name $G_CLK3_NAME [get_port U_CLK_GATE/GATED_CLK]  -divide_by 1

set_clock_uncertainty  -setup $CLK_SETUP_SKEW  [get_clocks $G_CLK3_NAME]
set_clock_uncertainty  -hold  $CLK_HOLD_SKEW   [get_clocks $G_CLK3_NAME]


#Don't touch command -------------------------------------------------------------------------------

set_dont_touch_network [get_clocks $CLK1_NAME]
set_dont_touch_network [get_clocks $CLK2_NAME]
set_dont_touch_network [get_clocks $G_CLK1_NAME]
set_dont_touch_network [get_clocks $G_CLK2_NAME]
set_dont_touch_network [get_clocks $G_CLK3_NAME]


####################################################################################
           #########################################################
             #### Section 2 : Clocks Relationship ####
           #########################################################
####################################################################################

set_clock_groups -asynchronous -group [get_clocks "$CLK2_NAME $G_CLK1_NAME $G_CLK2_NAME"] \
			       -group [get_clocks "$CLK1_NAME $G_CLK3_NAME"]
                                 

####################################################################################
           #########################################################
             #### Section 3 : set input/output delay on ports ####
           #########################################################
####################################################################################

set RX_delay  [expr 0.2*$CLK2_PER]
set TX_delay  [expr 0.2*32*$CLK2_PER]

#Inputs
set_input_delay  $RX_delay  -clock $G_CLK1_NAME [get_port UART_RX_IN]

#Outputs
set_output_delay $TX_delay  -clock $G_CLK2_NAME [get_port UART_TX_O]
set_output_delay $RX_delay  -clock $G_CLK1_NAME [get_port parity_error]
set_output_delay $RX_delay  -clock $G_CLK1_NAME [get_port framing_error]

####################################################################################
           #########################################################
                  #### Section 4 : Driving cells ####
           #########################################################
####################################################################################

set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_port UART_RX_IN]

#set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_ports {CLKG_EN CLKDIV_EN WrEn RdEn Address WrData ALU_FUN ALU_Enable}]
####################################################################################
           #########################################################
                  #### Section 5 : Output load ####
           #########################################################
####################################################################################

set_load 0.1 [get_port UART_TX_O]
set_load 0.1 [get_port parity_error]
set_load 0.1 [get_port framing_error]

####################################################################################
           #########################################################
                 #### Section 6 : Operating Condition ####
           #########################################################
####################################################################################

# Define the Worst Library for Max(#setup) analysis
# Define the Best Library for Min(hold) analysis

set_operating_conditions -min_library "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" \
			 -min "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" \
			 -max_library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" \
			 -max "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"

####################################################################################
           #########################################################
                  #### Section 7 : wireload Model ####
           #########################################################
####################################################################################


