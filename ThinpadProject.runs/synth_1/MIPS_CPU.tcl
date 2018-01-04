# 
# Synthesis run script generated by Vivado
# 

create_project -in_memory -part xc7a100tfgg676-2L

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/zhanghuimeng/Computer_Architecture/second/ThinpadProject/ThinpadProject.cache/wt [current_project]
set_property parent.project_path /home/zhanghuimeng/Computer_Architecture/second/ThinpadProject/ThinpadProject.xpr [current_project]
set_property XPM_LIBRARIES XPM_CDC [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_output_repo /home/zhanghuimeng/Computer_Architecture/second/ThinpadProject/ThinpadProject.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  /home/zhanghuimeng/Computer_Architecture/second/ThinpadProject/ThinpadProject.srcs/sources_1/new/async.v
  /home/zhanghuimeng/Computer_Architecture/second/ThinpadProject/ThinpadProject.srcs/sources_1/new/SEG7_LUT.v
}
read_vhdl -vhdl2008 -library xil_defaultlib {
  /home/zhanghuimeng/Computer_Architecture/second/ThinpadProject/ThinpadProject.srcs/sources_1/new/include.vhd
  /home/zhanghuimeng/Computer_Architecture/second/ThinpadProject/ThinpadProject.srcs/sources_1/new/EX.vhd
  /home/zhanghuimeng/Computer_Architecture/second/ThinpadProject/ThinpadProject.srcs/sources_1/new/EX_to_MEM.vhd
  /home/zhanghuimeng/Computer_Architecture/second/ThinpadProject/ThinpadProject.srcs/sources_1/new/HI_LO.vhd
  /home/zhanghuimeng/Computer_Architecture/second/ThinpadProject/ThinpadProject.srcs/sources_1/new/ID.vhd
  /home/zhanghuimeng/Computer_Architecture/second/ThinpadProject/ThinpadProject.srcs/sources_1/new/ID_to_EX.vhd
  /home/zhanghuimeng/Computer_Architecture/second/ThinpadProject/ThinpadProject.srcs/sources_1/new/IF_to_ID.vhd
  /home/zhanghuimeng/Computer_Architecture/second/ThinpadProject/ThinpadProject.srcs/sources_1/new/MEM.vhd
  /home/zhanghuimeng/Computer_Architecture/second/ThinpadProject/ThinpadProject.srcs/sources_1/new/MEM_to_WB.vhd
  /home/zhanghuimeng/Computer_Architecture/second/ThinpadProject/ThinpadProject.srcs/sources_1/new/PAUSE_CTRL.vhd
  /home/zhanghuimeng/Computer_Architecture/second/ThinpadProject/ThinpadProject.srcs/sources_1/new/PC.vhd
  /home/zhanghuimeng/Computer_Architecture/second/ThinpadProject/ThinpadProject.srcs/sources_1/new/REGISTERS.vhd
  /home/zhanghuimeng/Computer_Architecture/second/ThinpadProject/ThinpadProject.srcs/sources_1/new/MIPS_CPU.vhd
  /home/zhanghuimeng/Computer_Architecture/second/ThinpadProject/ThinpadProject.srcs/sources_1/new/MMU.vhd
  /home/zhanghuimeng/Computer_Architecture/second/ThinpadProject/ThinpadProject.srcs/sources_1/new/SRAM_CONTROLL.vhd
  /home/zhanghuimeng/Computer_Architecture/second/ThinpadProject/ThinpadProject.srcs/sources_1/new/SERIAL_CONTROLL.vhd
  /home/zhanghuimeng/Computer_Architecture/second/ThinpadProject/ThinpadProject.srcs/sources_1/new/MEM_CONTROLL.vhd
  /home/zhanghuimeng/Computer_Architecture/second/ThinpadProject/ThinpadProject.srcs/sources_1/new/CP0_REG.vhd
}
read_ip -quiet /home/zhanghuimeng/Computer_Architecture/second/ThinpadProject/ThinpadProject.srcs/sources_1/ip/clk_wiz_0_2/clk_wiz_0.xci
set_property used_in_implementation false [get_files -all /home/zhanghuimeng/Computer_Architecture/second/ThinpadProject/ThinpadProject.srcs/sources_1/ip/clk_wiz_0_2/clk_wiz_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/zhanghuimeng/Computer_Architecture/second/ThinpadProject/ThinpadProject.srcs/sources_1/ip/clk_wiz_0_2/clk_wiz_0.xdc]
set_property used_in_implementation false [get_files -all /home/zhanghuimeng/Computer_Architecture/second/ThinpadProject/ThinpadProject.srcs/sources_1/ip/clk_wiz_0_2/clk_wiz_0_ooc.xdc]
set_property is_locked true [get_files /home/zhanghuimeng/Computer_Architecture/second/ThinpadProject/ThinpadProject.srcs/sources_1/ip/clk_wiz_0_2/clk_wiz_0.xci]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/zhanghuimeng/Computer_Architecture/second/ThinpadProject/ThinpadProject.srcs/constrs_1/new/MIPS_CPU.xdc
set_property used_in_implementation false [get_files /home/zhanghuimeng/Computer_Architecture/second/ThinpadProject/ThinpadProject.srcs/constrs_1/new/MIPS_CPU.xdc]


synth_design -top MIPS_CPU -part xc7a100tfgg676-2L


write_checkpoint -force -noxdef MIPS_CPU.dcp

catch { report_utilization -file MIPS_CPU_utilization_synth.rpt -pb MIPS_CPU_utilization_synth.pb }
