// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1.1 (win64) Build 3900603 Fri Jun 16 19:31:24 MDT 2023
// Date        : Tue Jun 18 16:46:34 2024
// Host        : LAPTOP-3KMOKN3A running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/vivadoxilinx/final/final.sim/sim_1/synth/func/xsim/tb_intrcntrl_func_synth.v
// Design      : intrcntrl
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s100fgga676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module control_logic
   (int_req_OBUF,
    E,
    int_req);
  output int_req_OBUF;
  input [0:0]E;
  input int_req;

  wire [0:0]E;
  wire int_req;
  wire int_req_OBUF;

  (* XILINX_LEGACY_PRIM = "LDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDPE #(
    .INIT(1'b1)) 
    int_req_reg
       (.D(1'b0),
        .G(E),
        .GE(1'b1),
        .PRE(int_req),
        .Q(int_req_OBUF));
endmodule

(* NotValidForBitStream *)
module intrcntrl
   (clk,
    reset,
    read,
    irq,
    int_ack,
    int_req,
    data_bus,
    s,
    imq);
  input clk;
  input reset;
  input read;
  input [31:0]irq;
  input int_ack;
  output int_req;
  output [31:0]data_bus;
  input [1:0]s;
  input [31:0]imq;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [31:0]data_bus;
  wire [31:0]data_bus_OBUF;
  wire \data_bus_OBUFT[31]_inst_i_2_n_0 ;
  wire \data_bus_TRI[0] ;
  wire [31:0]imq;
  wire [31:0]imq_IBUF;
  wire int_ack;
  wire int_ack_IBUF;
  wire int_ack_IBUF_BUFG;
  wire [4:2]int_id;
  wire int_req;
  wire int_req_OBUF;
  wire [31:0]irq;
  wire [31:0]irq_IBUF;
  wire [31:0]irr;
  wire irr_inst_n_0;
  wire irr_inst_n_1;
  wire irr_inst_n_34;
  wire irr_inst_n_35;
  wire irr_inst_n_36;
  wire irr_inst_n_37;
  wire irr_inst_n_38;
  wire irr_inst_n_39;
  wire irr_inst_n_40;
  wire irr_inst_n_41;
  wire [25:0]isr;
  wire isr_inst_n_0;
  wire isr_inst_n_1;
  wire isr_inst_n_10;
  wire isr_inst_n_11;
  wire isr_inst_n_12;
  wire isr_inst_n_13;
  wire isr_inst_n_14;
  wire isr_inst_n_15;
  wire isr_inst_n_16;
  wire isr_inst_n_17;
  wire isr_inst_n_18;
  wire isr_inst_n_19;
  wire isr_inst_n_2;
  wire isr_inst_n_20;
  wire isr_inst_n_21;
  wire isr_inst_n_22;
  wire isr_inst_n_23;
  wire isr_inst_n_24;
  wire isr_inst_n_25;
  wire isr_inst_n_26;
  wire isr_inst_n_27;
  wire isr_inst_n_28;
  wire isr_inst_n_29;
  wire isr_inst_n_3;
  wire isr_inst_n_30;
  wire isr_inst_n_31;
  wire isr_inst_n_4;
  wire isr_inst_n_41;
  wire isr_inst_n_42;
  wire isr_inst_n_43;
  wire isr_inst_n_44;
  wire isr_inst_n_45;
  wire isr_inst_n_46;
  wire isr_inst_n_47;
  wire isr_inst_n_48;
  wire isr_inst_n_49;
  wire isr_inst_n_5;
  wire isr_inst_n_50;
  wire isr_inst_n_51;
  wire isr_inst_n_52;
  wire isr_inst_n_53;
  wire isr_inst_n_54;
  wire isr_inst_n_55;
  wire isr_inst_n_56;
  wire isr_inst_n_57;
  wire isr_inst_n_58;
  wire isr_inst_n_59;
  wire isr_inst_n_6;
  wire isr_inst_n_60;
  wire isr_inst_n_61;
  wire isr_inst_n_62;
  wire isr_inst_n_63;
  wire isr_inst_n_7;
  wire isr_inst_n_8;
  wire isr_inst_n_9;
  wire mux_inst_n_0;
  wire \outdata_tristate_oe_reg[31]_i_3_n_0 ;
  wire [31:0]p_0_in;
  wire priority_resolver_inst_n_0;
  wire priority_resolver_inst_n_37;
  wire priority_resolver_inst_n_38;
  wire priority_resolver_inst_n_4;
  wire read;
  wire read_IBUF;
  wire reset;
  wire reset_IBUF;
  wire [1:0]s;
  wire [1:0]s_IBUF;
  wire [7:5]vector;
  wire vector_generator_inst_n_0;
  wire vector_generator_inst_n_1;
  wire vector_generator_inst_n_2;
  wire vector_generator_inst_n_3;
  wire vector_generator_inst_n_4;

  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  control_logic control_logic_inst
       (.E(int_ack_IBUF_BUFG),
        .int_req(priority_resolver_inst_n_0),
        .int_req_OBUF(int_req_OBUF));
  OBUFT \data_bus_OBUFT[0]_inst 
       (.I(data_bus_OBUF[0]),
        .O(data_bus[0]),
        .T(\data_bus_TRI[0] ));
  OBUFT \data_bus_OBUFT[10]_inst 
       (.I(data_bus_OBUF[10]),
        .O(data_bus[10]),
        .T(\data_bus_TRI[0] ));
  OBUFT \data_bus_OBUFT[11]_inst 
       (.I(data_bus_OBUF[11]),
        .O(data_bus[11]),
        .T(\data_bus_TRI[0] ));
  OBUFT \data_bus_OBUFT[12]_inst 
       (.I(data_bus_OBUF[12]),
        .O(data_bus[12]),
        .T(\data_bus_TRI[0] ));
  OBUFT \data_bus_OBUFT[13]_inst 
       (.I(data_bus_OBUF[13]),
        .O(data_bus[13]),
        .T(\data_bus_TRI[0] ));
  OBUFT \data_bus_OBUFT[14]_inst 
       (.I(data_bus_OBUF[14]),
        .O(data_bus[14]),
        .T(\data_bus_TRI[0] ));
  OBUFT \data_bus_OBUFT[15]_inst 
       (.I(data_bus_OBUF[15]),
        .O(data_bus[15]),
        .T(\data_bus_TRI[0] ));
  OBUFT \data_bus_OBUFT[16]_inst 
       (.I(data_bus_OBUF[16]),
        .O(data_bus[16]),
        .T(\data_bus_TRI[0] ));
  OBUFT \data_bus_OBUFT[17]_inst 
       (.I(data_bus_OBUF[17]),
        .O(data_bus[17]),
        .T(\data_bus_TRI[0] ));
  OBUFT \data_bus_OBUFT[18]_inst 
       (.I(data_bus_OBUF[18]),
        .O(data_bus[18]),
        .T(\data_bus_TRI[0] ));
  OBUFT \data_bus_OBUFT[19]_inst 
       (.I(data_bus_OBUF[19]),
        .O(data_bus[19]),
        .T(\data_bus_TRI[0] ));
  OBUFT \data_bus_OBUFT[1]_inst 
       (.I(data_bus_OBUF[1]),
        .O(data_bus[1]),
        .T(\data_bus_TRI[0] ));
  OBUFT \data_bus_OBUFT[20]_inst 
       (.I(data_bus_OBUF[20]),
        .O(data_bus[20]),
        .T(\data_bus_TRI[0] ));
  OBUFT \data_bus_OBUFT[21]_inst 
       (.I(data_bus_OBUF[21]),
        .O(data_bus[21]),
        .T(\data_bus_TRI[0] ));
  OBUFT \data_bus_OBUFT[22]_inst 
       (.I(data_bus_OBUF[22]),
        .O(data_bus[22]),
        .T(\data_bus_TRI[0] ));
  OBUFT \data_bus_OBUFT[23]_inst 
       (.I(data_bus_OBUF[23]),
        .O(data_bus[23]),
        .T(\data_bus_TRI[0] ));
  OBUFT \data_bus_OBUFT[24]_inst 
       (.I(data_bus_OBUF[24]),
        .O(data_bus[24]),
        .T(\data_bus_TRI[0] ));
  OBUFT \data_bus_OBUFT[25]_inst 
       (.I(data_bus_OBUF[25]),
        .O(data_bus[25]),
        .T(\data_bus_TRI[0] ));
  OBUFT \data_bus_OBUFT[26]_inst 
       (.I(data_bus_OBUF[26]),
        .O(data_bus[26]),
        .T(\data_bus_TRI[0] ));
  OBUFT \data_bus_OBUFT[27]_inst 
       (.I(data_bus_OBUF[27]),
        .O(data_bus[27]),
        .T(\data_bus_TRI[0] ));
  OBUFT \data_bus_OBUFT[28]_inst 
       (.I(data_bus_OBUF[28]),
        .O(data_bus[28]),
        .T(\data_bus_TRI[0] ));
  OBUFT \data_bus_OBUFT[29]_inst 
       (.I(data_bus_OBUF[29]),
        .O(data_bus[29]),
        .T(\data_bus_TRI[0] ));
  OBUFT \data_bus_OBUFT[2]_inst 
       (.I(data_bus_OBUF[2]),
        .O(data_bus[2]),
        .T(\data_bus_TRI[0] ));
  OBUFT \data_bus_OBUFT[30]_inst 
       (.I(data_bus_OBUF[30]),
        .O(data_bus[30]),
        .T(\data_bus_TRI[0] ));
  OBUFT \data_bus_OBUFT[31]_inst 
       (.I(data_bus_OBUF[31]),
        .O(data_bus[31]),
        .T(\data_bus_TRI[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \data_bus_OBUFT[31]_inst_i_1 
       (.C(clk_IBUF_BUFG),
        .CE(mux_inst_n_0),
        .D(\data_bus_OBUFT[31]_inst_i_2_n_0 ),
        .Q(\data_bus_TRI[0] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hAB)) 
    \data_bus_OBUFT[31]_inst_i_2 
       (.I0(reset_IBUF),
        .I1(read_IBUF),
        .I2(int_ack_IBUF),
        .O(\data_bus_OBUFT[31]_inst_i_2_n_0 ));
  OBUFT \data_bus_OBUFT[3]_inst 
       (.I(data_bus_OBUF[3]),
        .O(data_bus[3]),
        .T(\data_bus_TRI[0] ));
  OBUFT \data_bus_OBUFT[4]_inst 
       (.I(data_bus_OBUF[4]),
        .O(data_bus[4]),
        .T(\data_bus_TRI[0] ));
  OBUFT \data_bus_OBUFT[5]_inst 
       (.I(data_bus_OBUF[5]),
        .O(data_bus[5]),
        .T(\data_bus_TRI[0] ));
  OBUFT \data_bus_OBUFT[6]_inst 
       (.I(data_bus_OBUF[6]),
        .O(data_bus[6]),
        .T(\data_bus_TRI[0] ));
  OBUFT \data_bus_OBUFT[7]_inst 
       (.I(data_bus_OBUF[7]),
        .O(data_bus[7]),
        .T(\data_bus_TRI[0] ));
  OBUFT \data_bus_OBUFT[8]_inst 
       (.I(data_bus_OBUF[8]),
        .O(data_bus[8]),
        .T(\data_bus_TRI[0] ));
  OBUFT \data_bus_OBUFT[9]_inst 
       (.I(data_bus_OBUF[9]),
        .O(data_bus[9]),
        .T(\data_bus_TRI[0] ));
  IBUF \imq_IBUF[0]_inst 
       (.I(imq[0]),
        .O(imq_IBUF[0]));
  IBUF \imq_IBUF[10]_inst 
       (.I(imq[10]),
        .O(imq_IBUF[10]));
  IBUF \imq_IBUF[11]_inst 
       (.I(imq[11]),
        .O(imq_IBUF[11]));
  IBUF \imq_IBUF[12]_inst 
       (.I(imq[12]),
        .O(imq_IBUF[12]));
  IBUF \imq_IBUF[13]_inst 
       (.I(imq[13]),
        .O(imq_IBUF[13]));
  IBUF \imq_IBUF[14]_inst 
       (.I(imq[14]),
        .O(imq_IBUF[14]));
  IBUF \imq_IBUF[15]_inst 
       (.I(imq[15]),
        .O(imq_IBUF[15]));
  IBUF \imq_IBUF[16]_inst 
       (.I(imq[16]),
        .O(imq_IBUF[16]));
  IBUF \imq_IBUF[17]_inst 
       (.I(imq[17]),
        .O(imq_IBUF[17]));
  IBUF \imq_IBUF[18]_inst 
       (.I(imq[18]),
        .O(imq_IBUF[18]));
  IBUF \imq_IBUF[19]_inst 
       (.I(imq[19]),
        .O(imq_IBUF[19]));
  IBUF \imq_IBUF[1]_inst 
       (.I(imq[1]),
        .O(imq_IBUF[1]));
  IBUF \imq_IBUF[20]_inst 
       (.I(imq[20]),
        .O(imq_IBUF[20]));
  IBUF \imq_IBUF[21]_inst 
       (.I(imq[21]),
        .O(imq_IBUF[21]));
  IBUF \imq_IBUF[22]_inst 
       (.I(imq[22]),
        .O(imq_IBUF[22]));
  IBUF \imq_IBUF[23]_inst 
       (.I(imq[23]),
        .O(imq_IBUF[23]));
  IBUF \imq_IBUF[24]_inst 
       (.I(imq[24]),
        .O(imq_IBUF[24]));
  IBUF \imq_IBUF[25]_inst 
       (.I(imq[25]),
        .O(imq_IBUF[25]));
  IBUF \imq_IBUF[26]_inst 
       (.I(imq[26]),
        .O(imq_IBUF[26]));
  IBUF \imq_IBUF[27]_inst 
       (.I(imq[27]),
        .O(imq_IBUF[27]));
  IBUF \imq_IBUF[28]_inst 
       (.I(imq[28]),
        .O(imq_IBUF[28]));
  IBUF \imq_IBUF[29]_inst 
       (.I(imq[29]),
        .O(imq_IBUF[29]));
  IBUF \imq_IBUF[2]_inst 
       (.I(imq[2]),
        .O(imq_IBUF[2]));
  IBUF \imq_IBUF[30]_inst 
       (.I(imq[30]),
        .O(imq_IBUF[30]));
  IBUF \imq_IBUF[31]_inst 
       (.I(imq[31]),
        .O(imq_IBUF[31]));
  IBUF \imq_IBUF[3]_inst 
       (.I(imq[3]),
        .O(imq_IBUF[3]));
  IBUF \imq_IBUF[4]_inst 
       (.I(imq[4]),
        .O(imq_IBUF[4]));
  IBUF \imq_IBUF[5]_inst 
       (.I(imq[5]),
        .O(imq_IBUF[5]));
  IBUF \imq_IBUF[6]_inst 
       (.I(imq[6]),
        .O(imq_IBUF[6]));
  IBUF \imq_IBUF[7]_inst 
       (.I(imq[7]),
        .O(imq_IBUF[7]));
  IBUF \imq_IBUF[8]_inst 
       (.I(imq[8]),
        .O(imq_IBUF[8]));
  IBUF \imq_IBUF[9]_inst 
       (.I(imq[9]),
        .O(imq_IBUF[9]));
  BUFG int_ack_IBUF_BUFG_inst
       (.I(int_ack_IBUF),
        .O(int_ack_IBUF_BUFG));
  IBUF int_ack_IBUF_inst
       (.I(int_ack),
        .O(int_ack_IBUF));
  OBUF int_req_OBUF_inst
       (.I(int_req_OBUF),
        .O(int_req));
  IBUF \irq_IBUF[0]_inst 
       (.I(irq[0]),
        .O(irq_IBUF[0]));
  IBUF \irq_IBUF[10]_inst 
       (.I(irq[10]),
        .O(irq_IBUF[10]));
  IBUF \irq_IBUF[11]_inst 
       (.I(irq[11]),
        .O(irq_IBUF[11]));
  IBUF \irq_IBUF[12]_inst 
       (.I(irq[12]),
        .O(irq_IBUF[12]));
  IBUF \irq_IBUF[13]_inst 
       (.I(irq[13]),
        .O(irq_IBUF[13]));
  IBUF \irq_IBUF[14]_inst 
       (.I(irq[14]),
        .O(irq_IBUF[14]));
  IBUF \irq_IBUF[15]_inst 
       (.I(irq[15]),
        .O(irq_IBUF[15]));
  IBUF \irq_IBUF[16]_inst 
       (.I(irq[16]),
        .O(irq_IBUF[16]));
  IBUF \irq_IBUF[17]_inst 
       (.I(irq[17]),
        .O(irq_IBUF[17]));
  IBUF \irq_IBUF[18]_inst 
       (.I(irq[18]),
        .O(irq_IBUF[18]));
  IBUF \irq_IBUF[19]_inst 
       (.I(irq[19]),
        .O(irq_IBUF[19]));
  IBUF \irq_IBUF[1]_inst 
       (.I(irq[1]),
        .O(irq_IBUF[1]));
  IBUF \irq_IBUF[20]_inst 
       (.I(irq[20]),
        .O(irq_IBUF[20]));
  IBUF \irq_IBUF[21]_inst 
       (.I(irq[21]),
        .O(irq_IBUF[21]));
  IBUF \irq_IBUF[22]_inst 
       (.I(irq[22]),
        .O(irq_IBUF[22]));
  IBUF \irq_IBUF[23]_inst 
       (.I(irq[23]),
        .O(irq_IBUF[23]));
  IBUF \irq_IBUF[24]_inst 
       (.I(irq[24]),
        .O(irq_IBUF[24]));
  IBUF \irq_IBUF[25]_inst 
       (.I(irq[25]),
        .O(irq_IBUF[25]));
  IBUF \irq_IBUF[26]_inst 
       (.I(irq[26]),
        .O(irq_IBUF[26]));
  IBUF \irq_IBUF[27]_inst 
       (.I(irq[27]),
        .O(irq_IBUF[27]));
  IBUF \irq_IBUF[28]_inst 
       (.I(irq[28]),
        .O(irq_IBUF[28]));
  IBUF \irq_IBUF[29]_inst 
       (.I(irq[29]),
        .O(irq_IBUF[29]));
  IBUF \irq_IBUF[2]_inst 
       (.I(irq[2]),
        .O(irq_IBUF[2]));
  IBUF \irq_IBUF[30]_inst 
       (.I(irq[30]),
        .O(irq_IBUF[30]));
  IBUF \irq_IBUF[31]_inst 
       (.I(irq[31]),
        .O(irq_IBUF[31]));
  IBUF \irq_IBUF[3]_inst 
       (.I(irq[3]),
        .O(irq_IBUF[3]));
  IBUF \irq_IBUF[4]_inst 
       (.I(irq[4]),
        .O(irq_IBUF[4]));
  IBUF \irq_IBUF[5]_inst 
       (.I(irq[5]),
        .O(irq_IBUF[5]));
  IBUF \irq_IBUF[6]_inst 
       (.I(irq[6]),
        .O(irq_IBUF[6]));
  IBUF \irq_IBUF[7]_inst 
       (.I(irq[7]),
        .O(irq_IBUF[7]));
  IBUF \irq_IBUF[8]_inst 
       (.I(irq[8]),
        .O(irq_IBUF[8]));
  IBUF \irq_IBUF[9]_inst 
       (.I(irq[9]),
        .O(irq_IBUF[9]));
  irr irr_inst
       (.D({irr_inst_n_0,irr_inst_n_1}),
        .Q(irr),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .imq_IBUF(imq_IBUF),
        .int_ack_IBUF(int_ack_IBUF),
        .\int_id[4]_i_2_0 (irr_inst_n_41),
        .\int_id[5]_i_5_0 (irr_inst_n_40),
        .\irr_reg[29]_0 (irr_inst_n_39),
        .\irr_reg[30]_0 (irr_inst_n_38),
        .\irr_reg[31]_0 ({isr_inst_n_0,isr_inst_n_1,isr_inst_n_2,isr_inst_n_3,isr_inst_n_4,isr_inst_n_5,isr_inst_n_6,isr_inst_n_7,isr_inst_n_8,isr_inst_n_9,isr_inst_n_10,isr_inst_n_11,isr_inst_n_12,isr_inst_n_13,isr_inst_n_14,isr_inst_n_15,isr_inst_n_16,isr_inst_n_17,isr_inst_n_18,isr_inst_n_19,isr_inst_n_20,isr_inst_n_21,isr_inst_n_22,isr_inst_n_23,isr_inst_n_24,isr_inst_n_25,isr_inst_n_26,isr_inst_n_27,isr_inst_n_28,isr_inst_n_29,isr_inst_n_30,isr_inst_n_31}),
        .\outdata_tristate_oe_reg[25] ({isr[25],isr[14],isr[9],isr[5]}),
        .\outdata_tristate_oe_reg[31]_i_3 ({irr_inst_n_34,irr_inst_n_35,irr_inst_n_36,irr_inst_n_37}),
        .\outdata_tristate_oe_reg[9] (\outdata_tristate_oe_reg[31]_i_3_n_0 ),
        .reset_IBUF(reset_IBUF),
        .s_IBUF(s_IBUF),
        .vector(vector[5]));
  isr isr_inst
       (.D({isr_inst_n_41,isr_inst_n_42,isr_inst_n_43,isr_inst_n_44,isr_inst_n_45,isr_inst_n_46,isr_inst_n_47,isr_inst_n_48,isr_inst_n_49,isr_inst_n_50,isr_inst_n_51,isr_inst_n_52,isr_inst_n_53,isr_inst_n_54,isr_inst_n_55,isr_inst_n_56,isr_inst_n_57,isr_inst_n_58,isr_inst_n_59,isr_inst_n_60,isr_inst_n_61,isr_inst_n_62,isr_inst_n_63}),
        .E(int_ack_IBUF_BUFG),
        .Q({isr[25],isr[14],isr[9],isr[5:0]}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .imq_IBUF({imq_IBUF[31:26],imq_IBUF[24:15],imq_IBUF[13:10],imq_IBUF[8:6]}),
        .int_ack_IBUF(int_ack_IBUF),
        .irq_IBUF(irq_IBUF),
        .\irr_reg[31] (irr),
        .\isr_reg[31]_0 ({isr_inst_n_0,isr_inst_n_1,isr_inst_n_2,isr_inst_n_3,isr_inst_n_4,isr_inst_n_5,isr_inst_n_6,isr_inst_n_7,isr_inst_n_8,isr_inst_n_9,isr_inst_n_10,isr_inst_n_11,isr_inst_n_12,isr_inst_n_13,isr_inst_n_14,isr_inst_n_15,isr_inst_n_16,isr_inst_n_17,isr_inst_n_18,isr_inst_n_19,isr_inst_n_20,isr_inst_n_21,isr_inst_n_22,isr_inst_n_23,isr_inst_n_24,isr_inst_n_25,isr_inst_n_26,isr_inst_n_27,isr_inst_n_28,isr_inst_n_29,isr_inst_n_30,isr_inst_n_31}),
        .\isr_reg[31]_1 (p_0_in),
        .\outdata_tristate_oe_reg[8] (\outdata_tristate_oe_reg[31]_i_3_n_0 ),
        .reset_IBUF(reset_IBUF),
        .s_IBUF(s_IBUF),
        .vector(vector[7:6]));
  mux mux_inst
       (.D({isr_inst_n_41,isr_inst_n_42,isr_inst_n_43,isr_inst_n_44,isr_inst_n_45,isr_inst_n_46,irr_inst_n_34,isr_inst_n_47,isr_inst_n_48,isr_inst_n_49,isr_inst_n_50,isr_inst_n_51,isr_inst_n_52,isr_inst_n_53,isr_inst_n_54,isr_inst_n_55,isr_inst_n_56,irr_inst_n_35,isr_inst_n_57,isr_inst_n_58,isr_inst_n_59,isr_inst_n_60,irr_inst_n_36,isr_inst_n_61,isr_inst_n_62,isr_inst_n_63,irr_inst_n_37,vector_generator_inst_n_0,vector_generator_inst_n_1,vector_generator_inst_n_2,vector_generator_inst_n_3,vector_generator_inst_n_4}),
        .E(mux_inst_n_0),
        .Q(data_bus_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .int_ack_IBUF(int_ack_IBUF),
        .\outdata_tristate_oe_reg[5]_0 (\outdata_tristate_oe_reg[31]_i_3_n_0 ),
        .read_IBUF(read_IBUF),
        .reset_IBUF(reset_IBUF),
        .vector(vector));
  FDRE #(
    .INIT(1'b1)) 
    \outdata_tristate_oe_reg[31]_i_3 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(priority_resolver_inst_n_4),
        .Q(\outdata_tristate_oe_reg[31]_i_3_n_0 ),
        .R(1'b0));
  priority_resolver priority_resolver_inst
       (.D({priority_resolver_inst_n_37,priority_resolver_inst_n_38}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .int_ack_IBUF(int_ack_IBUF),
        .\int_id_reg[0]_0 (p_0_in),
        .\int_id_reg[1]_0 (irr_inst_n_38),
        .\int_id_reg[2]_0 (irr_inst_n_39),
        .\int_id_reg[3]_0 (irr_inst_n_40),
        .\int_id_reg[4]_0 (int_id),
        .\int_id_reg[4]_1 (irr_inst_n_41),
        .\int_id_reg[5]_0 (priority_resolver_inst_n_0),
        .\int_id_reg[5]_1 (priority_resolver_inst_n_4),
        .\int_id_reg[5]_2 ({irr_inst_n_0,irr_inst_n_1}),
        .reset_IBUF(reset_IBUF));
  IBUF read_IBUF_inst
       (.I(read),
        .O(read_IBUF));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  IBUF \s_IBUF[0]_inst 
       (.I(s[0]),
        .O(s_IBUF[0]));
  IBUF \s_IBUF[1]_inst 
       (.I(s[1]),
        .O(s_IBUF[1]));
  vector_generator vector_generator_inst
       (.D({vector_generator_inst_n_0,vector_generator_inst_n_1,vector_generator_inst_n_2,vector_generator_inst_n_3,vector_generator_inst_n_4}),
        .Q(isr[4:0]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .imq_IBUF(imq_IBUF[4:0]),
        .int_ack_IBUF(int_ack_IBUF),
        .\outdata_tristate_oe_reg[0] (\outdata_tristate_oe_reg[31]_i_3_n_0 ),
        .\outdata_tristate_oe_reg[4] (irr[4:0]),
        .s_IBUF(s_IBUF),
        .\vector_tristate_oe_reg[4]_0 ({int_id,priority_resolver_inst_n_37,priority_resolver_inst_n_38}));
endmodule

module irr
   (D,
    Q,
    \outdata_tristate_oe_reg[31]_i_3 ,
    \irr_reg[30]_0 ,
    \irr_reg[29]_0 ,
    \int_id[5]_i_5_0 ,
    \int_id[4]_i_2_0 ,
    reset_IBUF,
    imq_IBUF,
    vector,
    int_ack_IBUF,
    s_IBUF,
    \outdata_tristate_oe_reg[25] ,
    \outdata_tristate_oe_reg[9] ,
    \irr_reg[31]_0 ,
    clk_IBUF_BUFG);
  output [1:0]D;
  output [31:0]Q;
  output [3:0]\outdata_tristate_oe_reg[31]_i_3 ;
  output \irr_reg[30]_0 ;
  output \irr_reg[29]_0 ;
  output \int_id[5]_i_5_0 ;
  output \int_id[4]_i_2_0 ;
  input reset_IBUF;
  input [31:0]imq_IBUF;
  input [0:0]vector;
  input int_ack_IBUF;
  input [1:0]s_IBUF;
  input [3:0]\outdata_tristate_oe_reg[25] ;
  input \outdata_tristate_oe_reg[9] ;
  input [31:0]\irr_reg[31]_0 ;
  input clk_IBUF_BUFG;

  wire [1:0]D;
  wire [31:0]Q;
  wire clk_IBUF_BUFG;
  wire [31:0]imq_IBUF;
  wire int_ack_IBUF;
  wire \int_id[0]_i_10_n_0 ;
  wire \int_id[0]_i_11_n_0 ;
  wire \int_id[0]_i_12_n_0 ;
  wire \int_id[0]_i_13_n_0 ;
  wire \int_id[0]_i_14_n_0 ;
  wire \int_id[0]_i_15_n_0 ;
  wire \int_id[0]_i_16_n_0 ;
  wire \int_id[0]_i_17_n_0 ;
  wire \int_id[0]_i_18_n_0 ;
  wire \int_id[0]_i_19_n_0 ;
  wire \int_id[0]_i_20_n_0 ;
  wire \int_id[0]_i_21_n_0 ;
  wire \int_id[0]_i_22_n_0 ;
  wire \int_id[0]_i_23_n_0 ;
  wire \int_id[0]_i_24_n_0 ;
  wire \int_id[0]_i_25_n_0 ;
  wire \int_id[0]_i_26_n_0 ;
  wire \int_id[0]_i_27_n_0 ;
  wire \int_id[0]_i_28_n_0 ;
  wire \int_id[0]_i_29_n_0 ;
  wire \int_id[0]_i_2_n_0 ;
  wire \int_id[0]_i_30_n_0 ;
  wire \int_id[0]_i_31_n_0 ;
  wire \int_id[0]_i_32_n_0 ;
  wire \int_id[0]_i_3_n_0 ;
  wire \int_id[0]_i_4_n_0 ;
  wire \int_id[0]_i_5_n_0 ;
  wire \int_id[0]_i_6_n_0 ;
  wire \int_id[0]_i_7_n_0 ;
  wire \int_id[0]_i_8_n_0 ;
  wire \int_id[0]_i_9_n_0 ;
  wire \int_id[1]_i_2_n_0 ;
  wire \int_id[1]_i_3_n_0 ;
  wire \int_id[1]_i_4_n_0 ;
  wire \int_id[2]_i_10_n_0 ;
  wire \int_id[2]_i_2_n_0 ;
  wire \int_id[2]_i_3_n_0 ;
  wire \int_id[2]_i_4_n_0 ;
  wire \int_id[2]_i_5_n_0 ;
  wire \int_id[2]_i_6_n_0 ;
  wire \int_id[2]_i_7_n_0 ;
  wire \int_id[2]_i_8_n_0 ;
  wire \int_id[2]_i_9_n_0 ;
  wire \int_id[4]_i_2_0 ;
  wire \int_id[4]_i_2_n_0 ;
  wire \int_id[5]_i_10_n_0 ;
  wire \int_id[5]_i_11_n_0 ;
  wire \int_id[5]_i_12_n_0 ;
  wire \int_id[5]_i_13_n_0 ;
  wire \int_id[5]_i_14_n_0 ;
  wire \int_id[5]_i_15_n_0 ;
  wire \int_id[5]_i_16_n_0 ;
  wire \int_id[5]_i_17_n_0 ;
  wire \int_id[5]_i_18_n_0 ;
  wire \int_id[5]_i_19_n_0 ;
  wire \int_id[5]_i_20_n_0 ;
  wire \int_id[5]_i_21_n_0 ;
  wire \int_id[5]_i_2_n_0 ;
  wire \int_id[5]_i_3_n_0 ;
  wire \int_id[5]_i_4_n_0 ;
  wire \int_id[5]_i_5_0 ;
  wire \int_id[5]_i_5_n_0 ;
  wire \int_id[5]_i_6_n_0 ;
  wire \int_id[5]_i_7_n_0 ;
  wire \int_id[5]_i_8_n_0 ;
  wire \int_id[5]_i_9_n_0 ;
  wire \irr_reg[29]_0 ;
  wire \irr_reg[30]_0 ;
  wire [31:0]\irr_reg[31]_0 ;
  wire \outdata_tristate_oe[14]_i_2_n_0 ;
  wire \outdata_tristate_oe[25]_i_2_n_0 ;
  wire \outdata_tristate_oe[5]_i_3_n_0 ;
  wire \outdata_tristate_oe[9]_i_2_n_0 ;
  wire [3:0]\outdata_tristate_oe_reg[25] ;
  wire [3:0]\outdata_tristate_oe_reg[31]_i_3 ;
  wire \outdata_tristate_oe_reg[9] ;
  wire reset_IBUF;
  wire [1:0]s_IBUF;
  wire [0:0]vector;

  LUT6 #(
    .INIT(64'h1111111110101000)) 
    \int_id[0]_i_1 
       (.I0(\int_id[0]_i_2_n_0 ),
        .I1(\int_id[0]_i_3_n_0 ),
        .I2(\int_id[0]_i_4_n_0 ),
        .I3(\int_id[0]_i_5_n_0 ),
        .I4(\int_id[0]_i_6_n_0 ),
        .I5(\int_id[0]_i_7_n_0 ),
        .O(D[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \int_id[0]_i_10 
       (.I0(imq_IBUF[20]),
        .I1(Q[20]),
        .O(\int_id[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800080008)) 
    \int_id[0]_i_11 
       (.I0(Q[24]),
        .I1(imq_IBUF[24]),
        .I2(\int_id[0]_i_19_n_0 ),
        .I3(\int_id[0]_i_18_n_0 ),
        .I4(imq_IBUF[25]),
        .I5(Q[25]),
        .O(\int_id[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF00F4)) 
    \int_id[0]_i_12 
       (.I0(\int_id[0]_i_19_n_0 ),
        .I1(\int_id[0]_i_21_n_0 ),
        .I2(\int_id[0]_i_22_n_0 ),
        .I3(\int_id[0]_i_18_n_0 ),
        .I4(reset_IBUF),
        .I5(\int_id[0]_i_23_n_0 ),
        .O(\int_id[0]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \int_id[0]_i_13 
       (.I0(imq_IBUF[22]),
        .I1(Q[22]),
        .O(\int_id[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \int_id[0]_i_14 
       (.I0(Q[23]),
        .I1(imq_IBUF[23]),
        .I2(\int_id[0]_i_19_n_0 ),
        .I3(\int_id[0]_i_18_n_0 ),
        .I4(imq_IBUF[25]),
        .I5(Q[25]),
        .O(\int_id[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F8F8F8F888888)) 
    \int_id[0]_i_15 
       (.I0(Q[11]),
        .I1(imq_IBUF[11]),
        .I2(\int_id[0]_i_24_n_0 ),
        .I3(Q[9]),
        .I4(imq_IBUF[9]),
        .I5(\int_id[0]_i_25_n_0 ),
        .O(\int_id[0]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \int_id[0]_i_16 
       (.I0(imq_IBUF[14]),
        .I1(Q[14]),
        .O(\int_id[0]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \int_id[0]_i_17 
       (.I0(imq_IBUF[25]),
        .I1(Q[25]),
        .O(\int_id[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAAB)) 
    \int_id[0]_i_18 
       (.I0(\int_id[0]_i_26_n_0 ),
        .I1(\int_id[5]_i_2_n_0 ),
        .I2(\int_id[5]_i_3_n_0 ),
        .I3(\int_id[5]_i_4_n_0 ),
        .I4(\int_id[5]_i_5_n_0 ),
        .I5(\int_id[0]_i_27_n_0 ),
        .O(\int_id[0]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \int_id[0]_i_19 
       (.I0(imq_IBUF[27]),
        .I1(Q[27]),
        .O(\int_id[0]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00080808)) 
    \int_id[0]_i_2 
       (.I0(Q[18]),
        .I1(imq_IBUF[18]),
        .I2(\int_id[0]_i_8_n_0 ),
        .I3(imq_IBUF[19]),
        .I4(Q[19]),
        .O(\int_id[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \int_id[0]_i_20 
       (.I0(imq_IBUF[23]),
        .I1(Q[23]),
        .O(\int_id[0]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \int_id[0]_i_21 
       (.I0(imq_IBUF[26]),
        .I1(Q[26]),
        .O(\int_id[0]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \int_id[0]_i_22 
       (.I0(imq_IBUF[28]),
        .I1(Q[28]),
        .O(\int_id[0]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA8)) 
    \int_id[0]_i_23 
       (.I0(\int_id[0]_i_28_n_0 ),
        .I1(\int_id[5]_i_2_n_0 ),
        .I2(\int_id[5]_i_3_n_0 ),
        .I3(\int_id[5]_i_4_n_0 ),
        .I4(\int_id[5]_i_5_n_0 ),
        .I5(\int_id[0]_i_27_n_0 ),
        .O(\int_id[0]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \int_id[0]_i_24 
       (.I0(imq_IBUF[10]),
        .I1(Q[10]),
        .O(\int_id[0]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h7070707770777077)) 
    \int_id[0]_i_25 
       (.I0(Q[8]),
        .I1(imq_IBUF[8]),
        .I2(\int_id[0]_i_29_n_0 ),
        .I3(\int_id[0]_i_30_n_0 ),
        .I4(Q[6]),
        .I5(imq_IBUF[6]),
        .O(\int_id[0]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \int_id[0]_i_26 
       (.I0(imq_IBUF[29]),
        .I1(Q[29]),
        .O(\int_id[0]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \int_id[0]_i_27 
       (.I0(imq_IBUF[31]),
        .I1(Q[31]),
        .O(\int_id[0]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \int_id[0]_i_28 
       (.I0(imq_IBUF[30]),
        .I1(Q[30]),
        .O(\int_id[0]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \int_id[0]_i_29 
       (.I0(imq_IBUF[7]),
        .I1(Q[7]),
        .O(\int_id[0]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0FFF0FFFFFFF4)) 
    \int_id[0]_i_3 
       (.I0(\int_id[0]_i_9_n_0 ),
        .I1(\int_id[0]_i_10_n_0 ),
        .I2(\int_id[0]_i_11_n_0 ),
        .I3(\int_id[0]_i_12_n_0 ),
        .I4(\int_id[0]_i_13_n_0 ),
        .I5(\int_id[0]_i_14_n_0 ),
        .O(\int_id[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7777007000700070)) 
    \int_id[0]_i_30 
       (.I0(Q[5]),
        .I1(imq_IBUF[5]),
        .I2(\int_id[0]_i_31_n_0 ),
        .I3(\int_id[0]_i_32_n_0 ),
        .I4(imq_IBUF[4]),
        .I5(Q[4]),
        .O(\int_id[0]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \int_id[0]_i_31 
       (.I0(imq_IBUF[3]),
        .I1(Q[3]),
        .O(\int_id[0]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h7000777777777777)) 
    \int_id[0]_i_32 
       (.I0(Q[2]),
        .I1(imq_IBUF[2]),
        .I2(imq_IBUF[1]),
        .I3(Q[1]),
        .I4(imq_IBUF[0]),
        .I5(Q[0]),
        .O(\int_id[0]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \int_id[0]_i_4 
       (.I0(imq_IBUF[16]),
        .I1(Q[16]),
        .O(\int_id[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF2A2A2A)) 
    \int_id[0]_i_5 
       (.I0(\int_id[0]_i_15_n_0 ),
        .I1(Q[12]),
        .I2(imq_IBUF[12]),
        .I3(imq_IBUF[13]),
        .I4(Q[13]),
        .I5(\int_id[0]_i_16_n_0 ),
        .O(\int_id[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \int_id[0]_i_6 
       (.I0(imq_IBUF[15]),
        .I1(Q[15]),
        .O(\int_id[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    \int_id[0]_i_7 
       (.I0(Q[17]),
        .I1(imq_IBUF[17]),
        .I2(\int_id[0]_i_8_n_0 ),
        .I3(imq_IBUF[19]),
        .I4(Q[19]),
        .O(\int_id[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \int_id[0]_i_8 
       (.I0(Q[21]),
        .I1(imq_IBUF[21]),
        .I2(\int_id[0]_i_17_n_0 ),
        .I3(\int_id[0]_i_18_n_0 ),
        .I4(\int_id[0]_i_19_n_0 ),
        .I5(\int_id[0]_i_20_n_0 ),
        .O(\int_id[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \int_id[0]_i_9 
       (.I0(imq_IBUF[21]),
        .I1(Q[21]),
        .O(\int_id[0]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hF888FFFF)) 
    \int_id[1]_i_1 
       (.I0(imq_IBUF[30]),
        .I1(Q[30]),
        .I2(imq_IBUF[31]),
        .I3(Q[31]),
        .I4(\int_id[1]_i_2_n_0 ),
        .O(\irr_reg[30]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFAFAFFFB)) 
    \int_id[1]_i_2 
       (.I0(\int_id[5]_i_17_n_0 ),
        .I1(\int_id[1]_i_3_n_0 ),
        .I2(\int_id[5]_i_15_n_0 ),
        .I3(\int_id[5]_i_19_n_0 ),
        .I4(\int_id[5]_i_18_n_0 ),
        .I5(\int_id[5]_i_14_n_0 ),
        .O(\int_id[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFABAAAA)) 
    \int_id[1]_i_3 
       (.I0(\int_id[5]_i_20_n_0 ),
        .I1(\int_id[1]_i_4_n_0 ),
        .I2(\int_id[5]_i_9_n_0 ),
        .I3(\int_id[5]_i_8_n_0 ),
        .I4(\int_id[5]_i_21_n_0 ),
        .O(\int_id[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055D5DDDD)) 
    \int_id[1]_i_4 
       (.I0(\int_id[5]_i_6_n_0 ),
        .I1(\int_id[5]_i_12_n_0 ),
        .I2(\int_id[5]_i_11_n_0 ),
        .I3(\int_id[5]_i_10_n_0 ),
        .I4(\int_id[5]_i_13_n_0 ),
        .I5(\int_id[5]_i_7_n_0 ),
        .O(\int_id[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCFDFFFCFC)) 
    \int_id[2]_i_1 
       (.I0(\int_id[4]_i_2_n_0 ),
        .I1(\int_id[2]_i_2_n_0 ),
        .I2(\int_id[2]_i_3_n_0 ),
        .I3(\int_id[2]_i_4_n_0 ),
        .I4(\int_id[2]_i_5_n_0 ),
        .I5(\int_id[2]_i_6_n_0 ),
        .O(\irr_reg[29]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \int_id[2]_i_10 
       (.I0(imq_IBUF[13]),
        .I1(Q[13]),
        .I2(imq_IBUF[12]),
        .I3(Q[12]),
        .I4(\int_id[5]_i_8_n_0 ),
        .O(\int_id[2]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \int_id[2]_i_2 
       (.I0(imq_IBUF[29]),
        .I1(Q[29]),
        .I2(imq_IBUF[28]),
        .I3(Q[28]),
        .I4(\int_id[5]_i_16_n_0 ),
        .O(\int_id[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \int_id[2]_i_3 
       (.I0(imq_IBUF[21]),
        .I1(Q[21]),
        .I2(imq_IBUF[20]),
        .I3(Q[20]),
        .I4(\int_id[5]_i_18_n_0 ),
        .O(\int_id[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00F2)) 
    \int_id[2]_i_4 
       (.I0(\int_id[2]_i_7_n_0 ),
        .I1(\int_id[2]_i_8_n_0 ),
        .I2(\int_id[2]_i_9_n_0 ),
        .I3(\int_id[2]_i_10_n_0 ),
        .O(\int_id[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000777)) 
    \int_id[2]_i_5 
       (.I0(imq_IBUF[17]),
        .I1(Q[17]),
        .I2(imq_IBUF[16]),
        .I3(Q[16]),
        .I4(\int_id[5]_i_20_n_0 ),
        .O(\int_id[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \int_id[2]_i_6 
       (.I0(\int_id[5]_i_15_n_0 ),
        .I1(imq_IBUF[27]),
        .I2(Q[27]),
        .I3(imq_IBUF[26]),
        .I4(Q[26]),
        .O(\int_id[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \int_id[2]_i_7 
       (.I0(imq_IBUF[1]),
        .I1(Q[1]),
        .I2(imq_IBUF[0]),
        .I3(Q[0]),
        .I4(\int_id[5]_i_10_n_0 ),
        .O(\int_id[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hF888FFFF)) 
    \int_id[2]_i_8 
       (.I0(imq_IBUF[5]),
        .I1(Q[5]),
        .I2(imq_IBUF[4]),
        .I3(Q[4]),
        .I4(\int_id[5]_i_12_n_0 ),
        .O(\int_id[2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hF888FFFF)) 
    \int_id[2]_i_9 
       (.I0(imq_IBUF[11]),
        .I1(Q[11]),
        .I2(imq_IBUF[10]),
        .I3(Q[10]),
        .I4(\int_id[5]_i_6_n_0 ),
        .O(\int_id[2]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hAAFB)) 
    \int_id[3]_i_1 
       (.I0(\int_id[5]_i_4_n_0 ),
        .I1(\int_id[5]_i_3_n_0 ),
        .I2(\int_id[5]_i_2_n_0 ),
        .I3(\int_id[5]_i_5_n_0 ),
        .O(\int_id[5]_i_5_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \int_id[4]_i_1 
       (.I0(\int_id[5]_i_5_n_0 ),
        .I1(\int_id[5]_i_4_n_0 ),
        .I2(\int_id[4]_i_2_n_0 ),
        .O(\int_id[4]_i_2_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \int_id[4]_i_2 
       (.I0(\int_id[5]_i_3_n_0 ),
        .I1(\int_id[5]_i_2_n_0 ),
        .O(\int_id[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \int_id[5]_i_1 
       (.I0(\int_id[5]_i_2_n_0 ),
        .I1(\int_id[5]_i_3_n_0 ),
        .I2(\int_id[5]_i_4_n_0 ),
        .I3(\int_id[5]_i_5_n_0 ),
        .I4(reset_IBUF),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \int_id[5]_i_10 
       (.I0(Q[2]),
        .I1(imq_IBUF[2]),
        .I2(Q[3]),
        .I3(imq_IBUF[3]),
        .O(\int_id[5]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \int_id[5]_i_11 
       (.I0(Q[0]),
        .I1(imq_IBUF[0]),
        .I2(Q[1]),
        .I3(imq_IBUF[1]),
        .O(\int_id[5]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0777)) 
    \int_id[5]_i_12 
       (.I0(Q[6]),
        .I1(imq_IBUF[6]),
        .I2(Q[7]),
        .I3(imq_IBUF[7]),
        .O(\int_id[5]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0777)) 
    \int_id[5]_i_13 
       (.I0(Q[4]),
        .I1(imq_IBUF[4]),
        .I2(Q[5]),
        .I3(imq_IBUF[5]),
        .O(\int_id[5]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \int_id[5]_i_14 
       (.I0(Q[26]),
        .I1(imq_IBUF[26]),
        .I2(Q[27]),
        .I3(imq_IBUF[27]),
        .O(\int_id[5]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \int_id[5]_i_15 
       (.I0(Q[24]),
        .I1(imq_IBUF[24]),
        .I2(Q[25]),
        .I3(imq_IBUF[25]),
        .O(\int_id[5]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \int_id[5]_i_16 
       (.I0(Q[31]),
        .I1(imq_IBUF[31]),
        .I2(Q[30]),
        .I3(imq_IBUF[30]),
        .O(\int_id[5]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \int_id[5]_i_17 
       (.I0(Q[28]),
        .I1(imq_IBUF[28]),
        .I2(Q[29]),
        .I3(imq_IBUF[29]),
        .O(\int_id[5]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \int_id[5]_i_18 
       (.I0(Q[22]),
        .I1(imq_IBUF[22]),
        .I2(Q[23]),
        .I3(imq_IBUF[23]),
        .O(\int_id[5]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \int_id[5]_i_19 
       (.I0(Q[20]),
        .I1(imq_IBUF[20]),
        .I2(Q[21]),
        .I3(imq_IBUF[21]),
        .O(\int_id[5]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \int_id[5]_i_2 
       (.I0(\int_id[5]_i_6_n_0 ),
        .I1(\int_id[5]_i_7_n_0 ),
        .I2(\int_id[5]_i_8_n_0 ),
        .I3(\int_id[5]_i_9_n_0 ),
        .O(\int_id[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \int_id[5]_i_20 
       (.I0(Q[18]),
        .I1(imq_IBUF[18]),
        .I2(Q[19]),
        .I3(imq_IBUF[19]),
        .O(\int_id[5]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0777)) 
    \int_id[5]_i_21 
       (.I0(Q[16]),
        .I1(imq_IBUF[16]),
        .I2(Q[17]),
        .I3(imq_IBUF[17]),
        .O(\int_id[5]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \int_id[5]_i_3 
       (.I0(\int_id[5]_i_10_n_0 ),
        .I1(\int_id[5]_i_11_n_0 ),
        .I2(\int_id[5]_i_12_n_0 ),
        .I3(\int_id[5]_i_13_n_0 ),
        .O(\int_id[5]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \int_id[5]_i_4 
       (.I0(\int_id[5]_i_14_n_0 ),
        .I1(\int_id[5]_i_15_n_0 ),
        .I2(\int_id[5]_i_16_n_0 ),
        .I3(\int_id[5]_i_17_n_0 ),
        .O(\int_id[5]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \int_id[5]_i_5 
       (.I0(\int_id[5]_i_18_n_0 ),
        .I1(\int_id[5]_i_19_n_0 ),
        .I2(\int_id[5]_i_20_n_0 ),
        .I3(\int_id[5]_i_21_n_0 ),
        .O(\int_id[5]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0777)) 
    \int_id[5]_i_6 
       (.I0(Q[8]),
        .I1(imq_IBUF[8]),
        .I2(Q[9]),
        .I3(imq_IBUF[9]),
        .O(\int_id[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \int_id[5]_i_7 
       (.I0(Q[10]),
        .I1(imq_IBUF[10]),
        .I2(Q[11]),
        .I3(imq_IBUF[11]),
        .O(\int_id[5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \int_id[5]_i_8 
       (.I0(Q[14]),
        .I1(imq_IBUF[14]),
        .I2(Q[15]),
        .I3(imq_IBUF[15]),
        .O(\int_id[5]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \int_id[5]_i_9 
       (.I0(Q[12]),
        .I1(imq_IBUF[12]),
        .I2(Q[13]),
        .I3(imq_IBUF[13]),
        .O(\int_id[5]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \irr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\irr_reg[31]_0 [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \irr_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\irr_reg[31]_0 [10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \irr_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\irr_reg[31]_0 [11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \irr_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\irr_reg[31]_0 [12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \irr_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\irr_reg[31]_0 [13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \irr_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\irr_reg[31]_0 [14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \irr_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\irr_reg[31]_0 [15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \irr_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\irr_reg[31]_0 [16]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \irr_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\irr_reg[31]_0 [17]),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \irr_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\irr_reg[31]_0 [18]),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \irr_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\irr_reg[31]_0 [19]),
        .Q(Q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \irr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\irr_reg[31]_0 [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \irr_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\irr_reg[31]_0 [20]),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \irr_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\irr_reg[31]_0 [21]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \irr_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\irr_reg[31]_0 [22]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \irr_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\irr_reg[31]_0 [23]),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \irr_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\irr_reg[31]_0 [24]),
        .Q(Q[24]));
  FDCE #(
    .INIT(1'b0)) 
    \irr_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\irr_reg[31]_0 [25]),
        .Q(Q[25]));
  FDCE #(
    .INIT(1'b0)) 
    \irr_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\irr_reg[31]_0 [26]),
        .Q(Q[26]));
  FDCE #(
    .INIT(1'b0)) 
    \irr_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\irr_reg[31]_0 [27]),
        .Q(Q[27]));
  FDCE #(
    .INIT(1'b0)) 
    \irr_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\irr_reg[31]_0 [28]),
        .Q(Q[28]));
  FDCE #(
    .INIT(1'b0)) 
    \irr_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\irr_reg[31]_0 [29]),
        .Q(Q[29]));
  FDCE #(
    .INIT(1'b0)) 
    \irr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\irr_reg[31]_0 [2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \irr_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\irr_reg[31]_0 [30]),
        .Q(Q[30]));
  FDCE #(
    .INIT(1'b0)) 
    \irr_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\irr_reg[31]_0 [31]),
        .Q(Q[31]));
  FDCE #(
    .INIT(1'b0)) 
    \irr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\irr_reg[31]_0 [3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \irr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\irr_reg[31]_0 [4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \irr_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\irr_reg[31]_0 [5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \irr_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\irr_reg[31]_0 [6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \irr_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\irr_reg[31]_0 [7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \irr_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\irr_reg[31]_0 [8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \irr_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\irr_reg[31]_0 [9]),
        .Q(Q[9]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outdata_tristate_oe[14]_i_1 
       (.I0(\outdata_tristate_oe_reg[9] ),
        .I1(int_ack_IBUF),
        .I2(\outdata_tristate_oe[14]_i_2_n_0 ),
        .O(\outdata_tristate_oe_reg[31]_i_3 [2]));
  LUT6 #(
    .INIT(64'hAAFFF0CCAA00F0CC)) 
    \outdata_tristate_oe[14]_i_2 
       (.I0(\outdata_tristate_oe_reg[9] ),
        .I1(imq_IBUF[14]),
        .I2(Q[14]),
        .I3(s_IBUF[0]),
        .I4(s_IBUF[1]),
        .I5(\outdata_tristate_oe_reg[25] [2]),
        .O(\outdata_tristate_oe[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outdata_tristate_oe[25]_i_1 
       (.I0(\outdata_tristate_oe_reg[9] ),
        .I1(int_ack_IBUF),
        .I2(\outdata_tristate_oe[25]_i_2_n_0 ),
        .O(\outdata_tristate_oe_reg[31]_i_3 [3]));
  LUT6 #(
    .INIT(64'hAAFFCCF0AA00CCF0)) 
    \outdata_tristate_oe[25]_i_2 
       (.I0(\outdata_tristate_oe_reg[9] ),
        .I1(Q[25]),
        .I2(imq_IBUF[25]),
        .I3(s_IBUF[0]),
        .I4(s_IBUF[1]),
        .I5(\outdata_tristate_oe_reg[25] [3]),
        .O(\outdata_tristate_oe[25]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outdata_tristate_oe[5]_i_1 
       (.I0(vector),
        .I1(int_ack_IBUF),
        .I2(\outdata_tristate_oe[5]_i_3_n_0 ),
        .O(\outdata_tristate_oe_reg[31]_i_3 [0]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \outdata_tristate_oe[5]_i_3 
       (.I0(Q[5]),
        .I1(imq_IBUF[5]),
        .I2(vector),
        .I3(s_IBUF[0]),
        .I4(s_IBUF[1]),
        .I5(\outdata_tristate_oe_reg[25] [0]),
        .O(\outdata_tristate_oe[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outdata_tristate_oe[9]_i_1 
       (.I0(\outdata_tristate_oe_reg[9] ),
        .I1(int_ack_IBUF),
        .I2(\outdata_tristate_oe[9]_i_2_n_0 ),
        .O(\outdata_tristate_oe_reg[31]_i_3 [1]));
  LUT6 #(
    .INIT(64'hAAFFF0CCAA00F0CC)) 
    \outdata_tristate_oe[9]_i_2 
       (.I0(\outdata_tristate_oe_reg[9] ),
        .I1(imq_IBUF[9]),
        .I2(Q[9]),
        .I3(s_IBUF[0]),
        .I4(s_IBUF[1]),
        .I5(\outdata_tristate_oe_reg[25] [1]),
        .O(\outdata_tristate_oe[9]_i_2_n_0 ));
endmodule

module isr
   (\isr_reg[31]_0 ,
    Q,
    D,
    irq_IBUF,
    \irr_reg[31] ,
    vector,
    int_ack_IBUF,
    imq_IBUF,
    s_IBUF,
    \outdata_tristate_oe_reg[8] ,
    E,
    \isr_reg[31]_1 ,
    clk_IBUF_BUFG,
    reset_IBUF);
  output [31:0]\isr_reg[31]_0 ;
  output [8:0]Q;
  output [22:0]D;
  input [31:0]irq_IBUF;
  input [31:0]\irr_reg[31] ;
  input [1:0]vector;
  input int_ack_IBUF;
  input [22:0]imq_IBUF;
  input [1:0]s_IBUF;
  input \outdata_tristate_oe_reg[8] ;
  input [0:0]E;
  input [31:0]\isr_reg[31]_1 ;
  input clk_IBUF_BUFG;
  input reset_IBUF;

  wire [22:0]D;
  wire [0:0]E;
  wire [8:0]Q;
  wire clk_IBUF_BUFG;
  wire [22:0]imq_IBUF;
  wire int_ack_IBUF;
  wire [31:0]irq_IBUF;
  wire \irr[31]_i_10_n_0 ;
  wire \irr[31]_i_2_n_0 ;
  wire \irr[31]_i_3_n_0 ;
  wire \irr[31]_i_4_n_0 ;
  wire \irr[31]_i_5_n_0 ;
  wire \irr[31]_i_6_n_0 ;
  wire \irr[31]_i_7_n_0 ;
  wire \irr[31]_i_8_n_0 ;
  wire \irr[31]_i_9_n_0 ;
  wire [31:0]\irr_reg[31] ;
  wire [31:6]isr;
  wire [31:0]\isr_reg[31]_0 ;
  wire [31:0]\isr_reg[31]_1 ;
  wire \outdata_tristate_oe[10]_i_2_n_0 ;
  wire \outdata_tristate_oe[11]_i_2_n_0 ;
  wire \outdata_tristate_oe[12]_i_2_n_0 ;
  wire \outdata_tristate_oe[13]_i_2_n_0 ;
  wire \outdata_tristate_oe[15]_i_2_n_0 ;
  wire \outdata_tristate_oe[16]_i_2_n_0 ;
  wire \outdata_tristate_oe[17]_i_2_n_0 ;
  wire \outdata_tristate_oe[18]_i_2_n_0 ;
  wire \outdata_tristate_oe[19]_i_2_n_0 ;
  wire \outdata_tristate_oe[20]_i_2_n_0 ;
  wire \outdata_tristate_oe[21]_i_2_n_0 ;
  wire \outdata_tristate_oe[22]_i_2_n_0 ;
  wire \outdata_tristate_oe[23]_i_2_n_0 ;
  wire \outdata_tristate_oe[24]_i_2_n_0 ;
  wire \outdata_tristate_oe[26]_i_2_n_0 ;
  wire \outdata_tristate_oe[27]_i_2_n_0 ;
  wire \outdata_tristate_oe[28]_i_2_n_0 ;
  wire \outdata_tristate_oe[29]_i_2_n_0 ;
  wire \outdata_tristate_oe[30]_i_2_n_0 ;
  wire \outdata_tristate_oe[31]_i_4_n_0 ;
  wire \outdata_tristate_oe[6]_i_3_n_0 ;
  wire \outdata_tristate_oe[7]_i_3_n_0 ;
  wire \outdata_tristate_oe[8]_i_2_n_0 ;
  wire \outdata_tristate_oe_reg[8] ;
  wire reset_IBUF;
  wire [1:0]s_IBUF;
  wire [1:0]vector;

  LUT4 #(
    .INIT(16'hFEAA)) 
    \irr[0]_i_1 
       (.I0(irq_IBUF[0]),
        .I1(Q[0]),
        .I2(\irr[31]_i_2_n_0 ),
        .I3(\irr_reg[31] [0]),
        .O(\isr_reg[31]_0 [0]));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \irr[10]_i_1 
       (.I0(irq_IBUF[10]),
        .I1(isr[10]),
        .I2(\irr[31]_i_2_n_0 ),
        .I3(\irr_reg[31] [10]),
        .O(\isr_reg[31]_0 [10]));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \irr[11]_i_1 
       (.I0(irq_IBUF[11]),
        .I1(isr[11]),
        .I2(\irr[31]_i_2_n_0 ),
        .I3(\irr_reg[31] [11]),
        .O(\isr_reg[31]_0 [11]));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \irr[12]_i_1 
       (.I0(irq_IBUF[12]),
        .I1(isr[12]),
        .I2(\irr[31]_i_2_n_0 ),
        .I3(\irr_reg[31] [12]),
        .O(\isr_reg[31]_0 [12]));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \irr[13]_i_1 
       (.I0(irq_IBUF[13]),
        .I1(isr[13]),
        .I2(\irr[31]_i_2_n_0 ),
        .I3(\irr_reg[31] [13]),
        .O(\isr_reg[31]_0 [13]));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \irr[14]_i_1 
       (.I0(irq_IBUF[14]),
        .I1(Q[7]),
        .I2(\irr[31]_i_2_n_0 ),
        .I3(\irr_reg[31] [14]),
        .O(\isr_reg[31]_0 [14]));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \irr[15]_i_1 
       (.I0(irq_IBUF[15]),
        .I1(isr[15]),
        .I2(\irr[31]_i_2_n_0 ),
        .I3(\irr_reg[31] [15]),
        .O(\isr_reg[31]_0 [15]));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \irr[16]_i_1 
       (.I0(irq_IBUF[16]),
        .I1(isr[16]),
        .I2(\irr[31]_i_2_n_0 ),
        .I3(\irr_reg[31] [16]),
        .O(\isr_reg[31]_0 [16]));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \irr[17]_i_1 
       (.I0(irq_IBUF[17]),
        .I1(isr[17]),
        .I2(\irr[31]_i_2_n_0 ),
        .I3(\irr_reg[31] [17]),
        .O(\isr_reg[31]_0 [17]));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \irr[18]_i_1 
       (.I0(irq_IBUF[18]),
        .I1(isr[18]),
        .I2(\irr[31]_i_2_n_0 ),
        .I3(\irr_reg[31] [18]),
        .O(\isr_reg[31]_0 [18]));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \irr[19]_i_1 
       (.I0(irq_IBUF[19]),
        .I1(isr[19]),
        .I2(\irr[31]_i_2_n_0 ),
        .I3(\irr_reg[31] [19]),
        .O(\isr_reg[31]_0 [19]));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \irr[1]_i_1 
       (.I0(irq_IBUF[1]),
        .I1(Q[1]),
        .I2(\irr[31]_i_2_n_0 ),
        .I3(\irr_reg[31] [1]),
        .O(\isr_reg[31]_0 [1]));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \irr[20]_i_1 
       (.I0(irq_IBUF[20]),
        .I1(isr[20]),
        .I2(\irr[31]_i_2_n_0 ),
        .I3(\irr_reg[31] [20]),
        .O(\isr_reg[31]_0 [20]));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \irr[21]_i_1 
       (.I0(irq_IBUF[21]),
        .I1(isr[21]),
        .I2(\irr[31]_i_2_n_0 ),
        .I3(\irr_reg[31] [21]),
        .O(\isr_reg[31]_0 [21]));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \irr[22]_i_1 
       (.I0(irq_IBUF[22]),
        .I1(isr[22]),
        .I2(\irr[31]_i_2_n_0 ),
        .I3(\irr_reg[31] [22]),
        .O(\isr_reg[31]_0 [22]));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \irr[23]_i_1 
       (.I0(irq_IBUF[23]),
        .I1(isr[23]),
        .I2(\irr[31]_i_2_n_0 ),
        .I3(\irr_reg[31] [23]),
        .O(\isr_reg[31]_0 [23]));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \irr[24]_i_1 
       (.I0(irq_IBUF[24]),
        .I1(isr[24]),
        .I2(\irr[31]_i_2_n_0 ),
        .I3(\irr_reg[31] [24]),
        .O(\isr_reg[31]_0 [24]));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \irr[25]_i_1 
       (.I0(irq_IBUF[25]),
        .I1(Q[8]),
        .I2(\irr[31]_i_2_n_0 ),
        .I3(\irr_reg[31] [25]),
        .O(\isr_reg[31]_0 [25]));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \irr[26]_i_1 
       (.I0(irq_IBUF[26]),
        .I1(isr[26]),
        .I2(\irr[31]_i_2_n_0 ),
        .I3(\irr_reg[31] [26]),
        .O(\isr_reg[31]_0 [26]));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \irr[27]_i_1 
       (.I0(irq_IBUF[27]),
        .I1(isr[27]),
        .I2(\irr[31]_i_2_n_0 ),
        .I3(\irr_reg[31] [27]),
        .O(\isr_reg[31]_0 [27]));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \irr[28]_i_1 
       (.I0(irq_IBUF[28]),
        .I1(isr[28]),
        .I2(\irr[31]_i_2_n_0 ),
        .I3(\irr_reg[31] [28]),
        .O(\isr_reg[31]_0 [28]));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \irr[29]_i_1 
       (.I0(irq_IBUF[29]),
        .I1(isr[29]),
        .I2(\irr[31]_i_2_n_0 ),
        .I3(\irr_reg[31] [29]),
        .O(\isr_reg[31]_0 [29]));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \irr[2]_i_1 
       (.I0(irq_IBUF[2]),
        .I1(Q[2]),
        .I2(\irr[31]_i_2_n_0 ),
        .I3(\irr_reg[31] [2]),
        .O(\isr_reg[31]_0 [2]));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \irr[30]_i_1 
       (.I0(irq_IBUF[30]),
        .I1(isr[30]),
        .I2(\irr[31]_i_2_n_0 ),
        .I3(\irr_reg[31] [30]),
        .O(\isr_reg[31]_0 [30]));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \irr[31]_i_1 
       (.I0(irq_IBUF[31]),
        .I1(isr[31]),
        .I2(\irr[31]_i_2_n_0 ),
        .I3(\irr_reg[31] [31]),
        .O(\isr_reg[31]_0 [31]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \irr[31]_i_10 
       (.I0(isr[10]),
        .I1(isr[11]),
        .I2(isr[8]),
        .I3(Q[6]),
        .O(\irr[31]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \irr[31]_i_2 
       (.I0(\irr[31]_i_3_n_0 ),
        .I1(\irr[31]_i_4_n_0 ),
        .I2(\irr[31]_i_5_n_0 ),
        .I3(\irr[31]_i_6_n_0 ),
        .O(\irr[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \irr[31]_i_3 
       (.I0(isr[27]),
        .I1(isr[26]),
        .I2(Q[8]),
        .I3(isr[24]),
        .I4(\irr[31]_i_7_n_0 ),
        .O(\irr[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \irr[31]_i_4 
       (.I0(isr[23]),
        .I1(isr[20]),
        .I2(isr[22]),
        .I3(isr[21]),
        .I4(\irr[31]_i_8_n_0 ),
        .O(\irr[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \irr[31]_i_5 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(isr[7]),
        .I3(isr[6]),
        .I4(\irr[31]_i_9_n_0 ),
        .O(\irr[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \irr[31]_i_6 
       (.I0(isr[15]),
        .I1(isr[12]),
        .I2(Q[7]),
        .I3(isr[13]),
        .I4(\irr[31]_i_10_n_0 ),
        .O(\irr[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \irr[31]_i_7 
       (.I0(isr[28]),
        .I1(isr[29]),
        .I2(isr[30]),
        .I3(isr[31]),
        .O(\irr[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \irr[31]_i_8 
       (.I0(isr[18]),
        .I1(isr[19]),
        .I2(isr[16]),
        .I3(isr[17]),
        .O(\irr[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \irr[31]_i_9 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\irr[31]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \irr[3]_i_1 
       (.I0(irq_IBUF[3]),
        .I1(Q[3]),
        .I2(\irr[31]_i_2_n_0 ),
        .I3(\irr_reg[31] [3]),
        .O(\isr_reg[31]_0 [3]));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \irr[4]_i_1 
       (.I0(irq_IBUF[4]),
        .I1(Q[4]),
        .I2(\irr[31]_i_2_n_0 ),
        .I3(\irr_reg[31] [4]),
        .O(\isr_reg[31]_0 [4]));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \irr[5]_i_1 
       (.I0(irq_IBUF[5]),
        .I1(Q[5]),
        .I2(\irr[31]_i_2_n_0 ),
        .I3(\irr_reg[31] [5]),
        .O(\isr_reg[31]_0 [5]));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \irr[6]_i_1 
       (.I0(irq_IBUF[6]),
        .I1(isr[6]),
        .I2(\irr[31]_i_2_n_0 ),
        .I3(\irr_reg[31] [6]),
        .O(\isr_reg[31]_0 [6]));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \irr[7]_i_1 
       (.I0(irq_IBUF[7]),
        .I1(isr[7]),
        .I2(\irr[31]_i_2_n_0 ),
        .I3(\irr_reg[31] [7]),
        .O(\isr_reg[31]_0 [7]));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \irr[8]_i_1 
       (.I0(irq_IBUF[8]),
        .I1(isr[8]),
        .I2(\irr[31]_i_2_n_0 ),
        .I3(\irr_reg[31] [8]),
        .O(\isr_reg[31]_0 [8]));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \irr[9]_i_1 
       (.I0(irq_IBUF[9]),
        .I1(Q[6]),
        .I2(\irr[31]_i_2_n_0 ),
        .I3(\irr_reg[31] [9]),
        .O(\isr_reg[31]_0 [9]));
  FDPE #(
    .INIT(1'b1)) 
    \isr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\isr_reg[31]_1 [0]),
        .PRE(reset_IBUF),
        .Q(Q[0]));
  FDPE #(
    .INIT(1'b1)) 
    \isr_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\isr_reg[31]_1 [10]),
        .PRE(reset_IBUF),
        .Q(isr[10]));
  FDPE #(
    .INIT(1'b1)) 
    \isr_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\isr_reg[31]_1 [11]),
        .PRE(reset_IBUF),
        .Q(isr[11]));
  FDPE #(
    .INIT(1'b1)) 
    \isr_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\isr_reg[31]_1 [12]),
        .PRE(reset_IBUF),
        .Q(isr[12]));
  FDPE #(
    .INIT(1'b1)) 
    \isr_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\isr_reg[31]_1 [13]),
        .PRE(reset_IBUF),
        .Q(isr[13]));
  FDPE #(
    .INIT(1'b1)) 
    \isr_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\isr_reg[31]_1 [14]),
        .PRE(reset_IBUF),
        .Q(Q[7]));
  FDPE #(
    .INIT(1'b1)) 
    \isr_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\isr_reg[31]_1 [15]),
        .PRE(reset_IBUF),
        .Q(isr[15]));
  FDPE #(
    .INIT(1'b1)) 
    \isr_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\isr_reg[31]_1 [16]),
        .PRE(reset_IBUF),
        .Q(isr[16]));
  FDPE #(
    .INIT(1'b1)) 
    \isr_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\isr_reg[31]_1 [17]),
        .PRE(reset_IBUF),
        .Q(isr[17]));
  FDPE #(
    .INIT(1'b1)) 
    \isr_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\isr_reg[31]_1 [18]),
        .PRE(reset_IBUF),
        .Q(isr[18]));
  FDPE #(
    .INIT(1'b1)) 
    \isr_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\isr_reg[31]_1 [19]),
        .PRE(reset_IBUF),
        .Q(isr[19]));
  FDPE #(
    .INIT(1'b1)) 
    \isr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\isr_reg[31]_1 [1]),
        .PRE(reset_IBUF),
        .Q(Q[1]));
  FDPE #(
    .INIT(1'b1)) 
    \isr_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\isr_reg[31]_1 [20]),
        .PRE(reset_IBUF),
        .Q(isr[20]));
  FDPE #(
    .INIT(1'b1)) 
    \isr_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\isr_reg[31]_1 [21]),
        .PRE(reset_IBUF),
        .Q(isr[21]));
  FDPE #(
    .INIT(1'b1)) 
    \isr_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\isr_reg[31]_1 [22]),
        .PRE(reset_IBUF),
        .Q(isr[22]));
  FDPE #(
    .INIT(1'b1)) 
    \isr_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\isr_reg[31]_1 [23]),
        .PRE(reset_IBUF),
        .Q(isr[23]));
  FDPE #(
    .INIT(1'b1)) 
    \isr_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\isr_reg[31]_1 [24]),
        .PRE(reset_IBUF),
        .Q(isr[24]));
  FDPE #(
    .INIT(1'b1)) 
    \isr_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\isr_reg[31]_1 [25]),
        .PRE(reset_IBUF),
        .Q(Q[8]));
  FDPE #(
    .INIT(1'b1)) 
    \isr_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\isr_reg[31]_1 [26]),
        .PRE(reset_IBUF),
        .Q(isr[26]));
  FDPE #(
    .INIT(1'b1)) 
    \isr_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\isr_reg[31]_1 [27]),
        .PRE(reset_IBUF),
        .Q(isr[27]));
  FDPE #(
    .INIT(1'b1)) 
    \isr_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\isr_reg[31]_1 [28]),
        .PRE(reset_IBUF),
        .Q(isr[28]));
  FDPE #(
    .INIT(1'b1)) 
    \isr_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\isr_reg[31]_1 [29]),
        .PRE(reset_IBUF),
        .Q(isr[29]));
  FDPE #(
    .INIT(1'b1)) 
    \isr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\isr_reg[31]_1 [2]),
        .PRE(reset_IBUF),
        .Q(Q[2]));
  FDPE #(
    .INIT(1'b1)) 
    \isr_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\isr_reg[31]_1 [30]),
        .PRE(reset_IBUF),
        .Q(isr[30]));
  FDPE #(
    .INIT(1'b1)) 
    \isr_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\isr_reg[31]_1 [31]),
        .PRE(reset_IBUF),
        .Q(isr[31]));
  FDPE #(
    .INIT(1'b1)) 
    \isr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\isr_reg[31]_1 [3]),
        .PRE(reset_IBUF),
        .Q(Q[3]));
  FDPE #(
    .INIT(1'b1)) 
    \isr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\isr_reg[31]_1 [4]),
        .PRE(reset_IBUF),
        .Q(Q[4]));
  FDPE #(
    .INIT(1'b1)) 
    \isr_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\isr_reg[31]_1 [5]),
        .PRE(reset_IBUF),
        .Q(Q[5]));
  FDPE #(
    .INIT(1'b1)) 
    \isr_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\isr_reg[31]_1 [6]),
        .PRE(reset_IBUF),
        .Q(isr[6]));
  FDPE #(
    .INIT(1'b1)) 
    \isr_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\isr_reg[31]_1 [7]),
        .PRE(reset_IBUF),
        .Q(isr[7]));
  FDPE #(
    .INIT(1'b1)) 
    \isr_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\isr_reg[31]_1 [8]),
        .PRE(reset_IBUF),
        .Q(isr[8]));
  FDPE #(
    .INIT(1'b1)) 
    \isr_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\isr_reg[31]_1 [9]),
        .PRE(reset_IBUF),
        .Q(Q[6]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outdata_tristate_oe[10]_i_1 
       (.I0(\outdata_tristate_oe_reg[8] ),
        .I1(int_ack_IBUF),
        .I2(\outdata_tristate_oe[10]_i_2_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    \outdata_tristate_oe[10]_i_2 
       (.I0(\outdata_tristate_oe_reg[8] ),
        .I1(isr[10]),
        .I2(imq_IBUF[3]),
        .I3(s_IBUF[0]),
        .I4(s_IBUF[1]),
        .I5(\irr_reg[31] [10]),
        .O(\outdata_tristate_oe[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outdata_tristate_oe[11]_i_1 
       (.I0(\outdata_tristate_oe_reg[8] ),
        .I1(int_ack_IBUF),
        .I2(\outdata_tristate_oe[11]_i_2_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    \outdata_tristate_oe[11]_i_2 
       (.I0(\outdata_tristate_oe_reg[8] ),
        .I1(isr[11]),
        .I2(imq_IBUF[4]),
        .I3(s_IBUF[0]),
        .I4(s_IBUF[1]),
        .I5(\irr_reg[31] [11]),
        .O(\outdata_tristate_oe[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outdata_tristate_oe[12]_i_1 
       (.I0(\outdata_tristate_oe_reg[8] ),
        .I1(int_ack_IBUF),
        .I2(\outdata_tristate_oe[12]_i_2_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    \outdata_tristate_oe[12]_i_2 
       (.I0(\outdata_tristate_oe_reg[8] ),
        .I1(isr[12]),
        .I2(imq_IBUF[5]),
        .I3(s_IBUF[0]),
        .I4(s_IBUF[1]),
        .I5(\irr_reg[31] [12]),
        .O(\outdata_tristate_oe[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outdata_tristate_oe[13]_i_1 
       (.I0(\outdata_tristate_oe_reg[8] ),
        .I1(int_ack_IBUF),
        .I2(\outdata_tristate_oe[13]_i_2_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \outdata_tristate_oe[13]_i_2 
       (.I0(\outdata_tristate_oe_reg[8] ),
        .I1(isr[13]),
        .I2(\irr_reg[31] [13]),
        .I3(s_IBUF[0]),
        .I4(s_IBUF[1]),
        .I5(imq_IBUF[6]),
        .O(\outdata_tristate_oe[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outdata_tristate_oe[15]_i_1 
       (.I0(\outdata_tristate_oe_reg[8] ),
        .I1(int_ack_IBUF),
        .I2(\outdata_tristate_oe[15]_i_2_n_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    \outdata_tristate_oe[15]_i_2 
       (.I0(\outdata_tristate_oe_reg[8] ),
        .I1(isr[15]),
        .I2(imq_IBUF[7]),
        .I3(s_IBUF[0]),
        .I4(s_IBUF[1]),
        .I5(\irr_reg[31] [15]),
        .O(\outdata_tristate_oe[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outdata_tristate_oe[16]_i_1 
       (.I0(\outdata_tristate_oe_reg[8] ),
        .I1(int_ack_IBUF),
        .I2(\outdata_tristate_oe[16]_i_2_n_0 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    \outdata_tristate_oe[16]_i_2 
       (.I0(\outdata_tristate_oe_reg[8] ),
        .I1(isr[16]),
        .I2(imq_IBUF[8]),
        .I3(s_IBUF[0]),
        .I4(s_IBUF[1]),
        .I5(\irr_reg[31] [16]),
        .O(\outdata_tristate_oe[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outdata_tristate_oe[17]_i_1 
       (.I0(\outdata_tristate_oe_reg[8] ),
        .I1(int_ack_IBUF),
        .I2(\outdata_tristate_oe[17]_i_2_n_0 ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    \outdata_tristate_oe[17]_i_2 
       (.I0(\outdata_tristate_oe_reg[8] ),
        .I1(isr[17]),
        .I2(imq_IBUF[9]),
        .I3(s_IBUF[0]),
        .I4(s_IBUF[1]),
        .I5(\irr_reg[31] [17]),
        .O(\outdata_tristate_oe[17]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outdata_tristate_oe[18]_i_1 
       (.I0(\outdata_tristate_oe_reg[8] ),
        .I1(int_ack_IBUF),
        .I2(\outdata_tristate_oe[18]_i_2_n_0 ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    \outdata_tristate_oe[18]_i_2 
       (.I0(\outdata_tristate_oe_reg[8] ),
        .I1(isr[18]),
        .I2(imq_IBUF[10]),
        .I3(s_IBUF[0]),
        .I4(s_IBUF[1]),
        .I5(\irr_reg[31] [18]),
        .O(\outdata_tristate_oe[18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outdata_tristate_oe[19]_i_1 
       (.I0(\outdata_tristate_oe_reg[8] ),
        .I1(int_ack_IBUF),
        .I2(\outdata_tristate_oe[19]_i_2_n_0 ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    \outdata_tristate_oe[19]_i_2 
       (.I0(\outdata_tristate_oe_reg[8] ),
        .I1(isr[19]),
        .I2(imq_IBUF[11]),
        .I3(s_IBUF[0]),
        .I4(s_IBUF[1]),
        .I5(\irr_reg[31] [19]),
        .O(\outdata_tristate_oe[19]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outdata_tristate_oe[20]_i_1 
       (.I0(\outdata_tristate_oe_reg[8] ),
        .I1(int_ack_IBUF),
        .I2(\outdata_tristate_oe[20]_i_2_n_0 ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    \outdata_tristate_oe[20]_i_2 
       (.I0(\outdata_tristate_oe_reg[8] ),
        .I1(isr[20]),
        .I2(imq_IBUF[12]),
        .I3(s_IBUF[0]),
        .I4(s_IBUF[1]),
        .I5(\irr_reg[31] [20]),
        .O(\outdata_tristate_oe[20]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outdata_tristate_oe[21]_i_1 
       (.I0(\outdata_tristate_oe_reg[8] ),
        .I1(int_ack_IBUF),
        .I2(\outdata_tristate_oe[21]_i_2_n_0 ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    \outdata_tristate_oe[21]_i_2 
       (.I0(\outdata_tristate_oe_reg[8] ),
        .I1(isr[21]),
        .I2(imq_IBUF[13]),
        .I3(s_IBUF[0]),
        .I4(s_IBUF[1]),
        .I5(\irr_reg[31] [21]),
        .O(\outdata_tristate_oe[21]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outdata_tristate_oe[22]_i_1 
       (.I0(\outdata_tristate_oe_reg[8] ),
        .I1(int_ack_IBUF),
        .I2(\outdata_tristate_oe[22]_i_2_n_0 ),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    \outdata_tristate_oe[22]_i_2 
       (.I0(\outdata_tristate_oe_reg[8] ),
        .I1(isr[22]),
        .I2(imq_IBUF[14]),
        .I3(s_IBUF[0]),
        .I4(s_IBUF[1]),
        .I5(\irr_reg[31] [22]),
        .O(\outdata_tristate_oe[22]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outdata_tristate_oe[23]_i_1 
       (.I0(\outdata_tristate_oe_reg[8] ),
        .I1(int_ack_IBUF),
        .I2(\outdata_tristate_oe[23]_i_2_n_0 ),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    \outdata_tristate_oe[23]_i_2 
       (.I0(\outdata_tristate_oe_reg[8] ),
        .I1(isr[23]),
        .I2(imq_IBUF[15]),
        .I3(s_IBUF[0]),
        .I4(s_IBUF[1]),
        .I5(\irr_reg[31] [23]),
        .O(\outdata_tristate_oe[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outdata_tristate_oe[24]_i_1 
       (.I0(\outdata_tristate_oe_reg[8] ),
        .I1(int_ack_IBUF),
        .I2(\outdata_tristate_oe[24]_i_2_n_0 ),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    \outdata_tristate_oe[24]_i_2 
       (.I0(\outdata_tristate_oe_reg[8] ),
        .I1(isr[24]),
        .I2(imq_IBUF[16]),
        .I3(s_IBUF[0]),
        .I4(s_IBUF[1]),
        .I5(\irr_reg[31] [24]),
        .O(\outdata_tristate_oe[24]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outdata_tristate_oe[26]_i_1 
       (.I0(\outdata_tristate_oe_reg[8] ),
        .I1(int_ack_IBUF),
        .I2(\outdata_tristate_oe[26]_i_2_n_0 ),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    \outdata_tristate_oe[26]_i_2 
       (.I0(\outdata_tristate_oe_reg[8] ),
        .I1(isr[26]),
        .I2(imq_IBUF[17]),
        .I3(s_IBUF[0]),
        .I4(s_IBUF[1]),
        .I5(\irr_reg[31] [26]),
        .O(\outdata_tristate_oe[26]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outdata_tristate_oe[27]_i_1 
       (.I0(\outdata_tristate_oe_reg[8] ),
        .I1(int_ack_IBUF),
        .I2(\outdata_tristate_oe[27]_i_2_n_0 ),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    \outdata_tristate_oe[27]_i_2 
       (.I0(\outdata_tristate_oe_reg[8] ),
        .I1(isr[27]),
        .I2(imq_IBUF[18]),
        .I3(s_IBUF[0]),
        .I4(s_IBUF[1]),
        .I5(\irr_reg[31] [27]),
        .O(\outdata_tristate_oe[27]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outdata_tristate_oe[28]_i_1 
       (.I0(\outdata_tristate_oe_reg[8] ),
        .I1(int_ack_IBUF),
        .I2(\outdata_tristate_oe[28]_i_2_n_0 ),
        .O(D[19]));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    \outdata_tristate_oe[28]_i_2 
       (.I0(\outdata_tristate_oe_reg[8] ),
        .I1(isr[28]),
        .I2(imq_IBUF[19]),
        .I3(s_IBUF[0]),
        .I4(s_IBUF[1]),
        .I5(\irr_reg[31] [28]),
        .O(\outdata_tristate_oe[28]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outdata_tristate_oe[29]_i_1 
       (.I0(\outdata_tristate_oe_reg[8] ),
        .I1(int_ack_IBUF),
        .I2(\outdata_tristate_oe[29]_i_2_n_0 ),
        .O(D[20]));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    \outdata_tristate_oe[29]_i_2 
       (.I0(\outdata_tristate_oe_reg[8] ),
        .I1(isr[29]),
        .I2(imq_IBUF[20]),
        .I3(s_IBUF[0]),
        .I4(s_IBUF[1]),
        .I5(\irr_reg[31] [29]),
        .O(\outdata_tristate_oe[29]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outdata_tristate_oe[30]_i_1 
       (.I0(\outdata_tristate_oe_reg[8] ),
        .I1(int_ack_IBUF),
        .I2(\outdata_tristate_oe[30]_i_2_n_0 ),
        .O(D[21]));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    \outdata_tristate_oe[30]_i_2 
       (.I0(\outdata_tristate_oe_reg[8] ),
        .I1(isr[30]),
        .I2(imq_IBUF[21]),
        .I3(s_IBUF[0]),
        .I4(s_IBUF[1]),
        .I5(\irr_reg[31] [30]),
        .O(\outdata_tristate_oe[30]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \outdata_tristate_oe[31]_i_2 
       (.I0(\outdata_tristate_oe_reg[8] ),
        .I1(int_ack_IBUF),
        .I2(\outdata_tristate_oe[31]_i_4_n_0 ),
        .O(D[22]));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    \outdata_tristate_oe[31]_i_4 
       (.I0(\outdata_tristate_oe_reg[8] ),
        .I1(isr[31]),
        .I2(imq_IBUF[22]),
        .I3(s_IBUF[0]),
        .I4(s_IBUF[1]),
        .I5(\irr_reg[31] [31]),
        .O(\outdata_tristate_oe[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outdata_tristate_oe[6]_i_1 
       (.I0(vector[0]),
        .I1(int_ack_IBUF),
        .I2(\outdata_tristate_oe[6]_i_3_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    \outdata_tristate_oe[6]_i_3 
       (.I0(vector[0]),
        .I1(isr[6]),
        .I2(imq_IBUF[0]),
        .I3(s_IBUF[0]),
        .I4(s_IBUF[1]),
        .I5(\irr_reg[31] [6]),
        .O(\outdata_tristate_oe[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outdata_tristate_oe[7]_i_1 
       (.I0(vector[1]),
        .I1(int_ack_IBUF),
        .I2(\outdata_tristate_oe[7]_i_3_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    \outdata_tristate_oe[7]_i_3 
       (.I0(vector[1]),
        .I1(isr[7]),
        .I2(imq_IBUF[1]),
        .I3(s_IBUF[0]),
        .I4(s_IBUF[1]),
        .I5(\irr_reg[31] [7]),
        .O(\outdata_tristate_oe[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outdata_tristate_oe[8]_i_1 
       (.I0(\outdata_tristate_oe_reg[8] ),
        .I1(int_ack_IBUF),
        .I2(\outdata_tristate_oe[8]_i_2_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    \outdata_tristate_oe[8]_i_2 
       (.I0(\outdata_tristate_oe_reg[8] ),
        .I1(isr[8]),
        .I2(imq_IBUF[2]),
        .I3(s_IBUF[0]),
        .I4(s_IBUF[1]),
        .I5(\irr_reg[31] [8]),
        .O(\outdata_tristate_oe[8]_i_2_n_0 ));
endmodule

module mux
   (E,
    vector,
    Q,
    reset_IBUF,
    read_IBUF,
    int_ack_IBUF,
    \outdata_tristate_oe_reg[5]_0 ,
    D,
    clk_IBUF_BUFG);
  output [0:0]E;
  output [2:0]vector;
  output [31:0]Q;
  input reset_IBUF;
  input read_IBUF;
  input int_ack_IBUF;
  input \outdata_tristate_oe_reg[5]_0 ;
  input [31:0]D;
  input clk_IBUF_BUFG;

  wire [31:0]D;
  wire [0:0]E;
  wire [31:0]Q;
  wire clk_IBUF_BUFG;
  wire int_ack_IBUF;
  wire \outdata_tristate_oe_reg[5]_0 ;
  wire read_IBUF;
  wire reset_IBUF;
  wire [2:0]vector;

  LUT3 #(
    .INIT(8'hFE)) 
    \outdata_tristate_oe[31]_i_1 
       (.I0(reset_IBUF),
        .I1(read_IBUF),
        .I2(int_ack_IBUF),
        .O(E));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \outdata_tristate_oe[5]_i_2 
       (.I0(1'b0),
        .I1(\outdata_tristate_oe_reg[5]_0 ),
        .I2(1'b1),
        .I3(1'b1),
        .I4(1'b1),
        .I5(1'b1),
        .O(vector[0]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \outdata_tristate_oe[6]_i_2 
       (.I0(1'b0),
        .I1(\outdata_tristate_oe_reg[5]_0 ),
        .I2(1'b1),
        .I3(1'b1),
        .I4(1'b1),
        .I5(1'b1),
        .O(vector[1]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \outdata_tristate_oe[7]_i_2 
       (.I0(1'b0),
        .I1(\outdata_tristate_oe_reg[5]_0 ),
        .I2(1'b1),
        .I3(1'b1),
        .I4(1'b1),
        .I5(1'b1),
        .O(vector[2]));
  FDRE #(
    .INIT(1'b0)) 
    \outdata_tristate_oe_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outdata_tristate_oe_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outdata_tristate_oe_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outdata_tristate_oe_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outdata_tristate_oe_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outdata_tristate_oe_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outdata_tristate_oe_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outdata_tristate_oe_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outdata_tristate_oe_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outdata_tristate_oe_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outdata_tristate_oe_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outdata_tristate_oe_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outdata_tristate_oe_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outdata_tristate_oe_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outdata_tristate_oe_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outdata_tristate_oe_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outdata_tristate_oe_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outdata_tristate_oe_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outdata_tristate_oe_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outdata_tristate_oe_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outdata_tristate_oe_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outdata_tristate_oe_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outdata_tristate_oe_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outdata_tristate_oe_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outdata_tristate_oe_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outdata_tristate_oe_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outdata_tristate_oe_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outdata_tristate_oe_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outdata_tristate_oe_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outdata_tristate_oe_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outdata_tristate_oe_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outdata_tristate_oe_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[9]),
        .Q(Q[9]),
        .R(1'b0));
endmodule

module priority_resolver
   (\int_id_reg[5]_0 ,
    \int_id_reg[4]_0 ,
    \int_id_reg[5]_1 ,
    \int_id_reg[0]_0 ,
    D,
    int_ack_IBUF,
    reset_IBUF,
    \int_id_reg[5]_2 ,
    clk_IBUF_BUFG,
    \int_id_reg[4]_1 ,
    \int_id_reg[3]_0 ,
    \int_id_reg[2]_0 ,
    \int_id_reg[1]_0 );
  output \int_id_reg[5]_0 ;
  output [2:0]\int_id_reg[4]_0 ;
  output \int_id_reg[5]_1 ;
  output [31:0]\int_id_reg[0]_0 ;
  output [1:0]D;
  input int_ack_IBUF;
  input reset_IBUF;
  input [1:0]\int_id_reg[5]_2 ;
  input clk_IBUF_BUFG;
  input \int_id_reg[4]_1 ;
  input \int_id_reg[3]_0 ;
  input \int_id_reg[2]_0 ;
  input \int_id_reg[1]_0 ;

  wire [1:0]D;
  wire clk_IBUF_BUFG;
  wire int_ack_IBUF;
  wire [5:0]int_id;
  wire [31:0]\int_id_reg[0]_0 ;
  wire \int_id_reg[1]_0 ;
  wire \int_id_reg[2]_0 ;
  wire \int_id_reg[3]_0 ;
  wire [2:0]\int_id_reg[4]_0 ;
  wire \int_id_reg[4]_1 ;
  wire \int_id_reg[5]_0 ;
  wire \int_id_reg[5]_1 ;
  wire [1:0]\int_id_reg[5]_2 ;
  wire reset_IBUF;

  FDRE #(
    .INIT(1'b0)) 
    \int_id_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\int_id_reg[5]_2 [0]),
        .Q(int_id[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_id_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\int_id_reg[1]_0 ),
        .Q(int_id[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \int_id_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\int_id_reg[2]_0 ),
        .Q(\int_id_reg[4]_0 [0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \int_id_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\int_id_reg[3]_0 ),
        .Q(\int_id_reg[4]_0 [1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \int_id_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\int_id_reg[4]_1 ),
        .Q(\int_id_reg[4]_0 [2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \int_id_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\int_id_reg[5]_2 [1]),
        .Q(int_id[5]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h1)) 
    int_req_reg_i_1
       (.I0(int_ack_IBUF),
        .I1(int_id[5]),
        .O(\int_id_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \isr[0]_i_1 
       (.I0(int_id[0]),
        .I1(int_id[1]),
        .I2(\int_id_reg[4]_0 [0]),
        .I3(\int_id_reg[4]_0 [1]),
        .I4(\int_id_reg[4]_0 [2]),
        .I5(int_id[5]),
        .O(\int_id_reg[0]_0 [0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBFFFF)) 
    \isr[10]_i_1 
       (.I0(int_id[0]),
        .I1(int_id[1]),
        .I2(\int_id_reg[4]_0 [0]),
        .I3(int_id[5]),
        .I4(\int_id_reg[4]_0 [1]),
        .I5(\int_id_reg[4]_0 [2]),
        .O(\int_id_reg[0]_0 [10]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFDFFFFF)) 
    \isr[11]_i_1 
       (.I0(int_id[1]),
        .I1(\int_id_reg[4]_0 [0]),
        .I2(int_id[0]),
        .I3(int_id[5]),
        .I4(\int_id_reg[4]_0 [1]),
        .I5(\int_id_reg[4]_0 [2]),
        .O(\int_id_reg[0]_0 [11]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFDFFFF)) 
    \isr[12]_i_1 
       (.I0(\int_id_reg[4]_0 [0]),
        .I1(int_id[0]),
        .I2(int_id[1]),
        .I3(int_id[5]),
        .I4(\int_id_reg[4]_0 [1]),
        .I5(\int_id_reg[4]_0 [2]),
        .O(\int_id_reg[0]_0 [12]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF7FFFF)) 
    \isr[13]_i_1 
       (.I0(int_id[0]),
        .I1(\int_id_reg[4]_0 [0]),
        .I2(int_id[1]),
        .I3(int_id[5]),
        .I4(\int_id_reg[4]_0 [1]),
        .I5(\int_id_reg[4]_0 [2]),
        .O(\int_id_reg[0]_0 [13]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFDFFFFF)) 
    \isr[14]_i_1 
       (.I0(\int_id_reg[4]_0 [0]),
        .I1(int_id[0]),
        .I2(int_id[1]),
        .I3(int_id[5]),
        .I4(\int_id_reg[4]_0 [1]),
        .I5(\int_id_reg[4]_0 [2]),
        .O(\int_id_reg[0]_0 [14]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF7FFFFF)) 
    \isr[15]_i_1 
       (.I0(int_id[0]),
        .I1(\int_id_reg[4]_0 [0]),
        .I2(int_id[1]),
        .I3(int_id[5]),
        .I4(\int_id_reg[4]_0 [1]),
        .I5(\int_id_reg[4]_0 [2]),
        .O(\int_id_reg[0]_0 [15]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \isr[16]_i_1 
       (.I0(int_id[0]),
        .I1(int_id[1]),
        .I2(\int_id_reg[4]_0 [0]),
        .I3(int_id[5]),
        .I4(\int_id_reg[4]_0 [2]),
        .I5(\int_id_reg[4]_0 [1]),
        .O(\int_id_reg[0]_0 [16]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBFFFF)) 
    \isr[17]_i_1 
       (.I0(\int_id_reg[4]_0 [0]),
        .I1(int_id[0]),
        .I2(int_id[1]),
        .I3(int_id[5]),
        .I4(\int_id_reg[4]_0 [2]),
        .I5(\int_id_reg[4]_0 [1]),
        .O(\int_id_reg[0]_0 [17]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBFFFF)) 
    \isr[18]_i_1 
       (.I0(int_id[0]),
        .I1(int_id[1]),
        .I2(\int_id_reg[4]_0 [0]),
        .I3(int_id[5]),
        .I4(\int_id_reg[4]_0 [2]),
        .I5(\int_id_reg[4]_0 [1]),
        .O(\int_id_reg[0]_0 [18]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFDFFFFF)) 
    \isr[19]_i_1 
       (.I0(int_id[1]),
        .I1(\int_id_reg[4]_0 [0]),
        .I2(int_id[0]),
        .I3(int_id[5]),
        .I4(\int_id_reg[4]_0 [2]),
        .I5(\int_id_reg[4]_0 [1]),
        .O(\int_id_reg[0]_0 [19]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \isr[1]_i_1 
       (.I0(\int_id_reg[4]_0 [0]),
        .I1(int_id[0]),
        .I2(int_id[1]),
        .I3(\int_id_reg[4]_0 [1]),
        .I4(\int_id_reg[4]_0 [2]),
        .I5(int_id[5]),
        .O(\int_id_reg[0]_0 [1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFDFFFF)) 
    \isr[20]_i_1 
       (.I0(\int_id_reg[4]_0 [0]),
        .I1(int_id[0]),
        .I2(int_id[1]),
        .I3(int_id[5]),
        .I4(\int_id_reg[4]_0 [2]),
        .I5(\int_id_reg[4]_0 [1]),
        .O(\int_id_reg[0]_0 [20]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF7FFFF)) 
    \isr[21]_i_1 
       (.I0(int_id[0]),
        .I1(\int_id_reg[4]_0 [0]),
        .I2(int_id[1]),
        .I3(int_id[5]),
        .I4(\int_id_reg[4]_0 [2]),
        .I5(\int_id_reg[4]_0 [1]),
        .O(\int_id_reg[0]_0 [21]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFDFFFFF)) 
    \isr[22]_i_1 
       (.I0(\int_id_reg[4]_0 [0]),
        .I1(int_id[0]),
        .I2(int_id[1]),
        .I3(int_id[5]),
        .I4(\int_id_reg[4]_0 [2]),
        .I5(\int_id_reg[4]_0 [1]),
        .O(\int_id_reg[0]_0 [22]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF7FFFFF)) 
    \isr[23]_i_1 
       (.I0(int_id[0]),
        .I1(\int_id_reg[4]_0 [0]),
        .I2(int_id[1]),
        .I3(int_id[5]),
        .I4(\int_id_reg[4]_0 [2]),
        .I5(\int_id_reg[4]_0 [1]),
        .O(\int_id_reg[0]_0 [23]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    \isr[24]_i_1 
       (.I0(\int_id_reg[4]_0 [2]),
        .I1(int_id[5]),
        .I2(\int_id_reg[4]_0 [1]),
        .I3(int_id[0]),
        .I4(int_id[1]),
        .I5(\int_id_reg[4]_0 [0]),
        .O(\int_id_reg[0]_0 [24]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFDFFFFF)) 
    \isr[25]_i_1 
       (.I0(\int_id_reg[4]_0 [2]),
        .I1(int_id[5]),
        .I2(\int_id_reg[4]_0 [1]),
        .I3(\int_id_reg[4]_0 [0]),
        .I4(int_id[0]),
        .I5(int_id[1]),
        .O(\int_id_reg[0]_0 [25]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFDFFFFF)) 
    \isr[26]_i_1 
       (.I0(\int_id_reg[4]_0 [2]),
        .I1(int_id[5]),
        .I2(\int_id_reg[4]_0 [1]),
        .I3(int_id[0]),
        .I4(int_id[1]),
        .I5(\int_id_reg[4]_0 [0]),
        .O(\int_id_reg[0]_0 [26]));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \isr[27]_i_1 
       (.I0(\int_id_reg[4]_0 [2]),
        .I1(int_id[5]),
        .I2(\int_id_reg[4]_0 [1]),
        .I3(int_id[1]),
        .I4(\int_id_reg[4]_0 [0]),
        .I5(int_id[0]),
        .O(\int_id_reg[0]_0 [27]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
    \isr[28]_i_1 
       (.I0(\int_id_reg[4]_0 [2]),
        .I1(int_id[5]),
        .I2(\int_id_reg[4]_0 [1]),
        .I3(\int_id_reg[4]_0 [0]),
        .I4(int_id[0]),
        .I5(int_id[1]),
        .O(\int_id_reg[0]_0 [28]));
  LUT6 #(
    .INIT(64'hFFFFFFFFDFFFFFFF)) 
    \isr[29]_i_1 
       (.I0(\int_id_reg[4]_0 [2]),
        .I1(int_id[5]),
        .I2(\int_id_reg[4]_0 [1]),
        .I3(int_id[0]),
        .I4(\int_id_reg[4]_0 [0]),
        .I5(int_id[1]),
        .O(\int_id_reg[0]_0 [29]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \isr[2]_i_1 
       (.I0(int_id[0]),
        .I1(int_id[1]),
        .I2(\int_id_reg[4]_0 [0]),
        .I3(\int_id_reg[4]_0 [1]),
        .I4(\int_id_reg[4]_0 [2]),
        .I5(int_id[5]),
        .O(\int_id_reg[0]_0 [2]));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \isr[30]_i_1 
       (.I0(\int_id_reg[4]_0 [2]),
        .I1(int_id[5]),
        .I2(\int_id_reg[4]_0 [1]),
        .I3(\int_id_reg[4]_0 [0]),
        .I4(int_id[0]),
        .I5(int_id[1]),
        .O(\int_id_reg[0]_0 [30]));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    \isr[31]_i_1 
       (.I0(int_id[0]),
        .I1(\int_id_reg[4]_0 [0]),
        .I2(int_id[1]),
        .I3(\int_id_reg[4]_0 [2]),
        .I4(int_id[5]),
        .I5(\int_id_reg[4]_0 [1]),
        .O(\int_id_reg[0]_0 [31]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    \isr[3]_i_1 
       (.I0(int_id[1]),
        .I1(\int_id_reg[4]_0 [0]),
        .I2(int_id[0]),
        .I3(\int_id_reg[4]_0 [1]),
        .I4(\int_id_reg[4]_0 [2]),
        .I5(int_id[5]),
        .O(\int_id_reg[0]_0 [3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \isr[4]_i_1 
       (.I0(\int_id_reg[4]_0 [0]),
        .I1(int_id[0]),
        .I2(int_id[1]),
        .I3(\int_id_reg[4]_0 [1]),
        .I4(\int_id_reg[4]_0 [2]),
        .I5(int_id[5]),
        .O(\int_id_reg[0]_0 [4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \isr[5]_i_1 
       (.I0(int_id[0]),
        .I1(\int_id_reg[4]_0 [0]),
        .I2(int_id[1]),
        .I3(\int_id_reg[4]_0 [1]),
        .I4(\int_id_reg[4]_0 [2]),
        .I5(int_id[5]),
        .O(\int_id_reg[0]_0 [5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    \isr[6]_i_1 
       (.I0(\int_id_reg[4]_0 [0]),
        .I1(int_id[0]),
        .I2(int_id[1]),
        .I3(\int_id_reg[4]_0 [1]),
        .I4(\int_id_reg[4]_0 [2]),
        .I5(int_id[5]),
        .O(\int_id_reg[0]_0 [6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF7F)) 
    \isr[7]_i_1 
       (.I0(int_id[0]),
        .I1(\int_id_reg[4]_0 [0]),
        .I2(int_id[1]),
        .I3(\int_id_reg[4]_0 [1]),
        .I4(\int_id_reg[4]_0 [2]),
        .I5(int_id[5]),
        .O(\int_id_reg[0]_0 [7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \isr[8]_i_1 
       (.I0(int_id[0]),
        .I1(int_id[1]),
        .I2(\int_id_reg[4]_0 [0]),
        .I3(int_id[5]),
        .I4(\int_id_reg[4]_0 [1]),
        .I5(\int_id_reg[4]_0 [2]),
        .O(\int_id_reg[0]_0 [8]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBFFFF)) 
    \isr[9]_i_1 
       (.I0(\int_id_reg[4]_0 [0]),
        .I1(int_id[0]),
        .I2(int_id[1]),
        .I3(int_id[5]),
        .I4(\int_id_reg[4]_0 [1]),
        .I5(\int_id_reg[4]_0 [2]),
        .O(\int_id_reg[0]_0 [9]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \outdata_tristate_oe[31]_i_5 
       (.I0(int_id[5]),
        .I1(reset_IBUF),
        .O(\int_id_reg[5]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \vector_tristate_oe[0]_i_1 
       (.I0(int_id[0]),
        .I1(\int_id_reg[4]_0 [1]),
        .I2(\int_id_reg[4]_0 [2]),
        .I3(\int_id_reg[4]_0 [0]),
        .I4(int_id[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hABAAAAAA)) 
    \vector_tristate_oe[1]_i_1 
       (.I0(int_id[1]),
        .I1(\int_id_reg[4]_0 [1]),
        .I2(\int_id_reg[4]_0 [2]),
        .I3(int_id[0]),
        .I4(\int_id_reg[4]_0 [0]),
        .O(D[1]));
endmodule

module vector_generator
   (D,
    int_ack_IBUF,
    Q,
    imq_IBUF,
    s_IBUF,
    \outdata_tristate_oe_reg[4] ,
    \outdata_tristate_oe_reg[0] ,
    \vector_tristate_oe_reg[4]_0 ,
    clk_IBUF_BUFG);
  output [4:0]D;
  input int_ack_IBUF;
  input [4:0]Q;
  input [4:0]imq_IBUF;
  input [1:0]s_IBUF;
  input [4:0]\outdata_tristate_oe_reg[4] ;
  input \outdata_tristate_oe_reg[0] ;
  input [4:0]\vector_tristate_oe_reg[4]_0 ;
  input clk_IBUF_BUFG;

  wire [4:0]D;
  wire [4:0]Q;
  wire clk_IBUF_BUFG;
  wire [4:0]imq_IBUF;
  wire int_ack_IBUF;
  wire \outdata_tristate_oe[0]_i_3_n_0 ;
  wire \outdata_tristate_oe[1]_i_3_n_0 ;
  wire \outdata_tristate_oe[2]_i_3_n_0 ;
  wire \outdata_tristate_oe[3]_i_3_n_0 ;
  wire \outdata_tristate_oe[4]_i_3_n_0 ;
  wire \outdata_tristate_oe_reg[0] ;
  wire [4:0]\outdata_tristate_oe_reg[4] ;
  wire [1:0]s_IBUF;
  wire [4:0]vector;
  wire [4:0]\vector_tristate_oe_reg[4]_0 ;
  wire \vector_tristate_oe_reg_n_0_[0] ;
  wire \vector_tristate_oe_reg_n_0_[1] ;
  wire \vector_tristate_oe_reg_n_0_[2] ;
  wire \vector_tristate_oe_reg_n_0_[3] ;
  wire \vector_tristate_oe_reg_n_0_[4] ;

  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outdata_tristate_oe[0]_i_1 
       (.I0(vector[0]),
        .I1(int_ack_IBUF),
        .I2(\outdata_tristate_oe[0]_i_3_n_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \outdata_tristate_oe[0]_i_2 
       (.I0(\vector_tristate_oe_reg_n_0_[0] ),
        .I1(\outdata_tristate_oe_reg[0] ),
        .O(vector[0]));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    \outdata_tristate_oe[0]_i_3 
       (.I0(vector[0]),
        .I1(Q[0]),
        .I2(imq_IBUF[0]),
        .I3(s_IBUF[0]),
        .I4(s_IBUF[1]),
        .I5(\outdata_tristate_oe_reg[4] [0]),
        .O(\outdata_tristate_oe[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outdata_tristate_oe[1]_i_1 
       (.I0(vector[1]),
        .I1(int_ack_IBUF),
        .I2(\outdata_tristate_oe[1]_i_3_n_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \outdata_tristate_oe[1]_i_2 
       (.I0(\vector_tristate_oe_reg_n_0_[1] ),
        .I1(\outdata_tristate_oe_reg[0] ),
        .O(vector[1]));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    \outdata_tristate_oe[1]_i_3 
       (.I0(vector[1]),
        .I1(Q[1]),
        .I2(imq_IBUF[1]),
        .I3(s_IBUF[0]),
        .I4(s_IBUF[1]),
        .I5(\outdata_tristate_oe_reg[4] [1]),
        .O(\outdata_tristate_oe[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outdata_tristate_oe[2]_i_1 
       (.I0(vector[2]),
        .I1(int_ack_IBUF),
        .I2(\outdata_tristate_oe[2]_i_3_n_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \outdata_tristate_oe[2]_i_2 
       (.I0(\vector_tristate_oe_reg_n_0_[2] ),
        .I1(\outdata_tristate_oe_reg[0] ),
        .O(vector[2]));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    \outdata_tristate_oe[2]_i_3 
       (.I0(vector[2]),
        .I1(Q[2]),
        .I2(imq_IBUF[2]),
        .I3(s_IBUF[0]),
        .I4(s_IBUF[1]),
        .I5(\outdata_tristate_oe_reg[4] [2]),
        .O(\outdata_tristate_oe[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outdata_tristate_oe[3]_i_1 
       (.I0(vector[3]),
        .I1(int_ack_IBUF),
        .I2(\outdata_tristate_oe[3]_i_3_n_0 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \outdata_tristate_oe[3]_i_2 
       (.I0(\vector_tristate_oe_reg_n_0_[3] ),
        .I1(\outdata_tristate_oe_reg[0] ),
        .O(vector[3]));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    \outdata_tristate_oe[3]_i_3 
       (.I0(vector[3]),
        .I1(Q[3]),
        .I2(imq_IBUF[3]),
        .I3(s_IBUF[0]),
        .I4(s_IBUF[1]),
        .I5(\outdata_tristate_oe_reg[4] [3]),
        .O(\outdata_tristate_oe[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \outdata_tristate_oe[4]_i_1 
       (.I0(vector[4]),
        .I1(int_ack_IBUF),
        .I2(\outdata_tristate_oe[4]_i_3_n_0 ),
        .O(D[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \outdata_tristate_oe[4]_i_2 
       (.I0(\vector_tristate_oe_reg_n_0_[4] ),
        .I1(\outdata_tristate_oe_reg[0] ),
        .O(vector[4]));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    \outdata_tristate_oe[4]_i_3 
       (.I0(vector[4]),
        .I1(Q[4]),
        .I2(imq_IBUF[4]),
        .I3(s_IBUF[0]),
        .I4(s_IBUF[1]),
        .I5(\outdata_tristate_oe_reg[4] [4]),
        .O(\outdata_tristate_oe[4]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vector_tristate_oe_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\vector_tristate_oe_reg[4]_0 [0]),
        .Q(\vector_tristate_oe_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vector_tristate_oe_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\vector_tristate_oe_reg[4]_0 [1]),
        .Q(\vector_tristate_oe_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vector_tristate_oe_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\vector_tristate_oe_reg[4]_0 [2]),
        .Q(\vector_tristate_oe_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vector_tristate_oe_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\vector_tristate_oe_reg[4]_0 [3]),
        .Q(\vector_tristate_oe_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vector_tristate_oe_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\vector_tristate_oe_reg[4]_0 [4]),
        .Q(\vector_tristate_oe_reg_n_0_[4] ),
        .R(1'b0));
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
