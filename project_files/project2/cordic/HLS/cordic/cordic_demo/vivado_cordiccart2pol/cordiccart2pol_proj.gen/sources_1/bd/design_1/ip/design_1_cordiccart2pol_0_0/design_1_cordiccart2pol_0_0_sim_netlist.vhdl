-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Wed Oct 21 22:43:18 2026
-- Host        : ieng6-241.ucsd.edu running 64-bit Linux Mint 22.2
-- Command     : write_vhdl -force -mode funcsim
--               /home/linux/ieng6/students/192/r4shimizu/Desktop/rshimizu_git_fork/Read_the_docs/project_files/project2/cordic/HLS/cordic/vivado_cordiccart2pol/cordiccart2pol_proj.gen/sources_1/bd/design_1/ip/design_1_cordiccart2pol_0_0/design_1_cordiccart2pol_0_0_sim_netlist.vhdl
-- Design      : design_1_cordiccart2pol_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_cordiccart2pol_0_0_cordiccart2pol_control_s_axi is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    interrupt : out STD_LOGIC;
    \select_ln75_reg_224_reg[2]\ : out STD_LOGIC;
    \select_ln75_reg_224_reg[8]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_rstate_reg[1]_0\ : out STD_LOGIC;
    s_axi_control_RVALID : out STD_LOGIC;
    \FSM_onehot_wstate_reg[2]_0\ : out STD_LOGIC;
    s_axi_control_BVALID : out STD_LOGIC;
    \FSM_onehot_wstate_reg[1]_0\ : out STD_LOGIC;
    \int_y_reg[21]_0\ : out STD_LOGIC_VECTOR ( 21 downto 0 );
    \int_y_reg[21]_1\ : out STD_LOGIC_VECTOR ( 21 downto 0 );
    int_ap_start_reg_0 : out STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 21 downto 0 );
    ap_clk : in STD_LOGIC;
    select_ln75_reg_224 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ap_NS_fsm1 : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_RREADY : in STD_LOGIC;
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 21 downto 0 );
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_AWVALID : in STD_LOGIC;
    grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_ready : in STD_LOGIC;
    grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg : in STD_LOGIC;
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \int_r_reg[21]_0\ : in STD_LOGIC_VECTOR ( 21 downto 0 );
    tmp_1_reg_244 : in STD_LOGIC;
    \int_theta_reg[21]_0\ : in STD_LOGIC_VECTOR ( 21 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_cordiccart2pol_0_0_cordiccart2pol_control_s_axi : entity is "cordiccart2pol_control_s_axi";
end design_1_cordiccart2pol_0_0_cordiccart2pol_control_s_axi;

architecture STRUCTURE of design_1_cordiccart2pol_0_0_cordiccart2pol_control_s_axi is
  signal \FSM_onehot_rstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_rstate_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[3]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[1]_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[2]_0\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ap_idle : STD_LOGIC;
  signal ap_start : STD_LOGIC;
  signal ar_hs : STD_LOGIC;
  signal auto_restart_status_i_1_n_0 : STD_LOGIC;
  signal auto_restart_status_reg_n_0 : STD_LOGIC;
  signal \current_cos_4_reg_229[11]_i_2_n_0\ : STD_LOGIC;
  signal \current_cos_4_reg_229[11]_i_3_n_0\ : STD_LOGIC;
  signal \current_cos_4_reg_229[11]_i_4_n_0\ : STD_LOGIC;
  signal \current_cos_4_reg_229[11]_i_5_n_0\ : STD_LOGIC;
  signal \current_cos_4_reg_229[15]_i_2_n_0\ : STD_LOGIC;
  signal \current_cos_4_reg_229[15]_i_3_n_0\ : STD_LOGIC;
  signal \current_cos_4_reg_229[15]_i_4_n_0\ : STD_LOGIC;
  signal \current_cos_4_reg_229[15]_i_5_n_0\ : STD_LOGIC;
  signal \current_cos_4_reg_229[19]_i_2_n_0\ : STD_LOGIC;
  signal \current_cos_4_reg_229[19]_i_3_n_0\ : STD_LOGIC;
  signal \current_cos_4_reg_229[19]_i_4_n_0\ : STD_LOGIC;
  signal \current_cos_4_reg_229[19]_i_5_n_0\ : STD_LOGIC;
  signal \current_cos_4_reg_229[21]_i_2_n_0\ : STD_LOGIC;
  signal \current_cos_4_reg_229[3]_i_2_n_0\ : STD_LOGIC;
  signal \current_cos_4_reg_229[3]_i_3_n_0\ : STD_LOGIC;
  signal \current_cos_4_reg_229[3]_i_4_n_0\ : STD_LOGIC;
  signal \current_cos_4_reg_229[3]_i_5_n_0\ : STD_LOGIC;
  signal \current_cos_4_reg_229[7]_i_2_n_0\ : STD_LOGIC;
  signal \current_cos_4_reg_229[7]_i_3_n_0\ : STD_LOGIC;
  signal \current_cos_4_reg_229[7]_i_4_n_0\ : STD_LOGIC;
  signal \current_cos_4_reg_229[7]_i_5_n_0\ : STD_LOGIC;
  signal \current_cos_4_reg_229_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \current_cos_4_reg_229_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \current_cos_4_reg_229_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \current_cos_4_reg_229_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \current_cos_4_reg_229_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \current_cos_4_reg_229_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \current_cos_4_reg_229_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \current_cos_4_reg_229_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \current_cos_4_reg_229_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \current_cos_4_reg_229_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \current_cos_4_reg_229_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \current_cos_4_reg_229_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \current_cos_4_reg_229_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \current_cos_4_reg_229_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \current_cos_4_reg_229_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \current_cos_4_reg_229_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \current_cos_4_reg_229_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \current_cos_4_reg_229_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \current_cos_4_reg_229_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \current_cos_4_reg_229_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal int_ap_ready : STD_LOGIC;
  signal int_ap_ready_i_1_n_0 : STD_LOGIC;
  signal int_ap_start5_out : STD_LOGIC;
  signal int_ap_start_i_1_n_0 : STD_LOGIC;
  signal int_ap_start_i_3_n_0 : STD_LOGIC;
  signal int_auto_restart_i_1_n_0 : STD_LOGIC;
  signal int_gie_i_1_n_0 : STD_LOGIC;
  signal int_gie_i_2_n_0 : STD_LOGIC;
  signal int_gie_reg_n_0 : STD_LOGIC;
  signal \int_ier[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_ier[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_ier[1]_i_2_n_0\ : STD_LOGIC;
  signal \int_ier_reg_n_0_[0]\ : STD_LOGIC;
  signal \int_ier_reg_n_0_[1]\ : STD_LOGIC;
  signal int_interrupt0 : STD_LOGIC;
  signal int_isr7_out : STD_LOGIC;
  signal \int_isr[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_isr[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_isr_reg_n_0_[0]\ : STD_LOGIC;
  signal \int_isr_reg_n_0_[1]\ : STD_LOGIC;
  signal int_r : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \int_r[3]_i_2_n_0\ : STD_LOGIC;
  signal int_r_ap_vld : STD_LOGIC;
  signal int_r_ap_vld_i_1_n_0 : STD_LOGIC;
  signal int_r_ap_vld_i_2_n_0 : STD_LOGIC;
  signal \int_r_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \int_r_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \int_r_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \int_r_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \int_r_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \int_r_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \int_r_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \int_r_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \int_r_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \int_r_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \int_r_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \int_r_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \int_r_reg[21]_i_1_n_3\ : STD_LOGIC;
  signal \int_r_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \int_r_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \int_r_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \int_r_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \int_r_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \int_r_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \int_r_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \int_r_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal int_task_ap_done : STD_LOGIC;
  signal int_task_ap_done_i_1_n_0 : STD_LOGIC;
  signal int_task_ap_done_i_3_n_0 : STD_LOGIC;
  signal int_task_ap_done_i_4_n_0 : STD_LOGIC;
  signal int_theta : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \int_theta[11]_i_2_n_0\ : STD_LOGIC;
  signal \int_theta[11]_i_3_n_0\ : STD_LOGIC;
  signal \int_theta[11]_i_4_n_0\ : STD_LOGIC;
  signal \int_theta[11]_i_5_n_0\ : STD_LOGIC;
  signal \int_theta[15]_i_2_n_0\ : STD_LOGIC;
  signal \int_theta[15]_i_3_n_0\ : STD_LOGIC;
  signal \int_theta[15]_i_4_n_0\ : STD_LOGIC;
  signal \int_theta[15]_i_5_n_0\ : STD_LOGIC;
  signal \int_theta[19]_i_2_n_0\ : STD_LOGIC;
  signal \int_theta[19]_i_3_n_0\ : STD_LOGIC;
  signal \int_theta[19]_i_4_n_0\ : STD_LOGIC;
  signal \int_theta[19]_i_5_n_0\ : STD_LOGIC;
  signal \int_theta[21]_i_2_n_0\ : STD_LOGIC;
  signal \int_theta[21]_i_3_n_0\ : STD_LOGIC;
  signal \int_theta[3]_i_2_n_0\ : STD_LOGIC;
  signal \int_theta[3]_i_3_n_0\ : STD_LOGIC;
  signal \int_theta[3]_i_4_n_0\ : STD_LOGIC;
  signal \int_theta[7]_i_2_n_0\ : STD_LOGIC;
  signal \int_theta[7]_i_3_n_0\ : STD_LOGIC;
  signal \int_theta[7]_i_4_n_0\ : STD_LOGIC;
  signal \int_theta[7]_i_5_n_0\ : STD_LOGIC;
  signal int_theta_ap_vld : STD_LOGIC;
  signal int_theta_ap_vld_i_1_n_0 : STD_LOGIC;
  signal \int_theta_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \int_theta_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \int_theta_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \int_theta_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \int_theta_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \int_theta_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \int_theta_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \int_theta_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \int_theta_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \int_theta_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \int_theta_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \int_theta_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \int_theta_reg[21]_i_1_n_3\ : STD_LOGIC;
  signal \int_theta_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \int_theta_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \int_theta_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \int_theta_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \int_theta_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \int_theta_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \int_theta_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \int_theta_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal int_x0 : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \int_x[21]_i_1_n_0\ : STD_LOGIC;
  signal int_y0 : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \int_y[21]_i_1_n_0\ : STD_LOGIC;
  signal \^interrupt\ : STD_LOGIC;
  signal p_6_in : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal r : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal rdata : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_5_n_0\ : STD_LOGIC;
  signal \rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[21]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[21]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[2]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[9]_i_3_n_0\ : STD_LOGIC;
  signal \^s_axi_control_bvalid\ : STD_LOGIC;
  signal \^s_axi_control_rvalid\ : STD_LOGIC;
  signal task_ap_done : STD_LOGIC;
  signal theta : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal waddr : STD_LOGIC;
  signal \waddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[4]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[5]\ : STD_LOGIC;
  signal x : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \x_2_reg_234[11]_i_2_n_0\ : STD_LOGIC;
  signal \x_2_reg_234[11]_i_3_n_0\ : STD_LOGIC;
  signal \x_2_reg_234[11]_i_4_n_0\ : STD_LOGIC;
  signal \x_2_reg_234[11]_i_5_n_0\ : STD_LOGIC;
  signal \x_2_reg_234[15]_i_2_n_0\ : STD_LOGIC;
  signal \x_2_reg_234[15]_i_3_n_0\ : STD_LOGIC;
  signal \x_2_reg_234[15]_i_4_n_0\ : STD_LOGIC;
  signal \x_2_reg_234[15]_i_5_n_0\ : STD_LOGIC;
  signal \x_2_reg_234[19]_i_2_n_0\ : STD_LOGIC;
  signal \x_2_reg_234[19]_i_3_n_0\ : STD_LOGIC;
  signal \x_2_reg_234[19]_i_4_n_0\ : STD_LOGIC;
  signal \x_2_reg_234[19]_i_5_n_0\ : STD_LOGIC;
  signal \x_2_reg_234[21]_i_2_n_0\ : STD_LOGIC;
  signal \x_2_reg_234[21]_i_3_n_0\ : STD_LOGIC;
  signal \x_2_reg_234[3]_i_2_n_0\ : STD_LOGIC;
  signal \x_2_reg_234[3]_i_3_n_0\ : STD_LOGIC;
  signal \x_2_reg_234[3]_i_4_n_0\ : STD_LOGIC;
  signal \x_2_reg_234[3]_i_5_n_0\ : STD_LOGIC;
  signal \x_2_reg_234[3]_i_6_n_0\ : STD_LOGIC;
  signal \x_2_reg_234[7]_i_2_n_0\ : STD_LOGIC;
  signal \x_2_reg_234[7]_i_3_n_0\ : STD_LOGIC;
  signal \x_2_reg_234[7]_i_4_n_0\ : STD_LOGIC;
  signal \x_2_reg_234[7]_i_5_n_0\ : STD_LOGIC;
  signal \x_2_reg_234_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \x_2_reg_234_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \x_2_reg_234_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \x_2_reg_234_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \x_2_reg_234_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \x_2_reg_234_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \x_2_reg_234_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \x_2_reg_234_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \x_2_reg_234_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \x_2_reg_234_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \x_2_reg_234_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \x_2_reg_234_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \x_2_reg_234_reg[21]_i_1_n_3\ : STD_LOGIC;
  signal \x_2_reg_234_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \x_2_reg_234_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \x_2_reg_234_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \x_2_reg_234_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \x_2_reg_234_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \x_2_reg_234_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \x_2_reg_234_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \x_2_reg_234_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal y : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \NLW_current_cos_4_reg_229_reg[21]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_current_cos_4_reg_229_reg[21]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_int_r_reg[21]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_int_r_reg[21]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_int_theta_reg[21]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_int_theta_reg[21]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_x_2_reg_234_reg[21]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_x_2_reg_234_reg[21]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[2]_i_1\ : label is "soft_lutpair6";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[1]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[2]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute SOFT_HLUTNM of \FSM_onehot_wstate[3]_i_1\ : label is "soft_lutpair7";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[1]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[2]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[3]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_1__0\ : label is "soft_lutpair0";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \current_cos_4_reg_229_reg[11]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \current_cos_4_reg_229_reg[15]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \current_cos_4_reg_229_reg[19]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \current_cos_4_reg_229_reg[21]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \current_cos_4_reg_229_reg[3]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \current_cos_4_reg_229_reg[7]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of int_ap_idle_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of int_ap_start_i_3 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of int_gie_i_2 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \int_ier[1]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of int_r_ap_vld_i_2 : label is "soft_lutpair3";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \int_r_reg[11]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \int_r_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \int_r_reg[19]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \int_r_reg[21]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \int_r_reg[3]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \int_r_reg[7]_i_1\ : label is 35;
  attribute SOFT_HLUTNM of int_task_ap_done_i_2 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of int_task_ap_done_i_3 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of int_task_ap_done_i_4 : label is "soft_lutpair1";
  attribute ADDER_THRESHOLD of \int_theta_reg[11]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \int_theta_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \int_theta_reg[19]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \int_theta_reg[21]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \int_theta_reg[3]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \int_theta_reg[7]_i_1\ : label is 35;
  attribute SOFT_HLUTNM of \int_x[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \int_x[10]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \int_x[11]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \int_x[12]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \int_x[13]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \int_x[14]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \int_x[15]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \int_x[16]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \int_x[17]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \int_x[18]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \int_x[19]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \int_x[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \int_x[20]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \int_x[21]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \int_x[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \int_x[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \int_x[4]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \int_x[5]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \int_x[6]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \int_x[7]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \int_x[8]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \int_x[9]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \int_y[0]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \int_y[10]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \int_y[11]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \int_y[12]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \int_y[13]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \int_y[14]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \int_y[15]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \int_y[16]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \int_y[17]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \int_y[18]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \int_y[19]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \int_y[1]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \int_y[20]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \int_y[21]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \int_y[2]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \int_y[3]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \int_y[4]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \int_y[5]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \int_y[6]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \int_y[7]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \int_y[8]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \int_y[9]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \rdata[1]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rdata[21]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rdata[2]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \select_ln75_reg_224[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \select_ln75_reg_224[8]_i_1\ : label is "soft_lutpair8";
  attribute ADDER_THRESHOLD of \x_2_reg_234_reg[11]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \x_2_reg_234_reg[11]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \x_2_reg_234_reg[15]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \x_2_reg_234_reg[15]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \x_2_reg_234_reg[19]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \x_2_reg_234_reg[19]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \x_2_reg_234_reg[21]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \x_2_reg_234_reg[21]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \x_2_reg_234_reg[3]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \x_2_reg_234_reg[3]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \x_2_reg_234_reg[7]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \x_2_reg_234_reg[7]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  \FSM_onehot_rstate_reg[1]_0\ <= \^fsm_onehot_rstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[1]_0\ <= \^fsm_onehot_wstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[2]_0\ <= \^fsm_onehot_wstate_reg[2]_0\;
  SR(0) <= \^sr\(0);
  interrupt <= \^interrupt\;
  s_axi_control_BVALID <= \^s_axi_control_bvalid\;
  s_axi_control_RVALID <= \^s_axi_control_rvalid\;
\FSM_onehot_rstate[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F727"
    )
        port map (
      I0 => \^fsm_onehot_rstate_reg[1]_0\,
      I1 => s_axi_control_ARVALID,
      I2 => \^s_axi_control_rvalid\,
      I3 => s_axi_control_RREADY,
      O => \FSM_onehot_rstate[1]_i_1_n_0\
    );
\FSM_onehot_rstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F222"
    )
        port map (
      I0 => \^s_axi_control_rvalid\,
      I1 => s_axi_control_RREADY,
      I2 => s_axi_control_ARVALID,
      I3 => \^fsm_onehot_rstate_reg[1]_0\,
      O => \FSM_onehot_rstate[2]_i_1_n_0\
    );
\FSM_onehot_rstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[1]_i_1_n_0\,
      Q => \^fsm_onehot_rstate_reg[1]_0\,
      R => \^sr\(0)
    );
\FSM_onehot_rstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[2]_i_1_n_0\,
      Q => \^s_axi_control_rvalid\,
      R => \^sr\(0)
    );
\FSM_onehot_wstate[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => \^sr\(0)
    );
\FSM_onehot_wstate[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0C1D1D"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[2]_0\,
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      I2 => s_axi_control_AWVALID,
      I3 => s_axi_control_BREADY,
      I4 => \^s_axi_control_bvalid\,
      O => \FSM_onehot_wstate[1]_i_2_n_0\
    );
\FSM_onehot_wstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => s_axi_control_AWVALID,
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      I2 => s_axi_control_WVALID,
      I3 => \^fsm_onehot_wstate_reg[2]_0\,
      O => \FSM_onehot_wstate[2]_i_1_n_0\
    );
\FSM_onehot_wstate[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => s_axi_control_WVALID,
      I1 => \^fsm_onehot_wstate_reg[2]_0\,
      I2 => s_axi_control_BREADY,
      I3 => \^s_axi_control_bvalid\,
      O => \FSM_onehot_wstate[3]_i_1_n_0\
    );
\FSM_onehot_wstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[1]_i_2_n_0\,
      Q => \^fsm_onehot_wstate_reg[1]_0\,
      R => \^sr\(0)
    );
\FSM_onehot_wstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[2]_i_1_n_0\,
      Q => \^fsm_onehot_wstate_reg[2]_0\,
      R => \^sr\(0)
    );
\FSM_onehot_wstate_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[3]_i_1_n_0\,
      Q => \^s_axi_control_bvalid\,
      R => \^sr\(0)
    );
\ap_CS_fsm[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => Q(0),
      I1 => ap_start,
      I2 => Q(2),
      O => D(0)
    );
\ap_CS_fsm[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA0003"
    )
        port map (
      I0 => ap_start,
      I1 => ap_NS_fsm1,
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(0),
      O => D(1)
    );
auto_restart_status_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFAA"
    )
        port map (
      I0 => p_6_in(7),
      I1 => ap_start,
      I2 => Q(0),
      I3 => auto_restart_status_reg_n_0,
      O => auto_restart_status_i_1_n_0
    );
auto_restart_status_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => auto_restart_status_i_1_n_0,
      Q => auto_restart_status_reg_n_0,
      R => \^sr\(0)
    );
\current_cos_4_reg_229[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y(21),
      I1 => y(11),
      O => \current_cos_4_reg_229[11]_i_2_n_0\
    );
\current_cos_4_reg_229[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y(21),
      I1 => y(10),
      O => \current_cos_4_reg_229[11]_i_3_n_0\
    );
\current_cos_4_reg_229[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y(21),
      I1 => y(9),
      O => \current_cos_4_reg_229[11]_i_4_n_0\
    );
\current_cos_4_reg_229[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y(21),
      I1 => y(8),
      O => \current_cos_4_reg_229[11]_i_5_n_0\
    );
\current_cos_4_reg_229[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y(21),
      I1 => y(15),
      O => \current_cos_4_reg_229[15]_i_2_n_0\
    );
\current_cos_4_reg_229[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y(21),
      I1 => y(14),
      O => \current_cos_4_reg_229[15]_i_3_n_0\
    );
\current_cos_4_reg_229[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y(21),
      I1 => y(13),
      O => \current_cos_4_reg_229[15]_i_4_n_0\
    );
\current_cos_4_reg_229[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y(21),
      I1 => y(12),
      O => \current_cos_4_reg_229[15]_i_5_n_0\
    );
\current_cos_4_reg_229[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y(21),
      I1 => y(19),
      O => \current_cos_4_reg_229[19]_i_2_n_0\
    );
\current_cos_4_reg_229[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y(21),
      I1 => y(18),
      O => \current_cos_4_reg_229[19]_i_3_n_0\
    );
\current_cos_4_reg_229[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y(21),
      I1 => y(17),
      O => \current_cos_4_reg_229[19]_i_4_n_0\
    );
\current_cos_4_reg_229[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y(21),
      I1 => y(16),
      O => \current_cos_4_reg_229[19]_i_5_n_0\
    );
\current_cos_4_reg_229[21]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y(21),
      I1 => y(20),
      O => \current_cos_4_reg_229[21]_i_2_n_0\
    );
\current_cos_4_reg_229[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y(21),
      I1 => y(3),
      O => \current_cos_4_reg_229[3]_i_2_n_0\
    );
\current_cos_4_reg_229[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y(21),
      I1 => y(2),
      O => \current_cos_4_reg_229[3]_i_3_n_0\
    );
\current_cos_4_reg_229[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y(21),
      I1 => y(1),
      O => \current_cos_4_reg_229[3]_i_4_n_0\
    );
\current_cos_4_reg_229[3]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => y(0),
      O => \current_cos_4_reg_229[3]_i_5_n_0\
    );
\current_cos_4_reg_229[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y(21),
      I1 => y(7),
      O => \current_cos_4_reg_229[7]_i_2_n_0\
    );
\current_cos_4_reg_229[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y(21),
      I1 => y(6),
      O => \current_cos_4_reg_229[7]_i_3_n_0\
    );
\current_cos_4_reg_229[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y(21),
      I1 => y(5),
      O => \current_cos_4_reg_229[7]_i_4_n_0\
    );
\current_cos_4_reg_229[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y(21),
      I1 => y(4),
      O => \current_cos_4_reg_229[7]_i_5_n_0\
    );
\current_cos_4_reg_229_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \current_cos_4_reg_229_reg[7]_i_1_n_0\,
      CO(3) => \current_cos_4_reg_229_reg[11]_i_1_n_0\,
      CO(2) => \current_cos_4_reg_229_reg[11]_i_1_n_1\,
      CO(1) => \current_cos_4_reg_229_reg[11]_i_1_n_2\,
      CO(0) => \current_cos_4_reg_229_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \int_y_reg[21]_0\(11 downto 8),
      S(3) => \current_cos_4_reg_229[11]_i_2_n_0\,
      S(2) => \current_cos_4_reg_229[11]_i_3_n_0\,
      S(1) => \current_cos_4_reg_229[11]_i_4_n_0\,
      S(0) => \current_cos_4_reg_229[11]_i_5_n_0\
    );
\current_cos_4_reg_229_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \current_cos_4_reg_229_reg[11]_i_1_n_0\,
      CO(3) => \current_cos_4_reg_229_reg[15]_i_1_n_0\,
      CO(2) => \current_cos_4_reg_229_reg[15]_i_1_n_1\,
      CO(1) => \current_cos_4_reg_229_reg[15]_i_1_n_2\,
      CO(0) => \current_cos_4_reg_229_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \int_y_reg[21]_0\(15 downto 12),
      S(3) => \current_cos_4_reg_229[15]_i_2_n_0\,
      S(2) => \current_cos_4_reg_229[15]_i_3_n_0\,
      S(1) => \current_cos_4_reg_229[15]_i_4_n_0\,
      S(0) => \current_cos_4_reg_229[15]_i_5_n_0\
    );
\current_cos_4_reg_229_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \current_cos_4_reg_229_reg[15]_i_1_n_0\,
      CO(3) => \current_cos_4_reg_229_reg[19]_i_1_n_0\,
      CO(2) => \current_cos_4_reg_229_reg[19]_i_1_n_1\,
      CO(1) => \current_cos_4_reg_229_reg[19]_i_1_n_2\,
      CO(0) => \current_cos_4_reg_229_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \int_y_reg[21]_0\(19 downto 16),
      S(3) => \current_cos_4_reg_229[19]_i_2_n_0\,
      S(2) => \current_cos_4_reg_229[19]_i_3_n_0\,
      S(1) => \current_cos_4_reg_229[19]_i_4_n_0\,
      S(0) => \current_cos_4_reg_229[19]_i_5_n_0\
    );
\current_cos_4_reg_229_reg[21]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \current_cos_4_reg_229_reg[19]_i_1_n_0\,
      CO(3 downto 2) => \NLW_current_cos_4_reg_229_reg[21]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \int_y_reg[21]_0\(21),
      CO(0) => \NLW_current_cos_4_reg_229_reg[21]_i_1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_current_cos_4_reg_229_reg[21]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \int_y_reg[21]_0\(20),
      S(3 downto 1) => B"001",
      S(0) => \current_cos_4_reg_229[21]_i_2_n_0\
    );
\current_cos_4_reg_229_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \current_cos_4_reg_229_reg[3]_i_1_n_0\,
      CO(2) => \current_cos_4_reg_229_reg[3]_i_1_n_1\,
      CO(1) => \current_cos_4_reg_229_reg[3]_i_1_n_2\,
      CO(0) => \current_cos_4_reg_229_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => y(21),
      O(3 downto 0) => \int_y_reg[21]_0\(3 downto 0),
      S(3) => \current_cos_4_reg_229[3]_i_2_n_0\,
      S(2) => \current_cos_4_reg_229[3]_i_3_n_0\,
      S(1) => \current_cos_4_reg_229[3]_i_4_n_0\,
      S(0) => \current_cos_4_reg_229[3]_i_5_n_0\
    );
\current_cos_4_reg_229_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \current_cos_4_reg_229_reg[3]_i_1_n_0\,
      CO(3) => \current_cos_4_reg_229_reg[7]_i_1_n_0\,
      CO(2) => \current_cos_4_reg_229_reg[7]_i_1_n_1\,
      CO(1) => \current_cos_4_reg_229_reg[7]_i_1_n_2\,
      CO(0) => \current_cos_4_reg_229_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \int_y_reg[21]_0\(7 downto 4),
      S(3) => \current_cos_4_reg_229[7]_i_2_n_0\,
      S(2) => \current_cos_4_reg_229[7]_i_3_n_0\,
      S(1) => \current_cos_4_reg_229[7]_i_4_n_0\,
      S(0) => \current_cos_4_reg_229[7]_i_5_n_0\
    );
grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => ap_start,
      I1 => Q(0),
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_ready,
      I3 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      O => int_ap_start_reg_0
    );
int_ap_idle_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(0),
      I1 => ap_start,
      O => ap_idle
    );
int_ap_idle_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_idle,
      Q => p_6_in(2),
      R => \^sr\(0)
    );
int_ap_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FFFFFFF44444444"
    )
        port map (
      I0 => p_6_in(7),
      I1 => Q(2),
      I2 => int_task_ap_done_i_3_n_0,
      I3 => ar_hs,
      I4 => int_task_ap_done_i_4_n_0,
      I5 => int_ap_ready,
      O => int_ap_ready_i_1_n_0
    );
int_ap_ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_ready_i_1_n_0,
      Q => int_ap_ready,
      R => \^sr\(0)
    );
int_ap_start_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBF8"
    )
        port map (
      I0 => p_6_in(7),
      I1 => Q(2),
      I2 => int_ap_start5_out,
      I3 => ap_start,
      O => int_ap_start_i_1_n_0
    );
int_ap_start_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => \waddr_reg_n_0_[4]\,
      I2 => \waddr_reg_n_0_[2]\,
      I3 => int_ap_start_i_3_n_0,
      I4 => s_axi_control_WSTRB(0),
      I5 => \waddr_reg_n_0_[3]\,
      O => int_ap_start5_out
    );
int_ap_start_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_control_WVALID,
      I1 => \^fsm_onehot_wstate_reg[2]_0\,
      I2 => \waddr_reg_n_0_[5]\,
      O => int_ap_start_i_3_n_0
    );
int_ap_start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_start_i_1_n_0,
      Q => ap_start,
      R => \^sr\(0)
    );
int_auto_restart_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_control_WDATA(7),
      I1 => \waddr_reg_n_0_[3]\,
      I2 => s_axi_control_WSTRB(0),
      I3 => \int_ier[1]_i_2_n_0\,
      I4 => p_6_in(7),
      O => int_auto_restart_i_1_n_0
    );
int_auto_restart_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_auto_restart_i_1_n_0,
      Q => p_6_in(7),
      R => \^sr\(0)
    );
int_gie_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => \waddr_reg_n_0_[3]\,
      I2 => s_axi_control_WSTRB(0),
      I3 => int_gie_i_2_n_0,
      I4 => int_gie_reg_n_0,
      O => int_gie_i_1_n_0
    );
int_gie_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \waddr_reg_n_0_[4]\,
      I1 => \waddr_reg_n_0_[2]\,
      I2 => \waddr_reg_n_0_[5]\,
      I3 => \^fsm_onehot_wstate_reg[2]_0\,
      I4 => s_axi_control_WVALID,
      O => int_gie_i_2_n_0
    );
int_gie_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_gie_i_1_n_0,
      Q => int_gie_reg_n_0,
      R => \^sr\(0)
    );
\int_ier[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => s_axi_control_WSTRB(0),
      I2 => \waddr_reg_n_0_[3]\,
      I3 => \int_ier[1]_i_2_n_0\,
      I4 => \int_ier_reg_n_0_[0]\,
      O => \int_ier[0]_i_1_n_0\
    );
\int_ier[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => s_axi_control_WDATA(1),
      I1 => s_axi_control_WSTRB(0),
      I2 => \waddr_reg_n_0_[3]\,
      I3 => \int_ier[1]_i_2_n_0\,
      I4 => \int_ier_reg_n_0_[1]\,
      O => \int_ier[1]_i_1_n_0\
    );
\int_ier[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => \waddr_reg_n_0_[4]\,
      I1 => \waddr_reg_n_0_[2]\,
      I2 => \waddr_reg_n_0_[5]\,
      I3 => \^fsm_onehot_wstate_reg[2]_0\,
      I4 => s_axi_control_WVALID,
      O => \int_ier[1]_i_2_n_0\
    );
\int_ier_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_ier[0]_i_1_n_0\,
      Q => \int_ier_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\int_ier_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_ier[1]_i_1_n_0\,
      Q => \int_ier_reg_n_0_[1]\,
      R => \^sr\(0)
    );
int_interrupt_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \int_isr_reg_n_0_[0]\,
      I1 => \int_isr_reg_n_0_[1]\,
      I2 => int_gie_reg_n_0,
      O => int_interrupt0
    );
int_interrupt_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_interrupt0,
      Q => \^interrupt\,
      R => \^sr\(0)
    );
\int_isr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F777F888"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => int_isr7_out,
      I2 => \int_ier_reg_n_0_[0]\,
      I3 => Q(2),
      I4 => \int_isr_reg_n_0_[0]\,
      O => \int_isr[0]_i_1_n_0\
    );
\int_isr[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => s_axi_control_WSTRB(0),
      I1 => \waddr_reg_n_0_[3]\,
      I2 => int_ap_start_i_3_n_0,
      I3 => \waddr_reg_n_0_[2]\,
      I4 => \waddr_reg_n_0_[4]\,
      O => int_isr7_out
    );
\int_isr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F777F888"
    )
        port map (
      I0 => s_axi_control_WDATA(1),
      I1 => int_isr7_out,
      I2 => \int_ier_reg_n_0_[1]\,
      I3 => Q(2),
      I4 => \int_isr_reg_n_0_[1]\,
      O => \int_isr[1]_i_1_n_0\
    );
\int_isr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[0]_i_1_n_0\,
      Q => \int_isr_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\int_isr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[1]_i_1_n_0\,
      Q => \int_isr_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\int_r[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \int_r_reg[21]_0\(0),
      I1 => tmp_1_reg_244,
      O => \int_r[3]_i_2_n_0\
    );
int_r_ap_vld_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFFFFFF0000"
    )
        port map (
      I0 => s_axi_control_ARADDR(4),
      I1 => s_axi_control_ARADDR(5),
      I2 => s_axi_control_ARADDR(2),
      I3 => int_r_ap_vld_i_2_n_0,
      I4 => Q(2),
      I5 => int_r_ap_vld,
      O => int_r_ap_vld_i_1_n_0
    );
int_r_ap_vld_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => s_axi_control_ARADDR(3),
      I1 => s_axi_control_ARADDR(1),
      I2 => s_axi_control_ARADDR(0),
      I3 => s_axi_control_ARVALID,
      I4 => \^fsm_onehot_rstate_reg[1]_0\,
      O => int_r_ap_vld_i_2_n_0
    );
int_r_ap_vld_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => int_r_ap_vld_i_1_n_0,
      Q => int_r_ap_vld,
      R => \^sr\(0)
    );
\int_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => r(0),
      Q => int_r(0),
      R => \^sr\(0)
    );
\int_r_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => r(10),
      Q => int_r(10),
      R => \^sr\(0)
    );
\int_r_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => r(11),
      Q => int_r(11),
      R => \^sr\(0)
    );
\int_r_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_r_reg[7]_i_1_n_0\,
      CO(3) => \int_r_reg[11]_i_1_n_0\,
      CO(2) => \int_r_reg[11]_i_1_n_1\,
      CO(1) => \int_r_reg[11]_i_1_n_2\,
      CO(0) => \int_r_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => r(11 downto 8),
      S(3 downto 0) => \int_r_reg[21]_0\(11 downto 8)
    );
\int_r_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => r(12),
      Q => int_r(12),
      R => \^sr\(0)
    );
\int_r_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => r(13),
      Q => int_r(13),
      R => \^sr\(0)
    );
\int_r_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => r(14),
      Q => int_r(14),
      R => \^sr\(0)
    );
\int_r_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => r(15),
      Q => int_r(15),
      R => \^sr\(0)
    );
\int_r_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_r_reg[11]_i_1_n_0\,
      CO(3) => \int_r_reg[15]_i_1_n_0\,
      CO(2) => \int_r_reg[15]_i_1_n_1\,
      CO(1) => \int_r_reg[15]_i_1_n_2\,
      CO(0) => \int_r_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => r(15 downto 12),
      S(3 downto 0) => \int_r_reg[21]_0\(15 downto 12)
    );
\int_r_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => r(16),
      Q => int_r(16),
      R => \^sr\(0)
    );
\int_r_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => r(17),
      Q => int_r(17),
      R => \^sr\(0)
    );
\int_r_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => r(18),
      Q => int_r(18),
      R => \^sr\(0)
    );
\int_r_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => r(19),
      Q => int_r(19),
      R => \^sr\(0)
    );
\int_r_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_r_reg[15]_i_1_n_0\,
      CO(3) => \int_r_reg[19]_i_1_n_0\,
      CO(2) => \int_r_reg[19]_i_1_n_1\,
      CO(1) => \int_r_reg[19]_i_1_n_2\,
      CO(0) => \int_r_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => r(19 downto 16),
      S(3 downto 0) => \int_r_reg[21]_0\(19 downto 16)
    );
\int_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => r(1),
      Q => int_r(1),
      R => \^sr\(0)
    );
\int_r_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => r(20),
      Q => int_r(20),
      R => \^sr\(0)
    );
\int_r_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => r(21),
      Q => int_r(21),
      R => \^sr\(0)
    );
\int_r_reg[21]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_r_reg[19]_i_1_n_0\,
      CO(3 downto 1) => \NLW_int_r_reg[21]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \int_r_reg[21]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_int_r_reg[21]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => r(21 downto 20),
      S(3 downto 2) => B"00",
      S(1 downto 0) => \int_r_reg[21]_0\(21 downto 20)
    );
\int_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => r(2),
      Q => int_r(2),
      R => \^sr\(0)
    );
\int_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => r(3),
      Q => int_r(3),
      R => \^sr\(0)
    );
\int_r_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \int_r_reg[3]_i_1_n_0\,
      CO(2) => \int_r_reg[3]_i_1_n_1\,
      CO(1) => \int_r_reg[3]_i_1_n_2\,
      CO(0) => \int_r_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \int_r_reg[21]_0\(0),
      O(3 downto 0) => r(3 downto 0),
      S(3 downto 1) => \int_r_reg[21]_0\(3 downto 1),
      S(0) => \int_r[3]_i_2_n_0\
    );
\int_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => r(4),
      Q => int_r(4),
      R => \^sr\(0)
    );
\int_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => r(5),
      Q => int_r(5),
      R => \^sr\(0)
    );
\int_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => r(6),
      Q => int_r(6),
      R => \^sr\(0)
    );
\int_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => r(7),
      Q => int_r(7),
      R => \^sr\(0)
    );
\int_r_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_r_reg[3]_i_1_n_0\,
      CO(3) => \int_r_reg[7]_i_1_n_0\,
      CO(2) => \int_r_reg[7]_i_1_n_1\,
      CO(1) => \int_r_reg[7]_i_1_n_2\,
      CO(0) => \int_r_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => r(7 downto 4),
      S(3 downto 0) => \int_r_reg[21]_0\(7 downto 4)
    );
\int_r_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => r(8),
      Q => int_r(8),
      R => \^sr\(0)
    );
\int_r_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => r(9),
      Q => int_r(9),
      R => \^sr\(0)
    );
int_task_ap_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFFAAAAAAAA"
    )
        port map (
      I0 => task_ap_done,
      I1 => int_task_ap_done_i_3_n_0,
      I2 => s_axi_control_ARVALID,
      I3 => \^fsm_onehot_rstate_reg[1]_0\,
      I4 => int_task_ap_done_i_4_n_0,
      I5 => int_task_ap_done,
      O => int_task_ap_done_i_1_n_0
    );
int_task_ap_done_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF0200"
    )
        port map (
      I0 => Q(0),
      I1 => ap_start,
      I2 => p_6_in(2),
      I3 => auto_restart_status_reg_n_0,
      I4 => Q(2),
      O => task_ap_done
    );
int_task_ap_done_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => s_axi_control_ARADDR(0),
      I1 => s_axi_control_ARADDR(1),
      I2 => s_axi_control_ARADDR(3),
      O => int_task_ap_done_i_3_n_0
    );
int_task_ap_done_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => s_axi_control_ARADDR(4),
      I1 => s_axi_control_ARADDR(2),
      I2 => s_axi_control_ARADDR(5),
      O => int_task_ap_done_i_4_n_0
    );
int_task_ap_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_task_ap_done_i_1_n_0,
      Q => int_task_ap_done,
      R => \^sr\(0)
    );
\int_theta[11]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_theta_reg[21]_0\(11),
      O => \int_theta[11]_i_2_n_0\
    );
\int_theta[11]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_theta_reg[21]_0\(10),
      O => \int_theta[11]_i_3_n_0\
    );
\int_theta[11]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_theta_reg[21]_0\(9),
      O => \int_theta[11]_i_4_n_0\
    );
\int_theta[11]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_theta_reg[21]_0\(8),
      O => \int_theta[11]_i_5_n_0\
    );
\int_theta[15]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_theta_reg[21]_0\(15),
      O => \int_theta[15]_i_2_n_0\
    );
\int_theta[15]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_theta_reg[21]_0\(14),
      O => \int_theta[15]_i_3_n_0\
    );
\int_theta[15]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_theta_reg[21]_0\(13),
      O => \int_theta[15]_i_4_n_0\
    );
\int_theta[15]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_theta_reg[21]_0\(12),
      O => \int_theta[15]_i_5_n_0\
    );
\int_theta[19]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_theta_reg[21]_0\(19),
      O => \int_theta[19]_i_2_n_0\
    );
\int_theta[19]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_theta_reg[21]_0\(18),
      O => \int_theta[19]_i_3_n_0\
    );
\int_theta[19]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_theta_reg[21]_0\(17),
      O => \int_theta[19]_i_4_n_0\
    );
\int_theta[19]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_theta_reg[21]_0\(16),
      O => \int_theta[19]_i_5_n_0\
    );
\int_theta[21]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_theta_reg[21]_0\(21),
      O => \int_theta[21]_i_2_n_0\
    );
\int_theta[21]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_theta_reg[21]_0\(20),
      O => \int_theta[21]_i_3_n_0\
    );
\int_theta[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_theta_reg[21]_0\(3),
      O => \int_theta[3]_i_2_n_0\
    );
\int_theta[3]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_theta_reg[21]_0\(2),
      O => \int_theta[3]_i_3_n_0\
    );
\int_theta[3]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_theta_reg[21]_0\(1),
      O => \int_theta[3]_i_4_n_0\
    );
\int_theta[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_theta_reg[21]_0\(7),
      O => \int_theta[7]_i_2_n_0\
    );
\int_theta[7]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_theta_reg[21]_0\(6),
      O => \int_theta[7]_i_3_n_0\
    );
\int_theta[7]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_theta_reg[21]_0\(5),
      O => \int_theta[7]_i_4_n_0\
    );
\int_theta[7]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_theta_reg[21]_0\(4),
      O => \int_theta[7]_i_5_n_0\
    );
int_theta_ap_vld_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFFFFFF0000"
    )
        port map (
      I0 => s_axi_control_ARADDR(5),
      I1 => s_axi_control_ARADDR(2),
      I2 => int_r_ap_vld_i_2_n_0,
      I3 => s_axi_control_ARADDR(4),
      I4 => Q(2),
      I5 => int_theta_ap_vld,
      O => int_theta_ap_vld_i_1_n_0
    );
int_theta_ap_vld_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => int_theta_ap_vld_i_1_n_0,
      Q => int_theta_ap_vld,
      R => \^sr\(0)
    );
\int_theta_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => theta(0),
      Q => int_theta(0),
      R => \^sr\(0)
    );
\int_theta_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => theta(10),
      Q => int_theta(10),
      R => \^sr\(0)
    );
\int_theta_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => theta(11),
      Q => int_theta(11),
      R => \^sr\(0)
    );
\int_theta_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_theta_reg[7]_i_1_n_0\,
      CO(3) => \int_theta_reg[11]_i_1_n_0\,
      CO(2) => \int_theta_reg[11]_i_1_n_1\,
      CO(1) => \int_theta_reg[11]_i_1_n_2\,
      CO(0) => \int_theta_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => theta(11 downto 8),
      S(3) => \int_theta[11]_i_2_n_0\,
      S(2) => \int_theta[11]_i_3_n_0\,
      S(1) => \int_theta[11]_i_4_n_0\,
      S(0) => \int_theta[11]_i_5_n_0\
    );
\int_theta_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => theta(12),
      Q => int_theta(12),
      R => \^sr\(0)
    );
\int_theta_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => theta(13),
      Q => int_theta(13),
      R => \^sr\(0)
    );
\int_theta_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => theta(14),
      Q => int_theta(14),
      R => \^sr\(0)
    );
\int_theta_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => theta(15),
      Q => int_theta(15),
      R => \^sr\(0)
    );
\int_theta_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_theta_reg[11]_i_1_n_0\,
      CO(3) => \int_theta_reg[15]_i_1_n_0\,
      CO(2) => \int_theta_reg[15]_i_1_n_1\,
      CO(1) => \int_theta_reg[15]_i_1_n_2\,
      CO(0) => \int_theta_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => theta(15 downto 12),
      S(3) => \int_theta[15]_i_2_n_0\,
      S(2) => \int_theta[15]_i_3_n_0\,
      S(1) => \int_theta[15]_i_4_n_0\,
      S(0) => \int_theta[15]_i_5_n_0\
    );
\int_theta_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => theta(16),
      Q => int_theta(16),
      R => \^sr\(0)
    );
\int_theta_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => theta(17),
      Q => int_theta(17),
      R => \^sr\(0)
    );
\int_theta_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => theta(18),
      Q => int_theta(18),
      R => \^sr\(0)
    );
\int_theta_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => theta(19),
      Q => int_theta(19),
      R => \^sr\(0)
    );
\int_theta_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_theta_reg[15]_i_1_n_0\,
      CO(3) => \int_theta_reg[19]_i_1_n_0\,
      CO(2) => \int_theta_reg[19]_i_1_n_1\,
      CO(1) => \int_theta_reg[19]_i_1_n_2\,
      CO(0) => \int_theta_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => theta(19 downto 16),
      S(3) => \int_theta[19]_i_2_n_0\,
      S(2) => \int_theta[19]_i_3_n_0\,
      S(1) => \int_theta[19]_i_4_n_0\,
      S(0) => \int_theta[19]_i_5_n_0\
    );
\int_theta_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => theta(1),
      Q => int_theta(1),
      R => \^sr\(0)
    );
\int_theta_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => theta(20),
      Q => int_theta(20),
      R => \^sr\(0)
    );
\int_theta_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => theta(21),
      Q => int_theta(21),
      R => \^sr\(0)
    );
\int_theta_reg[21]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_theta_reg[19]_i_1_n_0\,
      CO(3 downto 1) => \NLW_int_theta_reg[21]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \int_theta_reg[21]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_int_theta_reg[21]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => theta(21 downto 20),
      S(3 downto 2) => B"00",
      S(1) => \int_theta[21]_i_2_n_0\,
      S(0) => \int_theta[21]_i_3_n_0\
    );
\int_theta_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => theta(2),
      Q => int_theta(2),
      R => \^sr\(0)
    );
\int_theta_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => theta(3),
      Q => int_theta(3),
      R => \^sr\(0)
    );
\int_theta_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \int_theta_reg[3]_i_1_n_0\,
      CO(2) => \int_theta_reg[3]_i_1_n_1\,
      CO(1) => \int_theta_reg[3]_i_1_n_2\,
      CO(0) => \int_theta_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3 downto 0) => theta(3 downto 0),
      S(3) => \int_theta[3]_i_2_n_0\,
      S(2) => \int_theta[3]_i_3_n_0\,
      S(1) => \int_theta[3]_i_4_n_0\,
      S(0) => \int_theta_reg[21]_0\(0)
    );
\int_theta_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => theta(4),
      Q => int_theta(4),
      R => \^sr\(0)
    );
\int_theta_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => theta(5),
      Q => int_theta(5),
      R => \^sr\(0)
    );
\int_theta_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => theta(6),
      Q => int_theta(6),
      R => \^sr\(0)
    );
\int_theta_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => theta(7),
      Q => int_theta(7),
      R => \^sr\(0)
    );
\int_theta_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_theta_reg[3]_i_1_n_0\,
      CO(3) => \int_theta_reg[7]_i_1_n_0\,
      CO(2) => \int_theta_reg[7]_i_1_n_1\,
      CO(1) => \int_theta_reg[7]_i_1_n_2\,
      CO(0) => \int_theta_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => theta(7 downto 4),
      S(3) => \int_theta[7]_i_2_n_0\,
      S(2) => \int_theta[7]_i_3_n_0\,
      S(1) => \int_theta[7]_i_4_n_0\,
      S(0) => \int_theta[7]_i_5_n_0\
    );
\int_theta_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => theta(8),
      Q => int_theta(8),
      R => \^sr\(0)
    );
\int_theta_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => theta(9),
      Q => int_theta(9),
      R => \^sr\(0)
    );
\int_x[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => s_axi_control_WSTRB(0),
      I2 => x(0),
      O => int_x0(0)
    );
\int_x[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(10),
      I1 => s_axi_control_WSTRB(1),
      I2 => x(10),
      O => int_x0(10)
    );
\int_x[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(11),
      I1 => s_axi_control_WSTRB(1),
      I2 => x(11),
      O => int_x0(11)
    );
\int_x[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(12),
      I1 => s_axi_control_WSTRB(1),
      I2 => x(12),
      O => int_x0(12)
    );
\int_x[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(13),
      I1 => s_axi_control_WSTRB(1),
      I2 => x(13),
      O => int_x0(13)
    );
\int_x[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(14),
      I1 => s_axi_control_WSTRB(1),
      I2 => x(14),
      O => int_x0(14)
    );
\int_x[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(15),
      I1 => s_axi_control_WSTRB(1),
      I2 => x(15),
      O => int_x0(15)
    );
\int_x[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(16),
      I1 => s_axi_control_WSTRB(2),
      I2 => x(16),
      O => int_x0(16)
    );
\int_x[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(17),
      I1 => s_axi_control_WSTRB(2),
      I2 => x(17),
      O => int_x0(17)
    );
\int_x[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(18),
      I1 => s_axi_control_WSTRB(2),
      I2 => x(18),
      O => int_x0(18)
    );
\int_x[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(19),
      I1 => s_axi_control_WSTRB(2),
      I2 => x(19),
      O => int_x0(19)
    );
\int_x[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(1),
      I1 => s_axi_control_WSTRB(0),
      I2 => x(1),
      O => int_x0(1)
    );
\int_x[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(20),
      I1 => s_axi_control_WSTRB(2),
      I2 => x(20),
      O => int_x0(20)
    );
\int_x[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => s_axi_control_WVALID,
      I1 => \^fsm_onehot_wstate_reg[2]_0\,
      I2 => \waddr_reg_n_0_[5]\,
      I3 => \waddr_reg_n_0_[4]\,
      I4 => \waddr_reg_n_0_[2]\,
      I5 => \waddr_reg_n_0_[3]\,
      O => \int_x[21]_i_1_n_0\
    );
\int_x[21]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(21),
      I1 => s_axi_control_WSTRB(2),
      I2 => x(21),
      O => int_x0(21)
    );
\int_x[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(2),
      I1 => s_axi_control_WSTRB(0),
      I2 => x(2),
      O => int_x0(2)
    );
\int_x[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(3),
      I1 => s_axi_control_WSTRB(0),
      I2 => x(3),
      O => int_x0(3)
    );
\int_x[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(4),
      I1 => s_axi_control_WSTRB(0),
      I2 => x(4),
      O => int_x0(4)
    );
\int_x[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(5),
      I1 => s_axi_control_WSTRB(0),
      I2 => x(5),
      O => int_x0(5)
    );
\int_x[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(6),
      I1 => s_axi_control_WSTRB(0),
      I2 => x(6),
      O => int_x0(6)
    );
\int_x[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(7),
      I1 => s_axi_control_WSTRB(0),
      I2 => x(7),
      O => int_x0(7)
    );
\int_x[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(8),
      I1 => s_axi_control_WSTRB(1),
      I2 => x(8),
      O => int_x0(8)
    );
\int_x[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(9),
      I1 => s_axi_control_WSTRB(1),
      I2 => x(9),
      O => int_x0(9)
    );
\int_x_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_x[21]_i_1_n_0\,
      D => int_x0(0),
      Q => x(0),
      R => \^sr\(0)
    );
\int_x_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_x[21]_i_1_n_0\,
      D => int_x0(10),
      Q => x(10),
      R => \^sr\(0)
    );
\int_x_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_x[21]_i_1_n_0\,
      D => int_x0(11),
      Q => x(11),
      R => \^sr\(0)
    );
\int_x_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_x[21]_i_1_n_0\,
      D => int_x0(12),
      Q => x(12),
      R => \^sr\(0)
    );
\int_x_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_x[21]_i_1_n_0\,
      D => int_x0(13),
      Q => x(13),
      R => \^sr\(0)
    );
\int_x_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_x[21]_i_1_n_0\,
      D => int_x0(14),
      Q => x(14),
      R => \^sr\(0)
    );
\int_x_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_x[21]_i_1_n_0\,
      D => int_x0(15),
      Q => x(15),
      R => \^sr\(0)
    );
\int_x_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_x[21]_i_1_n_0\,
      D => int_x0(16),
      Q => x(16),
      R => \^sr\(0)
    );
\int_x_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_x[21]_i_1_n_0\,
      D => int_x0(17),
      Q => x(17),
      R => \^sr\(0)
    );
\int_x_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_x[21]_i_1_n_0\,
      D => int_x0(18),
      Q => x(18),
      R => \^sr\(0)
    );
\int_x_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_x[21]_i_1_n_0\,
      D => int_x0(19),
      Q => x(19),
      R => \^sr\(0)
    );
\int_x_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_x[21]_i_1_n_0\,
      D => int_x0(1),
      Q => x(1),
      R => \^sr\(0)
    );
\int_x_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_x[21]_i_1_n_0\,
      D => int_x0(20),
      Q => x(20),
      R => \^sr\(0)
    );
\int_x_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_x[21]_i_1_n_0\,
      D => int_x0(21),
      Q => x(21),
      R => \^sr\(0)
    );
\int_x_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_x[21]_i_1_n_0\,
      D => int_x0(2),
      Q => x(2),
      R => \^sr\(0)
    );
\int_x_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_x[21]_i_1_n_0\,
      D => int_x0(3),
      Q => x(3),
      R => \^sr\(0)
    );
\int_x_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_x[21]_i_1_n_0\,
      D => int_x0(4),
      Q => x(4),
      R => \^sr\(0)
    );
\int_x_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_x[21]_i_1_n_0\,
      D => int_x0(5),
      Q => x(5),
      R => \^sr\(0)
    );
\int_x_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_x[21]_i_1_n_0\,
      D => int_x0(6),
      Q => x(6),
      R => \^sr\(0)
    );
\int_x_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_x[21]_i_1_n_0\,
      D => int_x0(7),
      Q => x(7),
      R => \^sr\(0)
    );
\int_x_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_x[21]_i_1_n_0\,
      D => int_x0(8),
      Q => x(8),
      R => \^sr\(0)
    );
\int_x_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_x[21]_i_1_n_0\,
      D => int_x0(9),
      Q => x(9),
      R => \^sr\(0)
    );
\int_y[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => s_axi_control_WSTRB(0),
      I2 => y(0),
      O => int_y0(0)
    );
\int_y[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(10),
      I1 => s_axi_control_WSTRB(1),
      I2 => y(10),
      O => int_y0(10)
    );
\int_y[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(11),
      I1 => s_axi_control_WSTRB(1),
      I2 => y(11),
      O => int_y0(11)
    );
\int_y[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(12),
      I1 => s_axi_control_WSTRB(1),
      I2 => y(12),
      O => int_y0(12)
    );
\int_y[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(13),
      I1 => s_axi_control_WSTRB(1),
      I2 => y(13),
      O => int_y0(13)
    );
\int_y[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(14),
      I1 => s_axi_control_WSTRB(1),
      I2 => y(14),
      O => int_y0(14)
    );
\int_y[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(15),
      I1 => s_axi_control_WSTRB(1),
      I2 => y(15),
      O => int_y0(15)
    );
\int_y[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(16),
      I1 => s_axi_control_WSTRB(2),
      I2 => y(16),
      O => int_y0(16)
    );
\int_y[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(17),
      I1 => s_axi_control_WSTRB(2),
      I2 => y(17),
      O => int_y0(17)
    );
\int_y[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(18),
      I1 => s_axi_control_WSTRB(2),
      I2 => y(18),
      O => int_y0(18)
    );
\int_y[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(19),
      I1 => s_axi_control_WSTRB(2),
      I2 => y(19),
      O => int_y0(19)
    );
\int_y[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(1),
      I1 => s_axi_control_WSTRB(0),
      I2 => y(1),
      O => int_y0(1)
    );
\int_y[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(20),
      I1 => s_axi_control_WSTRB(2),
      I2 => y(20),
      O => int_y0(20)
    );
\int_y[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => \waddr_reg_n_0_[3]\,
      I1 => s_axi_control_WVALID,
      I2 => \^fsm_onehot_wstate_reg[2]_0\,
      I3 => \waddr_reg_n_0_[5]\,
      I4 => \waddr_reg_n_0_[4]\,
      I5 => \waddr_reg_n_0_[2]\,
      O => \int_y[21]_i_1_n_0\
    );
\int_y[21]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(21),
      I1 => s_axi_control_WSTRB(2),
      I2 => y(21),
      O => int_y0(21)
    );
\int_y[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(2),
      I1 => s_axi_control_WSTRB(0),
      I2 => y(2),
      O => int_y0(2)
    );
\int_y[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(3),
      I1 => s_axi_control_WSTRB(0),
      I2 => y(3),
      O => int_y0(3)
    );
\int_y[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(4),
      I1 => s_axi_control_WSTRB(0),
      I2 => y(4),
      O => int_y0(4)
    );
\int_y[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(5),
      I1 => s_axi_control_WSTRB(0),
      I2 => y(5),
      O => int_y0(5)
    );
\int_y[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(6),
      I1 => s_axi_control_WSTRB(0),
      I2 => y(6),
      O => int_y0(6)
    );
\int_y[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(7),
      I1 => s_axi_control_WSTRB(0),
      I2 => y(7),
      O => int_y0(7)
    );
\int_y[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(8),
      I1 => s_axi_control_WSTRB(1),
      I2 => y(8),
      O => int_y0(8)
    );
\int_y[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(9),
      I1 => s_axi_control_WSTRB(1),
      I2 => y(9),
      O => int_y0(9)
    );
\int_y_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_y[21]_i_1_n_0\,
      D => int_y0(0),
      Q => y(0),
      R => \^sr\(0)
    );
\int_y_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_y[21]_i_1_n_0\,
      D => int_y0(10),
      Q => y(10),
      R => \^sr\(0)
    );
\int_y_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_y[21]_i_1_n_0\,
      D => int_y0(11),
      Q => y(11),
      R => \^sr\(0)
    );
\int_y_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_y[21]_i_1_n_0\,
      D => int_y0(12),
      Q => y(12),
      R => \^sr\(0)
    );
\int_y_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_y[21]_i_1_n_0\,
      D => int_y0(13),
      Q => y(13),
      R => \^sr\(0)
    );
\int_y_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_y[21]_i_1_n_0\,
      D => int_y0(14),
      Q => y(14),
      R => \^sr\(0)
    );
\int_y_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_y[21]_i_1_n_0\,
      D => int_y0(15),
      Q => y(15),
      R => \^sr\(0)
    );
\int_y_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_y[21]_i_1_n_0\,
      D => int_y0(16),
      Q => y(16),
      R => \^sr\(0)
    );
\int_y_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_y[21]_i_1_n_0\,
      D => int_y0(17),
      Q => y(17),
      R => \^sr\(0)
    );
\int_y_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_y[21]_i_1_n_0\,
      D => int_y0(18),
      Q => y(18),
      R => \^sr\(0)
    );
\int_y_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_y[21]_i_1_n_0\,
      D => int_y0(19),
      Q => y(19),
      R => \^sr\(0)
    );
\int_y_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_y[21]_i_1_n_0\,
      D => int_y0(1),
      Q => y(1),
      R => \^sr\(0)
    );
\int_y_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_y[21]_i_1_n_0\,
      D => int_y0(20),
      Q => y(20),
      R => \^sr\(0)
    );
\int_y_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_y[21]_i_1_n_0\,
      D => int_y0(21),
      Q => y(21),
      R => \^sr\(0)
    );
\int_y_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_y[21]_i_1_n_0\,
      D => int_y0(2),
      Q => y(2),
      R => \^sr\(0)
    );
\int_y_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_y[21]_i_1_n_0\,
      D => int_y0(3),
      Q => y(3),
      R => \^sr\(0)
    );
\int_y_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_y[21]_i_1_n_0\,
      D => int_y0(4),
      Q => y(4),
      R => \^sr\(0)
    );
\int_y_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_y[21]_i_1_n_0\,
      D => int_y0(5),
      Q => y(5),
      R => \^sr\(0)
    );
\int_y_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_y[21]_i_1_n_0\,
      D => int_y0(6),
      Q => y(6),
      R => \^sr\(0)
    );
\int_y_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_y[21]_i_1_n_0\,
      D => int_y0(7),
      Q => y(7),
      R => \^sr\(0)
    );
\int_y_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_y[21]_i_1_n_0\,
      D => int_y0(8),
      Q => y(8),
      R => \^sr\(0)
    );
\int_y_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_y[21]_i_1_n_0\,
      D => int_y0(9),
      Q => y(9),
      R => \^sr\(0)
    );
\rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \rdata[0]_i_2_n_0\,
      I1 => s_axi_control_ARADDR(3),
      I2 => s_axi_control_ARADDR(5),
      I3 => \rdata[0]_i_3_n_0\,
      I4 => \rdata[0]_i_4_n_0\,
      I5 => \rdata[0]_i_5_n_0\,
      O => rdata(0)
    );
\rdata[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_control_ARADDR(1),
      I1 => s_axi_control_ARADDR(0),
      O => \rdata[0]_i_2_n_0\
    );
\rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => int_r_ap_vld,
      I1 => int_theta_ap_vld,
      I2 => s_axi_control_ARADDR(4),
      I3 => s_axi_control_ARADDR(2),
      I4 => int_r(0),
      I5 => int_theta(0),
      O => \rdata[0]_i_3_n_0\
    );
\rdata[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => \int_ier_reg_n_0_[0]\,
      I1 => y(0),
      I2 => \int_isr_reg_n_0_[0]\,
      I3 => s_axi_control_ARADDR(2),
      I4 => s_axi_control_ARADDR(4),
      O => \rdata[0]_i_4_n_0\
    );
\rdata[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => ap_start,
      I1 => x(0),
      I2 => int_gie_reg_n_0,
      I3 => s_axi_control_ARADDR(2),
      I4 => s_axi_control_ARADDR(4),
      O => \rdata[0]_i_5_n_0\
    );
\rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000088000000F0"
    )
        port map (
      I0 => y(10),
      I1 => \rdata[21]_i_3_n_0\,
      I2 => \rdata[10]_i_2_n_0\,
      I3 => s_axi_control_ARADDR(0),
      I4 => s_axi_control_ARADDR(1),
      I5 => s_axi_control_ARADDR(3),
      O => rdata(10)
    );
\rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000AA00CC0000"
    )
        port map (
      I0 => int_r(10),
      I1 => x(10),
      I2 => int_theta(10),
      I3 => s_axi_control_ARADDR(2),
      I4 => s_axi_control_ARADDR(4),
      I5 => s_axi_control_ARADDR(5),
      O => \rdata[10]_i_2_n_0\
    );
\rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000088000000F0"
    )
        port map (
      I0 => y(11),
      I1 => \rdata[21]_i_3_n_0\,
      I2 => \rdata[11]_i_2_n_0\,
      I3 => s_axi_control_ARADDR(0),
      I4 => s_axi_control_ARADDR(1),
      I5 => s_axi_control_ARADDR(3),
      O => rdata(11)
    );
\rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000AA00CC0000"
    )
        port map (
      I0 => int_r(11),
      I1 => x(11),
      I2 => int_theta(11),
      I3 => s_axi_control_ARADDR(2),
      I4 => s_axi_control_ARADDR(4),
      I5 => s_axi_control_ARADDR(5),
      O => \rdata[11]_i_2_n_0\
    );
\rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000088000000F0"
    )
        port map (
      I0 => y(12),
      I1 => \rdata[21]_i_3_n_0\,
      I2 => \rdata[12]_i_2_n_0\,
      I3 => s_axi_control_ARADDR(0),
      I4 => s_axi_control_ARADDR(1),
      I5 => s_axi_control_ARADDR(3),
      O => rdata(12)
    );
\rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000AA00CC0000"
    )
        port map (
      I0 => int_r(12),
      I1 => x(12),
      I2 => int_theta(12),
      I3 => s_axi_control_ARADDR(2),
      I4 => s_axi_control_ARADDR(4),
      I5 => s_axi_control_ARADDR(5),
      O => \rdata[12]_i_2_n_0\
    );
\rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000088000000F0"
    )
        port map (
      I0 => y(13),
      I1 => \rdata[21]_i_3_n_0\,
      I2 => \rdata[13]_i_2_n_0\,
      I3 => s_axi_control_ARADDR(0),
      I4 => s_axi_control_ARADDR(1),
      I5 => s_axi_control_ARADDR(3),
      O => rdata(13)
    );
\rdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000AA00CC0000"
    )
        port map (
      I0 => int_r(13),
      I1 => x(13),
      I2 => int_theta(13),
      I3 => s_axi_control_ARADDR(2),
      I4 => s_axi_control_ARADDR(4),
      I5 => s_axi_control_ARADDR(5),
      O => \rdata[13]_i_2_n_0\
    );
\rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000088000000F0"
    )
        port map (
      I0 => y(14),
      I1 => \rdata[21]_i_3_n_0\,
      I2 => \rdata[14]_i_2_n_0\,
      I3 => s_axi_control_ARADDR(0),
      I4 => s_axi_control_ARADDR(1),
      I5 => s_axi_control_ARADDR(3),
      O => rdata(14)
    );
\rdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000AA00CC0000"
    )
        port map (
      I0 => int_r(14),
      I1 => x(14),
      I2 => int_theta(14),
      I3 => s_axi_control_ARADDR(2),
      I4 => s_axi_control_ARADDR(4),
      I5 => s_axi_control_ARADDR(5),
      O => \rdata[14]_i_2_n_0\
    );
\rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000088000000F0"
    )
        port map (
      I0 => y(15),
      I1 => \rdata[21]_i_3_n_0\,
      I2 => \rdata[15]_i_2_n_0\,
      I3 => s_axi_control_ARADDR(0),
      I4 => s_axi_control_ARADDR(1),
      I5 => s_axi_control_ARADDR(3),
      O => rdata(15)
    );
\rdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000AA00CC0000"
    )
        port map (
      I0 => int_r(15),
      I1 => x(15),
      I2 => int_theta(15),
      I3 => s_axi_control_ARADDR(2),
      I4 => s_axi_control_ARADDR(4),
      I5 => s_axi_control_ARADDR(5),
      O => \rdata[15]_i_2_n_0\
    );
\rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000088000000F0"
    )
        port map (
      I0 => y(16),
      I1 => \rdata[21]_i_3_n_0\,
      I2 => \rdata[16]_i_2_n_0\,
      I3 => s_axi_control_ARADDR(0),
      I4 => s_axi_control_ARADDR(1),
      I5 => s_axi_control_ARADDR(3),
      O => rdata(16)
    );
\rdata[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000AA00CC0000"
    )
        port map (
      I0 => int_r(16),
      I1 => x(16),
      I2 => int_theta(16),
      I3 => s_axi_control_ARADDR(2),
      I4 => s_axi_control_ARADDR(4),
      I5 => s_axi_control_ARADDR(5),
      O => \rdata[16]_i_2_n_0\
    );
\rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000088000000F0"
    )
        port map (
      I0 => y(17),
      I1 => \rdata[21]_i_3_n_0\,
      I2 => \rdata[17]_i_2_n_0\,
      I3 => s_axi_control_ARADDR(0),
      I4 => s_axi_control_ARADDR(1),
      I5 => s_axi_control_ARADDR(3),
      O => rdata(17)
    );
\rdata[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000AA00CC0000"
    )
        port map (
      I0 => int_r(17),
      I1 => x(17),
      I2 => int_theta(17),
      I3 => s_axi_control_ARADDR(2),
      I4 => s_axi_control_ARADDR(4),
      I5 => s_axi_control_ARADDR(5),
      O => \rdata[17]_i_2_n_0\
    );
\rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000088000000F0"
    )
        port map (
      I0 => y(18),
      I1 => \rdata[21]_i_3_n_0\,
      I2 => \rdata[18]_i_2_n_0\,
      I3 => s_axi_control_ARADDR(0),
      I4 => s_axi_control_ARADDR(1),
      I5 => s_axi_control_ARADDR(3),
      O => rdata(18)
    );
\rdata[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000AA00CC0000"
    )
        port map (
      I0 => int_r(18),
      I1 => x(18),
      I2 => int_theta(18),
      I3 => s_axi_control_ARADDR(2),
      I4 => s_axi_control_ARADDR(4),
      I5 => s_axi_control_ARADDR(5),
      O => \rdata[18]_i_2_n_0\
    );
\rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000088000000F0"
    )
        port map (
      I0 => y(19),
      I1 => \rdata[21]_i_3_n_0\,
      I2 => \rdata[19]_i_2_n_0\,
      I3 => s_axi_control_ARADDR(0),
      I4 => s_axi_control_ARADDR(1),
      I5 => s_axi_control_ARADDR(3),
      O => rdata(19)
    );
\rdata[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000AA00CC0000"
    )
        port map (
      I0 => int_r(19),
      I1 => x(19),
      I2 => int_theta(19),
      I3 => s_axi_control_ARADDR(2),
      I4 => s_axi_control_ARADDR(4),
      I5 => s_axi_control_ARADDR(5),
      O => \rdata[19]_i_2_n_0\
    );
\rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000022000000F0"
    )
        port map (
      I0 => \rdata[1]_i_2_n_0\,
      I1 => s_axi_control_ARADDR(5),
      I2 => \rdata[1]_i_3_n_0\,
      I3 => s_axi_control_ARADDR(0),
      I4 => s_axi_control_ARADDR(1),
      I5 => s_axi_control_ARADDR(3),
      O => rdata(1)
    );
\rdata[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => \int_ier_reg_n_0_[1]\,
      I1 => y(1),
      I2 => \int_isr_reg_n_0_[1]\,
      I3 => s_axi_control_ARADDR(2),
      I4 => s_axi_control_ARADDR(4),
      O => \rdata[1]_i_2_n_0\
    );
\rdata[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0C080400"
    )
        port map (
      I0 => s_axi_control_ARADDR(5),
      I1 => s_axi_control_ARADDR(4),
      I2 => s_axi_control_ARADDR(2),
      I3 => x(1),
      I4 => int_theta(1),
      I5 => \rdata[1]_i_4_n_0\,
      O => \rdata[1]_i_3_n_0\
    );
\rdata[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000A000C"
    )
        port map (
      I0 => int_r(1),
      I1 => int_task_ap_done,
      I2 => s_axi_control_ARADDR(4),
      I3 => s_axi_control_ARADDR(2),
      I4 => s_axi_control_ARADDR(5),
      O => \rdata[1]_i_4_n_0\
    );
\rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000088000000F0"
    )
        port map (
      I0 => y(20),
      I1 => \rdata[21]_i_3_n_0\,
      I2 => \rdata[20]_i_2_n_0\,
      I3 => s_axi_control_ARADDR(0),
      I4 => s_axi_control_ARADDR(1),
      I5 => s_axi_control_ARADDR(3),
      O => rdata(20)
    );
\rdata[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000AA00CC0000"
    )
        port map (
      I0 => int_r(20),
      I1 => x(20),
      I2 => int_theta(20),
      I3 => s_axi_control_ARADDR(2),
      I4 => s_axi_control_ARADDR(4),
      I5 => s_axi_control_ARADDR(5),
      O => \rdata[20]_i_2_n_0\
    );
\rdata[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_rstate_reg[1]_0\,
      I1 => s_axi_control_ARVALID,
      O => ar_hs
    );
\rdata[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000088000000F0"
    )
        port map (
      I0 => y(21),
      I1 => \rdata[21]_i_3_n_0\,
      I2 => \rdata[21]_i_4_n_0\,
      I3 => s_axi_control_ARADDR(0),
      I4 => s_axi_control_ARADDR(1),
      I5 => s_axi_control_ARADDR(3),
      O => rdata(21)
    );
\rdata[21]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => s_axi_control_ARADDR(2),
      I1 => s_axi_control_ARADDR(4),
      I2 => s_axi_control_ARADDR(5),
      O => \rdata[21]_i_3_n_0\
    );
\rdata[21]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000AA00CC0000"
    )
        port map (
      I0 => int_r(21),
      I1 => x(21),
      I2 => int_theta(21),
      I3 => s_axi_control_ARADDR(2),
      I4 => s_axi_control_ARADDR(4),
      I5 => s_axi_control_ARADDR(5),
      O => \rdata[21]_i_4_n_0\
    );
\rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000088000000F0"
    )
        port map (
      I0 => y(2),
      I1 => \rdata[21]_i_3_n_0\,
      I2 => \rdata[2]_i_2_n_0\,
      I3 => s_axi_control_ARADDR(0),
      I4 => s_axi_control_ARADDR(1),
      I5 => s_axi_control_ARADDR(3),
      O => rdata(2)
    );
\rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0C080400"
    )
        port map (
      I0 => s_axi_control_ARADDR(5),
      I1 => s_axi_control_ARADDR(4),
      I2 => s_axi_control_ARADDR(2),
      I3 => x(2),
      I4 => int_theta(2),
      I5 => \rdata[2]_i_3_n_0\,
      O => \rdata[2]_i_2_n_0\
    );
\rdata[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000A000C"
    )
        port map (
      I0 => int_r(2),
      I1 => p_6_in(2),
      I2 => s_axi_control_ARADDR(4),
      I3 => s_axi_control_ARADDR(2),
      I4 => s_axi_control_ARADDR(5),
      O => \rdata[2]_i_3_n_0\
    );
\rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000088000000F0"
    )
        port map (
      I0 => y(3),
      I1 => \rdata[21]_i_3_n_0\,
      I2 => \rdata[3]_i_2_n_0\,
      I3 => s_axi_control_ARADDR(0),
      I4 => s_axi_control_ARADDR(1),
      I5 => s_axi_control_ARADDR(3),
      O => rdata(3)
    );
\rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0C080400"
    )
        port map (
      I0 => s_axi_control_ARADDR(5),
      I1 => s_axi_control_ARADDR(4),
      I2 => s_axi_control_ARADDR(2),
      I3 => x(3),
      I4 => int_theta(3),
      I5 => \rdata[3]_i_3_n_0\,
      O => \rdata[3]_i_2_n_0\
    );
\rdata[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000A000C"
    )
        port map (
      I0 => int_r(3),
      I1 => int_ap_ready,
      I2 => s_axi_control_ARADDR(4),
      I3 => s_axi_control_ARADDR(2),
      I4 => s_axi_control_ARADDR(5),
      O => \rdata[3]_i_3_n_0\
    );
\rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000088000000F0"
    )
        port map (
      I0 => y(4),
      I1 => \rdata[21]_i_3_n_0\,
      I2 => \rdata[4]_i_2_n_0\,
      I3 => s_axi_control_ARADDR(0),
      I4 => s_axi_control_ARADDR(1),
      I5 => s_axi_control_ARADDR(3),
      O => rdata(4)
    );
\rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000AA00CC0000"
    )
        port map (
      I0 => int_r(4),
      I1 => x(4),
      I2 => int_theta(4),
      I3 => s_axi_control_ARADDR(2),
      I4 => s_axi_control_ARADDR(4),
      I5 => s_axi_control_ARADDR(5),
      O => \rdata[4]_i_2_n_0\
    );
\rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000088000000F0"
    )
        port map (
      I0 => y(5),
      I1 => \rdata[21]_i_3_n_0\,
      I2 => \rdata[5]_i_2_n_0\,
      I3 => s_axi_control_ARADDR(0),
      I4 => s_axi_control_ARADDR(1),
      I5 => s_axi_control_ARADDR(3),
      O => rdata(5)
    );
\rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000AA00CC0000"
    )
        port map (
      I0 => int_r(5),
      I1 => x(5),
      I2 => int_theta(5),
      I3 => s_axi_control_ARADDR(2),
      I4 => s_axi_control_ARADDR(4),
      I5 => s_axi_control_ARADDR(5),
      O => \rdata[5]_i_2_n_0\
    );
\rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000088000000F0"
    )
        port map (
      I0 => y(6),
      I1 => \rdata[21]_i_3_n_0\,
      I2 => \rdata[6]_i_2_n_0\,
      I3 => s_axi_control_ARADDR(0),
      I4 => s_axi_control_ARADDR(1),
      I5 => s_axi_control_ARADDR(3),
      O => rdata(6)
    );
\rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000AA00CC0000"
    )
        port map (
      I0 => int_r(6),
      I1 => x(6),
      I2 => int_theta(6),
      I3 => s_axi_control_ARADDR(2),
      I4 => s_axi_control_ARADDR(4),
      I5 => s_axi_control_ARADDR(5),
      O => \rdata[6]_i_2_n_0\
    );
\rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000088000000F0"
    )
        port map (
      I0 => y(7),
      I1 => \rdata[21]_i_3_n_0\,
      I2 => \rdata[7]_i_2_n_0\,
      I3 => s_axi_control_ARADDR(0),
      I4 => s_axi_control_ARADDR(1),
      I5 => s_axi_control_ARADDR(3),
      O => rdata(7)
    );
\rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0C080400"
    )
        port map (
      I0 => s_axi_control_ARADDR(5),
      I1 => s_axi_control_ARADDR(4),
      I2 => s_axi_control_ARADDR(2),
      I3 => x(7),
      I4 => int_theta(7),
      I5 => \rdata[7]_i_3_n_0\,
      O => \rdata[7]_i_2_n_0\
    );
\rdata[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000A000C"
    )
        port map (
      I0 => int_r(7),
      I1 => p_6_in(7),
      I2 => s_axi_control_ARADDR(4),
      I3 => s_axi_control_ARADDR(2),
      I4 => s_axi_control_ARADDR(5),
      O => \rdata[7]_i_3_n_0\
    );
\rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000088000000F0"
    )
        port map (
      I0 => y(8),
      I1 => \rdata[21]_i_3_n_0\,
      I2 => \rdata[8]_i_2_n_0\,
      I3 => s_axi_control_ARADDR(0),
      I4 => s_axi_control_ARADDR(1),
      I5 => s_axi_control_ARADDR(3),
      O => rdata(8)
    );
\rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000AA00CC0000"
    )
        port map (
      I0 => int_r(8),
      I1 => x(8),
      I2 => int_theta(8),
      I3 => s_axi_control_ARADDR(2),
      I4 => s_axi_control_ARADDR(4),
      I5 => s_axi_control_ARADDR(5),
      O => \rdata[8]_i_2_n_0\
    );
\rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000088000000F0"
    )
        port map (
      I0 => y(9),
      I1 => \rdata[21]_i_3_n_0\,
      I2 => \rdata[9]_i_2_n_0\,
      I3 => s_axi_control_ARADDR(0),
      I4 => s_axi_control_ARADDR(1),
      I5 => s_axi_control_ARADDR(3),
      O => rdata(9)
    );
\rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0C080400"
    )
        port map (
      I0 => s_axi_control_ARADDR(5),
      I1 => s_axi_control_ARADDR(4),
      I2 => s_axi_control_ARADDR(2),
      I3 => x(9),
      I4 => int_theta(9),
      I5 => \rdata[9]_i_3_n_0\,
      O => \rdata[9]_i_2_n_0\
    );
\rdata[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000A000C"
    )
        port map (
      I0 => int_r(9),
      I1 => \^interrupt\,
      I2 => s_axi_control_ARADDR(4),
      I3 => s_axi_control_ARADDR(2),
      I4 => s_axi_control_ARADDR(5),
      O => \rdata[9]_i_3_n_0\
    );
\rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(0),
      Q => s_axi_control_RDATA(0),
      R => '0'
    );
\rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(10),
      Q => s_axi_control_RDATA(10),
      R => '0'
    );
\rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(11),
      Q => s_axi_control_RDATA(11),
      R => '0'
    );
\rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(12),
      Q => s_axi_control_RDATA(12),
      R => '0'
    );
\rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(13),
      Q => s_axi_control_RDATA(13),
      R => '0'
    );
\rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(14),
      Q => s_axi_control_RDATA(14),
      R => '0'
    );
\rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(15),
      Q => s_axi_control_RDATA(15),
      R => '0'
    );
\rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(16),
      Q => s_axi_control_RDATA(16),
      R => '0'
    );
\rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(17),
      Q => s_axi_control_RDATA(17),
      R => '0'
    );
\rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(18),
      Q => s_axi_control_RDATA(18),
      R => '0'
    );
\rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(19),
      Q => s_axi_control_RDATA(19),
      R => '0'
    );
\rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(1),
      Q => s_axi_control_RDATA(1),
      R => '0'
    );
\rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(20),
      Q => s_axi_control_RDATA(20),
      R => '0'
    );
\rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(21),
      Q => s_axi_control_RDATA(21),
      R => '0'
    );
\rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(2),
      Q => s_axi_control_RDATA(2),
      R => '0'
    );
\rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(3),
      Q => s_axi_control_RDATA(3),
      R => '0'
    );
\rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(4),
      Q => s_axi_control_RDATA(4),
      R => '0'
    );
\rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(5),
      Q => s_axi_control_RDATA(5),
      R => '0'
    );
\rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(6),
      Q => s_axi_control_RDATA(6),
      R => '0'
    );
\rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(7),
      Q => s_axi_control_RDATA(7),
      R => '0'
    );
\rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(8),
      Q => s_axi_control_RDATA(8),
      R => '0'
    );
\rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(9),
      Q => s_axi_control_RDATA(9),
      R => '0'
    );
\select_ln75_reg_224[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => select_ln75_reg_224(0),
      I1 => y(21),
      I2 => Q(0),
      O => \select_ln75_reg_224_reg[2]\
    );
\select_ln75_reg_224[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => select_ln75_reg_224(1),
      I1 => y(21),
      I2 => Q(0),
      O => \select_ln75_reg_224_reg[8]\
    );
\waddr[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[1]_0\,
      I1 => s_axi_control_AWVALID,
      O => waddr
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_control_AWADDR(0),
      Q => \waddr_reg_n_0_[2]\,
      R => '0'
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_control_AWADDR(1),
      Q => \waddr_reg_n_0_[3]\,
      R => '0'
    );
\waddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_control_AWADDR(2),
      Q => \waddr_reg_n_0_[4]\,
      R => '0'
    );
\waddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_control_AWADDR(3),
      Q => \waddr_reg_n_0_[5]\,
      R => '0'
    );
\x_2_reg_234[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => y(21),
      I1 => x(11),
      O => \x_2_reg_234[11]_i_2_n_0\
    );
\x_2_reg_234[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => y(21),
      I1 => x(10),
      O => \x_2_reg_234[11]_i_3_n_0\
    );
\x_2_reg_234[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => y(21),
      I1 => x(9),
      O => \x_2_reg_234[11]_i_4_n_0\
    );
\x_2_reg_234[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => y(21),
      I1 => x(8),
      O => \x_2_reg_234[11]_i_5_n_0\
    );
\x_2_reg_234[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => y(21),
      I1 => x(15),
      O => \x_2_reg_234[15]_i_2_n_0\
    );
\x_2_reg_234[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => y(21),
      I1 => x(14),
      O => \x_2_reg_234[15]_i_3_n_0\
    );
\x_2_reg_234[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => y(21),
      I1 => x(13),
      O => \x_2_reg_234[15]_i_4_n_0\
    );
\x_2_reg_234[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => y(21),
      I1 => x(12),
      O => \x_2_reg_234[15]_i_5_n_0\
    );
\x_2_reg_234[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => y(21),
      I1 => x(19),
      O => \x_2_reg_234[19]_i_2_n_0\
    );
\x_2_reg_234[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => y(21),
      I1 => x(18),
      O => \x_2_reg_234[19]_i_3_n_0\
    );
\x_2_reg_234[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => y(21),
      I1 => x(17),
      O => \x_2_reg_234[19]_i_4_n_0\
    );
\x_2_reg_234[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => y(21),
      I1 => x(16),
      O => \x_2_reg_234[19]_i_5_n_0\
    );
\x_2_reg_234[21]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => y(21),
      I1 => x(21),
      O => \x_2_reg_234[21]_i_2_n_0\
    );
\x_2_reg_234[21]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => y(21),
      I1 => x(20),
      O => \x_2_reg_234[21]_i_3_n_0\
    );
\x_2_reg_234[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y(21),
      O => \x_2_reg_234[3]_i_2_n_0\
    );
\x_2_reg_234[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => y(21),
      I1 => x(3),
      O => \x_2_reg_234[3]_i_3_n_0\
    );
\x_2_reg_234[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => y(21),
      I1 => x(2),
      O => \x_2_reg_234[3]_i_4_n_0\
    );
\x_2_reg_234[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => y(21),
      I1 => x(1),
      O => \x_2_reg_234[3]_i_5_n_0\
    );
\x_2_reg_234[3]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => x(0),
      O => \x_2_reg_234[3]_i_6_n_0\
    );
\x_2_reg_234[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => y(21),
      I1 => x(7),
      O => \x_2_reg_234[7]_i_2_n_0\
    );
\x_2_reg_234[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => y(21),
      I1 => x(6),
      O => \x_2_reg_234[7]_i_3_n_0\
    );
\x_2_reg_234[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => y(21),
      I1 => x(5),
      O => \x_2_reg_234[7]_i_4_n_0\
    );
\x_2_reg_234[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => y(21),
      I1 => x(4),
      O => \x_2_reg_234[7]_i_5_n_0\
    );
\x_2_reg_234_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \x_2_reg_234_reg[7]_i_1_n_0\,
      CO(3) => \x_2_reg_234_reg[11]_i_1_n_0\,
      CO(2) => \x_2_reg_234_reg[11]_i_1_n_1\,
      CO(1) => \x_2_reg_234_reg[11]_i_1_n_2\,
      CO(0) => \x_2_reg_234_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \int_y_reg[21]_1\(11 downto 8),
      S(3) => \x_2_reg_234[11]_i_2_n_0\,
      S(2) => \x_2_reg_234[11]_i_3_n_0\,
      S(1) => \x_2_reg_234[11]_i_4_n_0\,
      S(0) => \x_2_reg_234[11]_i_5_n_0\
    );
\x_2_reg_234_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \x_2_reg_234_reg[11]_i_1_n_0\,
      CO(3) => \x_2_reg_234_reg[15]_i_1_n_0\,
      CO(2) => \x_2_reg_234_reg[15]_i_1_n_1\,
      CO(1) => \x_2_reg_234_reg[15]_i_1_n_2\,
      CO(0) => \x_2_reg_234_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \int_y_reg[21]_1\(15 downto 12),
      S(3) => \x_2_reg_234[15]_i_2_n_0\,
      S(2) => \x_2_reg_234[15]_i_3_n_0\,
      S(1) => \x_2_reg_234[15]_i_4_n_0\,
      S(0) => \x_2_reg_234[15]_i_5_n_0\
    );
\x_2_reg_234_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \x_2_reg_234_reg[15]_i_1_n_0\,
      CO(3) => \x_2_reg_234_reg[19]_i_1_n_0\,
      CO(2) => \x_2_reg_234_reg[19]_i_1_n_1\,
      CO(1) => \x_2_reg_234_reg[19]_i_1_n_2\,
      CO(0) => \x_2_reg_234_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \int_y_reg[21]_1\(19 downto 16),
      S(3) => \x_2_reg_234[19]_i_2_n_0\,
      S(2) => \x_2_reg_234[19]_i_3_n_0\,
      S(1) => \x_2_reg_234[19]_i_4_n_0\,
      S(0) => \x_2_reg_234[19]_i_5_n_0\
    );
\x_2_reg_234_reg[21]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \x_2_reg_234_reg[19]_i_1_n_0\,
      CO(3 downto 1) => \NLW_x_2_reg_234_reg[21]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \x_2_reg_234_reg[21]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_x_2_reg_234_reg[21]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => \int_y_reg[21]_1\(21 downto 20),
      S(3 downto 2) => B"00",
      S(1) => \x_2_reg_234[21]_i_2_n_0\,
      S(0) => \x_2_reg_234[21]_i_3_n_0\
    );
\x_2_reg_234_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \x_2_reg_234_reg[3]_i_1_n_0\,
      CO(2) => \x_2_reg_234_reg[3]_i_1_n_1\,
      CO(1) => \x_2_reg_234_reg[3]_i_1_n_2\,
      CO(0) => \x_2_reg_234_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \x_2_reg_234[3]_i_2_n_0\,
      O(3 downto 0) => \int_y_reg[21]_1\(3 downto 0),
      S(3) => \x_2_reg_234[3]_i_3_n_0\,
      S(2) => \x_2_reg_234[3]_i_4_n_0\,
      S(1) => \x_2_reg_234[3]_i_5_n_0\,
      S(0) => \x_2_reg_234[3]_i_6_n_0\
    );
\x_2_reg_234_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \x_2_reg_234_reg[3]_i_1_n_0\,
      CO(3) => \x_2_reg_234_reg[7]_i_1_n_0\,
      CO(2) => \x_2_reg_234_reg[7]_i_1_n_1\,
      CO(1) => \x_2_reg_234_reg[7]_i_1_n_2\,
      CO(0) => \x_2_reg_234_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \int_y_reg[21]_1\(7 downto 4),
      S(3) => \x_2_reg_234[7]_i_2_n_0\,
      S(2) => \x_2_reg_234[7]_i_3_n_0\,
      S(1) => \x_2_reg_234[7]_i_4_n_0\,
      S(0) => \x_2_reg_234[7]_i_5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_cordiccart2pol_0_0_cordiccart2pol_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_angles_ROM_AUTO_1R is
  port (
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q0_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q0_reg[11]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q0_reg[15]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q0_reg[18]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \q0_reg[0]_0\ : out STD_LOGIC;
    \theta_temp2_fu_52_reg[3]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \theta_temp2_fu_52_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \theta_temp2_fu_52_reg[11]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \theta_temp2_fu_52_reg[15]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \theta_temp2_fu_52_reg[18]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_enable_reg_pp0_iter0_reg : in STD_LOGIC;
    current_sin_36_load_reg_299 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \theta_temp2_fu_52_reg[19]\ : in STD_LOGIC_VECTOR ( 17 downto 0 );
    \q0_reg[5]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ap_loop_init_int : in STD_LOGIC;
    grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg : in STD_LOGIC;
    select_ln75_reg_224 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_cordiccart2pol_0_0_cordiccart2pol_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_angles_ROM_AUTO_1R : entity is "cordiccart2pol_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_angles_ROM_AUTO_1R";
end design_1_cordiccart2pol_0_0_cordiccart2pol_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_angles_ROM_AUTO_1R;

architecture STRUCTURE of design_1_cordiccart2pol_0_0_cordiccart2pol_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_angles_ROM_AUTO_1R is
  signal angles_ce0_local : STD_LOGIC;
  signal \q0[0]_i_1_n_0\ : STD_LOGIC;
  signal \q0[10]_i_1_n_0\ : STD_LOGIC;
  signal \q0[11]_i_2_n_0\ : STD_LOGIC;
  signal \q0[12]_i_1_n_0\ : STD_LOGIC;
  signal \q0[13]_i_1_n_0\ : STD_LOGIC;
  signal \q0[14]_i_1_n_0\ : STD_LOGIC;
  signal \q0[15]_i_1_n_0\ : STD_LOGIC;
  signal \q0[16]_i_1_n_0\ : STD_LOGIC;
  signal \q0[17]_i_1_n_0\ : STD_LOGIC;
  signal \q0[18]_i_1_n_0\ : STD_LOGIC;
  signal \q0[18]_i_2_n_0\ : STD_LOGIC;
  signal \q0[1]_i_1_n_0\ : STD_LOGIC;
  signal \q0[2]_i_1_n_0\ : STD_LOGIC;
  signal \q0[3]_i_1_n_0\ : STD_LOGIC;
  signal \q0[4]_i_1_n_0\ : STD_LOGIC;
  signal \q0[5]_i_1_n_0\ : STD_LOGIC;
  signal \q0[6]_i_1_n_0\ : STD_LOGIC;
  signal \q0[7]_i_1_n_0\ : STD_LOGIC;
  signal \q0[8]_i_1_n_0\ : STD_LOGIC;
  signal \q0[9]_i_1_n_0\ : STD_LOGIC;
  signal \^q0_reg[0]_0\ : STD_LOGIC;
  signal \q0_reg_n_0_[10]\ : STD_LOGIC;
  signal \q0_reg_n_0_[11]\ : STD_LOGIC;
  signal \q0_reg_n_0_[12]\ : STD_LOGIC;
  signal \q0_reg_n_0_[13]\ : STD_LOGIC;
  signal \q0_reg_n_0_[14]\ : STD_LOGIC;
  signal \q0_reg_n_0_[15]\ : STD_LOGIC;
  signal \q0_reg_n_0_[16]\ : STD_LOGIC;
  signal \q0_reg_n_0_[17]\ : STD_LOGIC;
  signal \q0_reg_n_0_[18]\ : STD_LOGIC;
  signal \q0_reg_n_0_[1]\ : STD_LOGIC;
  signal \q0_reg_n_0_[2]\ : STD_LOGIC;
  signal \q0_reg_n_0_[3]\ : STD_LOGIC;
  signal \q0_reg_n_0_[4]\ : STD_LOGIC;
  signal \q0_reg_n_0_[5]\ : STD_LOGIC;
  signal \q0_reg_n_0_[6]\ : STD_LOGIC;
  signal \q0_reg_n_0_[7]\ : STD_LOGIC;
  signal \q0_reg_n_0_[8]\ : STD_LOGIC;
  signal \q0_reg_n_0_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \q0[10]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \q0[11]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \q0[12]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \q0[13]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \q0[14]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \q0[15]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \q0[16]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \q0[17]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \q0[18]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \q0[1]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \q0[2]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \q0[3]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \q0[4]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \q0[5]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \q0[6]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \q0[7]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \q0[8]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \q0[9]_i_1\ : label is "soft_lutpair34";
begin
  \q0_reg[0]_0\ <= \^q0_reg[0]_0\;
\i__carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \q0_reg_n_0_[7]\,
      I1 => current_sin_36_load_reg_299(0),
      I2 => \theta_temp2_fu_52_reg[19]\(6),
      O => \q0_reg[7]_0\(3)
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \q0_reg_n_0_[6]\,
      I1 => current_sin_36_load_reg_299(0),
      I2 => \theta_temp2_fu_52_reg[19]\(5),
      O => \q0_reg[7]_0\(2)
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \q0_reg_n_0_[5]\,
      I1 => current_sin_36_load_reg_299(0),
      I2 => \theta_temp2_fu_52_reg[19]\(4),
      O => \q0_reg[7]_0\(1)
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \q0_reg_n_0_[4]\,
      I1 => current_sin_36_load_reg_299(0),
      I2 => \theta_temp2_fu_52_reg[19]\(3),
      O => \q0_reg[7]_0\(0)
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \q0_reg_n_0_[11]\,
      I1 => current_sin_36_load_reg_299(0),
      I2 => \theta_temp2_fu_52_reg[19]\(10),
      O => \q0_reg[11]_0\(3)
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \q0_reg_n_0_[10]\,
      I1 => current_sin_36_load_reg_299(0),
      I2 => \theta_temp2_fu_52_reg[19]\(9),
      O => \q0_reg[11]_0\(2)
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \q0_reg_n_0_[9]\,
      I1 => current_sin_36_load_reg_299(0),
      I2 => \theta_temp2_fu_52_reg[19]\(8),
      O => \q0_reg[11]_0\(1)
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \q0_reg_n_0_[8]\,
      I1 => current_sin_36_load_reg_299(0),
      I2 => \theta_temp2_fu_52_reg[19]\(7),
      O => \q0_reg[11]_0\(0)
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \q0_reg_n_0_[15]\,
      I1 => current_sin_36_load_reg_299(0),
      I2 => \theta_temp2_fu_52_reg[19]\(14),
      O => \q0_reg[15]_0\(3)
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \q0_reg_n_0_[14]\,
      I1 => current_sin_36_load_reg_299(0),
      I2 => \theta_temp2_fu_52_reg[19]\(13),
      O => \q0_reg[15]_0\(2)
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \q0_reg_n_0_[13]\,
      I1 => current_sin_36_load_reg_299(0),
      I2 => \theta_temp2_fu_52_reg[19]\(12),
      O => \q0_reg[15]_0\(1)
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \q0_reg_n_0_[12]\,
      I1 => current_sin_36_load_reg_299(0),
      I2 => \theta_temp2_fu_52_reg[19]\(11),
      O => \q0_reg[15]_0\(0)
    );
\i__carry__3_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \q0_reg_n_0_[18]\,
      I1 => current_sin_36_load_reg_299(0),
      I2 => \theta_temp2_fu_52_reg[19]\(17),
      O => \q0_reg[18]_0\(2)
    );
\i__carry__3_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \q0_reg_n_0_[17]\,
      I1 => current_sin_36_load_reg_299(0),
      I2 => \theta_temp2_fu_52_reg[19]\(16),
      O => \q0_reg[18]_0\(1)
    );
\i__carry__3_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \q0_reg_n_0_[16]\,
      I1 => current_sin_36_load_reg_299(0),
      I2 => \theta_temp2_fu_52_reg[19]\(15),
      O => \q0_reg[18]_0\(0)
    );
\i__carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \q0_reg_n_0_[3]\,
      I1 => current_sin_36_load_reg_299(0),
      I2 => \theta_temp2_fu_52_reg[19]\(2),
      O => S(3)
    );
\i__carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \q0_reg_n_0_[2]\,
      I1 => current_sin_36_load_reg_299(0),
      I2 => \theta_temp2_fu_52_reg[19]\(1),
      O => S(2)
    );
\i__carry_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \q0_reg_n_0_[1]\,
      I1 => current_sin_36_load_reg_299(0),
      I2 => \theta_temp2_fu_52_reg[19]\(0),
      O => S(1)
    );
\i__carry_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q0_reg[0]_0\,
      O => S(0)
    );
\q0[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \q0_reg[5]_0\(1),
      I1 => \q0_reg[5]_0\(0),
      O => \q0[0]_i_1_n_0\
    );
\q0[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1574"
    )
        port map (
      I0 => \q0_reg[5]_0\(3),
      I1 => \q0_reg[5]_0\(2),
      I2 => \q0_reg[5]_0\(0),
      I3 => \q0_reg[5]_0\(1),
      O => \q0[10]_i_1_n_0\
    );
\q0[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(0),
      I1 => ap_enable_reg_pp0_iter0_reg,
      O => angles_ce0_local
    );
\q0[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1447"
    )
        port map (
      I0 => \q0_reg[5]_0\(3),
      I1 => \q0_reg[5]_0\(2),
      I2 => \q0_reg[5]_0\(0),
      I3 => \q0_reg[5]_0\(1),
      O => \q0[11]_i_2_n_0\
    );
\q0[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \q0_reg[5]_0\(2),
      I1 => \q0_reg[5]_0\(1),
      I2 => \q0_reg[5]_0\(0),
      O => \q0[12]_i_1_n_0\
    );
\q0[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5E"
    )
        port map (
      I0 => \q0_reg[5]_0\(2),
      I1 => \q0_reg[5]_0\(0),
      I2 => \q0_reg[5]_0\(1),
      O => \q0[13]_i_1_n_0\
    );
\q0[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \q0_reg[5]_0\(2),
      I1 => \q0_reg[5]_0\(1),
      I2 => \q0_reg[5]_0\(0),
      O => \q0[14]_i_1_n_0\
    );
\q0[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \q0_reg[5]_0\(1),
      I1 => \q0_reg[5]_0\(0),
      I2 => \q0_reg[5]_0\(2),
      O => \q0[15]_i_1_n_0\
    );
\q0[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \q0_reg[5]_0\(0),
      I1 => \q0_reg[5]_0\(1),
      I2 => \q0_reg[5]_0\(2),
      O => \q0[16]_i_1_n_0\
    );
\q0[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \q0_reg[5]_0\(2),
      I1 => \q0_reg[5]_0\(1),
      O => \q0[17]_i_1_n_0\
    );
\q0[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \q0_reg[5]_0\(3),
      I1 => ap_enable_reg_pp0_iter0_reg,
      I2 => Q(0),
      O => \q0[18]_i_1_n_0\
    );
\q0[18]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \q0_reg[5]_0\(0),
      I1 => \q0_reg[5]_0\(1),
      I2 => \q0_reg[5]_0\(2),
      O => \q0[18]_i_2_n_0\
    );
\q0[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6D"
    )
        port map (
      I0 => \q0_reg[5]_0\(2),
      I1 => \q0_reg[5]_0\(1),
      I2 => \q0_reg[5]_0\(0),
      O => \q0[1]_i_1_n_0\
    );
\q0[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \q0_reg[5]_0\(2),
      I1 => \q0_reg[5]_0\(0),
      O => \q0[2]_i_1_n_0\
    );
\q0[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6D"
    )
        port map (
      I0 => \q0_reg[5]_0\(2),
      I1 => \q0_reg[5]_0\(0),
      I2 => \q0_reg[5]_0\(1),
      O => \q0[3]_i_1_n_0\
    );
\q0[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9055"
    )
        port map (
      I0 => \q0_reg[5]_0\(3),
      I1 => \q0_reg[5]_0\(1),
      I2 => \q0_reg[5]_0\(2),
      I3 => \q0_reg[5]_0\(0),
      O => \q0[4]_i_1_n_0\
    );
\q0[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"14D1"
    )
        port map (
      I0 => \q0_reg[5]_0\(3),
      I1 => \q0_reg[5]_0\(2),
      I2 => \q0_reg[5]_0\(1),
      I3 => \q0_reg[5]_0\(0),
      O => \q0[5]_i_1_n_0\
    );
\q0[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0C45"
    )
        port map (
      I0 => \q0_reg[5]_0\(3),
      I1 => \q0_reg[5]_0\(2),
      I2 => \q0_reg[5]_0\(1),
      I3 => \q0_reg[5]_0\(0),
      O => \q0[6]_i_1_n_0\
    );
\q0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"155C"
    )
        port map (
      I0 => \q0_reg[5]_0\(3),
      I1 => \q0_reg[5]_0\(2),
      I2 => \q0_reg[5]_0\(0),
      I3 => \q0_reg[5]_0\(1),
      O => \q0[7]_i_1_n_0\
    );
\q0[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2554"
    )
        port map (
      I0 => \q0_reg[5]_0\(3),
      I1 => \q0_reg[5]_0\(2),
      I2 => \q0_reg[5]_0\(1),
      I3 => \q0_reg[5]_0\(0),
      O => \q0[8]_i_1_n_0\
    );
\q0[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1464"
    )
        port map (
      I0 => \q0_reg[5]_0\(3),
      I1 => \q0_reg[5]_0\(2),
      I2 => \q0_reg[5]_0\(1),
      I3 => \q0_reg[5]_0\(0),
      O => \q0[9]_i_1_n_0\
    );
\q0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => angles_ce0_local,
      D => \q0[0]_i_1_n_0\,
      Q => \^q0_reg[0]_0\,
      R => \q0[18]_i_1_n_0\
    );
\q0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => angles_ce0_local,
      D => \q0[10]_i_1_n_0\,
      Q => \q0_reg_n_0_[10]\,
      R => '0'
    );
\q0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => angles_ce0_local,
      D => \q0[11]_i_2_n_0\,
      Q => \q0_reg_n_0_[11]\,
      R => '0'
    );
\q0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => angles_ce0_local,
      D => \q0[12]_i_1_n_0\,
      Q => \q0_reg_n_0_[12]\,
      R => \q0[18]_i_1_n_0\
    );
\q0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => angles_ce0_local,
      D => \q0[13]_i_1_n_0\,
      Q => \q0_reg_n_0_[13]\,
      R => \q0[18]_i_1_n_0\
    );
\q0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => angles_ce0_local,
      D => \q0[14]_i_1_n_0\,
      Q => \q0_reg_n_0_[14]\,
      R => \q0[18]_i_1_n_0\
    );
\q0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => angles_ce0_local,
      D => \q0[15]_i_1_n_0\,
      Q => \q0_reg_n_0_[15]\,
      R => \q0[18]_i_1_n_0\
    );
\q0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => angles_ce0_local,
      D => \q0[16]_i_1_n_0\,
      Q => \q0_reg_n_0_[16]\,
      R => \q0[18]_i_1_n_0\
    );
\q0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => angles_ce0_local,
      D => \q0[17]_i_1_n_0\,
      Q => \q0_reg_n_0_[17]\,
      R => \q0[18]_i_1_n_0\
    );
\q0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => angles_ce0_local,
      D => \q0[18]_i_2_n_0\,
      Q => \q0_reg_n_0_[18]\,
      R => \q0[18]_i_1_n_0\
    );
\q0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => angles_ce0_local,
      D => \q0[1]_i_1_n_0\,
      Q => \q0_reg_n_0_[1]\,
      R => \q0[18]_i_1_n_0\
    );
\q0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => angles_ce0_local,
      D => \q0[2]_i_1_n_0\,
      Q => \q0_reg_n_0_[2]\,
      R => \q0[18]_i_1_n_0\
    );
\q0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => angles_ce0_local,
      D => \q0[3]_i_1_n_0\,
      Q => \q0_reg_n_0_[3]\,
      R => \q0[18]_i_1_n_0\
    );
\q0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => angles_ce0_local,
      D => \q0[4]_i_1_n_0\,
      Q => \q0_reg_n_0_[4]\,
      R => '0'
    );
\q0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => angles_ce0_local,
      D => \q0[5]_i_1_n_0\,
      Q => \q0_reg_n_0_[5]\,
      R => '0'
    );
\q0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => angles_ce0_local,
      D => \q0[6]_i_1_n_0\,
      Q => \q0_reg_n_0_[6]\,
      R => '0'
    );
\q0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => angles_ce0_local,
      D => \q0[7]_i_1_n_0\,
      Q => \q0_reg_n_0_[7]\,
      R => '0'
    );
\q0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => angles_ce0_local,
      D => \q0[8]_i_1_n_0\,
      Q => \q0_reg_n_0_[8]\,
      R => '0'
    );
\q0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => angles_ce0_local,
      D => \q0[9]_i_1_n_0\,
      Q => \q0_reg_n_0_[9]\,
      R => '0'
    );
\theta_temp2_fu_52[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF69696900696969"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg[19]\(10),
      I1 => \q0_reg_n_0_[11]\,
      I2 => current_sin_36_load_reg_299(0),
      I3 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I4 => ap_loop_init_int,
      I5 => select_ln75_reg_224(1),
      O => \theta_temp2_fu_52_reg[11]\(3)
    );
\theta_temp2_fu_52[11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF69696900696969"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg[19]\(9),
      I1 => \q0_reg_n_0_[10]\,
      I2 => current_sin_36_load_reg_299(0),
      I3 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I4 => ap_loop_init_int,
      I5 => select_ln75_reg_224(1),
      O => \theta_temp2_fu_52_reg[11]\(2)
    );
\theta_temp2_fu_52[11]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF69696900696969"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg[19]\(8),
      I1 => \q0_reg_n_0_[9]\,
      I2 => current_sin_36_load_reg_299(0),
      I3 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I4 => ap_loop_init_int,
      I5 => select_ln75_reg_224(1),
      O => \theta_temp2_fu_52_reg[11]\(1)
    );
\theta_temp2_fu_52[11]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF69696900696969"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg[19]\(7),
      I1 => \q0_reg_n_0_[8]\,
      I2 => current_sin_36_load_reg_299(0),
      I3 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I4 => ap_loop_init_int,
      I5 => select_ln75_reg_224(1),
      O => \theta_temp2_fu_52_reg[11]\(0)
    );
\theta_temp2_fu_52[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF69696900696969"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg[19]\(14),
      I1 => \q0_reg_n_0_[15]\,
      I2 => current_sin_36_load_reg_299(0),
      I3 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I4 => ap_loop_init_int,
      I5 => select_ln75_reg_224(0),
      O => \theta_temp2_fu_52_reg[15]\(3)
    );
\theta_temp2_fu_52[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF69696900696969"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg[19]\(13),
      I1 => \q0_reg_n_0_[14]\,
      I2 => current_sin_36_load_reg_299(0),
      I3 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I4 => ap_loop_init_int,
      I5 => select_ln75_reg_224(1),
      O => \theta_temp2_fu_52_reg[15]\(2)
    );
\theta_temp2_fu_52[15]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF69696900696969"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg[19]\(12),
      I1 => \q0_reg_n_0_[13]\,
      I2 => current_sin_36_load_reg_299(0),
      I3 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I4 => ap_loop_init_int,
      I5 => select_ln75_reg_224(1),
      O => \theta_temp2_fu_52_reg[15]\(1)
    );
\theta_temp2_fu_52[15]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF69696900696969"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg[19]\(11),
      I1 => \q0_reg_n_0_[12]\,
      I2 => current_sin_36_load_reg_299(0),
      I3 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I4 => ap_loop_init_int,
      I5 => select_ln75_reg_224(0),
      O => \theta_temp2_fu_52_reg[15]\(0)
    );
\theta_temp2_fu_52[19]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF69696900696969"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg[19]\(17),
      I1 => \q0_reg_n_0_[18]\,
      I2 => current_sin_36_load_reg_299(0),
      I3 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I4 => ap_loop_init_int,
      I5 => select_ln75_reg_224(0),
      O => \theta_temp2_fu_52_reg[18]\(2)
    );
\theta_temp2_fu_52[19]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF69696900696969"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg[19]\(16),
      I1 => \q0_reg_n_0_[17]\,
      I2 => current_sin_36_load_reg_299(0),
      I3 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I4 => ap_loop_init_int,
      I5 => select_ln75_reg_224(1),
      O => \theta_temp2_fu_52_reg[18]\(1)
    );
\theta_temp2_fu_52[19]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF69696900696969"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg[19]\(15),
      I1 => \q0_reg_n_0_[16]\,
      I2 => current_sin_36_load_reg_299(0),
      I3 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I4 => ap_loop_init_int,
      I5 => select_ln75_reg_224(1),
      O => \theta_temp2_fu_52_reg[18]\(0)
    );
\theta_temp2_fu_52[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF69696900696969"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg[19]\(2),
      I1 => \q0_reg_n_0_[3]\,
      I2 => current_sin_36_load_reg_299(0),
      I3 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I4 => ap_loop_init_int,
      I5 => select_ln75_reg_224(0),
      O => \theta_temp2_fu_52_reg[3]\(2)
    );
\theta_temp2_fu_52[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF69696900696969"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg[19]\(1),
      I1 => \q0_reg_n_0_[2]\,
      I2 => current_sin_36_load_reg_299(0),
      I3 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I4 => ap_loop_init_int,
      I5 => select_ln75_reg_224(0),
      O => \theta_temp2_fu_52_reg[3]\(1)
    );
\theta_temp2_fu_52[3]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF696969"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg[19]\(0),
      I1 => current_sin_36_load_reg_299(0),
      I2 => \q0_reg_n_0_[1]\,
      I3 => ap_loop_init_int,
      I4 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      O => \theta_temp2_fu_52_reg[3]\(0)
    );
\theta_temp2_fu_52[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF69696900696969"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg[19]\(6),
      I1 => \q0_reg_n_0_[7]\,
      I2 => current_sin_36_load_reg_299(0),
      I3 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I4 => ap_loop_init_int,
      I5 => select_ln75_reg_224(0),
      O => \theta_temp2_fu_52_reg[7]\(3)
    );
\theta_temp2_fu_52[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF69696900696969"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg[19]\(5),
      I1 => \q0_reg_n_0_[6]\,
      I2 => current_sin_36_load_reg_299(0),
      I3 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I4 => ap_loop_init_int,
      I5 => select_ln75_reg_224(0),
      O => \theta_temp2_fu_52_reg[7]\(2)
    );
\theta_temp2_fu_52[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF69696900696969"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg[19]\(4),
      I1 => \q0_reg_n_0_[5]\,
      I2 => current_sin_36_load_reg_299(0),
      I3 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I4 => ap_loop_init_int,
      I5 => select_ln75_reg_224(0),
      O => \theta_temp2_fu_52_reg[7]\(1)
    );
\theta_temp2_fu_52[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF69696900696969"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg[19]\(3),
      I1 => \q0_reg_n_0_[4]\,
      I2 => current_sin_36_load_reg_299(0),
      I3 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I4 => ap_loop_init_int,
      I5 => select_ln75_reg_224(0),
      O => \theta_temp2_fu_52_reg[7]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_cordiccart2pol_0_0_cordiccart2pol_flow_control_loop_pipe_sequential_init is
  port (
    ap_loop_init_int : out STD_LOGIC;
    ap_enable_reg_pp0_iter1_reg : out STD_LOGIC;
    \ap_CS_fsm_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_NS_fsm1 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 21 downto 0 );
    \x_2_reg_234_reg[21]\ : out STD_LOGIC_VECTOR ( 21 downto 0 );
    \theta_temp2_fu_52_reg[20]\ : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_enable_reg_pp0_iter0_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ap_CS_fsm_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg : in STD_LOGIC;
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    \ap_CS_fsm_reg[2]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \current_cos_34_fu_56_reg[21]\ : in STD_LOGIC_VECTOR ( 21 downto 0 );
    \current_cos_34_fu_56_reg[21]_0\ : in STD_LOGIC_VECTOR ( 21 downto 0 );
    \current_sin_36_fu_60_reg[21]\ : in STD_LOGIC_VECTOR ( 21 downto 0 );
    O : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \current_sin_36_fu_60_reg[19]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \current_sin_36_fu_60_reg[15]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \current_sin_36_fu_60_reg[11]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \current_sin_36_fu_60_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \current_sin_36_fu_60_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    current_sin_36_load_reg_299 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \theta_temp2_fu_52_reg[21]\ : in STD_LOGIC_VECTOR ( 21 downto 0 );
    \theta_temp2_fu_52_reg[3]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \theta_temp2_fu_52_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \theta_temp2_fu_52_reg[11]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \theta_temp2_fu_52_reg[15]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \theta_temp2_fu_52_reg[19]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \theta_temp2_fu_52_reg[3]_0\ : in STD_LOGIC;
    select_ln75_reg_224 : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_cordiccart2pol_0_0_cordiccart2pol_flow_control_loop_pipe_sequential_init : entity is "cordiccart2pol_flow_control_loop_pipe_sequential_init";
end design_1_cordiccart2pol_0_0_cordiccart2pol_flow_control_loop_pipe_sequential_init;

architecture STRUCTURE of design_1_cordiccart2pol_0_0_cordiccart2pol_flow_control_loop_pipe_sequential_init is
  signal ap_done_cache : STD_LOGIC;
  signal ap_done_cache_i_1_n_0 : STD_LOGIC;
  signal \^ap_enable_reg_pp0_iter1_reg\ : STD_LOGIC;
  signal \^ap_loop_init_int\ : STD_LOGIC;
  signal ap_loop_init_int_i_1_n_0 : STD_LOGIC;
  signal \theta_temp2_fu_52[11]_i_2_n_0\ : STD_LOGIC;
  signal \theta_temp2_fu_52[11]_i_3_n_0\ : STD_LOGIC;
  signal \theta_temp2_fu_52[11]_i_4_n_0\ : STD_LOGIC;
  signal \theta_temp2_fu_52[11]_i_5_n_0\ : STD_LOGIC;
  signal \theta_temp2_fu_52[15]_i_2_n_0\ : STD_LOGIC;
  signal \theta_temp2_fu_52[15]_i_3_n_0\ : STD_LOGIC;
  signal \theta_temp2_fu_52[15]_i_4_n_0\ : STD_LOGIC;
  signal \theta_temp2_fu_52[15]_i_5_n_0\ : STD_LOGIC;
  signal \theta_temp2_fu_52[19]_i_2_n_0\ : STD_LOGIC;
  signal \theta_temp2_fu_52[19]_i_3_n_0\ : STD_LOGIC;
  signal \theta_temp2_fu_52[19]_i_4_n_0\ : STD_LOGIC;
  signal \theta_temp2_fu_52[19]_i_5_n_0\ : STD_LOGIC;
  signal \theta_temp2_fu_52[19]_i_6_n_0\ : STD_LOGIC;
  signal \theta_temp2_fu_52[21]_i_2_n_0\ : STD_LOGIC;
  signal \theta_temp2_fu_52[21]_i_3_n_0\ : STD_LOGIC;
  signal \theta_temp2_fu_52[21]_i_4_n_0\ : STD_LOGIC;
  signal \theta_temp2_fu_52[3]_i_10_n_0\ : STD_LOGIC;
  signal \theta_temp2_fu_52[3]_i_2_n_0\ : STD_LOGIC;
  signal \theta_temp2_fu_52[3]_i_3_n_0\ : STD_LOGIC;
  signal \theta_temp2_fu_52[3]_i_4_n_0\ : STD_LOGIC;
  signal \theta_temp2_fu_52[3]_i_5_n_0\ : STD_LOGIC;
  signal \theta_temp2_fu_52[3]_i_6_n_0\ : STD_LOGIC;
  signal \theta_temp2_fu_52[7]_i_2_n_0\ : STD_LOGIC;
  signal \theta_temp2_fu_52[7]_i_3_n_0\ : STD_LOGIC;
  signal \theta_temp2_fu_52[7]_i_4_n_0\ : STD_LOGIC;
  signal \theta_temp2_fu_52[7]_i_5_n_0\ : STD_LOGIC;
  signal \theta_temp2_fu_52_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \theta_temp2_fu_52_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \theta_temp2_fu_52_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \theta_temp2_fu_52_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \theta_temp2_fu_52_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \theta_temp2_fu_52_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \theta_temp2_fu_52_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \theta_temp2_fu_52_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \theta_temp2_fu_52_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \theta_temp2_fu_52_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \theta_temp2_fu_52_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \theta_temp2_fu_52_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \theta_temp2_fu_52_reg[21]_i_1_n_3\ : STD_LOGIC;
  signal \theta_temp2_fu_52_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \theta_temp2_fu_52_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \theta_temp2_fu_52_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \theta_temp2_fu_52_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \theta_temp2_fu_52_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \theta_temp2_fu_52_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \theta_temp2_fu_52_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \theta_temp2_fu_52_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \NLW_theta_temp2_fu_52_reg[21]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_theta_temp2_fu_52_reg[21]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \current_sin_36_fu_60[21]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \i1_fu_48[3]_i_1\ : label is "soft_lutpair41";
begin
  ap_enable_reg_pp0_iter1_reg <= \^ap_enable_reg_pp0_iter1_reg\;
  ap_loop_init_int <= \^ap_loop_init_int\;
\ap_CS_fsm[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2220000"
    )
        port map (
      I0 => ap_done_cache,
      I1 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I2 => Q(0),
      I3 => \^ap_enable_reg_pp0_iter1_reg\,
      I4 => \ap_CS_fsm_reg[2]\(0),
      O => ap_NS_fsm1
    );
\ap_CS_fsm[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => Q(0),
      I2 => \ap_CS_fsm_reg[2]_0\(2),
      I3 => \ap_CS_fsm_reg[2]_0\(3),
      I4 => \ap_CS_fsm_reg[2]_0\(0),
      I5 => \ap_CS_fsm_reg[2]_0\(1),
      O => \^ap_enable_reg_pp0_iter1_reg\
    );
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80AA8080"
    )
        port map (
      I0 => \ap_CS_fsm_reg[2]\(0),
      I1 => \^ap_enable_reg_pp0_iter1_reg\,
      I2 => Q(0),
      I3 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I4 => ap_done_cache,
      O => \ap_CS_fsm_reg[1]\(0)
    );
ap_done_cache_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \^ap_enable_reg_pp0_iter1_reg\,
      I1 => Q(0),
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => ap_done_cache,
      O => ap_done_cache_i_1_n_0
    );
ap_done_cache_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_done_cache_i_1_n_0,
      Q => ap_done_cache,
      R => SR(0)
    );
ap_loop_init_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF5DDD5DDD5DDD"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^ap_loop_init_int\,
      I2 => ap_enable_reg_pp0_iter0_reg,
      I3 => Q(1),
      I4 => \^ap_enable_reg_pp0_iter1_reg\,
      I5 => Q(0),
      O => ap_loop_init_int_i_1_n_0
    );
ap_loop_init_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_init_int_i_1_n_0,
      Q => \^ap_loop_init_int\,
      R => '0'
    );
\current_cos_34_fu_56[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_cos_34_fu_56_reg[21]\(0),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \current_cos_34_fu_56_reg[21]_0\(0),
      O => D(0)
    );
\current_cos_34_fu_56[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_cos_34_fu_56_reg[21]\(10),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \current_cos_34_fu_56_reg[21]_0\(10),
      O => D(10)
    );
\current_cos_34_fu_56[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_cos_34_fu_56_reg[21]\(11),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \current_cos_34_fu_56_reg[21]_0\(11),
      O => D(11)
    );
\current_cos_34_fu_56[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_cos_34_fu_56_reg[21]\(12),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \current_cos_34_fu_56_reg[21]_0\(12),
      O => D(12)
    );
\current_cos_34_fu_56[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_cos_34_fu_56_reg[21]\(13),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \current_cos_34_fu_56_reg[21]_0\(13),
      O => D(13)
    );
\current_cos_34_fu_56[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_cos_34_fu_56_reg[21]\(14),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \current_cos_34_fu_56_reg[21]_0\(14),
      O => D(14)
    );
\current_cos_34_fu_56[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_cos_34_fu_56_reg[21]\(15),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \current_cos_34_fu_56_reg[21]_0\(15),
      O => D(15)
    );
\current_cos_34_fu_56[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_cos_34_fu_56_reg[21]\(16),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \current_cos_34_fu_56_reg[21]_0\(16),
      O => D(16)
    );
\current_cos_34_fu_56[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_cos_34_fu_56_reg[21]\(17),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \current_cos_34_fu_56_reg[21]_0\(17),
      O => D(17)
    );
\current_cos_34_fu_56[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_cos_34_fu_56_reg[21]\(18),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \current_cos_34_fu_56_reg[21]_0\(18),
      O => D(18)
    );
\current_cos_34_fu_56[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_cos_34_fu_56_reg[21]\(19),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \current_cos_34_fu_56_reg[21]_0\(19),
      O => D(19)
    );
\current_cos_34_fu_56[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_cos_34_fu_56_reg[21]\(1),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \current_cos_34_fu_56_reg[21]_0\(1),
      O => D(1)
    );
\current_cos_34_fu_56[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_cos_34_fu_56_reg[21]\(20),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \current_cos_34_fu_56_reg[21]_0\(20),
      O => D(20)
    );
\current_cos_34_fu_56[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F800"
    )
        port map (
      I0 => \^ap_loop_init_int\,
      I1 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => Q(0),
      O => E(0)
    );
\current_cos_34_fu_56[21]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_cos_34_fu_56_reg[21]\(21),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \current_cos_34_fu_56_reg[21]_0\(21),
      O => D(21)
    );
\current_cos_34_fu_56[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_cos_34_fu_56_reg[21]\(2),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \current_cos_34_fu_56_reg[21]_0\(2),
      O => D(2)
    );
\current_cos_34_fu_56[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_cos_34_fu_56_reg[21]\(3),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \current_cos_34_fu_56_reg[21]_0\(3),
      O => D(3)
    );
\current_cos_34_fu_56[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_cos_34_fu_56_reg[21]\(4),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \current_cos_34_fu_56_reg[21]_0\(4),
      O => D(4)
    );
\current_cos_34_fu_56[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_cos_34_fu_56_reg[21]\(5),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \current_cos_34_fu_56_reg[21]_0\(5),
      O => D(5)
    );
\current_cos_34_fu_56[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_cos_34_fu_56_reg[21]\(6),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \current_cos_34_fu_56_reg[21]_0\(6),
      O => D(6)
    );
\current_cos_34_fu_56[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_cos_34_fu_56_reg[21]\(7),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \current_cos_34_fu_56_reg[21]_0\(7),
      O => D(7)
    );
\current_cos_34_fu_56[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_cos_34_fu_56_reg[21]\(8),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \current_cos_34_fu_56_reg[21]_0\(8),
      O => D(8)
    );
\current_cos_34_fu_56[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_cos_34_fu_56_reg[21]\(9),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \current_cos_34_fu_56_reg[21]_0\(9),
      O => D(9)
    );
\current_sin_36_fu_60[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_sin_36_fu_60_reg[21]\(0),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \current_sin_36_fu_60_reg[3]\(0),
      O => \x_2_reg_234_reg[21]\(0)
    );
\current_sin_36_fu_60[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_sin_36_fu_60_reg[21]\(10),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \current_sin_36_fu_60_reg[11]\(2),
      O => \x_2_reg_234_reg[21]\(10)
    );
\current_sin_36_fu_60[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_sin_36_fu_60_reg[21]\(11),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \current_sin_36_fu_60_reg[11]\(3),
      O => \x_2_reg_234_reg[21]\(11)
    );
\current_sin_36_fu_60[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_sin_36_fu_60_reg[21]\(12),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \current_sin_36_fu_60_reg[15]\(0),
      O => \x_2_reg_234_reg[21]\(12)
    );
\current_sin_36_fu_60[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_sin_36_fu_60_reg[21]\(13),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \current_sin_36_fu_60_reg[15]\(1),
      O => \x_2_reg_234_reg[21]\(13)
    );
\current_sin_36_fu_60[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_sin_36_fu_60_reg[21]\(14),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \current_sin_36_fu_60_reg[15]\(2),
      O => \x_2_reg_234_reg[21]\(14)
    );
\current_sin_36_fu_60[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_sin_36_fu_60_reg[21]\(15),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \current_sin_36_fu_60_reg[15]\(3),
      O => \x_2_reg_234_reg[21]\(15)
    );
\current_sin_36_fu_60[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_sin_36_fu_60_reg[21]\(16),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \current_sin_36_fu_60_reg[19]\(0),
      O => \x_2_reg_234_reg[21]\(16)
    );
\current_sin_36_fu_60[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_sin_36_fu_60_reg[21]\(17),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \current_sin_36_fu_60_reg[19]\(1),
      O => \x_2_reg_234_reg[21]\(17)
    );
\current_sin_36_fu_60[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_sin_36_fu_60_reg[21]\(18),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \current_sin_36_fu_60_reg[19]\(2),
      O => \x_2_reg_234_reg[21]\(18)
    );
\current_sin_36_fu_60[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_sin_36_fu_60_reg[21]\(19),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \current_sin_36_fu_60_reg[19]\(3),
      O => \x_2_reg_234_reg[21]\(19)
    );
\current_sin_36_fu_60[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_sin_36_fu_60_reg[21]\(1),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \current_sin_36_fu_60_reg[3]\(1),
      O => \x_2_reg_234_reg[21]\(1)
    );
\current_sin_36_fu_60[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_sin_36_fu_60_reg[21]\(20),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => O(0),
      O => \x_2_reg_234_reg[21]\(20)
    );
\current_sin_36_fu_60[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_sin_36_fu_60_reg[21]\(21),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => O(1),
      O => \x_2_reg_234_reg[21]\(21)
    );
\current_sin_36_fu_60[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_sin_36_fu_60_reg[21]\(2),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \current_sin_36_fu_60_reg[3]\(2),
      O => \x_2_reg_234_reg[21]\(2)
    );
\current_sin_36_fu_60[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_sin_36_fu_60_reg[21]\(3),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \current_sin_36_fu_60_reg[3]\(3),
      O => \x_2_reg_234_reg[21]\(3)
    );
\current_sin_36_fu_60[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_sin_36_fu_60_reg[21]\(4),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \current_sin_36_fu_60_reg[7]\(0),
      O => \x_2_reg_234_reg[21]\(4)
    );
\current_sin_36_fu_60[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_sin_36_fu_60_reg[21]\(5),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \current_sin_36_fu_60_reg[7]\(1),
      O => \x_2_reg_234_reg[21]\(5)
    );
\current_sin_36_fu_60[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_sin_36_fu_60_reg[21]\(6),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \current_sin_36_fu_60_reg[7]\(2),
      O => \x_2_reg_234_reg[21]\(6)
    );
\current_sin_36_fu_60[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_sin_36_fu_60_reg[21]\(7),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \current_sin_36_fu_60_reg[7]\(3),
      O => \x_2_reg_234_reg[21]\(7)
    );
\current_sin_36_fu_60[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_sin_36_fu_60_reg[21]\(8),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \current_sin_36_fu_60_reg[11]\(0),
      O => \x_2_reg_234_reg[21]\(8)
    );
\current_sin_36_fu_60[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \current_sin_36_fu_60_reg[21]\(9),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \current_sin_36_fu_60_reg[11]\(1),
      O => \x_2_reg_234_reg[21]\(9)
    );
\i1_fu_48[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I2 => \^ap_loop_init_int\,
      O => \ap_CS_fsm_reg[0]\(0)
    );
\theta_temp2_fu_52[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg[21]\(11),
      I1 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I2 => \^ap_loop_init_int\,
      O => \theta_temp2_fu_52[11]_i_2_n_0\
    );
\theta_temp2_fu_52[11]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg[21]\(10),
      I1 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I2 => \^ap_loop_init_int\,
      O => \theta_temp2_fu_52[11]_i_3_n_0\
    );
\theta_temp2_fu_52[11]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg[21]\(9),
      I1 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I2 => \^ap_loop_init_int\,
      O => \theta_temp2_fu_52[11]_i_4_n_0\
    );
\theta_temp2_fu_52[11]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg[21]\(8),
      I1 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I2 => \^ap_loop_init_int\,
      O => \theta_temp2_fu_52[11]_i_5_n_0\
    );
\theta_temp2_fu_52[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg[21]\(15),
      I1 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I2 => \^ap_loop_init_int\,
      O => \theta_temp2_fu_52[15]_i_2_n_0\
    );
\theta_temp2_fu_52[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg[21]\(14),
      I1 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I2 => \^ap_loop_init_int\,
      O => \theta_temp2_fu_52[15]_i_3_n_0\
    );
\theta_temp2_fu_52[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg[21]\(13),
      I1 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I2 => \^ap_loop_init_int\,
      O => \theta_temp2_fu_52[15]_i_4_n_0\
    );
\theta_temp2_fu_52[15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg[21]\(12),
      I1 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I2 => \^ap_loop_init_int\,
      O => \theta_temp2_fu_52[15]_i_5_n_0\
    );
\theta_temp2_fu_52[19]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg[21]\(19),
      I1 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I2 => \^ap_loop_init_int\,
      O => \theta_temp2_fu_52[19]_i_2_n_0\
    );
\theta_temp2_fu_52[19]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg[21]\(18),
      I1 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I2 => \^ap_loop_init_int\,
      O => \theta_temp2_fu_52[19]_i_3_n_0\
    );
\theta_temp2_fu_52[19]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg[21]\(17),
      I1 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I2 => \^ap_loop_init_int\,
      O => \theta_temp2_fu_52[19]_i_4_n_0\
    );
\theta_temp2_fu_52[19]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg[21]\(16),
      I1 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I2 => \^ap_loop_init_int\,
      O => \theta_temp2_fu_52[19]_i_5_n_0\
    );
\theta_temp2_fu_52[19]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F9990999"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg[21]\(19),
      I1 => current_sin_36_load_reg_299(0),
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \^ap_loop_init_int\,
      I4 => select_ln75_reg_224(0),
      O => \theta_temp2_fu_52[19]_i_6_n_0\
    );
\theta_temp2_fu_52[21]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg[21]\(20),
      I1 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I2 => \^ap_loop_init_int\,
      O => \theta_temp2_fu_52[21]_i_2_n_0\
    );
\theta_temp2_fu_52[21]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F9990999"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg[21]\(21),
      I1 => current_sin_36_load_reg_299(0),
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \^ap_loop_init_int\,
      I4 => select_ln75_reg_224(1),
      O => \theta_temp2_fu_52[21]_i_3_n_0\
    );
\theta_temp2_fu_52[21]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F9990999"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg[21]\(20),
      I1 => current_sin_36_load_reg_299(0),
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \^ap_loop_init_int\,
      I4 => select_ln75_reg_224(1),
      O => \theta_temp2_fu_52[21]_i_4_n_0\
    );
\theta_temp2_fu_52[3]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"152A2A15"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg[21]\(0),
      I1 => \^ap_loop_init_int\,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => current_sin_36_load_reg_299(0),
      I4 => \theta_temp2_fu_52_reg[3]_0\,
      O => \theta_temp2_fu_52[3]_i_10_n_0\
    );
\theta_temp2_fu_52[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => current_sin_36_load_reg_299(0),
      I1 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I2 => \^ap_loop_init_int\,
      O => \theta_temp2_fu_52[3]_i_2_n_0\
    );
\theta_temp2_fu_52[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg[21]\(3),
      I1 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I2 => \^ap_loop_init_int\,
      O => \theta_temp2_fu_52[3]_i_3_n_0\
    );
\theta_temp2_fu_52[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg[21]\(2),
      I1 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I2 => \^ap_loop_init_int\,
      O => \theta_temp2_fu_52[3]_i_4_n_0\
    );
\theta_temp2_fu_52[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg[21]\(1),
      I1 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I2 => \^ap_loop_init_int\,
      O => \theta_temp2_fu_52[3]_i_5_n_0\
    );
\theta_temp2_fu_52[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg[21]\(0),
      I1 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I2 => \^ap_loop_init_int\,
      O => \theta_temp2_fu_52[3]_i_6_n_0\
    );
\theta_temp2_fu_52[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg[21]\(7),
      I1 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I2 => \^ap_loop_init_int\,
      O => \theta_temp2_fu_52[7]_i_2_n_0\
    );
\theta_temp2_fu_52[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg[21]\(6),
      I1 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I2 => \^ap_loop_init_int\,
      O => \theta_temp2_fu_52[7]_i_3_n_0\
    );
\theta_temp2_fu_52[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg[21]\(5),
      I1 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I2 => \^ap_loop_init_int\,
      O => \theta_temp2_fu_52[7]_i_4_n_0\
    );
\theta_temp2_fu_52[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg[21]\(4),
      I1 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I2 => \^ap_loop_init_int\,
      O => \theta_temp2_fu_52[7]_i_5_n_0\
    );
\theta_temp2_fu_52_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \theta_temp2_fu_52_reg[7]_i_1_n_0\,
      CO(3) => \theta_temp2_fu_52_reg[11]_i_1_n_0\,
      CO(2) => \theta_temp2_fu_52_reg[11]_i_1_n_1\,
      CO(1) => \theta_temp2_fu_52_reg[11]_i_1_n_2\,
      CO(0) => \theta_temp2_fu_52_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \theta_temp2_fu_52[11]_i_2_n_0\,
      DI(2) => \theta_temp2_fu_52[11]_i_3_n_0\,
      DI(1) => \theta_temp2_fu_52[11]_i_4_n_0\,
      DI(0) => \theta_temp2_fu_52[11]_i_5_n_0\,
      O(3 downto 0) => \theta_temp2_fu_52_reg[20]\(11 downto 8),
      S(3 downto 0) => \theta_temp2_fu_52_reg[11]\(3 downto 0)
    );
\theta_temp2_fu_52_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \theta_temp2_fu_52_reg[11]_i_1_n_0\,
      CO(3) => \theta_temp2_fu_52_reg[15]_i_1_n_0\,
      CO(2) => \theta_temp2_fu_52_reg[15]_i_1_n_1\,
      CO(1) => \theta_temp2_fu_52_reg[15]_i_1_n_2\,
      CO(0) => \theta_temp2_fu_52_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \theta_temp2_fu_52[15]_i_2_n_0\,
      DI(2) => \theta_temp2_fu_52[15]_i_3_n_0\,
      DI(1) => \theta_temp2_fu_52[15]_i_4_n_0\,
      DI(0) => \theta_temp2_fu_52[15]_i_5_n_0\,
      O(3 downto 0) => \theta_temp2_fu_52_reg[20]\(15 downto 12),
      S(3 downto 0) => \theta_temp2_fu_52_reg[15]\(3 downto 0)
    );
\theta_temp2_fu_52_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \theta_temp2_fu_52_reg[15]_i_1_n_0\,
      CO(3) => \theta_temp2_fu_52_reg[19]_i_1_n_0\,
      CO(2) => \theta_temp2_fu_52_reg[19]_i_1_n_1\,
      CO(1) => \theta_temp2_fu_52_reg[19]_i_1_n_2\,
      CO(0) => \theta_temp2_fu_52_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \theta_temp2_fu_52[19]_i_2_n_0\,
      DI(2) => \theta_temp2_fu_52[19]_i_3_n_0\,
      DI(1) => \theta_temp2_fu_52[19]_i_4_n_0\,
      DI(0) => \theta_temp2_fu_52[19]_i_5_n_0\,
      O(3 downto 0) => \theta_temp2_fu_52_reg[20]\(19 downto 16),
      S(3) => \theta_temp2_fu_52[19]_i_6_n_0\,
      S(2 downto 0) => \theta_temp2_fu_52_reg[19]\(2 downto 0)
    );
\theta_temp2_fu_52_reg[21]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \theta_temp2_fu_52_reg[19]_i_1_n_0\,
      CO(3 downto 1) => \NLW_theta_temp2_fu_52_reg[21]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \theta_temp2_fu_52_reg[21]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \theta_temp2_fu_52[21]_i_2_n_0\,
      O(3 downto 2) => \NLW_theta_temp2_fu_52_reg[21]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => \theta_temp2_fu_52_reg[20]\(21 downto 20),
      S(3 downto 2) => B"00",
      S(1) => \theta_temp2_fu_52[21]_i_3_n_0\,
      S(0) => \theta_temp2_fu_52[21]_i_4_n_0\
    );
\theta_temp2_fu_52_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \theta_temp2_fu_52_reg[3]_i_1_n_0\,
      CO(2) => \theta_temp2_fu_52_reg[3]_i_1_n_1\,
      CO(1) => \theta_temp2_fu_52_reg[3]_i_1_n_2\,
      CO(0) => \theta_temp2_fu_52_reg[3]_i_1_n_3\,
      CYINIT => \theta_temp2_fu_52[3]_i_2_n_0\,
      DI(3) => \theta_temp2_fu_52[3]_i_3_n_0\,
      DI(2) => \theta_temp2_fu_52[3]_i_4_n_0\,
      DI(1) => \theta_temp2_fu_52[3]_i_5_n_0\,
      DI(0) => \theta_temp2_fu_52[3]_i_6_n_0\,
      O(3 downto 0) => \theta_temp2_fu_52_reg[20]\(3 downto 0),
      S(3 downto 1) => \theta_temp2_fu_52_reg[3]\(2 downto 0),
      S(0) => \theta_temp2_fu_52[3]_i_10_n_0\
    );
\theta_temp2_fu_52_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \theta_temp2_fu_52_reg[3]_i_1_n_0\,
      CO(3) => \theta_temp2_fu_52_reg[7]_i_1_n_0\,
      CO(2) => \theta_temp2_fu_52_reg[7]_i_1_n_1\,
      CO(1) => \theta_temp2_fu_52_reg[7]_i_1_n_2\,
      CO(0) => \theta_temp2_fu_52_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \theta_temp2_fu_52[7]_i_2_n_0\,
      DI(2) => \theta_temp2_fu_52[7]_i_3_n_0\,
      DI(1) => \theta_temp2_fu_52[7]_i_4_n_0\,
      DI(0) => \theta_temp2_fu_52[7]_i_5_n_0\,
      O(3 downto 0) => \theta_temp2_fu_52_reg[20]\(7 downto 4),
      S(3 downto 0) => \theta_temp2_fu_52_reg[7]\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_cordiccart2pol_0_0_cordiccart2pol_mul_22s_20ns_42_1_1 is
  port (
    tmp_product0_out : out STD_LOGIC_VECTOR ( 22 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 21 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 21 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_cordiccart2pol_0_0_cordiccart2pol_mul_22s_20ns_42_1_1 : entity is "cordiccart2pol_mul_22s_20ns_42_1_1";
end design_1_cordiccart2pol_0_0_cordiccart2pol_mul_22s_20ns_42_1_1;

architecture STRUCTURE of design_1_cordiccart2pol_0_0_cordiccart2pol_mul_22s_20ns_42_1_1 is
  signal \tmp_1_reg_244[0]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_1_reg_244[0]_i_3_n_0\ : STD_LOGIC;
  signal \tmp_1_reg_244[0]_i_4_n_0\ : STD_LOGIC;
  signal \tmp_1_reg_244_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \tmp_1_reg_244_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \tmp_1_reg_244_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \tmp_1_reg_244_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \tmp_1_reg_244_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal tmp_product_n_100 : STD_LOGIC;
  signal tmp_product_n_101 : STD_LOGIC;
  signal tmp_product_n_102 : STD_LOGIC;
  signal tmp_product_n_103 : STD_LOGIC;
  signal tmp_product_n_104 : STD_LOGIC;
  signal tmp_product_n_105 : STD_LOGIC;
  signal tmp_product_n_58 : STD_LOGIC;
  signal tmp_product_n_59 : STD_LOGIC;
  signal tmp_product_n_60 : STD_LOGIC;
  signal tmp_product_n_61 : STD_LOGIC;
  signal tmp_product_n_62 : STD_LOGIC;
  signal tmp_product_n_63 : STD_LOGIC;
  signal tmp_product_n_64 : STD_LOGIC;
  signal tmp_product_n_65 : STD_LOGIC;
  signal tmp_product_n_66 : STD_LOGIC;
  signal tmp_product_n_67 : STD_LOGIC;
  signal tmp_product_n_68 : STD_LOGIC;
  signal tmp_product_n_69 : STD_LOGIC;
  signal tmp_product_n_70 : STD_LOGIC;
  signal tmp_product_n_71 : STD_LOGIC;
  signal tmp_product_n_72 : STD_LOGIC;
  signal tmp_product_n_73 : STD_LOGIC;
  signal tmp_product_n_74 : STD_LOGIC;
  signal tmp_product_n_75 : STD_LOGIC;
  signal tmp_product_n_76 : STD_LOGIC;
  signal tmp_product_n_77 : STD_LOGIC;
  signal tmp_product_n_78 : STD_LOGIC;
  signal tmp_product_n_79 : STD_LOGIC;
  signal tmp_product_n_80 : STD_LOGIC;
  signal tmp_product_n_81 : STD_LOGIC;
  signal tmp_product_n_82 : STD_LOGIC;
  signal tmp_product_n_83 : STD_LOGIC;
  signal tmp_product_n_84 : STD_LOGIC;
  signal tmp_product_n_85 : STD_LOGIC;
  signal tmp_product_n_86 : STD_LOGIC;
  signal tmp_product_n_87 : STD_LOGIC;
  signal tmp_product_n_88 : STD_LOGIC;
  signal tmp_product_n_89 : STD_LOGIC;
  signal tmp_product_n_90 : STD_LOGIC;
  signal tmp_product_n_91 : STD_LOGIC;
  signal tmp_product_n_92 : STD_LOGIC;
  signal tmp_product_n_93 : STD_LOGIC;
  signal tmp_product_n_94 : STD_LOGIC;
  signal tmp_product_n_95 : STD_LOGIC;
  signal tmp_product_n_96 : STD_LOGIC;
  signal tmp_product_n_97 : STD_LOGIC;
  signal tmp_product_n_98 : STD_LOGIC;
  signal tmp_product_n_99 : STD_LOGIC;
  signal \trunc_ln1_reg_239[13]_i_2_n_0\ : STD_LOGIC;
  signal \trunc_ln1_reg_239[13]_i_3_n_0\ : STD_LOGIC;
  signal \trunc_ln1_reg_239[13]_i_4_n_0\ : STD_LOGIC;
  signal \trunc_ln1_reg_239[13]_i_5_n_0\ : STD_LOGIC;
  signal \trunc_ln1_reg_239[17]_i_2_n_0\ : STD_LOGIC;
  signal \trunc_ln1_reg_239[17]_i_3_n_0\ : STD_LOGIC;
  signal \trunc_ln1_reg_239[17]_i_4_n_0\ : STD_LOGIC;
  signal \trunc_ln1_reg_239[17]_i_5_n_0\ : STD_LOGIC;
  signal \trunc_ln1_reg_239[21]_i_2_n_0\ : STD_LOGIC;
  signal \trunc_ln1_reg_239[21]_i_3_n_0\ : STD_LOGIC;
  signal \trunc_ln1_reg_239[21]_i_4_n_0\ : STD_LOGIC;
  signal \trunc_ln1_reg_239[21]_i_5_n_0\ : STD_LOGIC;
  signal \trunc_ln1_reg_239[5]_i_2_n_0\ : STD_LOGIC;
  signal \trunc_ln1_reg_239[5]_i_3_n_0\ : STD_LOGIC;
  signal \trunc_ln1_reg_239[5]_i_4_n_0\ : STD_LOGIC;
  signal \trunc_ln1_reg_239[5]_i_5_n_0\ : STD_LOGIC;
  signal \trunc_ln1_reg_239[9]_i_2_n_0\ : STD_LOGIC;
  signal \trunc_ln1_reg_239[9]_i_3_n_0\ : STD_LOGIC;
  signal \trunc_ln1_reg_239[9]_i_4_n_0\ : STD_LOGIC;
  signal \trunc_ln1_reg_239[9]_i_5_n_0\ : STD_LOGIC;
  signal \trunc_ln1_reg_239_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \trunc_ln1_reg_239_reg[13]_i_1_n_1\ : STD_LOGIC;
  signal \trunc_ln1_reg_239_reg[13]_i_1_n_2\ : STD_LOGIC;
  signal \trunc_ln1_reg_239_reg[13]_i_1_n_3\ : STD_LOGIC;
  signal \trunc_ln1_reg_239_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \trunc_ln1_reg_239_reg[17]_i_1_n_1\ : STD_LOGIC;
  signal \trunc_ln1_reg_239_reg[17]_i_1_n_2\ : STD_LOGIC;
  signal \trunc_ln1_reg_239_reg[17]_i_1_n_3\ : STD_LOGIC;
  signal \trunc_ln1_reg_239_reg[21]_i_1_n_1\ : STD_LOGIC;
  signal \trunc_ln1_reg_239_reg[21]_i_1_n_2\ : STD_LOGIC;
  signal \trunc_ln1_reg_239_reg[21]_i_1_n_3\ : STD_LOGIC;
  signal \trunc_ln1_reg_239_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \trunc_ln1_reg_239_reg[5]_i_1_n_1\ : STD_LOGIC;
  signal \trunc_ln1_reg_239_reg[5]_i_1_n_2\ : STD_LOGIC;
  signal \trunc_ln1_reg_239_reg[5]_i_1_n_3\ : STD_LOGIC;
  signal \trunc_ln1_reg_239_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \trunc_ln1_reg_239_reg[9]_i_1_n_1\ : STD_LOGIC;
  signal \trunc_ln1_reg_239_reg[9]_i_1_n_2\ : STD_LOGIC;
  signal \trunc_ln1_reg_239_reg[9]_i_1_n_3\ : STD_LOGIC;
  signal NLW_tmp_product_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_tmp_product_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_tmp_product_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_tmp_product_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_trunc_ln1_reg_239_reg[21]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \tmp_1_reg_244_reg[0]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of tmp_product : label is "{SYNTH-11 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \trunc_ln1_reg_239_reg[13]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \trunc_ln1_reg_239_reg[17]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \trunc_ln1_reg_239_reg[21]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \trunc_ln1_reg_239_reg[5]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \trunc_ln1_reg_239_reg[9]_i_1\ : label is 35;
begin
\tmp_1_reg_244[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_product_n_85,
      I1 => Q(2),
      O => \tmp_1_reg_244[0]_i_2_n_0\
    );
\tmp_1_reg_244[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_product_n_86,
      I1 => Q(1),
      O => \tmp_1_reg_244[0]_i_3_n_0\
    );
\tmp_1_reg_244[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_product_n_87,
      I1 => Q(0),
      O => \tmp_1_reg_244[0]_i_4_n_0\
    );
\tmp_1_reg_244_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \tmp_1_reg_244_reg[0]_i_1_n_0\,
      CO(2) => \tmp_1_reg_244_reg[0]_i_1_n_1\,
      CO(1) => \tmp_1_reg_244_reg[0]_i_1_n_2\,
      CO(0) => \tmp_1_reg_244_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => tmp_product_n_85,
      DI(2) => tmp_product_n_86,
      DI(1) => tmp_product_n_87,
      DI(0) => '0',
      O(3 downto 1) => tmp_product0_out(2 downto 0),
      O(0) => \tmp_1_reg_244_reg[0]_i_1_n_7\,
      S(3) => \tmp_1_reg_244[0]_i_2_n_0\,
      S(2) => \tmp_1_reg_244[0]_i_3_n_0\,
      S(1) => \tmp_1_reg_244[0]_i_4_n_0\,
      S(0) => tmp_product_n_88
    );
tmp_product: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => D(21),
      A(28) => D(21),
      A(27) => D(21),
      A(26) => D(21),
      A(25) => D(21),
      A(24) => D(21),
      A(23) => D(21),
      A(22) => D(21),
      A(21 downto 0) => D(21 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_tmp_product_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"001101101110100111",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_tmp_product_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_tmp_product_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_tmp_product_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => E(0),
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_tmp_product_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_tmp_product_OVERFLOW_UNCONNECTED,
      P(47) => tmp_product_n_58,
      P(46) => tmp_product_n_59,
      P(45) => tmp_product_n_60,
      P(44) => tmp_product_n_61,
      P(43) => tmp_product_n_62,
      P(42) => tmp_product_n_63,
      P(41) => tmp_product_n_64,
      P(40) => tmp_product_n_65,
      P(39) => tmp_product_n_66,
      P(38) => tmp_product_n_67,
      P(37) => tmp_product_n_68,
      P(36) => tmp_product_n_69,
      P(35) => tmp_product_n_70,
      P(34) => tmp_product_n_71,
      P(33) => tmp_product_n_72,
      P(32) => tmp_product_n_73,
      P(31) => tmp_product_n_74,
      P(30) => tmp_product_n_75,
      P(29) => tmp_product_n_76,
      P(28) => tmp_product_n_77,
      P(27) => tmp_product_n_78,
      P(26) => tmp_product_n_79,
      P(25) => tmp_product_n_80,
      P(24) => tmp_product_n_81,
      P(23) => tmp_product_n_82,
      P(22) => tmp_product_n_83,
      P(21) => tmp_product_n_84,
      P(20) => tmp_product_n_85,
      P(19) => tmp_product_n_86,
      P(18) => tmp_product_n_87,
      P(17) => tmp_product_n_88,
      P(16) => tmp_product_n_89,
      P(15) => tmp_product_n_90,
      P(14) => tmp_product_n_91,
      P(13) => tmp_product_n_92,
      P(12) => tmp_product_n_93,
      P(11) => tmp_product_n_94,
      P(10) => tmp_product_n_95,
      P(9) => tmp_product_n_96,
      P(8) => tmp_product_n_97,
      P(7) => tmp_product_n_98,
      P(6) => tmp_product_n_99,
      P(5) => tmp_product_n_100,
      P(4) => tmp_product_n_101,
      P(3) => tmp_product_n_102,
      P(2) => tmp_product_n_103,
      P(1) => tmp_product_n_104,
      P(0) => tmp_product_n_105,
      PATTERNBDETECT => NLW_tmp_product_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_tmp_product_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_tmp_product_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_tmp_product_UNDERFLOW_UNCONNECTED
    );
\trunc_ln1_reg_239[13]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_product_n_73,
      I1 => Q(14),
      O => \trunc_ln1_reg_239[13]_i_2_n_0\
    );
\trunc_ln1_reg_239[13]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_product_n_74,
      I1 => Q(13),
      O => \trunc_ln1_reg_239[13]_i_3_n_0\
    );
\trunc_ln1_reg_239[13]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_product_n_75,
      I1 => Q(12),
      O => \trunc_ln1_reg_239[13]_i_4_n_0\
    );
\trunc_ln1_reg_239[13]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_product_n_76,
      I1 => Q(11),
      O => \trunc_ln1_reg_239[13]_i_5_n_0\
    );
\trunc_ln1_reg_239[17]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_product_n_69,
      I1 => Q(18),
      O => \trunc_ln1_reg_239[17]_i_2_n_0\
    );
\trunc_ln1_reg_239[17]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_product_n_70,
      I1 => Q(17),
      O => \trunc_ln1_reg_239[17]_i_3_n_0\
    );
\trunc_ln1_reg_239[17]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_product_n_71,
      I1 => Q(16),
      O => \trunc_ln1_reg_239[17]_i_4_n_0\
    );
\trunc_ln1_reg_239[17]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_product_n_72,
      I1 => Q(15),
      O => \trunc_ln1_reg_239[17]_i_5_n_0\
    );
\trunc_ln1_reg_239[21]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_product_n_65,
      I1 => Q(21),
      O => \trunc_ln1_reg_239[21]_i_2_n_0\
    );
\trunc_ln1_reg_239[21]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_product_n_66,
      I1 => Q(21),
      O => \trunc_ln1_reg_239[21]_i_3_n_0\
    );
\trunc_ln1_reg_239[21]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_product_n_67,
      I1 => Q(20),
      O => \trunc_ln1_reg_239[21]_i_4_n_0\
    );
\trunc_ln1_reg_239[21]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_product_n_68,
      I1 => Q(19),
      O => \trunc_ln1_reg_239[21]_i_5_n_0\
    );
\trunc_ln1_reg_239[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_product_n_81,
      I1 => Q(6),
      O => \trunc_ln1_reg_239[5]_i_2_n_0\
    );
\trunc_ln1_reg_239[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_product_n_82,
      I1 => Q(5),
      O => \trunc_ln1_reg_239[5]_i_3_n_0\
    );
\trunc_ln1_reg_239[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_product_n_83,
      I1 => Q(4),
      O => \trunc_ln1_reg_239[5]_i_4_n_0\
    );
\trunc_ln1_reg_239[5]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_product_n_84,
      I1 => Q(3),
      O => \trunc_ln1_reg_239[5]_i_5_n_0\
    );
\trunc_ln1_reg_239[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_product_n_77,
      I1 => Q(10),
      O => \trunc_ln1_reg_239[9]_i_2_n_0\
    );
\trunc_ln1_reg_239[9]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_product_n_78,
      I1 => Q(9),
      O => \trunc_ln1_reg_239[9]_i_3_n_0\
    );
\trunc_ln1_reg_239[9]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_product_n_79,
      I1 => Q(8),
      O => \trunc_ln1_reg_239[9]_i_4_n_0\
    );
\trunc_ln1_reg_239[9]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_product_n_80,
      I1 => Q(7),
      O => \trunc_ln1_reg_239[9]_i_5_n_0\
    );
\trunc_ln1_reg_239_reg[13]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \trunc_ln1_reg_239_reg[9]_i_1_n_0\,
      CO(3) => \trunc_ln1_reg_239_reg[13]_i_1_n_0\,
      CO(2) => \trunc_ln1_reg_239_reg[13]_i_1_n_1\,
      CO(1) => \trunc_ln1_reg_239_reg[13]_i_1_n_2\,
      CO(0) => \trunc_ln1_reg_239_reg[13]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => tmp_product_n_73,
      DI(2) => tmp_product_n_74,
      DI(1) => tmp_product_n_75,
      DI(0) => tmp_product_n_76,
      O(3 downto 0) => tmp_product0_out(14 downto 11),
      S(3) => \trunc_ln1_reg_239[13]_i_2_n_0\,
      S(2) => \trunc_ln1_reg_239[13]_i_3_n_0\,
      S(1) => \trunc_ln1_reg_239[13]_i_4_n_0\,
      S(0) => \trunc_ln1_reg_239[13]_i_5_n_0\
    );
\trunc_ln1_reg_239_reg[17]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \trunc_ln1_reg_239_reg[13]_i_1_n_0\,
      CO(3) => \trunc_ln1_reg_239_reg[17]_i_1_n_0\,
      CO(2) => \trunc_ln1_reg_239_reg[17]_i_1_n_1\,
      CO(1) => \trunc_ln1_reg_239_reg[17]_i_1_n_2\,
      CO(0) => \trunc_ln1_reg_239_reg[17]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => tmp_product_n_69,
      DI(2) => tmp_product_n_70,
      DI(1) => tmp_product_n_71,
      DI(0) => tmp_product_n_72,
      O(3 downto 0) => tmp_product0_out(18 downto 15),
      S(3) => \trunc_ln1_reg_239[17]_i_2_n_0\,
      S(2) => \trunc_ln1_reg_239[17]_i_3_n_0\,
      S(1) => \trunc_ln1_reg_239[17]_i_4_n_0\,
      S(0) => \trunc_ln1_reg_239[17]_i_5_n_0\
    );
\trunc_ln1_reg_239_reg[21]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \trunc_ln1_reg_239_reg[17]_i_1_n_0\,
      CO(3) => \NLW_trunc_ln1_reg_239_reg[21]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \trunc_ln1_reg_239_reg[21]_i_1_n_1\,
      CO(1) => \trunc_ln1_reg_239_reg[21]_i_1_n_2\,
      CO(0) => \trunc_ln1_reg_239_reg[21]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => tmp_product_n_66,
      DI(1) => tmp_product_n_67,
      DI(0) => tmp_product_n_68,
      O(3 downto 0) => tmp_product0_out(22 downto 19),
      S(3) => \trunc_ln1_reg_239[21]_i_2_n_0\,
      S(2) => \trunc_ln1_reg_239[21]_i_3_n_0\,
      S(1) => \trunc_ln1_reg_239[21]_i_4_n_0\,
      S(0) => \trunc_ln1_reg_239[21]_i_5_n_0\
    );
\trunc_ln1_reg_239_reg[5]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_1_reg_244_reg[0]_i_1_n_0\,
      CO(3) => \trunc_ln1_reg_239_reg[5]_i_1_n_0\,
      CO(2) => \trunc_ln1_reg_239_reg[5]_i_1_n_1\,
      CO(1) => \trunc_ln1_reg_239_reg[5]_i_1_n_2\,
      CO(0) => \trunc_ln1_reg_239_reg[5]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => tmp_product_n_81,
      DI(2) => tmp_product_n_82,
      DI(1) => tmp_product_n_83,
      DI(0) => tmp_product_n_84,
      O(3 downto 0) => tmp_product0_out(6 downto 3),
      S(3) => \trunc_ln1_reg_239[5]_i_2_n_0\,
      S(2) => \trunc_ln1_reg_239[5]_i_3_n_0\,
      S(1) => \trunc_ln1_reg_239[5]_i_4_n_0\,
      S(0) => \trunc_ln1_reg_239[5]_i_5_n_0\
    );
\trunc_ln1_reg_239_reg[9]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \trunc_ln1_reg_239_reg[5]_i_1_n_0\,
      CO(3) => \trunc_ln1_reg_239_reg[9]_i_1_n_0\,
      CO(2) => \trunc_ln1_reg_239_reg[9]_i_1_n_1\,
      CO(1) => \trunc_ln1_reg_239_reg[9]_i_1_n_2\,
      CO(0) => \trunc_ln1_reg_239_reg[9]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => tmp_product_n_77,
      DI(2) => tmp_product_n_78,
      DI(1) => tmp_product_n_79,
      DI(0) => tmp_product_n_80,
      O(3 downto 0) => tmp_product0_out(10 downto 7),
      S(3) => \trunc_ln1_reg_239[9]_i_2_n_0\,
      S(2) => \trunc_ln1_reg_239[9]_i_3_n_0\,
      S(1) => \trunc_ln1_reg_239[9]_i_4_n_0\,
      S(0) => \trunc_ln1_reg_239[9]_i_5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_cordiccart2pol_0_0_cordiccart2pol_cordiccart2pol_Pipeline_VITIS_LOOP_80_1 is
  port (
    D : out STD_LOGIC_VECTOR ( 21 downto 0 );
    \theta_temp2_fu_52_reg[19]_0\ : out STD_LOGIC_VECTOR ( 21 downto 0 );
    grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_ready : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_NS_fsm1 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg : in STD_LOGIC;
    \current_cos_34_fu_56_reg[21]_0\ : in STD_LOGIC_VECTOR ( 21 downto 0 );
    \current_sin_36_fu_60_reg[21]_0\ : in STD_LOGIC_VECTOR ( 21 downto 0 );
    select_ln75_reg_224 : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_cordiccart2pol_0_0_cordiccart2pol_cordiccart2pol_Pipeline_VITIS_LOOP_80_1 : entity is "cordiccart2pol_cordiccart2pol_Pipeline_VITIS_LOOP_80_1";
end design_1_cordiccart2pol_0_0_cordiccart2pol_cordiccart2pol_Pipeline_VITIS_LOOP_80_1;

architecture STRUCTURE of design_1_cordiccart2pol_0_0_cordiccart2pol_cordiccart2pol_Pipeline_VITIS_LOOP_80_1 is
  signal \^d\ : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \_inferred__1/i__carry__0_n_0\ : STD_LOGIC;
  signal \_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \_inferred__1/i__carry__1_n_0\ : STD_LOGIC;
  signal \_inferred__1/i__carry__1_n_1\ : STD_LOGIC;
  signal \_inferred__1/i__carry__1_n_2\ : STD_LOGIC;
  signal \_inferred__1/i__carry__1_n_3\ : STD_LOGIC;
  signal \_inferred__1/i__carry__2_n_0\ : STD_LOGIC;
  signal \_inferred__1/i__carry__2_n_1\ : STD_LOGIC;
  signal \_inferred__1/i__carry__2_n_2\ : STD_LOGIC;
  signal \_inferred__1/i__carry__2_n_3\ : STD_LOGIC;
  signal \_inferred__1/i__carry__3_n_0\ : STD_LOGIC;
  signal \_inferred__1/i__carry__3_n_1\ : STD_LOGIC;
  signal \_inferred__1/i__carry__3_n_2\ : STD_LOGIC;
  signal \_inferred__1/i__carry__3_n_3\ : STD_LOGIC;
  signal \_inferred__1/i__carry__4_n_3\ : STD_LOGIC;
  signal \_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal angles_U_n_0 : STD_LOGIC;
  signal angles_U_n_1 : STD_LOGIC;
  signal angles_U_n_10 : STD_LOGIC;
  signal angles_U_n_11 : STD_LOGIC;
  signal angles_U_n_12 : STD_LOGIC;
  signal angles_U_n_13 : STD_LOGIC;
  signal angles_U_n_14 : STD_LOGIC;
  signal angles_U_n_15 : STD_LOGIC;
  signal angles_U_n_16 : STD_LOGIC;
  signal angles_U_n_17 : STD_LOGIC;
  signal angles_U_n_18 : STD_LOGIC;
  signal angles_U_n_19 : STD_LOGIC;
  signal angles_U_n_2 : STD_LOGIC;
  signal angles_U_n_20 : STD_LOGIC;
  signal angles_U_n_21 : STD_LOGIC;
  signal angles_U_n_22 : STD_LOGIC;
  signal angles_U_n_23 : STD_LOGIC;
  signal angles_U_n_24 : STD_LOGIC;
  signal angles_U_n_25 : STD_LOGIC;
  signal angles_U_n_26 : STD_LOGIC;
  signal angles_U_n_27 : STD_LOGIC;
  signal angles_U_n_28 : STD_LOGIC;
  signal angles_U_n_29 : STD_LOGIC;
  signal angles_U_n_3 : STD_LOGIC;
  signal angles_U_n_30 : STD_LOGIC;
  signal angles_U_n_31 : STD_LOGIC;
  signal angles_U_n_32 : STD_LOGIC;
  signal angles_U_n_33 : STD_LOGIC;
  signal angles_U_n_34 : STD_LOGIC;
  signal angles_U_n_35 : STD_LOGIC;
  signal angles_U_n_36 : STD_LOGIC;
  signal angles_U_n_37 : STD_LOGIC;
  signal angles_U_n_4 : STD_LOGIC;
  signal angles_U_n_5 : STD_LOGIC;
  signal angles_U_n_6 : STD_LOGIC;
  signal angles_U_n_7 : STD_LOGIC;
  signal angles_U_n_8 : STD_LOGIC;
  signal angles_U_n_9 : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ap_done_reg1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter0_reg : STD_LOGIC;
  signal ap_enable_reg_pp0_iter0_reg_i_1_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_i_1_n_0 : STD_LOGIC;
  signal ap_loop_init_int : STD_LOGIC;
  signal cos_shift_fu_151_p2 : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal cos_shift_reg_305 : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \cos_shift_reg_305[0]_i_2_n_0\ : STD_LOGIC;
  signal \cos_shift_reg_305[10]_i_2_n_0\ : STD_LOGIC;
  signal \cos_shift_reg_305[11]_i_2_n_0\ : STD_LOGIC;
  signal \cos_shift_reg_305[12]_i_2_n_0\ : STD_LOGIC;
  signal \cos_shift_reg_305[13]_i_2_n_0\ : STD_LOGIC;
  signal \cos_shift_reg_305[13]_i_3_n_0\ : STD_LOGIC;
  signal \cos_shift_reg_305[14]_i_2_n_0\ : STD_LOGIC;
  signal \cos_shift_reg_305[14]_i_3_n_0\ : STD_LOGIC;
  signal \cos_shift_reg_305[15]_i_2_n_0\ : STD_LOGIC;
  signal \cos_shift_reg_305[16]_i_2_n_0\ : STD_LOGIC;
  signal \cos_shift_reg_305[17]_i_2_n_0\ : STD_LOGIC;
  signal \cos_shift_reg_305[18]_i_2_n_0\ : STD_LOGIC;
  signal \cos_shift_reg_305[19]_i_2_n_0\ : STD_LOGIC;
  signal \cos_shift_reg_305[19]_i_3_n_0\ : STD_LOGIC;
  signal \cos_shift_reg_305[1]_i_2_n_0\ : STD_LOGIC;
  signal \cos_shift_reg_305[2]_i_2_n_0\ : STD_LOGIC;
  signal \cos_shift_reg_305[3]_i_2_n_0\ : STD_LOGIC;
  signal \cos_shift_reg_305[4]_i_2_n_0\ : STD_LOGIC;
  signal \cos_shift_reg_305[5]_i_2_n_0\ : STD_LOGIC;
  signal \cos_shift_reg_305[6]_i_2_n_0\ : STD_LOGIC;
  signal \cos_shift_reg_305[7]_i_2_n_0\ : STD_LOGIC;
  signal \cos_shift_reg_305[8]_i_2_n_0\ : STD_LOGIC;
  signal \cos_shift_reg_305[9]_i_2_n_0\ : STD_LOGIC;
  signal current_cos_34_fu_56 : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \current_cos_34_fu_560_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \current_cos_34_fu_560_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \current_cos_34_fu_560_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \current_cos_34_fu_560_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \current_cos_34_fu_560_carry__0_n_0\ : STD_LOGIC;
  signal \current_cos_34_fu_560_carry__0_n_1\ : STD_LOGIC;
  signal \current_cos_34_fu_560_carry__0_n_2\ : STD_LOGIC;
  signal \current_cos_34_fu_560_carry__0_n_3\ : STD_LOGIC;
  signal \current_cos_34_fu_560_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \current_cos_34_fu_560_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \current_cos_34_fu_560_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \current_cos_34_fu_560_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \current_cos_34_fu_560_carry__1_n_0\ : STD_LOGIC;
  signal \current_cos_34_fu_560_carry__1_n_1\ : STD_LOGIC;
  signal \current_cos_34_fu_560_carry__1_n_2\ : STD_LOGIC;
  signal \current_cos_34_fu_560_carry__1_n_3\ : STD_LOGIC;
  signal \current_cos_34_fu_560_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \current_cos_34_fu_560_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \current_cos_34_fu_560_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \current_cos_34_fu_560_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \current_cos_34_fu_560_carry__2_n_0\ : STD_LOGIC;
  signal \current_cos_34_fu_560_carry__2_n_1\ : STD_LOGIC;
  signal \current_cos_34_fu_560_carry__2_n_2\ : STD_LOGIC;
  signal \current_cos_34_fu_560_carry__2_n_3\ : STD_LOGIC;
  signal \current_cos_34_fu_560_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \current_cos_34_fu_560_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \current_cos_34_fu_560_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \current_cos_34_fu_560_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \current_cos_34_fu_560_carry__3_n_0\ : STD_LOGIC;
  signal \current_cos_34_fu_560_carry__3_n_1\ : STD_LOGIC;
  signal \current_cos_34_fu_560_carry__3_n_2\ : STD_LOGIC;
  signal \current_cos_34_fu_560_carry__3_n_3\ : STD_LOGIC;
  signal \current_cos_34_fu_560_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \current_cos_34_fu_560_carry__4_n_3\ : STD_LOGIC;
  signal current_cos_34_fu_560_carry_i_1_n_0 : STD_LOGIC;
  signal current_cos_34_fu_560_carry_i_2_n_0 : STD_LOGIC;
  signal current_cos_34_fu_560_carry_i_3_n_0 : STD_LOGIC;
  signal current_cos_34_fu_560_carry_i_4_n_0 : STD_LOGIC;
  signal current_cos_34_fu_560_carry_n_0 : STD_LOGIC;
  signal current_cos_34_fu_560_carry_n_1 : STD_LOGIC;
  signal current_cos_34_fu_560_carry_n_2 : STD_LOGIC;
  signal current_cos_34_fu_560_carry_n_3 : STD_LOGIC;
  signal current_cos_34_fu_56_0 : STD_LOGIC;
  signal current_cos_34_load_reg_293 : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \current_sin_36_fu_600_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__0_n_0\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__0_n_1\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__0_n_2\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__0_n_3\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__0_n_4\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__0_n_5\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__0_n_6\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__0_n_7\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__1_n_0\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__1_n_1\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__1_n_2\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__1_n_3\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__1_n_4\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__1_n_5\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__1_n_6\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__1_n_7\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__2_n_0\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__2_n_1\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__2_n_2\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__2_n_3\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__2_n_4\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__2_n_5\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__2_n_6\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__2_n_7\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__3_n_0\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__3_n_1\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__3_n_2\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__3_n_3\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__3_n_4\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__3_n_5\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__3_n_6\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__3_n_7\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__4_n_3\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__4_n_6\ : STD_LOGIC;
  signal \current_sin_36_fu_600_carry__4_n_7\ : STD_LOGIC;
  signal current_sin_36_fu_600_carry_i_1_n_0 : STD_LOGIC;
  signal current_sin_36_fu_600_carry_i_2_n_0 : STD_LOGIC;
  signal current_sin_36_fu_600_carry_i_3_n_0 : STD_LOGIC;
  signal current_sin_36_fu_600_carry_i_4_n_0 : STD_LOGIC;
  signal current_sin_36_fu_600_carry_i_5_n_0 : STD_LOGIC;
  signal current_sin_36_fu_600_carry_n_0 : STD_LOGIC;
  signal current_sin_36_fu_600_carry_n_1 : STD_LOGIC;
  signal current_sin_36_fu_600_carry_n_2 : STD_LOGIC;
  signal current_sin_36_fu_600_carry_n_3 : STD_LOGIC;
  signal current_sin_36_fu_600_carry_n_4 : STD_LOGIC;
  signal current_sin_36_fu_600_carry_n_5 : STD_LOGIC;
  signal current_sin_36_fu_600_carry_n_6 : STD_LOGIC;
  signal current_sin_36_fu_600_carry_n_7 : STD_LOGIC;
  signal \current_sin_36_fu_60_reg_n_0_[0]\ : STD_LOGIC;
  signal \current_sin_36_fu_60_reg_n_0_[10]\ : STD_LOGIC;
  signal \current_sin_36_fu_60_reg_n_0_[11]\ : STD_LOGIC;
  signal \current_sin_36_fu_60_reg_n_0_[12]\ : STD_LOGIC;
  signal \current_sin_36_fu_60_reg_n_0_[13]\ : STD_LOGIC;
  signal \current_sin_36_fu_60_reg_n_0_[14]\ : STD_LOGIC;
  signal \current_sin_36_fu_60_reg_n_0_[15]\ : STD_LOGIC;
  signal \current_sin_36_fu_60_reg_n_0_[16]\ : STD_LOGIC;
  signal \current_sin_36_fu_60_reg_n_0_[17]\ : STD_LOGIC;
  signal \current_sin_36_fu_60_reg_n_0_[18]\ : STD_LOGIC;
  signal \current_sin_36_fu_60_reg_n_0_[19]\ : STD_LOGIC;
  signal \current_sin_36_fu_60_reg_n_0_[1]\ : STD_LOGIC;
  signal \current_sin_36_fu_60_reg_n_0_[20]\ : STD_LOGIC;
  signal \current_sin_36_fu_60_reg_n_0_[2]\ : STD_LOGIC;
  signal \current_sin_36_fu_60_reg_n_0_[3]\ : STD_LOGIC;
  signal \current_sin_36_fu_60_reg_n_0_[4]\ : STD_LOGIC;
  signal \current_sin_36_fu_60_reg_n_0_[5]\ : STD_LOGIC;
  signal \current_sin_36_fu_60_reg_n_0_[6]\ : STD_LOGIC;
  signal \current_sin_36_fu_60_reg_n_0_[7]\ : STD_LOGIC;
  signal \current_sin_36_fu_60_reg_n_0_[8]\ : STD_LOGIC;
  signal \current_sin_36_fu_60_reg_n_0_[9]\ : STD_LOGIC;
  signal current_sin_36_load_reg_299 : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal flow_control_loop_pipe_sequential_init_U_n_10 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_11 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_12 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_13 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_14 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_15 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_16 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_17 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_18 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_19 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_20 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_21 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_22 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_23 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_24 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_25 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_26 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_27 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_28 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_29 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_30 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_31 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_32 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_33 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_34 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_35 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_36 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_37 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_38 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_39 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_40 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_41 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_42 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_43 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_44 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_45 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_46 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_47 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_48 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_49 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_5 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_50 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_51 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_52 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_53 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_54 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_55 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_56 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_57 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_58 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_59 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_6 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_60 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_61 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_62 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_63 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_64 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_65 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_66 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_67 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_68 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_69 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_7 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_70 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_71 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_8 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_9 : STD_LOGIC;
  signal \^grp_cordiccart2pol_pipeline_vitis_loop_80_1_fu_104_ap_ready\ : STD_LOGIC;
  signal i1_fu_48 : STD_LOGIC;
  signal \i1_fu_48_reg_n_0_[0]\ : STD_LOGIC;
  signal \i1_fu_48_reg_n_0_[1]\ : STD_LOGIC;
  signal \i1_fu_48_reg_n_0_[2]\ : STD_LOGIC;
  signal \i1_fu_48_reg_n_0_[3]\ : STD_LOGIC;
  signal i1_load_reg_287 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \i__carry__3_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal i_fu_229_p2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal sin_shift_fu_157_p2 : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal sin_shift_reg_311 : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \sin_shift_reg_311[0]_i_2_n_0\ : STD_LOGIC;
  signal \sin_shift_reg_311[10]_i_2_n_0\ : STD_LOGIC;
  signal \sin_shift_reg_311[11]_i_2_n_0\ : STD_LOGIC;
  signal \sin_shift_reg_311[12]_i_2_n_0\ : STD_LOGIC;
  signal \sin_shift_reg_311[13]_i_2_n_0\ : STD_LOGIC;
  signal \sin_shift_reg_311[13]_i_3_n_0\ : STD_LOGIC;
  signal \sin_shift_reg_311[14]_i_2_n_0\ : STD_LOGIC;
  signal \sin_shift_reg_311[14]_i_3_n_0\ : STD_LOGIC;
  signal \sin_shift_reg_311[15]_i_2_n_0\ : STD_LOGIC;
  signal \sin_shift_reg_311[16]_i_2_n_0\ : STD_LOGIC;
  signal \sin_shift_reg_311[17]_i_2_n_0\ : STD_LOGIC;
  signal \sin_shift_reg_311[18]_i_2_n_0\ : STD_LOGIC;
  signal \sin_shift_reg_311[19]_i_2_n_0\ : STD_LOGIC;
  signal \sin_shift_reg_311[19]_i_3_n_0\ : STD_LOGIC;
  signal \sin_shift_reg_311[1]_i_2_n_0\ : STD_LOGIC;
  signal \sin_shift_reg_311[2]_i_2_n_0\ : STD_LOGIC;
  signal \sin_shift_reg_311[3]_i_2_n_0\ : STD_LOGIC;
  signal \sin_shift_reg_311[4]_i_2_n_0\ : STD_LOGIC;
  signal \sin_shift_reg_311[5]_i_2_n_0\ : STD_LOGIC;
  signal \sin_shift_reg_311[6]_i_2_n_0\ : STD_LOGIC;
  signal \sin_shift_reg_311[7]_i_2_n_0\ : STD_LOGIC;
  signal \sin_shift_reg_311[8]_i_2_n_0\ : STD_LOGIC;
  signal \sin_shift_reg_311[9]_i_2_n_0\ : STD_LOGIC;
  signal \theta_temp2_fu_52_reg_n_0_[0]\ : STD_LOGIC;
  signal \theta_temp2_fu_52_reg_n_0_[10]\ : STD_LOGIC;
  signal \theta_temp2_fu_52_reg_n_0_[11]\ : STD_LOGIC;
  signal \theta_temp2_fu_52_reg_n_0_[12]\ : STD_LOGIC;
  signal \theta_temp2_fu_52_reg_n_0_[13]\ : STD_LOGIC;
  signal \theta_temp2_fu_52_reg_n_0_[14]\ : STD_LOGIC;
  signal \theta_temp2_fu_52_reg_n_0_[15]\ : STD_LOGIC;
  signal \theta_temp2_fu_52_reg_n_0_[16]\ : STD_LOGIC;
  signal \theta_temp2_fu_52_reg_n_0_[17]\ : STD_LOGIC;
  signal \theta_temp2_fu_52_reg_n_0_[18]\ : STD_LOGIC;
  signal \theta_temp2_fu_52_reg_n_0_[19]\ : STD_LOGIC;
  signal \theta_temp2_fu_52_reg_n_0_[1]\ : STD_LOGIC;
  signal \theta_temp2_fu_52_reg_n_0_[20]\ : STD_LOGIC;
  signal \theta_temp2_fu_52_reg_n_0_[21]\ : STD_LOGIC;
  signal \theta_temp2_fu_52_reg_n_0_[2]\ : STD_LOGIC;
  signal \theta_temp2_fu_52_reg_n_0_[3]\ : STD_LOGIC;
  signal \theta_temp2_fu_52_reg_n_0_[4]\ : STD_LOGIC;
  signal \theta_temp2_fu_52_reg_n_0_[5]\ : STD_LOGIC;
  signal \theta_temp2_fu_52_reg_n_0_[6]\ : STD_LOGIC;
  signal \theta_temp2_fu_52_reg_n_0_[7]\ : STD_LOGIC;
  signal \theta_temp2_fu_52_reg_n_0_[8]\ : STD_LOGIC;
  signal \theta_temp2_fu_52_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW__inferred__1/i__carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW__inferred__1/i__carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_current_cos_34_fu_560_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_current_cos_34_fu_560_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_current_sin_36_fu_600_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_current_sin_36_fu_600_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \_inferred__1/i__carry\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__1/i__carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \_inferred__1/i__carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__1/i__carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \_inferred__1/i__carry__1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__1/i__carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \_inferred__1/i__carry__2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__1/i__carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \_inferred__1/i__carry__3\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__1/i__carry__3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \_inferred__1/i__carry__4\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__1/i__carry__4\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ap_enable_reg_pp0_iter0_reg_i_1 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of ap_enable_reg_pp0_iter1_i_2 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \cos_shift_reg_305[15]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \cos_shift_reg_305[16]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \cos_shift_reg_305[17]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \cos_shift_reg_305[18]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \cos_shift_reg_305[19]_i_1\ : label is "soft_lutpair48";
  attribute ADDER_THRESHOLD of current_cos_34_fu_560_carry : label is 35;
  attribute METHODOLOGY_DRC_VIOS of current_cos_34_fu_560_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \current_cos_34_fu_560_carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \current_cos_34_fu_560_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \current_cos_34_fu_560_carry__1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \current_cos_34_fu_560_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \current_cos_34_fu_560_carry__2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \current_cos_34_fu_560_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \current_cos_34_fu_560_carry__3\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \current_cos_34_fu_560_carry__3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \current_cos_34_fu_560_carry__4\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \current_cos_34_fu_560_carry__4\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of current_sin_36_fu_600_carry : label is 35;
  attribute METHODOLOGY_DRC_VIOS of current_sin_36_fu_600_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \current_sin_36_fu_600_carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \current_sin_36_fu_600_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \current_sin_36_fu_600_carry__1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \current_sin_36_fu_600_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \current_sin_36_fu_600_carry__2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \current_sin_36_fu_600_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \current_sin_36_fu_600_carry__3\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \current_sin_36_fu_600_carry__3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \current_sin_36_fu_600_carry__4\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \current_sin_36_fu_600_carry__4\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \i1_fu_48[0]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \i1_fu_48[1]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \i1_fu_48[2]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \i1_fu_48[3]_i_3\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \sin_shift_reg_311[15]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \sin_shift_reg_311[16]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \sin_shift_reg_311[17]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \sin_shift_reg_311[18]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \sin_shift_reg_311[19]_i_1\ : label is "soft_lutpair47";
begin
  D(21 downto 0) <= \^d\(21 downto 0);
  grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_ready <= \^grp_cordiccart2pol_pipeline_vitis_loop_80_1_fu_104_ap_ready\;
\_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__1/i__carry_n_0\,
      CO(2) => \_inferred__1/i__carry_n_1\,
      CO(1) => \_inferred__1/i__carry_n_2\,
      CO(0) => \_inferred__1/i__carry_n_3\,
      CYINIT => \theta_temp2_fu_52_reg_n_0_[0]\,
      DI(3) => \theta_temp2_fu_52_reg_n_0_[3]\,
      DI(2) => \theta_temp2_fu_52_reg_n_0_[2]\,
      DI(1) => \theta_temp2_fu_52_reg_n_0_[1]\,
      DI(0) => \i__carry_i_1_n_0\,
      O(3 downto 0) => \theta_temp2_fu_52_reg[19]_0\(3 downto 0),
      S(3) => angles_U_n_0,
      S(2) => angles_U_n_1,
      S(1) => angles_U_n_2,
      S(0) => angles_U_n_3
    );
\_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__1/i__carry_n_0\,
      CO(3) => \_inferred__1/i__carry__0_n_0\,
      CO(2) => \_inferred__1/i__carry__0_n_1\,
      CO(1) => \_inferred__1/i__carry__0_n_2\,
      CO(0) => \_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \theta_temp2_fu_52_reg_n_0_[7]\,
      DI(2) => \theta_temp2_fu_52_reg_n_0_[6]\,
      DI(1) => \theta_temp2_fu_52_reg_n_0_[5]\,
      DI(0) => \theta_temp2_fu_52_reg_n_0_[4]\,
      O(3 downto 0) => \theta_temp2_fu_52_reg[19]_0\(7 downto 4),
      S(3) => angles_U_n_4,
      S(2) => angles_U_n_5,
      S(1) => angles_U_n_6,
      S(0) => angles_U_n_7
    );
\_inferred__1/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__1/i__carry__0_n_0\,
      CO(3) => \_inferred__1/i__carry__1_n_0\,
      CO(2) => \_inferred__1/i__carry__1_n_1\,
      CO(1) => \_inferred__1/i__carry__1_n_2\,
      CO(0) => \_inferred__1/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \theta_temp2_fu_52_reg_n_0_[11]\,
      DI(2) => \theta_temp2_fu_52_reg_n_0_[10]\,
      DI(1) => \theta_temp2_fu_52_reg_n_0_[9]\,
      DI(0) => \theta_temp2_fu_52_reg_n_0_[8]\,
      O(3 downto 0) => \theta_temp2_fu_52_reg[19]_0\(11 downto 8),
      S(3) => angles_U_n_8,
      S(2) => angles_U_n_9,
      S(1) => angles_U_n_10,
      S(0) => angles_U_n_11
    );
\_inferred__1/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__1/i__carry__1_n_0\,
      CO(3) => \_inferred__1/i__carry__2_n_0\,
      CO(2) => \_inferred__1/i__carry__2_n_1\,
      CO(1) => \_inferred__1/i__carry__2_n_2\,
      CO(0) => \_inferred__1/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \theta_temp2_fu_52_reg_n_0_[15]\,
      DI(2) => \theta_temp2_fu_52_reg_n_0_[14]\,
      DI(1) => \theta_temp2_fu_52_reg_n_0_[13]\,
      DI(0) => \theta_temp2_fu_52_reg_n_0_[12]\,
      O(3 downto 0) => \theta_temp2_fu_52_reg[19]_0\(15 downto 12),
      S(3) => angles_U_n_12,
      S(2) => angles_U_n_13,
      S(1) => angles_U_n_14,
      S(0) => angles_U_n_15
    );
\_inferred__1/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__1/i__carry__2_n_0\,
      CO(3) => \_inferred__1/i__carry__3_n_0\,
      CO(2) => \_inferred__1/i__carry__3_n_1\,
      CO(1) => \_inferred__1/i__carry__3_n_2\,
      CO(0) => \_inferred__1/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3) => current_sin_36_load_reg_299(21),
      DI(2) => \theta_temp2_fu_52_reg_n_0_[18]\,
      DI(1) => \theta_temp2_fu_52_reg_n_0_[17]\,
      DI(0) => \theta_temp2_fu_52_reg_n_0_[16]\,
      O(3 downto 0) => \theta_temp2_fu_52_reg[19]_0\(19 downto 16),
      S(3) => \i__carry__3_i_1_n_0\,
      S(2) => angles_U_n_16,
      S(1) => angles_U_n_17,
      S(0) => angles_U_n_18
    );
\_inferred__1/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__1/i__carry__3_n_0\,
      CO(3 downto 1) => \NLW__inferred__1/i__carry__4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \_inferred__1/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \theta_temp2_fu_52_reg_n_0_[19]\,
      O(3 downto 2) => \NLW__inferred__1/i__carry__4_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => \theta_temp2_fu_52_reg[19]_0\(21 downto 20),
      S(3 downto 2) => B"00",
      S(1) => \i__carry__4_i_1_n_0\,
      S(0) => \i__carry__4_i_2_n_0\
    );
angles_U: entity work.design_1_cordiccart2pol_0_0_cordiccart2pol_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_angles_ROM_AUTO_1R
     port map (
      Q(0) => ap_CS_fsm_pp0_stage1,
      S(3) => angles_U_n_0,
      S(2) => angles_U_n_1,
      S(1) => angles_U_n_2,
      S(0) => angles_U_n_3,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0_reg => ap_enable_reg_pp0_iter0_reg,
      ap_loop_init_int => ap_loop_init_int,
      current_sin_36_load_reg_299(0) => current_sin_36_load_reg_299(21),
      grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      \q0_reg[0]_0\ => angles_U_n_19,
      \q0_reg[11]_0\(3) => angles_U_n_8,
      \q0_reg[11]_0\(2) => angles_U_n_9,
      \q0_reg[11]_0\(1) => angles_U_n_10,
      \q0_reg[11]_0\(0) => angles_U_n_11,
      \q0_reg[15]_0\(3) => angles_U_n_12,
      \q0_reg[15]_0\(2) => angles_U_n_13,
      \q0_reg[15]_0\(1) => angles_U_n_14,
      \q0_reg[15]_0\(0) => angles_U_n_15,
      \q0_reg[18]_0\(2) => angles_U_n_16,
      \q0_reg[18]_0\(1) => angles_U_n_17,
      \q0_reg[18]_0\(0) => angles_U_n_18,
      \q0_reg[5]_0\(3) => \i1_fu_48_reg_n_0_[3]\,
      \q0_reg[5]_0\(2) => \i1_fu_48_reg_n_0_[2]\,
      \q0_reg[5]_0\(1) => \i1_fu_48_reg_n_0_[1]\,
      \q0_reg[5]_0\(0) => \i1_fu_48_reg_n_0_[0]\,
      \q0_reg[7]_0\(3) => angles_U_n_4,
      \q0_reg[7]_0\(2) => angles_U_n_5,
      \q0_reg[7]_0\(1) => angles_U_n_6,
      \q0_reg[7]_0\(0) => angles_U_n_7,
      select_ln75_reg_224(1 downto 0) => select_ln75_reg_224(1 downto 0),
      \theta_temp2_fu_52_reg[11]\(3) => angles_U_n_27,
      \theta_temp2_fu_52_reg[11]\(2) => angles_U_n_28,
      \theta_temp2_fu_52_reg[11]\(1) => angles_U_n_29,
      \theta_temp2_fu_52_reg[11]\(0) => angles_U_n_30,
      \theta_temp2_fu_52_reg[15]\(3) => angles_U_n_31,
      \theta_temp2_fu_52_reg[15]\(2) => angles_U_n_32,
      \theta_temp2_fu_52_reg[15]\(1) => angles_U_n_33,
      \theta_temp2_fu_52_reg[15]\(0) => angles_U_n_34,
      \theta_temp2_fu_52_reg[18]\(2) => angles_U_n_35,
      \theta_temp2_fu_52_reg[18]\(1) => angles_U_n_36,
      \theta_temp2_fu_52_reg[18]\(0) => angles_U_n_37,
      \theta_temp2_fu_52_reg[19]\(17) => \theta_temp2_fu_52_reg_n_0_[18]\,
      \theta_temp2_fu_52_reg[19]\(16) => \theta_temp2_fu_52_reg_n_0_[17]\,
      \theta_temp2_fu_52_reg[19]\(15) => \theta_temp2_fu_52_reg_n_0_[16]\,
      \theta_temp2_fu_52_reg[19]\(14) => \theta_temp2_fu_52_reg_n_0_[15]\,
      \theta_temp2_fu_52_reg[19]\(13) => \theta_temp2_fu_52_reg_n_0_[14]\,
      \theta_temp2_fu_52_reg[19]\(12) => \theta_temp2_fu_52_reg_n_0_[13]\,
      \theta_temp2_fu_52_reg[19]\(11) => \theta_temp2_fu_52_reg_n_0_[12]\,
      \theta_temp2_fu_52_reg[19]\(10) => \theta_temp2_fu_52_reg_n_0_[11]\,
      \theta_temp2_fu_52_reg[19]\(9) => \theta_temp2_fu_52_reg_n_0_[10]\,
      \theta_temp2_fu_52_reg[19]\(8) => \theta_temp2_fu_52_reg_n_0_[9]\,
      \theta_temp2_fu_52_reg[19]\(7) => \theta_temp2_fu_52_reg_n_0_[8]\,
      \theta_temp2_fu_52_reg[19]\(6) => \theta_temp2_fu_52_reg_n_0_[7]\,
      \theta_temp2_fu_52_reg[19]\(5) => \theta_temp2_fu_52_reg_n_0_[6]\,
      \theta_temp2_fu_52_reg[19]\(4) => \theta_temp2_fu_52_reg_n_0_[5]\,
      \theta_temp2_fu_52_reg[19]\(3) => \theta_temp2_fu_52_reg_n_0_[4]\,
      \theta_temp2_fu_52_reg[19]\(2) => \theta_temp2_fu_52_reg_n_0_[3]\,
      \theta_temp2_fu_52_reg[19]\(1) => \theta_temp2_fu_52_reg_n_0_[2]\,
      \theta_temp2_fu_52_reg[19]\(0) => \theta_temp2_fu_52_reg_n_0_[1]\,
      \theta_temp2_fu_52_reg[3]\(2) => angles_U_n_20,
      \theta_temp2_fu_52_reg[3]\(1) => angles_U_n_21,
      \theta_temp2_fu_52_reg[3]\(0) => angles_U_n_22,
      \theta_temp2_fu_52_reg[7]\(3) => angles_U_n_23,
      \theta_temp2_fu_52_reg[7]\(2) => angles_U_n_24,
      \theta_temp2_fu_52_reg[7]\(1) => angles_U_n_25,
      \theta_temp2_fu_52_reg[7]\(0) => angles_U_n_26
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF57"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \^grp_cordiccart2pol_pipeline_vitis_loop_80_1_fu_104_ap_ready\,
      O => ap_NS_fsm(0)
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0054"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage1,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I3 => \^grp_cordiccart2pol_pipeline_vitis_loop_80_1_fu_104_ap_ready\,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => \ap_CS_fsm_reg_n_0_[0]\,
      S => SR(0)
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_pp0_stage1,
      R => SR(0)
    );
ap_enable_reg_pp0_iter0_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A80"
    )
        port map (
      I0 => ap_rst_n,
      I1 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I2 => \ap_CS_fsm_reg_n_0_[0]\,
      I3 => ap_enable_reg_pp0_iter0_reg,
      I4 => \^grp_cordiccart2pol_pipeline_vitis_loop_80_1_fu_104_ap_ready\,
      O => ap_enable_reg_pp0_iter0_reg_i_1_n_0
    );
ap_enable_reg_pp0_iter0_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter0_reg_i_1_n_0,
      Q => ap_enable_reg_pp0_iter0_reg,
      R => '0'
    );
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000074040000"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => ap_CS_fsm_pp0_stage1,
      I3 => ap_enable_reg_pp0_iter0,
      I4 => ap_rst_n,
      I5 => \^grp_cordiccart2pol_pipeline_vitis_loop_80_1_fu_104_ap_ready\,
      O => ap_enable_reg_pp0_iter1_i_1_n_0
    );
ap_enable_reg_pp0_iter1_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp0_iter0_reg,
      O => ap_enable_reg_pp0_iter0
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter1_i_1_n_0,
      Q => ap_enable_reg_pp0_iter1,
      R => '0'
    );
\cos_shift_reg_305[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB833B8CCB800"
    )
        port map (
      I0 => \cos_shift_reg_305[3]_i_2_n_0\,
      I1 => \i1_fu_48_reg_n_0_[1]\,
      I2 => \cos_shift_reg_305[1]_i_2_n_0\,
      I3 => \i1_fu_48_reg_n_0_[0]\,
      I4 => \cos_shift_reg_305[2]_i_2_n_0\,
      I5 => \cos_shift_reg_305[0]_i_2_n_0\,
      O => cos_shift_fu_151_p2(0)
    );
\cos_shift_reg_305[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => current_cos_34_fu_56(12),
      I1 => current_cos_34_fu_56(4),
      I2 => \i1_fu_48_reg_n_0_[2]\,
      I3 => current_cos_34_fu_56(8),
      I4 => \i1_fu_48_reg_n_0_[3]\,
      I5 => current_cos_34_fu_56(0),
      O => \cos_shift_reg_305[0]_i_2_n_0\
    );
\cos_shift_reg_305[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cos_shift_reg_305[13]_i_3_n_0\,
      I1 => \cos_shift_reg_305[11]_i_2_n_0\,
      I2 => \i1_fu_48_reg_n_0_[0]\,
      I3 => \cos_shift_reg_305[12]_i_2_n_0\,
      I4 => \i1_fu_48_reg_n_0_[1]\,
      I5 => \cos_shift_reg_305[10]_i_2_n_0\,
      O => cos_shift_fu_151_p2(10)
    );
\cos_shift_reg_305[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => current_cos_34_fu_56(21),
      I1 => current_cos_34_fu_56(14),
      I2 => \i1_fu_48_reg_n_0_[2]\,
      I3 => current_cos_34_fu_56(18),
      I4 => \i1_fu_48_reg_n_0_[3]\,
      I5 => current_cos_34_fu_56(10),
      O => \cos_shift_reg_305[10]_i_2_n_0\
    );
\cos_shift_reg_305[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cos_shift_reg_305[14]_i_3_n_0\,
      I1 => \cos_shift_reg_305[12]_i_2_n_0\,
      I2 => \i1_fu_48_reg_n_0_[0]\,
      I3 => \cos_shift_reg_305[13]_i_3_n_0\,
      I4 => \i1_fu_48_reg_n_0_[1]\,
      I5 => \cos_shift_reg_305[11]_i_2_n_0\,
      O => cos_shift_fu_151_p2(11)
    );
\cos_shift_reg_305[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => current_cos_34_fu_56(21),
      I1 => current_cos_34_fu_56(15),
      I2 => \i1_fu_48_reg_n_0_[2]\,
      I3 => current_cos_34_fu_56(19),
      I4 => \i1_fu_48_reg_n_0_[3]\,
      I5 => current_cos_34_fu_56(11),
      O => \cos_shift_reg_305[11]_i_2_n_0\
    );
\cos_shift_reg_305[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cos_shift_reg_305[13]_i_2_n_0\,
      I1 => \cos_shift_reg_305[13]_i_3_n_0\,
      I2 => \i1_fu_48_reg_n_0_[0]\,
      I3 => \cos_shift_reg_305[14]_i_3_n_0\,
      I4 => \i1_fu_48_reg_n_0_[1]\,
      I5 => \cos_shift_reg_305[12]_i_2_n_0\,
      O => cos_shift_fu_151_p2(12)
    );
\cos_shift_reg_305[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => current_cos_34_fu_56(21),
      I1 => current_cos_34_fu_56(16),
      I2 => \i1_fu_48_reg_n_0_[2]\,
      I3 => current_cos_34_fu_56(20),
      I4 => \i1_fu_48_reg_n_0_[3]\,
      I5 => current_cos_34_fu_56(12),
      O => \cos_shift_reg_305[12]_i_2_n_0\
    );
\cos_shift_reg_305[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cos_shift_reg_305[14]_i_2_n_0\,
      I1 => \cos_shift_reg_305[14]_i_3_n_0\,
      I2 => \i1_fu_48_reg_n_0_[0]\,
      I3 => \cos_shift_reg_305[13]_i_2_n_0\,
      I4 => \i1_fu_48_reg_n_0_[1]\,
      I5 => \cos_shift_reg_305[13]_i_3_n_0\,
      O => cos_shift_fu_151_p2(13)
    );
\cos_shift_reg_305[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => current_cos_34_fu_56(19),
      I1 => \i1_fu_48_reg_n_0_[2]\,
      I2 => current_cos_34_fu_56(21),
      I3 => \i1_fu_48_reg_n_0_[3]\,
      I4 => current_cos_34_fu_56(15),
      O => \cos_shift_reg_305[13]_i_2_n_0\
    );
\cos_shift_reg_305[13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => current_cos_34_fu_56(17),
      I1 => \i1_fu_48_reg_n_0_[2]\,
      I2 => current_cos_34_fu_56(21),
      I3 => \i1_fu_48_reg_n_0_[3]\,
      I4 => current_cos_34_fu_56(13),
      O => \cos_shift_reg_305[13]_i_3_n_0\
    );
\cos_shift_reg_305[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => \cos_shift_reg_305[14]_i_2_n_0\,
      I1 => \i1_fu_48_reg_n_0_[1]\,
      I2 => \cos_shift_reg_305[14]_i_3_n_0\,
      I3 => \cos_shift_reg_305[15]_i_2_n_0\,
      I4 => \i1_fu_48_reg_n_0_[0]\,
      O => cos_shift_fu_151_p2(14)
    );
\cos_shift_reg_305[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => current_cos_34_fu_56(20),
      I1 => \i1_fu_48_reg_n_0_[2]\,
      I2 => current_cos_34_fu_56(21),
      I3 => \i1_fu_48_reg_n_0_[3]\,
      I4 => current_cos_34_fu_56(16),
      O => \cos_shift_reg_305[14]_i_2_n_0\
    );
\cos_shift_reg_305[14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => current_cos_34_fu_56(18),
      I1 => \i1_fu_48_reg_n_0_[2]\,
      I2 => current_cos_34_fu_56(21),
      I3 => \i1_fu_48_reg_n_0_[3]\,
      I4 => current_cos_34_fu_56(14),
      O => \cos_shift_reg_305[14]_i_3_n_0\
    );
\cos_shift_reg_305[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cos_shift_reg_305[16]_i_2_n_0\,
      I1 => \i1_fu_48_reg_n_0_[0]\,
      I2 => \cos_shift_reg_305[15]_i_2_n_0\,
      O => cos_shift_fu_151_p2(15)
    );
\cos_shift_reg_305[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8FFFFCDC80000"
    )
        port map (
      I0 => \i1_fu_48_reg_n_0_[2]\,
      I1 => current_cos_34_fu_56(21),
      I2 => \i1_fu_48_reg_n_0_[3]\,
      I3 => current_cos_34_fu_56(17),
      I4 => \i1_fu_48_reg_n_0_[1]\,
      I5 => \cos_shift_reg_305[13]_i_2_n_0\,
      O => \cos_shift_reg_305[15]_i_2_n_0\
    );
\cos_shift_reg_305[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cos_shift_reg_305[17]_i_2_n_0\,
      I1 => \i1_fu_48_reg_n_0_[0]\,
      I2 => \cos_shift_reg_305[16]_i_2_n_0\,
      O => cos_shift_fu_151_p2(16)
    );
\cos_shift_reg_305[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8FFFFCDC80000"
    )
        port map (
      I0 => \i1_fu_48_reg_n_0_[2]\,
      I1 => current_cos_34_fu_56(21),
      I2 => \i1_fu_48_reg_n_0_[3]\,
      I3 => current_cos_34_fu_56(18),
      I4 => \i1_fu_48_reg_n_0_[1]\,
      I5 => \cos_shift_reg_305[14]_i_2_n_0\,
      O => \cos_shift_reg_305[16]_i_2_n_0\
    );
\cos_shift_reg_305[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cos_shift_reg_305[18]_i_2_n_0\,
      I1 => \i1_fu_48_reg_n_0_[0]\,
      I2 => \cos_shift_reg_305[17]_i_2_n_0\,
      O => cos_shift_fu_151_p2(17)
    );
\cos_shift_reg_305[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => current_cos_34_fu_56(19),
      I1 => \i1_fu_48_reg_n_0_[1]\,
      I2 => \i1_fu_48_reg_n_0_[2]\,
      I3 => current_cos_34_fu_56(21),
      I4 => \i1_fu_48_reg_n_0_[3]\,
      I5 => current_cos_34_fu_56(17),
      O => \cos_shift_reg_305[17]_i_2_n_0\
    );
\cos_shift_reg_305[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cos_shift_reg_305[19]_i_3_n_0\,
      I1 => \i1_fu_48_reg_n_0_[0]\,
      I2 => \cos_shift_reg_305[18]_i_2_n_0\,
      O => cos_shift_fu_151_p2(18)
    );
\cos_shift_reg_305[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => current_cos_34_fu_56(20),
      I1 => \i1_fu_48_reg_n_0_[1]\,
      I2 => \i1_fu_48_reg_n_0_[2]\,
      I3 => current_cos_34_fu_56(21),
      I4 => \i1_fu_48_reg_n_0_[3]\,
      I5 => current_cos_34_fu_56(18),
      O => \cos_shift_reg_305[18]_i_2_n_0\
    );
\cos_shift_reg_305[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cos_shift_reg_305[19]_i_2_n_0\,
      I1 => \i1_fu_48_reg_n_0_[0]\,
      I2 => \cos_shift_reg_305[19]_i_3_n_0\,
      O => cos_shift_fu_151_p2(19)
    );
\cos_shift_reg_305[19]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => \i1_fu_48_reg_n_0_[1]\,
      I1 => \i1_fu_48_reg_n_0_[2]\,
      I2 => current_cos_34_fu_56(21),
      I3 => \i1_fu_48_reg_n_0_[3]\,
      I4 => current_cos_34_fu_56(20),
      O => \cos_shift_reg_305[19]_i_2_n_0\
    );
\cos_shift_reg_305[19]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => \i1_fu_48_reg_n_0_[1]\,
      I1 => \i1_fu_48_reg_n_0_[2]\,
      I2 => current_cos_34_fu_56(21),
      I3 => \i1_fu_48_reg_n_0_[3]\,
      I4 => current_cos_34_fu_56(19),
      O => \cos_shift_reg_305[19]_i_3_n_0\
    );
\cos_shift_reg_305[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FF33CC00"
    )
        port map (
      I0 => \cos_shift_reg_305[4]_i_2_n_0\,
      I1 => \i1_fu_48_reg_n_0_[1]\,
      I2 => \cos_shift_reg_305[2]_i_2_n_0\,
      I3 => \cos_shift_reg_305[3]_i_2_n_0\,
      I4 => \cos_shift_reg_305[1]_i_2_n_0\,
      I5 => \i1_fu_48_reg_n_0_[0]\,
      O => cos_shift_fu_151_p2(1)
    );
\cos_shift_reg_305[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => current_cos_34_fu_56(13),
      I1 => current_cos_34_fu_56(5),
      I2 => \i1_fu_48_reg_n_0_[2]\,
      I3 => current_cos_34_fu_56(9),
      I4 => \i1_fu_48_reg_n_0_[3]\,
      I5 => current_cos_34_fu_56(1),
      O => \cos_shift_reg_305[1]_i_2_n_0\
    );
\cos_shift_reg_305[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF01FF00FE00"
    )
        port map (
      I0 => \i1_fu_48_reg_n_0_[0]\,
      I1 => \i1_fu_48_reg_n_0_[1]\,
      I2 => \i1_fu_48_reg_n_0_[2]\,
      I3 => current_cos_34_fu_56(21),
      I4 => \i1_fu_48_reg_n_0_[3]\,
      I5 => current_cos_34_fu_56(20),
      O => cos_shift_fu_151_p2(20)
    );
\cos_shift_reg_305[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cos_shift_reg_305[5]_i_2_n_0\,
      I1 => \cos_shift_reg_305[3]_i_2_n_0\,
      I2 => \i1_fu_48_reg_n_0_[0]\,
      I3 => \cos_shift_reg_305[4]_i_2_n_0\,
      I4 => \i1_fu_48_reg_n_0_[1]\,
      I5 => \cos_shift_reg_305[2]_i_2_n_0\,
      O => cos_shift_fu_151_p2(2)
    );
\cos_shift_reg_305[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => current_cos_34_fu_56(14),
      I1 => current_cos_34_fu_56(6),
      I2 => \i1_fu_48_reg_n_0_[2]\,
      I3 => current_cos_34_fu_56(10),
      I4 => \i1_fu_48_reg_n_0_[3]\,
      I5 => current_cos_34_fu_56(2),
      O => \cos_shift_reg_305[2]_i_2_n_0\
    );
\cos_shift_reg_305[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cos_shift_reg_305[6]_i_2_n_0\,
      I1 => \cos_shift_reg_305[4]_i_2_n_0\,
      I2 => \i1_fu_48_reg_n_0_[0]\,
      I3 => \cos_shift_reg_305[5]_i_2_n_0\,
      I4 => \i1_fu_48_reg_n_0_[1]\,
      I5 => \cos_shift_reg_305[3]_i_2_n_0\,
      O => cos_shift_fu_151_p2(3)
    );
\cos_shift_reg_305[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => current_cos_34_fu_56(15),
      I1 => current_cos_34_fu_56(7),
      I2 => \i1_fu_48_reg_n_0_[2]\,
      I3 => current_cos_34_fu_56(11),
      I4 => \i1_fu_48_reg_n_0_[3]\,
      I5 => current_cos_34_fu_56(3),
      O => \cos_shift_reg_305[3]_i_2_n_0\
    );
\cos_shift_reg_305[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cos_shift_reg_305[7]_i_2_n_0\,
      I1 => \cos_shift_reg_305[5]_i_2_n_0\,
      I2 => \i1_fu_48_reg_n_0_[0]\,
      I3 => \cos_shift_reg_305[6]_i_2_n_0\,
      I4 => \i1_fu_48_reg_n_0_[1]\,
      I5 => \cos_shift_reg_305[4]_i_2_n_0\,
      O => cos_shift_fu_151_p2(4)
    );
\cos_shift_reg_305[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => current_cos_34_fu_56(16),
      I1 => current_cos_34_fu_56(8),
      I2 => \i1_fu_48_reg_n_0_[2]\,
      I3 => current_cos_34_fu_56(12),
      I4 => \i1_fu_48_reg_n_0_[3]\,
      I5 => current_cos_34_fu_56(4),
      O => \cos_shift_reg_305[4]_i_2_n_0\
    );
\cos_shift_reg_305[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cos_shift_reg_305[8]_i_2_n_0\,
      I1 => \cos_shift_reg_305[6]_i_2_n_0\,
      I2 => \i1_fu_48_reg_n_0_[0]\,
      I3 => \cos_shift_reg_305[7]_i_2_n_0\,
      I4 => \i1_fu_48_reg_n_0_[1]\,
      I5 => \cos_shift_reg_305[5]_i_2_n_0\,
      O => cos_shift_fu_151_p2(5)
    );
\cos_shift_reg_305[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => current_cos_34_fu_56(17),
      I1 => current_cos_34_fu_56(9),
      I2 => \i1_fu_48_reg_n_0_[2]\,
      I3 => current_cos_34_fu_56(13),
      I4 => \i1_fu_48_reg_n_0_[3]\,
      I5 => current_cos_34_fu_56(5),
      O => \cos_shift_reg_305[5]_i_2_n_0\
    );
\cos_shift_reg_305[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cos_shift_reg_305[9]_i_2_n_0\,
      I1 => \cos_shift_reg_305[7]_i_2_n_0\,
      I2 => \i1_fu_48_reg_n_0_[0]\,
      I3 => \cos_shift_reg_305[8]_i_2_n_0\,
      I4 => \i1_fu_48_reg_n_0_[1]\,
      I5 => \cos_shift_reg_305[6]_i_2_n_0\,
      O => cos_shift_fu_151_p2(6)
    );
\cos_shift_reg_305[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => current_cos_34_fu_56(18),
      I1 => current_cos_34_fu_56(10),
      I2 => \i1_fu_48_reg_n_0_[2]\,
      I3 => current_cos_34_fu_56(14),
      I4 => \i1_fu_48_reg_n_0_[3]\,
      I5 => current_cos_34_fu_56(6),
      O => \cos_shift_reg_305[6]_i_2_n_0\
    );
\cos_shift_reg_305[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cos_shift_reg_305[10]_i_2_n_0\,
      I1 => \cos_shift_reg_305[8]_i_2_n_0\,
      I2 => \i1_fu_48_reg_n_0_[0]\,
      I3 => \cos_shift_reg_305[9]_i_2_n_0\,
      I4 => \i1_fu_48_reg_n_0_[1]\,
      I5 => \cos_shift_reg_305[7]_i_2_n_0\,
      O => cos_shift_fu_151_p2(7)
    );
\cos_shift_reg_305[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => current_cos_34_fu_56(19),
      I1 => current_cos_34_fu_56(11),
      I2 => \i1_fu_48_reg_n_0_[2]\,
      I3 => current_cos_34_fu_56(15),
      I4 => \i1_fu_48_reg_n_0_[3]\,
      I5 => current_cos_34_fu_56(7),
      O => \cos_shift_reg_305[7]_i_2_n_0\
    );
\cos_shift_reg_305[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cos_shift_reg_305[11]_i_2_n_0\,
      I1 => \cos_shift_reg_305[9]_i_2_n_0\,
      I2 => \i1_fu_48_reg_n_0_[0]\,
      I3 => \cos_shift_reg_305[10]_i_2_n_0\,
      I4 => \i1_fu_48_reg_n_0_[1]\,
      I5 => \cos_shift_reg_305[8]_i_2_n_0\,
      O => cos_shift_fu_151_p2(8)
    );
\cos_shift_reg_305[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => current_cos_34_fu_56(20),
      I1 => current_cos_34_fu_56(12),
      I2 => \i1_fu_48_reg_n_0_[2]\,
      I3 => current_cos_34_fu_56(16),
      I4 => \i1_fu_48_reg_n_0_[3]\,
      I5 => current_cos_34_fu_56(8),
      O => \cos_shift_reg_305[8]_i_2_n_0\
    );
\cos_shift_reg_305[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cos_shift_reg_305[12]_i_2_n_0\,
      I1 => \cos_shift_reg_305[10]_i_2_n_0\,
      I2 => \i1_fu_48_reg_n_0_[0]\,
      I3 => \cos_shift_reg_305[11]_i_2_n_0\,
      I4 => \i1_fu_48_reg_n_0_[1]\,
      I5 => \cos_shift_reg_305[9]_i_2_n_0\,
      O => cos_shift_fu_151_p2(9)
    );
\cos_shift_reg_305[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => current_cos_34_fu_56(21),
      I1 => current_cos_34_fu_56(13),
      I2 => \i1_fu_48_reg_n_0_[2]\,
      I3 => current_cos_34_fu_56(17),
      I4 => \i1_fu_48_reg_n_0_[3]\,
      I5 => current_cos_34_fu_56(9),
      O => \cos_shift_reg_305[9]_i_2_n_0\
    );
\cos_shift_reg_305_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => cos_shift_fu_151_p2(0),
      Q => cos_shift_reg_305(0),
      R => '0'
    );
\cos_shift_reg_305_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => cos_shift_fu_151_p2(10),
      Q => cos_shift_reg_305(10),
      R => '0'
    );
\cos_shift_reg_305_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => cos_shift_fu_151_p2(11),
      Q => cos_shift_reg_305(11),
      R => '0'
    );
\cos_shift_reg_305_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => cos_shift_fu_151_p2(12),
      Q => cos_shift_reg_305(12),
      R => '0'
    );
\cos_shift_reg_305_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => cos_shift_fu_151_p2(13),
      Q => cos_shift_reg_305(13),
      R => '0'
    );
\cos_shift_reg_305_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => cos_shift_fu_151_p2(14),
      Q => cos_shift_reg_305(14),
      R => '0'
    );
\cos_shift_reg_305_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => cos_shift_fu_151_p2(15),
      Q => cos_shift_reg_305(15),
      R => '0'
    );
\cos_shift_reg_305_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => cos_shift_fu_151_p2(16),
      Q => cos_shift_reg_305(16),
      R => '0'
    );
\cos_shift_reg_305_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => cos_shift_fu_151_p2(17),
      Q => cos_shift_reg_305(17),
      R => '0'
    );
\cos_shift_reg_305_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => cos_shift_fu_151_p2(18),
      Q => cos_shift_reg_305(18),
      R => '0'
    );
\cos_shift_reg_305_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => cos_shift_fu_151_p2(19),
      Q => cos_shift_reg_305(19),
      R => '0'
    );
\cos_shift_reg_305_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => cos_shift_fu_151_p2(1),
      Q => cos_shift_reg_305(1),
      R => '0'
    );
\cos_shift_reg_305_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => cos_shift_fu_151_p2(20),
      Q => cos_shift_reg_305(20),
      R => '0'
    );
\cos_shift_reg_305_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => cos_shift_fu_151_p2(2),
      Q => cos_shift_reg_305(2),
      R => '0'
    );
\cos_shift_reg_305_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => cos_shift_fu_151_p2(3),
      Q => cos_shift_reg_305(3),
      R => '0'
    );
\cos_shift_reg_305_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => cos_shift_fu_151_p2(4),
      Q => cos_shift_reg_305(4),
      R => '0'
    );
\cos_shift_reg_305_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => cos_shift_fu_151_p2(5),
      Q => cos_shift_reg_305(5),
      R => '0'
    );
\cos_shift_reg_305_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => cos_shift_fu_151_p2(6),
      Q => cos_shift_reg_305(6),
      R => '0'
    );
\cos_shift_reg_305_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => cos_shift_fu_151_p2(7),
      Q => cos_shift_reg_305(7),
      R => '0'
    );
\cos_shift_reg_305_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => cos_shift_fu_151_p2(8),
      Q => cos_shift_reg_305(8),
      R => '0'
    );
\cos_shift_reg_305_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => cos_shift_fu_151_p2(9),
      Q => cos_shift_reg_305(9),
      R => '0'
    );
\current_cos_2_loc_fu_74[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => Q(0),
      I1 => i1_load_reg_287(1),
      I2 => i1_load_reg_287(0),
      I3 => i1_load_reg_287(3),
      I4 => i1_load_reg_287(2),
      I5 => ap_done_reg1,
      O => E(0)
    );
\current_cos_2_loc_fu_74[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => i1_load_reg_287(1),
      I1 => i1_load_reg_287(0),
      I2 => i1_load_reg_287(3),
      I3 => i1_load_reg_287(2),
      I4 => \ap_CS_fsm_reg_n_0_[0]\,
      I5 => ap_enable_reg_pp0_iter1,
      O => ap_done_reg1
    );
current_cos_34_fu_560_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => current_cos_34_fu_560_carry_n_0,
      CO(2) => current_cos_34_fu_560_carry_n_1,
      CO(1) => current_cos_34_fu_560_carry_n_2,
      CO(0) => current_cos_34_fu_560_carry_n_3,
      CYINIT => current_sin_36_load_reg_299(21),
      DI(3 downto 0) => current_cos_34_load_reg_293(3 downto 0),
      O(3 downto 0) => \^d\(3 downto 0),
      S(3) => current_cos_34_fu_560_carry_i_1_n_0,
      S(2) => current_cos_34_fu_560_carry_i_2_n_0,
      S(1) => current_cos_34_fu_560_carry_i_3_n_0,
      S(0) => current_cos_34_fu_560_carry_i_4_n_0
    );
\current_cos_34_fu_560_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => current_cos_34_fu_560_carry_n_0,
      CO(3) => \current_cos_34_fu_560_carry__0_n_0\,
      CO(2) => \current_cos_34_fu_560_carry__0_n_1\,
      CO(1) => \current_cos_34_fu_560_carry__0_n_2\,
      CO(0) => \current_cos_34_fu_560_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => current_cos_34_load_reg_293(7 downto 4),
      O(3 downto 0) => \^d\(7 downto 4),
      S(3) => \current_cos_34_fu_560_carry__0_i_1_n_0\,
      S(2) => \current_cos_34_fu_560_carry__0_i_2_n_0\,
      S(1) => \current_cos_34_fu_560_carry__0_i_3_n_0\,
      S(0) => \current_cos_34_fu_560_carry__0_i_4_n_0\
    );
\current_cos_34_fu_560_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => sin_shift_reg_311(7),
      I1 => current_sin_36_load_reg_299(21),
      I2 => current_cos_34_load_reg_293(7),
      O => \current_cos_34_fu_560_carry__0_i_1_n_0\
    );
\current_cos_34_fu_560_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => sin_shift_reg_311(6),
      I1 => current_sin_36_load_reg_299(21),
      I2 => current_cos_34_load_reg_293(6),
      O => \current_cos_34_fu_560_carry__0_i_2_n_0\
    );
\current_cos_34_fu_560_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => sin_shift_reg_311(5),
      I1 => current_sin_36_load_reg_299(21),
      I2 => current_cos_34_load_reg_293(5),
      O => \current_cos_34_fu_560_carry__0_i_3_n_0\
    );
\current_cos_34_fu_560_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => sin_shift_reg_311(4),
      I1 => current_sin_36_load_reg_299(21),
      I2 => current_cos_34_load_reg_293(4),
      O => \current_cos_34_fu_560_carry__0_i_4_n_0\
    );
\current_cos_34_fu_560_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \current_cos_34_fu_560_carry__0_n_0\,
      CO(3) => \current_cos_34_fu_560_carry__1_n_0\,
      CO(2) => \current_cos_34_fu_560_carry__1_n_1\,
      CO(1) => \current_cos_34_fu_560_carry__1_n_2\,
      CO(0) => \current_cos_34_fu_560_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => current_cos_34_load_reg_293(11 downto 8),
      O(3 downto 0) => \^d\(11 downto 8),
      S(3) => \current_cos_34_fu_560_carry__1_i_1_n_0\,
      S(2) => \current_cos_34_fu_560_carry__1_i_2_n_0\,
      S(1) => \current_cos_34_fu_560_carry__1_i_3_n_0\,
      S(0) => \current_cos_34_fu_560_carry__1_i_4_n_0\
    );
\current_cos_34_fu_560_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => sin_shift_reg_311(11),
      I1 => current_sin_36_load_reg_299(21),
      I2 => current_cos_34_load_reg_293(11),
      O => \current_cos_34_fu_560_carry__1_i_1_n_0\
    );
\current_cos_34_fu_560_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => sin_shift_reg_311(10),
      I1 => current_sin_36_load_reg_299(21),
      I2 => current_cos_34_load_reg_293(10),
      O => \current_cos_34_fu_560_carry__1_i_2_n_0\
    );
\current_cos_34_fu_560_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => sin_shift_reg_311(9),
      I1 => current_sin_36_load_reg_299(21),
      I2 => current_cos_34_load_reg_293(9),
      O => \current_cos_34_fu_560_carry__1_i_3_n_0\
    );
\current_cos_34_fu_560_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => sin_shift_reg_311(8),
      I1 => current_sin_36_load_reg_299(21),
      I2 => current_cos_34_load_reg_293(8),
      O => \current_cos_34_fu_560_carry__1_i_4_n_0\
    );
\current_cos_34_fu_560_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \current_cos_34_fu_560_carry__1_n_0\,
      CO(3) => \current_cos_34_fu_560_carry__2_n_0\,
      CO(2) => \current_cos_34_fu_560_carry__2_n_1\,
      CO(1) => \current_cos_34_fu_560_carry__2_n_2\,
      CO(0) => \current_cos_34_fu_560_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => current_cos_34_load_reg_293(15 downto 12),
      O(3 downto 0) => \^d\(15 downto 12),
      S(3) => \current_cos_34_fu_560_carry__2_i_1_n_0\,
      S(2) => \current_cos_34_fu_560_carry__2_i_2_n_0\,
      S(1) => \current_cos_34_fu_560_carry__2_i_3_n_0\,
      S(0) => \current_cos_34_fu_560_carry__2_i_4_n_0\
    );
\current_cos_34_fu_560_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => sin_shift_reg_311(15),
      I1 => current_sin_36_load_reg_299(21),
      I2 => current_cos_34_load_reg_293(15),
      O => \current_cos_34_fu_560_carry__2_i_1_n_0\
    );
\current_cos_34_fu_560_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => sin_shift_reg_311(14),
      I1 => current_sin_36_load_reg_299(21),
      I2 => current_cos_34_load_reg_293(14),
      O => \current_cos_34_fu_560_carry__2_i_2_n_0\
    );
\current_cos_34_fu_560_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => sin_shift_reg_311(13),
      I1 => current_sin_36_load_reg_299(21),
      I2 => current_cos_34_load_reg_293(13),
      O => \current_cos_34_fu_560_carry__2_i_3_n_0\
    );
\current_cos_34_fu_560_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => sin_shift_reg_311(12),
      I1 => current_sin_36_load_reg_299(21),
      I2 => current_cos_34_load_reg_293(12),
      O => \current_cos_34_fu_560_carry__2_i_4_n_0\
    );
\current_cos_34_fu_560_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \current_cos_34_fu_560_carry__2_n_0\,
      CO(3) => \current_cos_34_fu_560_carry__3_n_0\,
      CO(2) => \current_cos_34_fu_560_carry__3_n_1\,
      CO(1) => \current_cos_34_fu_560_carry__3_n_2\,
      CO(0) => \current_cos_34_fu_560_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => current_cos_34_load_reg_293(19 downto 16),
      O(3 downto 0) => \^d\(19 downto 16),
      S(3) => \current_cos_34_fu_560_carry__3_i_1_n_0\,
      S(2) => \current_cos_34_fu_560_carry__3_i_2_n_0\,
      S(1) => \current_cos_34_fu_560_carry__3_i_3_n_0\,
      S(0) => \current_cos_34_fu_560_carry__3_i_4_n_0\
    );
\current_cos_34_fu_560_carry__3_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => sin_shift_reg_311(19),
      I1 => current_sin_36_load_reg_299(21),
      I2 => current_cos_34_load_reg_293(19),
      O => \current_cos_34_fu_560_carry__3_i_1_n_0\
    );
\current_cos_34_fu_560_carry__3_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => sin_shift_reg_311(18),
      I1 => current_sin_36_load_reg_299(21),
      I2 => current_cos_34_load_reg_293(18),
      O => \current_cos_34_fu_560_carry__3_i_2_n_0\
    );
\current_cos_34_fu_560_carry__3_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => sin_shift_reg_311(17),
      I1 => current_sin_36_load_reg_299(21),
      I2 => current_cos_34_load_reg_293(17),
      O => \current_cos_34_fu_560_carry__3_i_3_n_0\
    );
\current_cos_34_fu_560_carry__3_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => sin_shift_reg_311(16),
      I1 => current_sin_36_load_reg_299(21),
      I2 => current_cos_34_load_reg_293(16),
      O => \current_cos_34_fu_560_carry__3_i_4_n_0\
    );
\current_cos_34_fu_560_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \current_cos_34_fu_560_carry__3_n_0\,
      CO(3 downto 1) => \NLW_current_cos_34_fu_560_carry__4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \current_cos_34_fu_560_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => current_cos_34_load_reg_293(20),
      O(3 downto 2) => \NLW_current_cos_34_fu_560_carry__4_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => \^d\(21 downto 20),
      S(3 downto 2) => B"00",
      S(1) => current_cos_34_load_reg_293(21),
      S(0) => \current_cos_34_fu_560_carry__4_i_1_n_0\
    );
\current_cos_34_fu_560_carry__4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => sin_shift_reg_311(20),
      I1 => current_sin_36_load_reg_299(21),
      I2 => current_cos_34_load_reg_293(20),
      O => \current_cos_34_fu_560_carry__4_i_1_n_0\
    );
current_cos_34_fu_560_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => sin_shift_reg_311(3),
      I1 => current_sin_36_load_reg_299(21),
      I2 => current_cos_34_load_reg_293(3),
      O => current_cos_34_fu_560_carry_i_1_n_0
    );
current_cos_34_fu_560_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => sin_shift_reg_311(2),
      I1 => current_sin_36_load_reg_299(21),
      I2 => current_cos_34_load_reg_293(2),
      O => current_cos_34_fu_560_carry_i_2_n_0
    );
current_cos_34_fu_560_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => sin_shift_reg_311(1),
      I1 => current_sin_36_load_reg_299(21),
      I2 => current_cos_34_load_reg_293(1),
      O => current_cos_34_fu_560_carry_i_3_n_0
    );
current_cos_34_fu_560_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => sin_shift_reg_311(0),
      I1 => current_sin_36_load_reg_299(21),
      I2 => current_cos_34_load_reg_293(0),
      O => current_cos_34_fu_560_carry_i_4_n_0
    );
\current_cos_34_fu_56_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_27,
      Q => current_cos_34_fu_56(0),
      R => '0'
    );
\current_cos_34_fu_56_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_17,
      Q => current_cos_34_fu_56(10),
      R => '0'
    );
\current_cos_34_fu_56_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_16,
      Q => current_cos_34_fu_56(11),
      R => '0'
    );
\current_cos_34_fu_56_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_15,
      Q => current_cos_34_fu_56(12),
      R => '0'
    );
\current_cos_34_fu_56_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_14,
      Q => current_cos_34_fu_56(13),
      R => '0'
    );
\current_cos_34_fu_56_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_13,
      Q => current_cos_34_fu_56(14),
      R => '0'
    );
\current_cos_34_fu_56_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_12,
      Q => current_cos_34_fu_56(15),
      R => '0'
    );
\current_cos_34_fu_56_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_11,
      Q => current_cos_34_fu_56(16),
      R => '0'
    );
\current_cos_34_fu_56_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_10,
      Q => current_cos_34_fu_56(17),
      R => '0'
    );
\current_cos_34_fu_56_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_9,
      Q => current_cos_34_fu_56(18),
      R => '0'
    );
\current_cos_34_fu_56_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_8,
      Q => current_cos_34_fu_56(19),
      R => '0'
    );
\current_cos_34_fu_56_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_26,
      Q => current_cos_34_fu_56(1),
      R => '0'
    );
\current_cos_34_fu_56_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_7,
      Q => current_cos_34_fu_56(20),
      R => '0'
    );
\current_cos_34_fu_56_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_6,
      Q => current_cos_34_fu_56(21),
      R => '0'
    );
\current_cos_34_fu_56_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_25,
      Q => current_cos_34_fu_56(2),
      R => '0'
    );
\current_cos_34_fu_56_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_24,
      Q => current_cos_34_fu_56(3),
      R => '0'
    );
\current_cos_34_fu_56_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_23,
      Q => current_cos_34_fu_56(4),
      R => '0'
    );
\current_cos_34_fu_56_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_22,
      Q => current_cos_34_fu_56(5),
      R => '0'
    );
\current_cos_34_fu_56_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_21,
      Q => current_cos_34_fu_56(6),
      R => '0'
    );
\current_cos_34_fu_56_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_20,
      Q => current_cos_34_fu_56(7),
      R => '0'
    );
\current_cos_34_fu_56_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_19,
      Q => current_cos_34_fu_56(8),
      R => '0'
    );
\current_cos_34_fu_56_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_18,
      Q => current_cos_34_fu_56(9),
      R => '0'
    );
\current_cos_34_load_reg_293_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => current_cos_34_fu_56(0),
      Q => current_cos_34_load_reg_293(0),
      R => '0'
    );
\current_cos_34_load_reg_293_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => current_cos_34_fu_56(10),
      Q => current_cos_34_load_reg_293(10),
      R => '0'
    );
\current_cos_34_load_reg_293_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => current_cos_34_fu_56(11),
      Q => current_cos_34_load_reg_293(11),
      R => '0'
    );
\current_cos_34_load_reg_293_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => current_cos_34_fu_56(12),
      Q => current_cos_34_load_reg_293(12),
      R => '0'
    );
\current_cos_34_load_reg_293_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => current_cos_34_fu_56(13),
      Q => current_cos_34_load_reg_293(13),
      R => '0'
    );
\current_cos_34_load_reg_293_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => current_cos_34_fu_56(14),
      Q => current_cos_34_load_reg_293(14),
      R => '0'
    );
\current_cos_34_load_reg_293_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => current_cos_34_fu_56(15),
      Q => current_cos_34_load_reg_293(15),
      R => '0'
    );
\current_cos_34_load_reg_293_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => current_cos_34_fu_56(16),
      Q => current_cos_34_load_reg_293(16),
      R => '0'
    );
\current_cos_34_load_reg_293_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => current_cos_34_fu_56(17),
      Q => current_cos_34_load_reg_293(17),
      R => '0'
    );
\current_cos_34_load_reg_293_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => current_cos_34_fu_56(18),
      Q => current_cos_34_load_reg_293(18),
      R => '0'
    );
\current_cos_34_load_reg_293_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => current_cos_34_fu_56(19),
      Q => current_cos_34_load_reg_293(19),
      R => '0'
    );
\current_cos_34_load_reg_293_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => current_cos_34_fu_56(1),
      Q => current_cos_34_load_reg_293(1),
      R => '0'
    );
\current_cos_34_load_reg_293_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => current_cos_34_fu_56(20),
      Q => current_cos_34_load_reg_293(20),
      R => '0'
    );
\current_cos_34_load_reg_293_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => current_cos_34_fu_56(21),
      Q => current_cos_34_load_reg_293(21),
      R => '0'
    );
\current_cos_34_load_reg_293_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => current_cos_34_fu_56(2),
      Q => current_cos_34_load_reg_293(2),
      R => '0'
    );
\current_cos_34_load_reg_293_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => current_cos_34_fu_56(3),
      Q => current_cos_34_load_reg_293(3),
      R => '0'
    );
\current_cos_34_load_reg_293_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => current_cos_34_fu_56(4),
      Q => current_cos_34_load_reg_293(4),
      R => '0'
    );
\current_cos_34_load_reg_293_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => current_cos_34_fu_56(5),
      Q => current_cos_34_load_reg_293(5),
      R => '0'
    );
\current_cos_34_load_reg_293_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => current_cos_34_fu_56(6),
      Q => current_cos_34_load_reg_293(6),
      R => '0'
    );
\current_cos_34_load_reg_293_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => current_cos_34_fu_56(7),
      Q => current_cos_34_load_reg_293(7),
      R => '0'
    );
\current_cos_34_load_reg_293_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => current_cos_34_fu_56(8),
      Q => current_cos_34_load_reg_293(8),
      R => '0'
    );
\current_cos_34_load_reg_293_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => current_cos_34_fu_56(9),
      Q => current_cos_34_load_reg_293(9),
      R => '0'
    );
current_sin_36_fu_600_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => current_sin_36_fu_600_carry_n_0,
      CO(2) => current_sin_36_fu_600_carry_n_1,
      CO(1) => current_sin_36_fu_600_carry_n_2,
      CO(0) => current_sin_36_fu_600_carry_n_3,
      CYINIT => current_sin_36_fu_600_carry_i_1_n_0,
      DI(3 downto 0) => current_sin_36_load_reg_299(3 downto 0),
      O(3) => current_sin_36_fu_600_carry_n_4,
      O(2) => current_sin_36_fu_600_carry_n_5,
      O(1) => current_sin_36_fu_600_carry_n_6,
      O(0) => current_sin_36_fu_600_carry_n_7,
      S(3) => current_sin_36_fu_600_carry_i_2_n_0,
      S(2) => current_sin_36_fu_600_carry_i_3_n_0,
      S(1) => current_sin_36_fu_600_carry_i_4_n_0,
      S(0) => current_sin_36_fu_600_carry_i_5_n_0
    );
\current_sin_36_fu_600_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => current_sin_36_fu_600_carry_n_0,
      CO(3) => \current_sin_36_fu_600_carry__0_n_0\,
      CO(2) => \current_sin_36_fu_600_carry__0_n_1\,
      CO(1) => \current_sin_36_fu_600_carry__0_n_2\,
      CO(0) => \current_sin_36_fu_600_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => current_sin_36_load_reg_299(7 downto 4),
      O(3) => \current_sin_36_fu_600_carry__0_n_4\,
      O(2) => \current_sin_36_fu_600_carry__0_n_5\,
      O(1) => \current_sin_36_fu_600_carry__0_n_6\,
      O(0) => \current_sin_36_fu_600_carry__0_n_7\,
      S(3) => \current_sin_36_fu_600_carry__0_i_1_n_0\,
      S(2) => \current_sin_36_fu_600_carry__0_i_2_n_0\,
      S(1) => \current_sin_36_fu_600_carry__0_i_3_n_0\,
      S(0) => \current_sin_36_fu_600_carry__0_i_4_n_0\
    );
\current_sin_36_fu_600_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => current_sin_36_load_reg_299(7),
      I1 => cos_shift_reg_305(7),
      I2 => current_sin_36_load_reg_299(21),
      O => \current_sin_36_fu_600_carry__0_i_1_n_0\
    );
\current_sin_36_fu_600_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => current_sin_36_load_reg_299(6),
      I1 => cos_shift_reg_305(6),
      I2 => current_sin_36_load_reg_299(21),
      O => \current_sin_36_fu_600_carry__0_i_2_n_0\
    );
\current_sin_36_fu_600_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => current_sin_36_load_reg_299(5),
      I1 => cos_shift_reg_305(5),
      I2 => current_sin_36_load_reg_299(21),
      O => \current_sin_36_fu_600_carry__0_i_3_n_0\
    );
\current_sin_36_fu_600_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => current_sin_36_load_reg_299(4),
      I1 => cos_shift_reg_305(4),
      I2 => current_sin_36_load_reg_299(21),
      O => \current_sin_36_fu_600_carry__0_i_4_n_0\
    );
\current_sin_36_fu_600_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \current_sin_36_fu_600_carry__0_n_0\,
      CO(3) => \current_sin_36_fu_600_carry__1_n_0\,
      CO(2) => \current_sin_36_fu_600_carry__1_n_1\,
      CO(1) => \current_sin_36_fu_600_carry__1_n_2\,
      CO(0) => \current_sin_36_fu_600_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => current_sin_36_load_reg_299(11 downto 8),
      O(3) => \current_sin_36_fu_600_carry__1_n_4\,
      O(2) => \current_sin_36_fu_600_carry__1_n_5\,
      O(1) => \current_sin_36_fu_600_carry__1_n_6\,
      O(0) => \current_sin_36_fu_600_carry__1_n_7\,
      S(3) => \current_sin_36_fu_600_carry__1_i_1_n_0\,
      S(2) => \current_sin_36_fu_600_carry__1_i_2_n_0\,
      S(1) => \current_sin_36_fu_600_carry__1_i_3_n_0\,
      S(0) => \current_sin_36_fu_600_carry__1_i_4_n_0\
    );
\current_sin_36_fu_600_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => current_sin_36_load_reg_299(11),
      I1 => cos_shift_reg_305(11),
      I2 => current_sin_36_load_reg_299(21),
      O => \current_sin_36_fu_600_carry__1_i_1_n_0\
    );
\current_sin_36_fu_600_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => current_sin_36_load_reg_299(10),
      I1 => cos_shift_reg_305(10),
      I2 => current_sin_36_load_reg_299(21),
      O => \current_sin_36_fu_600_carry__1_i_2_n_0\
    );
\current_sin_36_fu_600_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => current_sin_36_load_reg_299(9),
      I1 => cos_shift_reg_305(9),
      I2 => current_sin_36_load_reg_299(21),
      O => \current_sin_36_fu_600_carry__1_i_3_n_0\
    );
\current_sin_36_fu_600_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => current_sin_36_load_reg_299(8),
      I1 => cos_shift_reg_305(8),
      I2 => current_sin_36_load_reg_299(21),
      O => \current_sin_36_fu_600_carry__1_i_4_n_0\
    );
\current_sin_36_fu_600_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \current_sin_36_fu_600_carry__1_n_0\,
      CO(3) => \current_sin_36_fu_600_carry__2_n_0\,
      CO(2) => \current_sin_36_fu_600_carry__2_n_1\,
      CO(1) => \current_sin_36_fu_600_carry__2_n_2\,
      CO(0) => \current_sin_36_fu_600_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => current_sin_36_load_reg_299(15 downto 12),
      O(3) => \current_sin_36_fu_600_carry__2_n_4\,
      O(2) => \current_sin_36_fu_600_carry__2_n_5\,
      O(1) => \current_sin_36_fu_600_carry__2_n_6\,
      O(0) => \current_sin_36_fu_600_carry__2_n_7\,
      S(3) => \current_sin_36_fu_600_carry__2_i_1_n_0\,
      S(2) => \current_sin_36_fu_600_carry__2_i_2_n_0\,
      S(1) => \current_sin_36_fu_600_carry__2_i_3_n_0\,
      S(0) => \current_sin_36_fu_600_carry__2_i_4_n_0\
    );
\current_sin_36_fu_600_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => current_sin_36_load_reg_299(15),
      I1 => cos_shift_reg_305(15),
      I2 => current_sin_36_load_reg_299(21),
      O => \current_sin_36_fu_600_carry__2_i_1_n_0\
    );
\current_sin_36_fu_600_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => current_sin_36_load_reg_299(14),
      I1 => cos_shift_reg_305(14),
      I2 => current_sin_36_load_reg_299(21),
      O => \current_sin_36_fu_600_carry__2_i_2_n_0\
    );
\current_sin_36_fu_600_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => current_sin_36_load_reg_299(13),
      I1 => cos_shift_reg_305(13),
      I2 => current_sin_36_load_reg_299(21),
      O => \current_sin_36_fu_600_carry__2_i_3_n_0\
    );
\current_sin_36_fu_600_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => current_sin_36_load_reg_299(12),
      I1 => cos_shift_reg_305(12),
      I2 => current_sin_36_load_reg_299(21),
      O => \current_sin_36_fu_600_carry__2_i_4_n_0\
    );
\current_sin_36_fu_600_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \current_sin_36_fu_600_carry__2_n_0\,
      CO(3) => \current_sin_36_fu_600_carry__3_n_0\,
      CO(2) => \current_sin_36_fu_600_carry__3_n_1\,
      CO(1) => \current_sin_36_fu_600_carry__3_n_2\,
      CO(0) => \current_sin_36_fu_600_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => current_sin_36_load_reg_299(19 downto 16),
      O(3) => \current_sin_36_fu_600_carry__3_n_4\,
      O(2) => \current_sin_36_fu_600_carry__3_n_5\,
      O(1) => \current_sin_36_fu_600_carry__3_n_6\,
      O(0) => \current_sin_36_fu_600_carry__3_n_7\,
      S(3) => \current_sin_36_fu_600_carry__3_i_1_n_0\,
      S(2) => \current_sin_36_fu_600_carry__3_i_2_n_0\,
      S(1) => \current_sin_36_fu_600_carry__3_i_3_n_0\,
      S(0) => \current_sin_36_fu_600_carry__3_i_4_n_0\
    );
\current_sin_36_fu_600_carry__3_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => current_sin_36_load_reg_299(19),
      I1 => cos_shift_reg_305(19),
      I2 => current_sin_36_load_reg_299(21),
      O => \current_sin_36_fu_600_carry__3_i_1_n_0\
    );
\current_sin_36_fu_600_carry__3_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => current_sin_36_load_reg_299(18),
      I1 => cos_shift_reg_305(18),
      I2 => current_sin_36_load_reg_299(21),
      O => \current_sin_36_fu_600_carry__3_i_2_n_0\
    );
\current_sin_36_fu_600_carry__3_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => current_sin_36_load_reg_299(17),
      I1 => cos_shift_reg_305(17),
      I2 => current_sin_36_load_reg_299(21),
      O => \current_sin_36_fu_600_carry__3_i_3_n_0\
    );
\current_sin_36_fu_600_carry__3_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => current_sin_36_load_reg_299(16),
      I1 => cos_shift_reg_305(16),
      I2 => current_sin_36_load_reg_299(21),
      O => \current_sin_36_fu_600_carry__3_i_4_n_0\
    );
\current_sin_36_fu_600_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \current_sin_36_fu_600_carry__3_n_0\,
      CO(3 downto 1) => \NLW_current_sin_36_fu_600_carry__4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \current_sin_36_fu_600_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => current_sin_36_load_reg_299(20),
      O(3 downto 2) => \NLW_current_sin_36_fu_600_carry__4_O_UNCONNECTED\(3 downto 2),
      O(1) => \current_sin_36_fu_600_carry__4_n_6\,
      O(0) => \current_sin_36_fu_600_carry__4_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \current_sin_36_fu_600_carry__4_i_1_n_0\,
      S(0) => \current_sin_36_fu_600_carry__4_i_2_n_0\
    );
\current_sin_36_fu_600_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => current_cos_34_load_reg_293(21),
      O => \current_sin_36_fu_600_carry__4_i_1_n_0\
    );
\current_sin_36_fu_600_carry__4_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => current_sin_36_load_reg_299(20),
      I1 => cos_shift_reg_305(20),
      I2 => current_sin_36_load_reg_299(21),
      O => \current_sin_36_fu_600_carry__4_i_2_n_0\
    );
current_sin_36_fu_600_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => current_sin_36_load_reg_299(21),
      O => current_sin_36_fu_600_carry_i_1_n_0
    );
current_sin_36_fu_600_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => current_sin_36_load_reg_299(3),
      I1 => cos_shift_reg_305(3),
      I2 => current_sin_36_load_reg_299(21),
      O => current_sin_36_fu_600_carry_i_2_n_0
    );
current_sin_36_fu_600_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => current_sin_36_load_reg_299(2),
      I1 => cos_shift_reg_305(2),
      I2 => current_sin_36_load_reg_299(21),
      O => current_sin_36_fu_600_carry_i_3_n_0
    );
current_sin_36_fu_600_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => current_sin_36_load_reg_299(1),
      I1 => cos_shift_reg_305(1),
      I2 => current_sin_36_load_reg_299(21),
      O => current_sin_36_fu_600_carry_i_4_n_0
    );
current_sin_36_fu_600_carry_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => current_sin_36_load_reg_299(0),
      I1 => cos_shift_reg_305(0),
      I2 => current_sin_36_load_reg_299(21),
      O => current_sin_36_fu_600_carry_i_5_n_0
    );
\current_sin_36_fu_60_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_49,
      Q => \current_sin_36_fu_60_reg_n_0_[0]\,
      R => '0'
    );
\current_sin_36_fu_60_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_39,
      Q => \current_sin_36_fu_60_reg_n_0_[10]\,
      R => '0'
    );
\current_sin_36_fu_60_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_38,
      Q => \current_sin_36_fu_60_reg_n_0_[11]\,
      R => '0'
    );
\current_sin_36_fu_60_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_37,
      Q => \current_sin_36_fu_60_reg_n_0_[12]\,
      R => '0'
    );
\current_sin_36_fu_60_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_36,
      Q => \current_sin_36_fu_60_reg_n_0_[13]\,
      R => '0'
    );
\current_sin_36_fu_60_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_35,
      Q => \current_sin_36_fu_60_reg_n_0_[14]\,
      R => '0'
    );
\current_sin_36_fu_60_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_34,
      Q => \current_sin_36_fu_60_reg_n_0_[15]\,
      R => '0'
    );
\current_sin_36_fu_60_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_33,
      Q => \current_sin_36_fu_60_reg_n_0_[16]\,
      R => '0'
    );
\current_sin_36_fu_60_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_32,
      Q => \current_sin_36_fu_60_reg_n_0_[17]\,
      R => '0'
    );
\current_sin_36_fu_60_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_31,
      Q => \current_sin_36_fu_60_reg_n_0_[18]\,
      R => '0'
    );
\current_sin_36_fu_60_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_30,
      Q => \current_sin_36_fu_60_reg_n_0_[19]\,
      R => '0'
    );
\current_sin_36_fu_60_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_48,
      Q => \current_sin_36_fu_60_reg_n_0_[1]\,
      R => '0'
    );
\current_sin_36_fu_60_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_29,
      Q => \current_sin_36_fu_60_reg_n_0_[20]\,
      R => '0'
    );
\current_sin_36_fu_60_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_28,
      Q => p_0_in,
      R => '0'
    );
\current_sin_36_fu_60_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_47,
      Q => \current_sin_36_fu_60_reg_n_0_[2]\,
      R => '0'
    );
\current_sin_36_fu_60_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_46,
      Q => \current_sin_36_fu_60_reg_n_0_[3]\,
      R => '0'
    );
\current_sin_36_fu_60_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_45,
      Q => \current_sin_36_fu_60_reg_n_0_[4]\,
      R => '0'
    );
\current_sin_36_fu_60_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_44,
      Q => \current_sin_36_fu_60_reg_n_0_[5]\,
      R => '0'
    );
\current_sin_36_fu_60_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_43,
      Q => \current_sin_36_fu_60_reg_n_0_[6]\,
      R => '0'
    );
\current_sin_36_fu_60_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_42,
      Q => \current_sin_36_fu_60_reg_n_0_[7]\,
      R => '0'
    );
\current_sin_36_fu_60_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_41,
      Q => \current_sin_36_fu_60_reg_n_0_[8]\,
      R => '0'
    );
\current_sin_36_fu_60_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_40,
      Q => \current_sin_36_fu_60_reg_n_0_[9]\,
      R => '0'
    );
\current_sin_36_load_reg_299_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => \current_sin_36_fu_60_reg_n_0_[0]\,
      Q => current_sin_36_load_reg_299(0),
      R => '0'
    );
\current_sin_36_load_reg_299_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => \current_sin_36_fu_60_reg_n_0_[10]\,
      Q => current_sin_36_load_reg_299(10),
      R => '0'
    );
\current_sin_36_load_reg_299_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => \current_sin_36_fu_60_reg_n_0_[11]\,
      Q => current_sin_36_load_reg_299(11),
      R => '0'
    );
\current_sin_36_load_reg_299_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => \current_sin_36_fu_60_reg_n_0_[12]\,
      Q => current_sin_36_load_reg_299(12),
      R => '0'
    );
\current_sin_36_load_reg_299_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => \current_sin_36_fu_60_reg_n_0_[13]\,
      Q => current_sin_36_load_reg_299(13),
      R => '0'
    );
\current_sin_36_load_reg_299_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => \current_sin_36_fu_60_reg_n_0_[14]\,
      Q => current_sin_36_load_reg_299(14),
      R => '0'
    );
\current_sin_36_load_reg_299_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => \current_sin_36_fu_60_reg_n_0_[15]\,
      Q => current_sin_36_load_reg_299(15),
      R => '0'
    );
\current_sin_36_load_reg_299_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => \current_sin_36_fu_60_reg_n_0_[16]\,
      Q => current_sin_36_load_reg_299(16),
      R => '0'
    );
\current_sin_36_load_reg_299_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => \current_sin_36_fu_60_reg_n_0_[17]\,
      Q => current_sin_36_load_reg_299(17),
      R => '0'
    );
\current_sin_36_load_reg_299_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => \current_sin_36_fu_60_reg_n_0_[18]\,
      Q => current_sin_36_load_reg_299(18),
      R => '0'
    );
\current_sin_36_load_reg_299_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => \current_sin_36_fu_60_reg_n_0_[19]\,
      Q => current_sin_36_load_reg_299(19),
      R => '0'
    );
\current_sin_36_load_reg_299_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => \current_sin_36_fu_60_reg_n_0_[1]\,
      Q => current_sin_36_load_reg_299(1),
      R => '0'
    );
\current_sin_36_load_reg_299_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => \current_sin_36_fu_60_reg_n_0_[20]\,
      Q => current_sin_36_load_reg_299(20),
      R => '0'
    );
\current_sin_36_load_reg_299_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => p_0_in,
      Q => current_sin_36_load_reg_299(21),
      R => '0'
    );
\current_sin_36_load_reg_299_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => \current_sin_36_fu_60_reg_n_0_[2]\,
      Q => current_sin_36_load_reg_299(2),
      R => '0'
    );
\current_sin_36_load_reg_299_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => \current_sin_36_fu_60_reg_n_0_[3]\,
      Q => current_sin_36_load_reg_299(3),
      R => '0'
    );
\current_sin_36_load_reg_299_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => \current_sin_36_fu_60_reg_n_0_[4]\,
      Q => current_sin_36_load_reg_299(4),
      R => '0'
    );
\current_sin_36_load_reg_299_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => \current_sin_36_fu_60_reg_n_0_[5]\,
      Q => current_sin_36_load_reg_299(5),
      R => '0'
    );
\current_sin_36_load_reg_299_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => \current_sin_36_fu_60_reg_n_0_[6]\,
      Q => current_sin_36_load_reg_299(6),
      R => '0'
    );
\current_sin_36_load_reg_299_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => \current_sin_36_fu_60_reg_n_0_[7]\,
      Q => current_sin_36_load_reg_299(7),
      R => '0'
    );
\current_sin_36_load_reg_299_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => \current_sin_36_fu_60_reg_n_0_[8]\,
      Q => current_sin_36_load_reg_299(8),
      R => '0'
    );
\current_sin_36_load_reg_299_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => \current_sin_36_fu_60_reg_n_0_[9]\,
      Q => current_sin_36_load_reg_299(9),
      R => '0'
    );
flow_control_loop_pipe_sequential_init_U: entity work.design_1_cordiccart2pol_0_0_cordiccart2pol_flow_control_loop_pipe_sequential_init
     port map (
      D(21) => flow_control_loop_pipe_sequential_init_U_n_6,
      D(20) => flow_control_loop_pipe_sequential_init_U_n_7,
      D(19) => flow_control_loop_pipe_sequential_init_U_n_8,
      D(18) => flow_control_loop_pipe_sequential_init_U_n_9,
      D(17) => flow_control_loop_pipe_sequential_init_U_n_10,
      D(16) => flow_control_loop_pipe_sequential_init_U_n_11,
      D(15) => flow_control_loop_pipe_sequential_init_U_n_12,
      D(14) => flow_control_loop_pipe_sequential_init_U_n_13,
      D(13) => flow_control_loop_pipe_sequential_init_U_n_14,
      D(12) => flow_control_loop_pipe_sequential_init_U_n_15,
      D(11) => flow_control_loop_pipe_sequential_init_U_n_16,
      D(10) => flow_control_loop_pipe_sequential_init_U_n_17,
      D(9) => flow_control_loop_pipe_sequential_init_U_n_18,
      D(8) => flow_control_loop_pipe_sequential_init_U_n_19,
      D(7) => flow_control_loop_pipe_sequential_init_U_n_20,
      D(6) => flow_control_loop_pipe_sequential_init_U_n_21,
      D(5) => flow_control_loop_pipe_sequential_init_U_n_22,
      D(4) => flow_control_loop_pipe_sequential_init_U_n_23,
      D(3) => flow_control_loop_pipe_sequential_init_U_n_24,
      D(2) => flow_control_loop_pipe_sequential_init_U_n_25,
      D(1) => flow_control_loop_pipe_sequential_init_U_n_26,
      D(0) => flow_control_loop_pipe_sequential_init_U_n_27,
      E(0) => current_cos_34_fu_56_0,
      O(1) => \current_sin_36_fu_600_carry__4_n_6\,
      O(0) => \current_sin_36_fu_600_carry__4_n_7\,
      Q(1) => ap_CS_fsm_pp0_stage1,
      Q(0) => \ap_CS_fsm_reg_n_0_[0]\,
      SR(0) => SR(0),
      \ap_CS_fsm_reg[0]\(0) => flow_control_loop_pipe_sequential_init_U_n_5,
      \ap_CS_fsm_reg[1]\(0) => \ap_CS_fsm_reg[1]_0\(0),
      \ap_CS_fsm_reg[2]\(0) => Q(0),
      \ap_CS_fsm_reg[2]_0\(3 downto 0) => i1_load_reg_287(3 downto 0),
      ap_NS_fsm1 => ap_NS_fsm1,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0_reg => ap_enable_reg_pp0_iter0_reg,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_enable_reg_pp0_iter1_reg => \^grp_cordiccart2pol_pipeline_vitis_loop_80_1_fu_104_ap_ready\,
      ap_loop_init_int => ap_loop_init_int,
      ap_rst_n => ap_rst_n,
      \current_cos_34_fu_56_reg[21]\(21 downto 0) => \current_cos_34_fu_56_reg[21]_0\(21 downto 0),
      \current_cos_34_fu_56_reg[21]_0\(21 downto 0) => \^d\(21 downto 0),
      \current_sin_36_fu_60_reg[11]\(3) => \current_sin_36_fu_600_carry__1_n_4\,
      \current_sin_36_fu_60_reg[11]\(2) => \current_sin_36_fu_600_carry__1_n_5\,
      \current_sin_36_fu_60_reg[11]\(1) => \current_sin_36_fu_600_carry__1_n_6\,
      \current_sin_36_fu_60_reg[11]\(0) => \current_sin_36_fu_600_carry__1_n_7\,
      \current_sin_36_fu_60_reg[15]\(3) => \current_sin_36_fu_600_carry__2_n_4\,
      \current_sin_36_fu_60_reg[15]\(2) => \current_sin_36_fu_600_carry__2_n_5\,
      \current_sin_36_fu_60_reg[15]\(1) => \current_sin_36_fu_600_carry__2_n_6\,
      \current_sin_36_fu_60_reg[15]\(0) => \current_sin_36_fu_600_carry__2_n_7\,
      \current_sin_36_fu_60_reg[19]\(3) => \current_sin_36_fu_600_carry__3_n_4\,
      \current_sin_36_fu_60_reg[19]\(2) => \current_sin_36_fu_600_carry__3_n_5\,
      \current_sin_36_fu_60_reg[19]\(1) => \current_sin_36_fu_600_carry__3_n_6\,
      \current_sin_36_fu_60_reg[19]\(0) => \current_sin_36_fu_600_carry__3_n_7\,
      \current_sin_36_fu_60_reg[21]\(21 downto 0) => \current_sin_36_fu_60_reg[21]_0\(21 downto 0),
      \current_sin_36_fu_60_reg[3]\(3) => current_sin_36_fu_600_carry_n_4,
      \current_sin_36_fu_60_reg[3]\(2) => current_sin_36_fu_600_carry_n_5,
      \current_sin_36_fu_60_reg[3]\(1) => current_sin_36_fu_600_carry_n_6,
      \current_sin_36_fu_60_reg[3]\(0) => current_sin_36_fu_600_carry_n_7,
      \current_sin_36_fu_60_reg[7]\(3) => \current_sin_36_fu_600_carry__0_n_4\,
      \current_sin_36_fu_60_reg[7]\(2) => \current_sin_36_fu_600_carry__0_n_5\,
      \current_sin_36_fu_60_reg[7]\(1) => \current_sin_36_fu_600_carry__0_n_6\,
      \current_sin_36_fu_60_reg[7]\(0) => \current_sin_36_fu_600_carry__0_n_7\,
      current_sin_36_load_reg_299(0) => current_sin_36_load_reg_299(21),
      grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      select_ln75_reg_224(1 downto 0) => select_ln75_reg_224(1 downto 0),
      \theta_temp2_fu_52_reg[11]\(3) => angles_U_n_27,
      \theta_temp2_fu_52_reg[11]\(2) => angles_U_n_28,
      \theta_temp2_fu_52_reg[11]\(1) => angles_U_n_29,
      \theta_temp2_fu_52_reg[11]\(0) => angles_U_n_30,
      \theta_temp2_fu_52_reg[15]\(3) => angles_U_n_31,
      \theta_temp2_fu_52_reg[15]\(2) => angles_U_n_32,
      \theta_temp2_fu_52_reg[15]\(1) => angles_U_n_33,
      \theta_temp2_fu_52_reg[15]\(0) => angles_U_n_34,
      \theta_temp2_fu_52_reg[19]\(2) => angles_U_n_35,
      \theta_temp2_fu_52_reg[19]\(1) => angles_U_n_36,
      \theta_temp2_fu_52_reg[19]\(0) => angles_U_n_37,
      \theta_temp2_fu_52_reg[20]\(21) => flow_control_loop_pipe_sequential_init_U_n_50,
      \theta_temp2_fu_52_reg[20]\(20) => flow_control_loop_pipe_sequential_init_U_n_51,
      \theta_temp2_fu_52_reg[20]\(19) => flow_control_loop_pipe_sequential_init_U_n_52,
      \theta_temp2_fu_52_reg[20]\(18) => flow_control_loop_pipe_sequential_init_U_n_53,
      \theta_temp2_fu_52_reg[20]\(17) => flow_control_loop_pipe_sequential_init_U_n_54,
      \theta_temp2_fu_52_reg[20]\(16) => flow_control_loop_pipe_sequential_init_U_n_55,
      \theta_temp2_fu_52_reg[20]\(15) => flow_control_loop_pipe_sequential_init_U_n_56,
      \theta_temp2_fu_52_reg[20]\(14) => flow_control_loop_pipe_sequential_init_U_n_57,
      \theta_temp2_fu_52_reg[20]\(13) => flow_control_loop_pipe_sequential_init_U_n_58,
      \theta_temp2_fu_52_reg[20]\(12) => flow_control_loop_pipe_sequential_init_U_n_59,
      \theta_temp2_fu_52_reg[20]\(11) => flow_control_loop_pipe_sequential_init_U_n_60,
      \theta_temp2_fu_52_reg[20]\(10) => flow_control_loop_pipe_sequential_init_U_n_61,
      \theta_temp2_fu_52_reg[20]\(9) => flow_control_loop_pipe_sequential_init_U_n_62,
      \theta_temp2_fu_52_reg[20]\(8) => flow_control_loop_pipe_sequential_init_U_n_63,
      \theta_temp2_fu_52_reg[20]\(7) => flow_control_loop_pipe_sequential_init_U_n_64,
      \theta_temp2_fu_52_reg[20]\(6) => flow_control_loop_pipe_sequential_init_U_n_65,
      \theta_temp2_fu_52_reg[20]\(5) => flow_control_loop_pipe_sequential_init_U_n_66,
      \theta_temp2_fu_52_reg[20]\(4) => flow_control_loop_pipe_sequential_init_U_n_67,
      \theta_temp2_fu_52_reg[20]\(3) => flow_control_loop_pipe_sequential_init_U_n_68,
      \theta_temp2_fu_52_reg[20]\(2) => flow_control_loop_pipe_sequential_init_U_n_69,
      \theta_temp2_fu_52_reg[20]\(1) => flow_control_loop_pipe_sequential_init_U_n_70,
      \theta_temp2_fu_52_reg[20]\(0) => flow_control_loop_pipe_sequential_init_U_n_71,
      \theta_temp2_fu_52_reg[21]\(21) => \theta_temp2_fu_52_reg_n_0_[21]\,
      \theta_temp2_fu_52_reg[21]\(20) => \theta_temp2_fu_52_reg_n_0_[20]\,
      \theta_temp2_fu_52_reg[21]\(19) => \theta_temp2_fu_52_reg_n_0_[19]\,
      \theta_temp2_fu_52_reg[21]\(18) => \theta_temp2_fu_52_reg_n_0_[18]\,
      \theta_temp2_fu_52_reg[21]\(17) => \theta_temp2_fu_52_reg_n_0_[17]\,
      \theta_temp2_fu_52_reg[21]\(16) => \theta_temp2_fu_52_reg_n_0_[16]\,
      \theta_temp2_fu_52_reg[21]\(15) => \theta_temp2_fu_52_reg_n_0_[15]\,
      \theta_temp2_fu_52_reg[21]\(14) => \theta_temp2_fu_52_reg_n_0_[14]\,
      \theta_temp2_fu_52_reg[21]\(13) => \theta_temp2_fu_52_reg_n_0_[13]\,
      \theta_temp2_fu_52_reg[21]\(12) => \theta_temp2_fu_52_reg_n_0_[12]\,
      \theta_temp2_fu_52_reg[21]\(11) => \theta_temp2_fu_52_reg_n_0_[11]\,
      \theta_temp2_fu_52_reg[21]\(10) => \theta_temp2_fu_52_reg_n_0_[10]\,
      \theta_temp2_fu_52_reg[21]\(9) => \theta_temp2_fu_52_reg_n_0_[9]\,
      \theta_temp2_fu_52_reg[21]\(8) => \theta_temp2_fu_52_reg_n_0_[8]\,
      \theta_temp2_fu_52_reg[21]\(7) => \theta_temp2_fu_52_reg_n_0_[7]\,
      \theta_temp2_fu_52_reg[21]\(6) => \theta_temp2_fu_52_reg_n_0_[6]\,
      \theta_temp2_fu_52_reg[21]\(5) => \theta_temp2_fu_52_reg_n_0_[5]\,
      \theta_temp2_fu_52_reg[21]\(4) => \theta_temp2_fu_52_reg_n_0_[4]\,
      \theta_temp2_fu_52_reg[21]\(3) => \theta_temp2_fu_52_reg_n_0_[3]\,
      \theta_temp2_fu_52_reg[21]\(2) => \theta_temp2_fu_52_reg_n_0_[2]\,
      \theta_temp2_fu_52_reg[21]\(1) => \theta_temp2_fu_52_reg_n_0_[1]\,
      \theta_temp2_fu_52_reg[21]\(0) => \theta_temp2_fu_52_reg_n_0_[0]\,
      \theta_temp2_fu_52_reg[3]\(2) => angles_U_n_20,
      \theta_temp2_fu_52_reg[3]\(1) => angles_U_n_21,
      \theta_temp2_fu_52_reg[3]\(0) => angles_U_n_22,
      \theta_temp2_fu_52_reg[3]_0\ => angles_U_n_19,
      \theta_temp2_fu_52_reg[7]\(3) => angles_U_n_23,
      \theta_temp2_fu_52_reg[7]\(2) => angles_U_n_24,
      \theta_temp2_fu_52_reg[7]\(1) => angles_U_n_25,
      \theta_temp2_fu_52_reg[7]\(0) => angles_U_n_26,
      \x_2_reg_234_reg[21]\(21) => flow_control_loop_pipe_sequential_init_U_n_28,
      \x_2_reg_234_reg[21]\(20) => flow_control_loop_pipe_sequential_init_U_n_29,
      \x_2_reg_234_reg[21]\(19) => flow_control_loop_pipe_sequential_init_U_n_30,
      \x_2_reg_234_reg[21]\(18) => flow_control_loop_pipe_sequential_init_U_n_31,
      \x_2_reg_234_reg[21]\(17) => flow_control_loop_pipe_sequential_init_U_n_32,
      \x_2_reg_234_reg[21]\(16) => flow_control_loop_pipe_sequential_init_U_n_33,
      \x_2_reg_234_reg[21]\(15) => flow_control_loop_pipe_sequential_init_U_n_34,
      \x_2_reg_234_reg[21]\(14) => flow_control_loop_pipe_sequential_init_U_n_35,
      \x_2_reg_234_reg[21]\(13) => flow_control_loop_pipe_sequential_init_U_n_36,
      \x_2_reg_234_reg[21]\(12) => flow_control_loop_pipe_sequential_init_U_n_37,
      \x_2_reg_234_reg[21]\(11) => flow_control_loop_pipe_sequential_init_U_n_38,
      \x_2_reg_234_reg[21]\(10) => flow_control_loop_pipe_sequential_init_U_n_39,
      \x_2_reg_234_reg[21]\(9) => flow_control_loop_pipe_sequential_init_U_n_40,
      \x_2_reg_234_reg[21]\(8) => flow_control_loop_pipe_sequential_init_U_n_41,
      \x_2_reg_234_reg[21]\(7) => flow_control_loop_pipe_sequential_init_U_n_42,
      \x_2_reg_234_reg[21]\(6) => flow_control_loop_pipe_sequential_init_U_n_43,
      \x_2_reg_234_reg[21]\(5) => flow_control_loop_pipe_sequential_init_U_n_44,
      \x_2_reg_234_reg[21]\(4) => flow_control_loop_pipe_sequential_init_U_n_45,
      \x_2_reg_234_reg[21]\(3) => flow_control_loop_pipe_sequential_init_U_n_46,
      \x_2_reg_234_reg[21]\(2) => flow_control_loop_pipe_sequential_init_U_n_47,
      \x_2_reg_234_reg[21]\(1) => flow_control_loop_pipe_sequential_init_U_n_48,
      \x_2_reg_234_reg[21]\(0) => flow_control_loop_pipe_sequential_init_U_n_49
    );
\i1_fu_48[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i1_load_reg_287(0),
      O => i_fu_229_p2(0)
    );
\i1_fu_48[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i1_load_reg_287(0),
      I1 => i1_load_reg_287(1),
      O => i_fu_229_p2(1)
    );
\i1_fu_48[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => i1_load_reg_287(1),
      I1 => i1_load_reg_287(0),
      I2 => i1_load_reg_287(2),
      O => i_fu_229_p2(2)
    );
\i1_fu_48[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => ap_enable_reg_pp0_iter1,
      O => i1_fu_48
    );
\i1_fu_48[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => i1_load_reg_287(0),
      I1 => i1_load_reg_287(1),
      I2 => i1_load_reg_287(2),
      I3 => i1_load_reg_287(3),
      O => i_fu_229_p2(3)
    );
\i1_fu_48_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i1_fu_48,
      D => i_fu_229_p2(0),
      Q => \i1_fu_48_reg_n_0_[0]\,
      R => flow_control_loop_pipe_sequential_init_U_n_5
    );
\i1_fu_48_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i1_fu_48,
      D => i_fu_229_p2(1),
      Q => \i1_fu_48_reg_n_0_[1]\,
      R => flow_control_loop_pipe_sequential_init_U_n_5
    );
\i1_fu_48_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i1_fu_48,
      D => i_fu_229_p2(2),
      Q => \i1_fu_48_reg_n_0_[2]\,
      R => flow_control_loop_pipe_sequential_init_U_n_5
    );
\i1_fu_48_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i1_fu_48,
      D => i_fu_229_p2(3),
      Q => \i1_fu_48_reg_n_0_[3]\,
      R => flow_control_loop_pipe_sequential_init_U_n_5
    );
\i1_load_reg_287_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => \i1_fu_48_reg_n_0_[0]\,
      Q => i1_load_reg_287(0),
      R => '0'
    );
\i1_load_reg_287_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => \i1_fu_48_reg_n_0_[1]\,
      Q => i1_load_reg_287(1),
      R => '0'
    );
\i1_load_reg_287_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => \i1_fu_48_reg_n_0_[2]\,
      Q => i1_load_reg_287(2),
      R => '0'
    );
\i1_load_reg_287_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => \i1_fu_48_reg_n_0_[3]\,
      Q => i1_load_reg_287(3),
      R => '0'
    );
\i__carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg_n_0_[19]\,
      I1 => current_sin_36_load_reg_299(21),
      O => \i__carry__3_i_1_n_0\
    );
\i__carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg_n_0_[20]\,
      I1 => \theta_temp2_fu_52_reg_n_0_[21]\,
      O => \i__carry__4_i_1_n_0\
    );
\i__carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \theta_temp2_fu_52_reg_n_0_[19]\,
      I1 => \theta_temp2_fu_52_reg_n_0_[20]\,
      O => \i__carry__4_i_2_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => current_sin_36_load_reg_299(21),
      O => \i__carry_i_1_n_0\
    );
\sin_shift_reg_311[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB833B8CCB800"
    )
        port map (
      I0 => \sin_shift_reg_311[3]_i_2_n_0\,
      I1 => \i1_fu_48_reg_n_0_[1]\,
      I2 => \sin_shift_reg_311[1]_i_2_n_0\,
      I3 => \i1_fu_48_reg_n_0_[0]\,
      I4 => \sin_shift_reg_311[2]_i_2_n_0\,
      I5 => \sin_shift_reg_311[0]_i_2_n_0\,
      O => sin_shift_fu_157_p2(0)
    );
\sin_shift_reg_311[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \current_sin_36_fu_60_reg_n_0_[12]\,
      I1 => \current_sin_36_fu_60_reg_n_0_[4]\,
      I2 => \i1_fu_48_reg_n_0_[2]\,
      I3 => \current_sin_36_fu_60_reg_n_0_[8]\,
      I4 => \i1_fu_48_reg_n_0_[3]\,
      I5 => \current_sin_36_fu_60_reg_n_0_[0]\,
      O => \sin_shift_reg_311[0]_i_2_n_0\
    );
\sin_shift_reg_311[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sin_shift_reg_311[13]_i_3_n_0\,
      I1 => \sin_shift_reg_311[11]_i_2_n_0\,
      I2 => \i1_fu_48_reg_n_0_[0]\,
      I3 => \sin_shift_reg_311[12]_i_2_n_0\,
      I4 => \i1_fu_48_reg_n_0_[1]\,
      I5 => \sin_shift_reg_311[10]_i_2_n_0\,
      O => sin_shift_fu_157_p2(10)
    );
\sin_shift_reg_311[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in,
      I1 => \current_sin_36_fu_60_reg_n_0_[14]\,
      I2 => \i1_fu_48_reg_n_0_[2]\,
      I3 => \current_sin_36_fu_60_reg_n_0_[18]\,
      I4 => \i1_fu_48_reg_n_0_[3]\,
      I5 => \current_sin_36_fu_60_reg_n_0_[10]\,
      O => \sin_shift_reg_311[10]_i_2_n_0\
    );
\sin_shift_reg_311[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sin_shift_reg_311[14]_i_3_n_0\,
      I1 => \sin_shift_reg_311[12]_i_2_n_0\,
      I2 => \i1_fu_48_reg_n_0_[0]\,
      I3 => \sin_shift_reg_311[13]_i_3_n_0\,
      I4 => \i1_fu_48_reg_n_0_[1]\,
      I5 => \sin_shift_reg_311[11]_i_2_n_0\,
      O => sin_shift_fu_157_p2(11)
    );
\sin_shift_reg_311[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in,
      I1 => \current_sin_36_fu_60_reg_n_0_[15]\,
      I2 => \i1_fu_48_reg_n_0_[2]\,
      I3 => \current_sin_36_fu_60_reg_n_0_[19]\,
      I4 => \i1_fu_48_reg_n_0_[3]\,
      I5 => \current_sin_36_fu_60_reg_n_0_[11]\,
      O => \sin_shift_reg_311[11]_i_2_n_0\
    );
\sin_shift_reg_311[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sin_shift_reg_311[13]_i_2_n_0\,
      I1 => \sin_shift_reg_311[13]_i_3_n_0\,
      I2 => \i1_fu_48_reg_n_0_[0]\,
      I3 => \sin_shift_reg_311[14]_i_3_n_0\,
      I4 => \i1_fu_48_reg_n_0_[1]\,
      I5 => \sin_shift_reg_311[12]_i_2_n_0\,
      O => sin_shift_fu_157_p2(12)
    );
\sin_shift_reg_311[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in,
      I1 => \current_sin_36_fu_60_reg_n_0_[16]\,
      I2 => \i1_fu_48_reg_n_0_[2]\,
      I3 => \current_sin_36_fu_60_reg_n_0_[20]\,
      I4 => \i1_fu_48_reg_n_0_[3]\,
      I5 => \current_sin_36_fu_60_reg_n_0_[12]\,
      O => \sin_shift_reg_311[12]_i_2_n_0\
    );
\sin_shift_reg_311[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sin_shift_reg_311[14]_i_2_n_0\,
      I1 => \sin_shift_reg_311[14]_i_3_n_0\,
      I2 => \i1_fu_48_reg_n_0_[0]\,
      I3 => \sin_shift_reg_311[13]_i_2_n_0\,
      I4 => \i1_fu_48_reg_n_0_[1]\,
      I5 => \sin_shift_reg_311[13]_i_3_n_0\,
      O => sin_shift_fu_157_p2(13)
    );
\sin_shift_reg_311[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => \current_sin_36_fu_60_reg_n_0_[19]\,
      I1 => \i1_fu_48_reg_n_0_[2]\,
      I2 => p_0_in,
      I3 => \i1_fu_48_reg_n_0_[3]\,
      I4 => \current_sin_36_fu_60_reg_n_0_[15]\,
      O => \sin_shift_reg_311[13]_i_2_n_0\
    );
\sin_shift_reg_311[13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => \current_sin_36_fu_60_reg_n_0_[17]\,
      I1 => \i1_fu_48_reg_n_0_[2]\,
      I2 => p_0_in,
      I3 => \i1_fu_48_reg_n_0_[3]\,
      I4 => \current_sin_36_fu_60_reg_n_0_[13]\,
      O => \sin_shift_reg_311[13]_i_3_n_0\
    );
\sin_shift_reg_311[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => \sin_shift_reg_311[14]_i_2_n_0\,
      I1 => \i1_fu_48_reg_n_0_[1]\,
      I2 => \sin_shift_reg_311[14]_i_3_n_0\,
      I3 => \sin_shift_reg_311[15]_i_2_n_0\,
      I4 => \i1_fu_48_reg_n_0_[0]\,
      O => sin_shift_fu_157_p2(14)
    );
\sin_shift_reg_311[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => \current_sin_36_fu_60_reg_n_0_[20]\,
      I1 => \i1_fu_48_reg_n_0_[2]\,
      I2 => p_0_in,
      I3 => \i1_fu_48_reg_n_0_[3]\,
      I4 => \current_sin_36_fu_60_reg_n_0_[16]\,
      O => \sin_shift_reg_311[14]_i_2_n_0\
    );
\sin_shift_reg_311[14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => \current_sin_36_fu_60_reg_n_0_[18]\,
      I1 => \i1_fu_48_reg_n_0_[2]\,
      I2 => p_0_in,
      I3 => \i1_fu_48_reg_n_0_[3]\,
      I4 => \current_sin_36_fu_60_reg_n_0_[14]\,
      O => \sin_shift_reg_311[14]_i_3_n_0\
    );
\sin_shift_reg_311[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sin_shift_reg_311[16]_i_2_n_0\,
      I1 => \i1_fu_48_reg_n_0_[0]\,
      I2 => \sin_shift_reg_311[15]_i_2_n_0\,
      O => sin_shift_fu_157_p2(15)
    );
\sin_shift_reg_311[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8FFFFCDC80000"
    )
        port map (
      I0 => \i1_fu_48_reg_n_0_[2]\,
      I1 => p_0_in,
      I2 => \i1_fu_48_reg_n_0_[3]\,
      I3 => \current_sin_36_fu_60_reg_n_0_[17]\,
      I4 => \i1_fu_48_reg_n_0_[1]\,
      I5 => \sin_shift_reg_311[13]_i_2_n_0\,
      O => \sin_shift_reg_311[15]_i_2_n_0\
    );
\sin_shift_reg_311[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sin_shift_reg_311[17]_i_2_n_0\,
      I1 => \i1_fu_48_reg_n_0_[0]\,
      I2 => \sin_shift_reg_311[16]_i_2_n_0\,
      O => sin_shift_fu_157_p2(16)
    );
\sin_shift_reg_311[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8FFFFCDC80000"
    )
        port map (
      I0 => \i1_fu_48_reg_n_0_[2]\,
      I1 => p_0_in,
      I2 => \i1_fu_48_reg_n_0_[3]\,
      I3 => \current_sin_36_fu_60_reg_n_0_[18]\,
      I4 => \i1_fu_48_reg_n_0_[1]\,
      I5 => \sin_shift_reg_311[14]_i_2_n_0\,
      O => \sin_shift_reg_311[16]_i_2_n_0\
    );
\sin_shift_reg_311[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sin_shift_reg_311[18]_i_2_n_0\,
      I1 => \i1_fu_48_reg_n_0_[0]\,
      I2 => \sin_shift_reg_311[17]_i_2_n_0\,
      O => sin_shift_fu_157_p2(17)
    );
\sin_shift_reg_311[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => \current_sin_36_fu_60_reg_n_0_[19]\,
      I1 => \i1_fu_48_reg_n_0_[1]\,
      I2 => \i1_fu_48_reg_n_0_[2]\,
      I3 => p_0_in,
      I4 => \i1_fu_48_reg_n_0_[3]\,
      I5 => \current_sin_36_fu_60_reg_n_0_[17]\,
      O => \sin_shift_reg_311[17]_i_2_n_0\
    );
\sin_shift_reg_311[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sin_shift_reg_311[19]_i_3_n_0\,
      I1 => \i1_fu_48_reg_n_0_[0]\,
      I2 => \sin_shift_reg_311[18]_i_2_n_0\,
      O => sin_shift_fu_157_p2(18)
    );
\sin_shift_reg_311[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => \current_sin_36_fu_60_reg_n_0_[20]\,
      I1 => \i1_fu_48_reg_n_0_[1]\,
      I2 => \i1_fu_48_reg_n_0_[2]\,
      I3 => p_0_in,
      I4 => \i1_fu_48_reg_n_0_[3]\,
      I5 => \current_sin_36_fu_60_reg_n_0_[18]\,
      O => \sin_shift_reg_311[18]_i_2_n_0\
    );
\sin_shift_reg_311[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sin_shift_reg_311[19]_i_2_n_0\,
      I1 => \i1_fu_48_reg_n_0_[0]\,
      I2 => \sin_shift_reg_311[19]_i_3_n_0\,
      O => sin_shift_fu_157_p2(19)
    );
\sin_shift_reg_311[19]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => \i1_fu_48_reg_n_0_[1]\,
      I1 => \i1_fu_48_reg_n_0_[2]\,
      I2 => p_0_in,
      I3 => \i1_fu_48_reg_n_0_[3]\,
      I4 => \current_sin_36_fu_60_reg_n_0_[20]\,
      O => \sin_shift_reg_311[19]_i_2_n_0\
    );
\sin_shift_reg_311[19]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => \i1_fu_48_reg_n_0_[1]\,
      I1 => \i1_fu_48_reg_n_0_[2]\,
      I2 => p_0_in,
      I3 => \i1_fu_48_reg_n_0_[3]\,
      I4 => \current_sin_36_fu_60_reg_n_0_[19]\,
      O => \sin_shift_reg_311[19]_i_3_n_0\
    );
\sin_shift_reg_311[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FF33CC00"
    )
        port map (
      I0 => \sin_shift_reg_311[4]_i_2_n_0\,
      I1 => \i1_fu_48_reg_n_0_[1]\,
      I2 => \sin_shift_reg_311[2]_i_2_n_0\,
      I3 => \sin_shift_reg_311[3]_i_2_n_0\,
      I4 => \sin_shift_reg_311[1]_i_2_n_0\,
      I5 => \i1_fu_48_reg_n_0_[0]\,
      O => sin_shift_fu_157_p2(1)
    );
\sin_shift_reg_311[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \current_sin_36_fu_60_reg_n_0_[13]\,
      I1 => \current_sin_36_fu_60_reg_n_0_[5]\,
      I2 => \i1_fu_48_reg_n_0_[2]\,
      I3 => \current_sin_36_fu_60_reg_n_0_[9]\,
      I4 => \i1_fu_48_reg_n_0_[3]\,
      I5 => \current_sin_36_fu_60_reg_n_0_[1]\,
      O => \sin_shift_reg_311[1]_i_2_n_0\
    );
\sin_shift_reg_311[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF01FF00FE00"
    )
        port map (
      I0 => \i1_fu_48_reg_n_0_[0]\,
      I1 => \i1_fu_48_reg_n_0_[1]\,
      I2 => \i1_fu_48_reg_n_0_[2]\,
      I3 => p_0_in,
      I4 => \i1_fu_48_reg_n_0_[3]\,
      I5 => \current_sin_36_fu_60_reg_n_0_[20]\,
      O => sin_shift_fu_157_p2(20)
    );
\sin_shift_reg_311[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sin_shift_reg_311[5]_i_2_n_0\,
      I1 => \sin_shift_reg_311[3]_i_2_n_0\,
      I2 => \i1_fu_48_reg_n_0_[0]\,
      I3 => \sin_shift_reg_311[4]_i_2_n_0\,
      I4 => \i1_fu_48_reg_n_0_[1]\,
      I5 => \sin_shift_reg_311[2]_i_2_n_0\,
      O => sin_shift_fu_157_p2(2)
    );
\sin_shift_reg_311[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \current_sin_36_fu_60_reg_n_0_[14]\,
      I1 => \current_sin_36_fu_60_reg_n_0_[6]\,
      I2 => \i1_fu_48_reg_n_0_[2]\,
      I3 => \current_sin_36_fu_60_reg_n_0_[10]\,
      I4 => \i1_fu_48_reg_n_0_[3]\,
      I5 => \current_sin_36_fu_60_reg_n_0_[2]\,
      O => \sin_shift_reg_311[2]_i_2_n_0\
    );
\sin_shift_reg_311[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sin_shift_reg_311[6]_i_2_n_0\,
      I1 => \sin_shift_reg_311[4]_i_2_n_0\,
      I2 => \i1_fu_48_reg_n_0_[0]\,
      I3 => \sin_shift_reg_311[5]_i_2_n_0\,
      I4 => \i1_fu_48_reg_n_0_[1]\,
      I5 => \sin_shift_reg_311[3]_i_2_n_0\,
      O => sin_shift_fu_157_p2(3)
    );
\sin_shift_reg_311[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \current_sin_36_fu_60_reg_n_0_[15]\,
      I1 => \current_sin_36_fu_60_reg_n_0_[7]\,
      I2 => \i1_fu_48_reg_n_0_[2]\,
      I3 => \current_sin_36_fu_60_reg_n_0_[11]\,
      I4 => \i1_fu_48_reg_n_0_[3]\,
      I5 => \current_sin_36_fu_60_reg_n_0_[3]\,
      O => \sin_shift_reg_311[3]_i_2_n_0\
    );
\sin_shift_reg_311[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sin_shift_reg_311[7]_i_2_n_0\,
      I1 => \sin_shift_reg_311[5]_i_2_n_0\,
      I2 => \i1_fu_48_reg_n_0_[0]\,
      I3 => \sin_shift_reg_311[6]_i_2_n_0\,
      I4 => \i1_fu_48_reg_n_0_[1]\,
      I5 => \sin_shift_reg_311[4]_i_2_n_0\,
      O => sin_shift_fu_157_p2(4)
    );
\sin_shift_reg_311[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \current_sin_36_fu_60_reg_n_0_[16]\,
      I1 => \current_sin_36_fu_60_reg_n_0_[8]\,
      I2 => \i1_fu_48_reg_n_0_[2]\,
      I3 => \current_sin_36_fu_60_reg_n_0_[12]\,
      I4 => \i1_fu_48_reg_n_0_[3]\,
      I5 => \current_sin_36_fu_60_reg_n_0_[4]\,
      O => \sin_shift_reg_311[4]_i_2_n_0\
    );
\sin_shift_reg_311[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sin_shift_reg_311[8]_i_2_n_0\,
      I1 => \sin_shift_reg_311[6]_i_2_n_0\,
      I2 => \i1_fu_48_reg_n_0_[0]\,
      I3 => \sin_shift_reg_311[7]_i_2_n_0\,
      I4 => \i1_fu_48_reg_n_0_[1]\,
      I5 => \sin_shift_reg_311[5]_i_2_n_0\,
      O => sin_shift_fu_157_p2(5)
    );
\sin_shift_reg_311[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \current_sin_36_fu_60_reg_n_0_[17]\,
      I1 => \current_sin_36_fu_60_reg_n_0_[9]\,
      I2 => \i1_fu_48_reg_n_0_[2]\,
      I3 => \current_sin_36_fu_60_reg_n_0_[13]\,
      I4 => \i1_fu_48_reg_n_0_[3]\,
      I5 => \current_sin_36_fu_60_reg_n_0_[5]\,
      O => \sin_shift_reg_311[5]_i_2_n_0\
    );
\sin_shift_reg_311[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sin_shift_reg_311[9]_i_2_n_0\,
      I1 => \sin_shift_reg_311[7]_i_2_n_0\,
      I2 => \i1_fu_48_reg_n_0_[0]\,
      I3 => \sin_shift_reg_311[8]_i_2_n_0\,
      I4 => \i1_fu_48_reg_n_0_[1]\,
      I5 => \sin_shift_reg_311[6]_i_2_n_0\,
      O => sin_shift_fu_157_p2(6)
    );
\sin_shift_reg_311[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \current_sin_36_fu_60_reg_n_0_[18]\,
      I1 => \current_sin_36_fu_60_reg_n_0_[10]\,
      I2 => \i1_fu_48_reg_n_0_[2]\,
      I3 => \current_sin_36_fu_60_reg_n_0_[14]\,
      I4 => \i1_fu_48_reg_n_0_[3]\,
      I5 => \current_sin_36_fu_60_reg_n_0_[6]\,
      O => \sin_shift_reg_311[6]_i_2_n_0\
    );
\sin_shift_reg_311[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sin_shift_reg_311[10]_i_2_n_0\,
      I1 => \sin_shift_reg_311[8]_i_2_n_0\,
      I2 => \i1_fu_48_reg_n_0_[0]\,
      I3 => \sin_shift_reg_311[9]_i_2_n_0\,
      I4 => \i1_fu_48_reg_n_0_[1]\,
      I5 => \sin_shift_reg_311[7]_i_2_n_0\,
      O => sin_shift_fu_157_p2(7)
    );
\sin_shift_reg_311[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \current_sin_36_fu_60_reg_n_0_[19]\,
      I1 => \current_sin_36_fu_60_reg_n_0_[11]\,
      I2 => \i1_fu_48_reg_n_0_[2]\,
      I3 => \current_sin_36_fu_60_reg_n_0_[15]\,
      I4 => \i1_fu_48_reg_n_0_[3]\,
      I5 => \current_sin_36_fu_60_reg_n_0_[7]\,
      O => \sin_shift_reg_311[7]_i_2_n_0\
    );
\sin_shift_reg_311[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sin_shift_reg_311[11]_i_2_n_0\,
      I1 => \sin_shift_reg_311[9]_i_2_n_0\,
      I2 => \i1_fu_48_reg_n_0_[0]\,
      I3 => \sin_shift_reg_311[10]_i_2_n_0\,
      I4 => \i1_fu_48_reg_n_0_[1]\,
      I5 => \sin_shift_reg_311[8]_i_2_n_0\,
      O => sin_shift_fu_157_p2(8)
    );
\sin_shift_reg_311[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \current_sin_36_fu_60_reg_n_0_[20]\,
      I1 => \current_sin_36_fu_60_reg_n_0_[12]\,
      I2 => \i1_fu_48_reg_n_0_[2]\,
      I3 => \current_sin_36_fu_60_reg_n_0_[16]\,
      I4 => \i1_fu_48_reg_n_0_[3]\,
      I5 => \current_sin_36_fu_60_reg_n_0_[8]\,
      O => \sin_shift_reg_311[8]_i_2_n_0\
    );
\sin_shift_reg_311[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sin_shift_reg_311[12]_i_2_n_0\,
      I1 => \sin_shift_reg_311[10]_i_2_n_0\,
      I2 => \i1_fu_48_reg_n_0_[0]\,
      I3 => \sin_shift_reg_311[11]_i_2_n_0\,
      I4 => \i1_fu_48_reg_n_0_[1]\,
      I5 => \sin_shift_reg_311[9]_i_2_n_0\,
      O => sin_shift_fu_157_p2(9)
    );
\sin_shift_reg_311[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in,
      I1 => \current_sin_36_fu_60_reg_n_0_[13]\,
      I2 => \i1_fu_48_reg_n_0_[2]\,
      I3 => \current_sin_36_fu_60_reg_n_0_[17]\,
      I4 => \i1_fu_48_reg_n_0_[3]\,
      I5 => \current_sin_36_fu_60_reg_n_0_[9]\,
      O => \sin_shift_reg_311[9]_i_2_n_0\
    );
\sin_shift_reg_311_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => sin_shift_fu_157_p2(0),
      Q => sin_shift_reg_311(0),
      R => '0'
    );
\sin_shift_reg_311_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => sin_shift_fu_157_p2(10),
      Q => sin_shift_reg_311(10),
      R => '0'
    );
\sin_shift_reg_311_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => sin_shift_fu_157_p2(11),
      Q => sin_shift_reg_311(11),
      R => '0'
    );
\sin_shift_reg_311_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => sin_shift_fu_157_p2(12),
      Q => sin_shift_reg_311(12),
      R => '0'
    );
\sin_shift_reg_311_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => sin_shift_fu_157_p2(13),
      Q => sin_shift_reg_311(13),
      R => '0'
    );
\sin_shift_reg_311_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => sin_shift_fu_157_p2(14),
      Q => sin_shift_reg_311(14),
      R => '0'
    );
\sin_shift_reg_311_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => sin_shift_fu_157_p2(15),
      Q => sin_shift_reg_311(15),
      R => '0'
    );
\sin_shift_reg_311_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => sin_shift_fu_157_p2(16),
      Q => sin_shift_reg_311(16),
      R => '0'
    );
\sin_shift_reg_311_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => sin_shift_fu_157_p2(17),
      Q => sin_shift_reg_311(17),
      R => '0'
    );
\sin_shift_reg_311_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => sin_shift_fu_157_p2(18),
      Q => sin_shift_reg_311(18),
      R => '0'
    );
\sin_shift_reg_311_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => sin_shift_fu_157_p2(19),
      Q => sin_shift_reg_311(19),
      R => '0'
    );
\sin_shift_reg_311_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => sin_shift_fu_157_p2(1),
      Q => sin_shift_reg_311(1),
      R => '0'
    );
\sin_shift_reg_311_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => sin_shift_fu_157_p2(20),
      Q => sin_shift_reg_311(20),
      R => '0'
    );
\sin_shift_reg_311_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => sin_shift_fu_157_p2(2),
      Q => sin_shift_reg_311(2),
      R => '0'
    );
\sin_shift_reg_311_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => sin_shift_fu_157_p2(3),
      Q => sin_shift_reg_311(3),
      R => '0'
    );
\sin_shift_reg_311_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => sin_shift_fu_157_p2(4),
      Q => sin_shift_reg_311(4),
      R => '0'
    );
\sin_shift_reg_311_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => sin_shift_fu_157_p2(5),
      Q => sin_shift_reg_311(5),
      R => '0'
    );
\sin_shift_reg_311_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => sin_shift_fu_157_p2(6),
      Q => sin_shift_reg_311(6),
      R => '0'
    );
\sin_shift_reg_311_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => sin_shift_fu_157_p2(7),
      Q => sin_shift_reg_311(7),
      R => '0'
    );
\sin_shift_reg_311_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => sin_shift_fu_157_p2(8),
      Q => sin_shift_reg_311(8),
      R => '0'
    );
\sin_shift_reg_311_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_pp0_stage1,
      D => sin_shift_fu_157_p2(9),
      Q => sin_shift_reg_311(9),
      R => '0'
    );
\theta_temp2_fu_52_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_71,
      Q => \theta_temp2_fu_52_reg_n_0_[0]\,
      R => '0'
    );
\theta_temp2_fu_52_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_61,
      Q => \theta_temp2_fu_52_reg_n_0_[10]\,
      R => '0'
    );
\theta_temp2_fu_52_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_60,
      Q => \theta_temp2_fu_52_reg_n_0_[11]\,
      R => '0'
    );
\theta_temp2_fu_52_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_59,
      Q => \theta_temp2_fu_52_reg_n_0_[12]\,
      R => '0'
    );
\theta_temp2_fu_52_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_58,
      Q => \theta_temp2_fu_52_reg_n_0_[13]\,
      R => '0'
    );
\theta_temp2_fu_52_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_57,
      Q => \theta_temp2_fu_52_reg_n_0_[14]\,
      R => '0'
    );
\theta_temp2_fu_52_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_56,
      Q => \theta_temp2_fu_52_reg_n_0_[15]\,
      R => '0'
    );
\theta_temp2_fu_52_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_55,
      Q => \theta_temp2_fu_52_reg_n_0_[16]\,
      R => '0'
    );
\theta_temp2_fu_52_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_54,
      Q => \theta_temp2_fu_52_reg_n_0_[17]\,
      R => '0'
    );
\theta_temp2_fu_52_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_53,
      Q => \theta_temp2_fu_52_reg_n_0_[18]\,
      R => '0'
    );
\theta_temp2_fu_52_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_52,
      Q => \theta_temp2_fu_52_reg_n_0_[19]\,
      R => '0'
    );
\theta_temp2_fu_52_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_70,
      Q => \theta_temp2_fu_52_reg_n_0_[1]\,
      R => '0'
    );
\theta_temp2_fu_52_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_51,
      Q => \theta_temp2_fu_52_reg_n_0_[20]\,
      R => '0'
    );
\theta_temp2_fu_52_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_50,
      Q => \theta_temp2_fu_52_reg_n_0_[21]\,
      R => '0'
    );
\theta_temp2_fu_52_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_69,
      Q => \theta_temp2_fu_52_reg_n_0_[2]\,
      R => '0'
    );
\theta_temp2_fu_52_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_68,
      Q => \theta_temp2_fu_52_reg_n_0_[3]\,
      R => '0'
    );
\theta_temp2_fu_52_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_67,
      Q => \theta_temp2_fu_52_reg_n_0_[4]\,
      R => '0'
    );
\theta_temp2_fu_52_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_66,
      Q => \theta_temp2_fu_52_reg_n_0_[5]\,
      R => '0'
    );
\theta_temp2_fu_52_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_65,
      Q => \theta_temp2_fu_52_reg_n_0_[6]\,
      R => '0'
    );
\theta_temp2_fu_52_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_64,
      Q => \theta_temp2_fu_52_reg_n_0_[7]\,
      R => '0'
    );
\theta_temp2_fu_52_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_63,
      Q => \theta_temp2_fu_52_reg_n_0_[8]\,
      R => '0'
    );
\theta_temp2_fu_52_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => current_cos_34_fu_56_0,
      D => flow_control_loop_pipe_sequential_init_U_n_62,
      Q => \theta_temp2_fu_52_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_cordiccart2pol_0_0_cordiccart2pol is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_AWREADY : out STD_LOGIC;
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_WREADY : out STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_ARREADY : out STD_LOGIC;
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_control_RVALID : out STD_LOGIC;
    s_axi_control_RREADY : in STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_BVALID : out STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    interrupt : out STD_LOGIC
  );
  attribute C_S_AXI_CONTROL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CONTROL_ADDR_WIDTH of design_1_cordiccart2pol_0_0_cordiccart2pol : entity is 6;
  attribute C_S_AXI_CONTROL_DATA_WIDTH : integer;
  attribute C_S_AXI_CONTROL_DATA_WIDTH of design_1_cordiccart2pol_0_0_cordiccart2pol : entity is 32;
  attribute C_S_AXI_CONTROL_WSTRB_WIDTH : integer;
  attribute C_S_AXI_CONTROL_WSTRB_WIDTH of design_1_cordiccart2pol_0_0_cordiccart2pol : entity is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of design_1_cordiccart2pol_0_0_cordiccart2pol : entity is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of design_1_cordiccart2pol_0_0_cordiccart2pol : entity is 4;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_cordiccart2pol_0_0_cordiccart2pol : entity is "cordiccart2pol";
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of design_1_cordiccart2pol_0_0_cordiccart2pol : entity is "4'b0001";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of design_1_cordiccart2pol_0_0_cordiccart2pol : entity is "4'b0010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of design_1_cordiccart2pol_0_0_cordiccart2pol : entity is "4'b0100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of design_1_cordiccart2pol_0_0_cordiccart2pol : entity is "4'b1000";
  attribute hls_module : string;
  attribute hls_module of design_1_cordiccart2pol_0_0_cordiccart2pol : entity is "yes";
end design_1_cordiccart2pol_0_0_cordiccart2pol;

architecture STRUCTURE of design_1_cordiccart2pol_0_0_cordiccart2pol is
  signal \<const0>\ : STD_LOGIC;
  signal ap_CS_fsm_state1 : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_CS_fsm_state4 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ap_NS_fsm1 : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  signal control_s_axi_U_n_11 : STD_LOGIC;
  signal control_s_axi_U_n_12 : STD_LOGIC;
  signal control_s_axi_U_n_13 : STD_LOGIC;
  signal control_s_axi_U_n_14 : STD_LOGIC;
  signal control_s_axi_U_n_15 : STD_LOGIC;
  signal control_s_axi_U_n_16 : STD_LOGIC;
  signal control_s_axi_U_n_17 : STD_LOGIC;
  signal control_s_axi_U_n_18 : STD_LOGIC;
  signal control_s_axi_U_n_19 : STD_LOGIC;
  signal control_s_axi_U_n_2 : STD_LOGIC;
  signal control_s_axi_U_n_20 : STD_LOGIC;
  signal control_s_axi_U_n_21 : STD_LOGIC;
  signal control_s_axi_U_n_22 : STD_LOGIC;
  signal control_s_axi_U_n_23 : STD_LOGIC;
  signal control_s_axi_U_n_24 : STD_LOGIC;
  signal control_s_axi_U_n_25 : STD_LOGIC;
  signal control_s_axi_U_n_26 : STD_LOGIC;
  signal control_s_axi_U_n_27 : STD_LOGIC;
  signal control_s_axi_U_n_28 : STD_LOGIC;
  signal control_s_axi_U_n_29 : STD_LOGIC;
  signal control_s_axi_U_n_3 : STD_LOGIC;
  signal control_s_axi_U_n_30 : STD_LOGIC;
  signal control_s_axi_U_n_31 : STD_LOGIC;
  signal control_s_axi_U_n_32 : STD_LOGIC;
  signal control_s_axi_U_n_33 : STD_LOGIC;
  signal control_s_axi_U_n_34 : STD_LOGIC;
  signal control_s_axi_U_n_35 : STD_LOGIC;
  signal control_s_axi_U_n_36 : STD_LOGIC;
  signal control_s_axi_U_n_37 : STD_LOGIC;
  signal control_s_axi_U_n_38 : STD_LOGIC;
  signal control_s_axi_U_n_39 : STD_LOGIC;
  signal control_s_axi_U_n_40 : STD_LOGIC;
  signal control_s_axi_U_n_41 : STD_LOGIC;
  signal control_s_axi_U_n_42 : STD_LOGIC;
  signal control_s_axi_U_n_43 : STD_LOGIC;
  signal control_s_axi_U_n_44 : STD_LOGIC;
  signal control_s_axi_U_n_45 : STD_LOGIC;
  signal control_s_axi_U_n_46 : STD_LOGIC;
  signal control_s_axi_U_n_47 : STD_LOGIC;
  signal control_s_axi_U_n_48 : STD_LOGIC;
  signal control_s_axi_U_n_49 : STD_LOGIC;
  signal control_s_axi_U_n_50 : STD_LOGIC;
  signal control_s_axi_U_n_51 : STD_LOGIC;
  signal control_s_axi_U_n_52 : STD_LOGIC;
  signal control_s_axi_U_n_53 : STD_LOGIC;
  signal control_s_axi_U_n_54 : STD_LOGIC;
  signal control_s_axi_U_n_55 : STD_LOGIC;
  signal current_cos_2_loc_fu_74 : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal current_cos_4_reg_229 : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_ready : STD_LOGIC;
  signal grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg : STD_LOGIC;
  signal grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_0 : STD_LOGIC;
  signal grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_1 : STD_LOGIC;
  signal grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_10 : STD_LOGIC;
  signal grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_11 : STD_LOGIC;
  signal grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_12 : STD_LOGIC;
  signal grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_13 : STD_LOGIC;
  signal grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_14 : STD_LOGIC;
  signal grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_15 : STD_LOGIC;
  signal grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_16 : STD_LOGIC;
  signal grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_17 : STD_LOGIC;
  signal grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_18 : STD_LOGIC;
  signal grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_19 : STD_LOGIC;
  signal grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_2 : STD_LOGIC;
  signal grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_20 : STD_LOGIC;
  signal grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_21 : STD_LOGIC;
  signal grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_3 : STD_LOGIC;
  signal grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_4 : STD_LOGIC;
  signal grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_5 : STD_LOGIC;
  signal grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_6 : STD_LOGIC;
  signal grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_7 : STD_LOGIC;
  signal grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_8 : STD_LOGIC;
  signal grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_9 : STD_LOGIC;
  signal grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \^s_axi_control_rdata\ : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal select_ln75_reg_224 : STD_LOGIC_VECTOR ( 8 downto 2 );
  signal theta_temp_2_loc_fu_70 : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal theta_temp_2_loc_fu_700 : STD_LOGIC;
  signal tmp_1_reg_244 : STD_LOGIC;
  signal tmp_product0_out : STD_LOGIC_VECTOR ( 23 downto 1 );
  signal trunc_ln1_reg_239 : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal x_2_reg_234 : STD_LOGIC_VECTOR ( 21 downto 0 );
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
begin
  s_axi_control_BRESP(1) <= \<const0>\;
  s_axi_control_BRESP(0) <= \<const0>\;
  s_axi_control_RDATA(31) <= \<const0>\;
  s_axi_control_RDATA(30) <= \<const0>\;
  s_axi_control_RDATA(29) <= \<const0>\;
  s_axi_control_RDATA(28) <= \<const0>\;
  s_axi_control_RDATA(27) <= \<const0>\;
  s_axi_control_RDATA(26) <= \<const0>\;
  s_axi_control_RDATA(25) <= \<const0>\;
  s_axi_control_RDATA(24) <= \<const0>\;
  s_axi_control_RDATA(23) <= \<const0>\;
  s_axi_control_RDATA(22) <= \<const0>\;
  s_axi_control_RDATA(21 downto 0) <= \^s_axi_control_rdata\(21 downto 0);
  s_axi_control_RRESP(1) <= \<const0>\;
  s_axi_control_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => ap_CS_fsm_state1,
      S => ap_rst_n_inv
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_state2,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_state3,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_state3,
      Q => ap_CS_fsm_state4,
      R => ap_rst_n_inv
    );
control_s_axi_U: entity work.design_1_cordiccart2pol_0_0_cordiccart2pol_control_s_axi
     port map (
      D(1 downto 0) => ap_NS_fsm(1 downto 0),
      \FSM_onehot_rstate_reg[1]_0\ => s_axi_control_ARREADY,
      \FSM_onehot_wstate_reg[1]_0\ => s_axi_control_AWREADY,
      \FSM_onehot_wstate_reg[2]_0\ => s_axi_control_WREADY,
      Q(2) => ap_CS_fsm_state4,
      Q(1) => ap_CS_fsm_state3,
      Q(0) => ap_CS_fsm_state1,
      SR(0) => ap_rst_n_inv,
      ap_NS_fsm1 => ap_NS_fsm1,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_ready => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_ready,
      grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      int_ap_start_reg_0 => control_s_axi_U_n_55,
      \int_r_reg[21]_0\(21 downto 0) => trunc_ln1_reg_239(21 downto 0),
      \int_theta_reg[21]_0\(21 downto 0) => theta_temp_2_loc_fu_70(21 downto 0),
      \int_y_reg[21]_0\(21) => control_s_axi_U_n_11,
      \int_y_reg[21]_0\(20) => control_s_axi_U_n_12,
      \int_y_reg[21]_0\(19) => control_s_axi_U_n_13,
      \int_y_reg[21]_0\(18) => control_s_axi_U_n_14,
      \int_y_reg[21]_0\(17) => control_s_axi_U_n_15,
      \int_y_reg[21]_0\(16) => control_s_axi_U_n_16,
      \int_y_reg[21]_0\(15) => control_s_axi_U_n_17,
      \int_y_reg[21]_0\(14) => control_s_axi_U_n_18,
      \int_y_reg[21]_0\(13) => control_s_axi_U_n_19,
      \int_y_reg[21]_0\(12) => control_s_axi_U_n_20,
      \int_y_reg[21]_0\(11) => control_s_axi_U_n_21,
      \int_y_reg[21]_0\(10) => control_s_axi_U_n_22,
      \int_y_reg[21]_0\(9) => control_s_axi_U_n_23,
      \int_y_reg[21]_0\(8) => control_s_axi_U_n_24,
      \int_y_reg[21]_0\(7) => control_s_axi_U_n_25,
      \int_y_reg[21]_0\(6) => control_s_axi_U_n_26,
      \int_y_reg[21]_0\(5) => control_s_axi_U_n_27,
      \int_y_reg[21]_0\(4) => control_s_axi_U_n_28,
      \int_y_reg[21]_0\(3) => control_s_axi_U_n_29,
      \int_y_reg[21]_0\(2) => control_s_axi_U_n_30,
      \int_y_reg[21]_0\(1) => control_s_axi_U_n_31,
      \int_y_reg[21]_0\(0) => control_s_axi_U_n_32,
      \int_y_reg[21]_1\(21) => control_s_axi_U_n_33,
      \int_y_reg[21]_1\(20) => control_s_axi_U_n_34,
      \int_y_reg[21]_1\(19) => control_s_axi_U_n_35,
      \int_y_reg[21]_1\(18) => control_s_axi_U_n_36,
      \int_y_reg[21]_1\(17) => control_s_axi_U_n_37,
      \int_y_reg[21]_1\(16) => control_s_axi_U_n_38,
      \int_y_reg[21]_1\(15) => control_s_axi_U_n_39,
      \int_y_reg[21]_1\(14) => control_s_axi_U_n_40,
      \int_y_reg[21]_1\(13) => control_s_axi_U_n_41,
      \int_y_reg[21]_1\(12) => control_s_axi_U_n_42,
      \int_y_reg[21]_1\(11) => control_s_axi_U_n_43,
      \int_y_reg[21]_1\(10) => control_s_axi_U_n_44,
      \int_y_reg[21]_1\(9) => control_s_axi_U_n_45,
      \int_y_reg[21]_1\(8) => control_s_axi_U_n_46,
      \int_y_reg[21]_1\(7) => control_s_axi_U_n_47,
      \int_y_reg[21]_1\(6) => control_s_axi_U_n_48,
      \int_y_reg[21]_1\(5) => control_s_axi_U_n_49,
      \int_y_reg[21]_1\(4) => control_s_axi_U_n_50,
      \int_y_reg[21]_1\(3) => control_s_axi_U_n_51,
      \int_y_reg[21]_1\(2) => control_s_axi_U_n_52,
      \int_y_reg[21]_1\(1) => control_s_axi_U_n_53,
      \int_y_reg[21]_1\(0) => control_s_axi_U_n_54,
      interrupt => interrupt,
      s_axi_control_ARADDR(5 downto 0) => s_axi_control_ARADDR(5 downto 0),
      s_axi_control_ARVALID => s_axi_control_ARVALID,
      s_axi_control_AWADDR(3 downto 0) => s_axi_control_AWADDR(5 downto 2),
      s_axi_control_AWVALID => s_axi_control_AWVALID,
      s_axi_control_BREADY => s_axi_control_BREADY,
      s_axi_control_BVALID => s_axi_control_BVALID,
      s_axi_control_RDATA(21 downto 0) => \^s_axi_control_rdata\(21 downto 0),
      s_axi_control_RREADY => s_axi_control_RREADY,
      s_axi_control_RVALID => s_axi_control_RVALID,
      s_axi_control_WDATA(21 downto 0) => s_axi_control_WDATA(21 downto 0),
      s_axi_control_WSTRB(2 downto 0) => s_axi_control_WSTRB(2 downto 0),
      s_axi_control_WVALID => s_axi_control_WVALID,
      select_ln75_reg_224(1) => select_ln75_reg_224(8),
      select_ln75_reg_224(0) => select_ln75_reg_224(2),
      \select_ln75_reg_224_reg[2]\ => control_s_axi_U_n_2,
      \select_ln75_reg_224_reg[8]\ => control_s_axi_U_n_3,
      tmp_1_reg_244 => tmp_1_reg_244
    );
\current_cos_2_loc_fu_74_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_21,
      Q => current_cos_2_loc_fu_74(0),
      R => '0'
    );
\current_cos_2_loc_fu_74_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_11,
      Q => current_cos_2_loc_fu_74(10),
      R => '0'
    );
\current_cos_2_loc_fu_74_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_10,
      Q => current_cos_2_loc_fu_74(11),
      R => '0'
    );
\current_cos_2_loc_fu_74_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_9,
      Q => current_cos_2_loc_fu_74(12),
      R => '0'
    );
\current_cos_2_loc_fu_74_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_8,
      Q => current_cos_2_loc_fu_74(13),
      R => '0'
    );
\current_cos_2_loc_fu_74_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_7,
      Q => current_cos_2_loc_fu_74(14),
      R => '0'
    );
\current_cos_2_loc_fu_74_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_6,
      Q => current_cos_2_loc_fu_74(15),
      R => '0'
    );
\current_cos_2_loc_fu_74_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_5,
      Q => current_cos_2_loc_fu_74(16),
      R => '0'
    );
\current_cos_2_loc_fu_74_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_4,
      Q => current_cos_2_loc_fu_74(17),
      R => '0'
    );
\current_cos_2_loc_fu_74_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_3,
      Q => current_cos_2_loc_fu_74(18),
      R => '0'
    );
\current_cos_2_loc_fu_74_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_2,
      Q => current_cos_2_loc_fu_74(19),
      R => '0'
    );
\current_cos_2_loc_fu_74_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_20,
      Q => current_cos_2_loc_fu_74(1),
      R => '0'
    );
\current_cos_2_loc_fu_74_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_1,
      Q => current_cos_2_loc_fu_74(20),
      R => '0'
    );
\current_cos_2_loc_fu_74_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_0,
      Q => current_cos_2_loc_fu_74(21),
      R => '0'
    );
\current_cos_2_loc_fu_74_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_19,
      Q => current_cos_2_loc_fu_74(2),
      R => '0'
    );
\current_cos_2_loc_fu_74_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_18,
      Q => current_cos_2_loc_fu_74(3),
      R => '0'
    );
\current_cos_2_loc_fu_74_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_17,
      Q => current_cos_2_loc_fu_74(4),
      R => '0'
    );
\current_cos_2_loc_fu_74_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_16,
      Q => current_cos_2_loc_fu_74(5),
      R => '0'
    );
\current_cos_2_loc_fu_74_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_15,
      Q => current_cos_2_loc_fu_74(6),
      R => '0'
    );
\current_cos_2_loc_fu_74_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_14,
      Q => current_cos_2_loc_fu_74(7),
      R => '0'
    );
\current_cos_2_loc_fu_74_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_13,
      Q => current_cos_2_loc_fu_74(8),
      R => '0'
    );
\current_cos_2_loc_fu_74_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_12,
      Q => current_cos_2_loc_fu_74(9),
      R => '0'
    );
\current_cos_4_reg_229_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_32,
      Q => current_cos_4_reg_229(0),
      R => '0'
    );
\current_cos_4_reg_229_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_22,
      Q => current_cos_4_reg_229(10),
      R => '0'
    );
\current_cos_4_reg_229_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_21,
      Q => current_cos_4_reg_229(11),
      R => '0'
    );
\current_cos_4_reg_229_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_20,
      Q => current_cos_4_reg_229(12),
      R => '0'
    );
\current_cos_4_reg_229_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_19,
      Q => current_cos_4_reg_229(13),
      R => '0'
    );
\current_cos_4_reg_229_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_18,
      Q => current_cos_4_reg_229(14),
      R => '0'
    );
\current_cos_4_reg_229_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_17,
      Q => current_cos_4_reg_229(15),
      R => '0'
    );
\current_cos_4_reg_229_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_16,
      Q => current_cos_4_reg_229(16),
      R => '0'
    );
\current_cos_4_reg_229_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_15,
      Q => current_cos_4_reg_229(17),
      R => '0'
    );
\current_cos_4_reg_229_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_14,
      Q => current_cos_4_reg_229(18),
      R => '0'
    );
\current_cos_4_reg_229_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_13,
      Q => current_cos_4_reg_229(19),
      R => '0'
    );
\current_cos_4_reg_229_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_31,
      Q => current_cos_4_reg_229(1),
      R => '0'
    );
\current_cos_4_reg_229_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_12,
      Q => current_cos_4_reg_229(20),
      R => '0'
    );
\current_cos_4_reg_229_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_11,
      Q => current_cos_4_reg_229(21),
      R => '0'
    );
\current_cos_4_reg_229_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_30,
      Q => current_cos_4_reg_229(2),
      R => '0'
    );
\current_cos_4_reg_229_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_29,
      Q => current_cos_4_reg_229(3),
      R => '0'
    );
\current_cos_4_reg_229_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_28,
      Q => current_cos_4_reg_229(4),
      R => '0'
    );
\current_cos_4_reg_229_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_27,
      Q => current_cos_4_reg_229(5),
      R => '0'
    );
\current_cos_4_reg_229_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_26,
      Q => current_cos_4_reg_229(6),
      R => '0'
    );
\current_cos_4_reg_229_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_25,
      Q => current_cos_4_reg_229(7),
      R => '0'
    );
\current_cos_4_reg_229_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_24,
      Q => current_cos_4_reg_229(8),
      R => '0'
    );
\current_cos_4_reg_229_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_23,
      Q => current_cos_4_reg_229(9),
      R => '0'
    );
grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104: entity work.design_1_cordiccart2pol_0_0_cordiccart2pol_cordiccart2pol_Pipeline_VITIS_LOOP_80_1
     port map (
      D(21) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_0,
      D(20) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_1,
      D(19) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_2,
      D(18) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_3,
      D(17) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_4,
      D(16) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_5,
      D(15) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_6,
      D(14) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_7,
      D(13) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_8,
      D(12) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_9,
      D(11) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_10,
      D(10) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_11,
      D(9) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_12,
      D(8) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_13,
      D(7) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_14,
      D(6) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_15,
      D(5) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_16,
      D(4) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_17,
      D(3) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_18,
      D(2) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_19,
      D(1) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_20,
      D(0) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_21,
      E(0) => theta_temp_2_loc_fu_700,
      Q(0) => ap_CS_fsm_state2,
      SR(0) => ap_rst_n_inv,
      \ap_CS_fsm_reg[1]_0\(0) => ap_NS_fsm(2),
      ap_NS_fsm1 => ap_NS_fsm1,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \current_cos_34_fu_56_reg[21]_0\(21 downto 0) => current_cos_4_reg_229(21 downto 0),
      \current_sin_36_fu_60_reg[21]_0\(21 downto 0) => x_2_reg_234(21 downto 0),
      grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_ready => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_ready,
      grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      select_ln75_reg_224(1) => select_ln75_reg_224(8),
      select_ln75_reg_224(0) => select_ln75_reg_224(2),
      \theta_temp2_fu_52_reg[19]_0\(21 downto 0) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out(21 downto 0)
    );
grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => control_s_axi_U_n_55,
      Q => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_ap_start_reg,
      R => ap_rst_n_inv
    );
mul_22s_20ns_42_1_1_U7: entity work.design_1_cordiccart2pol_0_0_cordiccart2pol_mul_22s_20ns_42_1_1
     port map (
      D(21) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_0,
      D(20) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_1,
      D(19) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_2,
      D(18) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_3,
      D(17) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_4,
      D(16) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_5,
      D(15) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_6,
      D(14) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_7,
      D(13) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_8,
      D(12) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_9,
      D(11) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_10,
      D(10) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_11,
      D(9) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_12,
      D(8) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_13,
      D(7) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_14,
      D(6) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_15,
      D(5) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_16,
      D(4) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_17,
      D(3) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_18,
      D(2) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_19,
      D(1) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_20,
      D(0) => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_n_21,
      E(0) => theta_temp_2_loc_fu_700,
      Q(21 downto 0) => current_cos_2_loc_fu_74(21 downto 0),
      ap_clk => ap_clk,
      tmp_product0_out(22 downto 0) => tmp_product0_out(23 downto 1)
    );
\select_ln75_reg_224_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => control_s_axi_U_n_2,
      Q => select_ln75_reg_224(2),
      R => '0'
    );
\select_ln75_reg_224_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => control_s_axi_U_n_3,
      Q => select_ln75_reg_224(8),
      R => '0'
    );
\theta_temp_2_loc_fu_70_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out(0),
      Q => theta_temp_2_loc_fu_70(0),
      R => '0'
    );
\theta_temp_2_loc_fu_70_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out(10),
      Q => theta_temp_2_loc_fu_70(10),
      R => '0'
    );
\theta_temp_2_loc_fu_70_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out(11),
      Q => theta_temp_2_loc_fu_70(11),
      R => '0'
    );
\theta_temp_2_loc_fu_70_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out(12),
      Q => theta_temp_2_loc_fu_70(12),
      R => '0'
    );
\theta_temp_2_loc_fu_70_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out(13),
      Q => theta_temp_2_loc_fu_70(13),
      R => '0'
    );
\theta_temp_2_loc_fu_70_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out(14),
      Q => theta_temp_2_loc_fu_70(14),
      R => '0'
    );
\theta_temp_2_loc_fu_70_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out(15),
      Q => theta_temp_2_loc_fu_70(15),
      R => '0'
    );
\theta_temp_2_loc_fu_70_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out(16),
      Q => theta_temp_2_loc_fu_70(16),
      R => '0'
    );
\theta_temp_2_loc_fu_70_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out(17),
      Q => theta_temp_2_loc_fu_70(17),
      R => '0'
    );
\theta_temp_2_loc_fu_70_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out(18),
      Q => theta_temp_2_loc_fu_70(18),
      R => '0'
    );
\theta_temp_2_loc_fu_70_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out(19),
      Q => theta_temp_2_loc_fu_70(19),
      R => '0'
    );
\theta_temp_2_loc_fu_70_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out(1),
      Q => theta_temp_2_loc_fu_70(1),
      R => '0'
    );
\theta_temp_2_loc_fu_70_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out(20),
      Q => theta_temp_2_loc_fu_70(20),
      R => '0'
    );
\theta_temp_2_loc_fu_70_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out(21),
      Q => theta_temp_2_loc_fu_70(21),
      R => '0'
    );
\theta_temp_2_loc_fu_70_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out(2),
      Q => theta_temp_2_loc_fu_70(2),
      R => '0'
    );
\theta_temp_2_loc_fu_70_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out(3),
      Q => theta_temp_2_loc_fu_70(3),
      R => '0'
    );
\theta_temp_2_loc_fu_70_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out(4),
      Q => theta_temp_2_loc_fu_70(4),
      R => '0'
    );
\theta_temp_2_loc_fu_70_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out(5),
      Q => theta_temp_2_loc_fu_70(5),
      R => '0'
    );
\theta_temp_2_loc_fu_70_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out(6),
      Q => theta_temp_2_loc_fu_70(6),
      R => '0'
    );
\theta_temp_2_loc_fu_70_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out(7),
      Q => theta_temp_2_loc_fu_70(7),
      R => '0'
    );
\theta_temp_2_loc_fu_70_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out(8),
      Q => theta_temp_2_loc_fu_70(8),
      R => '0'
    );
\theta_temp_2_loc_fu_70_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => theta_temp_2_loc_fu_700,
      D => grp_cordiccart2pol_Pipeline_VITIS_LOOP_80_1_fu_104_theta_temp_2_out(9),
      Q => theta_temp_2_loc_fu_70(9),
      R => '0'
    );
\tmp_1_reg_244_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => tmp_product0_out(1),
      Q => tmp_1_reg_244,
      R => '0'
    );
\trunc_ln1_reg_239_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => tmp_product0_out(2),
      Q => trunc_ln1_reg_239(0),
      R => '0'
    );
\trunc_ln1_reg_239_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => tmp_product0_out(12),
      Q => trunc_ln1_reg_239(10),
      R => '0'
    );
\trunc_ln1_reg_239_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => tmp_product0_out(13),
      Q => trunc_ln1_reg_239(11),
      R => '0'
    );
\trunc_ln1_reg_239_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => tmp_product0_out(14),
      Q => trunc_ln1_reg_239(12),
      R => '0'
    );
\trunc_ln1_reg_239_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => tmp_product0_out(15),
      Q => trunc_ln1_reg_239(13),
      R => '0'
    );
\trunc_ln1_reg_239_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => tmp_product0_out(16),
      Q => trunc_ln1_reg_239(14),
      R => '0'
    );
\trunc_ln1_reg_239_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => tmp_product0_out(17),
      Q => trunc_ln1_reg_239(15),
      R => '0'
    );
\trunc_ln1_reg_239_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => tmp_product0_out(18),
      Q => trunc_ln1_reg_239(16),
      R => '0'
    );
\trunc_ln1_reg_239_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => tmp_product0_out(19),
      Q => trunc_ln1_reg_239(17),
      R => '0'
    );
\trunc_ln1_reg_239_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => tmp_product0_out(20),
      Q => trunc_ln1_reg_239(18),
      R => '0'
    );
\trunc_ln1_reg_239_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => tmp_product0_out(21),
      Q => trunc_ln1_reg_239(19),
      R => '0'
    );
\trunc_ln1_reg_239_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => tmp_product0_out(3),
      Q => trunc_ln1_reg_239(1),
      R => '0'
    );
\trunc_ln1_reg_239_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => tmp_product0_out(22),
      Q => trunc_ln1_reg_239(20),
      R => '0'
    );
\trunc_ln1_reg_239_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => tmp_product0_out(23),
      Q => trunc_ln1_reg_239(21),
      R => '0'
    );
\trunc_ln1_reg_239_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => tmp_product0_out(4),
      Q => trunc_ln1_reg_239(2),
      R => '0'
    );
\trunc_ln1_reg_239_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => tmp_product0_out(5),
      Q => trunc_ln1_reg_239(3),
      R => '0'
    );
\trunc_ln1_reg_239_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => tmp_product0_out(6),
      Q => trunc_ln1_reg_239(4),
      R => '0'
    );
\trunc_ln1_reg_239_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => tmp_product0_out(7),
      Q => trunc_ln1_reg_239(5),
      R => '0'
    );
\trunc_ln1_reg_239_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => tmp_product0_out(8),
      Q => trunc_ln1_reg_239(6),
      R => '0'
    );
\trunc_ln1_reg_239_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => tmp_product0_out(9),
      Q => trunc_ln1_reg_239(7),
      R => '0'
    );
\trunc_ln1_reg_239_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => tmp_product0_out(10),
      Q => trunc_ln1_reg_239(8),
      R => '0'
    );
\trunc_ln1_reg_239_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => tmp_product0_out(11),
      Q => trunc_ln1_reg_239(9),
      R => '0'
    );
\x_2_reg_234_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_54,
      Q => x_2_reg_234(0),
      R => '0'
    );
\x_2_reg_234_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_44,
      Q => x_2_reg_234(10),
      R => '0'
    );
\x_2_reg_234_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_43,
      Q => x_2_reg_234(11),
      R => '0'
    );
\x_2_reg_234_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_42,
      Q => x_2_reg_234(12),
      R => '0'
    );
\x_2_reg_234_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_41,
      Q => x_2_reg_234(13),
      R => '0'
    );
\x_2_reg_234_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_40,
      Q => x_2_reg_234(14),
      R => '0'
    );
\x_2_reg_234_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_39,
      Q => x_2_reg_234(15),
      R => '0'
    );
\x_2_reg_234_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_38,
      Q => x_2_reg_234(16),
      R => '0'
    );
\x_2_reg_234_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_37,
      Q => x_2_reg_234(17),
      R => '0'
    );
\x_2_reg_234_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_36,
      Q => x_2_reg_234(18),
      R => '0'
    );
\x_2_reg_234_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_35,
      Q => x_2_reg_234(19),
      R => '0'
    );
\x_2_reg_234_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_53,
      Q => x_2_reg_234(1),
      R => '0'
    );
\x_2_reg_234_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_34,
      Q => x_2_reg_234(20),
      R => '0'
    );
\x_2_reg_234_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_33,
      Q => x_2_reg_234(21),
      R => '0'
    );
\x_2_reg_234_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_52,
      Q => x_2_reg_234(2),
      R => '0'
    );
\x_2_reg_234_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_51,
      Q => x_2_reg_234(3),
      R => '0'
    );
\x_2_reg_234_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_50,
      Q => x_2_reg_234(4),
      R => '0'
    );
\x_2_reg_234_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_49,
      Q => x_2_reg_234(5),
      R => '0'
    );
\x_2_reg_234_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_48,
      Q => x_2_reg_234(6),
      R => '0'
    );
\x_2_reg_234_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_47,
      Q => x_2_reg_234(7),
      R => '0'
    );
\x_2_reg_234_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_46,
      Q => x_2_reg_234(8),
      R => '0'
    );
\x_2_reg_234_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_45,
      Q => x_2_reg_234(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_cordiccart2pol_0_0 is
  port (
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_control_ARREADY : out STD_LOGIC;
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_control_AWREADY : out STD_LOGIC;
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_BVALID : out STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_RREADY : in STD_LOGIC;
    s_axi_control_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_RVALID : out STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_WREADY : out STD_LOGIC;
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_WVALID : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_cordiccart2pol_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_cordiccart2pol_0_0 : entity is "design_1_cordiccart2pol_0_0,cordiccart2pol,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_cordiccart2pol_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_cordiccart2pol_0_0 : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_cordiccart2pol_0_0 : entity is "cordiccart2pol,Vivado 2024.2";
  attribute hls_module : string;
  attribute hls_module of design_1_cordiccart2pol_0_0 : entity is "yes";
end design_1_cordiccart2pol_0_0;

architecture STRUCTURE of design_1_cordiccart2pol_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_control_rdata\ : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal NLW_inst_s_axi_control_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_control_RDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 22 );
  signal NLW_inst_s_axi_control_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_S_AXI_CONTROL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CONTROL_ADDR_WIDTH of inst : label is 6;
  attribute C_S_AXI_CONTROL_DATA_WIDTH : integer;
  attribute C_S_AXI_CONTROL_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_CONTROL_WSTRB_WIDTH : integer;
  attribute C_S_AXI_CONTROL_WSTRB_WIDTH of inst : label is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of inst : label is 4;
  attribute SDX_KERNEL : string;
  attribute SDX_KERNEL of inst : label is "true";
  attribute SDX_KERNEL_SYNTH_INST : string;
  attribute SDX_KERNEL_SYNTH_INST of inst : label is "inst";
  attribute SDX_KERNEL_TYPE : string;
  attribute SDX_KERNEL_TYPE of inst : label is "hls";
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of inst : label is "4'b0001";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of inst : label is "4'b0010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of inst : label is "4'b0100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of inst : label is "4'b1000";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of ap_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_ps7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_MODE of ap_rst_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of interrupt : signal is "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  attribute X_INTERFACE_MODE of interrupt : signal is "master";
  attribute X_INTERFACE_PARAMETER of interrupt : signal is "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of s_axi_control_ARREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY";
  attribute X_INTERFACE_INFO of s_axi_control_ARVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID";
  attribute X_INTERFACE_INFO of s_axi_control_AWREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY";
  attribute X_INTERFACE_INFO of s_axi_control_AWVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID";
  attribute X_INTERFACE_INFO of s_axi_control_BREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control BREADY";
  attribute X_INTERFACE_INFO of s_axi_control_BVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control BVALID";
  attribute X_INTERFACE_INFO of s_axi_control_RREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RREADY";
  attribute X_INTERFACE_INFO of s_axi_control_RVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RVALID";
  attribute X_INTERFACE_INFO of s_axi_control_WREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WREADY";
  attribute X_INTERFACE_INFO of s_axi_control_WVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WVALID";
  attribute X_INTERFACE_INFO of s_axi_control_ARADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR";
  attribute X_INTERFACE_MODE of s_axi_control_ARADDR : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_control_ARADDR : signal is "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 6, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 50000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_ps7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_control_AWADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR";
  attribute X_INTERFACE_INFO of s_axi_control_BRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_control BRESP";
  attribute X_INTERFACE_INFO of s_axi_control_RDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RDATA";
  attribute X_INTERFACE_INFO of s_axi_control_RRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RRESP";
  attribute X_INTERFACE_INFO of s_axi_control_WDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WDATA";
  attribute X_INTERFACE_INFO of s_axi_control_WSTRB : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB";
begin
  s_axi_control_BRESP(1) <= \<const0>\;
  s_axi_control_BRESP(0) <= \<const0>\;
  s_axi_control_RDATA(31) <= \<const0>\;
  s_axi_control_RDATA(30) <= \<const0>\;
  s_axi_control_RDATA(29) <= \<const0>\;
  s_axi_control_RDATA(28) <= \<const0>\;
  s_axi_control_RDATA(27) <= \<const0>\;
  s_axi_control_RDATA(26) <= \<const0>\;
  s_axi_control_RDATA(25) <= \<const0>\;
  s_axi_control_RDATA(24) <= \<const0>\;
  s_axi_control_RDATA(23) <= \<const0>\;
  s_axi_control_RDATA(22) <= \<const0>\;
  s_axi_control_RDATA(21 downto 0) <= \^s_axi_control_rdata\(21 downto 0);
  s_axi_control_RRESP(1) <= \<const0>\;
  s_axi_control_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_cordiccart2pol_0_0_cordiccart2pol
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      interrupt => interrupt,
      s_axi_control_ARADDR(5 downto 0) => s_axi_control_ARADDR(5 downto 0),
      s_axi_control_ARREADY => s_axi_control_ARREADY,
      s_axi_control_ARVALID => s_axi_control_ARVALID,
      s_axi_control_AWADDR(5 downto 2) => s_axi_control_AWADDR(5 downto 2),
      s_axi_control_AWADDR(1 downto 0) => B"00",
      s_axi_control_AWREADY => s_axi_control_AWREADY,
      s_axi_control_AWVALID => s_axi_control_AWVALID,
      s_axi_control_BREADY => s_axi_control_BREADY,
      s_axi_control_BRESP(1 downto 0) => NLW_inst_s_axi_control_BRESP_UNCONNECTED(1 downto 0),
      s_axi_control_BVALID => s_axi_control_BVALID,
      s_axi_control_RDATA(31 downto 22) => NLW_inst_s_axi_control_RDATA_UNCONNECTED(31 downto 22),
      s_axi_control_RDATA(21 downto 0) => \^s_axi_control_rdata\(21 downto 0),
      s_axi_control_RREADY => s_axi_control_RREADY,
      s_axi_control_RRESP(1 downto 0) => NLW_inst_s_axi_control_RRESP_UNCONNECTED(1 downto 0),
      s_axi_control_RVALID => s_axi_control_RVALID,
      s_axi_control_WDATA(31 downto 22) => B"0000000000",
      s_axi_control_WDATA(21 downto 0) => s_axi_control_WDATA(21 downto 0),
      s_axi_control_WREADY => s_axi_control_WREADY,
      s_axi_control_WSTRB(3) => '0',
      s_axi_control_WSTRB(2 downto 0) => s_axi_control_WSTRB(2 downto 0),
      s_axi_control_WVALID => s_axi_control_WVALID
    );
end STRUCTURE;
