
/opt/Xilinx_2019_1/Vivado/2019.1/bin/xelab xil_defaultlib.apatb_yolo_max_pool_top_top glbl -prj yolo_max_pool_top.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm --initfile "/opt/Xilinx_2019_1/Vivado/2019.1/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s yolo_max_pool_top 
/opt/Xilinx_2019_1/Vivado/2019.1/bin/xsim --noieeewarnings yolo_max_pool_top -tclbatch yolo_max_pool_top.tcl

