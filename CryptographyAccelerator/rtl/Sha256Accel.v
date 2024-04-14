module ShiftRegister(
  input         clock,
  input         reset,
  input  [31:0] io_input,
  input         io_enable,
  input         io_rev,
  input         io_cyc,
  input         io_tap,
  output [31:0] io_output_0,
  output [31:0] io_output_1,
  output [31:0] io_output_2,
  output [31:0] io_output_3,
  output [31:0] io_output_4,
  output [31:0] io_output_5,
  output [31:0] io_output_6,
  output [31:0] io_output_7,
  output [31:0] io_output_8,
  output [31:0] io_output_9,
  output [31:0] io_output_10,
  output [31:0] io_output_11,
  output [31:0] io_output_12,
  output [31:0] io_output_13,
  output [31:0] io_output_14,
  output [31:0] io_output_15
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] reg_0; // @[ShiftRegister.scala 34:18]
  reg [31:0] reg_1; // @[ShiftRegister.scala 34:18]
  reg [31:0] reg_2; // @[ShiftRegister.scala 34:18]
  reg [31:0] reg_3; // @[ShiftRegister.scala 34:18]
  reg [31:0] reg_4; // @[ShiftRegister.scala 34:18]
  reg [31:0] reg_5; // @[ShiftRegister.scala 34:18]
  reg [31:0] reg_6; // @[ShiftRegister.scala 34:18]
  reg [31:0] reg_7; // @[ShiftRegister.scala 34:18]
  reg [31:0] reg_8; // @[ShiftRegister.scala 34:18]
  reg [31:0] reg_9; // @[ShiftRegister.scala 34:18]
  reg [31:0] reg_10; // @[ShiftRegister.scala 34:18]
  reg [31:0] reg_11; // @[ShiftRegister.scala 34:18]
  reg [31:0] reg_12; // @[ShiftRegister.scala 34:18]
  reg [31:0] reg_13; // @[ShiftRegister.scala 34:18]
  reg [31:0] reg_14; // @[ShiftRegister.scala 34:18]
  reg [31:0] reg_15; // @[ShiftRegister.scala 34:18]
  wire [3:0] _T = 4'hf; // @[ShiftRegister.scala 42:36]
  wire [31:0] _GEN_0 = reg_0; // @[ShiftRegister.scala 42:26]
  wire [31:0] _GEN_1 = reg_0; // @[ShiftRegister.scala 42:26]
  wire [31:0] _GEN_2 = reg_0; // @[ShiftRegister.scala 42:26]
  wire [31:0] _GEN_3 = reg_0; // @[ShiftRegister.scala 42:26]
  wire [31:0] _GEN_4 = reg_0; // @[ShiftRegister.scala 42:26]
  wire [31:0] _GEN_5 = reg_0; // @[ShiftRegister.scala 42:26]
  wire [31:0] _GEN_6 = reg_0; // @[ShiftRegister.scala 42:26]
  wire [31:0] _GEN_7 = reg_0; // @[ShiftRegister.scala 42:26]
  wire [31:0] _GEN_8 = reg_0; // @[ShiftRegister.scala 42:26]
  wire [31:0] _GEN_9 = reg_0; // @[ShiftRegister.scala 42:26]
  wire [31:0] _GEN_10 = reg_0; // @[ShiftRegister.scala 42:26]
  wire [31:0] _GEN_11 = reg_0; // @[ShiftRegister.scala 42:26]
  wire [31:0] _GEN_12 = reg_0; // @[ShiftRegister.scala 42:26]
  wire [31:0] _GEN_13 = reg_0; // @[ShiftRegister.scala 42:26]
  wire [31:0] _GEN_14 = reg_0; // @[ShiftRegister.scala 42:26]
  wire [31:0] _GEN_15 = reg_15; // @[ShiftRegister.scala 42:26]
  wire [3:0] _T_1 = 4'hf; // @[ShiftRegister.scala 48:36]
  wire [31:0] _reg_T_1 = reg_15; // @[ShiftRegister.scala 48:62 ShiftRegister.scala 48:62]
  wire [31:0] _GEN_16 = reg_0; // @[ShiftRegister.scala 48:62]
  wire [31:0] _GEN_17 = reg_0; // @[ShiftRegister.scala 48:62]
  wire [31:0] _GEN_18 = reg_1; // @[ShiftRegister.scala 48:62]
  wire [31:0] _GEN_19 = reg_2; // @[ShiftRegister.scala 48:62]
  wire [31:0] _GEN_20 = reg_3; // @[ShiftRegister.scala 48:62]
  wire [31:0] _GEN_21 = reg_4; // @[ShiftRegister.scala 48:62]
  wire [31:0] _GEN_22 = reg_5; // @[ShiftRegister.scala 48:62]
  wire [31:0] _GEN_23 = reg_6; // @[ShiftRegister.scala 48:62]
  wire [31:0] _GEN_24 = reg_7; // @[ShiftRegister.scala 48:62]
  wire [31:0] _GEN_25 = reg_8; // @[ShiftRegister.scala 48:62]
  wire [31:0] _GEN_26 = reg_9; // @[ShiftRegister.scala 48:62]
  wire [31:0] _GEN_27 = reg_10; // @[ShiftRegister.scala 48:62]
  wire [31:0] _GEN_28 = reg_11; // @[ShiftRegister.scala 48:62]
  wire [31:0] _GEN_29 = reg_12; // @[ShiftRegister.scala 48:62]
  wire [31:0] _GEN_30 = reg_13; // @[ShiftRegister.scala 48:62]
  wire [31:0] _GEN_31 = reg_15; // @[ShiftRegister.scala 48:62]
  wire [31:0] _GEN_32 = io_input; // @[ShiftRegister.scala 48:27]
  wire [31:0] _GEN_33 = reg_0; // @[ShiftRegister.scala 48:27]
  wire [31:0] _GEN_34 = reg_1; // @[ShiftRegister.scala 48:27]
  wire [31:0] _GEN_35 = reg_2; // @[ShiftRegister.scala 48:27]
  wire [31:0] _GEN_36 = reg_3; // @[ShiftRegister.scala 48:27]
  wire [31:0] _GEN_37 = reg_4; // @[ShiftRegister.scala 48:27]
  wire [31:0] _GEN_38 = reg_5; // @[ShiftRegister.scala 48:27]
  wire [31:0] _GEN_39 = reg_6; // @[ShiftRegister.scala 48:27]
  wire [31:0] _GEN_40 = reg_7; // @[ShiftRegister.scala 48:27]
  wire [31:0] _GEN_41 = reg_8; // @[ShiftRegister.scala 48:27]
  wire [31:0] _GEN_42 = reg_9; // @[ShiftRegister.scala 48:27]
  wire [31:0] _GEN_43 = reg_10; // @[ShiftRegister.scala 48:27]
  wire [31:0] _GEN_44 = reg_11; // @[ShiftRegister.scala 48:27]
  wire [31:0] _GEN_45 = reg_12; // @[ShiftRegister.scala 48:27]
  wire [31:0] _GEN_46 = reg_13; // @[ShiftRegister.scala 48:27]
  wire [31:0] _GEN_47 = reg_14; // @[ShiftRegister.scala 48:27]
  wire [31:0] _GEN_48 = io_input; // @[ShiftRegister.scala 37:23]
  wire [31:0] _GEN_49 = reg_0; // @[ShiftRegister.scala 37:23]
  wire [31:0] _GEN_50 = reg_1; // @[ShiftRegister.scala 37:23]
  wire [31:0] _GEN_51 = reg_2; // @[ShiftRegister.scala 37:23]
  wire [31:0] _GEN_52 = reg_3; // @[ShiftRegister.scala 37:23]
  wire [31:0] _GEN_53 = reg_4; // @[ShiftRegister.scala 37:23]
  wire [31:0] _GEN_54 = reg_5; // @[ShiftRegister.scala 37:23]
  wire [31:0] _GEN_55 = reg_6; // @[ShiftRegister.scala 37:23]
  wire [31:0] _GEN_56 = reg_7; // @[ShiftRegister.scala 37:23]
  wire [31:0] _GEN_57 = reg_8; // @[ShiftRegister.scala 37:23]
  wire [31:0] _GEN_58 = reg_9; // @[ShiftRegister.scala 37:23]
  wire [31:0] _GEN_59 = reg_10; // @[ShiftRegister.scala 37:23]
  wire [31:0] _GEN_60 = reg_11; // @[ShiftRegister.scala 37:23]
  wire [31:0] _GEN_61 = reg_12; // @[ShiftRegister.scala 37:23]
  wire [31:0] _GEN_62 = reg_13; // @[ShiftRegister.scala 37:23]
  wire [31:0] _reg_T = reg_15; // @[ShiftRegister.scala 42:26 ShiftRegister.scala 42:26 ShiftRegister.scala 42:26 ShiftRegister.scala 42:26 ShiftRegister.scala 42:26 ShiftRegister.scala 42:26 ShiftRegister.scala 42:26 ShiftRegister.scala 42:26 ShiftRegister.scala 42:26 ShiftRegister.scala 42:26 ShiftRegister.scala 42:26 ShiftRegister.scala 42:26 ShiftRegister.scala 42:26 ShiftRegister.scala 42:26 ShiftRegister.scala 42:26 ShiftRegister.scala 42:26 ShiftRegister.scala 42:26]
  wire [31:0] _GEN_63 = reg_14; // @[ShiftRegister.scala 37:23]
  wire [31:0] _GEN_64 = io_enable ? io_input : reg_0; // @[ShiftRegister.scala 36:22]
  wire [31:0] _GEN_65 = io_enable ? reg_0 : reg_1; // @[ShiftRegister.scala 36:22]
  wire [31:0] _GEN_66 = io_enable ? reg_1 : reg_2; // @[ShiftRegister.scala 36:22]
  wire [31:0] _GEN_67 = io_enable ? reg_2 : reg_3; // @[ShiftRegister.scala 36:22]
  wire [31:0] _GEN_68 = io_enable ? reg_3 : reg_4; // @[ShiftRegister.scala 36:22]
  wire [31:0] _GEN_69 = io_enable ? reg_4 : reg_5; // @[ShiftRegister.scala 36:22]
  wire [31:0] _GEN_70 = io_enable ? reg_5 : reg_6; // @[ShiftRegister.scala 36:22]
  wire [31:0] _GEN_71 = io_enable ? reg_6 : reg_7; // @[ShiftRegister.scala 36:22]
  wire [31:0] _GEN_72 = io_enable ? reg_7 : reg_8; // @[ShiftRegister.scala 36:22]
  wire [31:0] _GEN_73 = io_enable ? reg_8 : reg_9; // @[ShiftRegister.scala 36:22]
  wire [31:0] _GEN_74 = io_enable ? reg_9 : reg_10; // @[ShiftRegister.scala 36:22]
  wire [31:0] _GEN_75 = io_enable ? reg_10 : reg_11; // @[ShiftRegister.scala 36:22]
  wire [31:0] _GEN_76 = io_enable ? reg_11 : reg_12; // @[ShiftRegister.scala 36:22]
  wire [31:0] _GEN_77 = io_enable ? reg_12 : reg_13; // @[ShiftRegister.scala 36:22]
  wire [31:0] _GEN_78 = io_enable ? reg_13 : reg_14; // @[ShiftRegister.scala 36:22]
  wire [31:0] _GEN_79 = io_enable ? reg_14 : reg_15; // @[ShiftRegister.scala 36:22]
  assign io_output_0 = reg_0; // @[ShiftRegister.scala 53:15]
  assign io_output_1 = reg_1; // @[ShiftRegister.scala 53:15]
  assign io_output_2 = reg_2; // @[ShiftRegister.scala 53:15]
  assign io_output_3 = reg_3; // @[ShiftRegister.scala 53:15]
  assign io_output_4 = reg_4; // @[ShiftRegister.scala 53:15]
  assign io_output_5 = reg_5; // @[ShiftRegister.scala 53:15]
  assign io_output_6 = reg_6; // @[ShiftRegister.scala 53:15]
  assign io_output_7 = reg_7; // @[ShiftRegister.scala 53:15]
  assign io_output_8 = reg_8; // @[ShiftRegister.scala 53:15]
  assign io_output_9 = reg_9; // @[ShiftRegister.scala 53:15]
  assign io_output_10 = reg_10; // @[ShiftRegister.scala 53:15]
  assign io_output_11 = reg_11; // @[ShiftRegister.scala 53:15]
  assign io_output_12 = reg_12; // @[ShiftRegister.scala 53:15]
  assign io_output_13 = reg_13; // @[ShiftRegister.scala 53:15]
  assign io_output_14 = reg_14; // @[ShiftRegister.scala 53:15]
  assign io_output_15 = reg_15; // @[ShiftRegister.scala 53:15]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  reg_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  reg_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  reg_2 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  reg_3 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  reg_4 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  reg_5 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  reg_6 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  reg_7 = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  reg_8 = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  reg_9 = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  reg_10 = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  reg_11 = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  reg_12 = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  reg_13 = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  reg_14 = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  reg_15 = _RAND_15[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (io_enable) begin
      reg_0 <= io_input;
    end
    if (io_enable) begin
      reg_1 <= reg_0;
    end
    if (io_enable) begin
      reg_2 <= reg_1;
    end
    if (io_enable) begin
      reg_3 <= reg_2;
    end
    if (io_enable) begin
      reg_4 <= reg_3;
    end
    if (io_enable) begin
      reg_5 <= reg_4;
    end
    if (io_enable) begin
      reg_6 <= reg_5;
    end
    if (io_enable) begin
      reg_7 <= reg_6;
    end
    if (io_enable) begin
      reg_8 <= reg_7;
    end
    if (io_enable) begin
      reg_9 <= reg_8;
    end
    if (io_enable) begin
      reg_10 <= reg_9;
    end
    if (io_enable) begin
      reg_11 <= reg_10;
    end
    if (io_enable) begin
      reg_12 <= reg_11;
    end
    if (io_enable) begin
      reg_13 <= reg_12;
    end
    if (io_enable) begin
      reg_14 <= reg_13;
    end
    if (io_enable) begin
      reg_15 <= reg_14;
    end
  end
