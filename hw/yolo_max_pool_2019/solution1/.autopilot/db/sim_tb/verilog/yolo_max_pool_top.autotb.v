// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      yolo_max_pool_top
`define AUTOTB_DUT_INST AESL_inst_yolo_max_pool_top
`define AUTOTB_TOP      apatb_yolo_max_pool_top_top
`define AUTOTB_LAT_RESULT_FILE "yolo_max_pool_top.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "yolo_max_pool_top.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_yolo_max_pool_top_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_DEPTH_inStream_V_data 1
`define AESL_DEPTH_inStream_V_keep_V 1
`define AESL_DEPTH_inStream_V_strb_V 1
`define AESL_DEPTH_inStream_V_user_V 1
`define AESL_DEPTH_inStream_V_last_V 1
`define AESL_DEPTH_inStream_V_id_V 1
`define AESL_DEPTH_inStream_V_dest_V 1
`define AESL_DEPTH_outStream_V_data 1
`define AESL_DEPTH_outStream_V_keep_V 1
`define AESL_DEPTH_outStream_V_strb_V 1
`define AESL_DEPTH_outStream_V_user_V 1
`define AESL_DEPTH_outStream_V_last_V 1
`define AESL_DEPTH_outStream_V_id_V 1
`define AESL_DEPTH_outStream_V_dest_V 1
`define AUTOTB_TVIN_inStream_V_data  "./c.yolo_max_pool_top.autotvin_inStream_V_data.dat"
`define AUTOTB_TVIN_inStream_V_keep_V  "./c.yolo_max_pool_top.autotvin_inStream_V_keep_V.dat"
`define AUTOTB_TVIN_inStream_V_strb_V  "./c.yolo_max_pool_top.autotvin_inStream_V_strb_V.dat"
`define AUTOTB_TVIN_inStream_V_user_V  "./c.yolo_max_pool_top.autotvin_inStream_V_user_V.dat"
`define AUTOTB_TVIN_inStream_V_last_V  "./c.yolo_max_pool_top.autotvin_inStream_V_last_V.dat"
`define AUTOTB_TVIN_inStream_V_id_V  "./c.yolo_max_pool_top.autotvin_inStream_V_id_V.dat"
`define AUTOTB_TVIN_inStream_V_dest_V  "./c.yolo_max_pool_top.autotvin_inStream_V_dest_V.dat"
`define AUTOTB_TVIN_outStream_V_data  "./c.yolo_max_pool_top.autotvin_outStream_V_data.dat"
`define AUTOTB_TVIN_outStream_V_keep_V  "./c.yolo_max_pool_top.autotvin_outStream_V_keep_V.dat"
`define AUTOTB_TVIN_outStream_V_strb_V  "./c.yolo_max_pool_top.autotvin_outStream_V_strb_V.dat"
`define AUTOTB_TVIN_outStream_V_user_V  "./c.yolo_max_pool_top.autotvin_outStream_V_user_V.dat"
`define AUTOTB_TVIN_outStream_V_last_V  "./c.yolo_max_pool_top.autotvin_outStream_V_last_V.dat"
`define AUTOTB_TVIN_outStream_V_id_V  "./c.yolo_max_pool_top.autotvin_outStream_V_id_V.dat"
`define AUTOTB_TVIN_outStream_V_dest_V  "./c.yolo_max_pool_top.autotvin_outStream_V_dest_V.dat"
`define AUTOTB_TVIN_inStream_V_data_out_wrapc  "./rtl.yolo_max_pool_top.autotvin_inStream_V_data.dat"
`define AUTOTB_TVIN_inStream_V_keep_V_out_wrapc  "./rtl.yolo_max_pool_top.autotvin_inStream_V_keep_V.dat"
`define AUTOTB_TVIN_inStream_V_strb_V_out_wrapc  "./rtl.yolo_max_pool_top.autotvin_inStream_V_strb_V.dat"
`define AUTOTB_TVIN_inStream_V_user_V_out_wrapc  "./rtl.yolo_max_pool_top.autotvin_inStream_V_user_V.dat"
`define AUTOTB_TVIN_inStream_V_last_V_out_wrapc  "./rtl.yolo_max_pool_top.autotvin_inStream_V_last_V.dat"
`define AUTOTB_TVIN_inStream_V_id_V_out_wrapc  "./rtl.yolo_max_pool_top.autotvin_inStream_V_id_V.dat"
`define AUTOTB_TVIN_inStream_V_dest_V_out_wrapc  "./rtl.yolo_max_pool_top.autotvin_inStream_V_dest_V.dat"
`define AUTOTB_TVIN_outStream_V_data_out_wrapc  "./rtl.yolo_max_pool_top.autotvin_outStream_V_data.dat"
`define AUTOTB_TVIN_outStream_V_keep_V_out_wrapc  "./rtl.yolo_max_pool_top.autotvin_outStream_V_keep_V.dat"
`define AUTOTB_TVIN_outStream_V_strb_V_out_wrapc  "./rtl.yolo_max_pool_top.autotvin_outStream_V_strb_V.dat"
`define AUTOTB_TVIN_outStream_V_user_V_out_wrapc  "./rtl.yolo_max_pool_top.autotvin_outStream_V_user_V.dat"
`define AUTOTB_TVIN_outStream_V_last_V_out_wrapc  "./rtl.yolo_max_pool_top.autotvin_outStream_V_last_V.dat"
`define AUTOTB_TVIN_outStream_V_id_V_out_wrapc  "./rtl.yolo_max_pool_top.autotvin_outStream_V_id_V.dat"
`define AUTOTB_TVIN_outStream_V_dest_V_out_wrapc  "./rtl.yolo_max_pool_top.autotvin_outStream_V_dest_V.dat"
`define AUTOTB_TVOUT_outStream_V_data  "./c.yolo_max_pool_top.autotvout_outStream_V_data.dat"
`define AUTOTB_TVOUT_outStream_V_keep_V  "./c.yolo_max_pool_top.autotvout_outStream_V_keep_V.dat"
`define AUTOTB_TVOUT_outStream_V_strb_V  "./c.yolo_max_pool_top.autotvout_outStream_V_strb_V.dat"
`define AUTOTB_TVOUT_outStream_V_user_V  "./c.yolo_max_pool_top.autotvout_outStream_V_user_V.dat"
`define AUTOTB_TVOUT_outStream_V_last_V  "./c.yolo_max_pool_top.autotvout_outStream_V_last_V.dat"
`define AUTOTB_TVOUT_outStream_V_id_V  "./c.yolo_max_pool_top.autotvout_outStream_V_id_V.dat"
`define AUTOTB_TVOUT_outStream_V_dest_V  "./c.yolo_max_pool_top.autotvout_outStream_V_dest_V.dat"
`define AUTOTB_TVOUT_outStream_V_data_out_wrapc  "./impl_rtl.yolo_max_pool_top.autotvout_outStream_V_data.dat"
`define AUTOTB_TVOUT_outStream_V_keep_V_out_wrapc  "./impl_rtl.yolo_max_pool_top.autotvout_outStream_V_keep_V.dat"
`define AUTOTB_TVOUT_outStream_V_strb_V_out_wrapc  "./impl_rtl.yolo_max_pool_top.autotvout_outStream_V_strb_V.dat"
`define AUTOTB_TVOUT_outStream_V_user_V_out_wrapc  "./impl_rtl.yolo_max_pool_top.autotvout_outStream_V_user_V.dat"
`define AUTOTB_TVOUT_outStream_V_last_V_out_wrapc  "./impl_rtl.yolo_max_pool_top.autotvout_outStream_V_last_V.dat"
`define AUTOTB_TVOUT_outStream_V_id_V_out_wrapc  "./impl_rtl.yolo_max_pool_top.autotvout_outStream_V_id_V.dat"
`define AUTOTB_TVOUT_outStream_V_dest_V_out_wrapc  "./impl_rtl.yolo_max_pool_top.autotvout_outStream_V_dest_V.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 5537822;
parameter LENGTH_inStream_V_data = 2768896;
parameter LENGTH_inStream_V_keep_V = 2768896;
parameter LENGTH_inStream_V_strb_V = 2768896;
parameter LENGTH_inStream_V_user_V = 2768896;
parameter LENGTH_inStream_V_last_V = 2768896;
parameter LENGTH_inStream_V_id_V = 2768896;
parameter LENGTH_inStream_V_dest_V = 2768896;
parameter LENGTH_outStream_V_data = 692224;
parameter LENGTH_outStream_V_keep_V = 692224;
parameter LENGTH_outStream_V_strb_V = 692224;
parameter LENGTH_outStream_V_user_V = 692224;
parameter LENGTH_outStream_V_last_V = 692224;
parameter LENGTH_outStream_V_id_V = 692224;
parameter LENGTH_outStream_V_dest_V = 692224;

