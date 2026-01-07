#######################################################
#                                                     #
#  Encounter Command Logging File                     #
#  Created on Thu Oct 16 19:47:53 2025                #
#                                                     #
#######################################################

#@(#)CDS: First Encounter v08.10-p004_1 (32bit) 11/04/2008 14:34 (Linux 2.6)
#@(#)CDS: NanoRoute v08.10-p008 NR081027-0018/USR58-UB (database version 2.30, 67.1.1) {superthreading v1.11}
#@(#)CDS: CeltIC v08.10-p002_1 (32bit) 10/23/2008 22:04:14 (Linux 2.6.9-67.0.10.ELsmp)
#@(#)CDS: CTE v08.10-p016_1 (32bit) Oct 26 2008 15:11:51 (Linux 2.6.9-67.0.10.ELsmp)
#@(#)CDS: CPE v08.10-p009

setUIVar rda_Input ui_topcell SYS_TOP
setUIVar rda_Input ui_netlist /home/ahesham/Projects/System_pnr/DFT/netlists/SYS_TOP.v
setUIVar rda_Input ui_timelib,min /home/ahesham/Projects/System_pnr/std_cells/libs/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.lib
setUIVar rda_Input ui_timelib,max /home/ahesham/Projects/System_pnr/std_cells/libs/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.lib
setUIVar rda_Input ui_timelib /home/ahesham/Projects/System_pnr/std_cells/libs/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.lib
setUIVar rda_Input ui_leffile {/home/ahesham/Projects/System_pnr/std_cells/lef/tsmc13fsg_7lm_tech.lef /home/ahesham/Projects/System_pnr/std_cells/lef/tsmc13_m_macros.lef /home/ahesham/Projects/System_pnr/pnr/import/SYS_TOP.lef}
setUIVar rda_Input ui_captbl_file /home/ahesham/Projects/System_pnr/std_cells/captables/tsmc13fsg.capTbl
setUIVar rda_Input ui_timingcon_file /home/ahesham/Projects/System_pnr/DFT/sdc/SYS_TOP.sdc
setUIVar rda_Input ui_pwrnet VDD
setUIVar rda_Input ui_gndnet VSS
commitConfig
create_library_set -name min_library -timing "../std_cells/libs/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.lib"
create_library_set -name max_library -timing "../std_cells/libs/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.lib"
create_library_set -name typ_library -timing "../std_cells/libs/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.lib"
create_constraint_mode -name func_mode -sdc_files {../DFT/sdc/SYS_TOP_func.sdc}
create_constraint_mode -name scan_mode -sdc_files {../DFT/sdc/SYS_TOP_scan.sdc}
create_constraint_mode -name capture_mode -sdc_files {../DFT/sdc/SYS_TOP_capture.sdc}
create_rc_corner -name RCcorner -cap_table "../std_cells/captables/tsmc13fsg.capTbl"
create_delay_corner -name min_corner -library_set min_library -rc_corner RCcorner
create_delay_corner -name max_corner -library_set max_library -rc_corner RCcorner
create_analysis_view -name setup1_analysis_view -delay_corner max_corner -constraint_mode func_mode
create_analysis_view -name hold1_analysis_view  -delay_corner min_corner -constraint_mode func_mode
create_analysis_view -name setup2_analysis_view -delay_corner max_corner -constraint_mode capture_mode
create_analysis_view -name hold2_analysis_view  -delay_corner min_corner -constraint_mode capture_mode
create_analysis_view -name setup3_analysis_view -delay_corner max_corner -constraint_mode scan_mode
create_analysis_view -name hold3_analysis_view  -delay_corner min_corner -constraint_mode scan_mode
set_analysis_view -setup {setup1_analysis_view setup2_analysis_view setup3_analysis_view } \
                  -hold { hold1_analysis_view hold2_analysis_view hold3_analysis_view}