endmodule
module MessageScheduleArray(
  input         clock,
  input         reset,
  input         io_first,
  input         io_shiftIn,
  input  [31:0] io_wordIn,
  output [31:0] io_wOut
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire  shreg_clock; // @[MessageScheduleArray.scala 50:23]
  wire  shreg_reset; // @[MessageScheduleArray.scala 50:23]
  wire [31:0] shreg_io_input; // @[MessageScheduleArray.scala 50:23]
  wire  shreg_io_enable; // @[MessageScheduleArray.scala 50:23]
  wire  shreg_io_rev; // @[MessageScheduleArray.scala 50:23]
  wire  shreg_io_cyc; // @[MessageScheduleArray.scala 50:23]
  wire  shreg_io_tap; // @[MessageScheduleArray.scala 50:23]
  wire [31:0] shreg_io_output_0; // @[MessageScheduleArray.scala 50:23]
  wire [31:0] shreg_io_output_1; // @[MessageScheduleArray.scala 50:23]
  wire [31:0] shreg_io_output_2; // @[MessageScheduleArray.scala 50:23]
  wire [31:0] shreg_io_output_3; // @[MessageScheduleArray.scala 50:23]
  wire [31:0] shreg_io_output_4; // @[MessageScheduleArray.scala 50:23]
  wire [31:0] shreg_io_output_5; // @[MessageScheduleArray.scala 50:23]
  wire [31:0] shreg_io_output_6; // @[MessageScheduleArray.scala 50:23]
  wire [31:0] shreg_io_output_7; // @[MessageScheduleArray.scala 50:23]
  wire [31:0] shreg_io_output_8; // @[MessageScheduleArray.scala 50:23]
  wire [31:0] shreg_io_output_9; // @[MessageScheduleArray.scala 50:23]
  wire [31:0] shreg_io_output_10; // @[MessageScheduleArray.scala 50:23]
  wire [31:0] shreg_io_output_11; // @[MessageScheduleArray.scala 50:23]
  wire [31:0] shreg_io_output_12; // @[MessageScheduleArray.scala 50:23]
  wire [31:0] shreg_io_output_13; // @[MessageScheduleArray.scala 50:23]
  wire [31:0] shreg_io_output_14; // @[MessageScheduleArray.scala 50:23]
  wire [31:0] shreg_io_output_15; // @[MessageScheduleArray.scala 50:23]
  reg [5:0] iReg; // @[MessageScheduleArray.scala 32:23]
  reg [31:0] out; // @[MessageScheduleArray.scala 36:22]
  wire [6:0] _T = iReg + 6'h1; // @[MessageScheduleArray.scala 44:19]
  wire [5:0] _T_1 = iReg + 6'h1; // @[MessageScheduleArray.scala 44:19]
  wire [6:0] _T_2 = iReg + 6'h1; // @[MessageScheduleArray.scala 45:22]
  wire [5:0] _T_3 = iReg + 6'h1; // @[MessageScheduleArray.scala 45:22]
  wire [5:0] _GEN_0 = io_shiftIn ? _T_1 : iReg; // @[MessageScheduleArray.scala 43:30]
  wire [5:0] _GEN_1 = io_shiftIn ? _T_1 : iReg; // @[MessageScheduleArray.scala 43:30]
  wire [5:0] i = io_first ? 6'h0 : _GEN_0; // @[MessageScheduleArray.scala 40:21]
  wire [5:0] _GEN_3 = io_first ? 6'h0 : _GEN_0; // @[MessageScheduleArray.scala 40:21]
  wire [5:0] _GEN_2 = i; // @[MessageScheduleArray.scala 33:17 MessageScheduleArray.scala 41:11 MessageScheduleArray.scala 44:11 MessageScheduleArray.scala 47:11]
  wire  _T_4 = i < 6'h10; // @[MessageScheduleArray.scala 60:17]
  wire [6:0] _T_5 = shreg_io_output_14[6:0]; // @[RotateLeft.scala 24:25]
  wire [24:0] _T_6 = shreg_io_output_14[31:7]; // @[RotateLeft.scala 24:48]
  wire [31:0] _T_7 = {shreg_io_output_14[6:0],shreg_io_output_14[31:7]}; // @[RotateLeft.scala 24:38]
  wire [17:0] _T_8 = shreg_io_output_14[17:0]; // @[RotateLeft.scala 24:25]
  wire [13:0] _T_9 = shreg_io_output_14[31:18]; // @[RotateLeft.scala 24:48]
  wire [31:0] _T_10 = {shreg_io_output_14[17:0],shreg_io_output_14[31:18]}; // @[RotateLeft.scala 24:38]
  wire [31:0] _T_11 = _T_7 ^ _T_10; // @[MessageScheduleArray.scala 63:58]
  wire [28:0] _T_12 = shreg_io_output_14[31:3]; // @[MessageScheduleArray.scala 63:120]
  wire [31:0] _GEN_6 = {{3'd0}, shreg_io_output_14[31:3]}; // @[MessageScheduleArray.scala 63:97]
  wire [31:0] _T_13 = _T_11 ^ _GEN_6; // @[MessageScheduleArray.scala 63:97]
  wire [16:0] _T_14 = shreg_io_output_1[16:0]; // @[RotateLeft.scala 24:25]
  wire [14:0] _T_15 = shreg_io_output_1[31:17]; // @[RotateLeft.scala 24:48]
  wire [31:0] _T_16 = {shreg_io_output_1[16:0],shreg_io_output_1[31:17]}; // @[RotateLeft.scala 24:38]
  wire [18:0] _T_17 = shreg_io_output_1[18:0]; // @[RotateLeft.scala 24:25]
  wire [12:0] _T_18 = shreg_io_output_1[31:19]; // @[RotateLeft.scala 24:48]
  wire [31:0] _T_19 = {shreg_io_output_1[18:0],shreg_io_output_1[31:19]}; // @[RotateLeft.scala 24:38]
  wire [31:0] _T_20 = _T_16 ^ _T_19; // @[MessageScheduleArray.scala 64:58]
  wire [21:0] _T_21 = shreg_io_output_1[31:10]; // @[MessageScheduleArray.scala 64:118]
  wire [31:0] _GEN_7 = {{10'd0}, shreg_io_output_1[31:10]}; // @[MessageScheduleArray.scala 64:96]
  wire [31:0] _T_22 = _T_20 ^ _GEN_7; // @[MessageScheduleArray.scala 64:96]
  wire [32:0] _T_23 = shreg_io_output_15 + _T_13; // @[MessageScheduleArray.scala 65:44]
  wire [31:0] _T_24 = shreg_io_output_15 + _T_13; // @[MessageScheduleArray.scala 65:44]
  wire [32:0] _T_25 = _T_24 + shreg_io_output_6; // @[MessageScheduleArray.scala 65:49]
  wire [31:0] _T_26 = _T_24 + shreg_io_output_6; // @[MessageScheduleArray.scala 65:49]
  wire [32:0] _T_27 = _T_26 + _T_22; // @[MessageScheduleArray.scala 65:70]
  wire [31:0] _T_28 = _T_26 + _T_22; // @[MessageScheduleArray.scala 65:70]
  wire [31:0] _GEN_4 = _T_4 ? io_wordIn : _T_28; // @[MessageScheduleArray.scala 60:25]
  wire [31:0] outWire = io_shiftIn ? _GEN_4 : 32'h0; // @[MessageScheduleArray.scala 59:23]
  wire [31:0] _GEN_5 = outWire; // @[MessageScheduleArray.scala 35:23 MessageScheduleArray.scala 58:13 MessageScheduleArray.scala 61:21 MessageScheduleArray.scala 65:21]
  ShiftRegister shreg ( // @[MessageScheduleArray.scala 50:23]
    .clock(shreg_clock),
    .reset(shreg_reset),
    .io_input(shreg_io_input),
    .io_enable(shreg_io_enable),
    .io_rev(shreg_io_rev),
    .io_cyc(shreg_io_cyc),
    .io_tap(shreg_io_tap),
    .io_output_0(shreg_io_output_0),
    .io_output_1(shreg_io_output_1),
    .io_output_2(shreg_io_output_2),
    .io_output_3(shreg_io_output_3),
    .io_output_4(shreg_io_output_4),
    .io_output_5(shreg_io_output_5),
    .io_output_6(shreg_io_output_6),
    .io_output_7(shreg_io_output_7),
    .io_output_8(shreg_io_output_8),
    .io_output_9(shreg_io_output_9),
    .io_output_10(shreg_io_output_10),
    .io_output_11(shreg_io_output_11),
    .io_output_12(shreg_io_output_12),
    .io_output_13(shreg_io_output_13),
    .io_output_14(shreg_io_output_14),
    .io_output_15(shreg_io_output_15)
  );
  assign io_wOut = out; // @[MessageScheduleArray.scala 37:13]
  assign shreg_clock = clock;
  assign shreg_reset = reset;
  assign shreg_io_input = io_shiftIn ? _GEN_4 : 32'h0; // @[MessageScheduleArray.scala 56:20]
  assign shreg_io_enable = io_shiftIn; // @[MessageScheduleArray.scala 55:21]
  assign shreg_io_rev = 1'h0; // @[MessageScheduleArray.scala 51:18]
  assign shreg_io_cyc = 1'h0; // @[MessageScheduleArray.scala 52:18]
  assign shreg_io_tap = 1'h0; // @[MessageScheduleArray.scala 53:18]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  iReg = _RAND_0[5:0];
  _RAND_1 = {1{`RANDOM}};
  out = _RAND_1[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      iReg <= 6'h0;
    end else if (io_first) begin
      iReg <= 6'h0;
    end else if (io_shiftIn) begin
      iReg <= _T_1;
    end
    if (reset) begin
      out <= 32'h0;
    end else if (io_shiftIn) begin
      if (_T_4) begin
        out <= io_wordIn;
      end else begin
        out <= _T_28;
      end
    end else begin
      out <= 32'h0;
    end
  end
endmodule
module CompressionFunction(
  input         clock,
  input         reset,
  input         io_first,
  input         io_newChunk,
  input         io_shiftIn,
  input  [31:0] io_wordIn,
  output        io_valid,
  output [31:0] io_out_0,
  output [31:0] io_out_1,
  output [31:0] io_out_2,
  output [31:0] io_out_3,
  output [31:0] io_out_4,
  output [31:0] io_out_5,
  output [31:0] io_out_6,
  output [31:0] io_out_7
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
`endif // RANDOMIZE_REG_INIT
  wire  messageScheduleArray_clock; // @[CompressionFunction.scala 49:38]
  wire  messageScheduleArray_reset; // @[CompressionFunction.scala 49:38]
  wire  messageScheduleArray_io_first; // @[CompressionFunction.scala 49:38]
  wire  messageScheduleArray_io_shiftIn; // @[CompressionFunction.scala 49:38]
  wire [31:0] messageScheduleArray_io_wordIn; // @[CompressionFunction.scala 49:38]
  wire [31:0] messageScheduleArray_io_wOut; // @[CompressionFunction.scala 49:38]
  reg  valid; // @[CompressionFunction.scala 32:24]
  reg [5:0] i; // @[CompressionFunction.scala 35:20]
  reg [31:0] hash_val_0; // @[CompressionFunction.scala 37:27]
  reg [31:0] hash_val_1; // @[CompressionFunction.scala 37:27]
  reg [31:0] hash_val_2; // @[CompressionFunction.scala 37:27]
  reg [31:0] hash_val_3; // @[CompressionFunction.scala 37:27]
  reg [31:0] hash_val_4; // @[CompressionFunction.scala 37:27]
  reg [31:0] hash_val_5; // @[CompressionFunction.scala 37:27]
  reg [31:0] hash_val_6; // @[CompressionFunction.scala 37:27]
  reg [31:0] hash_val_7; // @[CompressionFunction.scala 37:27]
  reg [31:0] a; // @[CompressionFunction.scala 40:20]
  reg [31:0] b; // @[CompressionFunction.scala 41:20]
  reg [31:0] c; // @[CompressionFunction.scala 42:20]
  reg [31:0] d; // @[CompressionFunction.scala 43:20]
  reg [31:0] e; // @[CompressionFunction.scala 44:20]
  reg [31:0] f; // @[CompressionFunction.scala 45:20]
  reg [31:0] g; // @[CompressionFunction.scala 46:20]
  reg [31:0] h; // @[CompressionFunction.scala 47:20]
  wire  _T_9 = io_first | io_newChunk; // @[CompressionFunction.scala 50:47]
  reg  first; // @[CompressionFunction.scala 55:24]
  reg  newChunk; // @[CompressionFunction.scala 56:27]
  reg  shiftIn; // @[CompressionFunction.scala 57:26]
  wire  _T_10 = io_first | io_newChunk; // @[CompressionFunction.scala 59:20]
  wire  _GEN_0 = _T_9 ? 1'h0 : valid; // @[CompressionFunction.scala 59:35]
  wire [5:0] _GEN_1 = _T_9 ? 6'h0 : i; // @[CompressionFunction.scala 59:35]
  wire [31:0] _GEN_2 = io_newChunk ? hash_val_0 : a; // @[CompressionFunction.scala 75:31]
  wire [31:0] _GEN_3 = io_newChunk ? hash_val_1 : b; // @[CompressionFunction.scala 75:31]
  wire [31:0] _GEN_4 = io_newChunk ? hash_val_2 : c; // @[CompressionFunction.scala 75:31]
  wire [31:0] _GEN_5 = io_newChunk ? hash_val_3 : d; // @[CompressionFunction.scala 75:31]
  wire [31:0] _GEN_6 = io_newChunk ? hash_val_4 : e; // @[CompressionFunction.scala 75:31]
  wire [31:0] _GEN_7 = io_newChunk ? hash_val_5 : f; // @[CompressionFunction.scala 75:31]
  wire [31:0] _GEN_8 = io_newChunk ? hash_val_6 : g; // @[CompressionFunction.scala 75:31]
  wire [31:0] _GEN_9 = io_newChunk ? hash_val_7 : h; // @[CompressionFunction.scala 75:31]
  wire [31:0] _T_11_0 = 32'h6a09e667; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _GEN_10 = io_first ? 32'h6a09e667 : _GEN_2; // @[CompressionFunction.scala 64:21]
  wire [31:0] _T_12_1 = 32'hbb67ae85; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _GEN_11 = io_first ? 32'hbb67ae85 : _GEN_3; // @[CompressionFunction.scala 64:21]
  wire [31:0] _T_13_2 = 32'h3c6ef372; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _GEN_12 = io_first ? 32'h3c6ef372 : _GEN_4; // @[CompressionFunction.scala 64:21]
  wire [31:0] _T_14_3 = 32'ha54ff53a; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _GEN_13 = io_first ? 32'ha54ff53a : _GEN_5; // @[CompressionFunction.scala 64:21]
  wire [31:0] _T_15_4 = 32'h510e527f; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _GEN_14 = io_first ? 32'h510e527f : _GEN_6; // @[CompressionFunction.scala 64:21]
  wire [31:0] _T_16_5 = 32'h9b05688c; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _GEN_15 = io_first ? 32'h9b05688c : _GEN_7; // @[CompressionFunction.scala 64:21]
  wire [31:0] _T_17_6 = 32'h1f83d9ab; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _GEN_16 = io_first ? 32'h1f83d9ab : _GEN_8; // @[CompressionFunction.scala 64:21]
  wire [31:0] _T_18_7 = 32'h5be0cd19; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _GEN_17 = io_first ? 32'h5be0cd19 : _GEN_9; // @[CompressionFunction.scala 64:21]
  wire [31:0] _T_19_0 = 32'h6a09e667; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _GEN_18 = io_first ? 32'h6a09e667 : hash_val_0; // @[CompressionFunction.scala 64:21]
  wire [31:0] _T_19_1 = 32'hbb67ae85; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _GEN_19 = io_first ? 32'hbb67ae85 : hash_val_1; // @[CompressionFunction.scala 64:21]
  wire [31:0] _T_19_2 = 32'h3c6ef372; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _GEN_20 = io_first ? 32'h3c6ef372 : hash_val_2; // @[CompressionFunction.scala 64:21]
  wire [31:0] _T_19_3 = 32'ha54ff53a; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _GEN_21 = io_first ? 32'ha54ff53a : hash_val_3; // @[CompressionFunction.scala 64:21]
  wire [31:0] _T_19_4 = 32'h510e527f; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _GEN_22 = io_first ? 32'h510e527f : hash_val_4; // @[CompressionFunction.scala 64:21]
  wire [31:0] _T_19_5 = 32'h9b05688c; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _GEN_23 = io_first ? 32'h9b05688c : hash_val_5; // @[CompressionFunction.scala 64:21]
  wire [31:0] _T_19_6 = 32'h1f83d9ab; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _GEN_24 = io_first ? 32'h1f83d9ab : hash_val_6; // @[CompressionFunction.scala 64:21]
  wire [31:0] _T_19_7 = 32'h5be0cd19; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _GEN_25 = io_first ? 32'h5be0cd19 : hash_val_7; // @[CompressionFunction.scala 64:21]
  wire [5:0] _T_20 = e[5:0]; // @[RotateLeft.scala 24:25]
  wire [25:0] _T_21 = e[31:6]; // @[RotateLeft.scala 24:48]
  wire [31:0] _T_22 = {e[5:0],e[31:6]}; // @[RotateLeft.scala 24:38]
  wire [10:0] _T_23 = e[10:0]; // @[RotateLeft.scala 24:25]
  wire [20:0] _T_24 = e[31:11]; // @[RotateLeft.scala 24:48]
  wire [31:0] _T_25 = {e[10:0],e[31:11]}; // @[RotateLeft.scala 24:38]
  wire [31:0] _T_26 = _T_22 ^ _T_25; // @[CompressionFunction.scala 89:36]
  wire [24:0] _T_27 = e[24:0]; // @[RotateLeft.scala 24:25]
  wire [6:0] _T_28 = e[31:25]; // @[RotateLeft.scala 24:48]
  wire [31:0] _T_29 = {e[24:0],e[31:25]}; // @[RotateLeft.scala 24:38]
  wire [31:0] _T_30 = _T_26 ^ _T_29; // @[CompressionFunction.scala 89:57]
  wire [31:0] _T_31 = e & f; // @[CompressionFunction.scala 90:21]
  wire [31:0] _T_32 = ~e; // @[CompressionFunction.scala 90:30]
  wire [31:0] _T_33 = _T_32 & g; // @[CompressionFunction.scala 90:41]
  wire [31:0] _T_34 = _T_31 ^ _T_33; // @[CompressionFunction.scala 90:26]
  wire [32:0] _T_35 = h + _T_30; // @[CompressionFunction.scala 91:23]
  wire [31:0] _T_36 = h + _T_30; // @[CompressionFunction.scala 91:23]
  wire [32:0] _T_37 = _T_36 + _T_34; // @[CompressionFunction.scala 91:28]
  wire [31:0] _T_38 = _T_36 + _T_34; // @[CompressionFunction.scala 91:28]
  wire [31:0] _T_39_0 = 32'h428a2f98; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_26 = 32'h428a2f98; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_1 = 32'h71374491; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_27 = 6'h1 == i ? 32'h71374491 : 32'h428a2f98; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_2 = 32'hb5c0fbcf; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_28 = 6'h2 == i ? 32'hb5c0fbcf : _GEN_27; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_3 = 32'he9b5dba5; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_29 = 6'h3 == i ? 32'he9b5dba5 : _GEN_28; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_4 = 32'h3956c25b; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_30 = 6'h4 == i ? 32'h3956c25b : _GEN_29; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_5 = 32'h59f111f1; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_31 = 6'h5 == i ? 32'h59f111f1 : _GEN_30; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_6 = 32'h923f82a4; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_32 = 6'h6 == i ? 32'h923f82a4 : _GEN_31; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_7 = 32'hab1c5ed5; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_33 = 6'h7 == i ? 32'hab1c5ed5 : _GEN_32; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_8 = 32'hd807aa98; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_34 = 6'h8 == i ? 32'hd807aa98 : _GEN_33; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_9 = 32'h12835b01; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_35 = 6'h9 == i ? 32'h12835b01 : _GEN_34; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_10 = 32'h243185be; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_36 = 6'ha == i ? 32'h243185be : _GEN_35; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_11 = 32'h550c7dc3; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_37 = 6'hb == i ? 32'h550c7dc3 : _GEN_36; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_12 = 32'h72be5d74; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_38 = 6'hc == i ? 32'h72be5d74 : _GEN_37; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_13 = 32'h80deb1fe; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_39 = 6'hd == i ? 32'h80deb1fe : _GEN_38; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_14 = 32'h9bdc06a7; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_40 = 6'he == i ? 32'h9bdc06a7 : _GEN_39; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_15 = 32'hc19bf174; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_41 = 6'hf == i ? 32'hc19bf174 : _GEN_40; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_16 = 32'he49b69c1; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_42 = 6'h10 == i ? 32'he49b69c1 : _GEN_41; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_17 = 32'hefbe4786; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_43 = 6'h11 == i ? 32'hefbe4786 : _GEN_42; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_18 = 32'hfc19dc6; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_44 = 6'h12 == i ? 32'hfc19dc6 : _GEN_43; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_19 = 32'h240ca1cc; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_45 = 6'h13 == i ? 32'h240ca1cc : _GEN_44; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_20 = 32'h2de92c6f; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_46 = 6'h14 == i ? 32'h2de92c6f : _GEN_45; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_21 = 32'h4a7484aa; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_47 = 6'h15 == i ? 32'h4a7484aa : _GEN_46; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_22 = 32'h5cb0a9dc; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_48 = 6'h16 == i ? 32'h5cb0a9dc : _GEN_47; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_23 = 32'h76f988da; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_49 = 6'h17 == i ? 32'h76f988da : _GEN_48; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_24 = 32'h983e5152; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_50 = 6'h18 == i ? 32'h983e5152 : _GEN_49; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_25 = 32'ha831c66d; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_51 = 6'h19 == i ? 32'ha831c66d : _GEN_50; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_26 = 32'hb00327c8; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_52 = 6'h1a == i ? 32'hb00327c8 : _GEN_51; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_27 = 32'hbf597fc7; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_53 = 6'h1b == i ? 32'hbf597fc7 : _GEN_52; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_28 = 32'hc6e00bf3; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_54 = 6'h1c == i ? 32'hc6e00bf3 : _GEN_53; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_29 = 32'hd5a79147; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_55 = 6'h1d == i ? 32'hd5a79147 : _GEN_54; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_30 = 32'h6ca6351; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_56 = 6'h1e == i ? 32'h6ca6351 : _GEN_55; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_31 = 32'h14292967; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_57 = 6'h1f == i ? 32'h14292967 : _GEN_56; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_32 = 32'h27b70a85; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_58 = 6'h20 == i ? 32'h27b70a85 : _GEN_57; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_33 = 32'h2e1b2138; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_59 = 6'h21 == i ? 32'h2e1b2138 : _GEN_58; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_34 = 32'h4d2c6dfc; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_60 = 6'h22 == i ? 32'h4d2c6dfc : _GEN_59; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_35 = 32'h53380d13; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_61 = 6'h23 == i ? 32'h53380d13 : _GEN_60; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_36 = 32'h650a7354; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_62 = 6'h24 == i ? 32'h650a7354 : _GEN_61; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_37 = 32'h766a0abb; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_63 = 6'h25 == i ? 32'h766a0abb : _GEN_62; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_38 = 32'h81c2c92e; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_64 = 6'h26 == i ? 32'h81c2c92e : _GEN_63; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_39 = 32'h92722c85; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_65 = 6'h27 == i ? 32'h92722c85 : _GEN_64; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_40 = 32'ha2bfe8a1; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_66 = 6'h28 == i ? 32'ha2bfe8a1 : _GEN_65; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_41 = 32'ha81a664b; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_67 = 6'h29 == i ? 32'ha81a664b : _GEN_66; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_42 = 32'hc24b8b70; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_68 = 6'h2a == i ? 32'hc24b8b70 : _GEN_67; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_43 = 32'hc76c51a3; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_69 = 6'h2b == i ? 32'hc76c51a3 : _GEN_68; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_44 = 32'hd192e819; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_70 = 6'h2c == i ? 32'hd192e819 : _GEN_69; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_45 = 32'hd6990624; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_71 = 6'h2d == i ? 32'hd6990624 : _GEN_70; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_46 = 32'hf40e3585; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_72 = 6'h2e == i ? 32'hf40e3585 : _GEN_71; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_47 = 32'h106aa070; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_73 = 6'h2f == i ? 32'h106aa070 : _GEN_72; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_48 = 32'h19a4c116; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_74 = 6'h30 == i ? 32'h19a4c116 : _GEN_73; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_49 = 32'h1e376c08; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_75 = 6'h31 == i ? 32'h1e376c08 : _GEN_74; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_50 = 32'h2748774c; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_76 = 6'h32 == i ? 32'h2748774c : _GEN_75; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_51 = 32'h34b0bcb5; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_77 = 6'h33 == i ? 32'h34b0bcb5 : _GEN_76; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_52 = 32'h391c0cb3; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_78 = 6'h34 == i ? 32'h391c0cb3 : _GEN_77; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_53 = 32'h4ed8aa4a; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_79 = 6'h35 == i ? 32'h4ed8aa4a : _GEN_78; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_54 = 32'h5b9cca4f; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_80 = 6'h36 == i ? 32'h5b9cca4f : _GEN_79; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_55 = 32'h682e6ff3; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_81 = 6'h37 == i ? 32'h682e6ff3 : _GEN_80; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_56 = 32'h748f82ee; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_82 = 6'h38 == i ? 32'h748f82ee : _GEN_81; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_57 = 32'h78a5636f; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_83 = 6'h39 == i ? 32'h78a5636f : _GEN_82; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_58 = 32'h84c87814; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_84 = 6'h3a == i ? 32'h84c87814 : _GEN_83; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_59 = 32'h8cc70208; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_85 = 6'h3b == i ? 32'h8cc70208 : _GEN_84; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_60 = 32'h90befffa; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_86 = 6'h3c == i ? 32'h90befffa : _GEN_85; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_61 = 32'ha4506ceb; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_87 = 6'h3d == i ? 32'ha4506ceb : _GEN_86; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_62 = 32'hbef9a3f7; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_88 = 6'h3e == i ? 32'hbef9a3f7 : _GEN_87; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_63 = 32'hc67178f2; // @[Constants.scala 24:16 Constants.scala 24:16]
  wire [31:0] _GEN_89 = 6'h3f == i ? 32'hc67178f2 : _GEN_88; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_39_i = _GEN_89; // @[CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33 CompressionFunction.scala 91:33]
  wire [32:0] _T_40 = _T_38 + _GEN_89; // @[CompressionFunction.scala 91:33]
  wire [31:0] _T_41 = _T_38 + _GEN_89; // @[CompressionFunction.scala 91:33]
  wire [32:0] _T_42 = _T_41 + messageScheduleArray_io_wOut; // @[CompressionFunction.scala 91:69]
  wire [31:0] _T_43 = _T_41 + messageScheduleArray_io_wOut; // @[CompressionFunction.scala 91:69]
  wire [1:0] _T_44 = a[1:0]; // @[RotateLeft.scala 24:25]
  wire [29:0] _T_45 = a[31:2]; // @[RotateLeft.scala 24:48]
  wire [31:0] _T_46 = {a[1:0],a[31:2]}; // @[RotateLeft.scala 24:38]
  wire [12:0] _T_47 = a[12:0]; // @[RotateLeft.scala 24:25]
  wire [18:0] _T_48 = a[31:13]; // @[RotateLeft.scala 24:48]
  wire [31:0] _T_49 = {a[12:0],a[31:13]}; // @[RotateLeft.scala 24:38]
  wire [31:0] _T_50 = _T_46 ^ _T_49; // @[CompressionFunction.scala 92:36]
  wire [21:0] _T_51 = a[21:0]; // @[RotateLeft.scala 24:25]
  wire [9:0] _T_52 = a[31:22]; // @[RotateLeft.scala 24:48]
  wire [31:0] _T_53 = {a[21:0],a[31:22]}; // @[RotateLeft.scala 24:38]
  wire [31:0] _T_54 = _T_50 ^ _T_53; // @[CompressionFunction.scala 92:57]
  wire [31:0] _T_55 = a & b; // @[CompressionFunction.scala 93:22]
  wire [31:0] _T_56 = a & c; // @[CompressionFunction.scala 93:32]
  wire [31:0] _T_57 = _T_55 ^ _T_56; // @[CompressionFunction.scala 93:27]
  wire [31:0] _T_58 = b & c; // @[CompressionFunction.scala 93:42]
  wire [31:0] _T_59 = _T_57 ^ _T_58; // @[CompressionFunction.scala 93:37]
  wire [32:0] _T_60 = _T_54 + _T_59; // @[CompressionFunction.scala 94:24]
  wire [31:0] _T_61 = _T_54 + _T_59; // @[CompressionFunction.scala 94:24]
  wire [32:0] _T_62 = d + _T_43; // @[CompressionFunction.scala 99:16]
  wire [31:0] _T_63 = d + _T_43; // @[CompressionFunction.scala 99:16]
  wire [32:0] _T_64 = _T_43 + _T_61; // @[CompressionFunction.scala 103:20]
  wire [31:0] _T_65 = _T_43 + _T_61; // @[CompressionFunction.scala 103:20]
  wire [6:0] _T_66 = i + 6'h1; // @[CompressionFunction.scala 105:20]
  wire [5:0] _T_67 = i + 6'h1; // @[CompressionFunction.scala 105:20]
  wire  _T_68 = i == 6'h3f; // @[CompressionFunction.scala 107:17]
  wire [32:0] _T_69 = _T_43 + _T_61; // @[CompressionFunction.scala 110:24]
  wire [31:0] _T_70 = _T_43 + _T_61; // @[CompressionFunction.scala 110:24]
  wire [32:0] _T_71 = _T_65 + hash_val_0; // @[CompressionFunction.scala 110:32]
  wire [31:0] _T_72 = _T_65 + hash_val_0; // @[CompressionFunction.scala 110:32]
  wire [32:0] _T_73 = a + hash_val_1; // @[CompressionFunction.scala 111:20]
  wire [31:0] _T_74 = a + hash_val_1; // @[CompressionFunction.scala 111:20]
  wire [32:0] _T_75 = b + hash_val_2; // @[CompressionFunction.scala 112:20]
  wire [31:0] _T_76 = b + hash_val_2; // @[CompressionFunction.scala 112:20]
  wire [32:0] _T_77 = c + hash_val_3; // @[CompressionFunction.scala 113:20]
  wire [31:0] _T_78 = c + hash_val_3; // @[CompressionFunction.scala 113:20]
  wire [32:0] _T_79 = d + _T_43; // @[CompressionFunction.scala 114:20]
  wire [31:0] _T_80 = d + _T_43; // @[CompressionFunction.scala 114:20]
  wire [32:0] _T_81 = _T_63 + hash_val_4; // @[CompressionFunction.scala 114:28]
  wire [31:0] _T_82 = _T_63 + hash_val_4; // @[CompressionFunction.scala 114:28]
  wire [32:0] _T_83 = e + hash_val_5; // @[CompressionFunction.scala 115:20]
  wire [31:0] _T_84 = e + hash_val_5; // @[CompressionFunction.scala 115:20]
  wire [32:0] _T_85 = f + hash_val_6; // @[CompressionFunction.scala 116:20]
  wire [31:0] _T_86 = f + hash_val_6; // @[CompressionFunction.scala 116:20]
  wire [32:0] _T_87 = g + hash_val_7; // @[CompressionFunction.scala 117:20]
  wire [31:0] _T_88 = g + hash_val_7; // @[CompressionFunction.scala 117:20]
  wire [32:0] _T_89 = hash_val_0 + _T_43; // @[CompressionFunction.scala 119:40]
  wire [31:0] _T_90 = hash_val_0 + _T_43; // @[CompressionFunction.scala 119:40]
  wire [32:0] _T_91 = _T_90 + _T_61; // @[CompressionFunction.scala 119:48]
  wire [31:0] _T_92 = _T_90 + _T_61; // @[CompressionFunction.scala 119:48]
  wire [32:0] _T_93 = hash_val_1 + a; // @[CompressionFunction.scala 120:40]
  wire [31:0] _T_94 = hash_val_1 + a; // @[CompressionFunction.scala 120:40]
  wire [32:0] _T_95 = hash_val_2 + b; // @[CompressionFunction.scala 121:40]
  wire [31:0] _T_96 = hash_val_2 + b; // @[CompressionFunction.scala 121:40]
  wire [32:0] _T_97 = hash_val_3 + c; // @[CompressionFunction.scala 122:40]
  wire [31:0] _T_98 = hash_val_3 + c; // @[CompressionFunction.scala 122:40]
  wire [32:0] _T_99 = hash_val_4 + d; // @[CompressionFunction.scala 123:40]
  wire [31:0] _T_100 = hash_val_4 + d; // @[CompressionFunction.scala 123:40]
  wire [32:0] _T_101 = _T_100 + _T_43; // @[CompressionFunction.scala 123:44]
  wire [31:0] _T_102 = _T_100 + _T_43; // @[CompressionFunction.scala 123:44]
  wire [32:0] _T_103 = hash_val_5 + e; // @[CompressionFunction.scala 124:40]
  wire [31:0] _T_104 = hash_val_5 + e; // @[CompressionFunction.scala 124:40]
  wire [32:0] _T_105 = hash_val_6 + f; // @[CompressionFunction.scala 125:40]
  wire [31:0] _T_106 = hash_val_6 + f; // @[CompressionFunction.scala 125:40]
  wire [32:0] _T_107 = hash_val_7 + g; // @[CompressionFunction.scala 126:40]
  wire [31:0] _T_108 = hash_val_7 + g; // @[CompressionFunction.scala 126:40]
  wire  _GEN_90 = _T_68; // @[CompressionFunction.scala 107:27]
  wire [31:0] _GEN_91 = _T_68 ? _T_72 : _T_65; // @[CompressionFunction.scala 107:27]
  wire [31:0] _GEN_92 = _T_68 ? _T_74 : a; // @[CompressionFunction.scala 107:27]
  wire [31:0] _GEN_93 = _T_68 ? _T_76 : b; // @[CompressionFunction.scala 107:27]
  wire [31:0] _GEN_94 = _T_68 ? _T_78 : c; // @[CompressionFunction.scala 107:27]
  wire [31:0] _GEN_95 = _T_68 ? _T_82 : _T_63; // @[CompressionFunction.scala 107:27]
  wire [31:0] _GEN_96 = _T_68 ? _T_84 : e; // @[CompressionFunction.scala 107:27]
  wire [31:0] _GEN_97 = _T_68 ? _T_86 : f; // @[CompressionFunction.scala 107:27]
  wire [31:0] _GEN_98 = _T_68 ? _T_88 : g; // @[CompressionFunction.scala 107:27]
  wire [31:0] _GEN_99 = _T_68 ? _T_92 : _GEN_18; // @[CompressionFunction.scala 107:27]
  wire [31:0] _GEN_100 = _T_68 ? _T_94 : _GEN_19; // @[CompressionFunction.scala 107:27]
  wire [31:0] _GEN_101 = _T_68 ? _T_96 : _GEN_20; // @[CompressionFunction.scala 107:27]
  wire [31:0] _GEN_102 = _T_68 ? _T_98 : _GEN_21; // @[CompressionFunction.scala 107:27]
  wire [31:0] _GEN_103 = _T_68 ? _T_102 : _GEN_22; // @[CompressionFunction.scala 107:27]
  wire [31:0] _GEN_104 = _T_68 ? _T_104 : _GEN_23; // @[CompressionFunction.scala 107:27]
  wire [31:0] _GEN_105 = _T_68 ? _T_106 : _GEN_24; // @[CompressionFunction.scala 107:27]
  wire [31:0] _GEN_106 = _T_68 ? _T_108 : _GEN_25; // @[CompressionFunction.scala 107:27]
  wire [31:0] _GEN_107 = shiftIn ? _GEN_98 : _GEN_17; // @[CompressionFunction.scala 86:20]
  wire [31:0] _GEN_108 = shiftIn ? _GEN_97 : _GEN_16; // @[CompressionFunction.scala 86:20]
  wire [31:0] _GEN_109 = shiftIn ? _GEN_96 : _GEN_15; // @[CompressionFunction.scala 86:20]
  wire [31:0] _GEN_110 = shiftIn ? _GEN_95 : _GEN_14; // @[CompressionFunction.scala 86:20]
  wire [31:0] _GEN_111 = shiftIn ? _GEN_94 : _GEN_13; // @[CompressionFunction.scala 86:20]
  wire [31:0] _GEN_112 = shiftIn ? _GEN_93 : _GEN_12; // @[CompressionFunction.scala 86:20]
  wire [31:0] _GEN_113 = shiftIn ? _GEN_92 : _GEN_11; // @[CompressionFunction.scala 86:20]
  wire [31:0] _GEN_114 = shiftIn ? _GEN_91 : _GEN_10; // @[CompressionFunction.scala 86:20]
  wire [5:0] _GEN_115 = shiftIn ? _T_67 : _GEN_1; // @[CompressionFunction.scala 86:20]
  wire  _GEN_116 = shiftIn ? _T_68 : _GEN_0; // @[CompressionFunction.scala 86:20]
  wire [31:0] _GEN_117 = shiftIn ? _GEN_99 : _GEN_18; // @[CompressionFunction.scala 86:20]
  wire [31:0] _GEN_118 = shiftIn ? _GEN_100 : _GEN_19; // @[CompressionFunction.scala 86:20]
  wire [31:0] _GEN_119 = shiftIn ? _GEN_101 : _GEN_20; // @[CompressionFunction.scala 86:20]
  wire [31:0] _GEN_120 = shiftIn ? _GEN_102 : _GEN_21; // @[CompressionFunction.scala 86:20]
  wire [31:0] _GEN_121 = shiftIn ? _GEN_103 : _GEN_22; // @[CompressionFunction.scala 86:20]
  wire [31:0] _GEN_122 = shiftIn ? _GEN_104 : _GEN_23; // @[CompressionFunction.scala 86:20]
  wire [31:0] _GEN_123 = shiftIn ? _GEN_105 : _GEN_24; // @[CompressionFunction.scala 86:20]
  wire [31:0] _GEN_124 = shiftIn ? _GEN_106 : _GEN_25; // @[CompressionFunction.scala 86:20]
  wire [31:0] _T__0 = 32'h6a09e667; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T__1 = 32'hbb67ae85; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T__2 = 32'h3c6ef372; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T__3 = 32'ha54ff53a; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T__4 = 32'h510e527f; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T__5 = 32'h9b05688c; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T__6 = 32'h1f83d9ab; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T__7 = 32'h5be0cd19; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_1_0 = 32'h6a09e667; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_1_1 = 32'hbb67ae85; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_1_2 = 32'h3c6ef372; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_1_3 = 32'ha54ff53a; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_1_4 = 32'h510e527f; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_1_5 = 32'h9b05688c; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_1_6 = 32'h1f83d9ab; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_1_7 = 32'h5be0cd19; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_2_0 = 32'h6a09e667; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_2_1 = 32'hbb67ae85; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_2_2 = 32'h3c6ef372; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_2_3 = 32'ha54ff53a; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_2_4 = 32'h510e527f; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_2_5 = 32'h9b05688c; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_2_6 = 32'h1f83d9ab; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_2_7 = 32'h5be0cd19; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_3_0 = 32'h6a09e667; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_3_1 = 32'hbb67ae85; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_3_2 = 32'h3c6ef372; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_3_3 = 32'ha54ff53a; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_3_4 = 32'h510e527f; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_3_5 = 32'h9b05688c; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_3_6 = 32'h1f83d9ab; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_3_7 = 32'h5be0cd19; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_4_0 = 32'h6a09e667; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_4_1 = 32'hbb67ae85; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_4_2 = 32'h3c6ef372; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_4_3 = 32'ha54ff53a; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_4_4 = 32'h510e527f; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_4_5 = 32'h9b05688c; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_4_6 = 32'h1f83d9ab; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_4_7 = 32'h5be0cd19; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_5_0 = 32'h6a09e667; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_5_1 = 32'hbb67ae85; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_5_2 = 32'h3c6ef372; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_5_3 = 32'ha54ff53a; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_5_4 = 32'h510e527f; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_5_5 = 32'h9b05688c; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_5_6 = 32'h1f83d9ab; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_5_7 = 32'h5be0cd19; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_6_0 = 32'h6a09e667; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_6_1 = 32'hbb67ae85; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_6_2 = 32'h3c6ef372; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_6_3 = 32'ha54ff53a; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_6_4 = 32'h510e527f; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_6_5 = 32'h9b05688c; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_6_6 = 32'h1f83d9ab; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_6_7 = 32'h5be0cd19; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_7_0 = 32'h6a09e667; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_7_1 = 32'hbb67ae85; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_7_2 = 32'h3c6ef372; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_7_3 = 32'ha54ff53a; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_7_4 = 32'h510e527f; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_7_5 = 32'h9b05688c; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_7_6 = 32'h1f83d9ab; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_7_7 = 32'h5be0cd19; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_8_0 = 32'h6a09e667; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_8_1 = 32'hbb67ae85; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_8_2 = 32'h3c6ef372; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_8_3 = 32'ha54ff53a; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_8_4 = 32'h510e527f; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_8_5 = 32'h9b05688c; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_8_6 = 32'h1f83d9ab; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_8_7 = 32'h5be0cd19; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_11_1 = 32'hbb67ae85; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_11_2 = 32'h3c6ef372; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_11_3 = 32'ha54ff53a; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_11_4 = 32'h510e527f; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_11_5 = 32'h9b05688c; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_11_6 = 32'h1f83d9ab; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_11_7 = 32'h5be0cd19; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_12_0 = 32'h6a09e667; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_12_2 = 32'h3c6ef372; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_12_3 = 32'ha54ff53a; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_12_4 = 32'h510e527f; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_12_5 = 32'h9b05688c; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_12_6 = 32'h1f83d9ab; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_12_7 = 32'h5be0cd19; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_13_0 = 32'h6a09e667; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_13_1 = 32'hbb67ae85; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_13_3 = 32'ha54ff53a; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_13_4 = 32'h510e527f; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_13_5 = 32'h9b05688c; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_13_6 = 32'h1f83d9ab; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_13_7 = 32'h5be0cd19; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_14_0 = 32'h6a09e667; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_14_1 = 32'hbb67ae85; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_14_2 = 32'h3c6ef372; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_14_4 = 32'h510e527f; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_14_5 = 32'h9b05688c; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_14_6 = 32'h1f83d9ab; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_14_7 = 32'h5be0cd19; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_15_0 = 32'h6a09e667; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_15_1 = 32'hbb67ae85; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_15_2 = 32'h3c6ef372; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_15_3 = 32'ha54ff53a; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_15_5 = 32'h9b05688c; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_15_6 = 32'h1f83d9ab; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_15_7 = 32'h5be0cd19; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_16_0 = 32'h6a09e667; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_16_1 = 32'hbb67ae85; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_16_2 = 32'h3c6ef372; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_16_3 = 32'ha54ff53a; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_16_4 = 32'h510e527f; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_16_6 = 32'h1f83d9ab; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_16_7 = 32'h5be0cd19; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_17_0 = 32'h6a09e667; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_17_1 = 32'hbb67ae85; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_17_2 = 32'h3c6ef372; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_17_3 = 32'ha54ff53a; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_17_4 = 32'h510e527f; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_17_5 = 32'h9b05688c; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_17_7 = 32'h5be0cd19; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_18_0 = 32'h6a09e667; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_18_1 = 32'hbb67ae85; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_18_2 = 32'h3c6ef372; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_18_3 = 32'ha54ff53a; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_18_4 = 32'h510e527f; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_18_5 = 32'h9b05688c; // @[Constants.scala 21:16 Constants.scala 21:16]
  wire [31:0] _T_18_6 = 32'h1f83d9ab; // @[Constants.scala 21:16 Constants.scala 21:16]
  MessageScheduleArray messageScheduleArray ( // @[CompressionFunction.scala 49:38]
    .clock(messageScheduleArray_clock),
    .reset(messageScheduleArray_reset),
    .io_first(messageScheduleArray_io_first),
    .io_shiftIn(messageScheduleArray_io_shiftIn),
    .io_wordIn(messageScheduleArray_io_wordIn),
    .io_wOut(messageScheduleArray_io_wOut)
  );
  assign io_valid = valid; // @[CompressionFunction.scala 33:14]
  assign io_out_0 = hash_val_0; // @[CompressionFunction.scala 38:12]
  assign io_out_1 = hash_val_1; // @[CompressionFunction.scala 38:12]
  assign io_out_2 = hash_val_2; // @[CompressionFunction.scala 38:12]
  assign io_out_3 = hash_val_3; // @[CompressionFunction.scala 38:12]
  assign io_out_4 = hash_val_4; // @[CompressionFunction.scala 38:12]
  assign io_out_5 = hash_val_5; // @[CompressionFunction.scala 38:12]
  assign io_out_6 = hash_val_6; // @[CompressionFunction.scala 38:12]
  assign io_out_7 = hash_val_7; // @[CompressionFunction.scala 38:12]
  assign messageScheduleArray_clock = clock;
  assign messageScheduleArray_reset = reset;
  assign messageScheduleArray_io_first = io_first | io_newChunk; // @[CompressionFunction.scala 50:35]
  assign messageScheduleArray_io_shiftIn = io_shiftIn; // @[CompressionFunction.scala 51:37]
  assign messageScheduleArray_io_wordIn = io_wordIn; // @[CompressionFunction.scala 52:36]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  valid = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  i = _RAND_1[5:0];
  _RAND_2 = {1{`RANDOM}};
  hash_val_0 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  hash_val_1 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  hash_val_2 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  hash_val_3 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  hash_val_4 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  hash_val_5 = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  hash_val_6 = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  hash_val_7 = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  a = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  b = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  c = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  d = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  e = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  f = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  g = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  h = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  first = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  newChunk = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  shiftIn = _RAND_20[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      valid <= 1'h0;
    end else if (shiftIn) begin
      valid <= _T_68;
    end else if (_T_9) begin
      valid <= 1'h0;
    end
    if (reset) begin
      i <= 6'h0;
    end else if (shiftIn) begin
      i <= _T_67;
    end else if (_T_9) begin
      i <= 6'h0;
    end
    if (reset) begin
      hash_val_0 <= 32'h6a09e667;
    end else if (shiftIn) begin
      if (_T_68) begin
        hash_val_0 <= _T_92;
      end else if (io_first) begin
        hash_val_0 <= 32'h6a09e667;
      end
    end else if (io_first) begin
      hash_val_0 <= 32'h6a09e667;
    end
    if (reset) begin
      hash_val_1 <= 32'hbb67ae85;
    end else if (shiftIn) begin
      if (_T_68) begin
        hash_val_1 <= _T_94;
      end else if (io_first) begin
        hash_val_1 <= 32'hbb67ae85;
      end
    end else if (io_first) begin
      hash_val_1 <= 32'hbb67ae85;
    end
    if (reset) begin
      hash_val_2 <= 32'h3c6ef372;
    end else if (shiftIn) begin
      if (_T_68) begin
        hash_val_2 <= _T_96;
      end else if (io_first) begin
        hash_val_2 <= 32'h3c6ef372;
      end
    end else if (io_first) begin
      hash_val_2 <= 32'h3c6ef372;
    end
    if (reset) begin
      hash_val_3 <= 32'ha54ff53a;
    end else if (shiftIn) begin
      if (_T_68) begin
        hash_val_3 <= _T_98;
      end else if (io_first) begin
        hash_val_3 <= 32'ha54ff53a;
      end
    end else if (io_first) begin
      hash_val_3 <= 32'ha54ff53a;
    end
    if (reset) begin
      hash_val_4 <= 32'h510e527f;
    end else if (shiftIn) begin
      if (_T_68) begin
        hash_val_4 <= _T_102;
      end else if (io_first) begin
        hash_val_4 <= 32'h510e527f;
      end
    end else if (io_first) begin
      hash_val_4 <= 32'h510e527f;
    end
    if (reset) begin
      hash_val_5 <= 32'h9b05688c;
    end else if (shiftIn) begin
      if (_T_68) begin
        hash_val_5 <= _T_104;
      end else if (io_first) begin
        hash_val_5 <= 32'h9b05688c;
      end
    end else if (io_first) begin
      hash_val_5 <= 32'h9b05688c;
    end
    if (reset) begin
      hash_val_6 <= 32'h1f83d9ab;
    end else if (shiftIn) begin
      if (_T_68) begin
        hash_val_6 <= _T_106;
      end else if (io_first) begin
        hash_val_6 <= 32'h1f83d9ab;
      end
    end else if (io_first) begin
      hash_val_6 <= 32'h1f83d9ab;
    end
    if (reset) begin
      hash_val_7 <= 32'h5be0cd19;
    end else if (shiftIn) begin
      if (_T_68) begin
        hash_val_7 <= _T_108;
      end else if (io_first) begin
        hash_val_7 <= 32'h5be0cd19;
      end
    end else if (io_first) begin
      hash_val_7 <= 32'h5be0cd19;
    end
    if (reset) begin
      a <= 32'h6a09e667;
    end else if (shiftIn) begin
      if (_T_68) begin
        a <= _T_72;
      end else begin
        a <= _T_65;
      end
    end else if (io_first) begin
      a <= 32'h6a09e667;
    end else if (io_newChunk) begin
      a <= hash_val_0;
    end
    if (reset) begin
      b <= 32'hbb67ae85;
    end else if (shiftIn) begin
      if (_T_68) begin
        b <= _T_74;
      end else begin
        b <= a;
      end
    end else if (io_first) begin
      b <= 32'hbb67ae85;
    end else if (io_newChunk) begin
      b <= hash_val_1;
    end
    if (reset) begin
      c <= 32'h3c6ef372;
    end else if (shiftIn) begin
      if (_T_68) begin
        c <= _T_76;
      end else begin
        c <= b;
      end
    end else if (io_first) begin
      c <= 32'h3c6ef372;
    end else if (io_newChunk) begin
      c <= hash_val_2;
    end
    if (reset) begin
      d <= 32'ha54ff53a;
    end else if (shiftIn) begin
      if (_T_68) begin
        d <= _T_78;
      end else begin
        d <= c;
      end
    end else if (io_first) begin
      d <= 32'ha54ff53a;
    end else if (io_newChunk) begin
      d <= hash_val_3;
    end
    if (reset) begin
      e <= 32'h510e527f;
    end else if (shiftIn) begin
      if (_T_68) begin
        e <= _T_82;
      end else begin
        e <= _T_63;
      end
    end else if (io_first) begin
      e <= 32'h510e527f;
    end else if (io_newChunk) begin
      e <= hash_val_4;
    end
    if (reset) begin
      f <= 32'h9b05688c;
    end else if (shiftIn) begin
      if (_T_68) begin
        f <= _T_84;
      end else begin
        f <= e;
      end
    end else if (io_first) begin
      f <= 32'h9b05688c;
    end else if (io_newChunk) begin
      f <= hash_val_5;
    end
    if (reset) begin
      g <= 32'h1f83d9ab;
    end else if (shiftIn) begin
      if (_T_68) begin
        g <= _T_86;
      end else begin
        g <= f;
      end
    end else if (io_first) begin
      g <= 32'h1f83d9ab;
    end else if (io_newChunk) begin
      g <= hash_val_6;
    end
    if (reset) begin
      h <= 32'h5be0cd19;
    end else if (shiftIn) begin
      if (_T_68) begin
        h <= _T_88;
      end else begin
        h <= g;
      end
    end else if (io_first) begin
      h <= 32'h5be0cd19;
    end else if (io_newChunk) begin
      h <= hash_val_7;
    end
    first <= io_first;
    newChunk <= io_newChunk;
    shiftIn <= io_shiftIn;
  end
endmodule
module Sha256Accel(
  input         clock,
  input         reset,
  input         io_first,
  input  [31:0] io_inputData,
  input         io_inputValid,
  output        io_inputReady,
  output [31:0] io_outputData_0,
  output [31:0] io_outputData_1,
  output [31:0] io_outputData_2,
  output [31:0] io_outputData_3,
  output [31:0] io_outputData_4,
  output [31:0] io_outputData_5,
  output [31:0] io_outputData_6,
  output [31:0] io_outputData_7,
  output        io_outputValid
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire  accel_clock; // @[Sha256Accel.scala 35:23]
  wire  accel_reset; // @[Sha256Accel.scala 35:23]
  wire  accel_io_first; // @[Sha256Accel.scala 35:23]
  wire  accel_io_newChunk; // @[Sha256Accel.scala 35:23]
  wire  accel_io_shiftIn; // @[Sha256Accel.scala 35:23]
  wire [31:0] accel_io_wordIn; // @[Sha256Accel.scala 35:23]
  wire  accel_io_valid; // @[Sha256Accel.scala 35:23]
  wire [31:0] accel_io_out_0; // @[Sha256Accel.scala 35:23]
  wire [31:0] accel_io_out_1; // @[Sha256Accel.scala 35:23]
  wire [31:0] accel_io_out_2; // @[Sha256Accel.scala 35:23]
  wire [31:0] accel_io_out_3; // @[Sha256Accel.scala 35:23]
  wire [31:0] accel_io_out_4; // @[Sha256Accel.scala 35:23]
  wire [31:0] accel_io_out_5; // @[Sha256Accel.scala 35:23]
  wire [31:0] accel_io_out_6; // @[Sha256Accel.scala 35:23]
  wire [31:0] accel_io_out_7; // @[Sha256Accel.scala 35:23]
  reg  first; // @[Sha256Accel.scala 39:24]
  wire  _GEN_0 = io_first | first; // @[Sha256Accel.scala 40:21]
  wire  _GEN_1 = accel_io_shiftIn ? 1'h0 : _GEN_0; // @[Sha256Accel.scala 41:29]
  reg [7:0] ctr; // @[Sha256Accel.scala 43:22]
  wire  _T = ctr == 8'h0; // @[Sha256Accel.scala 44:31]
  wire  _T_1 = _T & accel_io_shiftIn; // @[Sha256Accel.scala 44:40]
  wire  _T_2 = first & accel_io_shiftIn; // @[Sha256Accel.scala 45:29]
  reg [7:0] _T_3; // @[Sha256Accel.scala 49:30]
  wire  _T_4 = _T_3 < 8'h10; // @[Sha256Accel.scala 49:36]
  wire  _T_5 = ctr < 8'h10; // @[Sha256Accel.scala 49:52]
  wire  _T_6 = _T_4 & _T_5; // @[Sha256Accel.scala 49:44]
  wire  _T_7 = ~io_first; // @[Sha256Accel.scala 49:63]
  wire  _T_8 = _T_6 & _T_7; // @[Sha256Accel.scala 49:60]
  wire  _T_9 = ctr >= 8'h10; // @[Sha256Accel.scala 50:15]
  wire [8:0] _T_10 = ctr + 8'h1; // @[Sha256Accel.scala 54:20]
  wire [7:0] _T_11 = ctr + 8'h1; // @[Sha256Accel.scala 54:20]
  wire  _T_12 = ctr == 8'h3f; // @[Sha256Accel.scala 55:19]
  wire [7:0] _GEN_2 = _T_12 ? 8'h0 : _T_11; // @[Sha256Accel.scala 55:29]
  wire [8:0] _T_13 = ctr + 8'h1; // @[Sha256Accel.scala 58:20]
  wire [7:0] _T_14 = ctr + 8'h1; // @[Sha256Accel.scala 58:20]
  wire  _GEN_3 = io_inputValid; // @[Sha256Accel.scala 56:33]
  wire [7:0] _GEN_4 = io_inputValid ? _T_11 : ctr; // @[Sha256Accel.scala 56:33]
  wire  _GEN_5 = _T_9 ? 1'h0 : _T_8; // @[Sha256Accel.scala 50:24]
  wire  _GEN_6 = _T_9 | io_inputValid; // @[Sha256Accel.scala 50:24]
  wire [7:0] _GEN_7 = _T_9 ? _GEN_2 : _GEN_4; // @[Sha256Accel.scala 50:24]
  wire [7:0] _GEN_8 = io_first ? 8'h0 : _GEN_7; // @[Sha256Accel.scala 61:21]
  CompressionFunction accel ( // @[Sha256Accel.scala 35:23]
    .clock(accel_clock),
    .reset(accel_reset),
    .io_first(accel_io_first),
    .io_newChunk(accel_io_newChunk),
    .io_shiftIn(accel_io_shiftIn),
    .io_wordIn(accel_io_wordIn),
    .io_valid(accel_io_valid),
    .io_out_0(accel_io_out_0),
    .io_out_1(accel_io_out_1),
    .io_out_2(accel_io_out_2),
    .io_out_3(accel_io_out_3),
    .io_out_4(accel_io_out_4),
    .io_out_5(accel_io_out_5),
    .io_out_6(accel_io_out_6),
    .io_out_7(accel_io_out_7)
  );
  assign io_inputReady = _T_9 ? 1'h0 : _T_8; // @[Sha256Accel.scala 49:19 Sha256Accel.scala 51:23]
  assign io_outputData_0 = accel_io_out_0; // @[Sha256Accel.scala 36:19]
  assign io_outputData_1 = accel_io_out_1; // @[Sha256Accel.scala 36:19]
  assign io_outputData_2 = accel_io_out_2; // @[Sha256Accel.scala 36:19]
  assign io_outputData_3 = accel_io_out_3; // @[Sha256Accel.scala 36:19]
  assign io_outputData_4 = accel_io_out_4; // @[Sha256Accel.scala 36:19]
  assign io_outputData_5 = accel_io_out_5; // @[Sha256Accel.scala 36:19]
  assign io_outputData_6 = accel_io_out_6; // @[Sha256Accel.scala 36:19]
  assign io_outputData_7 = accel_io_out_7; // @[Sha256Accel.scala 36:19]
  assign io_outputValid = accel_io_valid; // @[Sha256Accel.scala 37:20]
  assign accel_clock = clock;
  assign accel_reset = reset;
  assign accel_io_first = first & accel_io_shiftIn; // @[Sha256Accel.scala 45:20]
  assign accel_io_newChunk = _T & accel_io_shiftIn; // @[Sha256Accel.scala 44:23]
  assign accel_io_shiftIn = _T_9 | io_inputValid; // @[Sha256Accel.scala 47:22 Sha256Accel.scala 52:26 Sha256Accel.scala 57:26]
  assign accel_io_wordIn = io_inputData; // @[Sha256Accel.scala 48:21]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  first = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  ctr = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  _T_3 = _RAND_2[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    first <= reset | _GEN_1;
    if (reset) begin
      ctr <= 8'h0;
    end else if (io_first) begin
      ctr <= 8'h0;
    end else if (_T_9) begin
      if (_T_12) begin
        ctr <= 8'h0;
      end else begin
        ctr <= _T_11;
      end
    end else if (io_inputValid) begin
      ctr <= _T_11;
    end
    _T_3 <= ctr;
  end
endmodule
