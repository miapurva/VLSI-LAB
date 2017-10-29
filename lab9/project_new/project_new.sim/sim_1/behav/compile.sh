#!/bin/bash -f
xv_path="/home/SDx/2016.4/Vivado"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
echo "xvlog -m64 --relax -prj ce_pe_tb_vlog.prj"
ExecStep $xv_path/bin/xvlog -m64 --relax -prj ce_pe_tb_vlog.prj 2>&1 | tee compile.log