zoomBox -24.567 123.796 198.513 29.440
floorPlan -d 240.47 160.47 6.0 6.0 6.0 6.0
addRing -spacing_bottom 0.4 -width_left 1 -width_bottom 1 -width_top 1 -spacing_top 0.4 -layer_bottom METAL5 -center 1 -stacked_via_top_layer METAL7 -width_right 1 -around core -jog_distance 0.205 -offset_bottom 0.205 -layer_top METAL5 -threshold 0.205 -offset_left 0.205 -spacing_right 0.4 -spacing_left 0.4 -offset_right 0.205 -offset_top 0.205 -layer_right METAL6 -nets {VSS VDD } -stacked_via_bottom_layer METAL1 -layer_left METAL6
verifyGeometry -noMinArea
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
uiSetTool ruler
uiSetTool ruler
addStripe -block_ring_top_layer_limit METAL7 -max_same_layer_jog_length 0.8 -padcore_ring_bottom_layer_limit METAL5 -set_to_set_distance 60 -stacked_via_top_layer METAL7 -padcore_ring_top_layer_limit METAL7 -spacing 0.45 -merge_stripes_value 0.205 -layer METAL6 -block_ring_bottom_layer_limit METAL5 -width 1 -nets {VSS VDD } -stacked_via_bottom_layer METAL1
uiSetTool select
windowSelect -29.557 107.221 33.541 54.553
windowSelect -19.128 99.660 -19.128 97.313
zoomBox 20.504 102.007 -29.557 65.504
zoomBox 15.882 92.895 -11.563 75.910
selectWire 7.6000 1.8750 8.6000 157.6950 6 VDD
deleteSelectedFromFPlan
selectWire 6.1500 3.2750 7.1500 156.2950 6 VSS
deleteSelectedFromFPlan
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { 1 6 } -blockPinTarget { nearestRingStripe nearestTarget } -padPinPortConnect { allPort oneGeom } -checkAlignedSecondaryPin 1 -blockPin useLef -allowJogging 1 -crossoverViaBottomLayer 1 -allowLayerChange 1 -targetViaTopLayer 7 -crossoverViaTopLayer 7 -targetViaBottomLayer 1 -nets { VSS VDD }
verifyGeometry -noMinArea
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
saveFPlan /home/ahesham/Projects/System_pnr/pnr/SYS_TOP.fp
placeDesign -inPlaceOpt -prePlaceOpt
addTieHiLo -cell TIELOM -prefix LTIE
addTieHiLo -cell TIEHIM -prefix HTIE
globalNetConnect VDD -type pgpin -pin VDD -inst *
globalNetConnect VSS -type pgpin -pin VSS -inst *
setDrawView fplan
setDrawView fplan
setDrawView ameba
setDrawView place
setDrawView ameba
setDrawView fplan
getIoFlowFlag
setDrawView fplan
setDrawView ameba
setDrawView fplan
setDrawView place
setDrawView fplan
setDrawView place
clearClockDomains
setClockDomains -all
timeDesign -preCTS -idealClock -pathReports -drvReports -slackReports -numPaths 50 -prefix SYS_TOP_preCTS -outDir timingReports
panCenter 130.661 45.263
clockDesign -genSpecOnly Clock.ctstch
clockDesign -specFile Clock.ctstch -outDir clock_report -fixedInstBeforeCTS
getIoFlowFlag
clearClockDomains
setClockDomains -all
timeDesign -postCTS -pathReports -drvReports -slackReports -numPaths 50 -prefix SYS_TOP_postCTS -outDir timingReports
clearClockDomains
setClockDomains -all
timeDesign -postCTS -hold -pathReports -slackReports -numPaths 50 -prefix SYS_TOP_postCTS -outDir timingReports
optDesign -postCTS -hold
clearClockDomains
setClockDomains -all
timeDesign -preCTS -idealClock -pathReports -drvReports -slackReports -numPaths 50 -prefix SYS_TOP_preCTS -outDir timingReports
clearClockDomains
setClockDomains -all
timeDesign -preCTS -hold -idealClock -pathReports -slackReports -numPaths 50 -prefix SYS_TOP_preCTS -outDir timingReports
clearClockDomains
setClockDomains -all
timeDesign -preCTS -idealClock -pathReports -slackReports -numPaths 50 -prefix SYS_TOP_preCTS -outDir timingReports
clearClockDomains
setClockDomains -all
timeDesign -preCTS -hold -idealClock -pathReports -slackReports -numPaths 50 -prefix SYS_TOP_preCTS -outDir timingReports
clearClockDomains
setClockDomains -all
timeDesign -postCTS -pathReports -slackReports -numPaths 50 -prefix SYS_TOP_postCTS -outDir timingReports
clearClockDomains
setClockDomains -all
timeDesign -postCTS -hold -pathReports -slackReports -numPaths 50 -prefix SYS_TOP_postCTS -outDir timingReports
optDesign -postCTS -hold
clearClockDomains
setClockDomains -all
timeDesign -postCTS -pathReports -drvReports -slackReports -numPaths 50 -prefix SYS_TOP_postCTS -outDir timingReports
clearClockDomains
setClockDomains -all
timeDesign -postCTS -hold -pathReports -slackReports -numPaths 50 -prefix SYS_TOP_postCTS -outDir timingReports
setNanoRouteMode -quiet -routeTopRoutingLayer 6
routeDesign -globalDetail -viaOpt -wireOpt
verifyGeometry -noMinArea
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
verifyProcessAntenna -reportfile SYS_TOP.antenna.rpt -leffile SYS_TOP.antenna.lef -error 1000
clearClockDomains
setClockDomains -all
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix SYS_TOP_postRoute -outDir timingReports
clearClockDomains
setClockDomains -all
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix SYS_TOP_postRoute -outDir timingReports
windowSelect 114.368 58.203 113.064 51.684
deselectAll
setLayerPreference allM0 -isVisible 0
setLayerPreference allM1 -isVisible 0
setLayerPreference allM2 -isVisible 0
setLayerPreference allM3 -isVisible 0
setLayerPreference allM4 -isVisible 0
setLayerPreference allM5 -isVisible 0
setLayerPreference allM6 -isVisible 0
setLayerPreference allM7 -isVisible 0
setLayerPreference allM1Cont -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
addFiller -cell {FILL1M FILL2M FILL4M FILL8M FILL16M FILL32M FILL64M} -prefix FILLER -markFixed
verifyGeometry -noMinArea
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
verifyProcessAntenna -reportfile SYS_TOP.antenna.rpt -leffile SYS_TOP.antenna.lef -error 1000
setLayerPreference allM0 -isVisible 1
setLayerPreference allM1 -isVisible 1
setLayerPreference allM2 -isVisible 1
setLayerPreference allM3 -isVisible 1
setLayerPreference allM4 -isVisible 1
setLayerPreference allM5 -isVisible 1
setLayerPreference allM6 -isVisible 1
setLayerPreference allM7 -isVisible 1
setLayerPreference allM1Cont -isVisible 1
setLayerPreference allM2Cont -isVisible 1
setLayerPreference allM3Cont -isVisible 1
setLayerPreference allM4Cont -isVisible 1
setLayerPreference allM5Cont -isVisible 1
setLayerPreference allM6Cont -isVisible 1
setLayerPreference allM7Cont -isVisible 1
setDrawView fplan
setDrawView ameba
setDrawView place
zoomBox -14.695 142.681 40.320 82.451
zoomBox -9.028 130.315 24.067 108.696
zoomBox -3.258 124.216 8.078 112.401
selectWire 0.5150 73.0850 0.7150 135.1950 4 RST_N
deselectAll
zoomBox -13.652 116.347 34.845 41.255
zoomBox -12.641 96.603 25.071 64.992
zoomBox -3.240 88.338 11.655 70.455
zoomBox -4.734 83.847 10.665 71.960
clearClockDomains
setClockDomains -all
timeDesign -preCTS -idealClock -pathReports -drvReports -slackReports -numPaths 50 -prefix SYS_TOP_preCTS -outDir timingReports
clearClockDomains
setClockDomains -all
timeDesign -preCTS -hold -idealClock -pathReports -slackReports -numPaths 50 -prefix SYS_TOP_preCTS -outDir timingReports
zoomBox -2.180 163.018 243.171 -2.288
saveDesign /home/ahesham/Projects/System_pnr/pnr/SYS_TOP_Chip_Finsh.enc
saveNetlist export/ALU_TOP.v
saveNetlist export/ALU_TOP_pg.v -includePowerGround
rcOut -spf export/ALU_TOP.spf
delayCal -sdf export/ALU_TOP.sdf -version 3.0
report_power -outfile report/power.rpt
streamOut export/ALU_TOP.gds -mapFile ./import/gds2InLayer.map -libName DesignLib -stripes 1 -units 2000 -mode ALL
zoomBox -2.359 163.024 242.917 -2.510
setDrawView fplan
setDrawView ameba
windowSelect -5.763 167.868 245.886 -7.788
deselectAll
windowSelect 249.794 165.262 -9.237 -6.919
deselectAll
zoomBox -6.197 166.565 247.840 -7.788
setDrawView fplan
setDrawView place
setDrawView ameba
setDrawView fplan
setDrawView ameba
setDrawView place
