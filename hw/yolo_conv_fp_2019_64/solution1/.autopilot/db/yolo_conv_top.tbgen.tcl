set moduleName yolo_conv_top
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {yolo_conv_top}
set C_modelType { void 0 }
set C_modelArgList {
	{ inStream_V_data int 64 regular {axi_s 0 volatile  { inStream Data } }  }
	{ inStream_V_keep_V int 8 regular {axi_s 0 volatile  { inStream Keep } }  }
	{ inStream_V_strb_V int 8 regular {axi_s 0 volatile  { inStream Strb } }  }
	{ inStream_V_user_V int 2 regular {axi_s 0 volatile  { inStream User } }  }
	{ inStream_V_last_V int 1 regular {axi_s 0 volatile  { inStream Last } }  }
	{ inStream_V_id_V int 5 regular {axi_s 0 volatile  { inStream ID } }  }
	{ inStream_V_dest_V int 6 regular {axi_s 0 volatile  { inStream Dest } }  }
	{ outStream_V_data int 64 regular {axi_s 1 volatile  { outStream Data } }  }
	{ outStream_V_keep_V int 8 regular {axi_s 1 volatile  { outStream Keep } }  }
	{ outStream_V_strb_V int 8 regular {axi_s 1 volatile  { outStream Strb } }  }
	{ outStream_V_user_V int 2 regular {axi_s 1 volatile  { outStream User } }  }
	{ outStream_V_last_V int 1 regular {axi_s 1 volatile  { outStream Last } }  }
	{ outStream_V_id_V int 5 regular {axi_s 1 volatile  { outStream ID } }  }
	{ outStream_V_dest_V int 6 regular {axi_s 1 volatile  { outStream Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "inStream_V_data", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "inStream.V.data.sub_data_0.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":16,"up":31,"cElement": [{"cName": "inStream.V.data.sub_data_1.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":32,"up":47,"cElement": [{"cName": "inStream.V.data.sub_data_2.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":48,"up":63,"cElement": [{"cName": "inStream.V.data.sub_data_3.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inStream_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "inStream.V.keep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inStream_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "inStream.V.strb.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inStream_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY", "bitSlice":[{"low":0,"up":1,"cElement": [{"cName": "inStream.V.user.V","cData": "uint2","bit_use": { "low": 0,"up": 1},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inStream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "inStream.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inStream_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "inStream.V.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inStream_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "READONLY", "bitSlice":[{"low":0,"up":5,"cElement": [{"cName": "inStream.V.dest.V","cData": "uint6","bit_use": { "low": 0,"up": 5},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_V_data", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "outStream.V.data.sub_data_0.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":16,"up":31,"cElement": [{"cName": "outStream.V.data.sub_data_1.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":32,"up":47,"cElement": [{"cName": "outStream.V.data.sub_data_2.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":48,"up":63,"cElement": [{"cName": "outStream.V.data.sub_data_3.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "outStream.V.keep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "outStream.V.strb.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":1,"cElement": [{"cName": "outStream.V.user.V","cData": "uint2","bit_use": { "low": 0,"up": 1},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "outStream.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "outStream.V.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":5,"cElement": [{"cName": "outStream.V.dest.V","cData": "uint6","bit_use": { "low": 0,"up": 5},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ inStream_TDATA sc_in sc_lv 64 signal 0 } 
	{ inStream_TVALID sc_in sc_logic 1 invld 6 } 
	{ inStream_TREADY sc_out sc_logic 1 inacc 6 } 
	{ inStream_TKEEP sc_in sc_lv 8 signal 1 } 
	{ inStream_TSTRB sc_in sc_lv 8 signal 2 } 
	{ inStream_TUSER sc_in sc_lv 2 signal 3 } 
	{ inStream_TLAST sc_in sc_lv 1 signal 4 } 
	{ inStream_TID sc_in sc_lv 5 signal 5 } 
	{ inStream_TDEST sc_in sc_lv 6 signal 6 } 
	{ outStream_TDATA sc_out sc_lv 64 signal 7 } 
	{ outStream_TVALID sc_out sc_logic 1 outvld 13 } 
	{ outStream_TREADY sc_in sc_logic 1 outacc 13 } 
	{ outStream_TKEEP sc_out sc_lv 8 signal 8 } 
	{ outStream_TSTRB sc_out sc_lv 8 signal 9 } 
	{ outStream_TUSER sc_out sc_lv 2 signal 10 } 
	{ outStream_TLAST sc_out sc_lv 1 signal 11 } 
	{ outStream_TID sc_out sc_lv 5 signal 12 } 
	{ outStream_TDEST sc_out sc_lv 6 signal 13 } 
	{ s_axi_AXILiteS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_AXILiteS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_AXILiteS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWADDR" },"address":[{"name":"yolo_conv_top","role":"start","value":"0","valid_bit":"0"},{"name":"yolo_conv_top","role":"continue","value":"0","valid_bit":"4"},{"name":"yolo_conv_top","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_AXILiteS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWVALID" } },
	{ "name": "s_axi_AXILiteS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWREADY" } },
	{ "name": "s_axi_AXILiteS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WVALID" } },
	{ "name": "s_axi_AXILiteS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WREADY" } },
	{ "name": "s_axi_AXILiteS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WDATA" } },
	{ "name": "s_axi_AXILiteS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WSTRB" } },
	{ "name": "s_axi_AXILiteS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARADDR" },"address":[{"name":"yolo_conv_top","role":"start","value":"0","valid_bit":"0"},{"name":"yolo_conv_top","role":"done","value":"0","valid_bit":"1"},{"name":"yolo_conv_top","role":"idle","value":"0","valid_bit":"2"},{"name":"yolo_conv_top","role":"ready","value":"0","valid_bit":"3"},{"name":"yolo_conv_top","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_AXILiteS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARVALID" } },
	{ "name": "s_axi_AXILiteS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARREADY" } },
	{ "name": "s_axi_AXILiteS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RVALID" } },
	{ "name": "s_axi_AXILiteS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RREADY" } },
	{ "name": "s_axi_AXILiteS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RDATA" } },
	{ "name": "s_axi_AXILiteS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RRESP" } },
	{ "name": "s_axi_AXILiteS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BVALID" } },
	{ "name": "s_axi_AXILiteS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BREADY" } },
	{ "name": "s_axi_AXILiteS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "inStream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "inStream_V_data", "role": "default" }} , 
 	{ "name": "inStream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "inStream_V_dest_V", "role": "default" }} , 
 	{ "name": "inStream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "inStream_V_dest_V", "role": "default" }} , 
 	{ "name": "inStream_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inStream_V_keep_V", "role": "default" }} , 
 	{ "name": "inStream_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inStream_V_strb_V", "role": "default" }} , 
 	{ "name": "inStream_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "inStream_V_user_V", "role": "default" }} , 
 	{ "name": "inStream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inStream_V_last_V", "role": "default" }} , 
 	{ "name": "inStream_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "inStream_V_id_V", "role": "default" }} , 
 	{ "name": "inStream_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "inStream_V_dest_V", "role": "default" }} , 
 	{ "name": "outStream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "outStream_V_data", "role": "default" }} , 
 	{ "name": "outStream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outStream_V_dest_V", "role": "default" }} , 
 	{ "name": "outStream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "outStream_V_dest_V", "role": "default" }} , 
 	{ "name": "outStream_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outStream_V_keep_V", "role": "default" }} , 
 	{ "name": "outStream_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outStream_V_strb_V", "role": "default" }} , 
 	{ "name": "outStream_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "outStream_V_user_V", "role": "default" }} , 
 	{ "name": "outStream_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "outStream_V_last_V", "role": "default" }} , 
 	{ "name": "outStream_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "outStream_V_id_V", "role": "default" }} , 
 	{ "name": "outStream_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "outStream_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "21", "31", "41", "51", "61", "71", "81", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124"],
		"CDFG" : "yolo_conv_top",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1051029", "EstimateLatencyMax" : "1051029",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "inStream_V_data", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inStream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inStream_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "inStream_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "inStream_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "inStream_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "inStream_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "inStream_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "outStream_V_data", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "outStream_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_out_stream_merge_fu_3402", "Port" : "outStream_V_data"}]},
			{"Name" : "outStream_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_out_stream_merge_fu_3402", "Port" : "outStream_V_keep_V"}]},
			{"Name" : "outStream_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_out_stream_merge_fu_3402", "Port" : "outStream_V_strb_V"}]},
			{"Name" : "outStream_V_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_out_stream_merge_fu_3402", "Port" : "outStream_V_user_V"}]},
			{"Name" : "outStream_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_out_stream_merge_fu_3402", "Port" : "outStream_V_last_V"}]},
			{"Name" : "outStream_V_id_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_out_stream_merge_fu_3402", "Port" : "outStream_V_id_V"}]},
			{"Name" : "outStream_V_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_out_stream_merge_fu_3402", "Port" : "outStream_V_dest_V"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_out_stream_merge_fu_3402", "SubBlockPort" : ["out_stream_group_0_V_V_blk_n", "out_stream_group_1_V_V_blk_n", "out_stream_group_2_V_V_blk_n", "out_stream_group_3_V_V_blk_n", "out_stream_group_4_V_V_blk_n", "out_stream_group_5_V_V_blk_n", "out_stream_group_6_V_V_blk_n", "out_stream_group_7_V_V_blk_n", "out_stream_group_8_V_V_blk_n", "out_stream_group_9_V_V_blk_n", "out_stream_group_10_V_V_blk_n", "out_stream_group_11_V_V_blk_n", "out_stream_group_12_V_V_blk_n", "out_stream_group_13_V_V_blk_n", "out_stream_group_14_V_V_blk_n", "out_stream_group_15_V_V_blk_n", "outStream_TDATA_blk_n"]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_AXILiteS_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buff_group_0_va_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buff_group_0_va_1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buff_group_0_va_2_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buff_group_1_va_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buff_group_1_va_1_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buff_group_1_va_2_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buff_group_2_va_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buff_group_2_va_1_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buff_group_2_va_2_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3226", "Parent" : "0", "Child" : ["12", "13", "14", "15", "16", "17", "18", "19", "20"],
		"CDFG" : "window_macc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "6", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "window_0_0_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_0_1_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_0_2_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_0_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_1_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_2_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_0_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_1_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_2_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read110", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read211", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read312", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read413", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read514", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read615", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read716", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read817", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3226.yolo_conv_top_mul_mul_16s_16s_32_1_0_U10", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3226.yolo_conv_top_mul_mul_16s_16s_32_1_0_U11", "Parent" : "11"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3226.yolo_conv_top_mul_mul_16s_16s_32_1_0_U12", "Parent" : "11"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3226.yolo_conv_top_mul_mul_16s_16s_32_1_0_U13", "Parent" : "11"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3226.yolo_conv_top_mul_mul_16s_16s_32_1_0_U14", "Parent" : "11"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3226.yolo_conv_top_mul_mul_16s_16s_32_1_0_U15", "Parent" : "11"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3226.yolo_conv_top_mul_mul_16s_16s_32_1_0_U16", "Parent" : "11"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3226.yolo_conv_top_mul_mul_16s_16s_32_1_0_U17", "Parent" : "11"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3226.yolo_conv_top_mul_mul_16s_16s_32_1_0_U18", "Parent" : "11"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3248", "Parent" : "0", "Child" : ["22", "23", "24", "25", "26", "27", "28", "29", "30"],
		"CDFG" : "window_macc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "6", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "window_0_0_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_0_1_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_0_2_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_0_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_1_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_2_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_0_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_1_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_2_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read110", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read211", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read312", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read413", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read514", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read615", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read716", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read817", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3248.yolo_conv_top_mul_mul_16s_16s_32_1_0_U10", "Parent" : "21"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3248.yolo_conv_top_mul_mul_16s_16s_32_1_0_U11", "Parent" : "21"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3248.yolo_conv_top_mul_mul_16s_16s_32_1_0_U12", "Parent" : "21"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3248.yolo_conv_top_mul_mul_16s_16s_32_1_0_U13", "Parent" : "21"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3248.yolo_conv_top_mul_mul_16s_16s_32_1_0_U14", "Parent" : "21"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3248.yolo_conv_top_mul_mul_16s_16s_32_1_0_U15", "Parent" : "21"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3248.yolo_conv_top_mul_mul_16s_16s_32_1_0_U16", "Parent" : "21"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3248.yolo_conv_top_mul_mul_16s_16s_32_1_0_U17", "Parent" : "21"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3248.yolo_conv_top_mul_mul_16s_16s_32_1_0_U18", "Parent" : "21"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3270", "Parent" : "0", "Child" : ["32", "33", "34", "35", "36", "37", "38", "39", "40"],
		"CDFG" : "window_macc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "6", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "window_0_0_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_0_1_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_0_2_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_0_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_1_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_2_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_0_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_1_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_2_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read110", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read211", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read312", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read413", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read514", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read615", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read716", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read817", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3270.yolo_conv_top_mul_mul_16s_16s_32_1_0_U10", "Parent" : "31"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3270.yolo_conv_top_mul_mul_16s_16s_32_1_0_U11", "Parent" : "31"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3270.yolo_conv_top_mul_mul_16s_16s_32_1_0_U12", "Parent" : "31"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3270.yolo_conv_top_mul_mul_16s_16s_32_1_0_U13", "Parent" : "31"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3270.yolo_conv_top_mul_mul_16s_16s_32_1_0_U14", "Parent" : "31"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3270.yolo_conv_top_mul_mul_16s_16s_32_1_0_U15", "Parent" : "31"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3270.yolo_conv_top_mul_mul_16s_16s_32_1_0_U16", "Parent" : "31"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3270.yolo_conv_top_mul_mul_16s_16s_32_1_0_U17", "Parent" : "31"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3270.yolo_conv_top_mul_mul_16s_16s_32_1_0_U18", "Parent" : "31"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3292", "Parent" : "0", "Child" : ["42", "43", "44", "45", "46", "47", "48", "49", "50"],
		"CDFG" : "window_macc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "6", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "window_0_0_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_0_1_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_0_2_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_0_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_1_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_2_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_0_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_1_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_2_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read110", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read211", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read312", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read413", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read514", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read615", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read716", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read817", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3292.yolo_conv_top_mul_mul_16s_16s_32_1_0_U10", "Parent" : "41"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3292.yolo_conv_top_mul_mul_16s_16s_32_1_0_U11", "Parent" : "41"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3292.yolo_conv_top_mul_mul_16s_16s_32_1_0_U12", "Parent" : "41"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3292.yolo_conv_top_mul_mul_16s_16s_32_1_0_U13", "Parent" : "41"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3292.yolo_conv_top_mul_mul_16s_16s_32_1_0_U14", "Parent" : "41"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3292.yolo_conv_top_mul_mul_16s_16s_32_1_0_U15", "Parent" : "41"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3292.yolo_conv_top_mul_mul_16s_16s_32_1_0_U16", "Parent" : "41"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3292.yolo_conv_top_mul_mul_16s_16s_32_1_0_U17", "Parent" : "41"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3292.yolo_conv_top_mul_mul_16s_16s_32_1_0_U18", "Parent" : "41"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3314", "Parent" : "0", "Child" : ["52", "53", "54", "55", "56", "57", "58", "59", "60"],
		"CDFG" : "window_macc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "6", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "window_0_0_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_0_1_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_0_2_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_0_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_1_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_2_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_0_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_1_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_2_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read110", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read211", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read312", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read413", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read514", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read615", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read716", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read817", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3314.yolo_conv_top_mul_mul_16s_16s_32_1_0_U10", "Parent" : "51"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3314.yolo_conv_top_mul_mul_16s_16s_32_1_0_U11", "Parent" : "51"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3314.yolo_conv_top_mul_mul_16s_16s_32_1_0_U12", "Parent" : "51"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3314.yolo_conv_top_mul_mul_16s_16s_32_1_0_U13", "Parent" : "51"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3314.yolo_conv_top_mul_mul_16s_16s_32_1_0_U14", "Parent" : "51"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3314.yolo_conv_top_mul_mul_16s_16s_32_1_0_U15", "Parent" : "51"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3314.yolo_conv_top_mul_mul_16s_16s_32_1_0_U16", "Parent" : "51"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3314.yolo_conv_top_mul_mul_16s_16s_32_1_0_U17", "Parent" : "51"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3314.yolo_conv_top_mul_mul_16s_16s_32_1_0_U18", "Parent" : "51"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3336", "Parent" : "0", "Child" : ["62", "63", "64", "65", "66", "67", "68", "69", "70"],
		"CDFG" : "window_macc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "6", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "window_0_0_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_0_1_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_0_2_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_0_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_1_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_2_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_0_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_1_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_2_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read110", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read211", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read312", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read413", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read514", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read615", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read716", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read817", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3336.yolo_conv_top_mul_mul_16s_16s_32_1_0_U10", "Parent" : "61"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3336.yolo_conv_top_mul_mul_16s_16s_32_1_0_U11", "Parent" : "61"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3336.yolo_conv_top_mul_mul_16s_16s_32_1_0_U12", "Parent" : "61"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3336.yolo_conv_top_mul_mul_16s_16s_32_1_0_U13", "Parent" : "61"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3336.yolo_conv_top_mul_mul_16s_16s_32_1_0_U14", "Parent" : "61"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3336.yolo_conv_top_mul_mul_16s_16s_32_1_0_U15", "Parent" : "61"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3336.yolo_conv_top_mul_mul_16s_16s_32_1_0_U16", "Parent" : "61"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3336.yolo_conv_top_mul_mul_16s_16s_32_1_0_U17", "Parent" : "61"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3336.yolo_conv_top_mul_mul_16s_16s_32_1_0_U18", "Parent" : "61"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3358", "Parent" : "0", "Child" : ["72", "73", "74", "75", "76", "77", "78", "79", "80"],
		"CDFG" : "window_macc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "6", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "window_0_0_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_0_1_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_0_2_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_0_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_1_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_2_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_0_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_1_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_2_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read110", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read211", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read312", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read413", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read514", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read615", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read716", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read817", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3358.yolo_conv_top_mul_mul_16s_16s_32_1_0_U10", "Parent" : "71"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3358.yolo_conv_top_mul_mul_16s_16s_32_1_0_U11", "Parent" : "71"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3358.yolo_conv_top_mul_mul_16s_16s_32_1_0_U12", "Parent" : "71"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3358.yolo_conv_top_mul_mul_16s_16s_32_1_0_U13", "Parent" : "71"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3358.yolo_conv_top_mul_mul_16s_16s_32_1_0_U14", "Parent" : "71"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3358.yolo_conv_top_mul_mul_16s_16s_32_1_0_U15", "Parent" : "71"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3358.yolo_conv_top_mul_mul_16s_16s_32_1_0_U16", "Parent" : "71"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3358.yolo_conv_top_mul_mul_16s_16s_32_1_0_U17", "Parent" : "71"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3358.yolo_conv_top_mul_mul_16s_16s_32_1_0_U18", "Parent" : "71"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3380", "Parent" : "0", "Child" : ["82", "83", "84", "85", "86", "87", "88", "89", "90"],
		"CDFG" : "window_macc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "6", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "window_0_0_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_0_1_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_0_2_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_0_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_1_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_2_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_0_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_1_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_2_val_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read110", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read211", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read312", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read413", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read514", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read615", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read716", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read817", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3380.yolo_conv_top_mul_mul_16s_16s_32_1_0_U10", "Parent" : "81"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3380.yolo_conv_top_mul_mul_16s_16s_32_1_0_U11", "Parent" : "81"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3380.yolo_conv_top_mul_mul_16s_16s_32_1_0_U12", "Parent" : "81"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3380.yolo_conv_top_mul_mul_16s_16s_32_1_0_U13", "Parent" : "81"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3380.yolo_conv_top_mul_mul_16s_16s_32_1_0_U14", "Parent" : "81"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3380.yolo_conv_top_mul_mul_16s_16s_32_1_0_U15", "Parent" : "81"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3380.yolo_conv_top_mul_mul_16s_16s_32_1_0_U16", "Parent" : "81"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3380.yolo_conv_top_mul_mul_16s_16s_32_1_0_U17", "Parent" : "81"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_window_macc_fu_3380.yolo_conv_top_mul_mul_16s_16s_32_1_0_U18", "Parent" : "81"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_out_stream_merge_fu_3402", "Parent" : "0",
		"CDFG" : "out_stream_merge",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "4",
		"VariableLatency" : "0", "ExactLatency" : "4", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "out_stream_group_0_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_0_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_1_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_1_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_2_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_2_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_3_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_3_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_4_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_4_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_5_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_5_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_6_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_6_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_7_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_7_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_8_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_8_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_9_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_9_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_10_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_10_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_11_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_11_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_12_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_12_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_13_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_13_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_14_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_14_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "out_stream_group_15_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out_stream_group_15_V_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "outStream_V_data", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "outStream_TDATA_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "outStream_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "outStream_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "outStream_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "outStream_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "outStream_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "outStream_V_dest_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "curr_input_keep_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_input_strb_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_input_user_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_input_id_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_input_dest_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "last_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fork_window_fu_3442", "Parent" : "0",
		"CDFG" : "fork_window",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "window_group_0_val_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_group_0_val_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_group_0_val_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_group_0_val_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_group_0_val_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_group_0_val_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_group_0_val_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_group_0_val_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_group_0_val_16", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_6ns_16s_22_1_1_U67", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_6ns_16s_22_1_1_U68", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_6ns_16s_22_1_1_U69", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_6ns_16s_22_1_1_U70", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_6ns_16s_22_1_1_U71", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_6ns_16s_22_1_1_U72", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_6ns_16s_22_1_1_U73", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_6ns_16s_22_1_1_U74", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_6ns_16s_22_1_1_U75", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_6ns_16s_22_1_1_U76", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_6ns_16s_22_1_1_U77", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_6ns_16s_22_1_1_U78", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_6ns_16s_22_1_1_U79", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_6ns_16s_22_1_1_U80", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_6ns_16s_22_1_1_U81", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yolo_conv_top_mul_mul_6ns_16s_22_1_1_U82", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_0_s_fifo_U", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_1_s_fifo_U", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_2_s_fifo_U", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_3_s_fifo_U", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_4_s_fifo_U", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_5_s_fifo_U", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_6_s_fifo_U", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_7_s_fifo_U", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_8_s_fifo_U", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_9_s_fifo_U", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_10_fifo_U", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_11_fifo_U", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_12_fifo_U", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_13_fifo_U", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_14_fifo_U", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_group_15_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	yolo_conv_top {
		inStream_V_data {Type I LastRead 6 FirstWrite -1}
		inStream_V_keep_V {Type I LastRead 6 FirstWrite -1}
		inStream_V_strb_V {Type I LastRead 6 FirstWrite -1}
		inStream_V_user_V {Type I LastRead 6 FirstWrite -1}
		inStream_V_last_V {Type I LastRead 6 FirstWrite -1}
		inStream_V_id_V {Type I LastRead 6 FirstWrite -1}
		inStream_V_dest_V {Type I LastRead 6 FirstWrite -1}
		outStream_V_data {Type O LastRead -1 FirstWrite 1}
		outStream_V_keep_V {Type O LastRead -1 FirstWrite 1}
		outStream_V_strb_V {Type O LastRead -1 FirstWrite 1}
		outStream_V_user_V {Type O LastRead -1 FirstWrite 1}
		outStream_V_last_V {Type O LastRead -1 FirstWrite 1}
		outStream_V_id_V {Type O LastRead -1 FirstWrite 1}
		outStream_V_dest_V {Type O LastRead -1 FirstWrite 1}}
	window_macc {
		window_0_0_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_0_1_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_0_2_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_1_0_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_1_1_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_1_2_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_2_0_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_2_1_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_2_2_val_V_r {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read110 {Type I LastRead 0 FirstWrite -1}
		p_read211 {Type I LastRead 0 FirstWrite -1}
		p_read312 {Type I LastRead 0 FirstWrite -1}
		p_read413 {Type I LastRead 0 FirstWrite -1}
		p_read514 {Type I LastRead 0 FirstWrite -1}
		p_read615 {Type I LastRead 0 FirstWrite -1}
		p_read716 {Type I LastRead 0 FirstWrite -1}
		p_read817 {Type I LastRead 0 FirstWrite -1}}
	window_macc {
		window_0_0_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_0_1_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_0_2_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_1_0_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_1_1_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_1_2_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_2_0_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_2_1_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_2_2_val_V_r {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read110 {Type I LastRead 0 FirstWrite -1}
		p_read211 {Type I LastRead 0 FirstWrite -1}
		p_read312 {Type I LastRead 0 FirstWrite -1}
		p_read413 {Type I LastRead 0 FirstWrite -1}
		p_read514 {Type I LastRead 0 FirstWrite -1}
		p_read615 {Type I LastRead 0 FirstWrite -1}
		p_read716 {Type I LastRead 0 FirstWrite -1}
		p_read817 {Type I LastRead 0 FirstWrite -1}}
	window_macc {
		window_0_0_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_0_1_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_0_2_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_1_0_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_1_1_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_1_2_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_2_0_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_2_1_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_2_2_val_V_r {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read110 {Type I LastRead 0 FirstWrite -1}
		p_read211 {Type I LastRead 0 FirstWrite -1}
		p_read312 {Type I LastRead 0 FirstWrite -1}
		p_read413 {Type I LastRead 0 FirstWrite -1}
		p_read514 {Type I LastRead 0 FirstWrite -1}
		p_read615 {Type I LastRead 0 FirstWrite -1}
		p_read716 {Type I LastRead 0 FirstWrite -1}
		p_read817 {Type I LastRead 0 FirstWrite -1}}
	window_macc {
		window_0_0_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_0_1_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_0_2_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_1_0_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_1_1_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_1_2_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_2_0_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_2_1_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_2_2_val_V_r {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read110 {Type I LastRead 0 FirstWrite -1}
		p_read211 {Type I LastRead 0 FirstWrite -1}
		p_read312 {Type I LastRead 0 FirstWrite -1}
		p_read413 {Type I LastRead 0 FirstWrite -1}
		p_read514 {Type I LastRead 0 FirstWrite -1}
		p_read615 {Type I LastRead 0 FirstWrite -1}
		p_read716 {Type I LastRead 0 FirstWrite -1}
		p_read817 {Type I LastRead 0 FirstWrite -1}}
	window_macc {
		window_0_0_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_0_1_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_0_2_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_1_0_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_1_1_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_1_2_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_2_0_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_2_1_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_2_2_val_V_r {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read110 {Type I LastRead 0 FirstWrite -1}
		p_read211 {Type I LastRead 0 FirstWrite -1}
		p_read312 {Type I LastRead 0 FirstWrite -1}
		p_read413 {Type I LastRead 0 FirstWrite -1}
		p_read514 {Type I LastRead 0 FirstWrite -1}
		p_read615 {Type I LastRead 0 FirstWrite -1}
		p_read716 {Type I LastRead 0 FirstWrite -1}
		p_read817 {Type I LastRead 0 FirstWrite -1}}
	window_macc {
		window_0_0_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_0_1_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_0_2_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_1_0_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_1_1_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_1_2_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_2_0_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_2_1_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_2_2_val_V_r {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read110 {Type I LastRead 0 FirstWrite -1}
		p_read211 {Type I LastRead 0 FirstWrite -1}
		p_read312 {Type I LastRead 0 FirstWrite -1}
		p_read413 {Type I LastRead 0 FirstWrite -1}
		p_read514 {Type I LastRead 0 FirstWrite -1}
		p_read615 {Type I LastRead 0 FirstWrite -1}
		p_read716 {Type I LastRead 0 FirstWrite -1}
		p_read817 {Type I LastRead 0 FirstWrite -1}}
	window_macc {
		window_0_0_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_0_1_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_0_2_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_1_0_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_1_1_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_1_2_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_2_0_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_2_1_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_2_2_val_V_r {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read110 {Type I LastRead 0 FirstWrite -1}
		p_read211 {Type I LastRead 0 FirstWrite -1}
		p_read312 {Type I LastRead 0 FirstWrite -1}
		p_read413 {Type I LastRead 0 FirstWrite -1}
		p_read514 {Type I LastRead 0 FirstWrite -1}
		p_read615 {Type I LastRead 0 FirstWrite -1}
		p_read716 {Type I LastRead 0 FirstWrite -1}
		p_read817 {Type I LastRead 0 FirstWrite -1}}
	window_macc {
		window_0_0_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_0_1_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_0_2_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_1_0_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_1_1_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_1_2_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_2_0_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_2_1_val_V_r {Type I LastRead 0 FirstWrite -1}
		window_2_2_val_V_r {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read110 {Type I LastRead 0 FirstWrite -1}
		p_read211 {Type I LastRead 0 FirstWrite -1}
		p_read312 {Type I LastRead 0 FirstWrite -1}
		p_read413 {Type I LastRead 0 FirstWrite -1}
		p_read514 {Type I LastRead 0 FirstWrite -1}
		p_read615 {Type I LastRead 0 FirstWrite -1}
		p_read716 {Type I LastRead 0 FirstWrite -1}
		p_read817 {Type I LastRead 0 FirstWrite -1}}
	out_stream_merge {
		out_stream_group_0_V_V {Type I LastRead 1 FirstWrite -1}
		out_stream_group_1_V_V {Type I LastRead 1 FirstWrite -1}
		out_stream_group_2_V_V {Type I LastRead 1 FirstWrite -1}
		out_stream_group_3_V_V {Type I LastRead 1 FirstWrite -1}
		out_stream_group_4_V_V {Type I LastRead 2 FirstWrite -1}
		out_stream_group_5_V_V {Type I LastRead 1 FirstWrite -1}
		out_stream_group_6_V_V {Type I LastRead 1 FirstWrite -1}
		out_stream_group_7_V_V {Type I LastRead 1 FirstWrite -1}
		out_stream_group_8_V_V {Type I LastRead 3 FirstWrite -1}
		out_stream_group_9_V_V {Type I LastRead 2 FirstWrite -1}
		out_stream_group_10_V_V {Type I LastRead 2 FirstWrite -1}
		out_stream_group_11_V_V {Type I LastRead 2 FirstWrite -1}
		out_stream_group_12_V_V {Type I LastRead 4 FirstWrite -1}
		out_stream_group_13_V_V {Type I LastRead 3 FirstWrite -1}
		out_stream_group_14_V_V {Type I LastRead 3 FirstWrite -1}
		out_stream_group_15_V_V {Type I LastRead 3 FirstWrite -1}
		outStream_V_data {Type O LastRead -1 FirstWrite 1}
		outStream_V_keep_V {Type O LastRead -1 FirstWrite 1}
		outStream_V_strb_V {Type O LastRead -1 FirstWrite 1}
		outStream_V_user_V {Type O LastRead -1 FirstWrite 1}
		outStream_V_last_V {Type O LastRead -1 FirstWrite 1}
		outStream_V_id_V {Type O LastRead -1 FirstWrite 1}
		outStream_V_dest_V {Type O LastRead -1 FirstWrite 1}
		curr_input_keep_V {Type I LastRead 1 FirstWrite -1}
		curr_input_strb_V {Type I LastRead 1 FirstWrite -1}
		curr_input_user_V {Type I LastRead 1 FirstWrite -1}
		curr_input_id_V {Type I LastRead 1 FirstWrite -1}
		curr_input_dest_V {Type I LastRead 1 FirstWrite -1}
		last_V {Type I LastRead 3 FirstWrite -1}}
	fork_window {
		window_group_0_val_s {Type I LastRead 0 FirstWrite -1}
		window_group_0_val_9 {Type I LastRead 0 FirstWrite -1}
		window_group_0_val_10 {Type I LastRead 0 FirstWrite -1}
		window_group_0_val_11 {Type I LastRead 0 FirstWrite -1}
		window_group_0_val_12 {Type I LastRead 0 FirstWrite -1}
		window_group_0_val_13 {Type I LastRead 0 FirstWrite -1}
		window_group_0_val_14 {Type I LastRead 0 FirstWrite -1}
		window_group_0_val_15 {Type I LastRead 0 FirstWrite -1}
		window_group_0_val_16 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1051029", "Max" : "1051029"}
	, {"Name" : "Interval", "Min" : "1051030", "Max" : "1051030"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	inStream_V_data { axis {  { inStream_TDATA in_data 0 64 } } }
	inStream_V_keep_V { axis {  { inStream_TKEEP in_data 0 8 } } }
	inStream_V_strb_V { axis {  { inStream_TSTRB in_data 0 8 } } }
	inStream_V_user_V { axis {  { inStream_TUSER in_data 0 2 } } }
	inStream_V_last_V { axis {  { inStream_TLAST in_data 0 1 } } }
	inStream_V_id_V { axis {  { inStream_TID in_data 0 5 } } }
	inStream_V_dest_V { axis {  { inStream_TVALID in_vld 0 1 }  { inStream_TREADY in_acc 1 1 }  { inStream_TDEST in_data 0 6 } } }
	outStream_V_data { axis {  { outStream_TDATA out_data 1 64 } } }
	outStream_V_keep_V { axis {  { outStream_TKEEP out_data 1 8 } } }
	outStream_V_strb_V { axis {  { outStream_TSTRB out_data 1 8 } } }
	outStream_V_user_V { axis {  { outStream_TUSER out_data 1 2 } } }
	outStream_V_last_V { axis {  { outStream_TLAST out_data 1 1 } } }
	outStream_V_id_V { axis {  { outStream_TID out_data 1 5 } } }
	outStream_V_dest_V { axis {  { outStream_TVALID out_vld 1 1 }  { outStream_TREADY out_acc 0 1 }  { outStream_TDEST out_data 1 6 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
