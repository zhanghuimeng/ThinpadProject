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
ExecStep $xv_path/bin/xelab -wto 6d2578a9ce404dc79a22968225d1e5da -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot MIPS_CPU_min_sopc_testbench_behav xil_defaultlib.MIPS_CPU_min_sopc_testbench xil_defaultlib.glbl -log elaborate.log
