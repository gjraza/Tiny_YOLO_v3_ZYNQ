
set TopModule "yolo_conv_top"
set ClockPeriod 10
set ClockList ap_clk
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 1
set FftOrFirFlag 0
set NbRWValue 1
set intNbAccess 1
set NewDSPMapping 1
set HasDSPModule 1
set ResetLevelFlag 0
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xc7z020:-clg484:-1
set SourceFiles {sc {} c ../src/yolo_conv.cpp}
set SourceFlags {sc {} c {{}}}
set DirectiveFile /home/xavier/MSc_Project/hls/yolo_conv_hls_2019/yolo_conv_2019/solution1/solution1.directive
set TBFiles {verilog {../tb/yolo_conv_tb.cpp ../tb/layer_output_sdk.dat ../tb/layer_input.dat} bc {../tb/yolo_conv_tb.cpp ../tb/layer_output_sdk.dat ../tb/layer_input.dat} vhdl {../tb/yolo_conv_tb.cpp ../tb/layer_output_sdk.dat ../tb/layer_input.dat} sc {../tb/yolo_conv_tb.cpp ../tb/layer_output_sdk.dat ../tb/layer_input.dat} cas {../tb/yolo_conv_tb.cpp ../tb/layer_output_sdk.dat ../tb/layer_input.dat} c {}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set TBInstNames {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile ../vivado_hls.app
set ApsFile solution1.aps
set AvePath ../..
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 1
set PlatformFiles {{DefaultPlatform {xilinx/zynq/zynq xilinx/zynq/zynq_fpv6}}}
set HPFPO 0
