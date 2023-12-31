# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_msg_config -id {HDL-1065} -limit 10000
create_project -in_memory -part xczu7ev-ffvc1156-2-e

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu104_src_ema/project_2/project_2.cache/wt [current_project]
set_property parent.project_path /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu104_src_ema/project_2/project_2.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part xilinx.com:zcu104:part0:1.1 [current_project]
set_property ip_repo_paths {
  /home/manvar00/Downloads/workspace/ug871-design-files/ug871-design-files/Using_IP_with_Zynq/lab1/hls_macc/vhls_prj/solution1/impl/ip
  /home/manvar00/Downloads/workspace/ug871-design-files/ug871-design-files/Introduction/lab1/lab1/solution1/impl/ip
} [current_project]
update_ip_catalog
set_property ip_output_repo /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu104_src_ema/project_2/project_2.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu104_src_ema/project_2/project_2.srcs/sources_1/bd/Base_Zynq_MPSoC/hdl/Base_Zynq_MPSoC_wrapper.v
add_files /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu104_src_ema/project_2/project_2.srcs/sources_1/bd/Base_Zynq_MPSoC/Base_Zynq_MPSoC.bd
set_property used_in_implementation false [get_files -all /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu104_src_ema/project_2/project_2.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu104_src_ema/project_2/project_2.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0/Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu104_src_ema/project_2/project_2.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_axi_gpio_0_0/Base_Zynq_MPSoC_axi_gpio_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu104_src_ema/project_2/project_2.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_axi_gpio_0_0/Base_Zynq_MPSoC_axi_gpio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu104_src_ema/project_2/project_2.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_axi_gpio_0_0/Base_Zynq_MPSoC_axi_gpio_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu104_src_ema/project_2/project_2.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_xbar_0/Base_Zynq_MPSoC_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu104_src_ema/project_2/project_2.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_rst_ps8_0_100M_0/Base_Zynq_MPSoC_rst_ps8_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu104_src_ema/project_2/project_2.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_rst_ps8_0_100M_0/Base_Zynq_MPSoC_rst_ps8_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu104_src_ema/project_2/project_2.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_rst_ps8_0_100M_0/Base_Zynq_MPSoC_rst_ps8_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu104_src_ema/project_2/project_2.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_system_management_wiz_0_0/Base_Zynq_MPSoC_system_management_wiz_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu104_src_ema/project_2/project_2.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_system_management_wiz_0_0/Base_Zynq_MPSoC_system_management_wiz_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu104_src_ema/project_2/project_2.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_system_management_wiz_0_0/Base_Zynq_MPSoC_system_management_wiz_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu104_src_ema/project_2/project_2.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_axi_gpio_1_0/Base_Zynq_MPSoC_axi_gpio_1_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu104_src_ema/project_2/project_2.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_axi_gpio_1_0/Base_Zynq_MPSoC_axi_gpio_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu104_src_ema/project_2/project_2.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_axi_gpio_1_0/Base_Zynq_MPSoC_axi_gpio_1_0.xdc]
set_property used_in_implementation false [get_files -all /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu104_src_ema/project_2/project_2.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_axi_gpio_2_0/Base_Zynq_MPSoC_axi_gpio_2_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu104_src_ema/project_2/project_2.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_axi_gpio_2_0/Base_Zynq_MPSoC_axi_gpio_2_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu104_src_ema/project_2/project_2.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_axi_gpio_2_0/Base_Zynq_MPSoC_axi_gpio_2_0.xdc]
set_property used_in_synthesis false [get_files -all /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu104_src_ema/project_2/project_2.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_auto_ds_0/Base_Zynq_MPSoC_auto_ds_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu104_src_ema/project_2/project_2.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_auto_ds_0/Base_Zynq_MPSoC_auto_ds_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu104_src_ema/project_2/project_2.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_auto_ds_0/Base_Zynq_MPSoC_auto_ds_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu104_src_ema/project_2/project_2.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_auto_pc_0/Base_Zynq_MPSoC_auto_pc_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu104_src_ema/project_2/project_2.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_auto_ds_1/Base_Zynq_MPSoC_auto_ds_1_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu104_src_ema/project_2/project_2.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_auto_ds_1/Base_Zynq_MPSoC_auto_ds_1_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu104_src_ema/project_2/project_2.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_auto_ds_1/Base_Zynq_MPSoC_auto_ds_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu104_src_ema/project_2/project_2.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_auto_pc_1/Base_Zynq_MPSoC_auto_pc_1_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu104_src_ema/project_2/project_2.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_auto_ds_2/Base_Zynq_MPSoC_auto_ds_2_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu104_src_ema/project_2/project_2.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_auto_ds_2/Base_Zynq_MPSoC_auto_ds_2_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu104_src_ema/project_2/project_2.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_auto_ds_2/Base_Zynq_MPSoC_auto_ds_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu104_src_ema/project_2/project_2.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_auto_pc_2/Base_Zynq_MPSoC_auto_pc_2_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu104_src_ema/project_2/project_2.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_auto_ds_3/Base_Zynq_MPSoC_auto_ds_3_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu104_src_ema/project_2/project_2.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_auto_ds_3/Base_Zynq_MPSoC_auto_ds_3_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu104_src_ema/project_2/project_2.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_auto_ds_3/Base_Zynq_MPSoC_auto_ds_3_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu104_src_ema/project_2/project_2.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_auto_pc_3/Base_Zynq_MPSoC_auto_pc_3_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu104_src_ema/project_2/project_2.srcs/sources_1/bd/Base_Zynq_MPSoC/Base_Zynq_MPSoC_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu104_src_ema/project_2/project_2.srcs/constrs_1/new/RO_constr.xdc
set_property used_in_implementation false [get_files /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu104_src_ema/project_2/project_2.srcs/constrs_1/new/RO_constr.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top Base_Zynq_MPSoC_wrapper -part xczu7ev-ffvc1156-2-e


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef Base_Zynq_MPSoC_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file Base_Zynq_MPSoC_wrapper_utilization_synth.rpt -pb Base_Zynq_MPSoC_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
