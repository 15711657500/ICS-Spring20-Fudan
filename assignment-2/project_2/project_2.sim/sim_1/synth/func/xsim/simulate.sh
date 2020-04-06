#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2018.3 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Sat Apr 04 20:23:06 CST 2020
# SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
#
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep xsim cpu_tb_func_synth -key {Post-Synthesis:sim_1:Functional:cpu_tb} -tclbatch cpu_tb.tcl -view /home/tanyifan/Desktop/ICS-Spring20-Fudan/assignment-2/project_2/cpu_tb_behav.wcfg -log simulate.log
