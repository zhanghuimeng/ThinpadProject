#!/bin/bash -f
bin_path="/user_program/intelFPGA/17.1/modelsim_ase/bin"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep source MIPS_CPU_min_sopc_testbench_compile.do 2>&1 | tee -a compile.log
