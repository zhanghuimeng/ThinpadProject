#!/bin/bash -f
xv_path="/user_program/Xlinx/Vivado/2017.1"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xsim MIPS_CPU_min_sopc_testbench_time_synth -key {Post-Synthesis:sim_1:Timing:MIPS_CPU_min_sopc_testbench} -tclbatch MIPS_CPU_min_sopc_testbench.tcl -view /home/zhanghuimeng/Computer_Architecture/ThinpadProject/MIPS_CPU_min_sopc_testbench_behav.wcfg -log simulate.log
