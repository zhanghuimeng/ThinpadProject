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
ExecStep $bin_path/vsim -64  -do "do {MIPS_CPU_min_sopc_testbench_simulate.do}" -l simulate.log
