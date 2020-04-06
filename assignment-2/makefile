export VIVADO_PATH=/home/tanyifan/Xilinx/Vivado/2018.3/bin/vivado
PROJECT_DIR:=./project_2
SIM:=sim_1
PROJECT_NAME:=project_2

test: 
	SIMULATION=${SIM} ${VIVADO_PATH} -mode tcl -source benchtest/run_simulation.tcl ${PROJECT_DIR}/${PROJECT_NAME}.xpr
	