task read_token;
    input integer fp;
    output reg [199 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

task post_check;
    input integer fp1;
    input integer fp2;
    reg [199 : 0] token1;
    reg [199 : 0] token2;
    reg [199 : 0] golden;
    reg [199 : 0] result;
    integer ret;
    begin
        read_token(fp1, token1);
        read_token(fp2, token2);
        if (token1 != "[[[runtime]]]" || token2 != "[[[runtime]]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
            $finish;
        end
        read_token(fp1, token1);
        read_token(fp2, token2);
        while (token1 != "[[[/runtime]]]" && token2 != "[[[/runtime]]]") begin
            if (token1 != "[[transaction]]" || token2 != "[[transaction]]") begin
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
            end
            read_token(fp1, token1);  // skip transaction number
            read_token(fp2, token2);  // skip transaction number
              read_token(fp1, token1);
              read_token(fp2, token2);
            while(token1 != "[[/transaction]]" && token2 != "[[/transaction]]") begin
                ret = $sscanf(token1, "0x%x", golden);
                  if (ret != 1) begin
                      $display("Failed to parse token!");
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                  end
                ret = $sscanf(token2, "0x%x", result);
                  if (ret != 1) begin
                      $display("Failed to parse token!");
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                  end
                if(golden != result) begin
                      $display("%x (expected) vs. %x (actual) - mismatch", golden, result);
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                end
                  read_token(fp1, token1);
                  read_token(fp2, token2);
            end
              read_token(fp1, token1);
              read_token(fp2, token2);
        end
    end
endtask

reg AESL_clock;
reg rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire [3 : 0] AXILiteS_AWADDR;
wire  AXILiteS_AWVALID;
wire  AXILiteS_AWREADY;
wire  AXILiteS_WVALID;
wire  AXILiteS_WREADY;
wire [31 : 0] AXILiteS_WDATA;
wire [3 : 0] AXILiteS_WSTRB;
wire [3 : 0] AXILiteS_ARADDR;
wire  AXILiteS_ARVALID;
wire  AXILiteS_ARREADY;
wire  AXILiteS_RVALID;
wire  AXILiteS_RREADY;
wire [31 : 0] AXILiteS_RDATA;
wire [1 : 0] AXILiteS_RRESP;
wire  AXILiteS_BVALID;
wire  AXILiteS_BREADY;
wire [1 : 0] AXILiteS_BRESP;
wire  AXILiteS_INTERRUPT;
wire [31 : 0] inStream_TDATA;
wire  inStream_TVALID;
wire  inStream_TREADY;
wire [3 : 0] inStream_TKEEP;
wire [3 : 0] inStream_TSTRB;
wire [1 : 0] inStream_TUSER;
wire [0 : 0] inStream_TLAST;
wire [4 : 0] inStream_TID;
wire [5 : 0] inStream_TDEST;
wire [31 : 0] outStream_TDATA;
wire  outStream_TVALID;
wire  outStream_TREADY;
wire [3 : 0] outStream_TKEEP;
wire [3 : 0] outStream_TSTRB;
wire [1 : 0] outStream_TUSER;
wire [0 : 0] outStream_TLAST;
wire [4 : 0] outStream_TID;
wire [5 : 0] outStream_TDEST;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;
wire AESL_slave_start;
reg AESL_slave_start_lock = 0;
wire AESL_slave_write_start_in;
wire AESL_slave_write_start_finish;
reg AESL_slave_ready;
wire AESL_slave_output_done;
wire AESL_slave_done;
reg ready_rise = 0;
reg start_rise = 0;
reg slave_start_status = 0;
reg slave_done_status = 0;
reg ap_done_lock = 0;

wire ap_clk;
wire ap_rst_n;
wire ap_rst_n_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .s_axi_AXILiteS_AWADDR(AXILiteS_AWADDR),
    .s_axi_AXILiteS_AWVALID(AXILiteS_AWVALID),
    .s_axi_AXILiteS_AWREADY(AXILiteS_AWREADY),
    .s_axi_AXILiteS_WVALID(AXILiteS_WVALID),
    .s_axi_AXILiteS_WREADY(AXILiteS_WREADY),
    .s_axi_AXILiteS_WDATA(AXILiteS_WDATA),
    .s_axi_AXILiteS_WSTRB(AXILiteS_WSTRB),
    .s_axi_AXILiteS_ARADDR(AXILiteS_ARADDR),
    .s_axi_AXILiteS_ARVALID(AXILiteS_ARVALID),
    .s_axi_AXILiteS_ARREADY(AXILiteS_ARREADY),
    .s_axi_AXILiteS_RVALID(AXILiteS_RVALID),
    .s_axi_AXILiteS_RREADY(AXILiteS_RREADY),
    .s_axi_AXILiteS_RDATA(AXILiteS_RDATA),
    .s_axi_AXILiteS_RRESP(AXILiteS_RRESP),
    .s_axi_AXILiteS_BVALID(AXILiteS_BVALID),
    .s_axi_AXILiteS_BREADY(AXILiteS_BREADY),
    .s_axi_AXILiteS_BRESP(AXILiteS_BRESP),
    .interrupt(AXILiteS_INTERRUPT),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .inStream_TDATA(inStream_TDATA),
    .inStream_TVALID(inStream_TVALID),
    .inStream_TREADY(inStream_TREADY),
    .inStream_TKEEP(inStream_TKEEP),
    .inStream_TSTRB(inStream_TSTRB),
    .inStream_TUSER(inStream_TUSER),
    .inStream_TLAST(inStream_TLAST),
    .inStream_TID(inStream_TID),
    .inStream_TDEST(inStream_TDEST),
    .outStream_TDATA(outStream_TDATA),
    .outStream_TVALID(outStream_TVALID),
    .outStream_TREADY(outStream_TREADY),
    .outStream_TKEEP(outStream_TKEEP),
    .outStream_TSTRB(outStream_TSTRB),
    .outStream_TUSER(outStream_TUSER),
    .outStream_TLAST(outStream_TLAST),
    .outStream_TID(outStream_TID),
    .outStream_TDEST(outStream_TDEST));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst_n = AESL_reset;
assign ap_rst_n_n = ~AESL_reset;
assign AESL_reset = rst;
assign AESL_start = start;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
  assign AESL_slave_write_start_in = slave_start_status ;
  assign AESL_slave_start = AESL_slave_write_start_finish;
  assign AESL_done = slave_done_status ;

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        slave_start_status <= 1;
    end
    else begin
        if (AESL_start == 1 ) begin
            start_rise = 1;
        end
        if (start_rise == 1 && AESL_done == 1 ) begin
            slave_start_status <= 1;
        end
        if (AESL_slave_write_start_in == 1 && AESL_done == 0) begin 
            slave_start_status <= 0;
            start_rise = 0;
        end
    end
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        AESL_slave_ready <= 0;
        ready_rise = 0;
    end
    else begin
        if (AESL_ready == 1 ) begin
            ready_rise = 1;
        end
        if (ready_rise == 1 && AESL_done_delay == 1 ) begin
            AESL_slave_ready <= 1;
        end
        if (AESL_slave_ready == 1) begin 
            AESL_slave_ready <= 0;
            ready_rise = 0;
        end
    end
end

always @ (posedge AESL_clock)
begin
    if (AESL_done == 1) begin
        slave_done_status <= 0;
    end
    else if (AESL_slave_output_done == 1 ) begin
        slave_done_status <= 1;
    end
end














reg [31:0] ap_c_n_tvin_trans_num_inStream_V_data;

reg inStream_ready_reg; // for self-sync

wire inStream_ready;
wire inStream_done;
wire [31:0] inStream_transaction;
wire axi_s_inStream_TVALID;
wire axi_s_inStream_TREADY;

AESL_axi_s_inStream AESL_AXI_S_inStream(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_inStream_TDATA(inStream_TDATA),
    .TRAN_inStream_TKEEP(inStream_TKEEP),
    .TRAN_inStream_TSTRB(inStream_TSTRB),
    .TRAN_inStream_TUSER(inStream_TUSER),
    .TRAN_inStream_TLAST(inStream_TLAST),
    .TRAN_inStream_TID(inStream_TID),
    .TRAN_inStream_TDEST(inStream_TDEST),
    .TRAN_inStream_TVALID(axi_s_inStream_TVALID),
    .TRAN_inStream_TREADY(axi_s_inStream_TREADY),
    .ready(inStream_ready),
    .done(inStream_done),
    .transaction(inStream_transaction));

assign inStream_ready = inStream_ready_reg | ready_initial;
assign inStream_done = 0;

assign inStream_TVALID = axi_s_inStream_TVALID;

assign axi_s_inStream_TREADY = inStream_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_outStream_V_data;

reg outStream_ready_reg; // for self-sync

wire outStream_ready;
wire outStream_done;
wire [31:0] outStream_transaction;
wire axi_s_outStream_TVALID;
wire axi_s_outStream_TREADY;

AESL_axi_s_outStream AESL_AXI_S_outStream(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_outStream_TDATA(outStream_TDATA),
    .TRAN_outStream_TKEEP(outStream_TKEEP),
    .TRAN_outStream_TSTRB(outStream_TSTRB),
    .TRAN_outStream_TUSER(outStream_TUSER),
    .TRAN_outStream_TLAST(outStream_TLAST),
    .TRAN_outStream_TID(outStream_TID),
    .TRAN_outStream_TDEST(outStream_TDEST),
    .TRAN_outStream_TVALID(axi_s_outStream_TVALID),
    .TRAN_outStream_TREADY(axi_s_outStream_TREADY),
    .ready(outStream_ready),
    .done(outStream_done),
    .transaction(outStream_transaction));

assign outStream_ready = 0;
assign outStream_done = AESL_done;

assign axi_s_outStream_TVALID = outStream_TVALID;

reg reg_outStream_TREADY;
initial begin : gen_reg_outStream_TREADY_process
    integer proc_rand;
    reg_outStream_TREADY = axi_s_outStream_TREADY;
    while(1)
    begin
        @(axi_s_outStream_TREADY);
        reg_outStream_TREADY = axi_s_outStream_TREADY;
    end
end


assign outStream_TREADY = reg_outStream_TREADY;

AESL_axi_slave_AXILiteS AESL_AXI_SLAVE_AXILiteS(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_s_axi_AXILiteS_AWADDR (AXILiteS_AWADDR),
    .TRAN_s_axi_AXILiteS_AWVALID (AXILiteS_AWVALID),
    .TRAN_s_axi_AXILiteS_AWREADY (AXILiteS_AWREADY),
    .TRAN_s_axi_AXILiteS_WVALID (AXILiteS_WVALID),
    .TRAN_s_axi_AXILiteS_WREADY (AXILiteS_WREADY),
    .TRAN_s_axi_AXILiteS_WDATA (AXILiteS_WDATA),
    .TRAN_s_axi_AXILiteS_WSTRB (AXILiteS_WSTRB),
    .TRAN_s_axi_AXILiteS_ARADDR (AXILiteS_ARADDR),
    .TRAN_s_axi_AXILiteS_ARVALID (AXILiteS_ARVALID),
    .TRAN_s_axi_AXILiteS_ARREADY (AXILiteS_ARREADY),
    .TRAN_s_axi_AXILiteS_RVALID (AXILiteS_RVALID),
    .TRAN_s_axi_AXILiteS_RREADY (AXILiteS_RREADY),
    .TRAN_s_axi_AXILiteS_RDATA (AXILiteS_RDATA),
    .TRAN_s_axi_AXILiteS_RRESP (AXILiteS_RRESP),
    .TRAN_s_axi_AXILiteS_BVALID (AXILiteS_BVALID),
    .TRAN_s_axi_AXILiteS_BREADY (AXILiteS_BREADY),
    .TRAN_s_axi_AXILiteS_BRESP (AXILiteS_BRESP),
    .TRAN_AXILiteS_interrupt (AXILiteS_INTERRUPT),
    .TRAN_AXILiteS_ready_out (AESL_ready),
    .TRAN_AXILiteS_ready_in (AESL_slave_ready),
    .TRAN_AXILiteS_done_out (AESL_slave_output_done),
    .TRAN_AXILiteS_idle_out (AESL_idle),
    .TRAN_AXILiteS_write_start_in     (AESL_slave_write_start_in),
    .TRAN_AXILiteS_write_start_finish (AESL_slave_write_start_finish),
    .TRAN_AXILiteS_transaction_done_in (AESL_done_delay),
    .TRAN_AXILiteS_start_in  (AESL_slave_start)
);

initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 1);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 1);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (~AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        integer fp1;
        integer fp2;
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
    fp1 = $fopen("./rtl.yolo_max_pool_top.autotvout_outStream_V_data.dat", "r");
    fp2 = $fopen("./impl_rtl.yolo_max_pool_top.autotvout_outStream_V_data.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.yolo_max_pool_top.autotvout_outStream_V_data.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.yolo_max_pool_top.autotvout_outStream_V_data.dat\"!");
    else begin
        $display("Comparing rtl.yolo_max_pool_top.autotvout_outStream_V_data.dat with impl_rtl.yolo_max_pool_top.autotvout_outStream_V_data.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.yolo_max_pool_top.autotvout_outStream_V_keep_V.dat", "r");
    fp2 = $fopen("./impl_rtl.yolo_max_pool_top.autotvout_outStream_V_keep_V.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.yolo_max_pool_top.autotvout_outStream_V_keep_V.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.yolo_max_pool_top.autotvout_outStream_V_keep_V.dat\"!");
    else begin
        $display("Comparing rtl.yolo_max_pool_top.autotvout_outStream_V_keep_V.dat with impl_rtl.yolo_max_pool_top.autotvout_outStream_V_keep_V.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.yolo_max_pool_top.autotvout_outStream_V_strb_V.dat", "r");
    fp2 = $fopen("./impl_rtl.yolo_max_pool_top.autotvout_outStream_V_strb_V.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.yolo_max_pool_top.autotvout_outStream_V_strb_V.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.yolo_max_pool_top.autotvout_outStream_V_strb_V.dat\"!");
    else begin
        $display("Comparing rtl.yolo_max_pool_top.autotvout_outStream_V_strb_V.dat with impl_rtl.yolo_max_pool_top.autotvout_outStream_V_strb_V.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.yolo_max_pool_top.autotvout_outStream_V_user_V.dat", "r");
    fp2 = $fopen("./impl_rtl.yolo_max_pool_top.autotvout_outStream_V_user_V.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.yolo_max_pool_top.autotvout_outStream_V_user_V.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.yolo_max_pool_top.autotvout_outStream_V_user_V.dat\"!");
    else begin
        $display("Comparing rtl.yolo_max_pool_top.autotvout_outStream_V_user_V.dat with impl_rtl.yolo_max_pool_top.autotvout_outStream_V_user_V.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.yolo_max_pool_top.autotvout_outStream_V_last_V.dat", "r");
    fp2 = $fopen("./impl_rtl.yolo_max_pool_top.autotvout_outStream_V_last_V.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.yolo_max_pool_top.autotvout_outStream_V_last_V.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.yolo_max_pool_top.autotvout_outStream_V_last_V.dat\"!");
    else begin
        $display("Comparing rtl.yolo_max_pool_top.autotvout_outStream_V_last_V.dat with impl_rtl.yolo_max_pool_top.autotvout_outStream_V_last_V.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.yolo_max_pool_top.autotvout_outStream_V_id_V.dat", "r");
    fp2 = $fopen("./impl_rtl.yolo_max_pool_top.autotvout_outStream_V_id_V.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.yolo_max_pool_top.autotvout_outStream_V_id_V.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.yolo_max_pool_top.autotvout_outStream_V_id_V.dat\"!");
    else begin
        $display("Comparing rtl.yolo_max_pool_top.autotvout_outStream_V_id_V.dat with impl_rtl.yolo_max_pool_top.autotvout_outStream_V_id_V.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.yolo_max_pool_top.autotvout_outStream_V_dest_V.dat", "r");
    fp2 = $fopen("./impl_rtl.yolo_max_pool_top.autotvout_outStream_V_dest_V.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.yolo_max_pool_top.autotvout_outStream_V_dest_V.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.yolo_max_pool_top.autotvout_outStream_V_dest_V.dat\"!");
    else begin
        $display("Comparing rtl.yolo_max_pool_top.autotvout_outStream_V_dest_V.dat with impl_rtl.yolo_max_pool_top.autotvout_outStream_V_dest_V.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
        $display("Simulation Passed.");
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_inStream_V_data;
reg [31:0] size_inStream_V_data;
reg [31:0] size_inStream_V_data_backup;
reg end_inStream_V_keep_V;
reg [31:0] size_inStream_V_keep_V;
reg [31:0] size_inStream_V_keep_V_backup;
reg end_inStream_V_strb_V;
reg [31:0] size_inStream_V_strb_V;
reg [31:0] size_inStream_V_strb_V_backup;
reg end_inStream_V_user_V;
reg [31:0] size_inStream_V_user_V;
reg [31:0] size_inStream_V_user_V_backup;
reg end_inStream_V_last_V;
reg [31:0] size_inStream_V_last_V;
reg [31:0] size_inStream_V_last_V_backup;
reg end_inStream_V_id_V;
reg [31:0] size_inStream_V_id_V;
reg [31:0] size_inStream_V_id_V_backup;
reg end_inStream_V_dest_V;
reg [31:0] size_inStream_V_dest_V;
reg [31:0] size_inStream_V_dest_V_backup;
reg end_outStream_V_data;
reg [31:0] size_outStream_V_data;
reg [31:0] size_outStream_V_data_backup;
reg end_outStream_V_keep_V;
reg [31:0] size_outStream_V_keep_V;
reg [31:0] size_outStream_V_keep_V_backup;
reg end_outStream_V_strb_V;
reg [31:0] size_outStream_V_strb_V;
reg [31:0] size_outStream_V_strb_V_backup;
reg end_outStream_V_user_V;
reg [31:0] size_outStream_V_user_V;
reg [31:0] size_outStream_V_user_V_backup;
reg end_outStream_V_last_V;
reg [31:0] size_outStream_V_last_V;
reg [31:0] size_outStream_V_last_V_backup;
reg end_outStream_V_id_V;
reg [31:0] size_outStream_V_id_V;
reg [31:0] size_outStream_V_id_V_backup;
reg end_outStream_V_dest_V;
reg [31:0] size_outStream_V_dest_V;
reg [31:0] size_outStream_V_dest_V_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 0;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    rst = 1;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 1);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt >= AUTOTB_TRANSACTION_NUM) begin
            // keep pushing garbage in
            #0 start = 1;
        end
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end
    
    initial begin : proc_gen_axis_internal_ready_inStream
        inStream_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_inStream_V_data or inStream_transaction);
            if (ap_c_n_tvin_trans_num_inStream_V_data > inStream_transaction) begin
                inStream_ready_reg = 1;
            end else begin
                inStream_ready_reg = 0;
            end
        end
    end
    
    `define STREAM_SIZE_IN_inStream_V_data "./stream_size_in_inStream_V_data.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_inStream_V_data
        integer fp_inStream_V_data;
        reg [127:0] token_inStream_V_data;
        integer ret;
        
        ap_c_n_tvin_trans_num_inStream_V_data = 0;
        end_inStream_V_data = 0;
        wait (AESL_reset === 1);
        
        fp_inStream_V_data = $fopen(`STREAM_SIZE_IN_inStream_V_data, "r");
        if(fp_inStream_V_data == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_inStream_V_data);
            $finish;
        end
        read_token(fp_inStream_V_data, token_inStream_V_data); // should be [[[runtime]]]
        if (token_inStream_V_data != "[[[runtime]]]") begin
            $display("ERROR: token_inStream_V_data != \"[[[runtime]]]\"");
            $finish;
        end
        size_inStream_V_data = 0;
        size_inStream_V_data_backup = 0;
        while (size_inStream_V_data == 0 && end_inStream_V_data == 0) begin
            ap_c_n_tvin_trans_num_inStream_V_data = ap_c_n_tvin_trans_num_inStream_V_data + 1;
            read_token(fp_inStream_V_data, token_inStream_V_data); // should be [[transaction]] or [[[/runtime]]]
            if (token_inStream_V_data == "[[transaction]]") begin
                read_token(fp_inStream_V_data, token_inStream_V_data); // should be transaction number
                read_token(fp_inStream_V_data, token_inStream_V_data); // should be size for hls::stream
                ret = $sscanf(token_inStream_V_data, "%d", size_inStream_V_data);
                if (size_inStream_V_data > 0) begin
                    size_inStream_V_data_backup = size_inStream_V_data;
                end
                read_token(fp_inStream_V_data, token_inStream_V_data); // should be [[/transaction]]
            end else if (token_inStream_V_data == "[[[/runtime]]]") begin
                $fclose(fp_inStream_V_data);
                end_inStream_V_data = 1;
            end else begin
                $display("ERROR: unknown token_inStream_V_data");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_inStream_V_data == 0) begin
                if ((inStream_TREADY & inStream_TVALID) == 1) begin
                    if (size_inStream_V_data > 0) begin
                        size_inStream_V_data = size_inStream_V_data - 1;
                        while (size_inStream_V_data == 0 && end_inStream_V_data == 0) begin
                            ap_c_n_tvin_trans_num_inStream_V_data = ap_c_n_tvin_trans_num_inStream_V_data + 1;
                            read_token(fp_inStream_V_data, token_inStream_V_data); // should be [[transaction]] or [[[/runtime]]]
                            if (token_inStream_V_data == "[[transaction]]") begin
                                read_token(fp_inStream_V_data, token_inStream_V_data); // should be transaction number
                                read_token(fp_inStream_V_data, token_inStream_V_data); // should be size for hls::stream
                                ret = $sscanf(token_inStream_V_data, "%d", size_inStream_V_data);
                                if (size_inStream_V_data > 0) begin
                                    size_inStream_V_data_backup = size_inStream_V_data;
                                end
                                read_token(fp_inStream_V_data, token_inStream_V_data); // should be [[/transaction]]
                            end else if (token_inStream_V_data == "[[[/runtime]]]") begin
                                size_inStream_V_data = size_inStream_V_data_backup;
                                $fclose(fp_inStream_V_data);
                                end_inStream_V_data = 1;
                            end else begin
                                $display("ERROR: unknown token_inStream_V_data");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((inStream_TREADY & inStream_TVALID) == 1) begin
                    if (size_inStream_V_data > 0) begin
                        size_inStream_V_data = size_inStream_V_data - 1;
                        if (size_inStream_V_data == 0) begin
                            ap_c_n_tvin_trans_num_inStream_V_data = ap_c_n_tvin_trans_num_inStream_V_data + 1;
                            size_inStream_V_data = size_inStream_V_data_backup;
                        end
                    end
                end
            end
        end
    end
    

