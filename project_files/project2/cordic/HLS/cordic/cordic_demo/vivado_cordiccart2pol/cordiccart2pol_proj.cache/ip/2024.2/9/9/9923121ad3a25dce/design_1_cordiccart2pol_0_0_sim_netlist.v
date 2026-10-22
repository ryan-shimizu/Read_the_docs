// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Wed Oct 21 22:43:17 2026
// Host        : ieng6-241.ucsd.edu running 64-bit Linux Mint 22.2
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_cordiccart2pol_0_0_sim_netlist.v
// Design      : design_1_cordiccart2pol_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* C_S_AXI_CONTROL_ADDR_WIDTH = "6" *) (* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) (* C_S_AXI_CONTROL_WSTRB_WIDTH = "4" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_WSTRB_WIDTH = "4" *) (* ap_ST_fsm_state1 = "4'b0001" *) 
(* ap_ST_fsm_state2 = "4'b0010" *) (* ap_ST_fsm_state3 = "4'b0100" *) (* ap_ST_fsm_state4 = "4'b1000" *) 
(* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cordiccart2pol
   (ap_clk,
    ap_rst_n,
    s_axi_control_AWVALID,
    s_axi_control_AWREADY,
    s_axi_control_AWADDR,
    s_axi_control_WVALID,
    s_axi_control_WREADY,
    s_axi_control_WDATA,
    s_axi_control_WSTRB,
    s_axi_control_ARVALID,
    s_axi_control_ARREADY,
    s_axi_control_ARADDR,
    s_axi_control_RVALID,
    s_axi_control_RREADY,
    s_axi_control_RDATA,
    s_axi_control_RRESP,
    s_axi_control_BVALID,
    s_axi_control_BREADY,
    s_axi_control_BRESP,
    interrupt);
  input ap_clk;
  input ap_rst_n;
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [5:0]s_axi_control_AWADDR;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  input [5:0]s_axi_control_ARADDR;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  output [1:0]s_axi_control_BRESP;
  output interrupt;

  wire \<const0> ;
  wire ap_CS_fsm_state1;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire [2:0]ap_NS_fsm;
  wire ap_NS_fsm1;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire control_s_axi_U_n_11;
  wire control_s_axi_U_n_12;
  wire control_s_axi_U_n_13;
  wire control_s_axi_U_n_14;
  wire control_s_axi_U_n_15;
  wire control_s_axi_U_n_16;
  wire control_s_axi_U_n_17;
  wire control_s_axi_U_n_18;
  wire control_s_axi_U_n_19;
  wire control_s_axi_U_n_2;
  wire control_s_axi_U_n_20;
  wire control_s_axi_U_n_21;
  wire control_s_axi_U_n_22;
  wire control_s_axi_U_n_23;
  wire control_s_axi_U_n_24;
  wire control_s_axi_U_n_25;
  wire control_s_axi_U_n_26;
  wire control_s_axi_U_n_27;
  wire control_s_axi_U_n_28;
  wire control_s_axi_U_n_29;
  wire control_s_axi_U_n_3;
  wire control_s_axi_U_n_30;
  wire control_s_axi_U_n_31;
  wire control_s_axi_U_n_32;
  wire control_s_axi_U_n_33;
  wire control_s_axi_U_n_34;
  wire control_s_axi_U_n_35;
  wire control_s_axi_U_n_36;
  wire control_s_axi_U_n_37;
  wire control_s_axi_U_n_38;
  wire control_s_axi_U_n_39;
  wire control_s_axi_U_n_40;
  wire control_s_axi_U_n_41;
  wire control_s_axi_U_n_42;
  wire control_s_axi_U_n_43;
  wire control_s_axi_U_n_44;
  wire control_s_axi_U_n_45;
  wire control_s_axi_U_n_46;
  wire control_s_axi_U_n_47;
  wire control_s_axi_U_n_48;
  wire control_s_axi_U_n_49;
  wire control_s_axi_U_n_50;
  wire control_s_axi_U_n_51;
  wire control_s_axi_U_n_52;
  wire control_s_axi_U_n_53;
  wire control_s_axi_U_n_54;
  wire control_s_axi_U_n_55;
  wire [21:0]current_cos_2_loc_fu_74;
  wire [21:0]current_cos_4_reg_229;
  wire grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_ready;
  wire grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg;
  wire grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_0;
  wire grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_1;
  wire grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_10;
  wire grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_11;
  wire grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_12;
  wire grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_13;
  wire grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_14;
  wire grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_15;
  wire grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_16;
  wire grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_17;
  wire grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_18;
  wire grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_19;
  wire grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_2;
  wire grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_20;
  wire grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_21;
  wire grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_3;
  wire grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_4;
  wire grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_5;
  wire grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_6;
  wire grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_7;
  wire grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_8;
  wire grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_9;
  wire [21:0]grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out;
  wire interrupt;
  wire [5:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [5:0]s_axi_control_AWADDR;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [21:0]\^s_axi_control_RDATA ;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire s_axi_control_WREADY;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [8:2]select_ln75_reg_224;
  wire [21:0]theta_temp_2_loc_fu_70;
  wire theta_temp_2_loc_fu_700;
  wire tmp_1_reg_244;
  wire [23:1]tmp_product0_out;
  wire [21:0]trunc_ln1_reg_239;
  wire [21:0]x_2_reg_234;

  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RDATA[31] = \<const0> ;
  assign s_axi_control_RDATA[30] = \<const0> ;
  assign s_axi_control_RDATA[29] = \<const0> ;
  assign s_axi_control_RDATA[28] = \<const0> ;
  assign s_axi_control_RDATA[27] = \<const0> ;
  assign s_axi_control_RDATA[26] = \<const0> ;
  assign s_axi_control_RDATA[25] = \<const0> ;
  assign s_axi_control_RDATA[24] = \<const0> ;
  assign s_axi_control_RDATA[23] = \<const0> ;
  assign s_axi_control_RDATA[22] = \<const0> ;
  assign s_axi_control_RDATA[21:0] = \^s_axi_control_RDATA [21:0];
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(ap_CS_fsm_state1),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state3),
        .Q(ap_CS_fsm_state4),
        .R(ap_rst_n_inv));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cordiccart2pol_control_s_axi control_s_axi_U
       (.D(ap_NS_fsm[1:0]),
        .\FSM_onehot_rstate_reg[1]_0 (s_axi_control_ARREADY),
        .\FSM_onehot_wstate_reg[1]_0 (s_axi_control_AWREADY),
        .\FSM_onehot_wstate_reg[2]_0 (s_axi_control_WREADY),
        .Q({ap_CS_fsm_state4,ap_CS_fsm_state3,ap_CS_fsm_state1}),
        .SR(ap_rst_n_inv),
        .ap_NS_fsm1(ap_NS_fsm1),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_ready(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_ready),
        .grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .int_ap_start_reg_0(control_s_axi_U_n_55),
        .\int_r_reg[21]_0 (trunc_ln1_reg_239),
        .\int_theta_reg[21]_0 (theta_temp_2_loc_fu_70),
        .\int_y_reg[21]_0 ({control_s_axi_U_n_11,control_s_axi_U_n_12,control_s_axi_U_n_13,control_s_axi_U_n_14,control_s_axi_U_n_15,control_s_axi_U_n_16,control_s_axi_U_n_17,control_s_axi_U_n_18,control_s_axi_U_n_19,control_s_axi_U_n_20,control_s_axi_U_n_21,control_s_axi_U_n_22,control_s_axi_U_n_23,control_s_axi_U_n_24,control_s_axi_U_n_25,control_s_axi_U_n_26,control_s_axi_U_n_27,control_s_axi_U_n_28,control_s_axi_U_n_29,control_s_axi_U_n_30,control_s_axi_U_n_31,control_s_axi_U_n_32}),
        .\int_y_reg[21]_1 ({control_s_axi_U_n_33,control_s_axi_U_n_34,control_s_axi_U_n_35,control_s_axi_U_n_36,control_s_axi_U_n_37,control_s_axi_U_n_38,control_s_axi_U_n_39,control_s_axi_U_n_40,control_s_axi_U_n_41,control_s_axi_U_n_42,control_s_axi_U_n_43,control_s_axi_U_n_44,control_s_axi_U_n_45,control_s_axi_U_n_46,control_s_axi_U_n_47,control_s_axi_U_n_48,control_s_axi_U_n_49,control_s_axi_U_n_50,control_s_axi_U_n_51,control_s_axi_U_n_52,control_s_axi_U_n_53,control_s_axi_U_n_54}),
        .interrupt(interrupt),
        .s_axi_control_ARADDR(s_axi_control_ARADDR),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_AWADDR(s_axi_control_AWADDR[5:2]),
        .s_axi_control_AWVALID(s_axi_control_AWVALID),
        .s_axi_control_BREADY(s_axi_control_BREADY),
        .s_axi_control_BVALID(s_axi_control_BVALID),
        .s_axi_control_RDATA(\^s_axi_control_RDATA ),
        .s_axi_control_RREADY(s_axi_control_RREADY),
        .s_axi_control_RVALID(s_axi_control_RVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA[21:0]),
        .s_axi_control_WSTRB(s_axi_control_WSTRB[2:0]),
        .s_axi_control_WVALID(s_axi_control_WVALID),
        .select_ln75_reg_224({select_ln75_reg_224[8],select_ln75_reg_224[2]}),
        .\select_ln75_reg_224_reg[2] (control_s_axi_U_n_2),
        .\select_ln75_reg_224_reg[8] (control_s_axi_U_n_3),
        .tmp_1_reg_244(tmp_1_reg_244));
  FDRE \current_cos_2_loc_fu_74_reg[0] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_21),
        .Q(current_cos_2_loc_fu_74[0]),
        .R(1'b0));
  FDRE \current_cos_2_loc_fu_74_reg[10] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_11),
        .Q(current_cos_2_loc_fu_74[10]),
        .R(1'b0));
  FDRE \current_cos_2_loc_fu_74_reg[11] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_10),
        .Q(current_cos_2_loc_fu_74[11]),
        .R(1'b0));
  FDRE \current_cos_2_loc_fu_74_reg[12] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_9),
        .Q(current_cos_2_loc_fu_74[12]),
        .R(1'b0));
  FDRE \current_cos_2_loc_fu_74_reg[13] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_8),
        .Q(current_cos_2_loc_fu_74[13]),
        .R(1'b0));
  FDRE \current_cos_2_loc_fu_74_reg[14] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_7),
        .Q(current_cos_2_loc_fu_74[14]),
        .R(1'b0));
  FDRE \current_cos_2_loc_fu_74_reg[15] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_6),
        .Q(current_cos_2_loc_fu_74[15]),
        .R(1'b0));
  FDRE \current_cos_2_loc_fu_74_reg[16] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_5),
        .Q(current_cos_2_loc_fu_74[16]),
        .R(1'b0));
  FDRE \current_cos_2_loc_fu_74_reg[17] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_4),
        .Q(current_cos_2_loc_fu_74[17]),
        .R(1'b0));
  FDRE \current_cos_2_loc_fu_74_reg[18] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_3),
        .Q(current_cos_2_loc_fu_74[18]),
        .R(1'b0));
  FDRE \current_cos_2_loc_fu_74_reg[19] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_2),
        .Q(current_cos_2_loc_fu_74[19]),
        .R(1'b0));
  FDRE \current_cos_2_loc_fu_74_reg[1] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_20),
        .Q(current_cos_2_loc_fu_74[1]),
        .R(1'b0));
  FDRE \current_cos_2_loc_fu_74_reg[20] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_1),
        .Q(current_cos_2_loc_fu_74[20]),
        .R(1'b0));
  FDRE \current_cos_2_loc_fu_74_reg[21] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_0),
        .Q(current_cos_2_loc_fu_74[21]),
        .R(1'b0));
  FDRE \current_cos_2_loc_fu_74_reg[2] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_19),
        .Q(current_cos_2_loc_fu_74[2]),
        .R(1'b0));
  FDRE \current_cos_2_loc_fu_74_reg[3] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_18),
        .Q(current_cos_2_loc_fu_74[3]),
        .R(1'b0));
  FDRE \current_cos_2_loc_fu_74_reg[4] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_17),
        .Q(current_cos_2_loc_fu_74[4]),
        .R(1'b0));
  FDRE \current_cos_2_loc_fu_74_reg[5] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_16),
        .Q(current_cos_2_loc_fu_74[5]),
        .R(1'b0));
  FDRE \current_cos_2_loc_fu_74_reg[6] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_15),
        .Q(current_cos_2_loc_fu_74[6]),
        .R(1'b0));
  FDRE \current_cos_2_loc_fu_74_reg[7] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_14),
        .Q(current_cos_2_loc_fu_74[7]),
        .R(1'b0));
  FDRE \current_cos_2_loc_fu_74_reg[8] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_13),
        .Q(current_cos_2_loc_fu_74[8]),
        .R(1'b0));
  FDRE \current_cos_2_loc_fu_74_reg[9] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_12),
        .Q(current_cos_2_loc_fu_74[9]),
        .R(1'b0));
  FDRE \current_cos_4_reg_229_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_32),
        .Q(current_cos_4_reg_229[0]),
        .R(1'b0));
  FDRE \current_cos_4_reg_229_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_22),
        .Q(current_cos_4_reg_229[10]),
        .R(1'b0));
  FDRE \current_cos_4_reg_229_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_21),
        .Q(current_cos_4_reg_229[11]),
        .R(1'b0));
  FDRE \current_cos_4_reg_229_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_20),
        .Q(current_cos_4_reg_229[12]),
        .R(1'b0));
  FDRE \current_cos_4_reg_229_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_19),
        .Q(current_cos_4_reg_229[13]),
        .R(1'b0));
  FDRE \current_cos_4_reg_229_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_18),
        .Q(current_cos_4_reg_229[14]),
        .R(1'b0));
  FDRE \current_cos_4_reg_229_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_17),
        .Q(current_cos_4_reg_229[15]),
        .R(1'b0));
  FDRE \current_cos_4_reg_229_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_16),
        .Q(current_cos_4_reg_229[16]),
        .R(1'b0));
  FDRE \current_cos_4_reg_229_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_15),
        .Q(current_cos_4_reg_229[17]),
        .R(1'b0));
  FDRE \current_cos_4_reg_229_reg[18] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_14),
        .Q(current_cos_4_reg_229[18]),
        .R(1'b0));
  FDRE \current_cos_4_reg_229_reg[19] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_13),
        .Q(current_cos_4_reg_229[19]),
        .R(1'b0));
  FDRE \current_cos_4_reg_229_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_31),
        .Q(current_cos_4_reg_229[1]),
        .R(1'b0));
  FDRE \current_cos_4_reg_229_reg[20] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_12),
        .Q(current_cos_4_reg_229[20]),
        .R(1'b0));
  FDRE \current_cos_4_reg_229_reg[21] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_11),
        .Q(current_cos_4_reg_229[21]),
        .R(1'b0));
  FDRE \current_cos_4_reg_229_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_30),
        .Q(current_cos_4_reg_229[2]),
        .R(1'b0));
  FDRE \current_cos_4_reg_229_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_29),
        .Q(current_cos_4_reg_229[3]),
        .R(1'b0));
  FDRE \current_cos_4_reg_229_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_28),
        .Q(current_cos_4_reg_229[4]),
        .R(1'b0));
  FDRE \current_cos_4_reg_229_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_27),
        .Q(current_cos_4_reg_229[5]),
        .R(1'b0));
  FDRE \current_cos_4_reg_229_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_26),
        .Q(current_cos_4_reg_229[6]),
        .R(1'b0));
  FDRE \current_cos_4_reg_229_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_25),
        .Q(current_cos_4_reg_229[7]),
        .R(1'b0));
  FDRE \current_cos_4_reg_229_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_24),
        .Q(current_cos_4_reg_229[8]),
        .R(1'b0));
  FDRE \current_cos_4_reg_229_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_23),
        .Q(current_cos_4_reg_229[9]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cordiccart2pol_cordiccart2pol_Pipeline_VITIS_LOOP_80_1 grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104
       (.D({grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_0,grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_1,grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_2,grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_3,grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_4,grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_5,grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_6,grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_7,grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_8,grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_9,grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_10,grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_11,grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_12,grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_13,grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_14,grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_15,grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_16,grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_17,grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_18,grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_19,grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_20,grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_21}),
        .E(theta_temp_2_loc_fu_700),
        .Q(ap_CS_fsm_state2),
        .SR(ap_rst_n_inv),
        .\ap_CS_fsm_reg[1]_0 (ap_NS_fsm[2]),
        .ap_NS_fsm1(ap_NS_fsm1),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\current_cos_34_fu_56_reg[21]_0 (current_cos_4_reg_229),
        .\current_sin_36_fu_60_reg[21]_0 (x_2_reg_234),
        .grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_ready(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_ready),
        .grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .select_ln75_reg_224({select_ln75_reg_224[8],select_ln75_reg_224[2]}),
        .\theta_temp2_fu_52_reg[19]_0 (grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out));
  FDRE #(
    .INIT(1'b0)) 
    grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(control_s_axi_U_n_55),
        .Q(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .R(ap_rst_n_inv));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cordiccart2pol_mul_22s_20ns_42_1_1 mul_22s_20ns_42_1_1_U7
       (.D({grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_0,grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_1,grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_2,grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_3,grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_4,grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_5,grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_6,grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_7,grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_8,grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_9,grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_10,grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_11,grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_12,grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_13,grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_14,grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_15,grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_16,grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_17,grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_18,grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_19,grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_20,grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_21}),
        .E(theta_temp_2_loc_fu_700),
        .Q(current_cos_2_loc_fu_74),
        .ap_clk(ap_clk),
        .tmp_product0_out(tmp_product0_out));
  FDRE \select_ln75_reg_224_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(control_s_axi_U_n_2),
        .Q(select_ln75_reg_224[2]),
        .R(1'b0));
  FDRE \select_ln75_reg_224_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(control_s_axi_U_n_3),
        .Q(select_ln75_reg_224[8]),
        .R(1'b0));
  FDRE \theta_temp_2_loc_fu_70_reg[0] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out[0]),
        .Q(theta_temp_2_loc_fu_70[0]),
        .R(1'b0));
  FDRE \theta_temp_2_loc_fu_70_reg[10] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out[10]),
        .Q(theta_temp_2_loc_fu_70[10]),
        .R(1'b0));
  FDRE \theta_temp_2_loc_fu_70_reg[11] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out[11]),
        .Q(theta_temp_2_loc_fu_70[11]),
        .R(1'b0));
  FDRE \theta_temp_2_loc_fu_70_reg[12] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out[12]),
        .Q(theta_temp_2_loc_fu_70[12]),
        .R(1'b0));
  FDRE \theta_temp_2_loc_fu_70_reg[13] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out[13]),
        .Q(theta_temp_2_loc_fu_70[13]),
        .R(1'b0));
  FDRE \theta_temp_2_loc_fu_70_reg[14] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out[14]),
        .Q(theta_temp_2_loc_fu_70[14]),
        .R(1'b0));
  FDRE \theta_temp_2_loc_fu_70_reg[15] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out[15]),
        .Q(theta_temp_2_loc_fu_70[15]),
        .R(1'b0));
  FDRE \theta_temp_2_loc_fu_70_reg[16] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out[16]),
        .Q(theta_temp_2_loc_fu_70[16]),
        .R(1'b0));
  FDRE \theta_temp_2_loc_fu_70_reg[17] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out[17]),
        .Q(theta_temp_2_loc_fu_70[17]),
        .R(1'b0));
  FDRE \theta_temp_2_loc_fu_70_reg[18] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out[18]),
        .Q(theta_temp_2_loc_fu_70[18]),
        .R(1'b0));
  FDRE \theta_temp_2_loc_fu_70_reg[19] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out[19]),
        .Q(theta_temp_2_loc_fu_70[19]),
        .R(1'b0));
  FDRE \theta_temp_2_loc_fu_70_reg[1] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out[1]),
        .Q(theta_temp_2_loc_fu_70[1]),
        .R(1'b0));
  FDRE \theta_temp_2_loc_fu_70_reg[20] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out[20]),
        .Q(theta_temp_2_loc_fu_70[20]),
        .R(1'b0));
  FDRE \theta_temp_2_loc_fu_70_reg[21] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out[21]),
        .Q(theta_temp_2_loc_fu_70[21]),
        .R(1'b0));
  FDRE \theta_temp_2_loc_fu_70_reg[2] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out[2]),
        .Q(theta_temp_2_loc_fu_70[2]),
        .R(1'b0));
  FDRE \theta_temp_2_loc_fu_70_reg[3] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out[3]),
        .Q(theta_temp_2_loc_fu_70[3]),
        .R(1'b0));
  FDRE \theta_temp_2_loc_fu_70_reg[4] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out[4]),
        .Q(theta_temp_2_loc_fu_70[4]),
        .R(1'b0));
  FDRE \theta_temp_2_loc_fu_70_reg[5] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out[5]),
        .Q(theta_temp_2_loc_fu_70[5]),
        .R(1'b0));
  FDRE \theta_temp_2_loc_fu_70_reg[6] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out[6]),
        .Q(theta_temp_2_loc_fu_70[6]),
        .R(1'b0));
  FDRE \theta_temp_2_loc_fu_70_reg[7] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out[7]),
        .Q(theta_temp_2_loc_fu_70[7]),
        .R(1'b0));
  FDRE \theta_temp_2_loc_fu_70_reg[8] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out[8]),
        .Q(theta_temp_2_loc_fu_70[8]),
        .R(1'b0));
  FDRE \theta_temp_2_loc_fu_70_reg[9] 
       (.C(ap_clk),
        .CE(theta_temp_2_loc_fu_700),
        .D(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out[9]),
        .Q(theta_temp_2_loc_fu_70[9]),
        .R(1'b0));
  FDRE \tmp_1_reg_244_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(tmp_product0_out[1]),
        .Q(tmp_1_reg_244),
        .R(1'b0));
  FDRE \trunc_ln1_reg_239_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(tmp_product0_out[2]),
        .Q(trunc_ln1_reg_239[0]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_239_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(tmp_product0_out[12]),
        .Q(trunc_ln1_reg_239[10]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_239_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(tmp_product0_out[13]),
        .Q(trunc_ln1_reg_239[11]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_239_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(tmp_product0_out[14]),
        .Q(trunc_ln1_reg_239[12]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_239_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(tmp_product0_out[15]),
        .Q(trunc_ln1_reg_239[13]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_239_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(tmp_product0_out[16]),
        .Q(trunc_ln1_reg_239[14]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_239_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(tmp_product0_out[17]),
        .Q(trunc_ln1_reg_239[15]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_239_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(tmp_product0_out[18]),
        .Q(trunc_ln1_reg_239[16]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_239_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(tmp_product0_out[19]),
        .Q(trunc_ln1_reg_239[17]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_239_reg[18] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(tmp_product0_out[20]),
        .Q(trunc_ln1_reg_239[18]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_239_reg[19] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(tmp_product0_out[21]),
        .Q(trunc_ln1_reg_239[19]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_239_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(tmp_product0_out[3]),
        .Q(trunc_ln1_reg_239[1]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_239_reg[20] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(tmp_product0_out[22]),
        .Q(trunc_ln1_reg_239[20]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_239_reg[21] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(tmp_product0_out[23]),
        .Q(trunc_ln1_reg_239[21]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_239_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(tmp_product0_out[4]),
        .Q(trunc_ln1_reg_239[2]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_239_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(tmp_product0_out[5]),
        .Q(trunc_ln1_reg_239[3]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_239_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(tmp_product0_out[6]),
        .Q(trunc_ln1_reg_239[4]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_239_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(tmp_product0_out[7]),
        .Q(trunc_ln1_reg_239[5]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_239_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(tmp_product0_out[8]),
        .Q(trunc_ln1_reg_239[6]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_239_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(tmp_product0_out[9]),
        .Q(trunc_ln1_reg_239[7]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_239_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(tmp_product0_out[10]),
        .Q(trunc_ln1_reg_239[8]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_239_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(tmp_product0_out[11]),
        .Q(trunc_ln1_reg_239[9]),
        .R(1'b0));
  FDRE \x_2_reg_234_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_54),
        .Q(x_2_reg_234[0]),
        .R(1'b0));
  FDRE \x_2_reg_234_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_44),
        .Q(x_2_reg_234[10]),
        .R(1'b0));
  FDRE \x_2_reg_234_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_43),
        .Q(x_2_reg_234[11]),
        .R(1'b0));
  FDRE \x_2_reg_234_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_42),
        .Q(x_2_reg_234[12]),
        .R(1'b0));
  FDRE \x_2_reg_234_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_41),
        .Q(x_2_reg_234[13]),
        .R(1'b0));
  FDRE \x_2_reg_234_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_40),
        .Q(x_2_reg_234[14]),
        .R(1'b0));
  FDRE \x_2_reg_234_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_39),
        .Q(x_2_reg_234[15]),
        .R(1'b0));
  FDRE \x_2_reg_234_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_38),
        .Q(x_2_reg_234[16]),
        .R(1'b0));
  FDRE \x_2_reg_234_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_37),
        .Q(x_2_reg_234[17]),
        .R(1'b0));
  FDRE \x_2_reg_234_reg[18] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_36),
        .Q(x_2_reg_234[18]),
        .R(1'b0));
  FDRE \x_2_reg_234_reg[19] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_35),
        .Q(x_2_reg_234[19]),
        .R(1'b0));
  FDRE \x_2_reg_234_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_53),
        .Q(x_2_reg_234[1]),
        .R(1'b0));
  FDRE \x_2_reg_234_reg[20] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_34),
        .Q(x_2_reg_234[20]),
        .R(1'b0));
  FDRE \x_2_reg_234_reg[21] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_33),
        .Q(x_2_reg_234[21]),
        .R(1'b0));
  FDRE \x_2_reg_234_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_52),
        .Q(x_2_reg_234[2]),
        .R(1'b0));
  FDRE \x_2_reg_234_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_51),
        .Q(x_2_reg_234[3]),
        .R(1'b0));
  FDRE \x_2_reg_234_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_50),
        .Q(x_2_reg_234[4]),
        .R(1'b0));
  FDRE \x_2_reg_234_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_49),
        .Q(x_2_reg_234[5]),
        .R(1'b0));
  FDRE \x_2_reg_234_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_48),
        .Q(x_2_reg_234[6]),
        .R(1'b0));
  FDRE \x_2_reg_234_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_47),
        .Q(x_2_reg_234[7]),
        .R(1'b0));
  FDRE \x_2_reg_234_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_46),
        .Q(x_2_reg_234[8]),
        .R(1'b0));
  FDRE \x_2_reg_234_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_45),
        .Q(x_2_reg_234[9]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cordiccart2pol_control_s_axi
   (SR,
    interrupt,
    \select_ln75_reg_224_reg[2] ,
    \select_ln75_reg_224_reg[8] ,
    D,
    \FSM_onehot_rstate_reg[1]_0 ,
    s_axi_control_RVALID,
    \FSM_onehot_wstate_reg[2]_0 ,
    s_axi_control_BVALID,
    \FSM_onehot_wstate_reg[1]_0 ,
    \int_y_reg[21]_0 ,
    \int_y_reg[21]_1 ,
    int_ap_start_reg_0,
    s_axi_control_RDATA,
    ap_clk,
    select_ln75_reg_224,
    Q,
    ap_NS_fsm1,
    ap_rst_n,
    s_axi_control_ARADDR,
    s_axi_control_ARVALID,
    s_axi_control_RREADY,
    s_axi_control_WVALID,
    s_axi_control_WSTRB,
    s_axi_control_WDATA,
    s_axi_control_BREADY,
    s_axi_control_AWVALID,
    grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_ready,
    grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
    s_axi_control_AWADDR,
    \int_r_reg[21]_0 ,
    tmp_1_reg_244,
    \int_theta_reg[21]_0 );
  output [0:0]SR;
  output interrupt;
  output \select_ln75_reg_224_reg[2] ;
  output \select_ln75_reg_224_reg[8] ;
  output [1:0]D;
  output \FSM_onehot_rstate_reg[1]_0 ;
  output s_axi_control_RVALID;
  output \FSM_onehot_wstate_reg[2]_0 ;
  output s_axi_control_BVALID;
  output \FSM_onehot_wstate_reg[1]_0 ;
  output [21:0]\int_y_reg[21]_0 ;
  output [21:0]\int_y_reg[21]_1 ;
  output int_ap_start_reg_0;
  output [21:0]s_axi_control_RDATA;
  input ap_clk;
  input [1:0]select_ln75_reg_224;
  input [2:0]Q;
  input ap_NS_fsm1;
  input ap_rst_n;
  input [5:0]s_axi_control_ARADDR;
  input s_axi_control_ARVALID;
  input s_axi_control_RREADY;
  input s_axi_control_WVALID;
  input [2:0]s_axi_control_WSTRB;
  input [21:0]s_axi_control_WDATA;
  input s_axi_control_BREADY;
  input s_axi_control_AWVALID;
  input grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_ready;
  input grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg;
  input [3:0]s_axi_control_AWADDR;
  input [21:0]\int_r_reg[21]_0 ;
  input tmp_1_reg_244;
  input [21:0]\int_theta_reg[21]_0 ;

  wire [1:0]D;
  wire \FSM_onehot_rstate[1]_i_1_n_0 ;
  wire \FSM_onehot_rstate[2]_i_1_n_0 ;
  wire \FSM_onehot_rstate_reg[1]_0 ;
  wire \FSM_onehot_wstate[1]_i_2_n_0 ;
  wire \FSM_onehot_wstate[2]_i_1_n_0 ;
  wire \FSM_onehot_wstate[3]_i_1_n_0 ;
  wire \FSM_onehot_wstate_reg[1]_0 ;
  wire \FSM_onehot_wstate_reg[2]_0 ;
  wire [2:0]Q;
  wire [0:0]SR;
  wire ap_NS_fsm1;
  wire ap_clk;
  wire ap_idle;
  wire ap_rst_n;
  wire ap_start;
  wire ar_hs;
  wire auto_restart_status_i_1_n_0;
  wire auto_restart_status_reg_n_0;
  wire \current_cos_4_reg_229[11]_i_2_n_0 ;
  wire \current_cos_4_reg_229[11]_i_3_n_0 ;
  wire \current_cos_4_reg_229[11]_i_4_n_0 ;
  wire \current_cos_4_reg_229[11]_i_5_n_0 ;
  wire \current_cos_4_reg_229[15]_i_2_n_0 ;
  wire \current_cos_4_reg_229[15]_i_3_n_0 ;
  wire \current_cos_4_reg_229[15]_i_4_n_0 ;
  wire \current_cos_4_reg_229[15]_i_5_n_0 ;
  wire \current_cos_4_reg_229[19]_i_2_n_0 ;
  wire \current_cos_4_reg_229[19]_i_3_n_0 ;
  wire \current_cos_4_reg_229[19]_i_4_n_0 ;
  wire \current_cos_4_reg_229[19]_i_5_n_0 ;
  wire \current_cos_4_reg_229[21]_i_2_n_0 ;
  wire \current_cos_4_reg_229[3]_i_2_n_0 ;
  wire \current_cos_4_reg_229[3]_i_3_n_0 ;
  wire \current_cos_4_reg_229[3]_i_4_n_0 ;
  wire \current_cos_4_reg_229[3]_i_5_n_0 ;
  wire \current_cos_4_reg_229[7]_i_2_n_0 ;
  wire \current_cos_4_reg_229[7]_i_3_n_0 ;
  wire \current_cos_4_reg_229[7]_i_4_n_0 ;
  wire \current_cos_4_reg_229[7]_i_5_n_0 ;
  wire \current_cos_4_reg_229_reg[11]_i_1_n_0 ;
  wire \current_cos_4_reg_229_reg[11]_i_1_n_1 ;
  wire \current_cos_4_reg_229_reg[11]_i_1_n_2 ;
  wire \current_cos_4_reg_229_reg[11]_i_1_n_3 ;
  wire \current_cos_4_reg_229_reg[15]_i_1_n_0 ;
  wire \current_cos_4_reg_229_reg[15]_i_1_n_1 ;
  wire \current_cos_4_reg_229_reg[15]_i_1_n_2 ;
  wire \current_cos_4_reg_229_reg[15]_i_1_n_3 ;
  wire \current_cos_4_reg_229_reg[19]_i_1_n_0 ;
  wire \current_cos_4_reg_229_reg[19]_i_1_n_1 ;
  wire \current_cos_4_reg_229_reg[19]_i_1_n_2 ;
  wire \current_cos_4_reg_229_reg[19]_i_1_n_3 ;
  wire \current_cos_4_reg_229_reg[3]_i_1_n_0 ;
  wire \current_cos_4_reg_229_reg[3]_i_1_n_1 ;
  wire \current_cos_4_reg_229_reg[3]_i_1_n_2 ;
  wire \current_cos_4_reg_229_reg[3]_i_1_n_3 ;
  wire \current_cos_4_reg_229_reg[7]_i_1_n_0 ;
  wire \current_cos_4_reg_229_reg[7]_i_1_n_1 ;
  wire \current_cos_4_reg_229_reg[7]_i_1_n_2 ;
  wire \current_cos_4_reg_229_reg[7]_i_1_n_3 ;
  wire grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_ready;
  wire grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg;
  wire int_ap_ready;
  wire int_ap_ready_i_1_n_0;
  wire int_ap_start5_out;
  wire int_ap_start_i_1_n_0;
  wire int_ap_start_i_3_n_0;
  wire int_ap_start_reg_0;
  wire int_auto_restart_i_1_n_0;
  wire int_gie_i_1_n_0;
  wire int_gie_i_2_n_0;
  wire int_gie_reg_n_0;
  wire \int_ier[0]_i_1_n_0 ;
  wire \int_ier[1]_i_1_n_0 ;
  wire \int_ier[1]_i_2_n_0 ;
  wire \int_ier_reg_n_0_[0] ;
  wire \int_ier_reg_n_0_[1] ;
  wire int_interrupt0;
  wire int_isr7_out;
  wire \int_isr[0]_i_1_n_0 ;
  wire \int_isr[1]_i_1_n_0 ;
  wire \int_isr_reg_n_0_[0] ;
  wire \int_isr_reg_n_0_[1] ;
  wire [21:0]int_r;
  wire \int_r[3]_i_2_n_0 ;
  wire int_r_ap_vld;
  wire int_r_ap_vld_i_1_n_0;
  wire int_r_ap_vld_i_2_n_0;
  wire \int_r_reg[11]_i_1_n_0 ;
  wire \int_r_reg[11]_i_1_n_1 ;
  wire \int_r_reg[11]_i_1_n_2 ;
  wire \int_r_reg[11]_i_1_n_3 ;
  wire \int_r_reg[15]_i_1_n_0 ;
  wire \int_r_reg[15]_i_1_n_1 ;
  wire \int_r_reg[15]_i_1_n_2 ;
  wire \int_r_reg[15]_i_1_n_3 ;
  wire \int_r_reg[19]_i_1_n_0 ;
  wire \int_r_reg[19]_i_1_n_1 ;
  wire \int_r_reg[19]_i_1_n_2 ;
  wire \int_r_reg[19]_i_1_n_3 ;
  wire [21:0]\int_r_reg[21]_0 ;
  wire \int_r_reg[21]_i_1_n_3 ;
  wire \int_r_reg[3]_i_1_n_0 ;
  wire \int_r_reg[3]_i_1_n_1 ;
  wire \int_r_reg[3]_i_1_n_2 ;
  wire \int_r_reg[3]_i_1_n_3 ;
  wire \int_r_reg[7]_i_1_n_0 ;
  wire \int_r_reg[7]_i_1_n_1 ;
  wire \int_r_reg[7]_i_1_n_2 ;
  wire \int_r_reg[7]_i_1_n_3 ;
  wire int_task_ap_done;
  wire int_task_ap_done_i_1_n_0;
  wire int_task_ap_done_i_3_n_0;
  wire int_task_ap_done_i_4_n_0;
  wire [21:0]int_theta;
  wire \int_theta[11]_i_2_n_0 ;
  wire \int_theta[11]_i_3_n_0 ;
  wire \int_theta[11]_i_4_n_0 ;
  wire \int_theta[11]_i_5_n_0 ;
  wire \int_theta[15]_i_2_n_0 ;
  wire \int_theta[15]_i_3_n_0 ;
  wire \int_theta[15]_i_4_n_0 ;
  wire \int_theta[15]_i_5_n_0 ;
  wire \int_theta[19]_i_2_n_0 ;
  wire \int_theta[19]_i_3_n_0 ;
  wire \int_theta[19]_i_4_n_0 ;
  wire \int_theta[19]_i_5_n_0 ;
  wire \int_theta[21]_i_2_n_0 ;
  wire \int_theta[21]_i_3_n_0 ;
  wire \int_theta[3]_i_2_n_0 ;
  wire \int_theta[3]_i_3_n_0 ;
  wire \int_theta[3]_i_4_n_0 ;
  wire \int_theta[7]_i_2_n_0 ;
  wire \int_theta[7]_i_3_n_0 ;
  wire \int_theta[7]_i_4_n_0 ;
  wire \int_theta[7]_i_5_n_0 ;
  wire int_theta_ap_vld;
  wire int_theta_ap_vld_i_1_n_0;
  wire \int_theta_reg[11]_i_1_n_0 ;
  wire \int_theta_reg[11]_i_1_n_1 ;
  wire \int_theta_reg[11]_i_1_n_2 ;
  wire \int_theta_reg[11]_i_1_n_3 ;
  wire \int_theta_reg[15]_i_1_n_0 ;
  wire \int_theta_reg[15]_i_1_n_1 ;
  wire \int_theta_reg[15]_i_1_n_2 ;
  wire \int_theta_reg[15]_i_1_n_3 ;
  wire \int_theta_reg[19]_i_1_n_0 ;
  wire \int_theta_reg[19]_i_1_n_1 ;
  wire \int_theta_reg[19]_i_1_n_2 ;
  wire \int_theta_reg[19]_i_1_n_3 ;
  wire [21:0]\int_theta_reg[21]_0 ;
  wire \int_theta_reg[21]_i_1_n_3 ;
  wire \int_theta_reg[3]_i_1_n_0 ;
  wire \int_theta_reg[3]_i_1_n_1 ;
  wire \int_theta_reg[3]_i_1_n_2 ;
  wire \int_theta_reg[3]_i_1_n_3 ;
  wire \int_theta_reg[7]_i_1_n_0 ;
  wire \int_theta_reg[7]_i_1_n_1 ;
  wire \int_theta_reg[7]_i_1_n_2 ;
  wire \int_theta_reg[7]_i_1_n_3 ;
  wire [21:0]int_x0;
  wire \int_x[21]_i_1_n_0 ;
  wire [21:0]int_y0;
  wire \int_y[21]_i_1_n_0 ;
  wire [21:0]\int_y_reg[21]_0 ;
  wire [21:0]\int_y_reg[21]_1 ;
  wire interrupt;
  wire [7:2]p_6_in;
  wire [21:0]r;
  wire [21:0]rdata;
  wire \rdata[0]_i_2_n_0 ;
  wire \rdata[0]_i_3_n_0 ;
  wire \rdata[0]_i_4_n_0 ;
  wire \rdata[0]_i_5_n_0 ;
  wire \rdata[10]_i_2_n_0 ;
  wire \rdata[11]_i_2_n_0 ;
  wire \rdata[12]_i_2_n_0 ;
  wire \rdata[13]_i_2_n_0 ;
  wire \rdata[14]_i_2_n_0 ;
  wire \rdata[15]_i_2_n_0 ;
  wire \rdata[16]_i_2_n_0 ;
  wire \rdata[17]_i_2_n_0 ;
  wire \rdata[18]_i_2_n_0 ;
  wire \rdata[19]_i_2_n_0 ;
  wire \rdata[1]_i_2_n_0 ;
  wire \rdata[1]_i_3_n_0 ;
  wire \rdata[1]_i_4_n_0 ;
  wire \rdata[20]_i_2_n_0 ;
  wire \rdata[21]_i_3_n_0 ;
  wire \rdata[21]_i_4_n_0 ;
  wire \rdata[2]_i_2_n_0 ;
  wire \rdata[2]_i_3_n_0 ;
  wire \rdata[3]_i_2_n_0 ;
  wire \rdata[3]_i_3_n_0 ;
  wire \rdata[4]_i_2_n_0 ;
  wire \rdata[5]_i_2_n_0 ;
  wire \rdata[6]_i_2_n_0 ;
  wire \rdata[7]_i_2_n_0 ;
  wire \rdata[7]_i_3_n_0 ;
  wire \rdata[8]_i_2_n_0 ;
  wire \rdata[9]_i_2_n_0 ;
  wire \rdata[9]_i_3_n_0 ;
  wire [5:0]s_axi_control_ARADDR;
  wire s_axi_control_ARVALID;
  wire [3:0]s_axi_control_AWADDR;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [21:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [21:0]s_axi_control_WDATA;
  wire [2:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [1:0]select_ln75_reg_224;
  wire \select_ln75_reg_224_reg[2] ;
  wire \select_ln75_reg_224_reg[8] ;
  wire task_ap_done;
  wire [21:0]theta;
  wire tmp_1_reg_244;
  wire waddr;
  wire \waddr_reg_n_0_[2] ;
  wire \waddr_reg_n_0_[3] ;
  wire \waddr_reg_n_0_[4] ;
  wire \waddr_reg_n_0_[5] ;
  wire [21:0]x;
  wire \x_2_reg_234[11]_i_2_n_0 ;
  wire \x_2_reg_234[11]_i_3_n_0 ;
  wire \x_2_reg_234[11]_i_4_n_0 ;
  wire \x_2_reg_234[11]_i_5_n_0 ;
  wire \x_2_reg_234[15]_i_2_n_0 ;
  wire \x_2_reg_234[15]_i_3_n_0 ;
  wire \x_2_reg_234[15]_i_4_n_0 ;
  wire \x_2_reg_234[15]_i_5_n_0 ;
  wire \x_2_reg_234[19]_i_2_n_0 ;
  wire \x_2_reg_234[19]_i_3_n_0 ;
  wire \x_2_reg_234[19]_i_4_n_0 ;
  wire \x_2_reg_234[19]_i_5_n_0 ;
  wire \x_2_reg_234[21]_i_2_n_0 ;
  wire \x_2_reg_234[21]_i_3_n_0 ;
  wire \x_2_reg_234[3]_i_2_n_0 ;
  wire \x_2_reg_234[3]_i_3_n_0 ;
  wire \x_2_reg_234[3]_i_4_n_0 ;
  wire \x_2_reg_234[3]_i_5_n_0 ;
  wire \x_2_reg_234[3]_i_6_n_0 ;
  wire \x_2_reg_234[7]_i_2_n_0 ;
  wire \x_2_reg_234[7]_i_3_n_0 ;
  wire \x_2_reg_234[7]_i_4_n_0 ;
  wire \x_2_reg_234[7]_i_5_n_0 ;
  wire \x_2_reg_234_reg[11]_i_1_n_0 ;
  wire \x_2_reg_234_reg[11]_i_1_n_1 ;
  wire \x_2_reg_234_reg[11]_i_1_n_2 ;
  wire \x_2_reg_234_reg[11]_i_1_n_3 ;
  wire \x_2_reg_234_reg[15]_i_1_n_0 ;
  wire \x_2_reg_234_reg[15]_i_1_n_1 ;
  wire \x_2_reg_234_reg[15]_i_1_n_2 ;
  wire \x_2_reg_234_reg[15]_i_1_n_3 ;
  wire \x_2_reg_234_reg[19]_i_1_n_0 ;
  wire \x_2_reg_234_reg[19]_i_1_n_1 ;
  wire \x_2_reg_234_reg[19]_i_1_n_2 ;
  wire \x_2_reg_234_reg[19]_i_1_n_3 ;
  wire \x_2_reg_234_reg[21]_i_1_n_3 ;
  wire \x_2_reg_234_reg[3]_i_1_n_0 ;
  wire \x_2_reg_234_reg[3]_i_1_n_1 ;
  wire \x_2_reg_234_reg[3]_i_1_n_2 ;
  wire \x_2_reg_234_reg[3]_i_1_n_3 ;
  wire \x_2_reg_234_reg[7]_i_1_n_0 ;
  wire \x_2_reg_234_reg[7]_i_1_n_1 ;
  wire \x_2_reg_234_reg[7]_i_1_n_2 ;
  wire \x_2_reg_234_reg[7]_i_1_n_3 ;
  wire [21:0]y;
  wire [3:0]\NLW_current_cos_4_reg_229_reg[21]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_current_cos_4_reg_229_reg[21]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_int_r_reg[21]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_int_r_reg[21]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_int_theta_reg[21]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_int_theta_reg[21]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_x_2_reg_234_reg[21]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_x_2_reg_234_reg[21]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF727)) 
    \FSM_onehot_rstate[1]_i_1 
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_control_ARVALID),
        .I2(s_axi_control_RVALID),
        .I3(s_axi_control_RREADY),
        .O(\FSM_onehot_rstate[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF222)) 
    \FSM_onehot_rstate[2]_i_1 
       (.I0(s_axi_control_RVALID),
        .I1(s_axi_control_RREADY),
        .I2(s_axi_control_ARVALID),
        .I3(\FSM_onehot_rstate_reg[1]_0 ),
        .O(\FSM_onehot_rstate[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_rstate_reg[1]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[2]_i_1_n_0 ),
        .Q(s_axi_control_RVALID),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(ap_rst_n),
        .O(SR));
  LUT5 #(
    .INIT(32'hFF0C1D1D)) 
    \FSM_onehot_wstate[1]_i_2 
       (.I0(\FSM_onehot_wstate_reg[2]_0 ),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_control_AWVALID),
        .I3(s_axi_control_BREADY),
        .I4(s_axi_control_BVALID),
        .O(\FSM_onehot_wstate[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(s_axi_control_AWVALID),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_control_WVALID),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .O(\FSM_onehot_wstate[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[3]_i_1 
       (.I0(s_axi_control_WVALID),
        .I1(\FSM_onehot_wstate_reg[2]_0 ),
        .I2(s_axi_control_BREADY),
        .I3(s_axi_control_BVALID),
        .O(\FSM_onehot_wstate[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[1]_i_2_n_0 ),
        .Q(\FSM_onehot_wstate_reg[1]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[2]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[2]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[3]_i_1_n_0 ),
        .Q(s_axi_control_BVALID),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    \ap_CS_fsm[0]_i_1__0 
       (.I0(Q[0]),
        .I1(ap_start),
        .I2(Q[2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAAA0003)) 
    \ap_CS_fsm[1]_i_1__0 
       (.I0(ap_start),
        .I1(ap_NS_fsm1),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hEFAA)) 
    auto_restart_status_i_1
       (.I0(p_6_in[7]),
        .I1(ap_start),
        .I2(Q[0]),
        .I3(auto_restart_status_reg_n_0),
        .O(auto_restart_status_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    auto_restart_status_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(auto_restart_status_i_1_n_0),
        .Q(auto_restart_status_reg_n_0),
        .R(SR));
  LUT2 #(
    .INIT(4'h6)) 
    \current_cos_4_reg_229[11]_i_2 
       (.I0(y[21]),
        .I1(y[11]),
        .O(\current_cos_4_reg_229[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \current_cos_4_reg_229[11]_i_3 
       (.I0(y[21]),
        .I1(y[10]),
        .O(\current_cos_4_reg_229[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \current_cos_4_reg_229[11]_i_4 
       (.I0(y[21]),
        .I1(y[9]),
        .O(\current_cos_4_reg_229[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \current_cos_4_reg_229[11]_i_5 
       (.I0(y[21]),
        .I1(y[8]),
        .O(\current_cos_4_reg_229[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \current_cos_4_reg_229[15]_i_2 
       (.I0(y[21]),
        .I1(y[15]),
        .O(\current_cos_4_reg_229[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \current_cos_4_reg_229[15]_i_3 
       (.I0(y[21]),
        .I1(y[14]),
        .O(\current_cos_4_reg_229[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \current_cos_4_reg_229[15]_i_4 
       (.I0(y[21]),
        .I1(y[13]),
        .O(\current_cos_4_reg_229[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \current_cos_4_reg_229[15]_i_5 
       (.I0(y[21]),
        .I1(y[12]),
        .O(\current_cos_4_reg_229[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \current_cos_4_reg_229[19]_i_2 
       (.I0(y[21]),
        .I1(y[19]),
        .O(\current_cos_4_reg_229[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \current_cos_4_reg_229[19]_i_3 
       (.I0(y[21]),
        .I1(y[18]),
        .O(\current_cos_4_reg_229[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \current_cos_4_reg_229[19]_i_4 
       (.I0(y[21]),
        .I1(y[17]),
        .O(\current_cos_4_reg_229[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \current_cos_4_reg_229[19]_i_5 
       (.I0(y[21]),
        .I1(y[16]),
        .O(\current_cos_4_reg_229[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \current_cos_4_reg_229[21]_i_2 
       (.I0(y[21]),
        .I1(y[20]),
        .O(\current_cos_4_reg_229[21]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \current_cos_4_reg_229[3]_i_2 
       (.I0(y[21]),
        .I1(y[3]),
        .O(\current_cos_4_reg_229[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \current_cos_4_reg_229[3]_i_3 
       (.I0(y[21]),
        .I1(y[2]),
        .O(\current_cos_4_reg_229[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \current_cos_4_reg_229[3]_i_4 
       (.I0(y[21]),
        .I1(y[1]),
        .O(\current_cos_4_reg_229[3]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \current_cos_4_reg_229[3]_i_5 
       (.I0(y[0]),
        .O(\current_cos_4_reg_229[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \current_cos_4_reg_229[7]_i_2 
       (.I0(y[21]),
        .I1(y[7]),
        .O(\current_cos_4_reg_229[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \current_cos_4_reg_229[7]_i_3 
       (.I0(y[21]),
        .I1(y[6]),
        .O(\current_cos_4_reg_229[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \current_cos_4_reg_229[7]_i_4 
       (.I0(y[21]),
        .I1(y[5]),
        .O(\current_cos_4_reg_229[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \current_cos_4_reg_229[7]_i_5 
       (.I0(y[21]),
        .I1(y[4]),
        .O(\current_cos_4_reg_229[7]_i_5_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \current_cos_4_reg_229_reg[11]_i_1 
       (.CI(\current_cos_4_reg_229_reg[7]_i_1_n_0 ),
        .CO({\current_cos_4_reg_229_reg[11]_i_1_n_0 ,\current_cos_4_reg_229_reg[11]_i_1_n_1 ,\current_cos_4_reg_229_reg[11]_i_1_n_2 ,\current_cos_4_reg_229_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\int_y_reg[21]_0 [11:8]),
        .S({\current_cos_4_reg_229[11]_i_2_n_0 ,\current_cos_4_reg_229[11]_i_3_n_0 ,\current_cos_4_reg_229[11]_i_4_n_0 ,\current_cos_4_reg_229[11]_i_5_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \current_cos_4_reg_229_reg[15]_i_1 
       (.CI(\current_cos_4_reg_229_reg[11]_i_1_n_0 ),
        .CO({\current_cos_4_reg_229_reg[15]_i_1_n_0 ,\current_cos_4_reg_229_reg[15]_i_1_n_1 ,\current_cos_4_reg_229_reg[15]_i_1_n_2 ,\current_cos_4_reg_229_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\int_y_reg[21]_0 [15:12]),
        .S({\current_cos_4_reg_229[15]_i_2_n_0 ,\current_cos_4_reg_229[15]_i_3_n_0 ,\current_cos_4_reg_229[15]_i_4_n_0 ,\current_cos_4_reg_229[15]_i_5_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \current_cos_4_reg_229_reg[19]_i_1 
       (.CI(\current_cos_4_reg_229_reg[15]_i_1_n_0 ),
        .CO({\current_cos_4_reg_229_reg[19]_i_1_n_0 ,\current_cos_4_reg_229_reg[19]_i_1_n_1 ,\current_cos_4_reg_229_reg[19]_i_1_n_2 ,\current_cos_4_reg_229_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\int_y_reg[21]_0 [19:16]),
        .S({\current_cos_4_reg_229[19]_i_2_n_0 ,\current_cos_4_reg_229[19]_i_3_n_0 ,\current_cos_4_reg_229[19]_i_4_n_0 ,\current_cos_4_reg_229[19]_i_5_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \current_cos_4_reg_229_reg[21]_i_1 
       (.CI(\current_cos_4_reg_229_reg[19]_i_1_n_0 ),
        .CO({\NLW_current_cos_4_reg_229_reg[21]_i_1_CO_UNCONNECTED [3:2],\int_y_reg[21]_0 [21],\NLW_current_cos_4_reg_229_reg[21]_i_1_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_current_cos_4_reg_229_reg[21]_i_1_O_UNCONNECTED [3:1],\int_y_reg[21]_0 [20]}),
        .S({1'b0,1'b0,1'b1,\current_cos_4_reg_229[21]_i_2_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \current_cos_4_reg_229_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\current_cos_4_reg_229_reg[3]_i_1_n_0 ,\current_cos_4_reg_229_reg[3]_i_1_n_1 ,\current_cos_4_reg_229_reg[3]_i_1_n_2 ,\current_cos_4_reg_229_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,y[21]}),
        .O(\int_y_reg[21]_0 [3:0]),
        .S({\current_cos_4_reg_229[3]_i_2_n_0 ,\current_cos_4_reg_229[3]_i_3_n_0 ,\current_cos_4_reg_229[3]_i_4_n_0 ,\current_cos_4_reg_229[3]_i_5_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \current_cos_4_reg_229_reg[7]_i_1 
       (.CI(\current_cos_4_reg_229_reg[3]_i_1_n_0 ),
        .CO({\current_cos_4_reg_229_reg[7]_i_1_n_0 ,\current_cos_4_reg_229_reg[7]_i_1_n_1 ,\current_cos_4_reg_229_reg[7]_i_1_n_2 ,\current_cos_4_reg_229_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\int_y_reg[21]_0 [7:4]),
        .S({\current_cos_4_reg_229[7]_i_2_n_0 ,\current_cos_4_reg_229[7]_i_3_n_0 ,\current_cos_4_reg_229[7]_i_4_n_0 ,\current_cos_4_reg_229[7]_i_5_n_0 }));
  LUT4 #(
    .INIT(16'h8F88)) 
    grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg_i_1
       (.I0(ap_start),
        .I1(Q[0]),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_ready),
        .I3(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .O(int_ap_start_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    int_ap_idle_i_1
       (.I0(Q[0]),
        .I1(ap_start),
        .O(ap_idle));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_idle_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_idle),
        .Q(p_6_in[2]),
        .R(SR));
  LUT6 #(
    .INIT(64'h4FFFFFFF44444444)) 
    int_ap_ready_i_1
       (.I0(p_6_in[7]),
        .I1(Q[2]),
        .I2(int_task_ap_done_i_3_n_0),
        .I3(ar_hs),
        .I4(int_task_ap_done_i_4_n_0),
        .I5(int_ap_ready),
        .O(int_ap_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_ready_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_ready_i_1_n_0),
        .Q(int_ap_ready),
        .R(SR));
  LUT4 #(
    .INIT(16'hFBF8)) 
    int_ap_start_i_1
       (.I0(p_6_in[7]),
        .I1(Q[2]),
        .I2(int_ap_start5_out),
        .I3(ap_start),
        .O(int_ap_start_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    int_ap_start_i_2
       (.I0(s_axi_control_WDATA[0]),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(int_ap_start_i_3_n_0),
        .I4(s_axi_control_WSTRB[0]),
        .I5(\waddr_reg_n_0_[3] ),
        .O(int_ap_start5_out));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h08)) 
    int_ap_start_i_3
       (.I0(s_axi_control_WVALID),
        .I1(\FSM_onehot_wstate_reg[2]_0 ),
        .I2(\waddr_reg_n_0_[5] ),
        .O(int_ap_start_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_start_i_1_n_0),
        .Q(ap_start),
        .R(SR));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    int_auto_restart_i_1
       (.I0(s_axi_control_WDATA[7]),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(s_axi_control_WSTRB[0]),
        .I3(\int_ier[1]_i_2_n_0 ),
        .I4(p_6_in[7]),
        .O(int_auto_restart_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_0),
        .Q(p_6_in[7]),
        .R(SR));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    int_gie_i_1
       (.I0(s_axi_control_WDATA[0]),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(s_axi_control_WSTRB[0]),
        .I3(int_gie_i_2_n_0),
        .I4(int_gie_reg_n_0),
        .O(int_gie_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    int_gie_i_2
       (.I0(\waddr_reg_n_0_[4] ),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(\waddr_reg_n_0_[5] ),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .I4(s_axi_control_WVALID),
        .O(int_gie_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_0),
        .Q(int_gie_reg_n_0),
        .R(SR));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \int_ier[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(\int_ier[1]_i_2_n_0 ),
        .I4(\int_ier_reg_n_0_[0] ),
        .O(\int_ier[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \int_ier[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(\int_ier[1]_i_2_n_0 ),
        .I4(\int_ier_reg_n_0_[1] ),
        .O(\int_ier[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \int_ier[1]_i_2 
       (.I0(\waddr_reg_n_0_[4] ),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(\waddr_reg_n_0_[5] ),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .I4(s_axi_control_WVALID),
        .O(\int_ier[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[0]_i_1_n_0 ),
        .Q(\int_ier_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[1]_i_1_n_0 ),
        .Q(\int_ier_reg_n_0_[1] ),
        .R(SR));
  LUT3 #(
    .INIT(8'hE0)) 
    int_interrupt_i_1
       (.I0(\int_isr_reg_n_0_[0] ),
        .I1(\int_isr_reg_n_0_[1] ),
        .I2(int_gie_reg_n_0),
        .O(int_interrupt0));
  FDRE #(
    .INIT(1'b0)) 
    int_interrupt_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_interrupt0),
        .Q(interrupt),
        .R(SR));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(int_isr7_out),
        .I2(\int_ier_reg_n_0_[0] ),
        .I3(Q[2]),
        .I4(\int_isr_reg_n_0_[0] ),
        .O(\int_isr[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \int_isr[0]_i_2 
       (.I0(s_axi_control_WSTRB[0]),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(int_ap_start_i_3_n_0),
        .I3(\waddr_reg_n_0_[2] ),
        .I4(\waddr_reg_n_0_[4] ),
        .O(int_isr7_out));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(int_isr7_out),
        .I2(\int_ier_reg_n_0_[1] ),
        .I3(Q[2]),
        .I4(\int_isr_reg_n_0_[1] ),
        .O(\int_isr[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[0]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[1]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[1] ),
        .R(SR));
  LUT2 #(
    .INIT(4'h6)) 
    \int_r[3]_i_2 
       (.I0(\int_r_reg[21]_0 [0]),
        .I1(tmp_1_reg_244),
        .O(\int_r[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFFFFFF0000)) 
    int_r_ap_vld_i_1
       (.I0(s_axi_control_ARADDR[4]),
        .I1(s_axi_control_ARADDR[5]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(int_r_ap_vld_i_2_n_0),
        .I4(Q[2]),
        .I5(int_r_ap_vld),
        .O(int_r_ap_vld_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    int_r_ap_vld_i_2
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[1]),
        .I2(s_axi_control_ARADDR[0]),
        .I3(s_axi_control_ARVALID),
        .I4(\FSM_onehot_rstate_reg[1]_0 ),
        .O(int_r_ap_vld_i_2_n_0));
  FDRE int_r_ap_vld_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_r_ap_vld_i_1_n_0),
        .Q(int_r_ap_vld),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_r_reg[0] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(r[0]),
        .Q(int_r[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_r_reg[10] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(r[10]),
        .Q(int_r[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_r_reg[11] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(r[11]),
        .Q(int_r[11]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_r_reg[11]_i_1 
       (.CI(\int_r_reg[7]_i_1_n_0 ),
        .CO({\int_r_reg[11]_i_1_n_0 ,\int_r_reg[11]_i_1_n_1 ,\int_r_reg[11]_i_1_n_2 ,\int_r_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r[11:8]),
        .S(\int_r_reg[21]_0 [11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \int_r_reg[12] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(r[12]),
        .Q(int_r[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_r_reg[13] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(r[13]),
        .Q(int_r[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_r_reg[14] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(r[14]),
        .Q(int_r[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_r_reg[15] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(r[15]),
        .Q(int_r[15]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_r_reg[15]_i_1 
       (.CI(\int_r_reg[11]_i_1_n_0 ),
        .CO({\int_r_reg[15]_i_1_n_0 ,\int_r_reg[15]_i_1_n_1 ,\int_r_reg[15]_i_1_n_2 ,\int_r_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r[15:12]),
        .S(\int_r_reg[21]_0 [15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \int_r_reg[16] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(r[16]),
        .Q(int_r[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_r_reg[17] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(r[17]),
        .Q(int_r[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_r_reg[18] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(r[18]),
        .Q(int_r[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_r_reg[19] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(r[19]),
        .Q(int_r[19]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_r_reg[19]_i_1 
       (.CI(\int_r_reg[15]_i_1_n_0 ),
        .CO({\int_r_reg[19]_i_1_n_0 ,\int_r_reg[19]_i_1_n_1 ,\int_r_reg[19]_i_1_n_2 ,\int_r_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r[19:16]),
        .S(\int_r_reg[21]_0 [19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \int_r_reg[1] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(r[1]),
        .Q(int_r[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_r_reg[20] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(r[20]),
        .Q(int_r[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_r_reg[21] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(r[21]),
        .Q(int_r[21]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_r_reg[21]_i_1 
       (.CI(\int_r_reg[19]_i_1_n_0 ),
        .CO({\NLW_int_r_reg[21]_i_1_CO_UNCONNECTED [3:1],\int_r_reg[21]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_int_r_reg[21]_i_1_O_UNCONNECTED [3:2],r[21:20]}),
        .S({1'b0,1'b0,\int_r_reg[21]_0 [21:20]}));
  FDRE #(
    .INIT(1'b0)) 
    \int_r_reg[2] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(r[2]),
        .Q(int_r[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_r_reg[3] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(r[3]),
        .Q(int_r[3]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_r_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\int_r_reg[3]_i_1_n_0 ,\int_r_reg[3]_i_1_n_1 ,\int_r_reg[3]_i_1_n_2 ,\int_r_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\int_r_reg[21]_0 [0]}),
        .O(r[3:0]),
        .S({\int_r_reg[21]_0 [3:1],\int_r[3]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \int_r_reg[4] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(r[4]),
        .Q(int_r[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_r_reg[5] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(r[5]),
        .Q(int_r[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_r_reg[6] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(r[6]),
        .Q(int_r[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_r_reg[7] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(r[7]),
        .Q(int_r[7]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_r_reg[7]_i_1 
       (.CI(\int_r_reg[3]_i_1_n_0 ),
        .CO({\int_r_reg[7]_i_1_n_0 ,\int_r_reg[7]_i_1_n_1 ,\int_r_reg[7]_i_1_n_2 ,\int_r_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r[7:4]),
        .S(\int_r_reg[21]_0 [7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \int_r_reg[8] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(r[8]),
        .Q(int_r[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_r_reg[9] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(r[9]),
        .Q(int_r[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'hBFFFFFFFAAAAAAAA)) 
    int_task_ap_done_i_1
       (.I0(task_ap_done),
        .I1(int_task_ap_done_i_3_n_0),
        .I2(s_axi_control_ARVALID),
        .I3(\FSM_onehot_rstate_reg[1]_0 ),
        .I4(int_task_ap_done_i_4_n_0),
        .I5(int_task_ap_done),
        .O(int_task_ap_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h02FF0200)) 
    int_task_ap_done_i_2
       (.I0(Q[0]),
        .I1(ap_start),
        .I2(p_6_in[2]),
        .I3(auto_restart_status_reg_n_0),
        .I4(Q[2]),
        .O(task_ap_done));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h01)) 
    int_task_ap_done_i_3
       (.I0(s_axi_control_ARADDR[0]),
        .I1(s_axi_control_ARADDR[1]),
        .I2(s_axi_control_ARADDR[3]),
        .O(int_task_ap_done_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h01)) 
    int_task_ap_done_i_4
       (.I0(s_axi_control_ARADDR[4]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[5]),
        .O(int_task_ap_done_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_task_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_task_ap_done_i_1_n_0),
        .Q(int_task_ap_done),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \int_theta[11]_i_2 
       (.I0(\int_theta_reg[21]_0 [11]),
        .O(\int_theta[11]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_theta[11]_i_3 
       (.I0(\int_theta_reg[21]_0 [10]),
        .O(\int_theta[11]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_theta[11]_i_4 
       (.I0(\int_theta_reg[21]_0 [9]),
        .O(\int_theta[11]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_theta[11]_i_5 
       (.I0(\int_theta_reg[21]_0 [8]),
        .O(\int_theta[11]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_theta[15]_i_2 
       (.I0(\int_theta_reg[21]_0 [15]),
        .O(\int_theta[15]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_theta[15]_i_3 
       (.I0(\int_theta_reg[21]_0 [14]),
        .O(\int_theta[15]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_theta[15]_i_4 
       (.I0(\int_theta_reg[21]_0 [13]),
        .O(\int_theta[15]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_theta[15]_i_5 
       (.I0(\int_theta_reg[21]_0 [12]),
        .O(\int_theta[15]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_theta[19]_i_2 
       (.I0(\int_theta_reg[21]_0 [19]),
        .O(\int_theta[19]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_theta[19]_i_3 
       (.I0(\int_theta_reg[21]_0 [18]),
        .O(\int_theta[19]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_theta[19]_i_4 
       (.I0(\int_theta_reg[21]_0 [17]),
        .O(\int_theta[19]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_theta[19]_i_5 
       (.I0(\int_theta_reg[21]_0 [16]),
        .O(\int_theta[19]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_theta[21]_i_2 
       (.I0(\int_theta_reg[21]_0 [21]),
        .O(\int_theta[21]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_theta[21]_i_3 
       (.I0(\int_theta_reg[21]_0 [20]),
        .O(\int_theta[21]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_theta[3]_i_2 
       (.I0(\int_theta_reg[21]_0 [3]),
        .O(\int_theta[3]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_theta[3]_i_3 
       (.I0(\int_theta_reg[21]_0 [2]),
        .O(\int_theta[3]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_theta[3]_i_4 
       (.I0(\int_theta_reg[21]_0 [1]),
        .O(\int_theta[3]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_theta[7]_i_2 
       (.I0(\int_theta_reg[21]_0 [7]),
        .O(\int_theta[7]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_theta[7]_i_3 
       (.I0(\int_theta_reg[21]_0 [6]),
        .O(\int_theta[7]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_theta[7]_i_4 
       (.I0(\int_theta_reg[21]_0 [5]),
        .O(\int_theta[7]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_theta[7]_i_5 
       (.I0(\int_theta_reg[21]_0 [4]),
        .O(\int_theta[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFF0000)) 
    int_theta_ap_vld_i_1
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(int_r_ap_vld_i_2_n_0),
        .I3(s_axi_control_ARADDR[4]),
        .I4(Q[2]),
        .I5(int_theta_ap_vld),
        .O(int_theta_ap_vld_i_1_n_0));
  FDRE int_theta_ap_vld_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_theta_ap_vld_i_1_n_0),
        .Q(int_theta_ap_vld),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_theta_reg[0] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(theta[0]),
        .Q(int_theta[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_theta_reg[10] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(theta[10]),
        .Q(int_theta[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_theta_reg[11] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(theta[11]),
        .Q(int_theta[11]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_theta_reg[11]_i_1 
       (.CI(\int_theta_reg[7]_i_1_n_0 ),
        .CO({\int_theta_reg[11]_i_1_n_0 ,\int_theta_reg[11]_i_1_n_1 ,\int_theta_reg[11]_i_1_n_2 ,\int_theta_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(theta[11:8]),
        .S({\int_theta[11]_i_2_n_0 ,\int_theta[11]_i_3_n_0 ,\int_theta[11]_i_4_n_0 ,\int_theta[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \int_theta_reg[12] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(theta[12]),
        .Q(int_theta[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_theta_reg[13] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(theta[13]),
        .Q(int_theta[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_theta_reg[14] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(theta[14]),
        .Q(int_theta[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_theta_reg[15] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(theta[15]),
        .Q(int_theta[15]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_theta_reg[15]_i_1 
       (.CI(\int_theta_reg[11]_i_1_n_0 ),
        .CO({\int_theta_reg[15]_i_1_n_0 ,\int_theta_reg[15]_i_1_n_1 ,\int_theta_reg[15]_i_1_n_2 ,\int_theta_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(theta[15:12]),
        .S({\int_theta[15]_i_2_n_0 ,\int_theta[15]_i_3_n_0 ,\int_theta[15]_i_4_n_0 ,\int_theta[15]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \int_theta_reg[16] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(theta[16]),
        .Q(int_theta[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_theta_reg[17] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(theta[17]),
        .Q(int_theta[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_theta_reg[18] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(theta[18]),
        .Q(int_theta[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_theta_reg[19] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(theta[19]),
        .Q(int_theta[19]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_theta_reg[19]_i_1 
       (.CI(\int_theta_reg[15]_i_1_n_0 ),
        .CO({\int_theta_reg[19]_i_1_n_0 ,\int_theta_reg[19]_i_1_n_1 ,\int_theta_reg[19]_i_1_n_2 ,\int_theta_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(theta[19:16]),
        .S({\int_theta[19]_i_2_n_0 ,\int_theta[19]_i_3_n_0 ,\int_theta[19]_i_4_n_0 ,\int_theta[19]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \int_theta_reg[1] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(theta[1]),
        .Q(int_theta[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_theta_reg[20] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(theta[20]),
        .Q(int_theta[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_theta_reg[21] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(theta[21]),
        .Q(int_theta[21]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_theta_reg[21]_i_1 
       (.CI(\int_theta_reg[19]_i_1_n_0 ),
        .CO({\NLW_int_theta_reg[21]_i_1_CO_UNCONNECTED [3:1],\int_theta_reg[21]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_int_theta_reg[21]_i_1_O_UNCONNECTED [3:2],theta[21:20]}),
        .S({1'b0,1'b0,\int_theta[21]_i_2_n_0 ,\int_theta[21]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \int_theta_reg[2] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(theta[2]),
        .Q(int_theta[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_theta_reg[3] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(theta[3]),
        .Q(int_theta[3]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_theta_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\int_theta_reg[3]_i_1_n_0 ,\int_theta_reg[3]_i_1_n_1 ,\int_theta_reg[3]_i_1_n_2 ,\int_theta_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O(theta[3:0]),
        .S({\int_theta[3]_i_2_n_0 ,\int_theta[3]_i_3_n_0 ,\int_theta[3]_i_4_n_0 ,\int_theta_reg[21]_0 [0]}));
  FDRE #(
    .INIT(1'b0)) 
    \int_theta_reg[4] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(theta[4]),
        .Q(int_theta[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_theta_reg[5] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(theta[5]),
        .Q(int_theta[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_theta_reg[6] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(theta[6]),
        .Q(int_theta[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_theta_reg[7] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(theta[7]),
        .Q(int_theta[7]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_theta_reg[7]_i_1 
       (.CI(\int_theta_reg[3]_i_1_n_0 ),
        .CO({\int_theta_reg[7]_i_1_n_0 ,\int_theta_reg[7]_i_1_n_1 ,\int_theta_reg[7]_i_1_n_2 ,\int_theta_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(theta[7:4]),
        .S({\int_theta[7]_i_2_n_0 ,\int_theta[7]_i_3_n_0 ,\int_theta[7]_i_4_n_0 ,\int_theta[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \int_theta_reg[8] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(theta[8]),
        .Q(int_theta[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_theta_reg[9] 
       (.C(ap_clk),
        .CE(Q[2]),
        .D(theta[9]),
        .Q(int_theta[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(x[0]),
        .O(int_x0[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(x[10]),
        .O(int_x0[10]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(x[11]),
        .O(int_x0[11]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(x[12]),
        .O(int_x0[12]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(x[13]),
        .O(int_x0[13]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x[14]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(x[14]),
        .O(int_x0[14]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x[15]_i_1 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(x[15]),
        .O(int_x0[15]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x[16]_i_1 
       (.I0(s_axi_control_WDATA[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(x[16]),
        .O(int_x0[16]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x[17]_i_1 
       (.I0(s_axi_control_WDATA[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(x[17]),
        .O(int_x0[17]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x[18]_i_1 
       (.I0(s_axi_control_WDATA[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(x[18]),
        .O(int_x0[18]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x[19]_i_1 
       (.I0(s_axi_control_WDATA[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(x[19]),
        .O(int_x0[19]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(x[1]),
        .O(int_x0[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x[20]_i_1 
       (.I0(s_axi_control_WDATA[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(x[20]),
        .O(int_x0[20]));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \int_x[21]_i_1 
       (.I0(s_axi_control_WVALID),
        .I1(\FSM_onehot_wstate_reg[2]_0 ),
        .I2(\waddr_reg_n_0_[5] ),
        .I3(\waddr_reg_n_0_[4] ),
        .I4(\waddr_reg_n_0_[2] ),
        .I5(\waddr_reg_n_0_[3] ),
        .O(\int_x[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x[21]_i_2 
       (.I0(s_axi_control_WDATA[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(x[21]),
        .O(int_x0[21]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(x[2]),
        .O(int_x0[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(x[3]),
        .O(int_x0[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(x[4]),
        .O(int_x0[4]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(x[5]),
        .O(int_x0[5]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(x[6]),
        .O(int_x0[6]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x[7]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(x[7]),
        .O(int_x0[7]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(x[8]),
        .O(int_x0[8]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_x[9]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(x[9]),
        .O(int_x0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_reg[0] 
       (.C(ap_clk),
        .CE(\int_x[21]_i_1_n_0 ),
        .D(int_x0[0]),
        .Q(x[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_reg[10] 
       (.C(ap_clk),
        .CE(\int_x[21]_i_1_n_0 ),
        .D(int_x0[10]),
        .Q(x[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_reg[11] 
       (.C(ap_clk),
        .CE(\int_x[21]_i_1_n_0 ),
        .D(int_x0[11]),
        .Q(x[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_reg[12] 
       (.C(ap_clk),
        .CE(\int_x[21]_i_1_n_0 ),
        .D(int_x0[12]),
        .Q(x[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_reg[13] 
       (.C(ap_clk),
        .CE(\int_x[21]_i_1_n_0 ),
        .D(int_x0[13]),
        .Q(x[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_reg[14] 
       (.C(ap_clk),
        .CE(\int_x[21]_i_1_n_0 ),
        .D(int_x0[14]),
        .Q(x[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_reg[15] 
       (.C(ap_clk),
        .CE(\int_x[21]_i_1_n_0 ),
        .D(int_x0[15]),
        .Q(x[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_reg[16] 
       (.C(ap_clk),
        .CE(\int_x[21]_i_1_n_0 ),
        .D(int_x0[16]),
        .Q(x[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_reg[17] 
       (.C(ap_clk),
        .CE(\int_x[21]_i_1_n_0 ),
        .D(int_x0[17]),
        .Q(x[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_reg[18] 
       (.C(ap_clk),
        .CE(\int_x[21]_i_1_n_0 ),
        .D(int_x0[18]),
        .Q(x[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_reg[19] 
       (.C(ap_clk),
        .CE(\int_x[21]_i_1_n_0 ),
        .D(int_x0[19]),
        .Q(x[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_reg[1] 
       (.C(ap_clk),
        .CE(\int_x[21]_i_1_n_0 ),
        .D(int_x0[1]),
        .Q(x[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_reg[20] 
       (.C(ap_clk),
        .CE(\int_x[21]_i_1_n_0 ),
        .D(int_x0[20]),
        .Q(x[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_reg[21] 
       (.C(ap_clk),
        .CE(\int_x[21]_i_1_n_0 ),
        .D(int_x0[21]),
        .Q(x[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_reg[2] 
       (.C(ap_clk),
        .CE(\int_x[21]_i_1_n_0 ),
        .D(int_x0[2]),
        .Q(x[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_reg[3] 
       (.C(ap_clk),
        .CE(\int_x[21]_i_1_n_0 ),
        .D(int_x0[3]),
        .Q(x[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_reg[4] 
       (.C(ap_clk),
        .CE(\int_x[21]_i_1_n_0 ),
        .D(int_x0[4]),
        .Q(x[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_reg[5] 
       (.C(ap_clk),
        .CE(\int_x[21]_i_1_n_0 ),
        .D(int_x0[5]),
        .Q(x[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_reg[6] 
       (.C(ap_clk),
        .CE(\int_x[21]_i_1_n_0 ),
        .D(int_x0[6]),
        .Q(x[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_reg[7] 
       (.C(ap_clk),
        .CE(\int_x[21]_i_1_n_0 ),
        .D(int_x0[7]),
        .Q(x[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_reg[8] 
       (.C(ap_clk),
        .CE(\int_x[21]_i_1_n_0 ),
        .D(int_x0[8]),
        .Q(x[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_x_reg[9] 
       (.C(ap_clk),
        .CE(\int_x[21]_i_1_n_0 ),
        .D(int_x0[9]),
        .Q(x[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_y[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(y[0]),
        .O(int_y0[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_y[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(y[10]),
        .O(int_y0[10]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_y[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(y[11]),
        .O(int_y0[11]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_y[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(y[12]),
        .O(int_y0[12]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_y[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(y[13]),
        .O(int_y0[13]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_y[14]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(y[14]),
        .O(int_y0[14]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_y[15]_i_1 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(y[15]),
        .O(int_y0[15]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_y[16]_i_1 
       (.I0(s_axi_control_WDATA[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(y[16]),
        .O(int_y0[16]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_y[17]_i_1 
       (.I0(s_axi_control_WDATA[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(y[17]),
        .O(int_y0[17]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_y[18]_i_1 
       (.I0(s_axi_control_WDATA[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(y[18]),
        .O(int_y0[18]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_y[19]_i_1 
       (.I0(s_axi_control_WDATA[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(y[19]),
        .O(int_y0[19]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_y[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(y[1]),
        .O(int_y0[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_y[20]_i_1 
       (.I0(s_axi_control_WDATA[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(y[20]),
        .O(int_y0[20]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \int_y[21]_i_1 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(s_axi_control_WVALID),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(\waddr_reg_n_0_[5] ),
        .I4(\waddr_reg_n_0_[4] ),
        .I5(\waddr_reg_n_0_[2] ),
        .O(\int_y[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_y[21]_i_2 
       (.I0(s_axi_control_WDATA[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(y[21]),
        .O(int_y0[21]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_y[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(y[2]),
        .O(int_y0[2]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_y[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(y[3]),
        .O(int_y0[3]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_y[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(y[4]),
        .O(int_y0[4]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_y[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(y[5]),
        .O(int_y0[5]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_y[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(y[6]),
        .O(int_y0[6]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_y[7]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(y[7]),
        .O(int_y0[7]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_y[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(y[8]),
        .O(int_y0[8]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_y[9]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(y[9]),
        .O(int_y0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_reg[0] 
       (.C(ap_clk),
        .CE(\int_y[21]_i_1_n_0 ),
        .D(int_y0[0]),
        .Q(y[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_reg[10] 
       (.C(ap_clk),
        .CE(\int_y[21]_i_1_n_0 ),
        .D(int_y0[10]),
        .Q(y[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_reg[11] 
       (.C(ap_clk),
        .CE(\int_y[21]_i_1_n_0 ),
        .D(int_y0[11]),
        .Q(y[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_reg[12] 
       (.C(ap_clk),
        .CE(\int_y[21]_i_1_n_0 ),
        .D(int_y0[12]),
        .Q(y[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_reg[13] 
       (.C(ap_clk),
        .CE(\int_y[21]_i_1_n_0 ),
        .D(int_y0[13]),
        .Q(y[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_reg[14] 
       (.C(ap_clk),
        .CE(\int_y[21]_i_1_n_0 ),
        .D(int_y0[14]),
        .Q(y[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_reg[15] 
       (.C(ap_clk),
        .CE(\int_y[21]_i_1_n_0 ),
        .D(int_y0[15]),
        .Q(y[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_reg[16] 
       (.C(ap_clk),
        .CE(\int_y[21]_i_1_n_0 ),
        .D(int_y0[16]),
        .Q(y[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_reg[17] 
       (.C(ap_clk),
        .CE(\int_y[21]_i_1_n_0 ),
        .D(int_y0[17]),
        .Q(y[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_reg[18] 
       (.C(ap_clk),
        .CE(\int_y[21]_i_1_n_0 ),
        .D(int_y0[18]),
        .Q(y[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_reg[19] 
       (.C(ap_clk),
        .CE(\int_y[21]_i_1_n_0 ),
        .D(int_y0[19]),
        .Q(y[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_reg[1] 
       (.C(ap_clk),
        .CE(\int_y[21]_i_1_n_0 ),
        .D(int_y0[1]),
        .Q(y[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_reg[20] 
       (.C(ap_clk),
        .CE(\int_y[21]_i_1_n_0 ),
        .D(int_y0[20]),
        .Q(y[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_reg[21] 
       (.C(ap_clk),
        .CE(\int_y[21]_i_1_n_0 ),
        .D(int_y0[21]),
        .Q(y[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_reg[2] 
       (.C(ap_clk),
        .CE(\int_y[21]_i_1_n_0 ),
        .D(int_y0[2]),
        .Q(y[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_reg[3] 
       (.C(ap_clk),
        .CE(\int_y[21]_i_1_n_0 ),
        .D(int_y0[3]),
        .Q(y[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_reg[4] 
       (.C(ap_clk),
        .CE(\int_y[21]_i_1_n_0 ),
        .D(int_y0[4]),
        .Q(y[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_reg[5] 
       (.C(ap_clk),
        .CE(\int_y[21]_i_1_n_0 ),
        .D(int_y0[5]),
        .Q(y[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_reg[6] 
       (.C(ap_clk),
        .CE(\int_y[21]_i_1_n_0 ),
        .D(int_y0[6]),
        .Q(y[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_reg[7] 
       (.C(ap_clk),
        .CE(\int_y[21]_i_1_n_0 ),
        .D(int_y0[7]),
        .Q(y[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_reg[8] 
       (.C(ap_clk),
        .CE(\int_y[21]_i_1_n_0 ),
        .D(int_y0[8]),
        .Q(y[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_y_reg[9] 
       (.C(ap_clk),
        .CE(\int_y[21]_i_1_n_0 ),
        .D(int_y0[9]),
        .Q(y[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \rdata[0]_i_1 
       (.I0(\rdata[0]_i_2_n_0 ),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(\rdata[0]_i_3_n_0 ),
        .I4(\rdata[0]_i_4_n_0 ),
        .I5(\rdata[0]_i_5_n_0 ),
        .O(rdata[0]));
  LUT2 #(
    .INIT(4'h1)) 
    \rdata[0]_i_2 
       (.I0(s_axi_control_ARADDR[1]),
        .I1(s_axi_control_ARADDR[0]),
        .O(\rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \rdata[0]_i_3 
       (.I0(int_r_ap_vld),
        .I1(int_theta_ap_vld),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(int_r[0]),
        .I5(int_theta[0]),
        .O(\rdata[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \rdata[0]_i_4 
       (.I0(\int_ier_reg_n_0_[0] ),
        .I1(y[0]),
        .I2(\int_isr_reg_n_0_[0] ),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \rdata[0]_i_5 
       (.I0(ap_start),
        .I1(x[0]),
        .I2(int_gie_reg_n_0),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000088000000F0)) 
    \rdata[10]_i_1 
       (.I0(y[10]),
        .I1(\rdata[21]_i_3_n_0 ),
        .I2(\rdata[10]_i_2_n_0 ),
        .I3(s_axi_control_ARADDR[0]),
        .I4(s_axi_control_ARADDR[1]),
        .I5(s_axi_control_ARADDR[3]),
        .O(rdata[10]));
  LUT6 #(
    .INIT(64'h00F000AA00CC0000)) 
    \rdata[10]_i_2 
       (.I0(int_r[10]),
        .I1(x[10]),
        .I2(int_theta[10]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(s_axi_control_ARADDR[5]),
        .O(\rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000088000000F0)) 
    \rdata[11]_i_1 
       (.I0(y[11]),
        .I1(\rdata[21]_i_3_n_0 ),
        .I2(\rdata[11]_i_2_n_0 ),
        .I3(s_axi_control_ARADDR[0]),
        .I4(s_axi_control_ARADDR[1]),
        .I5(s_axi_control_ARADDR[3]),
        .O(rdata[11]));
  LUT6 #(
    .INIT(64'h00F000AA00CC0000)) 
    \rdata[11]_i_2 
       (.I0(int_r[11]),
        .I1(x[11]),
        .I2(int_theta[11]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(s_axi_control_ARADDR[5]),
        .O(\rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000088000000F0)) 
    \rdata[12]_i_1 
       (.I0(y[12]),
        .I1(\rdata[21]_i_3_n_0 ),
        .I2(\rdata[12]_i_2_n_0 ),
        .I3(s_axi_control_ARADDR[0]),
        .I4(s_axi_control_ARADDR[1]),
        .I5(s_axi_control_ARADDR[3]),
        .O(rdata[12]));
  LUT6 #(
    .INIT(64'h00F000AA00CC0000)) 
    \rdata[12]_i_2 
       (.I0(int_r[12]),
        .I1(x[12]),
        .I2(int_theta[12]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(s_axi_control_ARADDR[5]),
        .O(\rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000088000000F0)) 
    \rdata[13]_i_1 
       (.I0(y[13]),
        .I1(\rdata[21]_i_3_n_0 ),
        .I2(\rdata[13]_i_2_n_0 ),
        .I3(s_axi_control_ARADDR[0]),
        .I4(s_axi_control_ARADDR[1]),
        .I5(s_axi_control_ARADDR[3]),
        .O(rdata[13]));
  LUT6 #(
    .INIT(64'h00F000AA00CC0000)) 
    \rdata[13]_i_2 
       (.I0(int_r[13]),
        .I1(x[13]),
        .I2(int_theta[13]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(s_axi_control_ARADDR[5]),
        .O(\rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000088000000F0)) 
    \rdata[14]_i_1 
       (.I0(y[14]),
        .I1(\rdata[21]_i_3_n_0 ),
        .I2(\rdata[14]_i_2_n_0 ),
        .I3(s_axi_control_ARADDR[0]),
        .I4(s_axi_control_ARADDR[1]),
        .I5(s_axi_control_ARADDR[3]),
        .O(rdata[14]));
  LUT6 #(
    .INIT(64'h00F000AA00CC0000)) 
    \rdata[14]_i_2 
       (.I0(int_r[14]),
        .I1(x[14]),
        .I2(int_theta[14]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(s_axi_control_ARADDR[5]),
        .O(\rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000088000000F0)) 
    \rdata[15]_i_1 
       (.I0(y[15]),
        .I1(\rdata[21]_i_3_n_0 ),
        .I2(\rdata[15]_i_2_n_0 ),
        .I3(s_axi_control_ARADDR[0]),
        .I4(s_axi_control_ARADDR[1]),
        .I5(s_axi_control_ARADDR[3]),
        .O(rdata[15]));
  LUT6 #(
    .INIT(64'h00F000AA00CC0000)) 
    \rdata[15]_i_2 
       (.I0(int_r[15]),
        .I1(x[15]),
        .I2(int_theta[15]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(s_axi_control_ARADDR[5]),
        .O(\rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000088000000F0)) 
    \rdata[16]_i_1 
       (.I0(y[16]),
        .I1(\rdata[21]_i_3_n_0 ),
        .I2(\rdata[16]_i_2_n_0 ),
        .I3(s_axi_control_ARADDR[0]),
        .I4(s_axi_control_ARADDR[1]),
        .I5(s_axi_control_ARADDR[3]),
        .O(rdata[16]));
  LUT6 #(
    .INIT(64'h00F000AA00CC0000)) 
    \rdata[16]_i_2 
       (.I0(int_r[16]),
        .I1(x[16]),
        .I2(int_theta[16]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(s_axi_control_ARADDR[5]),
        .O(\rdata[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000088000000F0)) 
    \rdata[17]_i_1 
       (.I0(y[17]),
        .I1(\rdata[21]_i_3_n_0 ),
        .I2(\rdata[17]_i_2_n_0 ),
        .I3(s_axi_control_ARADDR[0]),
        .I4(s_axi_control_ARADDR[1]),
        .I5(s_axi_control_ARADDR[3]),
        .O(rdata[17]));
  LUT6 #(
    .INIT(64'h00F000AA00CC0000)) 
    \rdata[17]_i_2 
       (.I0(int_r[17]),
        .I1(x[17]),
        .I2(int_theta[17]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(s_axi_control_ARADDR[5]),
        .O(\rdata[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000088000000F0)) 
    \rdata[18]_i_1 
       (.I0(y[18]),
        .I1(\rdata[21]_i_3_n_0 ),
        .I2(\rdata[18]_i_2_n_0 ),
        .I3(s_axi_control_ARADDR[0]),
        .I4(s_axi_control_ARADDR[1]),
        .I5(s_axi_control_ARADDR[3]),
        .O(rdata[18]));
  LUT6 #(
    .INIT(64'h00F000AA00CC0000)) 
    \rdata[18]_i_2 
       (.I0(int_r[18]),
        .I1(x[18]),
        .I2(int_theta[18]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(s_axi_control_ARADDR[5]),
        .O(\rdata[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000088000000F0)) 
    \rdata[19]_i_1 
       (.I0(y[19]),
        .I1(\rdata[21]_i_3_n_0 ),
        .I2(\rdata[19]_i_2_n_0 ),
        .I3(s_axi_control_ARADDR[0]),
        .I4(s_axi_control_ARADDR[1]),
        .I5(s_axi_control_ARADDR[3]),
        .O(rdata[19]));
  LUT6 #(
    .INIT(64'h00F000AA00CC0000)) 
    \rdata[19]_i_2 
       (.I0(int_r[19]),
        .I1(x[19]),
        .I2(int_theta[19]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(s_axi_control_ARADDR[5]),
        .O(\rdata[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000022000000F0)) 
    \rdata[1]_i_1 
       (.I0(\rdata[1]_i_2_n_0 ),
        .I1(s_axi_control_ARADDR[5]),
        .I2(\rdata[1]_i_3_n_0 ),
        .I3(s_axi_control_ARADDR[0]),
        .I4(s_axi_control_ARADDR[1]),
        .I5(s_axi_control_ARADDR[3]),
        .O(rdata[1]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \rdata[1]_i_2 
       (.I0(\int_ier_reg_n_0_[1] ),
        .I1(y[1]),
        .I2(\int_isr_reg_n_0_[1] ),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0C080400)) 
    \rdata[1]_i_3 
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(x[1]),
        .I4(int_theta[1]),
        .I5(\rdata[1]_i_4_n_0 ),
        .O(\rdata[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h000A000C)) 
    \rdata[1]_i_4 
       (.I0(int_r[1]),
        .I1(int_task_ap_done),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[5]),
        .O(\rdata[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000088000000F0)) 
    \rdata[20]_i_1 
       (.I0(y[20]),
        .I1(\rdata[21]_i_3_n_0 ),
        .I2(\rdata[20]_i_2_n_0 ),
        .I3(s_axi_control_ARADDR[0]),
        .I4(s_axi_control_ARADDR[1]),
        .I5(s_axi_control_ARADDR[3]),
        .O(rdata[20]));
  LUT6 #(
    .INIT(64'h00F000AA00CC0000)) 
    \rdata[20]_i_2 
       (.I0(int_r[20]),
        .I1(x[20]),
        .I2(int_theta[20]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(s_axi_control_ARADDR[5]),
        .O(\rdata[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rdata[21]_i_1 
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_control_ARVALID),
        .O(ar_hs));
  LUT6 #(
    .INIT(64'h00000088000000F0)) 
    \rdata[21]_i_2 
       (.I0(y[21]),
        .I1(\rdata[21]_i_3_n_0 ),
        .I2(\rdata[21]_i_4_n_0 ),
        .I3(s_axi_control_ARADDR[0]),
        .I4(s_axi_control_ARADDR[1]),
        .I5(s_axi_control_ARADDR[3]),
        .O(rdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \rdata[21]_i_3 
       (.I0(s_axi_control_ARADDR[2]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[5]),
        .O(\rdata[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00F000AA00CC0000)) 
    \rdata[21]_i_4 
       (.I0(int_r[21]),
        .I1(x[21]),
        .I2(int_theta[21]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(s_axi_control_ARADDR[5]),
        .O(\rdata[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000088000000F0)) 
    \rdata[2]_i_1 
       (.I0(y[2]),
        .I1(\rdata[21]_i_3_n_0 ),
        .I2(\rdata[2]_i_2_n_0 ),
        .I3(s_axi_control_ARADDR[0]),
        .I4(s_axi_control_ARADDR[1]),
        .I5(s_axi_control_ARADDR[3]),
        .O(rdata[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF0C080400)) 
    \rdata[2]_i_2 
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(x[2]),
        .I4(int_theta[2]),
        .I5(\rdata[2]_i_3_n_0 ),
        .O(\rdata[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h000A000C)) 
    \rdata[2]_i_3 
       (.I0(int_r[2]),
        .I1(p_6_in[2]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[5]),
        .O(\rdata[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000088000000F0)) 
    \rdata[3]_i_1 
       (.I0(y[3]),
        .I1(\rdata[21]_i_3_n_0 ),
        .I2(\rdata[3]_i_2_n_0 ),
        .I3(s_axi_control_ARADDR[0]),
        .I4(s_axi_control_ARADDR[1]),
        .I5(s_axi_control_ARADDR[3]),
        .O(rdata[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFF0C080400)) 
    \rdata[3]_i_2 
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(x[3]),
        .I4(int_theta[3]),
        .I5(\rdata[3]_i_3_n_0 ),
        .O(\rdata[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \rdata[3]_i_3 
       (.I0(int_r[3]),
        .I1(int_ap_ready),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[5]),
        .O(\rdata[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000088000000F0)) 
    \rdata[4]_i_1 
       (.I0(y[4]),
        .I1(\rdata[21]_i_3_n_0 ),
        .I2(\rdata[4]_i_2_n_0 ),
        .I3(s_axi_control_ARADDR[0]),
        .I4(s_axi_control_ARADDR[1]),
        .I5(s_axi_control_ARADDR[3]),
        .O(rdata[4]));
  LUT6 #(
    .INIT(64'h00F000AA00CC0000)) 
    \rdata[4]_i_2 
       (.I0(int_r[4]),
        .I1(x[4]),
        .I2(int_theta[4]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(s_axi_control_ARADDR[5]),
        .O(\rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000088000000F0)) 
    \rdata[5]_i_1 
       (.I0(y[5]),
        .I1(\rdata[21]_i_3_n_0 ),
        .I2(\rdata[5]_i_2_n_0 ),
        .I3(s_axi_control_ARADDR[0]),
        .I4(s_axi_control_ARADDR[1]),
        .I5(s_axi_control_ARADDR[3]),
        .O(rdata[5]));
  LUT6 #(
    .INIT(64'h00F000AA00CC0000)) 
    \rdata[5]_i_2 
       (.I0(int_r[5]),
        .I1(x[5]),
        .I2(int_theta[5]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(s_axi_control_ARADDR[5]),
        .O(\rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000088000000F0)) 
    \rdata[6]_i_1 
       (.I0(y[6]),
        .I1(\rdata[21]_i_3_n_0 ),
        .I2(\rdata[6]_i_2_n_0 ),
        .I3(s_axi_control_ARADDR[0]),
        .I4(s_axi_control_ARADDR[1]),
        .I5(s_axi_control_ARADDR[3]),
        .O(rdata[6]));
  LUT6 #(
    .INIT(64'h00F000AA00CC0000)) 
    \rdata[6]_i_2 
       (.I0(int_r[6]),
        .I1(x[6]),
        .I2(int_theta[6]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(s_axi_control_ARADDR[5]),
        .O(\rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000088000000F0)) 
    \rdata[7]_i_1 
       (.I0(y[7]),
        .I1(\rdata[21]_i_3_n_0 ),
        .I2(\rdata[7]_i_2_n_0 ),
        .I3(s_axi_control_ARADDR[0]),
        .I4(s_axi_control_ARADDR[1]),
        .I5(s_axi_control_ARADDR[3]),
        .O(rdata[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFF0C080400)) 
    \rdata[7]_i_2 
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(x[7]),
        .I4(int_theta[7]),
        .I5(\rdata[7]_i_3_n_0 ),
        .O(\rdata[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \rdata[7]_i_3 
       (.I0(int_r[7]),
        .I1(p_6_in[7]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[5]),
        .O(\rdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000088000000F0)) 
    \rdata[8]_i_1 
       (.I0(y[8]),
        .I1(\rdata[21]_i_3_n_0 ),
        .I2(\rdata[8]_i_2_n_0 ),
        .I3(s_axi_control_ARADDR[0]),
        .I4(s_axi_control_ARADDR[1]),
        .I5(s_axi_control_ARADDR[3]),
        .O(rdata[8]));
  LUT6 #(
    .INIT(64'h00F000AA00CC0000)) 
    \rdata[8]_i_2 
       (.I0(int_r[8]),
        .I1(x[8]),
        .I2(int_theta[8]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(s_axi_control_ARADDR[5]),
        .O(\rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000088000000F0)) 
    \rdata[9]_i_1 
       (.I0(y[9]),
        .I1(\rdata[21]_i_3_n_0 ),
        .I2(\rdata[9]_i_2_n_0 ),
        .I3(s_axi_control_ARADDR[0]),
        .I4(s_axi_control_ARADDR[1]),
        .I5(s_axi_control_ARADDR[3]),
        .O(rdata[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFF0C080400)) 
    \rdata[9]_i_2 
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(x[9]),
        .I4(int_theta[9]),
        .I5(\rdata[9]_i_3_n_0 ),
        .O(\rdata[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \rdata[9]_i_3 
       (.I0(int_r[9]),
        .I1(interrupt),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[5]),
        .O(\rdata[9]_i_3_n_0 ));
  FDRE \rdata_reg[0] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[0]),
        .Q(s_axi_control_RDATA[0]),
        .R(1'b0));
  FDRE \rdata_reg[10] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[10]),
        .Q(s_axi_control_RDATA[10]),
        .R(1'b0));
  FDRE \rdata_reg[11] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[11]),
        .Q(s_axi_control_RDATA[11]),
        .R(1'b0));
  FDRE \rdata_reg[12] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[12]),
        .Q(s_axi_control_RDATA[12]),
        .R(1'b0));
  FDRE \rdata_reg[13] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[13]),
        .Q(s_axi_control_RDATA[13]),
        .R(1'b0));
  FDRE \rdata_reg[14] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[14]),
        .Q(s_axi_control_RDATA[14]),
        .R(1'b0));
  FDRE \rdata_reg[15] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[15]),
        .Q(s_axi_control_RDATA[15]),
        .R(1'b0));
  FDRE \rdata_reg[16] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[16]),
        .Q(s_axi_control_RDATA[16]),
        .R(1'b0));
  FDRE \rdata_reg[17] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[17]),
        .Q(s_axi_control_RDATA[17]),
        .R(1'b0));
  FDRE \rdata_reg[18] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[18]),
        .Q(s_axi_control_RDATA[18]),
        .R(1'b0));
  FDRE \rdata_reg[19] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[19]),
        .Q(s_axi_control_RDATA[19]),
        .R(1'b0));
  FDRE \rdata_reg[1] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[1]),
        .Q(s_axi_control_RDATA[1]),
        .R(1'b0));
  FDRE \rdata_reg[20] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[20]),
        .Q(s_axi_control_RDATA[20]),
        .R(1'b0));
  FDRE \rdata_reg[21] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[21]),
        .Q(s_axi_control_RDATA[21]),
        .R(1'b0));
  FDRE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[2]),
        .Q(s_axi_control_RDATA[2]),
        .R(1'b0));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[3]),
        .Q(s_axi_control_RDATA[3]),
        .R(1'b0));
  FDRE \rdata_reg[4] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[4]),
        .Q(s_axi_control_RDATA[4]),
        .R(1'b0));
  FDRE \rdata_reg[5] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[5]),
        .Q(s_axi_control_RDATA[5]),
        .R(1'b0));
  FDRE \rdata_reg[6] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[6]),
        .Q(s_axi_control_RDATA[6]),
        .R(1'b0));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[7]),
        .Q(s_axi_control_RDATA[7]),
        .R(1'b0));
  FDRE \rdata_reg[8] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[8]),
        .Q(s_axi_control_RDATA[8]),
        .R(1'b0));
  FDRE \rdata_reg[9] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[9]),
        .Q(s_axi_control_RDATA[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \select_ln75_reg_224[2]_i_1 
       (.I0(select_ln75_reg_224[0]),
        .I1(y[21]),
        .I2(Q[0]),
        .O(\select_ln75_reg_224_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h3A)) 
    \select_ln75_reg_224[8]_i_1 
       (.I0(select_ln75_reg_224[1]),
        .I1(y[21]),
        .I2(Q[0]),
        .O(\select_ln75_reg_224_reg[8] ));
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[5]_i_1 
       (.I0(\FSM_onehot_wstate_reg[1]_0 ),
        .I1(s_axi_control_AWVALID),
        .O(waddr));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[0]),
        .Q(\waddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[1]),
        .Q(\waddr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \waddr_reg[4] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[2]),
        .Q(\waddr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \waddr_reg[5] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[3]),
        .Q(\waddr_reg_n_0_[5] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    \x_2_reg_234[11]_i_2 
       (.I0(y[21]),
        .I1(x[11]),
        .O(\x_2_reg_234[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_2_reg_234[11]_i_3 
       (.I0(y[21]),
        .I1(x[10]),
        .O(\x_2_reg_234[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_2_reg_234[11]_i_4 
       (.I0(y[21]),
        .I1(x[9]),
        .O(\x_2_reg_234[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_2_reg_234[11]_i_5 
       (.I0(y[21]),
        .I1(x[8]),
        .O(\x_2_reg_234[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_2_reg_234[15]_i_2 
       (.I0(y[21]),
        .I1(x[15]),
        .O(\x_2_reg_234[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_2_reg_234[15]_i_3 
       (.I0(y[21]),
        .I1(x[14]),
        .O(\x_2_reg_234[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_2_reg_234[15]_i_4 
       (.I0(y[21]),
        .I1(x[13]),
        .O(\x_2_reg_234[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_2_reg_234[15]_i_5 
       (.I0(y[21]),
        .I1(x[12]),
        .O(\x_2_reg_234[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_2_reg_234[19]_i_2 
       (.I0(y[21]),
        .I1(x[19]),
        .O(\x_2_reg_234[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_2_reg_234[19]_i_3 
       (.I0(y[21]),
        .I1(x[18]),
        .O(\x_2_reg_234[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_2_reg_234[19]_i_4 
       (.I0(y[21]),
        .I1(x[17]),
        .O(\x_2_reg_234[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_2_reg_234[19]_i_5 
       (.I0(y[21]),
        .I1(x[16]),
        .O(\x_2_reg_234[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_2_reg_234[21]_i_2 
       (.I0(y[21]),
        .I1(x[21]),
        .O(\x_2_reg_234[21]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_2_reg_234[21]_i_3 
       (.I0(y[21]),
        .I1(x[20]),
        .O(\x_2_reg_234[21]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x_2_reg_234[3]_i_2 
       (.I0(y[21]),
        .O(\x_2_reg_234[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_2_reg_234[3]_i_3 
       (.I0(y[21]),
        .I1(x[3]),
        .O(\x_2_reg_234[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_2_reg_234[3]_i_4 
       (.I0(y[21]),
        .I1(x[2]),
        .O(\x_2_reg_234[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_2_reg_234[3]_i_5 
       (.I0(y[21]),
        .I1(x[1]),
        .O(\x_2_reg_234[3]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \x_2_reg_234[3]_i_6 
       (.I0(x[0]),
        .O(\x_2_reg_234[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_2_reg_234[7]_i_2 
       (.I0(y[21]),
        .I1(x[7]),
        .O(\x_2_reg_234[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_2_reg_234[7]_i_3 
       (.I0(y[21]),
        .I1(x[6]),
        .O(\x_2_reg_234[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_2_reg_234[7]_i_4 
       (.I0(y[21]),
        .I1(x[5]),
        .O(\x_2_reg_234[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \x_2_reg_234[7]_i_5 
       (.I0(y[21]),
        .I1(x[4]),
        .O(\x_2_reg_234[7]_i_5_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \x_2_reg_234_reg[11]_i_1 
       (.CI(\x_2_reg_234_reg[7]_i_1_n_0 ),
        .CO({\x_2_reg_234_reg[11]_i_1_n_0 ,\x_2_reg_234_reg[11]_i_1_n_1 ,\x_2_reg_234_reg[11]_i_1_n_2 ,\x_2_reg_234_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\int_y_reg[21]_1 [11:8]),
        .S({\x_2_reg_234[11]_i_2_n_0 ,\x_2_reg_234[11]_i_3_n_0 ,\x_2_reg_234[11]_i_4_n_0 ,\x_2_reg_234[11]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \x_2_reg_234_reg[15]_i_1 
       (.CI(\x_2_reg_234_reg[11]_i_1_n_0 ),
        .CO({\x_2_reg_234_reg[15]_i_1_n_0 ,\x_2_reg_234_reg[15]_i_1_n_1 ,\x_2_reg_234_reg[15]_i_1_n_2 ,\x_2_reg_234_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\int_y_reg[21]_1 [15:12]),
        .S({\x_2_reg_234[15]_i_2_n_0 ,\x_2_reg_234[15]_i_3_n_0 ,\x_2_reg_234[15]_i_4_n_0 ,\x_2_reg_234[15]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \x_2_reg_234_reg[19]_i_1 
       (.CI(\x_2_reg_234_reg[15]_i_1_n_0 ),
        .CO({\x_2_reg_234_reg[19]_i_1_n_0 ,\x_2_reg_234_reg[19]_i_1_n_1 ,\x_2_reg_234_reg[19]_i_1_n_2 ,\x_2_reg_234_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\int_y_reg[21]_1 [19:16]),
        .S({\x_2_reg_234[19]_i_2_n_0 ,\x_2_reg_234[19]_i_3_n_0 ,\x_2_reg_234[19]_i_4_n_0 ,\x_2_reg_234[19]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \x_2_reg_234_reg[21]_i_1 
       (.CI(\x_2_reg_234_reg[19]_i_1_n_0 ),
        .CO({\NLW_x_2_reg_234_reg[21]_i_1_CO_UNCONNECTED [3:1],\x_2_reg_234_reg[21]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_x_2_reg_234_reg[21]_i_1_O_UNCONNECTED [3:2],\int_y_reg[21]_1 [21:20]}),
        .S({1'b0,1'b0,\x_2_reg_234[21]_i_2_n_0 ,\x_2_reg_234[21]_i_3_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \x_2_reg_234_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\x_2_reg_234_reg[3]_i_1_n_0 ,\x_2_reg_234_reg[3]_i_1_n_1 ,\x_2_reg_234_reg[3]_i_1_n_2 ,\x_2_reg_234_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\x_2_reg_234[3]_i_2_n_0 }),
        .O(\int_y_reg[21]_1 [3:0]),
        .S({\x_2_reg_234[3]_i_3_n_0 ,\x_2_reg_234[3]_i_4_n_0 ,\x_2_reg_234[3]_i_5_n_0 ,\x_2_reg_234[3]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \x_2_reg_234_reg[7]_i_1 
       (.CI(\x_2_reg_234_reg[3]_i_1_n_0 ),
        .CO({\x_2_reg_234_reg[7]_i_1_n_0 ,\x_2_reg_234_reg[7]_i_1_n_1 ,\x_2_reg_234_reg[7]_i_1_n_2 ,\x_2_reg_234_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\int_y_reg[21]_1 [7:4]),
        .S({\x_2_reg_234[7]_i_2_n_0 ,\x_2_reg_234[7]_i_3_n_0 ,\x_2_reg_234[7]_i_4_n_0 ,\x_2_reg_234[7]_i_5_n_0 }));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cordiccart2pol_cordiccart2pol_Pipeline_VITIS_LOOP_80_1
   (D,
    \theta_temp2_fu_52_reg[19]_0 ,
    grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_ready,
    E,
    \ap_CS_fsm_reg[1]_0 ,
    ap_NS_fsm1,
    ap_clk,
    SR,
    ap_rst_n,
    Q,
    grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
    \current_cos_34_fu_56_reg[21]_0 ,
    \current_sin_36_fu_60_reg[21]_0 ,
    select_ln75_reg_224);
  output [21:0]D;
  output [21:0]\theta_temp2_fu_52_reg[19]_0 ;
  output grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_ready;
  output [0:0]E;
  output [0:0]\ap_CS_fsm_reg[1]_0 ;
  output ap_NS_fsm1;
  input ap_clk;
  input [0:0]SR;
  input ap_rst_n;
  input [0:0]Q;
  input grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg;
  input [21:0]\current_cos_34_fu_56_reg[21]_0 ;
  input [21:0]\current_sin_36_fu_60_reg[21]_0 ;
  input [1:0]select_ln75_reg_224;

  wire [21:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire \_inferred__1/i__carry__0_n_0 ;
  wire \_inferred__1/i__carry__0_n_1 ;
  wire \_inferred__1/i__carry__0_n_2 ;
  wire \_inferred__1/i__carry__0_n_3 ;
  wire \_inferred__1/i__carry__1_n_0 ;
  wire \_inferred__1/i__carry__1_n_1 ;
  wire \_inferred__1/i__carry__1_n_2 ;
  wire \_inferred__1/i__carry__1_n_3 ;
  wire \_inferred__1/i__carry__2_n_0 ;
  wire \_inferred__1/i__carry__2_n_1 ;
  wire \_inferred__1/i__carry__2_n_2 ;
  wire \_inferred__1/i__carry__2_n_3 ;
  wire \_inferred__1/i__carry__3_n_0 ;
  wire \_inferred__1/i__carry__3_n_1 ;
  wire \_inferred__1/i__carry__3_n_2 ;
  wire \_inferred__1/i__carry__3_n_3 ;
  wire \_inferred__1/i__carry__4_n_3 ;
  wire \_inferred__1/i__carry_n_0 ;
  wire \_inferred__1/i__carry_n_1 ;
  wire \_inferred__1/i__carry_n_2 ;
  wire \_inferred__1/i__carry_n_3 ;
  wire angles_U_n_0;
  wire angles_U_n_1;
  wire angles_U_n_10;
  wire angles_U_n_11;
  wire angles_U_n_12;
  wire angles_U_n_13;
  wire angles_U_n_14;
  wire angles_U_n_15;
  wire angles_U_n_16;
  wire angles_U_n_17;
  wire angles_U_n_18;
  wire angles_U_n_19;
  wire angles_U_n_2;
  wire angles_U_n_20;
  wire angles_U_n_21;
  wire angles_U_n_22;
  wire angles_U_n_23;
  wire angles_U_n_24;
  wire angles_U_n_25;
  wire angles_U_n_26;
  wire angles_U_n_27;
  wire angles_U_n_28;
  wire angles_U_n_29;
  wire angles_U_n_3;
  wire angles_U_n_30;
  wire angles_U_n_31;
  wire angles_U_n_32;
  wire angles_U_n_33;
  wire angles_U_n_34;
  wire angles_U_n_35;
  wire angles_U_n_36;
  wire angles_U_n_37;
  wire angles_U_n_4;
  wire angles_U_n_5;
  wire angles_U_n_6;
  wire angles_U_n_7;
  wire angles_U_n_8;
  wire angles_U_n_9;
  wire ap_CS_fsm_pp0_stage1;
  wire [0:0]\ap_CS_fsm_reg[1]_0 ;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire [1:0]ap_NS_fsm;
  wire ap_NS_fsm1;
  wire ap_clk;
  wire ap_done_reg1;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter0_reg_i_1_n_0;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_i_1_n_0;
  wire ap_loop_init_int;
  wire ap_rst_n;
  wire [20:0]cos_shift_fu_151_p2;
  wire [20:0]cos_shift_reg_305;
  wire \cos_shift_reg_305[0]_i_2_n_0 ;
  wire \cos_shift_reg_305[10]_i_2_n_0 ;
  wire \cos_shift_reg_305[11]_i_2_n_0 ;
  wire \cos_shift_reg_305[12]_i_2_n_0 ;
  wire \cos_shift_reg_305[13]_i_2_n_0 ;
  wire \cos_shift_reg_305[13]_i_3_n_0 ;
  wire \cos_shift_reg_305[14]_i_2_n_0 ;
  wire \cos_shift_reg_305[14]_i_3_n_0 ;
  wire \cos_shift_reg_305[15]_i_2_n_0 ;
  wire \cos_shift_reg_305[16]_i_2_n_0 ;
  wire \cos_shift_reg_305[17]_i_2_n_0 ;
  wire \cos_shift_reg_305[18]_i_2_n_0 ;
  wire \cos_shift_reg_305[19]_i_2_n_0 ;
  wire \cos_shift_reg_305[19]_i_3_n_0 ;
  wire \cos_shift_reg_305[1]_i_2_n_0 ;
  wire \cos_shift_reg_305[2]_i_2_n_0 ;
  wire \cos_shift_reg_305[3]_i_2_n_0 ;
  wire \cos_shift_reg_305[4]_i_2_n_0 ;
  wire \cos_shift_reg_305[5]_i_2_n_0 ;
  wire \cos_shift_reg_305[6]_i_2_n_0 ;
  wire \cos_shift_reg_305[7]_i_2_n_0 ;
  wire \cos_shift_reg_305[8]_i_2_n_0 ;
  wire \cos_shift_reg_305[9]_i_2_n_0 ;
  wire [21:0]current_cos_34_fu_56;
  wire current_cos_34_fu_560_carry__0_i_1_n_0;
  wire current_cos_34_fu_560_carry__0_i_2_n_0;
  wire current_cos_34_fu_560_carry__0_i_3_n_0;
  wire current_cos_34_fu_560_carry__0_i_4_n_0;
  wire current_cos_34_fu_560_carry__0_n_0;
  wire current_cos_34_fu_560_carry__0_n_1;
  wire current_cos_34_fu_560_carry__0_n_2;
  wire current_cos_34_fu_560_carry__0_n_3;
  wire current_cos_34_fu_560_carry__1_i_1_n_0;
  wire current_cos_34_fu_560_carry__1_i_2_n_0;
  wire current_cos_34_fu_560_carry__1_i_3_n_0;
  wire current_cos_34_fu_560_carry__1_i_4_n_0;
  wire current_cos_34_fu_560_carry__1_n_0;
  wire current_cos_34_fu_560_carry__1_n_1;
  wire current_cos_34_fu_560_carry__1_n_2;
  wire current_cos_34_fu_560_carry__1_n_3;
  wire current_cos_34_fu_560_carry__2_i_1_n_0;
  wire current_cos_34_fu_560_carry__2_i_2_n_0;
  wire current_cos_34_fu_560_carry__2_i_3_n_0;
  wire current_cos_34_fu_560_carry__2_i_4_n_0;
  wire current_cos_34_fu_560_carry__2_n_0;
  wire current_cos_34_fu_560_carry__2_n_1;
  wire current_cos_34_fu_560_carry__2_n_2;
  wire current_cos_34_fu_560_carry__2_n_3;
  wire current_cos_34_fu_560_carry__3_i_1_n_0;
  wire current_cos_34_fu_560_carry__3_i_2_n_0;
  wire current_cos_34_fu_560_carry__3_i_3_n_0;
  wire current_cos_34_fu_560_carry__3_i_4_n_0;
  wire current_cos_34_fu_560_carry__3_n_0;
  wire current_cos_34_fu_560_carry__3_n_1;
  wire current_cos_34_fu_560_carry__3_n_2;
  wire current_cos_34_fu_560_carry__3_n_3;
  wire current_cos_34_fu_560_carry__4_i_1_n_0;
  wire current_cos_34_fu_560_carry__4_n_3;
  wire current_cos_34_fu_560_carry_i_1_n_0;
  wire current_cos_34_fu_560_carry_i_2_n_0;
  wire current_cos_34_fu_560_carry_i_3_n_0;
  wire current_cos_34_fu_560_carry_i_4_n_0;
  wire current_cos_34_fu_560_carry_n_0;
  wire current_cos_34_fu_560_carry_n_1;
  wire current_cos_34_fu_560_carry_n_2;
  wire current_cos_34_fu_560_carry_n_3;
  wire current_cos_34_fu_56_0;
  wire [21:0]\current_cos_34_fu_56_reg[21]_0 ;
  wire [21:0]current_cos_34_load_reg_293;
  wire current_sin_36_fu_600_carry__0_i_1_n_0;
  wire current_sin_36_fu_600_carry__0_i_2_n_0;
  wire current_sin_36_fu_600_carry__0_i_3_n_0;
  wire current_sin_36_fu_600_carry__0_i_4_n_0;
  wire current_sin_36_fu_600_carry__0_n_0;
  wire current_sin_36_fu_600_carry__0_n_1;
  wire current_sin_36_fu_600_carry__0_n_2;
  wire current_sin_36_fu_600_carry__0_n_3;
  wire current_sin_36_fu_600_carry__0_n_4;
  wire current_sin_36_fu_600_carry__0_n_5;
  wire current_sin_36_fu_600_carry__0_n_6;
  wire current_sin_36_fu_600_carry__0_n_7;
  wire current_sin_36_fu_600_carry__1_i_1_n_0;
  wire current_sin_36_fu_600_carry__1_i_2_n_0;
  wire current_sin_36_fu_600_carry__1_i_3_n_0;
  wire current_sin_36_fu_600_carry__1_i_4_n_0;
  wire current_sin_36_fu_600_carry__1_n_0;
  wire current_sin_36_fu_600_carry__1_n_1;
  wire current_sin_36_fu_600_carry__1_n_2;
  wire current_sin_36_fu_600_carry__1_n_3;
  wire current_sin_36_fu_600_carry__1_n_4;
  wire current_sin_36_fu_600_carry__1_n_5;
  wire current_sin_36_fu_600_carry__1_n_6;
  wire current_sin_36_fu_600_carry__1_n_7;
  wire current_sin_36_fu_600_carry__2_i_1_n_0;
  wire current_sin_36_fu_600_carry__2_i_2_n_0;
  wire current_sin_36_fu_600_carry__2_i_3_n_0;
  wire current_sin_36_fu_600_carry__2_i_4_n_0;
  wire current_sin_36_fu_600_carry__2_n_0;
  wire current_sin_36_fu_600_carry__2_n_1;
  wire current_sin_36_fu_600_carry__2_n_2;
  wire current_sin_36_fu_600_carry__2_n_3;
  wire current_sin_36_fu_600_carry__2_n_4;
  wire current_sin_36_fu_600_carry__2_n_5;
  wire current_sin_36_fu_600_carry__2_n_6;
  wire current_sin_36_fu_600_carry__2_n_7;
  wire current_sin_36_fu_600_carry__3_i_1_n_0;
  wire current_sin_36_fu_600_carry__3_i_2_n_0;
  wire current_sin_36_fu_600_carry__3_i_3_n_0;
  wire current_sin_36_fu_600_carry__3_i_4_n_0;
  wire current_sin_36_fu_600_carry__3_n_0;
  wire current_sin_36_fu_600_carry__3_n_1;
  wire current_sin_36_fu_600_carry__3_n_2;
  wire current_sin_36_fu_600_carry__3_n_3;
  wire current_sin_36_fu_600_carry__3_n_4;
  wire current_sin_36_fu_600_carry__3_n_5;
  wire current_sin_36_fu_600_carry__3_n_6;
  wire current_sin_36_fu_600_carry__3_n_7;
  wire current_sin_36_fu_600_carry__4_i_1_n_0;
  wire current_sin_36_fu_600_carry__4_i_2_n_0;
  wire current_sin_36_fu_600_carry__4_n_3;
  wire current_sin_36_fu_600_carry__4_n_6;
  wire current_sin_36_fu_600_carry__4_n_7;
  wire current_sin_36_fu_600_carry_i_1_n_0;
  wire current_sin_36_fu_600_carry_i_2_n_0;
  wire current_sin_36_fu_600_carry_i_3_n_0;
  wire current_sin_36_fu_600_carry_i_4_n_0;
  wire current_sin_36_fu_600_carry_i_5_n_0;
  wire current_sin_36_fu_600_carry_n_0;
  wire current_sin_36_fu_600_carry_n_1;
  wire current_sin_36_fu_600_carry_n_2;
  wire current_sin_36_fu_600_carry_n_3;
  wire current_sin_36_fu_600_carry_n_4;
  wire current_sin_36_fu_600_carry_n_5;
  wire current_sin_36_fu_600_carry_n_6;
  wire current_sin_36_fu_600_carry_n_7;
  wire [21:0]\current_sin_36_fu_60_reg[21]_0 ;
  wire \current_sin_36_fu_60_reg_n_0_[0] ;
  wire \current_sin_36_fu_60_reg_n_0_[10] ;
  wire \current_sin_36_fu_60_reg_n_0_[11] ;
  wire \current_sin_36_fu_60_reg_n_0_[12] ;
  wire \current_sin_36_fu_60_reg_n_0_[13] ;
  wire \current_sin_36_fu_60_reg_n_0_[14] ;
  wire \current_sin_36_fu_60_reg_n_0_[15] ;
  wire \current_sin_36_fu_60_reg_n_0_[16] ;
  wire \current_sin_36_fu_60_reg_n_0_[17] ;
  wire \current_sin_36_fu_60_reg_n_0_[18] ;
  wire \current_sin_36_fu_60_reg_n_0_[19] ;
  wire \current_sin_36_fu_60_reg_n_0_[1] ;
  wire \current_sin_36_fu_60_reg_n_0_[20] ;
  wire \current_sin_36_fu_60_reg_n_0_[2] ;
  wire \current_sin_36_fu_60_reg_n_0_[3] ;
  wire \current_sin_36_fu_60_reg_n_0_[4] ;
  wire \current_sin_36_fu_60_reg_n_0_[5] ;
  wire \current_sin_36_fu_60_reg_n_0_[6] ;
  wire \current_sin_36_fu_60_reg_n_0_[7] ;
  wire \current_sin_36_fu_60_reg_n_0_[8] ;
  wire \current_sin_36_fu_60_reg_n_0_[9] ;
  wire [21:0]current_sin_36_load_reg_299;
  wire flow_control_loop_pipe_sequential_init_U_n_10;
  wire flow_control_loop_pipe_sequential_init_U_n_11;
  wire flow_control_loop_pipe_sequential_init_U_n_12;
  wire flow_control_loop_pipe_sequential_init_U_n_13;
  wire flow_control_loop_pipe_sequential_init_U_n_14;
  wire flow_control_loop_pipe_sequential_init_U_n_15;
  wire flow_control_loop_pipe_sequential_init_U_n_16;
  wire flow_control_loop_pipe_sequential_init_U_n_17;
  wire flow_control_loop_pipe_sequential_init_U_n_18;
  wire flow_control_loop_pipe_sequential_init_U_n_19;
  wire flow_control_loop_pipe_sequential_init_U_n_20;
  wire flow_control_loop_pipe_sequential_init_U_n_21;
  wire flow_control_loop_pipe_sequential_init_U_n_22;
  wire flow_control_loop_pipe_sequential_init_U_n_23;
  wire flow_control_loop_pipe_sequential_init_U_n_24;
  wire flow_control_loop_pipe_sequential_init_U_n_25;
  wire flow_control_loop_pipe_sequential_init_U_n_26;
  wire flow_control_loop_pipe_sequential_init_U_n_27;
  wire flow_control_loop_pipe_sequential_init_U_n_28;
  wire flow_control_loop_pipe_sequential_init_U_n_29;
  wire flow_control_loop_pipe_sequential_init_U_n_30;
  wire flow_control_loop_pipe_sequential_init_U_n_31;
  wire flow_control_loop_pipe_sequential_init_U_n_32;
  wire flow_control_loop_pipe_sequential_init_U_n_33;
  wire flow_control_loop_pipe_sequential_init_U_n_34;
  wire flow_control_loop_pipe_sequential_init_U_n_35;
  wire flow_control_loop_pipe_sequential_init_U_n_36;
  wire flow_control_loop_pipe_sequential_init_U_n_37;
  wire flow_control_loop_pipe_sequential_init_U_n_38;
  wire flow_control_loop_pipe_sequential_init_U_n_39;
  wire flow_control_loop_pipe_sequential_init_U_n_40;
  wire flow_control_loop_pipe_sequential_init_U_n_41;
  wire flow_control_loop_pipe_sequential_init_U_n_42;
  wire flow_control_loop_pipe_sequential_init_U_n_43;
  wire flow_control_loop_pipe_sequential_init_U_n_44;
  wire flow_control_loop_pipe_sequential_init_U_n_45;
  wire flow_control_loop_pipe_sequential_init_U_n_46;
  wire flow_control_loop_pipe_sequential_init_U_n_47;
  wire flow_control_loop_pipe_sequential_init_U_n_48;
  wire flow_control_loop_pipe_sequential_init_U_n_49;
  wire flow_control_loop_pipe_sequential_init_U_n_5;
  wire flow_control_loop_pipe_sequential_init_U_n_50;
  wire flow_control_loop_pipe_sequential_init_U_n_51;
  wire flow_control_loop_pipe_sequential_init_U_n_52;
  wire flow_control_loop_pipe_sequential_init_U_n_53;
  wire flow_control_loop_pipe_sequential_init_U_n_54;
  wire flow_control_loop_pipe_sequential_init_U_n_55;
  wire flow_control_loop_pipe_sequential_init_U_n_56;
  wire flow_control_loop_pipe_sequential_init_U_n_57;
  wire flow_control_loop_pipe_sequential_init_U_n_58;
  wire flow_control_loop_pipe_sequential_init_U_n_59;
  wire flow_control_loop_pipe_sequential_init_U_n_6;
  wire flow_control_loop_pipe_sequential_init_U_n_60;
  wire flow_control_loop_pipe_sequential_init_U_n_61;
  wire flow_control_loop_pipe_sequential_init_U_n_62;
  wire flow_control_loop_pipe_sequential_init_U_n_63;
  wire flow_control_loop_pipe_sequential_init_U_n_64;
  wire flow_control_loop_pipe_sequential_init_U_n_65;
  wire flow_control_loop_pipe_sequential_init_U_n_66;
  wire flow_control_loop_pipe_sequential_init_U_n_67;
  wire flow_control_loop_pipe_sequential_init_U_n_68;
  wire flow_control_loop_pipe_sequential_init_U_n_69;
  wire flow_control_loop_pipe_sequential_init_U_n_7;
  wire flow_control_loop_pipe_sequential_init_U_n_70;
  wire flow_control_loop_pipe_sequential_init_U_n_71;
  wire flow_control_loop_pipe_sequential_init_U_n_8;
  wire flow_control_loop_pipe_sequential_init_U_n_9;
  wire grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_ready;
  wire grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg;
  wire i1_fu_48;
  wire \i1_fu_48_reg_n_0_[0] ;
  wire \i1_fu_48_reg_n_0_[1] ;
  wire \i1_fu_48_reg_n_0_[2] ;
  wire \i1_fu_48_reg_n_0_[3] ;
  wire [3:0]i1_load_reg_287;
  wire i__carry__3_i_1_n_0;
  wire i__carry__4_i_1_n_0;
  wire i__carry__4_i_2_n_0;
  wire i__carry_i_1_n_0;
  wire [3:0]i_fu_229_p2;
  wire p_0_in;
  wire [1:0]select_ln75_reg_224;
  wire [20:0]sin_shift_fu_157_p2;
  wire [20:0]sin_shift_reg_311;
  wire \sin_shift_reg_311[0]_i_2_n_0 ;
  wire \sin_shift_reg_311[10]_i_2_n_0 ;
  wire \sin_shift_reg_311[11]_i_2_n_0 ;
  wire \sin_shift_reg_311[12]_i_2_n_0 ;
  wire \sin_shift_reg_311[13]_i_2_n_0 ;
  wire \sin_shift_reg_311[13]_i_3_n_0 ;
  wire \sin_shift_reg_311[14]_i_2_n_0 ;
  wire \sin_shift_reg_311[14]_i_3_n_0 ;
  wire \sin_shift_reg_311[15]_i_2_n_0 ;
  wire \sin_shift_reg_311[16]_i_2_n_0 ;
  wire \sin_shift_reg_311[17]_i_2_n_0 ;
  wire \sin_shift_reg_311[18]_i_2_n_0 ;
  wire \sin_shift_reg_311[19]_i_2_n_0 ;
  wire \sin_shift_reg_311[19]_i_3_n_0 ;
  wire \sin_shift_reg_311[1]_i_2_n_0 ;
  wire \sin_shift_reg_311[2]_i_2_n_0 ;
  wire \sin_shift_reg_311[3]_i_2_n_0 ;
  wire \sin_shift_reg_311[4]_i_2_n_0 ;
  wire \sin_shift_reg_311[5]_i_2_n_0 ;
  wire \sin_shift_reg_311[6]_i_2_n_0 ;
  wire \sin_shift_reg_311[7]_i_2_n_0 ;
  wire \sin_shift_reg_311[8]_i_2_n_0 ;
  wire \sin_shift_reg_311[9]_i_2_n_0 ;
  wire [21:0]\theta_temp2_fu_52_reg[19]_0 ;
  wire \theta_temp2_fu_52_reg_n_0_[0] ;
  wire \theta_temp2_fu_52_reg_n_0_[10] ;
  wire \theta_temp2_fu_52_reg_n_0_[11] ;
  wire \theta_temp2_fu_52_reg_n_0_[12] ;
  wire \theta_temp2_fu_52_reg_n_0_[13] ;
  wire \theta_temp2_fu_52_reg_n_0_[14] ;
  wire \theta_temp2_fu_52_reg_n_0_[15] ;
  wire \theta_temp2_fu_52_reg_n_0_[16] ;
  wire \theta_temp2_fu_52_reg_n_0_[17] ;
  wire \theta_temp2_fu_52_reg_n_0_[18] ;
  wire \theta_temp2_fu_52_reg_n_0_[19] ;
  wire \theta_temp2_fu_52_reg_n_0_[1] ;
  wire \theta_temp2_fu_52_reg_n_0_[20] ;
  wire \theta_temp2_fu_52_reg_n_0_[21] ;
  wire \theta_temp2_fu_52_reg_n_0_[2] ;
  wire \theta_temp2_fu_52_reg_n_0_[3] ;
  wire \theta_temp2_fu_52_reg_n_0_[4] ;
  wire \theta_temp2_fu_52_reg_n_0_[5] ;
  wire \theta_temp2_fu_52_reg_n_0_[6] ;
  wire \theta_temp2_fu_52_reg_n_0_[7] ;
  wire \theta_temp2_fu_52_reg_n_0_[8] ;
  wire \theta_temp2_fu_52_reg_n_0_[9] ;
  wire [3:1]\NLW__inferred__1/i__carry__4_CO_UNCONNECTED ;
  wire [3:2]\NLW__inferred__1/i__carry__4_O_UNCONNECTED ;
  wire [3:1]NLW_current_cos_34_fu_560_carry__4_CO_UNCONNECTED;
  wire [3:2]NLW_current_cos_34_fu_560_carry__4_O_UNCONNECTED;
  wire [3:1]NLW_current_sin_36_fu_600_carry__4_CO_UNCONNECTED;
  wire [3:2]NLW_current_sin_36_fu_600_carry__4_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__1/i__carry_n_0 ,\_inferred__1/i__carry_n_1 ,\_inferred__1/i__carry_n_2 ,\_inferred__1/i__carry_n_3 }),
        .CYINIT(\theta_temp2_fu_52_reg_n_0_[0] ),
        .DI({\theta_temp2_fu_52_reg_n_0_[3] ,\theta_temp2_fu_52_reg_n_0_[2] ,\theta_temp2_fu_52_reg_n_0_[1] ,i__carry_i_1_n_0}),
        .O(\theta_temp2_fu_52_reg[19]_0 [3:0]),
        .S({angles_U_n_0,angles_U_n_1,angles_U_n_2,angles_U_n_3}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__1/i__carry__0 
       (.CI(\_inferred__1/i__carry_n_0 ),
        .CO({\_inferred__1/i__carry__0_n_0 ,\_inferred__1/i__carry__0_n_1 ,\_inferred__1/i__carry__0_n_2 ,\_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\theta_temp2_fu_52_reg_n_0_[7] ,\theta_temp2_fu_52_reg_n_0_[6] ,\theta_temp2_fu_52_reg_n_0_[5] ,\theta_temp2_fu_52_reg_n_0_[4] }),
        .O(\theta_temp2_fu_52_reg[19]_0 [7:4]),
        .S({angles_U_n_4,angles_U_n_5,angles_U_n_6,angles_U_n_7}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__1/i__carry__1 
       (.CI(\_inferred__1/i__carry__0_n_0 ),
        .CO({\_inferred__1/i__carry__1_n_0 ,\_inferred__1/i__carry__1_n_1 ,\_inferred__1/i__carry__1_n_2 ,\_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({\theta_temp2_fu_52_reg_n_0_[11] ,\theta_temp2_fu_52_reg_n_0_[10] ,\theta_temp2_fu_52_reg_n_0_[9] ,\theta_temp2_fu_52_reg_n_0_[8] }),
        .O(\theta_temp2_fu_52_reg[19]_0 [11:8]),
        .S({angles_U_n_8,angles_U_n_9,angles_U_n_10,angles_U_n_11}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__1/i__carry__2 
       (.CI(\_inferred__1/i__carry__1_n_0 ),
        .CO({\_inferred__1/i__carry__2_n_0 ,\_inferred__1/i__carry__2_n_1 ,\_inferred__1/i__carry__2_n_2 ,\_inferred__1/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({\theta_temp2_fu_52_reg_n_0_[15] ,\theta_temp2_fu_52_reg_n_0_[14] ,\theta_temp2_fu_52_reg_n_0_[13] ,\theta_temp2_fu_52_reg_n_0_[12] }),
        .O(\theta_temp2_fu_52_reg[19]_0 [15:12]),
        .S({angles_U_n_12,angles_U_n_13,angles_U_n_14,angles_U_n_15}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__1/i__carry__3 
       (.CI(\_inferred__1/i__carry__2_n_0 ),
        .CO({\_inferred__1/i__carry__3_n_0 ,\_inferred__1/i__carry__3_n_1 ,\_inferred__1/i__carry__3_n_2 ,\_inferred__1/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({current_sin_36_load_reg_299[21],\theta_temp2_fu_52_reg_n_0_[18] ,\theta_temp2_fu_52_reg_n_0_[17] ,\theta_temp2_fu_52_reg_n_0_[16] }),
        .O(\theta_temp2_fu_52_reg[19]_0 [19:16]),
        .S({i__carry__3_i_1_n_0,angles_U_n_16,angles_U_n_17,angles_U_n_18}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__1/i__carry__4 
       (.CI(\_inferred__1/i__carry__3_n_0 ),
        .CO({\NLW__inferred__1/i__carry__4_CO_UNCONNECTED [3:1],\_inferred__1/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\theta_temp2_fu_52_reg_n_0_[19] }),
        .O({\NLW__inferred__1/i__carry__4_O_UNCONNECTED [3:2],\theta_temp2_fu_52_reg[19]_0 [21:20]}),
        .S({1'b0,1'b0,i__carry__4_i_1_n_0,i__carry__4_i_2_n_0}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cordiccart2pol_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_angles_ROM_AUTO_1R angles_U
       (.Q(ap_CS_fsm_pp0_stage1),
        .S({angles_U_n_0,angles_U_n_1,angles_U_n_2,angles_U_n_3}),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg),
        .ap_loop_init_int(ap_loop_init_int),
        .current_sin_36_load_reg_299(current_sin_36_load_reg_299[21]),
        .grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .\q0_reg[0]_0 (angles_U_n_19),
        .\q0_reg[11]_0 ({angles_U_n_8,angles_U_n_9,angles_U_n_10,angles_U_n_11}),
        .\q0_reg[15]_0 ({angles_U_n_12,angles_U_n_13,angles_U_n_14,angles_U_n_15}),
        .\q0_reg[18]_0 ({angles_U_n_16,angles_U_n_17,angles_U_n_18}),
        .\q0_reg[5]_0 ({\i1_fu_48_reg_n_0_[3] ,\i1_fu_48_reg_n_0_[2] ,\i1_fu_48_reg_n_0_[1] ,\i1_fu_48_reg_n_0_[0] }),
        .\q0_reg[7]_0 ({angles_U_n_4,angles_U_n_5,angles_U_n_6,angles_U_n_7}),
        .select_ln75_reg_224(select_ln75_reg_224),
        .\theta_temp2_fu_52_reg[11] ({angles_U_n_27,angles_U_n_28,angles_U_n_29,angles_U_n_30}),
        .\theta_temp2_fu_52_reg[15] ({angles_U_n_31,angles_U_n_32,angles_U_n_33,angles_U_n_34}),
        .\theta_temp2_fu_52_reg[18] ({angles_U_n_35,angles_U_n_36,angles_U_n_37}),
        .\theta_temp2_fu_52_reg[19] ({\theta_temp2_fu_52_reg_n_0_[18] ,\theta_temp2_fu_52_reg_n_0_[17] ,\theta_temp2_fu_52_reg_n_0_[16] ,\theta_temp2_fu_52_reg_n_0_[15] ,\theta_temp2_fu_52_reg_n_0_[14] ,\theta_temp2_fu_52_reg_n_0_[13] ,\theta_temp2_fu_52_reg_n_0_[12] ,\theta_temp2_fu_52_reg_n_0_[11] ,\theta_temp2_fu_52_reg_n_0_[10] ,\theta_temp2_fu_52_reg_n_0_[9] ,\theta_temp2_fu_52_reg_n_0_[8] ,\theta_temp2_fu_52_reg_n_0_[7] ,\theta_temp2_fu_52_reg_n_0_[6] ,\theta_temp2_fu_52_reg_n_0_[5] ,\theta_temp2_fu_52_reg_n_0_[4] ,\theta_temp2_fu_52_reg_n_0_[3] ,\theta_temp2_fu_52_reg_n_0_[2] ,\theta_temp2_fu_52_reg_n_0_[1] }),
        .\theta_temp2_fu_52_reg[3] ({angles_U_n_20,angles_U_n_21,angles_U_n_22}),
        .\theta_temp2_fu_52_reg[7] ({angles_U_n_23,angles_U_n_24,angles_U_n_25,angles_U_n_26}));
  LUT4 #(
    .INIT(16'hFF57)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_ready),
        .O(ap_NS_fsm[0]));
  LUT4 #(
    .INIT(16'h0054)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_CS_fsm_pp0_stage1),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_ready),
        .O(ap_NS_fsm[1]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_pp0_stage1),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h00008A80)) 
    ap_enable_reg_pp0_iter0_reg_i_1
       (.I0(ap_rst_n),
        .I1(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp0_iter0_reg),
        .I4(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_ready),
        .O(ap_enable_reg_pp0_iter0_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter0_reg_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter0_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000074040000)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(ap_CS_fsm_pp0_stage1),
        .I3(ap_enable_reg_pp0_iter0),
        .I4(ap_rst_n),
        .I5(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_ready),
        .O(ap_enable_reg_pp0_iter1_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ap_enable_reg_pp0_iter1_i_2
       (.I0(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .O(ap_enable_reg_pp0_iter0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter1),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hB8FFB833B8CCB800)) 
    \cos_shift_reg_305[0]_i_1 
       (.I0(\cos_shift_reg_305[3]_i_2_n_0 ),
        .I1(\i1_fu_48_reg_n_0_[1] ),
        .I2(\cos_shift_reg_305[1]_i_2_n_0 ),
        .I3(\i1_fu_48_reg_n_0_[0] ),
        .I4(\cos_shift_reg_305[2]_i_2_n_0 ),
        .I5(\cos_shift_reg_305[0]_i_2_n_0 ),
        .O(cos_shift_fu_151_p2[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_shift_reg_305[0]_i_2 
       (.I0(current_cos_34_fu_56[12]),
        .I1(current_cos_34_fu_56[4]),
        .I2(\i1_fu_48_reg_n_0_[2] ),
        .I3(current_cos_34_fu_56[8]),
        .I4(\i1_fu_48_reg_n_0_[3] ),
        .I5(current_cos_34_fu_56[0]),
        .O(\cos_shift_reg_305[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_shift_reg_305[10]_i_1 
       (.I0(\cos_shift_reg_305[13]_i_3_n_0 ),
        .I1(\cos_shift_reg_305[11]_i_2_n_0 ),
        .I2(\i1_fu_48_reg_n_0_[0] ),
        .I3(\cos_shift_reg_305[12]_i_2_n_0 ),
        .I4(\i1_fu_48_reg_n_0_[1] ),
        .I5(\cos_shift_reg_305[10]_i_2_n_0 ),
        .O(cos_shift_fu_151_p2[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_shift_reg_305[10]_i_2 
       (.I0(current_cos_34_fu_56[21]),
        .I1(current_cos_34_fu_56[14]),
        .I2(\i1_fu_48_reg_n_0_[2] ),
        .I3(current_cos_34_fu_56[18]),
        .I4(\i1_fu_48_reg_n_0_[3] ),
        .I5(current_cos_34_fu_56[10]),
        .O(\cos_shift_reg_305[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_shift_reg_305[11]_i_1 
       (.I0(\cos_shift_reg_305[14]_i_3_n_0 ),
        .I1(\cos_shift_reg_305[12]_i_2_n_0 ),
        .I2(\i1_fu_48_reg_n_0_[0] ),
        .I3(\cos_shift_reg_305[13]_i_3_n_0 ),
        .I4(\i1_fu_48_reg_n_0_[1] ),
        .I5(\cos_shift_reg_305[11]_i_2_n_0 ),
        .O(cos_shift_fu_151_p2[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_shift_reg_305[11]_i_2 
       (.I0(current_cos_34_fu_56[21]),
        .I1(current_cos_34_fu_56[15]),
        .I2(\i1_fu_48_reg_n_0_[2] ),
        .I3(current_cos_34_fu_56[19]),
        .I4(\i1_fu_48_reg_n_0_[3] ),
        .I5(current_cos_34_fu_56[11]),
        .O(\cos_shift_reg_305[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_shift_reg_305[12]_i_1 
       (.I0(\cos_shift_reg_305[13]_i_2_n_0 ),
        .I1(\cos_shift_reg_305[13]_i_3_n_0 ),
        .I2(\i1_fu_48_reg_n_0_[0] ),
        .I3(\cos_shift_reg_305[14]_i_3_n_0 ),
        .I4(\i1_fu_48_reg_n_0_[1] ),
        .I5(\cos_shift_reg_305[12]_i_2_n_0 ),
        .O(cos_shift_fu_151_p2[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_shift_reg_305[12]_i_2 
       (.I0(current_cos_34_fu_56[21]),
        .I1(current_cos_34_fu_56[16]),
        .I2(\i1_fu_48_reg_n_0_[2] ),
        .I3(current_cos_34_fu_56[20]),
        .I4(\i1_fu_48_reg_n_0_[3] ),
        .I5(current_cos_34_fu_56[12]),
        .O(\cos_shift_reg_305[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_shift_reg_305[13]_i_1 
       (.I0(\cos_shift_reg_305[14]_i_2_n_0 ),
        .I1(\cos_shift_reg_305[14]_i_3_n_0 ),
        .I2(\i1_fu_48_reg_n_0_[0] ),
        .I3(\cos_shift_reg_305[13]_i_2_n_0 ),
        .I4(\i1_fu_48_reg_n_0_[1] ),
        .I5(\cos_shift_reg_305[13]_i_3_n_0 ),
        .O(cos_shift_fu_151_p2[13]));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \cos_shift_reg_305[13]_i_2 
       (.I0(current_cos_34_fu_56[19]),
        .I1(\i1_fu_48_reg_n_0_[2] ),
        .I2(current_cos_34_fu_56[21]),
        .I3(\i1_fu_48_reg_n_0_[3] ),
        .I4(current_cos_34_fu_56[15]),
        .O(\cos_shift_reg_305[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \cos_shift_reg_305[13]_i_3 
       (.I0(current_cos_34_fu_56[17]),
        .I1(\i1_fu_48_reg_n_0_[2] ),
        .I2(current_cos_34_fu_56[21]),
        .I3(\i1_fu_48_reg_n_0_[3] ),
        .I4(current_cos_34_fu_56[13]),
        .O(\cos_shift_reg_305[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \cos_shift_reg_305[14]_i_1 
       (.I0(\cos_shift_reg_305[14]_i_2_n_0 ),
        .I1(\i1_fu_48_reg_n_0_[1] ),
        .I2(\cos_shift_reg_305[14]_i_3_n_0 ),
        .I3(\cos_shift_reg_305[15]_i_2_n_0 ),
        .I4(\i1_fu_48_reg_n_0_[0] ),
        .O(cos_shift_fu_151_p2[14]));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \cos_shift_reg_305[14]_i_2 
       (.I0(current_cos_34_fu_56[20]),
        .I1(\i1_fu_48_reg_n_0_[2] ),
        .I2(current_cos_34_fu_56[21]),
        .I3(\i1_fu_48_reg_n_0_[3] ),
        .I4(current_cos_34_fu_56[16]),
        .O(\cos_shift_reg_305[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \cos_shift_reg_305[14]_i_3 
       (.I0(current_cos_34_fu_56[18]),
        .I1(\i1_fu_48_reg_n_0_[2] ),
        .I2(current_cos_34_fu_56[21]),
        .I3(\i1_fu_48_reg_n_0_[3] ),
        .I4(current_cos_34_fu_56[14]),
        .O(\cos_shift_reg_305[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cos_shift_reg_305[15]_i_1 
       (.I0(\cos_shift_reg_305[16]_i_2_n_0 ),
        .I1(\i1_fu_48_reg_n_0_[0] ),
        .I2(\cos_shift_reg_305[15]_i_2_n_0 ),
        .O(cos_shift_fu_151_p2[15]));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \cos_shift_reg_305[15]_i_2 
       (.I0(\i1_fu_48_reg_n_0_[2] ),
        .I1(current_cos_34_fu_56[21]),
        .I2(\i1_fu_48_reg_n_0_[3] ),
        .I3(current_cos_34_fu_56[17]),
        .I4(\i1_fu_48_reg_n_0_[1] ),
        .I5(\cos_shift_reg_305[13]_i_2_n_0 ),
        .O(\cos_shift_reg_305[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cos_shift_reg_305[16]_i_1 
       (.I0(\cos_shift_reg_305[17]_i_2_n_0 ),
        .I1(\i1_fu_48_reg_n_0_[0] ),
        .I2(\cos_shift_reg_305[16]_i_2_n_0 ),
        .O(cos_shift_fu_151_p2[16]));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \cos_shift_reg_305[16]_i_2 
       (.I0(\i1_fu_48_reg_n_0_[2] ),
        .I1(current_cos_34_fu_56[21]),
        .I2(\i1_fu_48_reg_n_0_[3] ),
        .I3(current_cos_34_fu_56[18]),
        .I4(\i1_fu_48_reg_n_0_[1] ),
        .I5(\cos_shift_reg_305[14]_i_2_n_0 ),
        .O(\cos_shift_reg_305[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cos_shift_reg_305[17]_i_1 
       (.I0(\cos_shift_reg_305[18]_i_2_n_0 ),
        .I1(\i1_fu_48_reg_n_0_[0] ),
        .I2(\cos_shift_reg_305[17]_i_2_n_0 ),
        .O(cos_shift_fu_151_p2[17]));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \cos_shift_reg_305[17]_i_2 
       (.I0(current_cos_34_fu_56[19]),
        .I1(\i1_fu_48_reg_n_0_[1] ),
        .I2(\i1_fu_48_reg_n_0_[2] ),
        .I3(current_cos_34_fu_56[21]),
        .I4(\i1_fu_48_reg_n_0_[3] ),
        .I5(current_cos_34_fu_56[17]),
        .O(\cos_shift_reg_305[17]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cos_shift_reg_305[18]_i_1 
       (.I0(\cos_shift_reg_305[19]_i_3_n_0 ),
        .I1(\i1_fu_48_reg_n_0_[0] ),
        .I2(\cos_shift_reg_305[18]_i_2_n_0 ),
        .O(cos_shift_fu_151_p2[18]));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \cos_shift_reg_305[18]_i_2 
       (.I0(current_cos_34_fu_56[20]),
        .I1(\i1_fu_48_reg_n_0_[1] ),
        .I2(\i1_fu_48_reg_n_0_[2] ),
        .I3(current_cos_34_fu_56[21]),
        .I4(\i1_fu_48_reg_n_0_[3] ),
        .I5(current_cos_34_fu_56[18]),
        .O(\cos_shift_reg_305[18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cos_shift_reg_305[19]_i_1 
       (.I0(\cos_shift_reg_305[19]_i_2_n_0 ),
        .I1(\i1_fu_48_reg_n_0_[0] ),
        .I2(\cos_shift_reg_305[19]_i_3_n_0 ),
        .O(cos_shift_fu_151_p2[19]));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \cos_shift_reg_305[19]_i_2 
       (.I0(\i1_fu_48_reg_n_0_[1] ),
        .I1(\i1_fu_48_reg_n_0_[2] ),
        .I2(current_cos_34_fu_56[21]),
        .I3(\i1_fu_48_reg_n_0_[3] ),
        .I4(current_cos_34_fu_56[20]),
        .O(\cos_shift_reg_305[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \cos_shift_reg_305[19]_i_3 
       (.I0(\i1_fu_48_reg_n_0_[1] ),
        .I1(\i1_fu_48_reg_n_0_[2] ),
        .I2(current_cos_34_fu_56[21]),
        .I3(\i1_fu_48_reg_n_0_[3] ),
        .I4(current_cos_34_fu_56[19]),
        .O(\cos_shift_reg_305[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \cos_shift_reg_305[1]_i_1 
       (.I0(\cos_shift_reg_305[4]_i_2_n_0 ),
        .I1(\i1_fu_48_reg_n_0_[1] ),
        .I2(\cos_shift_reg_305[2]_i_2_n_0 ),
        .I3(\cos_shift_reg_305[3]_i_2_n_0 ),
        .I4(\cos_shift_reg_305[1]_i_2_n_0 ),
        .I5(\i1_fu_48_reg_n_0_[0] ),
        .O(cos_shift_fu_151_p2[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_shift_reg_305[1]_i_2 
       (.I0(current_cos_34_fu_56[13]),
        .I1(current_cos_34_fu_56[5]),
        .I2(\i1_fu_48_reg_n_0_[2] ),
        .I3(current_cos_34_fu_56[9]),
        .I4(\i1_fu_48_reg_n_0_[3] ),
        .I5(current_cos_34_fu_56[1]),
        .O(\cos_shift_reg_305[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF01FF00FE00)) 
    \cos_shift_reg_305[20]_i_1 
       (.I0(\i1_fu_48_reg_n_0_[0] ),
        .I1(\i1_fu_48_reg_n_0_[1] ),
        .I2(\i1_fu_48_reg_n_0_[2] ),
        .I3(current_cos_34_fu_56[21]),
        .I4(\i1_fu_48_reg_n_0_[3] ),
        .I5(current_cos_34_fu_56[20]),
        .O(cos_shift_fu_151_p2[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_shift_reg_305[2]_i_1 
       (.I0(\cos_shift_reg_305[5]_i_2_n_0 ),
        .I1(\cos_shift_reg_305[3]_i_2_n_0 ),
        .I2(\i1_fu_48_reg_n_0_[0] ),
        .I3(\cos_shift_reg_305[4]_i_2_n_0 ),
        .I4(\i1_fu_48_reg_n_0_[1] ),
        .I5(\cos_shift_reg_305[2]_i_2_n_0 ),
        .O(cos_shift_fu_151_p2[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_shift_reg_305[2]_i_2 
       (.I0(current_cos_34_fu_56[14]),
        .I1(current_cos_34_fu_56[6]),
        .I2(\i1_fu_48_reg_n_0_[2] ),
        .I3(current_cos_34_fu_56[10]),
        .I4(\i1_fu_48_reg_n_0_[3] ),
        .I5(current_cos_34_fu_56[2]),
        .O(\cos_shift_reg_305[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_shift_reg_305[3]_i_1 
       (.I0(\cos_shift_reg_305[6]_i_2_n_0 ),
        .I1(\cos_shift_reg_305[4]_i_2_n_0 ),
        .I2(\i1_fu_48_reg_n_0_[0] ),
        .I3(\cos_shift_reg_305[5]_i_2_n_0 ),
        .I4(\i1_fu_48_reg_n_0_[1] ),
        .I5(\cos_shift_reg_305[3]_i_2_n_0 ),
        .O(cos_shift_fu_151_p2[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_shift_reg_305[3]_i_2 
       (.I0(current_cos_34_fu_56[15]),
        .I1(current_cos_34_fu_56[7]),
        .I2(\i1_fu_48_reg_n_0_[2] ),
        .I3(current_cos_34_fu_56[11]),
        .I4(\i1_fu_48_reg_n_0_[3] ),
        .I5(current_cos_34_fu_56[3]),
        .O(\cos_shift_reg_305[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_shift_reg_305[4]_i_1 
       (.I0(\cos_shift_reg_305[7]_i_2_n_0 ),
        .I1(\cos_shift_reg_305[5]_i_2_n_0 ),
        .I2(\i1_fu_48_reg_n_0_[0] ),
        .I3(\cos_shift_reg_305[6]_i_2_n_0 ),
        .I4(\i1_fu_48_reg_n_0_[1] ),
        .I5(\cos_shift_reg_305[4]_i_2_n_0 ),
        .O(cos_shift_fu_151_p2[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_shift_reg_305[4]_i_2 
       (.I0(current_cos_34_fu_56[16]),
        .I1(current_cos_34_fu_56[8]),
        .I2(\i1_fu_48_reg_n_0_[2] ),
        .I3(current_cos_34_fu_56[12]),
        .I4(\i1_fu_48_reg_n_0_[3] ),
        .I5(current_cos_34_fu_56[4]),
        .O(\cos_shift_reg_305[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_shift_reg_305[5]_i_1 
       (.I0(\cos_shift_reg_305[8]_i_2_n_0 ),
        .I1(\cos_shift_reg_305[6]_i_2_n_0 ),
        .I2(\i1_fu_48_reg_n_0_[0] ),
        .I3(\cos_shift_reg_305[7]_i_2_n_0 ),
        .I4(\i1_fu_48_reg_n_0_[1] ),
        .I5(\cos_shift_reg_305[5]_i_2_n_0 ),
        .O(cos_shift_fu_151_p2[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_shift_reg_305[5]_i_2 
       (.I0(current_cos_34_fu_56[17]),
        .I1(current_cos_34_fu_56[9]),
        .I2(\i1_fu_48_reg_n_0_[2] ),
        .I3(current_cos_34_fu_56[13]),
        .I4(\i1_fu_48_reg_n_0_[3] ),
        .I5(current_cos_34_fu_56[5]),
        .O(\cos_shift_reg_305[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_shift_reg_305[6]_i_1 
       (.I0(\cos_shift_reg_305[9]_i_2_n_0 ),
        .I1(\cos_shift_reg_305[7]_i_2_n_0 ),
        .I2(\i1_fu_48_reg_n_0_[0] ),
        .I3(\cos_shift_reg_305[8]_i_2_n_0 ),
        .I4(\i1_fu_48_reg_n_0_[1] ),
        .I5(\cos_shift_reg_305[6]_i_2_n_0 ),
        .O(cos_shift_fu_151_p2[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_shift_reg_305[6]_i_2 
       (.I0(current_cos_34_fu_56[18]),
        .I1(current_cos_34_fu_56[10]),
        .I2(\i1_fu_48_reg_n_0_[2] ),
        .I3(current_cos_34_fu_56[14]),
        .I4(\i1_fu_48_reg_n_0_[3] ),
        .I5(current_cos_34_fu_56[6]),
        .O(\cos_shift_reg_305[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_shift_reg_305[7]_i_1 
       (.I0(\cos_shift_reg_305[10]_i_2_n_0 ),
        .I1(\cos_shift_reg_305[8]_i_2_n_0 ),
        .I2(\i1_fu_48_reg_n_0_[0] ),
        .I3(\cos_shift_reg_305[9]_i_2_n_0 ),
        .I4(\i1_fu_48_reg_n_0_[1] ),
        .I5(\cos_shift_reg_305[7]_i_2_n_0 ),
        .O(cos_shift_fu_151_p2[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_shift_reg_305[7]_i_2 
       (.I0(current_cos_34_fu_56[19]),
        .I1(current_cos_34_fu_56[11]),
        .I2(\i1_fu_48_reg_n_0_[2] ),
        .I3(current_cos_34_fu_56[15]),
        .I4(\i1_fu_48_reg_n_0_[3] ),
        .I5(current_cos_34_fu_56[7]),
        .O(\cos_shift_reg_305[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_shift_reg_305[8]_i_1 
       (.I0(\cos_shift_reg_305[11]_i_2_n_0 ),
        .I1(\cos_shift_reg_305[9]_i_2_n_0 ),
        .I2(\i1_fu_48_reg_n_0_[0] ),
        .I3(\cos_shift_reg_305[10]_i_2_n_0 ),
        .I4(\i1_fu_48_reg_n_0_[1] ),
        .I5(\cos_shift_reg_305[8]_i_2_n_0 ),
        .O(cos_shift_fu_151_p2[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_shift_reg_305[8]_i_2 
       (.I0(current_cos_34_fu_56[20]),
        .I1(current_cos_34_fu_56[12]),
        .I2(\i1_fu_48_reg_n_0_[2] ),
        .I3(current_cos_34_fu_56[16]),
        .I4(\i1_fu_48_reg_n_0_[3] ),
        .I5(current_cos_34_fu_56[8]),
        .O(\cos_shift_reg_305[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_shift_reg_305[9]_i_1 
       (.I0(\cos_shift_reg_305[12]_i_2_n_0 ),
        .I1(\cos_shift_reg_305[10]_i_2_n_0 ),
        .I2(\i1_fu_48_reg_n_0_[0] ),
        .I3(\cos_shift_reg_305[11]_i_2_n_0 ),
        .I4(\i1_fu_48_reg_n_0_[1] ),
        .I5(\cos_shift_reg_305[9]_i_2_n_0 ),
        .O(cos_shift_fu_151_p2[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos_shift_reg_305[9]_i_2 
       (.I0(current_cos_34_fu_56[21]),
        .I1(current_cos_34_fu_56[13]),
        .I2(\i1_fu_48_reg_n_0_[2] ),
        .I3(current_cos_34_fu_56[17]),
        .I4(\i1_fu_48_reg_n_0_[3] ),
        .I5(current_cos_34_fu_56[9]),
        .O(\cos_shift_reg_305[9]_i_2_n_0 ));
  FDRE \cos_shift_reg_305_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(cos_shift_fu_151_p2[0]),
        .Q(cos_shift_reg_305[0]),
        .R(1'b0));
  FDRE \cos_shift_reg_305_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(cos_shift_fu_151_p2[10]),
        .Q(cos_shift_reg_305[10]),
        .R(1'b0));
  FDRE \cos_shift_reg_305_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(cos_shift_fu_151_p2[11]),
        .Q(cos_shift_reg_305[11]),
        .R(1'b0));
  FDRE \cos_shift_reg_305_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(cos_shift_fu_151_p2[12]),
        .Q(cos_shift_reg_305[12]),
        .R(1'b0));
  FDRE \cos_shift_reg_305_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(cos_shift_fu_151_p2[13]),
        .Q(cos_shift_reg_305[13]),
        .R(1'b0));
  FDRE \cos_shift_reg_305_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(cos_shift_fu_151_p2[14]),
        .Q(cos_shift_reg_305[14]),
        .R(1'b0));
  FDRE \cos_shift_reg_305_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(cos_shift_fu_151_p2[15]),
        .Q(cos_shift_reg_305[15]),
        .R(1'b0));
  FDRE \cos_shift_reg_305_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(cos_shift_fu_151_p2[16]),
        .Q(cos_shift_reg_305[16]),
        .R(1'b0));
  FDRE \cos_shift_reg_305_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(cos_shift_fu_151_p2[17]),
        .Q(cos_shift_reg_305[17]),
        .R(1'b0));
  FDRE \cos_shift_reg_305_reg[18] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(cos_shift_fu_151_p2[18]),
        .Q(cos_shift_reg_305[18]),
        .R(1'b0));
  FDRE \cos_shift_reg_305_reg[19] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(cos_shift_fu_151_p2[19]),
        .Q(cos_shift_reg_305[19]),
        .R(1'b0));
  FDRE \cos_shift_reg_305_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(cos_shift_fu_151_p2[1]),
        .Q(cos_shift_reg_305[1]),
        .R(1'b0));
  FDRE \cos_shift_reg_305_reg[20] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(cos_shift_fu_151_p2[20]),
        .Q(cos_shift_reg_305[20]),
        .R(1'b0));
  FDRE \cos_shift_reg_305_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(cos_shift_fu_151_p2[2]),
        .Q(cos_shift_reg_305[2]),
        .R(1'b0));
  FDRE \cos_shift_reg_305_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(cos_shift_fu_151_p2[3]),
        .Q(cos_shift_reg_305[3]),
        .R(1'b0));
  FDRE \cos_shift_reg_305_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(cos_shift_fu_151_p2[4]),
        .Q(cos_shift_reg_305[4]),
        .R(1'b0));
  FDRE \cos_shift_reg_305_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(cos_shift_fu_151_p2[5]),
        .Q(cos_shift_reg_305[5]),
        .R(1'b0));
  FDRE \cos_shift_reg_305_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(cos_shift_fu_151_p2[6]),
        .Q(cos_shift_reg_305[6]),
        .R(1'b0));
  FDRE \cos_shift_reg_305_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(cos_shift_fu_151_p2[7]),
        .Q(cos_shift_reg_305[7]),
        .R(1'b0));
  FDRE \cos_shift_reg_305_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(cos_shift_fu_151_p2[8]),
        .Q(cos_shift_reg_305[8]),
        .R(1'b0));
  FDRE \cos_shift_reg_305_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(cos_shift_fu_151_p2[9]),
        .Q(cos_shift_reg_305[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \current_cos_2_loc_fu_74[21]_i_1 
       (.I0(Q),
        .I1(i1_load_reg_287[1]),
        .I2(i1_load_reg_287[0]),
        .I3(i1_load_reg_287[3]),
        .I4(i1_load_reg_287[2]),
        .I5(ap_done_reg1),
        .O(E));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \current_cos_2_loc_fu_74[21]_i_2 
       (.I0(i1_load_reg_287[1]),
        .I1(i1_load_reg_287[0]),
        .I2(i1_load_reg_287[3]),
        .I3(i1_load_reg_287[2]),
        .I4(\ap_CS_fsm_reg_n_0_[0] ),
        .I5(ap_enable_reg_pp0_iter1),
        .O(ap_done_reg1));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 current_cos_34_fu_560_carry
       (.CI(1'b0),
        .CO({current_cos_34_fu_560_carry_n_0,current_cos_34_fu_560_carry_n_1,current_cos_34_fu_560_carry_n_2,current_cos_34_fu_560_carry_n_3}),
        .CYINIT(current_sin_36_load_reg_299[21]),
        .DI(current_cos_34_load_reg_293[3:0]),
        .O(D[3:0]),
        .S({current_cos_34_fu_560_carry_i_1_n_0,current_cos_34_fu_560_carry_i_2_n_0,current_cos_34_fu_560_carry_i_3_n_0,current_cos_34_fu_560_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 current_cos_34_fu_560_carry__0
       (.CI(current_cos_34_fu_560_carry_n_0),
        .CO({current_cos_34_fu_560_carry__0_n_0,current_cos_34_fu_560_carry__0_n_1,current_cos_34_fu_560_carry__0_n_2,current_cos_34_fu_560_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(current_cos_34_load_reg_293[7:4]),
        .O(D[7:4]),
        .S({current_cos_34_fu_560_carry__0_i_1_n_0,current_cos_34_fu_560_carry__0_i_2_n_0,current_cos_34_fu_560_carry__0_i_3_n_0,current_cos_34_fu_560_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    current_cos_34_fu_560_carry__0_i_1
       (.I0(sin_shift_reg_311[7]),
        .I1(current_sin_36_load_reg_299[21]),
        .I2(current_cos_34_load_reg_293[7]),
        .O(current_cos_34_fu_560_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    current_cos_34_fu_560_carry__0_i_2
       (.I0(sin_shift_reg_311[6]),
        .I1(current_sin_36_load_reg_299[21]),
        .I2(current_cos_34_load_reg_293[6]),
        .O(current_cos_34_fu_560_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    current_cos_34_fu_560_carry__0_i_3
       (.I0(sin_shift_reg_311[5]),
        .I1(current_sin_36_load_reg_299[21]),
        .I2(current_cos_34_load_reg_293[5]),
        .O(current_cos_34_fu_560_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    current_cos_34_fu_560_carry__0_i_4
       (.I0(sin_shift_reg_311[4]),
        .I1(current_sin_36_load_reg_299[21]),
        .I2(current_cos_34_load_reg_293[4]),
        .O(current_cos_34_fu_560_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 current_cos_34_fu_560_carry__1
       (.CI(current_cos_34_fu_560_carry__0_n_0),
        .CO({current_cos_34_fu_560_carry__1_n_0,current_cos_34_fu_560_carry__1_n_1,current_cos_34_fu_560_carry__1_n_2,current_cos_34_fu_560_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(current_cos_34_load_reg_293[11:8]),
        .O(D[11:8]),
        .S({current_cos_34_fu_560_carry__1_i_1_n_0,current_cos_34_fu_560_carry__1_i_2_n_0,current_cos_34_fu_560_carry__1_i_3_n_0,current_cos_34_fu_560_carry__1_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    current_cos_34_fu_560_carry__1_i_1
       (.I0(sin_shift_reg_311[11]),
        .I1(current_sin_36_load_reg_299[21]),
        .I2(current_cos_34_load_reg_293[11]),
        .O(current_cos_34_fu_560_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    current_cos_34_fu_560_carry__1_i_2
       (.I0(sin_shift_reg_311[10]),
        .I1(current_sin_36_load_reg_299[21]),
        .I2(current_cos_34_load_reg_293[10]),
        .O(current_cos_34_fu_560_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    current_cos_34_fu_560_carry__1_i_3
       (.I0(sin_shift_reg_311[9]),
        .I1(current_sin_36_load_reg_299[21]),
        .I2(current_cos_34_load_reg_293[9]),
        .O(current_cos_34_fu_560_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    current_cos_34_fu_560_carry__1_i_4
       (.I0(sin_shift_reg_311[8]),
        .I1(current_sin_36_load_reg_299[21]),
        .I2(current_cos_34_load_reg_293[8]),
        .O(current_cos_34_fu_560_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 current_cos_34_fu_560_carry__2
       (.CI(current_cos_34_fu_560_carry__1_n_0),
        .CO({current_cos_34_fu_560_carry__2_n_0,current_cos_34_fu_560_carry__2_n_1,current_cos_34_fu_560_carry__2_n_2,current_cos_34_fu_560_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(current_cos_34_load_reg_293[15:12]),
        .O(D[15:12]),
        .S({current_cos_34_fu_560_carry__2_i_1_n_0,current_cos_34_fu_560_carry__2_i_2_n_0,current_cos_34_fu_560_carry__2_i_3_n_0,current_cos_34_fu_560_carry__2_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    current_cos_34_fu_560_carry__2_i_1
       (.I0(sin_shift_reg_311[15]),
        .I1(current_sin_36_load_reg_299[21]),
        .I2(current_cos_34_load_reg_293[15]),
        .O(current_cos_34_fu_560_carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    current_cos_34_fu_560_carry__2_i_2
       (.I0(sin_shift_reg_311[14]),
        .I1(current_sin_36_load_reg_299[21]),
        .I2(current_cos_34_load_reg_293[14]),
        .O(current_cos_34_fu_560_carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    current_cos_34_fu_560_carry__2_i_3
       (.I0(sin_shift_reg_311[13]),
        .I1(current_sin_36_load_reg_299[21]),
        .I2(current_cos_34_load_reg_293[13]),
        .O(current_cos_34_fu_560_carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    current_cos_34_fu_560_carry__2_i_4
       (.I0(sin_shift_reg_311[12]),
        .I1(current_sin_36_load_reg_299[21]),
        .I2(current_cos_34_load_reg_293[12]),
        .O(current_cos_34_fu_560_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 current_cos_34_fu_560_carry__3
       (.CI(current_cos_34_fu_560_carry__2_n_0),
        .CO({current_cos_34_fu_560_carry__3_n_0,current_cos_34_fu_560_carry__3_n_1,current_cos_34_fu_560_carry__3_n_2,current_cos_34_fu_560_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(current_cos_34_load_reg_293[19:16]),
        .O(D[19:16]),
        .S({current_cos_34_fu_560_carry__3_i_1_n_0,current_cos_34_fu_560_carry__3_i_2_n_0,current_cos_34_fu_560_carry__3_i_3_n_0,current_cos_34_fu_560_carry__3_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    current_cos_34_fu_560_carry__3_i_1
       (.I0(sin_shift_reg_311[19]),
        .I1(current_sin_36_load_reg_299[21]),
        .I2(current_cos_34_load_reg_293[19]),
        .O(current_cos_34_fu_560_carry__3_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    current_cos_34_fu_560_carry__3_i_2
       (.I0(sin_shift_reg_311[18]),
        .I1(current_sin_36_load_reg_299[21]),
        .I2(current_cos_34_load_reg_293[18]),
        .O(current_cos_34_fu_560_carry__3_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    current_cos_34_fu_560_carry__3_i_3
       (.I0(sin_shift_reg_311[17]),
        .I1(current_sin_36_load_reg_299[21]),
        .I2(current_cos_34_load_reg_293[17]),
        .O(current_cos_34_fu_560_carry__3_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    current_cos_34_fu_560_carry__3_i_4
       (.I0(sin_shift_reg_311[16]),
        .I1(current_sin_36_load_reg_299[21]),
        .I2(current_cos_34_load_reg_293[16]),
        .O(current_cos_34_fu_560_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 current_cos_34_fu_560_carry__4
       (.CI(current_cos_34_fu_560_carry__3_n_0),
        .CO({NLW_current_cos_34_fu_560_carry__4_CO_UNCONNECTED[3:1],current_cos_34_fu_560_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,current_cos_34_load_reg_293[20]}),
        .O({NLW_current_cos_34_fu_560_carry__4_O_UNCONNECTED[3:2],D[21:20]}),
        .S({1'b0,1'b0,current_cos_34_load_reg_293[21],current_cos_34_fu_560_carry__4_i_1_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    current_cos_34_fu_560_carry__4_i_1
       (.I0(sin_shift_reg_311[20]),
        .I1(current_sin_36_load_reg_299[21]),
        .I2(current_cos_34_load_reg_293[20]),
        .O(current_cos_34_fu_560_carry__4_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    current_cos_34_fu_560_carry_i_1
       (.I0(sin_shift_reg_311[3]),
        .I1(current_sin_36_load_reg_299[21]),
        .I2(current_cos_34_load_reg_293[3]),
        .O(current_cos_34_fu_560_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    current_cos_34_fu_560_carry_i_2
       (.I0(sin_shift_reg_311[2]),
        .I1(current_sin_36_load_reg_299[21]),
        .I2(current_cos_34_load_reg_293[2]),
        .O(current_cos_34_fu_560_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    current_cos_34_fu_560_carry_i_3
       (.I0(sin_shift_reg_311[1]),
        .I1(current_sin_36_load_reg_299[21]),
        .I2(current_cos_34_load_reg_293[1]),
        .O(current_cos_34_fu_560_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    current_cos_34_fu_560_carry_i_4
       (.I0(sin_shift_reg_311[0]),
        .I1(current_sin_36_load_reg_299[21]),
        .I2(current_cos_34_load_reg_293[0]),
        .O(current_cos_34_fu_560_carry_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \current_cos_34_fu_56_reg[0] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_27),
        .Q(current_cos_34_fu_56[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_cos_34_fu_56_reg[10] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_17),
        .Q(current_cos_34_fu_56[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_cos_34_fu_56_reg[11] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_16),
        .Q(current_cos_34_fu_56[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_cos_34_fu_56_reg[12] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_15),
        .Q(current_cos_34_fu_56[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_cos_34_fu_56_reg[13] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_14),
        .Q(current_cos_34_fu_56[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_cos_34_fu_56_reg[14] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_13),
        .Q(current_cos_34_fu_56[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_cos_34_fu_56_reg[15] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_12),
        .Q(current_cos_34_fu_56[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_cos_34_fu_56_reg[16] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_11),
        .Q(current_cos_34_fu_56[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_cos_34_fu_56_reg[17] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_10),
        .Q(current_cos_34_fu_56[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_cos_34_fu_56_reg[18] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_9),
        .Q(current_cos_34_fu_56[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_cos_34_fu_56_reg[19] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_8),
        .Q(current_cos_34_fu_56[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_cos_34_fu_56_reg[1] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_26),
        .Q(current_cos_34_fu_56[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_cos_34_fu_56_reg[20] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_7),
        .Q(current_cos_34_fu_56[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_cos_34_fu_56_reg[21] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_6),
        .Q(current_cos_34_fu_56[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_cos_34_fu_56_reg[2] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_25),
        .Q(current_cos_34_fu_56[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_cos_34_fu_56_reg[3] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_24),
        .Q(current_cos_34_fu_56[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_cos_34_fu_56_reg[4] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_23),
        .Q(current_cos_34_fu_56[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_cos_34_fu_56_reg[5] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_22),
        .Q(current_cos_34_fu_56[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_cos_34_fu_56_reg[6] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_21),
        .Q(current_cos_34_fu_56[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_cos_34_fu_56_reg[7] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_20),
        .Q(current_cos_34_fu_56[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_cos_34_fu_56_reg[8] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_19),
        .Q(current_cos_34_fu_56[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_cos_34_fu_56_reg[9] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_18),
        .Q(current_cos_34_fu_56[9]),
        .R(1'b0));
  FDRE \current_cos_34_load_reg_293_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(current_cos_34_fu_56[0]),
        .Q(current_cos_34_load_reg_293[0]),
        .R(1'b0));
  FDRE \current_cos_34_load_reg_293_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(current_cos_34_fu_56[10]),
        .Q(current_cos_34_load_reg_293[10]),
        .R(1'b0));
  FDRE \current_cos_34_load_reg_293_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(current_cos_34_fu_56[11]),
        .Q(current_cos_34_load_reg_293[11]),
        .R(1'b0));
  FDRE \current_cos_34_load_reg_293_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(current_cos_34_fu_56[12]),
        .Q(current_cos_34_load_reg_293[12]),
        .R(1'b0));
  FDRE \current_cos_34_load_reg_293_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(current_cos_34_fu_56[13]),
        .Q(current_cos_34_load_reg_293[13]),
        .R(1'b0));
  FDRE \current_cos_34_load_reg_293_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(current_cos_34_fu_56[14]),
        .Q(current_cos_34_load_reg_293[14]),
        .R(1'b0));
  FDRE \current_cos_34_load_reg_293_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(current_cos_34_fu_56[15]),
        .Q(current_cos_34_load_reg_293[15]),
        .R(1'b0));
  FDRE \current_cos_34_load_reg_293_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(current_cos_34_fu_56[16]),
        .Q(current_cos_34_load_reg_293[16]),
        .R(1'b0));
  FDRE \current_cos_34_load_reg_293_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(current_cos_34_fu_56[17]),
        .Q(current_cos_34_load_reg_293[17]),
        .R(1'b0));
  FDRE \current_cos_34_load_reg_293_reg[18] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(current_cos_34_fu_56[18]),
        .Q(current_cos_34_load_reg_293[18]),
        .R(1'b0));
  FDRE \current_cos_34_load_reg_293_reg[19] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(current_cos_34_fu_56[19]),
        .Q(current_cos_34_load_reg_293[19]),
        .R(1'b0));
  FDRE \current_cos_34_load_reg_293_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(current_cos_34_fu_56[1]),
        .Q(current_cos_34_load_reg_293[1]),
        .R(1'b0));
  FDRE \current_cos_34_load_reg_293_reg[20] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(current_cos_34_fu_56[20]),
        .Q(current_cos_34_load_reg_293[20]),
        .R(1'b0));
  FDRE \current_cos_34_load_reg_293_reg[21] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(current_cos_34_fu_56[21]),
        .Q(current_cos_34_load_reg_293[21]),
        .R(1'b0));
  FDRE \current_cos_34_load_reg_293_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(current_cos_34_fu_56[2]),
        .Q(current_cos_34_load_reg_293[2]),
        .R(1'b0));
  FDRE \current_cos_34_load_reg_293_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(current_cos_34_fu_56[3]),
        .Q(current_cos_34_load_reg_293[3]),
        .R(1'b0));
  FDRE \current_cos_34_load_reg_293_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(current_cos_34_fu_56[4]),
        .Q(current_cos_34_load_reg_293[4]),
        .R(1'b0));
  FDRE \current_cos_34_load_reg_293_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(current_cos_34_fu_56[5]),
        .Q(current_cos_34_load_reg_293[5]),
        .R(1'b0));
  FDRE \current_cos_34_load_reg_293_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(current_cos_34_fu_56[6]),
        .Q(current_cos_34_load_reg_293[6]),
        .R(1'b0));
  FDRE \current_cos_34_load_reg_293_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(current_cos_34_fu_56[7]),
        .Q(current_cos_34_load_reg_293[7]),
        .R(1'b0));
  FDRE \current_cos_34_load_reg_293_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(current_cos_34_fu_56[8]),
        .Q(current_cos_34_load_reg_293[8]),
        .R(1'b0));
  FDRE \current_cos_34_load_reg_293_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(current_cos_34_fu_56[9]),
        .Q(current_cos_34_load_reg_293[9]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 current_sin_36_fu_600_carry
       (.CI(1'b0),
        .CO({current_sin_36_fu_600_carry_n_0,current_sin_36_fu_600_carry_n_1,current_sin_36_fu_600_carry_n_2,current_sin_36_fu_600_carry_n_3}),
        .CYINIT(current_sin_36_fu_600_carry_i_1_n_0),
        .DI(current_sin_36_load_reg_299[3:0]),
        .O({current_sin_36_fu_600_carry_n_4,current_sin_36_fu_600_carry_n_5,current_sin_36_fu_600_carry_n_6,current_sin_36_fu_600_carry_n_7}),
        .S({current_sin_36_fu_600_carry_i_2_n_0,current_sin_36_fu_600_carry_i_3_n_0,current_sin_36_fu_600_carry_i_4_n_0,current_sin_36_fu_600_carry_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 current_sin_36_fu_600_carry__0
       (.CI(current_sin_36_fu_600_carry_n_0),
        .CO({current_sin_36_fu_600_carry__0_n_0,current_sin_36_fu_600_carry__0_n_1,current_sin_36_fu_600_carry__0_n_2,current_sin_36_fu_600_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(current_sin_36_load_reg_299[7:4]),
        .O({current_sin_36_fu_600_carry__0_n_4,current_sin_36_fu_600_carry__0_n_5,current_sin_36_fu_600_carry__0_n_6,current_sin_36_fu_600_carry__0_n_7}),
        .S({current_sin_36_fu_600_carry__0_i_1_n_0,current_sin_36_fu_600_carry__0_i_2_n_0,current_sin_36_fu_600_carry__0_i_3_n_0,current_sin_36_fu_600_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h69)) 
    current_sin_36_fu_600_carry__0_i_1
       (.I0(current_sin_36_load_reg_299[7]),
        .I1(cos_shift_reg_305[7]),
        .I2(current_sin_36_load_reg_299[21]),
        .O(current_sin_36_fu_600_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    current_sin_36_fu_600_carry__0_i_2
       (.I0(current_sin_36_load_reg_299[6]),
        .I1(cos_shift_reg_305[6]),
        .I2(current_sin_36_load_reg_299[21]),
        .O(current_sin_36_fu_600_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    current_sin_36_fu_600_carry__0_i_3
       (.I0(current_sin_36_load_reg_299[5]),
        .I1(cos_shift_reg_305[5]),
        .I2(current_sin_36_load_reg_299[21]),
        .O(current_sin_36_fu_600_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    current_sin_36_fu_600_carry__0_i_4
       (.I0(current_sin_36_load_reg_299[4]),
        .I1(cos_shift_reg_305[4]),
        .I2(current_sin_36_load_reg_299[21]),
        .O(current_sin_36_fu_600_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 current_sin_36_fu_600_carry__1
       (.CI(current_sin_36_fu_600_carry__0_n_0),
        .CO({current_sin_36_fu_600_carry__1_n_0,current_sin_36_fu_600_carry__1_n_1,current_sin_36_fu_600_carry__1_n_2,current_sin_36_fu_600_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(current_sin_36_load_reg_299[11:8]),
        .O({current_sin_36_fu_600_carry__1_n_4,current_sin_36_fu_600_carry__1_n_5,current_sin_36_fu_600_carry__1_n_6,current_sin_36_fu_600_carry__1_n_7}),
        .S({current_sin_36_fu_600_carry__1_i_1_n_0,current_sin_36_fu_600_carry__1_i_2_n_0,current_sin_36_fu_600_carry__1_i_3_n_0,current_sin_36_fu_600_carry__1_i_4_n_0}));
  LUT3 #(
    .INIT(8'h69)) 
    current_sin_36_fu_600_carry__1_i_1
       (.I0(current_sin_36_load_reg_299[11]),
        .I1(cos_shift_reg_305[11]),
        .I2(current_sin_36_load_reg_299[21]),
        .O(current_sin_36_fu_600_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    current_sin_36_fu_600_carry__1_i_2
       (.I0(current_sin_36_load_reg_299[10]),
        .I1(cos_shift_reg_305[10]),
        .I2(current_sin_36_load_reg_299[21]),
        .O(current_sin_36_fu_600_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    current_sin_36_fu_600_carry__1_i_3
       (.I0(current_sin_36_load_reg_299[9]),
        .I1(cos_shift_reg_305[9]),
        .I2(current_sin_36_load_reg_299[21]),
        .O(current_sin_36_fu_600_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    current_sin_36_fu_600_carry__1_i_4
       (.I0(current_sin_36_load_reg_299[8]),
        .I1(cos_shift_reg_305[8]),
        .I2(current_sin_36_load_reg_299[21]),
        .O(current_sin_36_fu_600_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 current_sin_36_fu_600_carry__2
       (.CI(current_sin_36_fu_600_carry__1_n_0),
        .CO({current_sin_36_fu_600_carry__2_n_0,current_sin_36_fu_600_carry__2_n_1,current_sin_36_fu_600_carry__2_n_2,current_sin_36_fu_600_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(current_sin_36_load_reg_299[15:12]),
        .O({current_sin_36_fu_600_carry__2_n_4,current_sin_36_fu_600_carry__2_n_5,current_sin_36_fu_600_carry__2_n_6,current_sin_36_fu_600_carry__2_n_7}),
        .S({current_sin_36_fu_600_carry__2_i_1_n_0,current_sin_36_fu_600_carry__2_i_2_n_0,current_sin_36_fu_600_carry__2_i_3_n_0,current_sin_36_fu_600_carry__2_i_4_n_0}));
  LUT3 #(
    .INIT(8'h69)) 
    current_sin_36_fu_600_carry__2_i_1
       (.I0(current_sin_36_load_reg_299[15]),
        .I1(cos_shift_reg_305[15]),
        .I2(current_sin_36_load_reg_299[21]),
        .O(current_sin_36_fu_600_carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    current_sin_36_fu_600_carry__2_i_2
       (.I0(current_sin_36_load_reg_299[14]),
        .I1(cos_shift_reg_305[14]),
        .I2(current_sin_36_load_reg_299[21]),
        .O(current_sin_36_fu_600_carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    current_sin_36_fu_600_carry__2_i_3
       (.I0(current_sin_36_load_reg_299[13]),
        .I1(cos_shift_reg_305[13]),
        .I2(current_sin_36_load_reg_299[21]),
        .O(current_sin_36_fu_600_carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    current_sin_36_fu_600_carry__2_i_4
       (.I0(current_sin_36_load_reg_299[12]),
        .I1(cos_shift_reg_305[12]),
        .I2(current_sin_36_load_reg_299[21]),
        .O(current_sin_36_fu_600_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 current_sin_36_fu_600_carry__3
       (.CI(current_sin_36_fu_600_carry__2_n_0),
        .CO({current_sin_36_fu_600_carry__3_n_0,current_sin_36_fu_600_carry__3_n_1,current_sin_36_fu_600_carry__3_n_2,current_sin_36_fu_600_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(current_sin_36_load_reg_299[19:16]),
        .O({current_sin_36_fu_600_carry__3_n_4,current_sin_36_fu_600_carry__3_n_5,current_sin_36_fu_600_carry__3_n_6,current_sin_36_fu_600_carry__3_n_7}),
        .S({current_sin_36_fu_600_carry__3_i_1_n_0,current_sin_36_fu_600_carry__3_i_2_n_0,current_sin_36_fu_600_carry__3_i_3_n_0,current_sin_36_fu_600_carry__3_i_4_n_0}));
  LUT3 #(
    .INIT(8'h69)) 
    current_sin_36_fu_600_carry__3_i_1
       (.I0(current_sin_36_load_reg_299[19]),
        .I1(cos_shift_reg_305[19]),
        .I2(current_sin_36_load_reg_299[21]),
        .O(current_sin_36_fu_600_carry__3_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    current_sin_36_fu_600_carry__3_i_2
       (.I0(current_sin_36_load_reg_299[18]),
        .I1(cos_shift_reg_305[18]),
        .I2(current_sin_36_load_reg_299[21]),
        .O(current_sin_36_fu_600_carry__3_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    current_sin_36_fu_600_carry__3_i_3
       (.I0(current_sin_36_load_reg_299[17]),
        .I1(cos_shift_reg_305[17]),
        .I2(current_sin_36_load_reg_299[21]),
        .O(current_sin_36_fu_600_carry__3_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    current_sin_36_fu_600_carry__3_i_4
       (.I0(current_sin_36_load_reg_299[16]),
        .I1(cos_shift_reg_305[16]),
        .I2(current_sin_36_load_reg_299[21]),
        .O(current_sin_36_fu_600_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 current_sin_36_fu_600_carry__4
       (.CI(current_sin_36_fu_600_carry__3_n_0),
        .CO({NLW_current_sin_36_fu_600_carry__4_CO_UNCONNECTED[3:1],current_sin_36_fu_600_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,current_sin_36_load_reg_299[20]}),
        .O({NLW_current_sin_36_fu_600_carry__4_O_UNCONNECTED[3:2],current_sin_36_fu_600_carry__4_n_6,current_sin_36_fu_600_carry__4_n_7}),
        .S({1'b0,1'b0,current_sin_36_fu_600_carry__4_i_1_n_0,current_sin_36_fu_600_carry__4_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    current_sin_36_fu_600_carry__4_i_1
       (.I0(current_cos_34_load_reg_293[21]),
        .O(current_sin_36_fu_600_carry__4_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    current_sin_36_fu_600_carry__4_i_2
       (.I0(current_sin_36_load_reg_299[20]),
        .I1(cos_shift_reg_305[20]),
        .I2(current_sin_36_load_reg_299[21]),
        .O(current_sin_36_fu_600_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    current_sin_36_fu_600_carry_i_1
       (.I0(current_sin_36_load_reg_299[21]),
        .O(current_sin_36_fu_600_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    current_sin_36_fu_600_carry_i_2
       (.I0(current_sin_36_load_reg_299[3]),
        .I1(cos_shift_reg_305[3]),
        .I2(current_sin_36_load_reg_299[21]),
        .O(current_sin_36_fu_600_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    current_sin_36_fu_600_carry_i_3
       (.I0(current_sin_36_load_reg_299[2]),
        .I1(cos_shift_reg_305[2]),
        .I2(current_sin_36_load_reg_299[21]),
        .O(current_sin_36_fu_600_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    current_sin_36_fu_600_carry_i_4
       (.I0(current_sin_36_load_reg_299[1]),
        .I1(cos_shift_reg_305[1]),
        .I2(current_sin_36_load_reg_299[21]),
        .O(current_sin_36_fu_600_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    current_sin_36_fu_600_carry_i_5
       (.I0(current_sin_36_load_reg_299[0]),
        .I1(cos_shift_reg_305[0]),
        .I2(current_sin_36_load_reg_299[21]),
        .O(current_sin_36_fu_600_carry_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \current_sin_36_fu_60_reg[0] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_49),
        .Q(\current_sin_36_fu_60_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_sin_36_fu_60_reg[10] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_39),
        .Q(\current_sin_36_fu_60_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_sin_36_fu_60_reg[11] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_38),
        .Q(\current_sin_36_fu_60_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_sin_36_fu_60_reg[12] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_37),
        .Q(\current_sin_36_fu_60_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_sin_36_fu_60_reg[13] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_36),
        .Q(\current_sin_36_fu_60_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_sin_36_fu_60_reg[14] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_35),
        .Q(\current_sin_36_fu_60_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_sin_36_fu_60_reg[15] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_34),
        .Q(\current_sin_36_fu_60_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_sin_36_fu_60_reg[16] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_33),
        .Q(\current_sin_36_fu_60_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_sin_36_fu_60_reg[17] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_32),
        .Q(\current_sin_36_fu_60_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_sin_36_fu_60_reg[18] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_31),
        .Q(\current_sin_36_fu_60_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_sin_36_fu_60_reg[19] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_30),
        .Q(\current_sin_36_fu_60_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_sin_36_fu_60_reg[1] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_48),
        .Q(\current_sin_36_fu_60_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_sin_36_fu_60_reg[20] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_29),
        .Q(\current_sin_36_fu_60_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_sin_36_fu_60_reg[21] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_28),
        .Q(p_0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_sin_36_fu_60_reg[2] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_47),
        .Q(\current_sin_36_fu_60_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_sin_36_fu_60_reg[3] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_46),
        .Q(\current_sin_36_fu_60_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_sin_36_fu_60_reg[4] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_45),
        .Q(\current_sin_36_fu_60_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_sin_36_fu_60_reg[5] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_44),
        .Q(\current_sin_36_fu_60_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_sin_36_fu_60_reg[6] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_43),
        .Q(\current_sin_36_fu_60_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_sin_36_fu_60_reg[7] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_42),
        .Q(\current_sin_36_fu_60_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_sin_36_fu_60_reg[8] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_41),
        .Q(\current_sin_36_fu_60_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_sin_36_fu_60_reg[9] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_40),
        .Q(\current_sin_36_fu_60_reg_n_0_[9] ),
        .R(1'b0));
  FDRE \current_sin_36_load_reg_299_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(\current_sin_36_fu_60_reg_n_0_[0] ),
        .Q(current_sin_36_load_reg_299[0]),
        .R(1'b0));
  FDRE \current_sin_36_load_reg_299_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(\current_sin_36_fu_60_reg_n_0_[10] ),
        .Q(current_sin_36_load_reg_299[10]),
        .R(1'b0));
  FDRE \current_sin_36_load_reg_299_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(\current_sin_36_fu_60_reg_n_0_[11] ),
        .Q(current_sin_36_load_reg_299[11]),
        .R(1'b0));
  FDRE \current_sin_36_load_reg_299_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(\current_sin_36_fu_60_reg_n_0_[12] ),
        .Q(current_sin_36_load_reg_299[12]),
        .R(1'b0));
  FDRE \current_sin_36_load_reg_299_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(\current_sin_36_fu_60_reg_n_0_[13] ),
        .Q(current_sin_36_load_reg_299[13]),
        .R(1'b0));
  FDRE \current_sin_36_load_reg_299_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(\current_sin_36_fu_60_reg_n_0_[14] ),
        .Q(current_sin_36_load_reg_299[14]),
        .R(1'b0));
  FDRE \current_sin_36_load_reg_299_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(\current_sin_36_fu_60_reg_n_0_[15] ),
        .Q(current_sin_36_load_reg_299[15]),
        .R(1'b0));
  FDRE \current_sin_36_load_reg_299_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(\current_sin_36_fu_60_reg_n_0_[16] ),
        .Q(current_sin_36_load_reg_299[16]),
        .R(1'b0));
  FDRE \current_sin_36_load_reg_299_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(\current_sin_36_fu_60_reg_n_0_[17] ),
        .Q(current_sin_36_load_reg_299[17]),
        .R(1'b0));
  FDRE \current_sin_36_load_reg_299_reg[18] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(\current_sin_36_fu_60_reg_n_0_[18] ),
        .Q(current_sin_36_load_reg_299[18]),
        .R(1'b0));
  FDRE \current_sin_36_load_reg_299_reg[19] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(\current_sin_36_fu_60_reg_n_0_[19] ),
        .Q(current_sin_36_load_reg_299[19]),
        .R(1'b0));
  FDRE \current_sin_36_load_reg_299_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(\current_sin_36_fu_60_reg_n_0_[1] ),
        .Q(current_sin_36_load_reg_299[1]),
        .R(1'b0));
  FDRE \current_sin_36_load_reg_299_reg[20] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(\current_sin_36_fu_60_reg_n_0_[20] ),
        .Q(current_sin_36_load_reg_299[20]),
        .R(1'b0));
  FDRE \current_sin_36_load_reg_299_reg[21] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(p_0_in),
        .Q(current_sin_36_load_reg_299[21]),
        .R(1'b0));
  FDRE \current_sin_36_load_reg_299_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(\current_sin_36_fu_60_reg_n_0_[2] ),
        .Q(current_sin_36_load_reg_299[2]),
        .R(1'b0));
  FDRE \current_sin_36_load_reg_299_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(\current_sin_36_fu_60_reg_n_0_[3] ),
        .Q(current_sin_36_load_reg_299[3]),
        .R(1'b0));
  FDRE \current_sin_36_load_reg_299_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(\current_sin_36_fu_60_reg_n_0_[4] ),
        .Q(current_sin_36_load_reg_299[4]),
        .R(1'b0));
  FDRE \current_sin_36_load_reg_299_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(\current_sin_36_fu_60_reg_n_0_[5] ),
        .Q(current_sin_36_load_reg_299[5]),
        .R(1'b0));
  FDRE \current_sin_36_load_reg_299_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(\current_sin_36_fu_60_reg_n_0_[6] ),
        .Q(current_sin_36_load_reg_299[6]),
        .R(1'b0));
  FDRE \current_sin_36_load_reg_299_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(\current_sin_36_fu_60_reg_n_0_[7] ),
        .Q(current_sin_36_load_reg_299[7]),
        .R(1'b0));
  FDRE \current_sin_36_load_reg_299_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(\current_sin_36_fu_60_reg_n_0_[8] ),
        .Q(current_sin_36_load_reg_299[8]),
        .R(1'b0));
  FDRE \current_sin_36_load_reg_299_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(\current_sin_36_fu_60_reg_n_0_[9] ),
        .Q(current_sin_36_load_reg_299[9]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cordiccart2pol_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U
       (.D({flow_control_loop_pipe_sequential_init_U_n_6,flow_control_loop_pipe_sequential_init_U_n_7,flow_control_loop_pipe_sequential_init_U_n_8,flow_control_loop_pipe_sequential_init_U_n_9,flow_control_loop_pipe_sequential_init_U_n_10,flow_control_loop_pipe_sequential_init_U_n_11,flow_control_loop_pipe_sequential_init_U_n_12,flow_control_loop_pipe_sequential_init_U_n_13,flow_control_loop_pipe_sequential_init_U_n_14,flow_control_loop_pipe_sequential_init_U_n_15,flow_control_loop_pipe_sequential_init_U_n_16,flow_control_loop_pipe_sequential_init_U_n_17,flow_control_loop_pipe_sequential_init_U_n_18,flow_control_loop_pipe_sequential_init_U_n_19,flow_control_loop_pipe_sequential_init_U_n_20,flow_control_loop_pipe_sequential_init_U_n_21,flow_control_loop_pipe_sequential_init_U_n_22,flow_control_loop_pipe_sequential_init_U_n_23,flow_control_loop_pipe_sequential_init_U_n_24,flow_control_loop_pipe_sequential_init_U_n_25,flow_control_loop_pipe_sequential_init_U_n_26,flow_control_loop_pipe_sequential_init_U_n_27}),
        .E(current_cos_34_fu_56_0),
        .O({current_sin_36_fu_600_carry__4_n_6,current_sin_36_fu_600_carry__4_n_7}),
        .Q({ap_CS_fsm_pp0_stage1,\ap_CS_fsm_reg_n_0_[0] }),
        .SR(SR),
        .\ap_CS_fsm_reg[0] (flow_control_loop_pipe_sequential_init_U_n_5),
        .\ap_CS_fsm_reg[1] (\ap_CS_fsm_reg[1]_0 ),
        .\ap_CS_fsm_reg[2] (Q),
        .\ap_CS_fsm_reg[2]_0 (i1_load_reg_287),
        .ap_NS_fsm1(ap_NS_fsm1),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_enable_reg_pp0_iter1_reg(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_ready),
        .ap_loop_init_int(ap_loop_init_int),
        .ap_rst_n(ap_rst_n),
        .\current_cos_34_fu_56_reg[21] (\current_cos_34_fu_56_reg[21]_0 ),
        .\current_cos_34_fu_56_reg[21]_0 (D),
        .\current_sin_36_fu_60_reg[11] ({current_sin_36_fu_600_carry__1_n_4,current_sin_36_fu_600_carry__1_n_5,current_sin_36_fu_600_carry__1_n_6,current_sin_36_fu_600_carry__1_n_7}),
        .\current_sin_36_fu_60_reg[15] ({current_sin_36_fu_600_carry__2_n_4,current_sin_36_fu_600_carry__2_n_5,current_sin_36_fu_600_carry__2_n_6,current_sin_36_fu_600_carry__2_n_7}),
        .\current_sin_36_fu_60_reg[19] ({current_sin_36_fu_600_carry__3_n_4,current_sin_36_fu_600_carry__3_n_5,current_sin_36_fu_600_carry__3_n_6,current_sin_36_fu_600_carry__3_n_7}),
        .\current_sin_36_fu_60_reg[21] (\current_sin_36_fu_60_reg[21]_0 ),
        .\current_sin_36_fu_60_reg[3] ({current_sin_36_fu_600_carry_n_4,current_sin_36_fu_600_carry_n_5,current_sin_36_fu_600_carry_n_6,current_sin_36_fu_600_carry_n_7}),
        .\current_sin_36_fu_60_reg[7] ({current_sin_36_fu_600_carry__0_n_4,current_sin_36_fu_600_carry__0_n_5,current_sin_36_fu_600_carry__0_n_6,current_sin_36_fu_600_carry__0_n_7}),
        .current_sin_36_load_reg_299(current_sin_36_load_reg_299[21]),
        .grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .select_ln75_reg_224(select_ln75_reg_224),
        .\theta_temp2_fu_52_reg[11] ({angles_U_n_27,angles_U_n_28,angles_U_n_29,angles_U_n_30}),
        .\theta_temp2_fu_52_reg[15] ({angles_U_n_31,angles_U_n_32,angles_U_n_33,angles_U_n_34}),
        .\theta_temp2_fu_52_reg[19] ({angles_U_n_35,angles_U_n_36,angles_U_n_37}),
        .\theta_temp2_fu_52_reg[20] ({flow_control_loop_pipe_sequential_init_U_n_50,flow_control_loop_pipe_sequential_init_U_n_51,flow_control_loop_pipe_sequential_init_U_n_52,flow_control_loop_pipe_sequential_init_U_n_53,flow_control_loop_pipe_sequential_init_U_n_54,flow_control_loop_pipe_sequential_init_U_n_55,flow_control_loop_pipe_sequential_init_U_n_56,flow_control_loop_pipe_sequential_init_U_n_57,flow_control_loop_pipe_sequential_init_U_n_58,flow_control_loop_pipe_sequential_init_U_n_59,flow_control_loop_pipe_sequential_init_U_n_60,flow_control_loop_pipe_sequential_init_U_n_61,flow_control_loop_pipe_sequential_init_U_n_62,flow_control_loop_pipe_sequential_init_U_n_63,flow_control_loop_pipe_sequential_init_U_n_64,flow_control_loop_pipe_sequential_init_U_n_65,flow_control_loop_pipe_sequential_init_U_n_66,flow_control_loop_pipe_sequential_init_U_n_67,flow_control_loop_pipe_sequential_init_U_n_68,flow_control_loop_pipe_sequential_init_U_n_69,flow_control_loop_pipe_sequential_init_U_n_70,flow_control_loop_pipe_sequential_init_U_n_71}),
        .\theta_temp2_fu_52_reg[21] ({\theta_temp2_fu_52_reg_n_0_[21] ,\theta_temp2_fu_52_reg_n_0_[20] ,\theta_temp2_fu_52_reg_n_0_[19] ,\theta_temp2_fu_52_reg_n_0_[18] ,\theta_temp2_fu_52_reg_n_0_[17] ,\theta_temp2_fu_52_reg_n_0_[16] ,\theta_temp2_fu_52_reg_n_0_[15] ,\theta_temp2_fu_52_reg_n_0_[14] ,\theta_temp2_fu_52_reg_n_0_[13] ,\theta_temp2_fu_52_reg_n_0_[12] ,\theta_temp2_fu_52_reg_n_0_[11] ,\theta_temp2_fu_52_reg_n_0_[10] ,\theta_temp2_fu_52_reg_n_0_[9] ,\theta_temp2_fu_52_reg_n_0_[8] ,\theta_temp2_fu_52_reg_n_0_[7] ,\theta_temp2_fu_52_reg_n_0_[6] ,\theta_temp2_fu_52_reg_n_0_[5] ,\theta_temp2_fu_52_reg_n_0_[4] ,\theta_temp2_fu_52_reg_n_0_[3] ,\theta_temp2_fu_52_reg_n_0_[2] ,\theta_temp2_fu_52_reg_n_0_[1] ,\theta_temp2_fu_52_reg_n_0_[0] }),
        .\theta_temp2_fu_52_reg[3] ({angles_U_n_20,angles_U_n_21,angles_U_n_22}),
        .\theta_temp2_fu_52_reg[3]_0 (angles_U_n_19),
        .\theta_temp2_fu_52_reg[7] ({angles_U_n_23,angles_U_n_24,angles_U_n_25,angles_U_n_26}),
        .\x_2_reg_234_reg[21] ({flow_control_loop_pipe_sequential_init_U_n_28,flow_control_loop_pipe_sequential_init_U_n_29,flow_control_loop_pipe_sequential_init_U_n_30,flow_control_loop_pipe_sequential_init_U_n_31,flow_control_loop_pipe_sequential_init_U_n_32,flow_control_loop_pipe_sequential_init_U_n_33,flow_control_loop_pipe_sequential_init_U_n_34,flow_control_loop_pipe_sequential_init_U_n_35,flow_control_loop_pipe_sequential_init_U_n_36,flow_control_loop_pipe_sequential_init_U_n_37,flow_control_loop_pipe_sequential_init_U_n_38,flow_control_loop_pipe_sequential_init_U_n_39,flow_control_loop_pipe_sequential_init_U_n_40,flow_control_loop_pipe_sequential_init_U_n_41,flow_control_loop_pipe_sequential_init_U_n_42,flow_control_loop_pipe_sequential_init_U_n_43,flow_control_loop_pipe_sequential_init_U_n_44,flow_control_loop_pipe_sequential_init_U_n_45,flow_control_loop_pipe_sequential_init_U_n_46,flow_control_loop_pipe_sequential_init_U_n_47,flow_control_loop_pipe_sequential_init_U_n_48,flow_control_loop_pipe_sequential_init_U_n_49}));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \i1_fu_48[0]_i_1 
       (.I0(i1_load_reg_287[0]),
        .O(i_fu_229_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i1_fu_48[1]_i_1 
       (.I0(i1_load_reg_287[0]),
        .I1(i1_load_reg_287[1]),
        .O(i_fu_229_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \i1_fu_48[2]_i_1 
       (.I0(i1_load_reg_287[1]),
        .I1(i1_load_reg_287[0]),
        .I2(i1_load_reg_287[2]),
        .O(i_fu_229_p2[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \i1_fu_48[3]_i_2 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp0_iter1),
        .O(i1_fu_48));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \i1_fu_48[3]_i_3 
       (.I0(i1_load_reg_287[0]),
        .I1(i1_load_reg_287[1]),
        .I2(i1_load_reg_287[2]),
        .I3(i1_load_reg_287[3]),
        .O(i_fu_229_p2[3]));
  FDRE #(
    .INIT(1'b0)) 
    \i1_fu_48_reg[0] 
       (.C(ap_clk),
        .CE(i1_fu_48),
        .D(i_fu_229_p2[0]),
        .Q(\i1_fu_48_reg_n_0_[0] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \i1_fu_48_reg[1] 
       (.C(ap_clk),
        .CE(i1_fu_48),
        .D(i_fu_229_p2[1]),
        .Q(\i1_fu_48_reg_n_0_[1] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \i1_fu_48_reg[2] 
       (.C(ap_clk),
        .CE(i1_fu_48),
        .D(i_fu_229_p2[2]),
        .Q(\i1_fu_48_reg_n_0_[2] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \i1_fu_48_reg[3] 
       (.C(ap_clk),
        .CE(i1_fu_48),
        .D(i_fu_229_p2[3]),
        .Q(\i1_fu_48_reg_n_0_[3] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_5));
  FDRE \i1_load_reg_287_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(\i1_fu_48_reg_n_0_[0] ),
        .Q(i1_load_reg_287[0]),
        .R(1'b0));
  FDRE \i1_load_reg_287_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(\i1_fu_48_reg_n_0_[1] ),
        .Q(i1_load_reg_287[1]),
        .R(1'b0));
  FDRE \i1_load_reg_287_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(\i1_fu_48_reg_n_0_[2] ),
        .Q(i1_load_reg_287[2]),
        .R(1'b0));
  FDRE \i1_load_reg_287_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(\i1_fu_48_reg_n_0_[3] ),
        .Q(i1_load_reg_287[3]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_1
       (.I0(\theta_temp2_fu_52_reg_n_0_[19] ),
        .I1(current_sin_36_load_reg_299[21]),
        .O(i__carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_1
       (.I0(\theta_temp2_fu_52_reg_n_0_[20] ),
        .I1(\theta_temp2_fu_52_reg_n_0_[21] ),
        .O(i__carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_2
       (.I0(\theta_temp2_fu_52_reg_n_0_[19] ),
        .I1(\theta_temp2_fu_52_reg_n_0_[20] ),
        .O(i__carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(current_sin_36_load_reg_299[21]),
        .O(i__carry_i_1_n_0));
  LUT6 #(
    .INIT(64'hB8FFB833B8CCB800)) 
    \sin_shift_reg_311[0]_i_1 
       (.I0(\sin_shift_reg_311[3]_i_2_n_0 ),
        .I1(\i1_fu_48_reg_n_0_[1] ),
        .I2(\sin_shift_reg_311[1]_i_2_n_0 ),
        .I3(\i1_fu_48_reg_n_0_[0] ),
        .I4(\sin_shift_reg_311[2]_i_2_n_0 ),
        .I5(\sin_shift_reg_311[0]_i_2_n_0 ),
        .O(sin_shift_fu_157_p2[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sin_shift_reg_311[0]_i_2 
       (.I0(\current_sin_36_fu_60_reg_n_0_[12] ),
        .I1(\current_sin_36_fu_60_reg_n_0_[4] ),
        .I2(\i1_fu_48_reg_n_0_[2] ),
        .I3(\current_sin_36_fu_60_reg_n_0_[8] ),
        .I4(\i1_fu_48_reg_n_0_[3] ),
        .I5(\current_sin_36_fu_60_reg_n_0_[0] ),
        .O(\sin_shift_reg_311[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sin_shift_reg_311[10]_i_1 
       (.I0(\sin_shift_reg_311[13]_i_3_n_0 ),
        .I1(\sin_shift_reg_311[11]_i_2_n_0 ),
        .I2(\i1_fu_48_reg_n_0_[0] ),
        .I3(\sin_shift_reg_311[12]_i_2_n_0 ),
        .I4(\i1_fu_48_reg_n_0_[1] ),
        .I5(\sin_shift_reg_311[10]_i_2_n_0 ),
        .O(sin_shift_fu_157_p2[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sin_shift_reg_311[10]_i_2 
       (.I0(p_0_in),
        .I1(\current_sin_36_fu_60_reg_n_0_[14] ),
        .I2(\i1_fu_48_reg_n_0_[2] ),
        .I3(\current_sin_36_fu_60_reg_n_0_[18] ),
        .I4(\i1_fu_48_reg_n_0_[3] ),
        .I5(\current_sin_36_fu_60_reg_n_0_[10] ),
        .O(\sin_shift_reg_311[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sin_shift_reg_311[11]_i_1 
       (.I0(\sin_shift_reg_311[14]_i_3_n_0 ),
        .I1(\sin_shift_reg_311[12]_i_2_n_0 ),
        .I2(\i1_fu_48_reg_n_0_[0] ),
        .I3(\sin_shift_reg_311[13]_i_3_n_0 ),
        .I4(\i1_fu_48_reg_n_0_[1] ),
        .I5(\sin_shift_reg_311[11]_i_2_n_0 ),
        .O(sin_shift_fu_157_p2[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sin_shift_reg_311[11]_i_2 
       (.I0(p_0_in),
        .I1(\current_sin_36_fu_60_reg_n_0_[15] ),
        .I2(\i1_fu_48_reg_n_0_[2] ),
        .I3(\current_sin_36_fu_60_reg_n_0_[19] ),
        .I4(\i1_fu_48_reg_n_0_[3] ),
        .I5(\current_sin_36_fu_60_reg_n_0_[11] ),
        .O(\sin_shift_reg_311[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sin_shift_reg_311[12]_i_1 
       (.I0(\sin_shift_reg_311[13]_i_2_n_0 ),
        .I1(\sin_shift_reg_311[13]_i_3_n_0 ),
        .I2(\i1_fu_48_reg_n_0_[0] ),
        .I3(\sin_shift_reg_311[14]_i_3_n_0 ),
        .I4(\i1_fu_48_reg_n_0_[1] ),
        .I5(\sin_shift_reg_311[12]_i_2_n_0 ),
        .O(sin_shift_fu_157_p2[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sin_shift_reg_311[12]_i_2 
       (.I0(p_0_in),
        .I1(\current_sin_36_fu_60_reg_n_0_[16] ),
        .I2(\i1_fu_48_reg_n_0_[2] ),
        .I3(\current_sin_36_fu_60_reg_n_0_[20] ),
        .I4(\i1_fu_48_reg_n_0_[3] ),
        .I5(\current_sin_36_fu_60_reg_n_0_[12] ),
        .O(\sin_shift_reg_311[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sin_shift_reg_311[13]_i_1 
       (.I0(\sin_shift_reg_311[14]_i_2_n_0 ),
        .I1(\sin_shift_reg_311[14]_i_3_n_0 ),
        .I2(\i1_fu_48_reg_n_0_[0] ),
        .I3(\sin_shift_reg_311[13]_i_2_n_0 ),
        .I4(\i1_fu_48_reg_n_0_[1] ),
        .I5(\sin_shift_reg_311[13]_i_3_n_0 ),
        .O(sin_shift_fu_157_p2[13]));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \sin_shift_reg_311[13]_i_2 
       (.I0(\current_sin_36_fu_60_reg_n_0_[19] ),
        .I1(\i1_fu_48_reg_n_0_[2] ),
        .I2(p_0_in),
        .I3(\i1_fu_48_reg_n_0_[3] ),
        .I4(\current_sin_36_fu_60_reg_n_0_[15] ),
        .O(\sin_shift_reg_311[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \sin_shift_reg_311[13]_i_3 
       (.I0(\current_sin_36_fu_60_reg_n_0_[17] ),
        .I1(\i1_fu_48_reg_n_0_[2] ),
        .I2(p_0_in),
        .I3(\i1_fu_48_reg_n_0_[3] ),
        .I4(\current_sin_36_fu_60_reg_n_0_[13] ),
        .O(\sin_shift_reg_311[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \sin_shift_reg_311[14]_i_1 
       (.I0(\sin_shift_reg_311[14]_i_2_n_0 ),
        .I1(\i1_fu_48_reg_n_0_[1] ),
        .I2(\sin_shift_reg_311[14]_i_3_n_0 ),
        .I3(\sin_shift_reg_311[15]_i_2_n_0 ),
        .I4(\i1_fu_48_reg_n_0_[0] ),
        .O(sin_shift_fu_157_p2[14]));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \sin_shift_reg_311[14]_i_2 
       (.I0(\current_sin_36_fu_60_reg_n_0_[20] ),
        .I1(\i1_fu_48_reg_n_0_[2] ),
        .I2(p_0_in),
        .I3(\i1_fu_48_reg_n_0_[3] ),
        .I4(\current_sin_36_fu_60_reg_n_0_[16] ),
        .O(\sin_shift_reg_311[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \sin_shift_reg_311[14]_i_3 
       (.I0(\current_sin_36_fu_60_reg_n_0_[18] ),
        .I1(\i1_fu_48_reg_n_0_[2] ),
        .I2(p_0_in),
        .I3(\i1_fu_48_reg_n_0_[3] ),
        .I4(\current_sin_36_fu_60_reg_n_0_[14] ),
        .O(\sin_shift_reg_311[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sin_shift_reg_311[15]_i_1 
       (.I0(\sin_shift_reg_311[16]_i_2_n_0 ),
        .I1(\i1_fu_48_reg_n_0_[0] ),
        .I2(\sin_shift_reg_311[15]_i_2_n_0 ),
        .O(sin_shift_fu_157_p2[15]));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \sin_shift_reg_311[15]_i_2 
       (.I0(\i1_fu_48_reg_n_0_[2] ),
        .I1(p_0_in),
        .I2(\i1_fu_48_reg_n_0_[3] ),
        .I3(\current_sin_36_fu_60_reg_n_0_[17] ),
        .I4(\i1_fu_48_reg_n_0_[1] ),
        .I5(\sin_shift_reg_311[13]_i_2_n_0 ),
        .O(\sin_shift_reg_311[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sin_shift_reg_311[16]_i_1 
       (.I0(\sin_shift_reg_311[17]_i_2_n_0 ),
        .I1(\i1_fu_48_reg_n_0_[0] ),
        .I2(\sin_shift_reg_311[16]_i_2_n_0 ),
        .O(sin_shift_fu_157_p2[16]));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \sin_shift_reg_311[16]_i_2 
       (.I0(\i1_fu_48_reg_n_0_[2] ),
        .I1(p_0_in),
        .I2(\i1_fu_48_reg_n_0_[3] ),
        .I3(\current_sin_36_fu_60_reg_n_0_[18] ),
        .I4(\i1_fu_48_reg_n_0_[1] ),
        .I5(\sin_shift_reg_311[14]_i_2_n_0 ),
        .O(\sin_shift_reg_311[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sin_shift_reg_311[17]_i_1 
       (.I0(\sin_shift_reg_311[18]_i_2_n_0 ),
        .I1(\i1_fu_48_reg_n_0_[0] ),
        .I2(\sin_shift_reg_311[17]_i_2_n_0 ),
        .O(sin_shift_fu_157_p2[17]));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \sin_shift_reg_311[17]_i_2 
       (.I0(\current_sin_36_fu_60_reg_n_0_[19] ),
        .I1(\i1_fu_48_reg_n_0_[1] ),
        .I2(\i1_fu_48_reg_n_0_[2] ),
        .I3(p_0_in),
        .I4(\i1_fu_48_reg_n_0_[3] ),
        .I5(\current_sin_36_fu_60_reg_n_0_[17] ),
        .O(\sin_shift_reg_311[17]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sin_shift_reg_311[18]_i_1 
       (.I0(\sin_shift_reg_311[19]_i_3_n_0 ),
        .I1(\i1_fu_48_reg_n_0_[0] ),
        .I2(\sin_shift_reg_311[18]_i_2_n_0 ),
        .O(sin_shift_fu_157_p2[18]));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \sin_shift_reg_311[18]_i_2 
       (.I0(\current_sin_36_fu_60_reg_n_0_[20] ),
        .I1(\i1_fu_48_reg_n_0_[1] ),
        .I2(\i1_fu_48_reg_n_0_[2] ),
        .I3(p_0_in),
        .I4(\i1_fu_48_reg_n_0_[3] ),
        .I5(\current_sin_36_fu_60_reg_n_0_[18] ),
        .O(\sin_shift_reg_311[18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sin_shift_reg_311[19]_i_1 
       (.I0(\sin_shift_reg_311[19]_i_2_n_0 ),
        .I1(\i1_fu_48_reg_n_0_[0] ),
        .I2(\sin_shift_reg_311[19]_i_3_n_0 ),
        .O(sin_shift_fu_157_p2[19]));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \sin_shift_reg_311[19]_i_2 
       (.I0(\i1_fu_48_reg_n_0_[1] ),
        .I1(\i1_fu_48_reg_n_0_[2] ),
        .I2(p_0_in),
        .I3(\i1_fu_48_reg_n_0_[3] ),
        .I4(\current_sin_36_fu_60_reg_n_0_[20] ),
        .O(\sin_shift_reg_311[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \sin_shift_reg_311[19]_i_3 
       (.I0(\i1_fu_48_reg_n_0_[1] ),
        .I1(\i1_fu_48_reg_n_0_[2] ),
        .I2(p_0_in),
        .I3(\i1_fu_48_reg_n_0_[3] ),
        .I4(\current_sin_36_fu_60_reg_n_0_[19] ),
        .O(\sin_shift_reg_311[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \sin_shift_reg_311[1]_i_1 
       (.I0(\sin_shift_reg_311[4]_i_2_n_0 ),
        .I1(\i1_fu_48_reg_n_0_[1] ),
        .I2(\sin_shift_reg_311[2]_i_2_n_0 ),
        .I3(\sin_shift_reg_311[3]_i_2_n_0 ),
        .I4(\sin_shift_reg_311[1]_i_2_n_0 ),
        .I5(\i1_fu_48_reg_n_0_[0] ),
        .O(sin_shift_fu_157_p2[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sin_shift_reg_311[1]_i_2 
       (.I0(\current_sin_36_fu_60_reg_n_0_[13] ),
        .I1(\current_sin_36_fu_60_reg_n_0_[5] ),
        .I2(\i1_fu_48_reg_n_0_[2] ),
        .I3(\current_sin_36_fu_60_reg_n_0_[9] ),
        .I4(\i1_fu_48_reg_n_0_[3] ),
        .I5(\current_sin_36_fu_60_reg_n_0_[1] ),
        .O(\sin_shift_reg_311[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF01FF00FE00)) 
    \sin_shift_reg_311[20]_i_1 
       (.I0(\i1_fu_48_reg_n_0_[0] ),
        .I1(\i1_fu_48_reg_n_0_[1] ),
        .I2(\i1_fu_48_reg_n_0_[2] ),
        .I3(p_0_in),
        .I4(\i1_fu_48_reg_n_0_[3] ),
        .I5(\current_sin_36_fu_60_reg_n_0_[20] ),
        .O(sin_shift_fu_157_p2[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sin_shift_reg_311[2]_i_1 
       (.I0(\sin_shift_reg_311[5]_i_2_n_0 ),
        .I1(\sin_shift_reg_311[3]_i_2_n_0 ),
        .I2(\i1_fu_48_reg_n_0_[0] ),
        .I3(\sin_shift_reg_311[4]_i_2_n_0 ),
        .I4(\i1_fu_48_reg_n_0_[1] ),
        .I5(\sin_shift_reg_311[2]_i_2_n_0 ),
        .O(sin_shift_fu_157_p2[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sin_shift_reg_311[2]_i_2 
       (.I0(\current_sin_36_fu_60_reg_n_0_[14] ),
        .I1(\current_sin_36_fu_60_reg_n_0_[6] ),
        .I2(\i1_fu_48_reg_n_0_[2] ),
        .I3(\current_sin_36_fu_60_reg_n_0_[10] ),
        .I4(\i1_fu_48_reg_n_0_[3] ),
        .I5(\current_sin_36_fu_60_reg_n_0_[2] ),
        .O(\sin_shift_reg_311[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sin_shift_reg_311[3]_i_1 
       (.I0(\sin_shift_reg_311[6]_i_2_n_0 ),
        .I1(\sin_shift_reg_311[4]_i_2_n_0 ),
        .I2(\i1_fu_48_reg_n_0_[0] ),
        .I3(\sin_shift_reg_311[5]_i_2_n_0 ),
        .I4(\i1_fu_48_reg_n_0_[1] ),
        .I5(\sin_shift_reg_311[3]_i_2_n_0 ),
        .O(sin_shift_fu_157_p2[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sin_shift_reg_311[3]_i_2 
       (.I0(\current_sin_36_fu_60_reg_n_0_[15] ),
        .I1(\current_sin_36_fu_60_reg_n_0_[7] ),
        .I2(\i1_fu_48_reg_n_0_[2] ),
        .I3(\current_sin_36_fu_60_reg_n_0_[11] ),
        .I4(\i1_fu_48_reg_n_0_[3] ),
        .I5(\current_sin_36_fu_60_reg_n_0_[3] ),
        .O(\sin_shift_reg_311[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sin_shift_reg_311[4]_i_1 
       (.I0(\sin_shift_reg_311[7]_i_2_n_0 ),
        .I1(\sin_shift_reg_311[5]_i_2_n_0 ),
        .I2(\i1_fu_48_reg_n_0_[0] ),
        .I3(\sin_shift_reg_311[6]_i_2_n_0 ),
        .I4(\i1_fu_48_reg_n_0_[1] ),
        .I5(\sin_shift_reg_311[4]_i_2_n_0 ),
        .O(sin_shift_fu_157_p2[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sin_shift_reg_311[4]_i_2 
       (.I0(\current_sin_36_fu_60_reg_n_0_[16] ),
        .I1(\current_sin_36_fu_60_reg_n_0_[8] ),
        .I2(\i1_fu_48_reg_n_0_[2] ),
        .I3(\current_sin_36_fu_60_reg_n_0_[12] ),
        .I4(\i1_fu_48_reg_n_0_[3] ),
        .I5(\current_sin_36_fu_60_reg_n_0_[4] ),
        .O(\sin_shift_reg_311[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sin_shift_reg_311[5]_i_1 
       (.I0(\sin_shift_reg_311[8]_i_2_n_0 ),
        .I1(\sin_shift_reg_311[6]_i_2_n_0 ),
        .I2(\i1_fu_48_reg_n_0_[0] ),
        .I3(\sin_shift_reg_311[7]_i_2_n_0 ),
        .I4(\i1_fu_48_reg_n_0_[1] ),
        .I5(\sin_shift_reg_311[5]_i_2_n_0 ),
        .O(sin_shift_fu_157_p2[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sin_shift_reg_311[5]_i_2 
       (.I0(\current_sin_36_fu_60_reg_n_0_[17] ),
        .I1(\current_sin_36_fu_60_reg_n_0_[9] ),
        .I2(\i1_fu_48_reg_n_0_[2] ),
        .I3(\current_sin_36_fu_60_reg_n_0_[13] ),
        .I4(\i1_fu_48_reg_n_0_[3] ),
        .I5(\current_sin_36_fu_60_reg_n_0_[5] ),
        .O(\sin_shift_reg_311[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sin_shift_reg_311[6]_i_1 
       (.I0(\sin_shift_reg_311[9]_i_2_n_0 ),
        .I1(\sin_shift_reg_311[7]_i_2_n_0 ),
        .I2(\i1_fu_48_reg_n_0_[0] ),
        .I3(\sin_shift_reg_311[8]_i_2_n_0 ),
        .I4(\i1_fu_48_reg_n_0_[1] ),
        .I5(\sin_shift_reg_311[6]_i_2_n_0 ),
        .O(sin_shift_fu_157_p2[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sin_shift_reg_311[6]_i_2 
       (.I0(\current_sin_36_fu_60_reg_n_0_[18] ),
        .I1(\current_sin_36_fu_60_reg_n_0_[10] ),
        .I2(\i1_fu_48_reg_n_0_[2] ),
        .I3(\current_sin_36_fu_60_reg_n_0_[14] ),
        .I4(\i1_fu_48_reg_n_0_[3] ),
        .I5(\current_sin_36_fu_60_reg_n_0_[6] ),
        .O(\sin_shift_reg_311[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sin_shift_reg_311[7]_i_1 
       (.I0(\sin_shift_reg_311[10]_i_2_n_0 ),
        .I1(\sin_shift_reg_311[8]_i_2_n_0 ),
        .I2(\i1_fu_48_reg_n_0_[0] ),
        .I3(\sin_shift_reg_311[9]_i_2_n_0 ),
        .I4(\i1_fu_48_reg_n_0_[1] ),
        .I5(\sin_shift_reg_311[7]_i_2_n_0 ),
        .O(sin_shift_fu_157_p2[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sin_shift_reg_311[7]_i_2 
       (.I0(\current_sin_36_fu_60_reg_n_0_[19] ),
        .I1(\current_sin_36_fu_60_reg_n_0_[11] ),
        .I2(\i1_fu_48_reg_n_0_[2] ),
        .I3(\current_sin_36_fu_60_reg_n_0_[15] ),
        .I4(\i1_fu_48_reg_n_0_[3] ),
        .I5(\current_sin_36_fu_60_reg_n_0_[7] ),
        .O(\sin_shift_reg_311[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sin_shift_reg_311[8]_i_1 
       (.I0(\sin_shift_reg_311[11]_i_2_n_0 ),
        .I1(\sin_shift_reg_311[9]_i_2_n_0 ),
        .I2(\i1_fu_48_reg_n_0_[0] ),
        .I3(\sin_shift_reg_311[10]_i_2_n_0 ),
        .I4(\i1_fu_48_reg_n_0_[1] ),
        .I5(\sin_shift_reg_311[8]_i_2_n_0 ),
        .O(sin_shift_fu_157_p2[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sin_shift_reg_311[8]_i_2 
       (.I0(\current_sin_36_fu_60_reg_n_0_[20] ),
        .I1(\current_sin_36_fu_60_reg_n_0_[12] ),
        .I2(\i1_fu_48_reg_n_0_[2] ),
        .I3(\current_sin_36_fu_60_reg_n_0_[16] ),
        .I4(\i1_fu_48_reg_n_0_[3] ),
        .I5(\current_sin_36_fu_60_reg_n_0_[8] ),
        .O(\sin_shift_reg_311[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sin_shift_reg_311[9]_i_1 
       (.I0(\sin_shift_reg_311[12]_i_2_n_0 ),
        .I1(\sin_shift_reg_311[10]_i_2_n_0 ),
        .I2(\i1_fu_48_reg_n_0_[0] ),
        .I3(\sin_shift_reg_311[11]_i_2_n_0 ),
        .I4(\i1_fu_48_reg_n_0_[1] ),
        .I5(\sin_shift_reg_311[9]_i_2_n_0 ),
        .O(sin_shift_fu_157_p2[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sin_shift_reg_311[9]_i_2 
       (.I0(p_0_in),
        .I1(\current_sin_36_fu_60_reg_n_0_[13] ),
        .I2(\i1_fu_48_reg_n_0_[2] ),
        .I3(\current_sin_36_fu_60_reg_n_0_[17] ),
        .I4(\i1_fu_48_reg_n_0_[3] ),
        .I5(\current_sin_36_fu_60_reg_n_0_[9] ),
        .O(\sin_shift_reg_311[9]_i_2_n_0 ));
  FDRE \sin_shift_reg_311_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(sin_shift_fu_157_p2[0]),
        .Q(sin_shift_reg_311[0]),
        .R(1'b0));
  FDRE \sin_shift_reg_311_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(sin_shift_fu_157_p2[10]),
        .Q(sin_shift_reg_311[10]),
        .R(1'b0));
  FDRE \sin_shift_reg_311_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(sin_shift_fu_157_p2[11]),
        .Q(sin_shift_reg_311[11]),
        .R(1'b0));
  FDRE \sin_shift_reg_311_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(sin_shift_fu_157_p2[12]),
        .Q(sin_shift_reg_311[12]),
        .R(1'b0));
  FDRE \sin_shift_reg_311_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(sin_shift_fu_157_p2[13]),
        .Q(sin_shift_reg_311[13]),
        .R(1'b0));
  FDRE \sin_shift_reg_311_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(sin_shift_fu_157_p2[14]),
        .Q(sin_shift_reg_311[14]),
        .R(1'b0));
  FDRE \sin_shift_reg_311_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(sin_shift_fu_157_p2[15]),
        .Q(sin_shift_reg_311[15]),
        .R(1'b0));
  FDRE \sin_shift_reg_311_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(sin_shift_fu_157_p2[16]),
        .Q(sin_shift_reg_311[16]),
        .R(1'b0));
  FDRE \sin_shift_reg_311_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(sin_shift_fu_157_p2[17]),
        .Q(sin_shift_reg_311[17]),
        .R(1'b0));
  FDRE \sin_shift_reg_311_reg[18] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(sin_shift_fu_157_p2[18]),
        .Q(sin_shift_reg_311[18]),
        .R(1'b0));
  FDRE \sin_shift_reg_311_reg[19] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(sin_shift_fu_157_p2[19]),
        .Q(sin_shift_reg_311[19]),
        .R(1'b0));
  FDRE \sin_shift_reg_311_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(sin_shift_fu_157_p2[1]),
        .Q(sin_shift_reg_311[1]),
        .R(1'b0));
  FDRE \sin_shift_reg_311_reg[20] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(sin_shift_fu_157_p2[20]),
        .Q(sin_shift_reg_311[20]),
        .R(1'b0));
  FDRE \sin_shift_reg_311_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(sin_shift_fu_157_p2[2]),
        .Q(sin_shift_reg_311[2]),
        .R(1'b0));
  FDRE \sin_shift_reg_311_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(sin_shift_fu_157_p2[3]),
        .Q(sin_shift_reg_311[3]),
        .R(1'b0));
  FDRE \sin_shift_reg_311_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(sin_shift_fu_157_p2[4]),
        .Q(sin_shift_reg_311[4]),
        .R(1'b0));
  FDRE \sin_shift_reg_311_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(sin_shift_fu_157_p2[5]),
        .Q(sin_shift_reg_311[5]),
        .R(1'b0));
  FDRE \sin_shift_reg_311_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(sin_shift_fu_157_p2[6]),
        .Q(sin_shift_reg_311[6]),
        .R(1'b0));
  FDRE \sin_shift_reg_311_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(sin_shift_fu_157_p2[7]),
        .Q(sin_shift_reg_311[7]),
        .R(1'b0));
  FDRE \sin_shift_reg_311_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(sin_shift_fu_157_p2[8]),
        .Q(sin_shift_reg_311[8]),
        .R(1'b0));
  FDRE \sin_shift_reg_311_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(sin_shift_fu_157_p2[9]),
        .Q(sin_shift_reg_311[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \theta_temp2_fu_52_reg[0] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_71),
        .Q(\theta_temp2_fu_52_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \theta_temp2_fu_52_reg[10] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_61),
        .Q(\theta_temp2_fu_52_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \theta_temp2_fu_52_reg[11] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_60),
        .Q(\theta_temp2_fu_52_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \theta_temp2_fu_52_reg[12] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_59),
        .Q(\theta_temp2_fu_52_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \theta_temp2_fu_52_reg[13] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_58),
        .Q(\theta_temp2_fu_52_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \theta_temp2_fu_52_reg[14] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_57),
        .Q(\theta_temp2_fu_52_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \theta_temp2_fu_52_reg[15] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_56),
        .Q(\theta_temp2_fu_52_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \theta_temp2_fu_52_reg[16] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_55),
        .Q(\theta_temp2_fu_52_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \theta_temp2_fu_52_reg[17] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_54),
        .Q(\theta_temp2_fu_52_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \theta_temp2_fu_52_reg[18] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_53),
        .Q(\theta_temp2_fu_52_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \theta_temp2_fu_52_reg[19] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_52),
        .Q(\theta_temp2_fu_52_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \theta_temp2_fu_52_reg[1] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_70),
        .Q(\theta_temp2_fu_52_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \theta_temp2_fu_52_reg[20] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_51),
        .Q(\theta_temp2_fu_52_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \theta_temp2_fu_52_reg[21] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_50),
        .Q(\theta_temp2_fu_52_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \theta_temp2_fu_52_reg[2] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_69),
        .Q(\theta_temp2_fu_52_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \theta_temp2_fu_52_reg[3] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_68),
        .Q(\theta_temp2_fu_52_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \theta_temp2_fu_52_reg[4] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_67),
        .Q(\theta_temp2_fu_52_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \theta_temp2_fu_52_reg[5] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_66),
        .Q(\theta_temp2_fu_52_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \theta_temp2_fu_52_reg[6] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_65),
        .Q(\theta_temp2_fu_52_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \theta_temp2_fu_52_reg[7] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_64),
        .Q(\theta_temp2_fu_52_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \theta_temp2_fu_52_reg[8] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_63),
        .Q(\theta_temp2_fu_52_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \theta_temp2_fu_52_reg[9] 
       (.C(ap_clk),
        .CE(current_cos_34_fu_56_0),
        .D(flow_control_loop_pipe_sequential_init_U_n_62),
        .Q(\theta_temp2_fu_52_reg_n_0_[9] ),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cordiccart2pol_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_angles_ROM_AUTO_1R
   (S,
    \q0_reg[7]_0 ,
    \q0_reg[11]_0 ,
    \q0_reg[15]_0 ,
    \q0_reg[18]_0 ,
    \q0_reg[0]_0 ,
    \theta_temp2_fu_52_reg[3] ,
    \theta_temp2_fu_52_reg[7] ,
    \theta_temp2_fu_52_reg[11] ,
    \theta_temp2_fu_52_reg[15] ,
    \theta_temp2_fu_52_reg[18] ,
    Q,
    ap_enable_reg_pp0_iter0_reg,
    current_sin_36_load_reg_299,
    \theta_temp2_fu_52_reg[19] ,
    \q0_reg[5]_0 ,
    ap_loop_init_int,
    grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
    select_ln75_reg_224,
    ap_clk);
  output [3:0]S;
  output [3:0]\q0_reg[7]_0 ;
  output [3:0]\q0_reg[11]_0 ;
  output [3:0]\q0_reg[15]_0 ;
  output [2:0]\q0_reg[18]_0 ;
  output \q0_reg[0]_0 ;
  output [2:0]\theta_temp2_fu_52_reg[3] ;
  output [3:0]\theta_temp2_fu_52_reg[7] ;
  output [3:0]\theta_temp2_fu_52_reg[11] ;
  output [3:0]\theta_temp2_fu_52_reg[15] ;
  output [2:0]\theta_temp2_fu_52_reg[18] ;
  input [0:0]Q;
  input ap_enable_reg_pp0_iter0_reg;
  input [0:0]current_sin_36_load_reg_299;
  input [17:0]\theta_temp2_fu_52_reg[19] ;
  input [3:0]\q0_reg[5]_0 ;
  input ap_loop_init_int;
  input grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg;
  input [1:0]select_ln75_reg_224;
  input ap_clk;

  wire [0:0]Q;
  wire [3:0]S;
  wire angles_ce0_local;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_loop_init_int;
  wire [0:0]current_sin_36_load_reg_299;
  wire grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg;
  wire \q0[0]_i_1_n_0 ;
  wire \q0[10]_i_1_n_0 ;
  wire \q0[11]_i_2_n_0 ;
  wire \q0[12]_i_1_n_0 ;
  wire \q0[13]_i_1_n_0 ;
  wire \q0[14]_i_1_n_0 ;
  wire \q0[15]_i_1_n_0 ;
  wire \q0[16]_i_1_n_0 ;
  wire \q0[17]_i_1_n_0 ;
  wire \q0[18]_i_1_n_0 ;
  wire \q0[18]_i_2_n_0 ;
  wire \q0[1]_i_1_n_0 ;
  wire \q0[2]_i_1_n_0 ;
  wire \q0[3]_i_1_n_0 ;
  wire \q0[4]_i_1_n_0 ;
  wire \q0[5]_i_1_n_0 ;
  wire \q0[6]_i_1_n_0 ;
  wire \q0[7]_i_1_n_0 ;
  wire \q0[8]_i_1_n_0 ;
  wire \q0[9]_i_1_n_0 ;
  wire \q0_reg[0]_0 ;
  wire [3:0]\q0_reg[11]_0 ;
  wire [3:0]\q0_reg[15]_0 ;
  wire [2:0]\q0_reg[18]_0 ;
  wire [3:0]\q0_reg[5]_0 ;
  wire [3:0]\q0_reg[7]_0 ;
  wire \q0_reg_n_0_[10] ;
  wire \q0_reg_n_0_[11] ;
  wire \q0_reg_n_0_[12] ;
  wire \q0_reg_n_0_[13] ;
  wire \q0_reg_n_0_[14] ;
  wire \q0_reg_n_0_[15] ;
  wire \q0_reg_n_0_[16] ;
  wire \q0_reg_n_0_[17] ;
  wire \q0_reg_n_0_[18] ;
  wire \q0_reg_n_0_[1] ;
  wire \q0_reg_n_0_[2] ;
  wire \q0_reg_n_0_[3] ;
  wire \q0_reg_n_0_[4] ;
  wire \q0_reg_n_0_[5] ;
  wire \q0_reg_n_0_[6] ;
  wire \q0_reg_n_0_[7] ;
  wire \q0_reg_n_0_[8] ;
  wire \q0_reg_n_0_[9] ;
  wire [1:0]select_ln75_reg_224;
  wire [3:0]\theta_temp2_fu_52_reg[11] ;
  wire [3:0]\theta_temp2_fu_52_reg[15] ;
  wire [2:0]\theta_temp2_fu_52_reg[18] ;
  wire [17:0]\theta_temp2_fu_52_reg[19] ;
  wire [2:0]\theta_temp2_fu_52_reg[3] ;
  wire [3:0]\theta_temp2_fu_52_reg[7] ;

  LUT3 #(
    .INIT(8'h69)) 
    i__carry__0_i_1
       (.I0(\q0_reg_n_0_[7] ),
        .I1(current_sin_36_load_reg_299),
        .I2(\theta_temp2_fu_52_reg[19] [6]),
        .O(\q0_reg[7]_0 [3]));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry__0_i_2
       (.I0(\q0_reg_n_0_[6] ),
        .I1(current_sin_36_load_reg_299),
        .I2(\theta_temp2_fu_52_reg[19] [5]),
        .O(\q0_reg[7]_0 [2]));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry__0_i_3
       (.I0(\q0_reg_n_0_[5] ),
        .I1(current_sin_36_load_reg_299),
        .I2(\theta_temp2_fu_52_reg[19] [4]),
        .O(\q0_reg[7]_0 [1]));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry__0_i_4
       (.I0(\q0_reg_n_0_[4] ),
        .I1(current_sin_36_load_reg_299),
        .I2(\theta_temp2_fu_52_reg[19] [3]),
        .O(\q0_reg[7]_0 [0]));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry__1_i_1
       (.I0(\q0_reg_n_0_[11] ),
        .I1(current_sin_36_load_reg_299),
        .I2(\theta_temp2_fu_52_reg[19] [10]),
        .O(\q0_reg[11]_0 [3]));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry__1_i_2
       (.I0(\q0_reg_n_0_[10] ),
        .I1(current_sin_36_load_reg_299),
        .I2(\theta_temp2_fu_52_reg[19] [9]),
        .O(\q0_reg[11]_0 [2]));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry__1_i_3
       (.I0(\q0_reg_n_0_[9] ),
        .I1(current_sin_36_load_reg_299),
        .I2(\theta_temp2_fu_52_reg[19] [8]),
        .O(\q0_reg[11]_0 [1]));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry__1_i_4
       (.I0(\q0_reg_n_0_[8] ),
        .I1(current_sin_36_load_reg_299),
        .I2(\theta_temp2_fu_52_reg[19] [7]),
        .O(\q0_reg[11]_0 [0]));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry__2_i_1
       (.I0(\q0_reg_n_0_[15] ),
        .I1(current_sin_36_load_reg_299),
        .I2(\theta_temp2_fu_52_reg[19] [14]),
        .O(\q0_reg[15]_0 [3]));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry__2_i_2
       (.I0(\q0_reg_n_0_[14] ),
        .I1(current_sin_36_load_reg_299),
        .I2(\theta_temp2_fu_52_reg[19] [13]),
        .O(\q0_reg[15]_0 [2]));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry__2_i_3
       (.I0(\q0_reg_n_0_[13] ),
        .I1(current_sin_36_load_reg_299),
        .I2(\theta_temp2_fu_52_reg[19] [12]),
        .O(\q0_reg[15]_0 [1]));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry__2_i_4
       (.I0(\q0_reg_n_0_[12] ),
        .I1(current_sin_36_load_reg_299),
        .I2(\theta_temp2_fu_52_reg[19] [11]),
        .O(\q0_reg[15]_0 [0]));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry__3_i_2
       (.I0(\q0_reg_n_0_[18] ),
        .I1(current_sin_36_load_reg_299),
        .I2(\theta_temp2_fu_52_reg[19] [17]),
        .O(\q0_reg[18]_0 [2]));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry__3_i_3
       (.I0(\q0_reg_n_0_[17] ),
        .I1(current_sin_36_load_reg_299),
        .I2(\theta_temp2_fu_52_reg[19] [16]),
        .O(\q0_reg[18]_0 [1]));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry__3_i_4
       (.I0(\q0_reg_n_0_[16] ),
        .I1(current_sin_36_load_reg_299),
        .I2(\theta_temp2_fu_52_reg[19] [15]),
        .O(\q0_reg[18]_0 [0]));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry_i_2
       (.I0(\q0_reg_n_0_[3] ),
        .I1(current_sin_36_load_reg_299),
        .I2(\theta_temp2_fu_52_reg[19] [2]),
        .O(S[3]));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry_i_3
       (.I0(\q0_reg_n_0_[2] ),
        .I1(current_sin_36_load_reg_299),
        .I2(\theta_temp2_fu_52_reg[19] [1]),
        .O(S[2]));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry_i_4
       (.I0(\q0_reg_n_0_[1] ),
        .I1(current_sin_36_load_reg_299),
        .I2(\theta_temp2_fu_52_reg[19] [0]),
        .O(S[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_5
       (.I0(\q0_reg[0]_0 ),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h7)) 
    \q0[0]_i_1 
       (.I0(\q0_reg[5]_0 [1]),
        .I1(\q0_reg[5]_0 [0]),
        .O(\q0[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h1574)) 
    \q0[10]_i_1 
       (.I0(\q0_reg[5]_0 [3]),
        .I1(\q0_reg[5]_0 [2]),
        .I2(\q0_reg[5]_0 [0]),
        .I3(\q0_reg[5]_0 [1]),
        .O(\q0[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \q0[11]_i_1 
       (.I0(Q),
        .I1(ap_enable_reg_pp0_iter0_reg),
        .O(angles_ce0_local));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h1447)) 
    \q0[11]_i_2 
       (.I0(\q0_reg[5]_0 [3]),
        .I1(\q0_reg[5]_0 [2]),
        .I2(\q0_reg[5]_0 [0]),
        .I3(\q0_reg[5]_0 [1]),
        .O(\q0[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \q0[12]_i_1 
       (.I0(\q0_reg[5]_0 [2]),
        .I1(\q0_reg[5]_0 [1]),
        .I2(\q0_reg[5]_0 [0]),
        .O(\q0[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h5E)) 
    \q0[13]_i_1 
       (.I0(\q0_reg[5]_0 [2]),
        .I1(\q0_reg[5]_0 [0]),
        .I2(\q0_reg[5]_0 [1]),
        .O(\q0[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \q0[14]_i_1 
       (.I0(\q0_reg[5]_0 [2]),
        .I1(\q0_reg[5]_0 [1]),
        .I2(\q0_reg[5]_0 [0]),
        .O(\q0[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \q0[15]_i_1 
       (.I0(\q0_reg[5]_0 [1]),
        .I1(\q0_reg[5]_0 [0]),
        .I2(\q0_reg[5]_0 [2]),
        .O(\q0[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \q0[16]_i_1 
       (.I0(\q0_reg[5]_0 [0]),
        .I1(\q0_reg[5]_0 [1]),
        .I2(\q0_reg[5]_0 [2]),
        .O(\q0[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \q0[17]_i_1 
       (.I0(\q0_reg[5]_0 [2]),
        .I1(\q0_reg[5]_0 [1]),
        .O(\q0[17]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \q0[18]_i_1 
       (.I0(\q0_reg[5]_0 [3]),
        .I1(ap_enable_reg_pp0_iter0_reg),
        .I2(Q),
        .O(\q0[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \q0[18]_i_2 
       (.I0(\q0_reg[5]_0 [0]),
        .I1(\q0_reg[5]_0 [1]),
        .I2(\q0_reg[5]_0 [2]),
        .O(\q0[18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h6D)) 
    \q0[1]_i_1 
       (.I0(\q0_reg[5]_0 [2]),
        .I1(\q0_reg[5]_0 [1]),
        .I2(\q0_reg[5]_0 [0]),
        .O(\q0[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \q0[2]_i_1 
       (.I0(\q0_reg[5]_0 [2]),
        .I1(\q0_reg[5]_0 [0]),
        .O(\q0[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h6D)) 
    \q0[3]_i_1 
       (.I0(\q0_reg[5]_0 [2]),
        .I1(\q0_reg[5]_0 [0]),
        .I2(\q0_reg[5]_0 [1]),
        .O(\q0[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h9055)) 
    \q0[4]_i_1 
       (.I0(\q0_reg[5]_0 [3]),
        .I1(\q0_reg[5]_0 [1]),
        .I2(\q0_reg[5]_0 [2]),
        .I3(\q0_reg[5]_0 [0]),
        .O(\q0[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h14D1)) 
    \q0[5]_i_1 
       (.I0(\q0_reg[5]_0 [3]),
        .I1(\q0_reg[5]_0 [2]),
        .I2(\q0_reg[5]_0 [1]),
        .I3(\q0_reg[5]_0 [0]),
        .O(\q0[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h0C45)) 
    \q0[6]_i_1 
       (.I0(\q0_reg[5]_0 [3]),
        .I1(\q0_reg[5]_0 [2]),
        .I2(\q0_reg[5]_0 [1]),
        .I3(\q0_reg[5]_0 [0]),
        .O(\q0[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h155C)) 
    \q0[7]_i_1 
       (.I0(\q0_reg[5]_0 [3]),
        .I1(\q0_reg[5]_0 [2]),
        .I2(\q0_reg[5]_0 [0]),
        .I3(\q0_reg[5]_0 [1]),
        .O(\q0[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h2554)) 
    \q0[8]_i_1 
       (.I0(\q0_reg[5]_0 [3]),
        .I1(\q0_reg[5]_0 [2]),
        .I2(\q0_reg[5]_0 [1]),
        .I3(\q0_reg[5]_0 [0]),
        .O(\q0[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h1464)) 
    \q0[9]_i_1 
       (.I0(\q0_reg[5]_0 [3]),
        .I1(\q0_reg[5]_0 [2]),
        .I2(\q0_reg[5]_0 [1]),
        .I3(\q0_reg[5]_0 [0]),
        .O(\q0[9]_i_1_n_0 ));
  FDRE \q0_reg[0] 
       (.C(ap_clk),
        .CE(angles_ce0_local),
        .D(\q0[0]_i_1_n_0 ),
        .Q(\q0_reg[0]_0 ),
        .R(\q0[18]_i_1_n_0 ));
  FDRE \q0_reg[10] 
       (.C(ap_clk),
        .CE(angles_ce0_local),
        .D(\q0[10]_i_1_n_0 ),
        .Q(\q0_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \q0_reg[11] 
       (.C(ap_clk),
        .CE(angles_ce0_local),
        .D(\q0[11]_i_2_n_0 ),
        .Q(\q0_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \q0_reg[12] 
       (.C(ap_clk),
        .CE(angles_ce0_local),
        .D(\q0[12]_i_1_n_0 ),
        .Q(\q0_reg_n_0_[12] ),
        .R(\q0[18]_i_1_n_0 ));
  FDRE \q0_reg[13] 
       (.C(ap_clk),
        .CE(angles_ce0_local),
        .D(\q0[13]_i_1_n_0 ),
        .Q(\q0_reg_n_0_[13] ),
        .R(\q0[18]_i_1_n_0 ));
  FDRE \q0_reg[14] 
       (.C(ap_clk),
        .CE(angles_ce0_local),
        .D(\q0[14]_i_1_n_0 ),
        .Q(\q0_reg_n_0_[14] ),
        .R(\q0[18]_i_1_n_0 ));
  FDRE \q0_reg[15] 
       (.C(ap_clk),
        .CE(angles_ce0_local),
        .D(\q0[15]_i_1_n_0 ),
        .Q(\q0_reg_n_0_[15] ),
        .R(\q0[18]_i_1_n_0 ));
  FDRE \q0_reg[16] 
       (.C(ap_clk),
        .CE(angles_ce0_local),
        .D(\q0[16]_i_1_n_0 ),
        .Q(\q0_reg_n_0_[16] ),
        .R(\q0[18]_i_1_n_0 ));
  FDRE \q0_reg[17] 
       (.C(ap_clk),
        .CE(angles_ce0_local),
        .D(\q0[17]_i_1_n_0 ),
        .Q(\q0_reg_n_0_[17] ),
        .R(\q0[18]_i_1_n_0 ));
  FDRE \q0_reg[18] 
       (.C(ap_clk),
        .CE(angles_ce0_local),
        .D(\q0[18]_i_2_n_0 ),
        .Q(\q0_reg_n_0_[18] ),
        .R(\q0[18]_i_1_n_0 ));
  FDRE \q0_reg[1] 
       (.C(ap_clk),
        .CE(angles_ce0_local),
        .D(\q0[1]_i_1_n_0 ),
        .Q(\q0_reg_n_0_[1] ),
        .R(\q0[18]_i_1_n_0 ));
  FDRE \q0_reg[2] 
       (.C(ap_clk),
        .CE(angles_ce0_local),
        .D(\q0[2]_i_1_n_0 ),
        .Q(\q0_reg_n_0_[2] ),
        .R(\q0[18]_i_1_n_0 ));
  FDRE \q0_reg[3] 
       (.C(ap_clk),
        .CE(angles_ce0_local),
        .D(\q0[3]_i_1_n_0 ),
        .Q(\q0_reg_n_0_[3] ),
        .R(\q0[18]_i_1_n_0 ));
  FDRE \q0_reg[4] 
       (.C(ap_clk),
        .CE(angles_ce0_local),
        .D(\q0[4]_i_1_n_0 ),
        .Q(\q0_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \q0_reg[5] 
       (.C(ap_clk),
        .CE(angles_ce0_local),
        .D(\q0[5]_i_1_n_0 ),
        .Q(\q0_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \q0_reg[6] 
       (.C(ap_clk),
        .CE(angles_ce0_local),
        .D(\q0[6]_i_1_n_0 ),
        .Q(\q0_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \q0_reg[7] 
       (.C(ap_clk),
        .CE(angles_ce0_local),
        .D(\q0[7]_i_1_n_0 ),
        .Q(\q0_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \q0_reg[8] 
       (.C(ap_clk),
        .CE(angles_ce0_local),
        .D(\q0[8]_i_1_n_0 ),
        .Q(\q0_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \q0_reg[9] 
       (.C(ap_clk),
        .CE(angles_ce0_local),
        .D(\q0[9]_i_1_n_0 ),
        .Q(\q0_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF69696900696969)) 
    \theta_temp2_fu_52[11]_i_6 
       (.I0(\theta_temp2_fu_52_reg[19] [10]),
        .I1(\q0_reg_n_0_[11] ),
        .I2(current_sin_36_load_reg_299),
        .I3(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(select_ln75_reg_224[1]),
        .O(\theta_temp2_fu_52_reg[11] [3]));
  LUT6 #(
    .INIT(64'hFF69696900696969)) 
    \theta_temp2_fu_52[11]_i_7 
       (.I0(\theta_temp2_fu_52_reg[19] [9]),
        .I1(\q0_reg_n_0_[10] ),
        .I2(current_sin_36_load_reg_299),
        .I3(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(select_ln75_reg_224[1]),
        .O(\theta_temp2_fu_52_reg[11] [2]));
  LUT6 #(
    .INIT(64'hFF69696900696969)) 
    \theta_temp2_fu_52[11]_i_8 
       (.I0(\theta_temp2_fu_52_reg[19] [8]),
        .I1(\q0_reg_n_0_[9] ),
        .I2(current_sin_36_load_reg_299),
        .I3(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(select_ln75_reg_224[1]),
        .O(\theta_temp2_fu_52_reg[11] [1]));
  LUT6 #(
    .INIT(64'hFF69696900696969)) 
    \theta_temp2_fu_52[11]_i_9 
       (.I0(\theta_temp2_fu_52_reg[19] [7]),
        .I1(\q0_reg_n_0_[8] ),
        .I2(current_sin_36_load_reg_299),
        .I3(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(select_ln75_reg_224[1]),
        .O(\theta_temp2_fu_52_reg[11] [0]));
  LUT6 #(
    .INIT(64'hFF69696900696969)) 
    \theta_temp2_fu_52[15]_i_6 
       (.I0(\theta_temp2_fu_52_reg[19] [14]),
        .I1(\q0_reg_n_0_[15] ),
        .I2(current_sin_36_load_reg_299),
        .I3(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(select_ln75_reg_224[0]),
        .O(\theta_temp2_fu_52_reg[15] [3]));
  LUT6 #(
    .INIT(64'hFF69696900696969)) 
    \theta_temp2_fu_52[15]_i_7 
       (.I0(\theta_temp2_fu_52_reg[19] [13]),
        .I1(\q0_reg_n_0_[14] ),
        .I2(current_sin_36_load_reg_299),
        .I3(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(select_ln75_reg_224[1]),
        .O(\theta_temp2_fu_52_reg[15] [2]));
  LUT6 #(
    .INIT(64'hFF69696900696969)) 
    \theta_temp2_fu_52[15]_i_8 
       (.I0(\theta_temp2_fu_52_reg[19] [12]),
        .I1(\q0_reg_n_0_[13] ),
        .I2(current_sin_36_load_reg_299),
        .I3(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(select_ln75_reg_224[1]),
        .O(\theta_temp2_fu_52_reg[15] [1]));
  LUT6 #(
    .INIT(64'hFF69696900696969)) 
    \theta_temp2_fu_52[15]_i_9 
       (.I0(\theta_temp2_fu_52_reg[19] [11]),
        .I1(\q0_reg_n_0_[12] ),
        .I2(current_sin_36_load_reg_299),
        .I3(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(select_ln75_reg_224[0]),
        .O(\theta_temp2_fu_52_reg[15] [0]));
  LUT6 #(
    .INIT(64'hFF69696900696969)) 
    \theta_temp2_fu_52[19]_i_7 
       (.I0(\theta_temp2_fu_52_reg[19] [17]),
        .I1(\q0_reg_n_0_[18] ),
        .I2(current_sin_36_load_reg_299),
        .I3(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(select_ln75_reg_224[0]),
        .O(\theta_temp2_fu_52_reg[18] [2]));
  LUT6 #(
    .INIT(64'hFF69696900696969)) 
    \theta_temp2_fu_52[19]_i_8 
       (.I0(\theta_temp2_fu_52_reg[19] [16]),
        .I1(\q0_reg_n_0_[17] ),
        .I2(current_sin_36_load_reg_299),
        .I3(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(select_ln75_reg_224[1]),
        .O(\theta_temp2_fu_52_reg[18] [1]));
  LUT6 #(
    .INIT(64'hFF69696900696969)) 
    \theta_temp2_fu_52[19]_i_9 
       (.I0(\theta_temp2_fu_52_reg[19] [15]),
        .I1(\q0_reg_n_0_[16] ),
        .I2(current_sin_36_load_reg_299),
        .I3(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(select_ln75_reg_224[1]),
        .O(\theta_temp2_fu_52_reg[18] [0]));
  LUT6 #(
    .INIT(64'hFF69696900696969)) 
    \theta_temp2_fu_52[3]_i_7 
       (.I0(\theta_temp2_fu_52_reg[19] [2]),
        .I1(\q0_reg_n_0_[3] ),
        .I2(current_sin_36_load_reg_299),
        .I3(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(select_ln75_reg_224[0]),
        .O(\theta_temp2_fu_52_reg[3] [2]));
  LUT6 #(
    .INIT(64'hFF69696900696969)) 
    \theta_temp2_fu_52[3]_i_8 
       (.I0(\theta_temp2_fu_52_reg[19] [1]),
        .I1(\q0_reg_n_0_[2] ),
        .I2(current_sin_36_load_reg_299),
        .I3(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(select_ln75_reg_224[0]),
        .O(\theta_temp2_fu_52_reg[3] [1]));
  LUT5 #(
    .INIT(32'hFF696969)) 
    \theta_temp2_fu_52[3]_i_9 
       (.I0(\theta_temp2_fu_52_reg[19] [0]),
        .I1(current_sin_36_load_reg_299),
        .I2(\q0_reg_n_0_[1] ),
        .I3(ap_loop_init_int),
        .I4(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .O(\theta_temp2_fu_52_reg[3] [0]));
  LUT6 #(
    .INIT(64'hFF69696900696969)) 
    \theta_temp2_fu_52[7]_i_6 
       (.I0(\theta_temp2_fu_52_reg[19] [6]),
        .I1(\q0_reg_n_0_[7] ),
        .I2(current_sin_36_load_reg_299),
        .I3(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(select_ln75_reg_224[0]),
        .O(\theta_temp2_fu_52_reg[7] [3]));
  LUT6 #(
    .INIT(64'hFF69696900696969)) 
    \theta_temp2_fu_52[7]_i_7 
       (.I0(\theta_temp2_fu_52_reg[19] [5]),
        .I1(\q0_reg_n_0_[6] ),
        .I2(current_sin_36_load_reg_299),
        .I3(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(select_ln75_reg_224[0]),
        .O(\theta_temp2_fu_52_reg[7] [2]));
  LUT6 #(
    .INIT(64'hFF69696900696969)) 
    \theta_temp2_fu_52[7]_i_8 
       (.I0(\theta_temp2_fu_52_reg[19] [4]),
        .I1(\q0_reg_n_0_[5] ),
        .I2(current_sin_36_load_reg_299),
        .I3(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(select_ln75_reg_224[0]),
        .O(\theta_temp2_fu_52_reg[7] [1]));
  LUT6 #(
    .INIT(64'hFF69696900696969)) 
    \theta_temp2_fu_52[7]_i_9 
       (.I0(\theta_temp2_fu_52_reg[19] [3]),
        .I1(\q0_reg_n_0_[4] ),
        .I2(current_sin_36_load_reg_299),
        .I3(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(select_ln75_reg_224[0]),
        .O(\theta_temp2_fu_52_reg[7] [0]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cordiccart2pol_flow_control_loop_pipe_sequential_init
   (ap_loop_init_int,
    ap_enable_reg_pp0_iter1_reg,
    \ap_CS_fsm_reg[1] ,
    ap_NS_fsm1,
    E,
    \ap_CS_fsm_reg[0] ,
    D,
    \x_2_reg_234_reg[21] ,
    \theta_temp2_fu_52_reg[20] ,
    SR,
    ap_clk,
    ap_rst_n,
    ap_enable_reg_pp0_iter0_reg,
    Q,
    \ap_CS_fsm_reg[2] ,
    grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
    ap_enable_reg_pp0_iter1,
    \ap_CS_fsm_reg[2]_0 ,
    \current_cos_34_fu_56_reg[21] ,
    \current_cos_34_fu_56_reg[21]_0 ,
    \current_sin_36_fu_60_reg[21] ,
    O,
    \current_sin_36_fu_60_reg[19] ,
    \current_sin_36_fu_60_reg[15] ,
    \current_sin_36_fu_60_reg[11] ,
    \current_sin_36_fu_60_reg[7] ,
    \current_sin_36_fu_60_reg[3] ,
    current_sin_36_load_reg_299,
    \theta_temp2_fu_52_reg[21] ,
    \theta_temp2_fu_52_reg[3] ,
    \theta_temp2_fu_52_reg[7] ,
    \theta_temp2_fu_52_reg[11] ,
    \theta_temp2_fu_52_reg[15] ,
    \theta_temp2_fu_52_reg[19] ,
    \theta_temp2_fu_52_reg[3]_0 ,
    select_ln75_reg_224);
  output ap_loop_init_int;
  output ap_enable_reg_pp0_iter1_reg;
  output [0:0]\ap_CS_fsm_reg[1] ;
  output ap_NS_fsm1;
  output [0:0]E;
  output [0:0]\ap_CS_fsm_reg[0] ;
  output [21:0]D;
  output [21:0]\x_2_reg_234_reg[21] ;
  output [21:0]\theta_temp2_fu_52_reg[20] ;
  input [0:0]SR;
  input ap_clk;
  input ap_rst_n;
  input ap_enable_reg_pp0_iter0_reg;
  input [1:0]Q;
  input [0:0]\ap_CS_fsm_reg[2] ;
  input grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg;
  input ap_enable_reg_pp0_iter1;
  input [3:0]\ap_CS_fsm_reg[2]_0 ;
  input [21:0]\current_cos_34_fu_56_reg[21] ;
  input [21:0]\current_cos_34_fu_56_reg[21]_0 ;
  input [21:0]\current_sin_36_fu_60_reg[21] ;
  input [1:0]O;
  input [3:0]\current_sin_36_fu_60_reg[19] ;
  input [3:0]\current_sin_36_fu_60_reg[15] ;
  input [3:0]\current_sin_36_fu_60_reg[11] ;
  input [3:0]\current_sin_36_fu_60_reg[7] ;
  input [3:0]\current_sin_36_fu_60_reg[3] ;
  input [0:0]current_sin_36_load_reg_299;
  input [21:0]\theta_temp2_fu_52_reg[21] ;
  input [2:0]\theta_temp2_fu_52_reg[3] ;
  input [3:0]\theta_temp2_fu_52_reg[7] ;
  input [3:0]\theta_temp2_fu_52_reg[11] ;
  input [3:0]\theta_temp2_fu_52_reg[15] ;
  input [2:0]\theta_temp2_fu_52_reg[19] ;
  input \theta_temp2_fu_52_reg[3]_0 ;
  input [1:0]select_ln75_reg_224;

  wire [21:0]D;
  wire [0:0]E;
  wire [1:0]O;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [0:0]\ap_CS_fsm_reg[0] ;
  wire [0:0]\ap_CS_fsm_reg[1] ;
  wire [0:0]\ap_CS_fsm_reg[2] ;
  wire [3:0]\ap_CS_fsm_reg[2]_0 ;
  wire ap_NS_fsm1;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1_n_0;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1_n_0;
  wire ap_rst_n;
  wire [21:0]\current_cos_34_fu_56_reg[21] ;
  wire [21:0]\current_cos_34_fu_56_reg[21]_0 ;
  wire [3:0]\current_sin_36_fu_60_reg[11] ;
  wire [3:0]\current_sin_36_fu_60_reg[15] ;
  wire [3:0]\current_sin_36_fu_60_reg[19] ;
  wire [21:0]\current_sin_36_fu_60_reg[21] ;
  wire [3:0]\current_sin_36_fu_60_reg[3] ;
  wire [3:0]\current_sin_36_fu_60_reg[7] ;
  wire [0:0]current_sin_36_load_reg_299;
  wire grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg;
  wire [1:0]select_ln75_reg_224;
  wire \theta_temp2_fu_52[11]_i_2_n_0 ;
  wire \theta_temp2_fu_52[11]_i_3_n_0 ;
  wire \theta_temp2_fu_52[11]_i_4_n_0 ;
  wire \theta_temp2_fu_52[11]_i_5_n_0 ;
  wire \theta_temp2_fu_52[15]_i_2_n_0 ;
  wire \theta_temp2_fu_52[15]_i_3_n_0 ;
  wire \theta_temp2_fu_52[15]_i_4_n_0 ;
  wire \theta_temp2_fu_52[15]_i_5_n_0 ;
  wire \theta_temp2_fu_52[19]_i_2_n_0 ;
  wire \theta_temp2_fu_52[19]_i_3_n_0 ;
  wire \theta_temp2_fu_52[19]_i_4_n_0 ;
  wire \theta_temp2_fu_52[19]_i_5_n_0 ;
  wire \theta_temp2_fu_52[19]_i_6_n_0 ;
  wire \theta_temp2_fu_52[21]_i_2_n_0 ;
  wire \theta_temp2_fu_52[21]_i_3_n_0 ;
  wire \theta_temp2_fu_52[21]_i_4_n_0 ;
  wire \theta_temp2_fu_52[3]_i_10_n_0 ;
  wire \theta_temp2_fu_52[3]_i_2_n_0 ;
  wire \theta_temp2_fu_52[3]_i_3_n_0 ;
  wire \theta_temp2_fu_52[3]_i_4_n_0 ;
  wire \theta_temp2_fu_52[3]_i_5_n_0 ;
  wire \theta_temp2_fu_52[3]_i_6_n_0 ;
  wire \theta_temp2_fu_52[7]_i_2_n_0 ;
  wire \theta_temp2_fu_52[7]_i_3_n_0 ;
  wire \theta_temp2_fu_52[7]_i_4_n_0 ;
  wire \theta_temp2_fu_52[7]_i_5_n_0 ;
  wire [3:0]\theta_temp2_fu_52_reg[11] ;
  wire \theta_temp2_fu_52_reg[11]_i_1_n_0 ;
  wire \theta_temp2_fu_52_reg[11]_i_1_n_1 ;
  wire \theta_temp2_fu_52_reg[11]_i_1_n_2 ;
  wire \theta_temp2_fu_52_reg[11]_i_1_n_3 ;
  wire [3:0]\theta_temp2_fu_52_reg[15] ;
  wire \theta_temp2_fu_52_reg[15]_i_1_n_0 ;
  wire \theta_temp2_fu_52_reg[15]_i_1_n_1 ;
  wire \theta_temp2_fu_52_reg[15]_i_1_n_2 ;
  wire \theta_temp2_fu_52_reg[15]_i_1_n_3 ;
  wire [2:0]\theta_temp2_fu_52_reg[19] ;
  wire \theta_temp2_fu_52_reg[19]_i_1_n_0 ;
  wire \theta_temp2_fu_52_reg[19]_i_1_n_1 ;
  wire \theta_temp2_fu_52_reg[19]_i_1_n_2 ;
  wire \theta_temp2_fu_52_reg[19]_i_1_n_3 ;
  wire [21:0]\theta_temp2_fu_52_reg[20] ;
  wire [21:0]\theta_temp2_fu_52_reg[21] ;
  wire \theta_temp2_fu_52_reg[21]_i_1_n_3 ;
  wire [2:0]\theta_temp2_fu_52_reg[3] ;
  wire \theta_temp2_fu_52_reg[3]_0 ;
  wire \theta_temp2_fu_52_reg[3]_i_1_n_0 ;
  wire \theta_temp2_fu_52_reg[3]_i_1_n_1 ;
  wire \theta_temp2_fu_52_reg[3]_i_1_n_2 ;
  wire \theta_temp2_fu_52_reg[3]_i_1_n_3 ;
  wire [3:0]\theta_temp2_fu_52_reg[7] ;
  wire \theta_temp2_fu_52_reg[7]_i_1_n_0 ;
  wire \theta_temp2_fu_52_reg[7]_i_1_n_1 ;
  wire \theta_temp2_fu_52_reg[7]_i_1_n_2 ;
  wire \theta_temp2_fu_52_reg[7]_i_1_n_3 ;
  wire [21:0]\x_2_reg_234_reg[21] ;
  wire [3:1]\NLW_theta_temp2_fu_52_reg[21]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_theta_temp2_fu_52_reg[21]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hF2220000)) 
    \ap_CS_fsm[1]_i_2 
       (.I0(ap_done_cache),
        .I1(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I2(Q[0]),
        .I3(ap_enable_reg_pp0_iter1_reg),
        .I4(\ap_CS_fsm_reg[2] ),
        .O(ap_NS_fsm1));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \ap_CS_fsm[1]_i_2__0 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(Q[0]),
        .I2(\ap_CS_fsm_reg[2]_0 [2]),
        .I3(\ap_CS_fsm_reg[2]_0 [3]),
        .I4(\ap_CS_fsm_reg[2]_0 [0]),
        .I5(\ap_CS_fsm_reg[2]_0 [1]),
        .O(ap_enable_reg_pp0_iter1_reg));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h80AA8080)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(\ap_CS_fsm_reg[2] ),
        .I1(ap_enable_reg_pp0_iter1_reg),
        .I2(Q[0]),
        .I3(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I4(ap_done_cache),
        .O(\ap_CS_fsm_reg[1] ));
  LUT4 #(
    .INIT(16'h8F88)) 
    ap_done_cache_i_1
       (.I0(ap_enable_reg_pp0_iter1_reg),
        .I1(Q[0]),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(ap_done_cache),
        .O(ap_done_cache_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1_n_0),
        .Q(ap_done_cache),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFF5DDD5DDD5DDD)) 
    ap_loop_init_int_i_1
       (.I0(ap_rst_n),
        .I1(ap_loop_init_int),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .I3(Q[1]),
        .I4(ap_enable_reg_pp0_iter1_reg),
        .I5(Q[0]),
        .O(ap_loop_init_int_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1_n_0),
        .Q(ap_loop_init_int),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_cos_34_fu_56[0]_i_1 
       (.I0(\current_cos_34_fu_56_reg[21] [0]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(\current_cos_34_fu_56_reg[21]_0 [0]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_cos_34_fu_56[10]_i_1 
       (.I0(\current_cos_34_fu_56_reg[21] [10]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(\current_cos_34_fu_56_reg[21]_0 [10]),
        .O(D[10]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_cos_34_fu_56[11]_i_1 
       (.I0(\current_cos_34_fu_56_reg[21] [11]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(\current_cos_34_fu_56_reg[21]_0 [11]),
        .O(D[11]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_cos_34_fu_56[12]_i_1 
       (.I0(\current_cos_34_fu_56_reg[21] [12]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(\current_cos_34_fu_56_reg[21]_0 [12]),
        .O(D[12]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_cos_34_fu_56[13]_i_1 
       (.I0(\current_cos_34_fu_56_reg[21] [13]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(\current_cos_34_fu_56_reg[21]_0 [13]),
        .O(D[13]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_cos_34_fu_56[14]_i_1 
       (.I0(\current_cos_34_fu_56_reg[21] [14]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(\current_cos_34_fu_56_reg[21]_0 [14]),
        .O(D[14]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_cos_34_fu_56[15]_i_1 
       (.I0(\current_cos_34_fu_56_reg[21] [15]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(\current_cos_34_fu_56_reg[21]_0 [15]),
        .O(D[15]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_cos_34_fu_56[16]_i_1 
       (.I0(\current_cos_34_fu_56_reg[21] [16]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(\current_cos_34_fu_56_reg[21]_0 [16]),
        .O(D[16]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_cos_34_fu_56[17]_i_1 
       (.I0(\current_cos_34_fu_56_reg[21] [17]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(\current_cos_34_fu_56_reg[21]_0 [17]),
        .O(D[17]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_cos_34_fu_56[18]_i_1 
       (.I0(\current_cos_34_fu_56_reg[21] [18]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(\current_cos_34_fu_56_reg[21]_0 [18]),
        .O(D[18]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_cos_34_fu_56[19]_i_1 
       (.I0(\current_cos_34_fu_56_reg[21] [19]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(\current_cos_34_fu_56_reg[21]_0 [19]),
        .O(D[19]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_cos_34_fu_56[1]_i_1 
       (.I0(\current_cos_34_fu_56_reg[21] [1]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(\current_cos_34_fu_56_reg[21]_0 [1]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_cos_34_fu_56[20]_i_1 
       (.I0(\current_cos_34_fu_56_reg[21] [20]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(\current_cos_34_fu_56_reg[21]_0 [20]),
        .O(D[20]));
  LUT4 #(
    .INIT(16'hF800)) 
    \current_cos_34_fu_56[21]_i_1 
       (.I0(ap_loop_init_int),
        .I1(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(Q[0]),
        .O(E));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_cos_34_fu_56[21]_i_2 
       (.I0(\current_cos_34_fu_56_reg[21] [21]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(\current_cos_34_fu_56_reg[21]_0 [21]),
        .O(D[21]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_cos_34_fu_56[2]_i_1 
       (.I0(\current_cos_34_fu_56_reg[21] [2]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(\current_cos_34_fu_56_reg[21]_0 [2]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_cos_34_fu_56[3]_i_1 
       (.I0(\current_cos_34_fu_56_reg[21] [3]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(\current_cos_34_fu_56_reg[21]_0 [3]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_cos_34_fu_56[4]_i_1 
       (.I0(\current_cos_34_fu_56_reg[21] [4]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(\current_cos_34_fu_56_reg[21]_0 [4]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_cos_34_fu_56[5]_i_1 
       (.I0(\current_cos_34_fu_56_reg[21] [5]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(\current_cos_34_fu_56_reg[21]_0 [5]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_cos_34_fu_56[6]_i_1 
       (.I0(\current_cos_34_fu_56_reg[21] [6]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(\current_cos_34_fu_56_reg[21]_0 [6]),
        .O(D[6]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_cos_34_fu_56[7]_i_1 
       (.I0(\current_cos_34_fu_56_reg[21] [7]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(\current_cos_34_fu_56_reg[21]_0 [7]),
        .O(D[7]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_cos_34_fu_56[8]_i_1 
       (.I0(\current_cos_34_fu_56_reg[21] [8]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(\current_cos_34_fu_56_reg[21]_0 [8]),
        .O(D[8]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_cos_34_fu_56[9]_i_1 
       (.I0(\current_cos_34_fu_56_reg[21] [9]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(\current_cos_34_fu_56_reg[21]_0 [9]),
        .O(D[9]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_sin_36_fu_60[0]_i_1 
       (.I0(\current_sin_36_fu_60_reg[21] [0]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(\current_sin_36_fu_60_reg[3] [0]),
        .O(\x_2_reg_234_reg[21] [0]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_sin_36_fu_60[10]_i_1 
       (.I0(\current_sin_36_fu_60_reg[21] [10]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(\current_sin_36_fu_60_reg[11] [2]),
        .O(\x_2_reg_234_reg[21] [10]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_sin_36_fu_60[11]_i_1 
       (.I0(\current_sin_36_fu_60_reg[21] [11]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(\current_sin_36_fu_60_reg[11] [3]),
        .O(\x_2_reg_234_reg[21] [11]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_sin_36_fu_60[12]_i_1 
       (.I0(\current_sin_36_fu_60_reg[21] [12]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(\current_sin_36_fu_60_reg[15] [0]),
        .O(\x_2_reg_234_reg[21] [12]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_sin_36_fu_60[13]_i_1 
       (.I0(\current_sin_36_fu_60_reg[21] [13]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(\current_sin_36_fu_60_reg[15] [1]),
        .O(\x_2_reg_234_reg[21] [13]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_sin_36_fu_60[14]_i_1 
       (.I0(\current_sin_36_fu_60_reg[21] [14]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(\current_sin_36_fu_60_reg[15] [2]),
        .O(\x_2_reg_234_reg[21] [14]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_sin_36_fu_60[15]_i_1 
       (.I0(\current_sin_36_fu_60_reg[21] [15]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(\current_sin_36_fu_60_reg[15] [3]),
        .O(\x_2_reg_234_reg[21] [15]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_sin_36_fu_60[16]_i_1 
       (.I0(\current_sin_36_fu_60_reg[21] [16]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(\current_sin_36_fu_60_reg[19] [0]),
        .O(\x_2_reg_234_reg[21] [16]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_sin_36_fu_60[17]_i_1 
       (.I0(\current_sin_36_fu_60_reg[21] [17]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(\current_sin_36_fu_60_reg[19] [1]),
        .O(\x_2_reg_234_reg[21] [17]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_sin_36_fu_60[18]_i_1 
       (.I0(\current_sin_36_fu_60_reg[21] [18]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(\current_sin_36_fu_60_reg[19] [2]),
        .O(\x_2_reg_234_reg[21] [18]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_sin_36_fu_60[19]_i_1 
       (.I0(\current_sin_36_fu_60_reg[21] [19]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(\current_sin_36_fu_60_reg[19] [3]),
        .O(\x_2_reg_234_reg[21] [19]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_sin_36_fu_60[1]_i_1 
       (.I0(\current_sin_36_fu_60_reg[21] [1]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(\current_sin_36_fu_60_reg[3] [1]),
        .O(\x_2_reg_234_reg[21] [1]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_sin_36_fu_60[20]_i_1 
       (.I0(\current_sin_36_fu_60_reg[21] [20]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(O[0]),
        .O(\x_2_reg_234_reg[21] [20]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_sin_36_fu_60[21]_i_1 
       (.I0(\current_sin_36_fu_60_reg[21] [21]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(O[1]),
        .O(\x_2_reg_234_reg[21] [21]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_sin_36_fu_60[2]_i_1 
       (.I0(\current_sin_36_fu_60_reg[21] [2]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(\current_sin_36_fu_60_reg[3] [2]),
        .O(\x_2_reg_234_reg[21] [2]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_sin_36_fu_60[3]_i_1 
       (.I0(\current_sin_36_fu_60_reg[21] [3]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(\current_sin_36_fu_60_reg[3] [3]),
        .O(\x_2_reg_234_reg[21] [3]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_sin_36_fu_60[4]_i_1 
       (.I0(\current_sin_36_fu_60_reg[21] [4]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(\current_sin_36_fu_60_reg[7] [0]),
        .O(\x_2_reg_234_reg[21] [4]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_sin_36_fu_60[5]_i_1 
       (.I0(\current_sin_36_fu_60_reg[21] [5]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(\current_sin_36_fu_60_reg[7] [1]),
        .O(\x_2_reg_234_reg[21] [5]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_sin_36_fu_60[6]_i_1 
       (.I0(\current_sin_36_fu_60_reg[21] [6]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(\current_sin_36_fu_60_reg[7] [2]),
        .O(\x_2_reg_234_reg[21] [6]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_sin_36_fu_60[7]_i_1 
       (.I0(\current_sin_36_fu_60_reg[21] [7]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(\current_sin_36_fu_60_reg[7] [3]),
        .O(\x_2_reg_234_reg[21] [7]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_sin_36_fu_60[8]_i_1 
       (.I0(\current_sin_36_fu_60_reg[21] [8]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(\current_sin_36_fu_60_reg[11] [0]),
        .O(\x_2_reg_234_reg[21] [8]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \current_sin_36_fu_60[9]_i_1 
       (.I0(\current_sin_36_fu_60_reg[21] [9]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(\current_sin_36_fu_60_reg[11] [1]),
        .O(\x_2_reg_234_reg[21] [9]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \i1_fu_48[3]_i_1 
       (.I0(Q[0]),
        .I1(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\ap_CS_fsm_reg[0] ));
  LUT3 #(
    .INIT(8'h2A)) 
    \theta_temp2_fu_52[11]_i_2 
       (.I0(\theta_temp2_fu_52_reg[21] [11]),
        .I1(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\theta_temp2_fu_52[11]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \theta_temp2_fu_52[11]_i_3 
       (.I0(\theta_temp2_fu_52_reg[21] [10]),
        .I1(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\theta_temp2_fu_52[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \theta_temp2_fu_52[11]_i_4 
       (.I0(\theta_temp2_fu_52_reg[21] [9]),
        .I1(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\theta_temp2_fu_52[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \theta_temp2_fu_52[11]_i_5 
       (.I0(\theta_temp2_fu_52_reg[21] [8]),
        .I1(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\theta_temp2_fu_52[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \theta_temp2_fu_52[15]_i_2 
       (.I0(\theta_temp2_fu_52_reg[21] [15]),
        .I1(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\theta_temp2_fu_52[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \theta_temp2_fu_52[15]_i_3 
       (.I0(\theta_temp2_fu_52_reg[21] [14]),
        .I1(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\theta_temp2_fu_52[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \theta_temp2_fu_52[15]_i_4 
       (.I0(\theta_temp2_fu_52_reg[21] [13]),
        .I1(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\theta_temp2_fu_52[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \theta_temp2_fu_52[15]_i_5 
       (.I0(\theta_temp2_fu_52_reg[21] [12]),
        .I1(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\theta_temp2_fu_52[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \theta_temp2_fu_52[19]_i_2 
       (.I0(\theta_temp2_fu_52_reg[21] [19]),
        .I1(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\theta_temp2_fu_52[19]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \theta_temp2_fu_52[19]_i_3 
       (.I0(\theta_temp2_fu_52_reg[21] [18]),
        .I1(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\theta_temp2_fu_52[19]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \theta_temp2_fu_52[19]_i_4 
       (.I0(\theta_temp2_fu_52_reg[21] [17]),
        .I1(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\theta_temp2_fu_52[19]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \theta_temp2_fu_52[19]_i_5 
       (.I0(\theta_temp2_fu_52_reg[21] [16]),
        .I1(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\theta_temp2_fu_52[19]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hF9990999)) 
    \theta_temp2_fu_52[19]_i_6 
       (.I0(\theta_temp2_fu_52_reg[21] [19]),
        .I1(current_sin_36_load_reg_299),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(select_ln75_reg_224[0]),
        .O(\theta_temp2_fu_52[19]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \theta_temp2_fu_52[21]_i_2 
       (.I0(\theta_temp2_fu_52_reg[21] [20]),
        .I1(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\theta_temp2_fu_52[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF9990999)) 
    \theta_temp2_fu_52[21]_i_3 
       (.I0(\theta_temp2_fu_52_reg[21] [21]),
        .I1(current_sin_36_load_reg_299),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(select_ln75_reg_224[1]),
        .O(\theta_temp2_fu_52[21]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF9990999)) 
    \theta_temp2_fu_52[21]_i_4 
       (.I0(\theta_temp2_fu_52_reg[21] [20]),
        .I1(current_sin_36_load_reg_299),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(select_ln75_reg_224[1]),
        .O(\theta_temp2_fu_52[21]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h152A2A15)) 
    \theta_temp2_fu_52[3]_i_10 
       (.I0(\theta_temp2_fu_52_reg[21] [0]),
        .I1(ap_loop_init_int),
        .I2(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I3(current_sin_36_load_reg_299),
        .I4(\theta_temp2_fu_52_reg[3]_0 ),
        .O(\theta_temp2_fu_52[3]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h15)) 
    \theta_temp2_fu_52[3]_i_2 
       (.I0(current_sin_36_load_reg_299),
        .I1(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\theta_temp2_fu_52[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \theta_temp2_fu_52[3]_i_3 
       (.I0(\theta_temp2_fu_52_reg[21] [3]),
        .I1(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\theta_temp2_fu_52[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \theta_temp2_fu_52[3]_i_4 
       (.I0(\theta_temp2_fu_52_reg[21] [2]),
        .I1(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\theta_temp2_fu_52[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \theta_temp2_fu_52[3]_i_5 
       (.I0(\theta_temp2_fu_52_reg[21] [1]),
        .I1(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\theta_temp2_fu_52[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \theta_temp2_fu_52[3]_i_6 
       (.I0(\theta_temp2_fu_52_reg[21] [0]),
        .I1(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\theta_temp2_fu_52[3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \theta_temp2_fu_52[7]_i_2 
       (.I0(\theta_temp2_fu_52_reg[21] [7]),
        .I1(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\theta_temp2_fu_52[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \theta_temp2_fu_52[7]_i_3 
       (.I0(\theta_temp2_fu_52_reg[21] [6]),
        .I1(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\theta_temp2_fu_52[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \theta_temp2_fu_52[7]_i_4 
       (.I0(\theta_temp2_fu_52_reg[21] [5]),
        .I1(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\theta_temp2_fu_52[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \theta_temp2_fu_52[7]_i_5 
       (.I0(\theta_temp2_fu_52_reg[21] [4]),
        .I1(grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\theta_temp2_fu_52[7]_i_5_n_0 ));
  CARRY4 \theta_temp2_fu_52_reg[11]_i_1 
       (.CI(\theta_temp2_fu_52_reg[7]_i_1_n_0 ),
        .CO({\theta_temp2_fu_52_reg[11]_i_1_n_0 ,\theta_temp2_fu_52_reg[11]_i_1_n_1 ,\theta_temp2_fu_52_reg[11]_i_1_n_2 ,\theta_temp2_fu_52_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\theta_temp2_fu_52[11]_i_2_n_0 ,\theta_temp2_fu_52[11]_i_3_n_0 ,\theta_temp2_fu_52[11]_i_4_n_0 ,\theta_temp2_fu_52[11]_i_5_n_0 }),
        .O(\theta_temp2_fu_52_reg[20] [11:8]),
        .S(\theta_temp2_fu_52_reg[11] ));
  CARRY4 \theta_temp2_fu_52_reg[15]_i_1 
       (.CI(\theta_temp2_fu_52_reg[11]_i_1_n_0 ),
        .CO({\theta_temp2_fu_52_reg[15]_i_1_n_0 ,\theta_temp2_fu_52_reg[15]_i_1_n_1 ,\theta_temp2_fu_52_reg[15]_i_1_n_2 ,\theta_temp2_fu_52_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\theta_temp2_fu_52[15]_i_2_n_0 ,\theta_temp2_fu_52[15]_i_3_n_0 ,\theta_temp2_fu_52[15]_i_4_n_0 ,\theta_temp2_fu_52[15]_i_5_n_0 }),
        .O(\theta_temp2_fu_52_reg[20] [15:12]),
        .S(\theta_temp2_fu_52_reg[15] ));
  CARRY4 \theta_temp2_fu_52_reg[19]_i_1 
       (.CI(\theta_temp2_fu_52_reg[15]_i_1_n_0 ),
        .CO({\theta_temp2_fu_52_reg[19]_i_1_n_0 ,\theta_temp2_fu_52_reg[19]_i_1_n_1 ,\theta_temp2_fu_52_reg[19]_i_1_n_2 ,\theta_temp2_fu_52_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\theta_temp2_fu_52[19]_i_2_n_0 ,\theta_temp2_fu_52[19]_i_3_n_0 ,\theta_temp2_fu_52[19]_i_4_n_0 ,\theta_temp2_fu_52[19]_i_5_n_0 }),
        .O(\theta_temp2_fu_52_reg[20] [19:16]),
        .S({\theta_temp2_fu_52[19]_i_6_n_0 ,\theta_temp2_fu_52_reg[19] }));
  CARRY4 \theta_temp2_fu_52_reg[21]_i_1 
       (.CI(\theta_temp2_fu_52_reg[19]_i_1_n_0 ),
        .CO({\NLW_theta_temp2_fu_52_reg[21]_i_1_CO_UNCONNECTED [3:1],\theta_temp2_fu_52_reg[21]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\theta_temp2_fu_52[21]_i_2_n_0 }),
        .O({\NLW_theta_temp2_fu_52_reg[21]_i_1_O_UNCONNECTED [3:2],\theta_temp2_fu_52_reg[20] [21:20]}),
        .S({1'b0,1'b0,\theta_temp2_fu_52[21]_i_3_n_0 ,\theta_temp2_fu_52[21]_i_4_n_0 }));
  CARRY4 \theta_temp2_fu_52_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\theta_temp2_fu_52_reg[3]_i_1_n_0 ,\theta_temp2_fu_52_reg[3]_i_1_n_1 ,\theta_temp2_fu_52_reg[3]_i_1_n_2 ,\theta_temp2_fu_52_reg[3]_i_1_n_3 }),
        .CYINIT(\theta_temp2_fu_52[3]_i_2_n_0 ),
        .DI({\theta_temp2_fu_52[3]_i_3_n_0 ,\theta_temp2_fu_52[3]_i_4_n_0 ,\theta_temp2_fu_52[3]_i_5_n_0 ,\theta_temp2_fu_52[3]_i_6_n_0 }),
        .O(\theta_temp2_fu_52_reg[20] [3:0]),
        .S({\theta_temp2_fu_52_reg[3] ,\theta_temp2_fu_52[3]_i_10_n_0 }));
  CARRY4 \theta_temp2_fu_52_reg[7]_i_1 
       (.CI(\theta_temp2_fu_52_reg[3]_i_1_n_0 ),
        .CO({\theta_temp2_fu_52_reg[7]_i_1_n_0 ,\theta_temp2_fu_52_reg[7]_i_1_n_1 ,\theta_temp2_fu_52_reg[7]_i_1_n_2 ,\theta_temp2_fu_52_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\theta_temp2_fu_52[7]_i_2_n_0 ,\theta_temp2_fu_52[7]_i_3_n_0 ,\theta_temp2_fu_52[7]_i_4_n_0 ,\theta_temp2_fu_52[7]_i_5_n_0 }),
        .O(\theta_temp2_fu_52_reg[20] [7:4]),
        .S(\theta_temp2_fu_52_reg[7] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cordiccart2pol_mul_22s_20ns_42_1_1
   (tmp_product0_out,
    E,
    ap_clk,
    D,
    Q);
  output [22:0]tmp_product0_out;
  input [0:0]E;
  input ap_clk;
  input [21:0]D;
  input [21:0]Q;

  wire [21:0]D;
  wire [0:0]E;
  wire [21:0]Q;
  wire ap_clk;
  wire \tmp_1_reg_244[0]_i_2_n_0 ;
  wire \tmp_1_reg_244[0]_i_3_n_0 ;
  wire \tmp_1_reg_244[0]_i_4_n_0 ;
  wire \tmp_1_reg_244_reg[0]_i_1_n_0 ;
  wire \tmp_1_reg_244_reg[0]_i_1_n_1 ;
  wire \tmp_1_reg_244_reg[0]_i_1_n_2 ;
  wire \tmp_1_reg_244_reg[0]_i_1_n_3 ;
  wire \tmp_1_reg_244_reg[0]_i_1_n_7 ;
  wire [22:0]tmp_product0_out;
  wire tmp_product_n_100;
  wire tmp_product_n_101;
  wire tmp_product_n_102;
  wire tmp_product_n_103;
  wire tmp_product_n_104;
  wire tmp_product_n_105;
  wire tmp_product_n_58;
  wire tmp_product_n_59;
  wire tmp_product_n_60;
  wire tmp_product_n_61;
  wire tmp_product_n_62;
  wire tmp_product_n_63;
  wire tmp_product_n_64;
  wire tmp_product_n_65;
  wire tmp_product_n_66;
  wire tmp_product_n_67;
  wire tmp_product_n_68;
  wire tmp_product_n_69;
  wire tmp_product_n_70;
  wire tmp_product_n_71;
  wire tmp_product_n_72;
  wire tmp_product_n_73;
  wire tmp_product_n_74;
  wire tmp_product_n_75;
  wire tmp_product_n_76;
  wire tmp_product_n_77;
  wire tmp_product_n_78;
  wire tmp_product_n_79;
  wire tmp_product_n_80;
  wire tmp_product_n_81;
  wire tmp_product_n_82;
  wire tmp_product_n_83;
  wire tmp_product_n_84;
  wire tmp_product_n_85;
  wire tmp_product_n_86;
  wire tmp_product_n_87;
  wire tmp_product_n_88;
  wire tmp_product_n_89;
  wire tmp_product_n_90;
  wire tmp_product_n_91;
  wire tmp_product_n_92;
  wire tmp_product_n_93;
  wire tmp_product_n_94;
  wire tmp_product_n_95;
  wire tmp_product_n_96;
  wire tmp_product_n_97;
  wire tmp_product_n_98;
  wire tmp_product_n_99;
  wire \trunc_ln1_reg_239[13]_i_2_n_0 ;
  wire \trunc_ln1_reg_239[13]_i_3_n_0 ;
  wire \trunc_ln1_reg_239[13]_i_4_n_0 ;
  wire \trunc_ln1_reg_239[13]_i_5_n_0 ;
  wire \trunc_ln1_reg_239[17]_i_2_n_0 ;
  wire \trunc_ln1_reg_239[17]_i_3_n_0 ;
  wire \trunc_ln1_reg_239[17]_i_4_n_0 ;
  wire \trunc_ln1_reg_239[17]_i_5_n_0 ;
  wire \trunc_ln1_reg_239[21]_i_2_n_0 ;
  wire \trunc_ln1_reg_239[21]_i_3_n_0 ;
  wire \trunc_ln1_reg_239[21]_i_4_n_0 ;
  wire \trunc_ln1_reg_239[21]_i_5_n_0 ;
  wire \trunc_ln1_reg_239[5]_i_2_n_0 ;
  wire \trunc_ln1_reg_239[5]_i_3_n_0 ;
  wire \trunc_ln1_reg_239[5]_i_4_n_0 ;
  wire \trunc_ln1_reg_239[5]_i_5_n_0 ;
  wire \trunc_ln1_reg_239[9]_i_2_n_0 ;
  wire \trunc_ln1_reg_239[9]_i_3_n_0 ;
  wire \trunc_ln1_reg_239[9]_i_4_n_0 ;
  wire \trunc_ln1_reg_239[9]_i_5_n_0 ;
  wire \trunc_ln1_reg_239_reg[13]_i_1_n_0 ;
  wire \trunc_ln1_reg_239_reg[13]_i_1_n_1 ;
  wire \trunc_ln1_reg_239_reg[13]_i_1_n_2 ;
  wire \trunc_ln1_reg_239_reg[13]_i_1_n_3 ;
  wire \trunc_ln1_reg_239_reg[17]_i_1_n_0 ;
  wire \trunc_ln1_reg_239_reg[17]_i_1_n_1 ;
  wire \trunc_ln1_reg_239_reg[17]_i_1_n_2 ;
  wire \trunc_ln1_reg_239_reg[17]_i_1_n_3 ;
  wire \trunc_ln1_reg_239_reg[21]_i_1_n_1 ;
  wire \trunc_ln1_reg_239_reg[21]_i_1_n_2 ;
  wire \trunc_ln1_reg_239_reg[21]_i_1_n_3 ;
  wire \trunc_ln1_reg_239_reg[5]_i_1_n_0 ;
  wire \trunc_ln1_reg_239_reg[5]_i_1_n_1 ;
  wire \trunc_ln1_reg_239_reg[5]_i_1_n_2 ;
  wire \trunc_ln1_reg_239_reg[5]_i_1_n_3 ;
  wire \trunc_ln1_reg_239_reg[9]_i_1_n_0 ;
  wire \trunc_ln1_reg_239_reg[9]_i_1_n_1 ;
  wire \trunc_ln1_reg_239_reg[9]_i_1_n_2 ;
  wire \trunc_ln1_reg_239_reg[9]_i_1_n_3 ;
  wire NLW_tmp_product_CARRYCASCOUT_UNCONNECTED;
  wire NLW_tmp_product_MULTSIGNOUT_UNCONNECTED;
  wire NLW_tmp_product_OVERFLOW_UNCONNECTED;
  wire NLW_tmp_product_PATTERNBDETECT_UNCONNECTED;
  wire NLW_tmp_product_PATTERNDETECT_UNCONNECTED;
  wire NLW_tmp_product_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_tmp_product_ACOUT_UNCONNECTED;
  wire [17:0]NLW_tmp_product_BCOUT_UNCONNECTED;
  wire [3:0]NLW_tmp_product_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_tmp_product_PCOUT_UNCONNECTED;
  wire [3:3]\NLW_trunc_ln1_reg_239_reg[21]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h6)) 
    \tmp_1_reg_244[0]_i_2 
       (.I0(tmp_product_n_85),
        .I1(Q[2]),
        .O(\tmp_1_reg_244[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_1_reg_244[0]_i_3 
       (.I0(tmp_product_n_86),
        .I1(Q[1]),
        .O(\tmp_1_reg_244[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp_1_reg_244[0]_i_4 
       (.I0(tmp_product_n_87),
        .I1(Q[0]),
        .O(\tmp_1_reg_244[0]_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_1_reg_244_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\tmp_1_reg_244_reg[0]_i_1_n_0 ,\tmp_1_reg_244_reg[0]_i_1_n_1 ,\tmp_1_reg_244_reg[0]_i_1_n_2 ,\tmp_1_reg_244_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({tmp_product_n_85,tmp_product_n_86,tmp_product_n_87,1'b0}),
        .O({tmp_product0_out[2:0],\tmp_1_reg_244_reg[0]_i_1_n_7 }),
        .S({\tmp_1_reg_244[0]_i_2_n_0 ,\tmp_1_reg_244[0]_i_3_n_0 ,\tmp_1_reg_244[0]_i_4_n_0 ,tmp_product_n_88}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    tmp_product
       (.A({D[21],D[21],D[21],D[21],D[21],D[21],D[21],D[21],D}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_tmp_product_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b1,1'b0,1'b1,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_tmp_product_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_tmp_product_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_tmp_product_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(E),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_tmp_product_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_tmp_product_OVERFLOW_UNCONNECTED),
        .P({tmp_product_n_58,tmp_product_n_59,tmp_product_n_60,tmp_product_n_61,tmp_product_n_62,tmp_product_n_63,tmp_product_n_64,tmp_product_n_65,tmp_product_n_66,tmp_product_n_67,tmp_product_n_68,tmp_product_n_69,tmp_product_n_70,tmp_product_n_71,tmp_product_n_72,tmp_product_n_73,tmp_product_n_74,tmp_product_n_75,tmp_product_n_76,tmp_product_n_77,tmp_product_n_78,tmp_product_n_79,tmp_product_n_80,tmp_product_n_81,tmp_product_n_82,tmp_product_n_83,tmp_product_n_84,tmp_product_n_85,tmp_product_n_86,tmp_product_n_87,tmp_product_n_88,tmp_product_n_89,tmp_product_n_90,tmp_product_n_91,tmp_product_n_92,tmp_product_n_93,tmp_product_n_94,tmp_product_n_95,tmp_product_n_96,tmp_product_n_97,tmp_product_n_98,tmp_product_n_99,tmp_product_n_100,tmp_product_n_101,tmp_product_n_102,tmp_product_n_103,tmp_product_n_104,tmp_product_n_105}),
        .PATTERNBDETECT(NLW_tmp_product_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_tmp_product_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_tmp_product_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_tmp_product_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h6)) 
    \trunc_ln1_reg_239[13]_i_2 
       (.I0(tmp_product_n_73),
        .I1(Q[14]),
        .O(\trunc_ln1_reg_239[13]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \trunc_ln1_reg_239[13]_i_3 
       (.I0(tmp_product_n_74),
        .I1(Q[13]),
        .O(\trunc_ln1_reg_239[13]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \trunc_ln1_reg_239[13]_i_4 
       (.I0(tmp_product_n_75),
        .I1(Q[12]),
        .O(\trunc_ln1_reg_239[13]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \trunc_ln1_reg_239[13]_i_5 
       (.I0(tmp_product_n_76),
        .I1(Q[11]),
        .O(\trunc_ln1_reg_239[13]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \trunc_ln1_reg_239[17]_i_2 
       (.I0(tmp_product_n_69),
        .I1(Q[18]),
        .O(\trunc_ln1_reg_239[17]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \trunc_ln1_reg_239[17]_i_3 
       (.I0(tmp_product_n_70),
        .I1(Q[17]),
        .O(\trunc_ln1_reg_239[17]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \trunc_ln1_reg_239[17]_i_4 
       (.I0(tmp_product_n_71),
        .I1(Q[16]),
        .O(\trunc_ln1_reg_239[17]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \trunc_ln1_reg_239[17]_i_5 
       (.I0(tmp_product_n_72),
        .I1(Q[15]),
        .O(\trunc_ln1_reg_239[17]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \trunc_ln1_reg_239[21]_i_2 
       (.I0(tmp_product_n_65),
        .I1(Q[21]),
        .O(\trunc_ln1_reg_239[21]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \trunc_ln1_reg_239[21]_i_3 
       (.I0(tmp_product_n_66),
        .I1(Q[21]),
        .O(\trunc_ln1_reg_239[21]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \trunc_ln1_reg_239[21]_i_4 
       (.I0(tmp_product_n_67),
        .I1(Q[20]),
        .O(\trunc_ln1_reg_239[21]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \trunc_ln1_reg_239[21]_i_5 
       (.I0(tmp_product_n_68),
        .I1(Q[19]),
        .O(\trunc_ln1_reg_239[21]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \trunc_ln1_reg_239[5]_i_2 
       (.I0(tmp_product_n_81),
        .I1(Q[6]),
        .O(\trunc_ln1_reg_239[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \trunc_ln1_reg_239[5]_i_3 
       (.I0(tmp_product_n_82),
        .I1(Q[5]),
        .O(\trunc_ln1_reg_239[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \trunc_ln1_reg_239[5]_i_4 
       (.I0(tmp_product_n_83),
        .I1(Q[4]),
        .O(\trunc_ln1_reg_239[5]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \trunc_ln1_reg_239[5]_i_5 
       (.I0(tmp_product_n_84),
        .I1(Q[3]),
        .O(\trunc_ln1_reg_239[5]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \trunc_ln1_reg_239[9]_i_2 
       (.I0(tmp_product_n_77),
        .I1(Q[10]),
        .O(\trunc_ln1_reg_239[9]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \trunc_ln1_reg_239[9]_i_3 
       (.I0(tmp_product_n_78),
        .I1(Q[9]),
        .O(\trunc_ln1_reg_239[9]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \trunc_ln1_reg_239[9]_i_4 
       (.I0(tmp_product_n_79),
        .I1(Q[8]),
        .O(\trunc_ln1_reg_239[9]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \trunc_ln1_reg_239[9]_i_5 
       (.I0(tmp_product_n_80),
        .I1(Q[7]),
        .O(\trunc_ln1_reg_239[9]_i_5_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \trunc_ln1_reg_239_reg[13]_i_1 
       (.CI(\trunc_ln1_reg_239_reg[9]_i_1_n_0 ),
        .CO({\trunc_ln1_reg_239_reg[13]_i_1_n_0 ,\trunc_ln1_reg_239_reg[13]_i_1_n_1 ,\trunc_ln1_reg_239_reg[13]_i_1_n_2 ,\trunc_ln1_reg_239_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({tmp_product_n_73,tmp_product_n_74,tmp_product_n_75,tmp_product_n_76}),
        .O(tmp_product0_out[14:11]),
        .S({\trunc_ln1_reg_239[13]_i_2_n_0 ,\trunc_ln1_reg_239[13]_i_3_n_0 ,\trunc_ln1_reg_239[13]_i_4_n_0 ,\trunc_ln1_reg_239[13]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \trunc_ln1_reg_239_reg[17]_i_1 
       (.CI(\trunc_ln1_reg_239_reg[13]_i_1_n_0 ),
        .CO({\trunc_ln1_reg_239_reg[17]_i_1_n_0 ,\trunc_ln1_reg_239_reg[17]_i_1_n_1 ,\trunc_ln1_reg_239_reg[17]_i_1_n_2 ,\trunc_ln1_reg_239_reg[17]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({tmp_product_n_69,tmp_product_n_70,tmp_product_n_71,tmp_product_n_72}),
        .O(tmp_product0_out[18:15]),
        .S({\trunc_ln1_reg_239[17]_i_2_n_0 ,\trunc_ln1_reg_239[17]_i_3_n_0 ,\trunc_ln1_reg_239[17]_i_4_n_0 ,\trunc_ln1_reg_239[17]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \trunc_ln1_reg_239_reg[21]_i_1 
       (.CI(\trunc_ln1_reg_239_reg[17]_i_1_n_0 ),
        .CO({\NLW_trunc_ln1_reg_239_reg[21]_i_1_CO_UNCONNECTED [3],\trunc_ln1_reg_239_reg[21]_i_1_n_1 ,\trunc_ln1_reg_239_reg[21]_i_1_n_2 ,\trunc_ln1_reg_239_reg[21]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,tmp_product_n_66,tmp_product_n_67,tmp_product_n_68}),
        .O(tmp_product0_out[22:19]),
        .S({\trunc_ln1_reg_239[21]_i_2_n_0 ,\trunc_ln1_reg_239[21]_i_3_n_0 ,\trunc_ln1_reg_239[21]_i_4_n_0 ,\trunc_ln1_reg_239[21]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \trunc_ln1_reg_239_reg[5]_i_1 
       (.CI(\tmp_1_reg_244_reg[0]_i_1_n_0 ),
        .CO({\trunc_ln1_reg_239_reg[5]_i_1_n_0 ,\trunc_ln1_reg_239_reg[5]_i_1_n_1 ,\trunc_ln1_reg_239_reg[5]_i_1_n_2 ,\trunc_ln1_reg_239_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({tmp_product_n_81,tmp_product_n_82,tmp_product_n_83,tmp_product_n_84}),
        .O(tmp_product0_out[6:3]),
        .S({\trunc_ln1_reg_239[5]_i_2_n_0 ,\trunc_ln1_reg_239[5]_i_3_n_0 ,\trunc_ln1_reg_239[5]_i_4_n_0 ,\trunc_ln1_reg_239[5]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \trunc_ln1_reg_239_reg[9]_i_1 
       (.CI(\trunc_ln1_reg_239_reg[5]_i_1_n_0 ),
        .CO({\trunc_ln1_reg_239_reg[9]_i_1_n_0 ,\trunc_ln1_reg_239_reg[9]_i_1_n_1 ,\trunc_ln1_reg_239_reg[9]_i_1_n_2 ,\trunc_ln1_reg_239_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({tmp_product_n_77,tmp_product_n_78,tmp_product_n_79,tmp_product_n_80}),
        .O(tmp_product0_out[10:7]),
        .S({\trunc_ln1_reg_239[9]_i_2_n_0 ,\trunc_ln1_reg_239[9]_i_3_n_0 ,\trunc_ln1_reg_239[9]_i_4_n_0 ,\trunc_ln1_reg_239[9]_i_5_n_0 }));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_cordiccart2pol_0_0,cordiccart2pol,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "cordiccart2pol,Vivado 2024.2" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axi_control_ARADDR,
    s_axi_control_ARREADY,
    s_axi_control_ARVALID,
    s_axi_control_AWADDR,
    s_axi_control_AWREADY,
    s_axi_control_AWVALID,
    s_axi_control_BREADY,
    s_axi_control_BRESP,
    s_axi_control_BVALID,
    s_axi_control_RDATA,
    s_axi_control_RREADY,
    s_axi_control_RRESP,
    s_axi_control_RVALID,
    s_axi_control_WDATA,
    s_axi_control_WREADY,
    s_axi_control_WSTRB,
    s_axi_control_WVALID,
    ap_clk,
    ap_rst_n,
    interrupt);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 6, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 50000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_ps7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [5:0]s_axi_control_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *) output s_axi_control_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *) input s_axi_control_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *) input [5:0]s_axi_control_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *) output s_axi_control_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *) input s_axi_control_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *) input s_axi_control_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *) output [1:0]s_axi_control_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *) output s_axi_control_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *) output [31:0]s_axi_control_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *) input s_axi_control_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *) output [1:0]s_axi_control_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *) output s_axi_control_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *) input [31:0]s_axi_control_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *) output s_axi_control_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *) input [3:0]s_axi_control_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *) input s_axi_control_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_ps7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;

  wire \<const0> ;
  wire ap_clk;
  wire ap_rst_n;
  wire interrupt;
  wire [5:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [5:0]s_axi_control_AWADDR;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [21:0]\^s_axi_control_RDATA ;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire s_axi_control_WREADY;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [1:0]NLW_inst_s_axi_control_BRESP_UNCONNECTED;
  wire [31:22]NLW_inst_s_axi_control_RDATA_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_control_RRESP_UNCONNECTED;

  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RDATA[31] = \<const0> ;
  assign s_axi_control_RDATA[30] = \<const0> ;
  assign s_axi_control_RDATA[29] = \<const0> ;
  assign s_axi_control_RDATA[28] = \<const0> ;
  assign s_axi_control_RDATA[27] = \<const0> ;
  assign s_axi_control_RDATA[26] = \<const0> ;
  assign s_axi_control_RDATA[25] = \<const0> ;
  assign s_axi_control_RDATA[24] = \<const0> ;
  assign s_axi_control_RDATA[23] = \<const0> ;
  assign s_axi_control_RDATA[22] = \<const0> ;
  assign s_axi_control_RDATA[21:0] = \^s_axi_control_RDATA [21:0];
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_S_AXI_CONTROL_ADDR_WIDTH = "6" *) 
  (* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) 
  (* C_S_AXI_CONTROL_WSTRB_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_WSTRB_WIDTH = "4" *) 
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_state1 = "4'b0001" *) 
  (* ap_ST_fsm_state2 = "4'b0010" *) 
  (* ap_ST_fsm_state3 = "4'b0100" *) 
  (* ap_ST_fsm_state4 = "4'b1000" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cordiccart2pol inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .interrupt(interrupt),
        .s_axi_control_ARADDR(s_axi_control_ARADDR),
        .s_axi_control_ARREADY(s_axi_control_ARREADY),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_AWADDR({s_axi_control_AWADDR[5:2],1'b0,1'b0}),
        .s_axi_control_AWREADY(s_axi_control_AWREADY),
        .s_axi_control_AWVALID(s_axi_control_AWVALID),
        .s_axi_control_BREADY(s_axi_control_BREADY),
        .s_axi_control_BRESP(NLW_inst_s_axi_control_BRESP_UNCONNECTED[1:0]),
        .s_axi_control_BVALID(s_axi_control_BVALID),
        .s_axi_control_RDATA({NLW_inst_s_axi_control_RDATA_UNCONNECTED[31:22],\^s_axi_control_RDATA }),
        .s_axi_control_RREADY(s_axi_control_RREADY),
        .s_axi_control_RRESP(NLW_inst_s_axi_control_RRESP_UNCONNECTED[1:0]),
        .s_axi_control_RVALID(s_axi_control_RVALID),
        .s_axi_control_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[21:0]}),
        .s_axi_control_WREADY(s_axi_control_WREADY),
        .s_axi_control_WSTRB({1'b0,s_axi_control_WSTRB[2:0]}),
        .s_axi_control_WVALID(s_axi_control_WVALID));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
