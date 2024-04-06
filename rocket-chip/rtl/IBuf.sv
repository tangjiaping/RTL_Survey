// Generated by CIRCT unknown git version
// Standard header to adapt well known macros for register randomization.
`ifndef RANDOMIZE
  `ifdef RANDOMIZE_MEM_INIT
    `define RANDOMIZE
  `endif // RANDOMIZE_MEM_INIT
`endif // not def RANDOMIZE
`ifndef RANDOMIZE
  `ifdef RANDOMIZE_REG_INIT
    `define RANDOMIZE
  `endif // RANDOMIZE_REG_INIT
`endif // not def RANDOMIZE

// RANDOM may be set to an expression that produces a 32-bit random unsigned value.
`ifndef RANDOM
  `define RANDOM $random
`endif // not def RANDOM

// Users can define INIT_RANDOM as general code that gets injected into the
// initializer block for modules with registers.
`ifndef INIT_RANDOM
  `define INIT_RANDOM
`endif // not def INIT_RANDOM

// If using random initialization, you can also define RANDOMIZE_DELAY to
// customize the delay used, otherwise 0.002 is used.
`ifndef RANDOMIZE_DELAY
  `define RANDOMIZE_DELAY 0.002
`endif // not def RANDOMIZE_DELAY

// Define INIT_RANDOM_PROLOG_ for use in our modules below.
`ifndef INIT_RANDOM_PROLOG_
  `ifdef RANDOMIZE
    `ifdef VERILATOR
      `define INIT_RANDOM_PROLOG_ `INIT_RANDOM
    `else  // VERILATOR
      `define INIT_RANDOM_PROLOG_ `INIT_RANDOM #`RANDOMIZE_DELAY begin end
    `endif // VERILATOR
  `else  // RANDOMIZE
    `define INIT_RANDOM_PROLOG_
  `endif // RANDOMIZE
`endif // not def INIT_RANDOM_PROLOG_

// Include register initializers in init blocks unless synthesis is set
`ifndef SYNTHESIS
  `ifndef ENABLE_INITIAL_REG_
    `define ENABLE_INITIAL_REG_
  `endif // not def ENABLE_INITIAL_REG_
`endif // not def SYNTHESIS

// Include rmemory initializers in init blocks unless synthesis is set
`ifndef SYNTHESIS
  `ifndef ENABLE_INITIAL_MEM_
    `define ENABLE_INITIAL_MEM_
  `endif // not def ENABLE_INITIAL_MEM_