reg dump_tvout_finish_outStream_V_data;

initial begin : dump_tvout_runtime_sign_outStream_V_data
    integer fp;
    dump_tvout_finish_outStream_V_data = 0;
    fp = $fopen(`AUTOTB_TVOUT_outStream_V_data_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_outStream_V_data_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_outStream_V_data_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_outStream_V_data_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_outStream_V_data = 1;
end


reg dump_tvout_finish_outStream_V_keep_V;

initial begin : dump_tvout_runtime_sign_outStream_V_keep_V
    integer fp;
    dump_tvout_finish_outStream_V_keep_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_outStream_V_keep_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_outStream_V_keep_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_outStream_V_keep_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_outStream_V_keep_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_outStream_V_keep_V = 1;
end


reg dump_tvout_finish_outStream_V_strb_V;

initial begin : dump_tvout_runtime_sign_outStream_V_strb_V
    integer fp;
    dump_tvout_finish_outStream_V_strb_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_outStream_V_strb_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_outStream_V_strb_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_outStream_V_strb_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_outStream_V_strb_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_outStream_V_strb_V = 1;
end


reg dump_tvout_finish_outStream_V_user_V;

initial begin : dump_tvout_runtime_sign_outStream_V_user_V
    integer fp;
    dump_tvout_finish_outStream_V_user_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_outStream_V_user_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_outStream_V_user_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_outStream_V_user_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_outStream_V_user_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_outStream_V_user_V = 1;
end


reg dump_tvout_finish_outStream_V_last_V;

initial begin : dump_tvout_runtime_sign_outStream_V_last_V
    integer fp;
    dump_tvout_finish_outStream_V_last_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_outStream_V_last_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_outStream_V_last_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_outStream_V_last_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_outStream_V_last_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_outStream_V_last_V = 1;
end


reg dump_tvout_finish_outStream_V_id_V;

initial begin : dump_tvout_runtime_sign_outStream_V_id_V
    integer fp;
    dump_tvout_finish_outStream_V_id_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_outStream_V_id_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_outStream_V_id_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_outStream_V_id_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_outStream_V_id_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_outStream_V_id_V = 1;
end


reg dump_tvout_finish_outStream_V_dest_V;

initial begin : dump_tvout_runtime_sign_outStream_V_dest_V
    integer fp;
    dump_tvout_finish_outStream_V_dest_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_outStream_V_dest_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_outStream_V_dest_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_outStream_V_dest_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_outStream_V_dest_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_outStream_V_dest_V = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    clk_cnt <= clk_cnt + 1;
    AESL_ready_p1 <= AESL_ready;
    AESL_start_p1 <= AESL_start;
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
event report_progress;

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 1);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 1);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = finish_timestamp[i] - start_timestamp[i]+1;
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif

endmodule
