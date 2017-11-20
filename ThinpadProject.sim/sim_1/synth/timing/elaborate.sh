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
ExecStep $xv_path/bin/xelab -wto 6d2578a9ce404dc79a22968225d1e5da -m64 --debug typical --relax --mt 8 --maxdelay -L xil_defaultlib -L simprims_ver -L secureip --snapshot MIPS_CPU_min_sopc_testbench_time_synth -transport_int_delays -pulse_r 0 -pulse_int_r 0 -pulse_e 0 -pulse_int_e 0 xil_defaultlib.MIPS_CPU_min_sopc_testbench xil_defaultlib.glbl -log elaborate.log
