#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/SDx/2016.4/SDK/bin:/home/SDx/2016.4/Vivado/ids_lite/ISE/bin/lin64:/home/SDx/2016.4/Vivado/bin
else
  PATH=/home/SDx/2016.4/SDK/bin:/home/SDx/2016.4/Vivado/ids_lite/ISE/bin/lin64:/home/SDx/2016.4/Vivado/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/home/SDx/2016.4/Vivado/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/home/SDx/2016.4/Vivado/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/SDx/2016.4/Vivado/bin/project_new/project_new.runs/synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log pe_cu.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source pe_cu.tcl
