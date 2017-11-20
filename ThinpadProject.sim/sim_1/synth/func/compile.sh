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
echo "xvlog -m64 --relax -prj MIPS_CPU_min_sopc_testbench_vlog.prj"
ExecStep $xv_path/bin/xvlog -m64 --relax -prj MIPS_CPU_min_sopc_testbench_vlog.prj 2>&1 | tee compile.log
echo "xvhdl -m64 --relax -prj MIPS_CPU_min_sopc_testbench_vhdl.prj"
ExecStep $xv_path/bin/xvhdl -m64 --relax -prj MIPS_CPU_min_sopc_testbench_vhdl.prj 2>&1 | tee -a compile.log
