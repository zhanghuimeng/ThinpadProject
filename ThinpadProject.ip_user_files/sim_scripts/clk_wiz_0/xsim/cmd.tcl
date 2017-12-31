set curr_wave [current_wave_config]
if { [string length $curr_wave] == 0 } {
  if { [llength [get_objects]] > 0} {
    add_wave /
    set_property needs_save false [current_wave_config]
  } else {
     send_msg_id Add_Wave-1 WARNING "No top level signals found. Simulator will start without a wave window. If you want to open a wave window go to 'File->New Waveform Configuration' or type 'create_wave_config' in the TCL console."
  }
}

<<<<<<< HEAD:ThinpadProject.ip_user_files/sim_scripts/clk_wiz_0/xsim/cmd.tcl
run -all
quit
=======
run 1000ns
>>>>>>> origin/cp0:ThinpadProject.sim/sim_1/behav/MIPS_CPU_min_sopc_testbench.tcl
