#!/bin/bash -f
xv_path="/home/SDx/2016.4/Vivado"
xv_lib_path="/home/SDx/2016.4/Vivado/lib/lnx64.o"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xelab -wto 2a51f5cf15d34892aa4c7401d63114e5 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L blk_mem_gen_v8_3_5 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot ce_pe_tb_behav xil_defaultlib.ce_pe_tb xil_defaultlib.glbl -log elaborate.log
