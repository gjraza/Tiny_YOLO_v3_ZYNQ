// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module write_output (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        val_output_0_V,
        val_output_1_V,
        val_output_2_V,
        val_output_3_V,
        curr_input_keep_V,
        curr_input_strb_V,
        curr_input_user_V,
        curr_input_id_V,
        curr_input_dest_V,
        outStream_TDATA,
        outStream_TVALID,
        outStream_TREADY,
        outStream_TKEEP,
        outStream_TSTRB,
        outStream_TUSER,
        outStream_TLAST,
        outStream_TID,
        outStream_TDEST,
        last_V,
        outStream_TDATA_blk_n,
        ap_ce
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [15:0] val_output_0_V;
input  [15:0] val_output_1_V;
input  [15:0] val_output_2_V;
input  [15:0] val_output_3_V;
input  [7:0] curr_input_keep_V;
input  [7:0] curr_input_strb_V;
input  [1:0] curr_input_user_V;
input  [4:0] curr_input_id_V;
input  [5:0] curr_input_dest_V;
output  [63:0] outStream_TDATA;
output   outStream_TVALID;
input   outStream_TREADY;
output  [7:0] outStream_TKEEP;
output  [7:0] outStream_TSTRB;
output  [1:0] outStream_TUSER;
output  [0:0] outStream_TLAST;
output  [4:0] outStream_TID;
output  [5:0] outStream_TDEST;
input  [0:0] last_V;
output   outStream_TDATA_blk_n;
input   ap_ce;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg outStream_TVALID;
reg outStream_TDATA_blk_n;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [0:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | (~((ap_start == 1'b0) | (outStream_TREADY == 1'b0)) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (outStream_TREADY == 1'b0)) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        outStream_TDATA_blk_n = outStream_TREADY;
    end else begin
        outStream_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (outStream_TREADY == 1'b0)) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state1))) begin
        outStream_TVALID = 1'b1;
    end else begin
        outStream_TVALID = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign outStream_TDATA = {{{{val_output_3_V}, {val_output_2_V}}, {val_output_1_V}}, {val_output_0_V}};

assign outStream_TDEST = curr_input_dest_V;

assign outStream_TID = curr_input_id_V;

assign outStream_TKEEP = curr_input_keep_V;

assign outStream_TLAST = last_V;

assign outStream_TSTRB = curr_input_strb_V;

assign outStream_TUSER = curr_input_user_V;

endmodule //write_output