`endif // not def SYNTHESIS

// Standard header to adapt well known macros for prints and assertions.

// Users can define 'PRINTF_COND' to add an extra gate to prints.
`ifndef PRINTF_COND_
  `ifdef PRINTF_COND
    `define PRINTF_COND_ (`PRINTF_COND)
  `else  // PRINTF_COND
    `define PRINTF_COND_ 1
  `endif // PRINTF_COND
`endif // not def PRINTF_COND_

// Users can define 'ASSERT_VERBOSE_COND' to add an extra gate to assert error printing.
`ifndef ASSERT_VERBOSE_COND_
  `ifdef ASSERT_VERBOSE_COND
    `define ASSERT_VERBOSE_COND_ (`ASSERT_VERBOSE_COND)
  `else  // ASSERT_VERBOSE_COND
    `define ASSERT_VERBOSE_COND_ 1
  `endif // ASSERT_VERBOSE_COND
`endif // not def ASSERT_VERBOSE_COND_

// Users can define 'STOP_COND' to add an extra gate to stop conditions.
`ifndef STOP_COND_
  `ifdef STOP_COND
    `define STOP_COND_ (`STOP_COND)
  `else  // STOP_COND
    `define STOP_COND_ 1
  `endif // STOP_COND
`endif // not def STOP_COND_

module IBuf(
  input         clock,
                reset,
  output        io_imem_ready,	// src/main/scala/rocket/IBuf.scala:22:14
  input         io_imem_valid,	// src/main/scala/rocket/IBuf.scala:22:14
  input  [1:0]  io_imem_bits_btb_cfiType,	// src/main/scala/rocket/IBuf.scala:22:14
  input         io_imem_bits_btb_taken,	// src/main/scala/rocket/IBuf.scala:22:14
  input  [1:0]  io_imem_bits_btb_mask,	// src/main/scala/rocket/IBuf.scala:22:14
  input         io_imem_bits_btb_bridx,	// src/main/scala/rocket/IBuf.scala:22:14
  input  [38:0] io_imem_bits_btb_target,	// src/main/scala/rocket/IBuf.scala:22:14
  input  [4:0]  io_imem_bits_btb_entry,	// src/main/scala/rocket/IBuf.scala:22:14
  input  [7:0]  io_imem_bits_btb_bht_history,	// src/main/scala/rocket/IBuf.scala:22:14
  input         io_imem_bits_btb_bht_value,	// src/main/scala/rocket/IBuf.scala:22:14
  input  [39:0] io_imem_bits_pc,	// src/main/scala/rocket/IBuf.scala:22:14
  input  [31:0] io_imem_bits_data,	// src/main/scala/rocket/IBuf.scala:22:14
  input  [1:0]  io_imem_bits_mask,	// src/main/scala/rocket/IBuf.scala:22:14
  input         io_imem_bits_xcpt_pf_inst,	// src/main/scala/rocket/IBuf.scala:22:14
                io_imem_bits_xcpt_gf_inst,	// src/main/scala/rocket/IBuf.scala:22:14
                io_imem_bits_xcpt_ae_inst,	// src/main/scala/rocket/IBuf.scala:22:14
                io_imem_bits_replay,	// src/main/scala/rocket/IBuf.scala:22:14
                io_kill,	// src/main/scala/rocket/IBuf.scala:22:14
  output [39:0] io_pc,	// src/main/scala/rocket/IBuf.scala:22:14
  output [1:0]  io_btb_resp_cfiType,	// src/main/scala/rocket/IBuf.scala:22:14
  output        io_btb_resp_taken,	// src/main/scala/rocket/IBuf.scala:22:14
  output [1:0]  io_btb_resp_mask,	// src/main/scala/rocket/IBuf.scala:22:14
  output        io_btb_resp_bridx,	// src/main/scala/rocket/IBuf.scala:22:14
  output [38:0] io_btb_resp_target,	// src/main/scala/rocket/IBuf.scala:22:14
  output [4:0]  io_btb_resp_entry,	// src/main/scala/rocket/IBuf.scala:22:14
  output [7:0]  io_btb_resp_bht_history,	// src/main/scala/rocket/IBuf.scala:22:14
  output        io_btb_resp_bht_value,	// src/main/scala/rocket/IBuf.scala:22:14
  input         io_inst_0_ready,	// src/main/scala/rocket/IBuf.scala:22:14
  output        io_inst_0_valid,	// src/main/scala/rocket/IBuf.scala:22:14
                io_inst_0_bits_xcpt0_pf_inst,	// src/main/scala/rocket/IBuf.scala:22:14
                io_inst_0_bits_xcpt0_gf_inst,	// src/main/scala/rocket/IBuf.scala:22:14
                io_inst_0_bits_xcpt0_ae_inst,	// src/main/scala/rocket/IBuf.scala:22:14
                io_inst_0_bits_xcpt1_pf_inst,	// src/main/scala/rocket/IBuf.scala:22:14
                io_inst_0_bits_xcpt1_gf_inst,	// src/main/scala/rocket/IBuf.scala:22:14
                io_inst_0_bits_xcpt1_ae_inst,	// src/main/scala/rocket/IBuf.scala:22:14
                io_inst_0_bits_replay,	// src/main/scala/rocket/IBuf.scala:22:14
                io_inst_0_bits_rvc,	// src/main/scala/rocket/IBuf.scala:22:14
  output [31:0] io_inst_0_bits_inst_bits,	// src/main/scala/rocket/IBuf.scala:22:14
  output [4:0]  io_inst_0_bits_inst_rd,	// src/main/scala/rocket/IBuf.scala:22:14
                io_inst_0_bits_inst_rs1,	// src/main/scala/rocket/IBuf.scala:22:14
                io_inst_0_bits_inst_rs2,	// src/main/scala/rocket/IBuf.scala:22:14
                io_inst_0_bits_inst_rs3,	// src/main/scala/rocket/IBuf.scala:22:14
  output [31:0] io_inst_0_bits_raw	// src/main/scala/rocket/IBuf.scala:22:14
);

  wire [4:0]   io_inst_0_bits_inst_rs3_0;
  wire [4:0]   io_inst_0_bits_inst_rs2_0;
  wire [4:0]   io_inst_0_bits_inst_rs1_0;
  wire [4:0]   io_inst_0_bits_inst_rd_0;
  wire [31:0]  io_inst_0_bits_inst_bits_0;
  wire         _exp_io_rvc;	// src/main/scala/rocket/IBuf.scala:86:21
  wire         io_imem_valid_0 = io_imem_valid;
  wire [1:0]   io_imem_bits_btb_cfiType_0 = io_imem_bits_btb_cfiType;
  wire         io_imem_bits_btb_taken_0 = io_imem_bits_btb_taken;
  wire [1:0]   io_imem_bits_btb_mask_0 = io_imem_bits_btb_mask;
  wire         io_imem_bits_btb_bridx_0 = io_imem_bits_btb_bridx;
  wire [38:0]  io_imem_bits_btb_target_0 = io_imem_bits_btb_target;
  wire [4:0]   io_imem_bits_btb_entry_0 = io_imem_bits_btb_entry;
  wire [7:0]   io_imem_bits_btb_bht_history_0 = io_imem_bits_btb_bht_history;
  wire         io_imem_bits_btb_bht_value_0 = io_imem_bits_btb_bht_value;
  wire [39:0]  io_imem_bits_pc_0 = io_imem_bits_pc;
  wire [31:0]  io_imem_bits_data_0 = io_imem_bits_data;
  wire [1:0]   io_imem_bits_mask_0 = io_imem_bits_mask;
  wire         io_imem_bits_xcpt_pf_inst_0 = io_imem_bits_xcpt_pf_inst;
  wire         io_imem_bits_xcpt_gf_inst_0 = io_imem_bits_xcpt_gf_inst;
  wire         io_imem_bits_xcpt_ae_inst_0 = io_imem_bits_xcpt_ae_inst;
  wire         io_imem_bits_replay_0 = io_imem_bits_replay;
  wire         io_kill_0 = io_kill;
  wire         io_inst_0_ready_0 = io_inst_0_ready;
  wire         xcpt_0_pf_inst;	// src/main/scala/rocket/IBuf.scala:76:53
  wire         xcpt_0_gf_inst;	// src/main/scala/rocket/IBuf.scala:76:53
  wire         xcpt_0_ae_inst;	// src/main/scala/rocket/IBuf.scala:76:53
  wire         replay;	// src/main/scala/rocket/IBuf.scala:92:33
  wire [31:0]  inst;	// src/main/scala/rocket/IBuf.scala:72:30
  reg          nBufValid;	// src/main/scala/rocket/IBuf.scala:34:47
  reg  [1:0]   buf_btb_cfiType;	// src/main/scala/rocket/IBuf.scala:35:16
  reg          buf_btb_taken;	// src/main/scala/rocket/IBuf.scala:35:16
  reg  [1:0]   buf_btb_mask;	// src/main/scala/rocket/IBuf.scala:35:16
  reg          buf_btb_bridx;	// src/main/scala/rocket/IBuf.scala:35:16
  reg  [38:0]  buf_btb_target;	// src/main/scala/rocket/IBuf.scala:35:16
  reg  [4:0]   buf_btb_entry;	// src/main/scala/rocket/IBuf.scala:35:16
  reg  [7:0]   buf_btb_bht_history;	// src/main/scala/rocket/IBuf.scala:35:16
  reg          buf_btb_bht_value;	// src/main/scala/rocket/IBuf.scala:35:16
  reg  [39:0]  buf_pc;	// src/main/scala/rocket/IBuf.scala:35:16
  reg  [31:0]  buf_data;	// src/main/scala/rocket/IBuf.scala:35:16
  reg  [1:0]   buf_mask;	// src/main/scala/rocket/IBuf.scala:35:16
  reg          buf_xcpt_pf_inst;	// src/main/scala/rocket/IBuf.scala:35:16
  reg          buf_xcpt_gf_inst;	// src/main/scala/rocket/IBuf.scala:35:16
  reg          buf_xcpt_ae_inst;	// src/main/scala/rocket/IBuf.scala:35:16
  reg          buf_replay;	// src/main/scala/rocket/IBuf.scala:35:16
  reg  [1:0]   ibufBTBResp_cfiType;	// src/main/scala/rocket/IBuf.scala:36:24
  reg          ibufBTBResp_taken;	// src/main/scala/rocket/IBuf.scala:36:24
  reg  [1:0]   ibufBTBResp_mask;	// src/main/scala/rocket/IBuf.scala:36:24
  reg          ibufBTBResp_bridx;	// src/main/scala/rocket/IBuf.scala:36:24
  reg  [38:0]  ibufBTBResp_target;	// src/main/scala/rocket/IBuf.scala:36:24
  reg  [4:0]   ibufBTBResp_entry;	// src/main/scala/rocket/IBuf.scala:36:24
  reg  [7:0]   ibufBTBResp_bht_history;	// src/main/scala/rocket/IBuf.scala:36:24
  reg          ibufBTBResp_bht_value;	// src/main/scala/rocket/IBuf.scala:36:24
  wire         pcWordBits = io_imem_bits_pc_0[1];	// src/main/scala/util/package.scala:163:13
  wire [1:0]   _GEN = {1'h0, pcWordBits};	// src/main/scala/rocket/IBuf.scala:41:86, src/main/scala/util/package.scala:163:13
  wire [1:0]   nIC =
    (io_imem_bits_btb_taken_0 ? {1'h0, io_imem_bits_btb_bridx_0} + 2'h1 : 2'h2) - _GEN;	// src/main/scala/rocket/IBuf.scala:41:{16,64,86}
  wire [1:0]   _GEN_0 = {1'h0, nBufValid};	// src/main/scala/rocket/IBuf.scala:34:47, :42:25
  wire [1:0]   nReady;	// src/main/scala/rocket/IBuf.scala:40:27
  wire [1:0]   nICReady = nReady - _GEN_0;	// src/main/scala/rocket/IBuf.scala:40:27, :42:25
  wire [1:0]   nValid = (io_imem_valid_0 ? nIC : 2'h0) + _GEN_0;	// src/main/scala/rocket/IBuf.scala:41:86, :42:25, :43:{19,45}
  wire         _nBufValid_T = nReady >= _GEN_0;	// src/main/scala/rocket/IBuf.scala:40:27, :42:25, :44:47
  wire [1:0]   _nBufValid_T_6 = nIC - nICReady;	// src/main/scala/rocket/IBuf.scala:41:86, :42:25, :44:94
  wire         io_imem_ready_0 =
    io_inst_0_ready_0 & _nBufValid_T & (nICReady >= nIC | ~(_nBufValid_T_6[1]));	// src/main/scala/rocket/IBuf.scala:41:86, :42:25, :44:{47,60,73,80,87,94}
  wire [1:0]   shamt = _GEN + nICReady;	// src/main/scala/rocket/IBuf.scala:41:86, :42:25, :55:32
  wire [63:0]  buf_data_data = {{2{io_imem_bits_data_0[31:16]}}, io_imem_bits_data_0};	// src/main/scala/rocket/IBuf.scala:127:{19,24,58}
  wire [1:0]   icShiftAmt = _GEN_0 - 2'h2 - _GEN;	// src/main/scala/rocket/IBuf.scala:41:86, :42:25, :68:{34,46,59}
  wire [127:0] icData_data =
    {{2{{2{io_imem_bits_data_0[31:16]}}}},
     io_imem_bits_data_0,
     {2{io_imem_bits_data_0[15:0]}}};	// src/main/scala/rocket/IBuf.scala:69:{57,87}, :120:{19,24,58}
  wire [190:0] _icData_T_4 = {63'h0, icData_data} << {185'h0, icShiftAmt, 4'h0};	// src/main/scala/rocket/IBuf.scala:68:59, :120:19, :121:10
  wire [31:0]  icData = _icData_T_4[95:64];	// src/main/scala/rocket/IBuf.scala:121:10, src/main/scala/util/package.scala:163:13
  wire [62:0]  _icMask_T_2 = 63'hFFFFFFFF << {58'h0, nBufValid, 4'h0};	// src/main/scala/rocket/IBuf.scala:34:47, :71:51
  wire [31:0]  icMask = _icMask_T_2[31:0];	// src/main/scala/rocket/IBuf.scala:71:{51,92}
  assign inst = icData & icMask | buf_data & ~icMask;	// src/main/scala/rocket/IBuf.scala:35:16, :71:92, :72:{21,30,41,43}, src/main/scala/util/package.scala:163:13
  wire [31:0]  io_inst_0_bits_raw_0 = inst;	// src/main/scala/rocket/IBuf.scala:72:30
  wire [3:0]   _valid_T = 4'h1 << nValid;	// src/main/scala/chisel3/util/OneHot.scala:58:35, src/main/scala/rocket/IBuf.scala:43:45
  wire [1:0]   valid = _valid_T[1:0] - 2'h1;	// src/main/scala/chisel3/util/OneHot.scala:58:35, src/main/scala/rocket/IBuf.scala:74:{33,39}
  wire [1:0]   bufMask = (2'h1 << _GEN_0) - 2'h1;	// src/main/scala/chisel3/util/OneHot.scala:58:35, src/main/scala/rocket/IBuf.scala:42:25, :75:37
  assign xcpt_0_pf_inst = bufMask[0] ? buf_xcpt_pf_inst : io_imem_bits_xcpt_pf_inst_0;	// src/main/scala/rocket/IBuf.scala:35:16, :75:37, :76:{53,61}
  assign xcpt_0_gf_inst = bufMask[0] ? buf_xcpt_gf_inst : io_imem_bits_xcpt_gf_inst_0;	// src/main/scala/rocket/IBuf.scala:35:16, :75:37, :76:{53,61}
  assign xcpt_0_ae_inst = bufMask[0] ? buf_xcpt_ae_inst : io_imem_bits_xcpt_ae_inst_0;	// src/main/scala/rocket/IBuf.scala:35:16, :75:37, :76:{53,61}
  wire         io_inst_0_bits_xcpt0_pf_inst_0 = xcpt_0_pf_inst;	// src/main/scala/rocket/IBuf.scala:76:53
  wire         io_inst_0_bits_xcpt0_gf_inst_0 = xcpt_0_gf_inst;	// src/main/scala/rocket/IBuf.scala:76:53
  wire         io_inst_0_bits_xcpt0_ae_inst_0 = xcpt_0_ae_inst;	// src/main/scala/rocket/IBuf.scala:76:53
  wire         xcpt_1_pf_inst =
    bufMask[1] ? buf_xcpt_pf_inst : io_imem_bits_xcpt_pf_inst_0;	// src/main/scala/rocket/IBuf.scala:35:16, :75:37, :76:{53,61}
  wire         xcpt_1_gf_inst =
    bufMask[1] ? buf_xcpt_gf_inst : io_imem_bits_xcpt_gf_inst_0;	// src/main/scala/rocket/IBuf.scala:35:16, :75:37, :76:{53,61}
  wire         xcpt_1_ae_inst =
    bufMask[1] ? buf_xcpt_ae_inst : io_imem_bits_xcpt_ae_inst_0;	// src/main/scala/rocket/IBuf.scala:35:16, :75:37, :76:{53,61}
  wire [1:0]   buf_replay_0 = buf_replay ? bufMask : 2'h0;	// src/main/scala/rocket/IBuf.scala:35:16, :75:37, :77:23
  wire [1:0]   ic_replay =
    buf_replay_0 | (io_imem_bits_replay_0 ? valid & ~bufMask : 2'h0);	// src/main/scala/rocket/IBuf.scala:74:39, :75:37, :77:23, :78:{30,35,63,65}
  `ifndef SYNTHESIS	// src/main/scala/rocket/IBuf.scala:79:9
    always @(posedge clock) begin	// src/main/scala/rocket/IBuf.scala:79:9
      if (~reset
          & ~(~io_imem_valid_0 | ~io_imem_bits_btb_taken_0
              | io_imem_bits_btb_bridx_0 >= pcWordBits)) begin	// src/main/scala/rocket/IBuf.scala:79:{9,10,28,52,78}, src/main/scala/util/package.scala:163:13
        if (`ASSERT_VERBOSE_COND_)	// src/main/scala/rocket/IBuf.scala:79:9
          $error("Assertion failed\n    at IBuf.scala:79 assert(!io.imem.valid || !io.imem.bits.btb.taken || io.imem.bits.btb.bridx >= pcWordBits)\n");	// src/main/scala/rocket/IBuf.scala:79:9
        if (`STOP_COND_)	// src/main/scala/rocket/IBuf.scala:79:9
          $fatal;	// src/main/scala/rocket/IBuf.scala:79:9
      end
    end // always @(posedge)
  `endif // not def SYNTHESIS
  wire [39:0]  io_pc_0 = nBufValid ? buf_pc : io_imem_bits_pc_0;	// src/main/scala/rocket/IBuf.scala:34:47, :35:16, :82:15
  assign replay = ic_replay[0] | ~_exp_io_rvc & ic_replay[1];	// src/main/scala/rocket/IBuf.scala:78:30, :86:21, :92:{29,33,37,49,61,63}
  wire         io_inst_0_bits_replay_0 = replay;	// src/main/scala/rocket/IBuf.scala:92:33
  wire         full_insn = _exp_io_rvc | valid[1] | buf_replay_0[0];	// src/main/scala/rocket/IBuf.scala:74:39, :77:23, :86:21, :93:{42,44,50,63}
  wire         io_inst_0_valid_0 = valid[0] & full_insn;	// src/main/scala/rocket/IBuf.scala:74:39, :93:50, :94:{32,36}
  wire [1:0]   io_inst_0_bits_xcpt1_hi = {xcpt_1_pf_inst, xcpt_1_gf_inst};	// src/main/scala/rocket/IBuf.scala:76:53, :96:65
  wire [2:0]   _io_inst_0_bits_xcpt1_T_5 =
    _exp_io_rvc ? 3'h0 : {io_inst_0_bits_xcpt1_hi, xcpt_1_ae_inst};	// src/main/scala/rocket/IBuf.scala:76:53, :86:21, :96:{35,65}
  wire         io_inst_0_bits_xcpt1_ae_inst_0 = _io_inst_0_bits_xcpt1_T_5[0];	// src/main/scala/rocket/IBuf.scala:96:{35,81}
  wire         io_inst_0_bits_xcpt1_gf_inst_0 = _io_inst_0_bits_xcpt1_T_5[1];	// src/main/scala/rocket/IBuf.scala:96:{35,81}
  wire         io_inst_0_bits_xcpt1_pf_inst_0 = _io_inst_0_bits_xcpt1_T_5[2];	// src/main/scala/rocket/IBuf.scala:96:{35,81}
  wire         _GEN_1 = bufMask[0] & _exp_io_rvc | bufMask[1];	// src/main/scala/rocket/IBuf.scala:75:37, :86:21, :100:{21,25,40,50,52}
  wire [1:0]   io_btb_resp_cfiType_0 =
    _GEN_1 ? ibufBTBResp_cfiType : io_imem_bits_btb_cfiType_0;	// src/main/scala/rocket/IBuf.scala:36:24, :81:15, :100:{40,59,73}
  wire         io_btb_resp_taken_0 =
    _GEN_1 ? ibufBTBResp_taken : io_imem_bits_btb_taken_0;	// src/main/scala/rocket/IBuf.scala:36:24, :81:15, :100:{40,59,73}
  wire [1:0]   io_btb_resp_mask_0 = _GEN_1 ? ibufBTBResp_mask : io_imem_bits_btb_mask_0;	// src/main/scala/rocket/IBuf.scala:36:24, :81:15, :100:{40,59,73}
  wire         io_btb_resp_bridx_0 =
    _GEN_1 ? ibufBTBResp_bridx : io_imem_bits_btb_bridx_0;	// src/main/scala/rocket/IBuf.scala:36:24, :81:15, :100:{40,59,73}
  wire [38:0]  io_btb_resp_target_0 =
    _GEN_1 ? ibufBTBResp_target : io_imem_bits_btb_target_0;	// src/main/scala/rocket/IBuf.scala:36:24, :81:15, :100:{40,59,73}
  wire [4:0]   io_btb_resp_entry_0 =
    _GEN_1 ? ibufBTBResp_entry : io_imem_bits_btb_entry_0;	// src/main/scala/rocket/IBuf.scala:36:24, :81:15, :100:{40,59,73}
  wire [7:0]   io_btb_resp_bht_history_0 =
    _GEN_1 ? ibufBTBResp_bht_history : io_imem_bits_btb_bht_history_0;	// src/main/scala/rocket/IBuf.scala:36:24, :81:15, :100:{40,59,73}
  wire         io_btb_resp_bht_value_0 =
    _GEN_1 ? ibufBTBResp_bht_value : io_imem_bits_btb_bht_value_0;	// src/main/scala/rocket/IBuf.scala:36:24, :81:15, :100:{40,59,73}
  assign nReady = full_insn ? (_exp_io_rvc ? 2'h1 : 2'h2) : 2'h0;	// src/main/scala/rocket/IBuf.scala:40:27, :86:21, :93:50, :102:{60,69,75}
  always @(posedge clock) begin
    automatic logic _GEN_2;	// src/main/scala/rocket/IBuf.scala:54:68
    _GEN_2 = io_imem_valid_0 & _nBufValid_T & nICReady < nIC & ~(_nBufValid_T_6[1]);	// src/main/scala/rocket/IBuf.scala:41:86, :42:25, :44:{47,87,94}, :54:{62,68,75}
    if (reset)
      nBufValid <= 1'h0;	// src/main/scala/rocket/IBuf.scala:34:47
    else
      nBufValid <=
        ~io_kill_0
        & (io_inst_0_ready_0
             ? (_GEN_2
                  ? _nBufValid_T_6[0]
                  : ~(_nBufValid_T | ~nBufValid) & nBufValid - nReady[0])
             : nBufValid);	// src/main/scala/rocket/IBuf.scala:34:47, :40:27, :44:{47,94}, :47:29, :48:{17,23,61}, :54:{68,94}, :56:{19,26}, :63:20, :64:17, src/main/scala/util/package.scala:218:{38,43}
    if (io_inst_0_ready_0 & _GEN_2) begin	// src/main/scala/rocket/IBuf.scala:35:16, :47:29, :54:{68,94}, :57:13
      automatic logic [63:0] _buf_data_T_1 = buf_data_data >> {58'h0, shamt, 4'h0};	// src/main/scala/rocket/IBuf.scala:55:32, :127:19, :128:10
      buf_btb_cfiType <= io_imem_bits_btb_cfiType_0;	// src/main/scala/rocket/IBuf.scala:35:16
      buf_btb_taken <= io_imem_bits_btb_taken_0;	// src/main/scala/rocket/IBuf.scala:35:16
      buf_btb_mask <= io_imem_bits_btb_mask_0;	// src/main/scala/rocket/IBuf.scala:35:16
      buf_btb_bridx <= io_imem_bits_btb_bridx_0;	// src/main/scala/rocket/IBuf.scala:35:16
      buf_btb_target <= io_imem_bits_btb_target_0;	// src/main/scala/rocket/IBuf.scala:35:16
      buf_btb_entry <= io_imem_bits_btb_entry_0;	// src/main/scala/rocket/IBuf.scala:35:16
      buf_btb_bht_history <= io_imem_bits_btb_bht_history_0;	// src/main/scala/rocket/IBuf.scala:35:16
      buf_btb_bht_value <= io_imem_bits_btb_bht_value_0;	// src/main/scala/rocket/IBuf.scala:35:16
      buf_pc <=
        io_imem_bits_pc_0 & 40'hFFFFFFFFFC | io_imem_bits_pc_0 + {37'h0, nICReady, 1'h0}
        & 40'h3;	// src/main/scala/rocket/IBuf.scala:35:16, :42:25, :59:{35,49,68,109}
      buf_data <= {16'h0, _buf_data_T_1[15:0]};	// src/main/scala/rocket/IBuf.scala:35:16, :58:{18,61}, :128:10
      buf_mask <= io_imem_bits_mask_0;	// src/main/scala/rocket/IBuf.scala:35:16
      buf_xcpt_pf_inst <= io_imem_bits_xcpt_pf_inst_0;	// src/main/scala/rocket/IBuf.scala:35:16
      buf_xcpt_gf_inst <= io_imem_bits_xcpt_gf_inst_0;	// src/main/scala/rocket/IBuf.scala:35:16
      buf_xcpt_ae_inst <= io_imem_bits_xcpt_ae_inst_0;	// src/main/scala/rocket/IBuf.scala:35:16
      buf_replay <= io_imem_bits_replay_0;	// src/main/scala/rocket/IBuf.scala:35:16
      ibufBTBResp_cfiType <= io_imem_bits_btb_cfiType_0;	// src/main/scala/rocket/IBuf.scala:36:24
      ibufBTBResp_taken <= io_imem_bits_btb_taken_0;	// src/main/scala/rocket/IBuf.scala:36:24
      ibufBTBResp_mask <= io_imem_bits_btb_mask_0;	// src/main/scala/rocket/IBuf.scala:36:24
      ibufBTBResp_bridx <= io_imem_bits_btb_bridx_0;	// src/main/scala/rocket/IBuf.scala:36:24
      ibufBTBResp_target <= io_imem_bits_btb_target_0;	// src/main/scala/rocket/IBuf.scala:36:24
      ibufBTBResp_entry <= io_imem_bits_btb_entry_0;	// src/main/scala/rocket/IBuf.scala:36:24
      ibufBTBResp_bht_history <= io_imem_bits_btb_bht_history_0;	// src/main/scala/rocket/IBuf.scala:36:24
      ibufBTBResp_bht_value <= io_imem_bits_btb_bht_value_0;	// src/main/scala/rocket/IBuf.scala:36:24
    end
  end // always @(posedge)
  `ifdef ENABLE_INITIAL_REG_
    `ifdef FIRRTL_BEFORE_INITIAL
      `FIRRTL_BEFORE_INITIAL
    `endif // FIRRTL_BEFORE_INITIAL
    initial begin
      automatic logic [31:0] _RANDOM[0:6];
      `ifdef INIT_RANDOM_PROLOG_
        `INIT_RANDOM_PROLOG_
      `endif // INIT_RANDOM_PROLOG_
      `ifdef RANDOMIZE_REG_INIT
        for (logic [2:0] i = 3'h0; i < 3'h7; i += 3'h1) begin
          _RANDOM[i] = `RANDOM;
        end
        nBufValid = _RANDOM[3'h0][0];	// src/main/scala/rocket/IBuf.scala:34:47
        buf_btb_cfiType = _RANDOM[3'h0][2:1];	// src/main/scala/rocket/IBuf.scala:34:47, :35:16
        buf_btb_taken = _RANDOM[3'h0][3];	// src/main/scala/rocket/IBuf.scala:34:47, :35:16
        buf_btb_mask = _RANDOM[3'h0][5:4];	// src/main/scala/rocket/IBuf.scala:34:47, :35:16
        buf_btb_bridx = _RANDOM[3'h0][6];	// src/main/scala/rocket/IBuf.scala:34:47, :35:16
        buf_btb_target = {_RANDOM[3'h0][31:7], _RANDOM[3'h1][13:0]};	// src/main/scala/rocket/IBuf.scala:34:47, :35:16
        buf_btb_entry = _RANDOM[3'h1][18:14];	// src/main/scala/rocket/IBuf.scala:35:16
        buf_btb_bht_history = _RANDOM[3'h1][26:19];	// src/main/scala/rocket/IBuf.scala:35:16
        buf_btb_bht_value = _RANDOM[3'h1][27];	// src/main/scala/rocket/IBuf.scala:35:16
        buf_pc = {_RANDOM[3'h1][31:28], _RANDOM[3'h2], _RANDOM[3'h3][3:0]};	// src/main/scala/rocket/IBuf.scala:35:16
        buf_data = {_RANDOM[3'h3][31:4], _RANDOM[3'h4][3:0]};	// src/main/scala/rocket/IBuf.scala:35:16
        buf_mask = _RANDOM[3'h4][5:4];	// src/main/scala/rocket/IBuf.scala:35:16
        buf_xcpt_pf_inst = _RANDOM[3'h4][6];	// src/main/scala/rocket/IBuf.scala:35:16
        buf_xcpt_gf_inst = _RANDOM[3'h4][7];	// src/main/scala/rocket/IBuf.scala:35:16
        buf_xcpt_ae_inst = _RANDOM[3'h4][8];	// src/main/scala/rocket/IBuf.scala:35:16
        buf_replay = _RANDOM[3'h4][9];	// src/main/scala/rocket/IBuf.scala:35:16
        ibufBTBResp_cfiType = _RANDOM[3'h4][11:10];	// src/main/scala/rocket/IBuf.scala:35:16, :36:24
        ibufBTBResp_taken = _RANDOM[3'h4][12];	// src/main/scala/rocket/IBuf.scala:35:16, :36:24
        ibufBTBResp_mask = _RANDOM[3'h4][14:13];	// src/main/scala/rocket/IBuf.scala:35:16, :36:24
        ibufBTBResp_bridx = _RANDOM[3'h4][15];	// src/main/scala/rocket/IBuf.scala:35:16, :36:24
        ibufBTBResp_target = {_RANDOM[3'h4][31:16], _RANDOM[3'h5][22:0]};	// src/main/scala/rocket/IBuf.scala:35:16, :36:24
        ibufBTBResp_entry = _RANDOM[3'h5][27:23];	// src/main/scala/rocket/IBuf.scala:36:24
        ibufBTBResp_bht_history = {_RANDOM[3'h5][31:28], _RANDOM[3'h6][3:0]};	// src/main/scala/rocket/IBuf.scala:36:24
        ibufBTBResp_bht_value = _RANDOM[3'h6][4];	// src/main/scala/rocket/IBuf.scala:36:24
      `endif // RANDOMIZE_REG_INIT
    end // initial
    `ifdef FIRRTL_AFTER_INITIAL
      `FIRRTL_AFTER_INITIAL
    `endif // FIRRTL_AFTER_INITIAL
  `endif // ENABLE_INITIAL_REG_
  RVCExpander exp (	// src/main/scala/rocket/IBuf.scala:86:21
    .io_in       (inst),	// src/main/scala/rocket/IBuf.scala:72:30
    .io_out_bits (io_inst_0_bits_inst_bits_0),
    .io_out_rd   (io_inst_0_bits_inst_rd_0),
    .io_out_rs1  (io_inst_0_bits_inst_rs1_0),
    .io_out_rs2  (io_inst_0_bits_inst_rs2_0),
    .io_out_rs3  (io_inst_0_bits_inst_rs3_0),
    .io_rvc      (_exp_io_rvc)
  );
  wire         io_inst_0_bits_rvc_0;
  assign io_inst_0_bits_rvc_0 = _exp_io_rvc;	// src/main/scala/rocket/IBuf.scala:86:21
  assign io_imem_ready = io_imem_ready_0;
  assign io_pc = io_pc_0;
  assign io_btb_resp_cfiType = io_btb_resp_cfiType_0;
  assign io_btb_resp_taken = io_btb_resp_taken_0;
  assign io_btb_resp_mask = io_btb_resp_mask_0;
  assign io_btb_resp_bridx = io_btb_resp_bridx_0;
  assign io_btb_resp_target = io_btb_resp_target_0;
  assign io_btb_resp_entry = io_btb_resp_entry_0;
  assign io_btb_resp_bht_history = io_btb_resp_bht_history_0;
  assign io_btb_resp_bht_value = io_btb_resp_bht_value_0;
  assign io_inst_0_valid = io_inst_0_valid_0;
  assign io_inst_0_bits_xcpt0_pf_inst = io_inst_0_bits_xcpt0_pf_inst_0;
  assign io_inst_0_bits_xcpt0_gf_inst = io_inst_0_bits_xcpt0_gf_inst_0;
  assign io_inst_0_bits_xcpt0_ae_inst = io_inst_0_bits_xcpt0_ae_inst_0;
  assign io_inst_0_bits_xcpt1_pf_inst = io_inst_0_bits_xcpt1_pf_inst_0;
  assign io_inst_0_bits_xcpt1_gf_inst = io_inst_0_bits_xcpt1_gf_inst_0;
  assign io_inst_0_bits_xcpt1_ae_inst = io_inst_0_bits_xcpt1_ae_inst_0;
  assign io_inst_0_bits_replay = io_inst_0_bits_replay_0;
  assign io_inst_0_bits_rvc = io_inst_0_bits_rvc_0;
  assign io_inst_0_bits_inst_bits = io_inst_0_bits_inst_bits_0;
  assign io_inst_0_bits_inst_rd = io_inst_0_bits_inst_rd_0;
  assign io_inst_0_bits_inst_rs1 = io_inst_0_bits_inst_rs1_0;
  assign io_inst_0_bits_inst_rs2 = io_inst_0_bits_inst_rs2_0;
  assign io_inst_0_bits_inst_rs3 = io_inst_0_bits_inst_rs3_0;
  assign io_inst_0_bits_raw = io_inst_0_bits_raw_0;
endmodule

