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

module PMPChecker_1(
  input [31:0] io_addr,	// src/main/scala/rocket/PMP.scala:145:14
  input [1:0]  io_size	// src/main/scala/rocket/PMP.scala:145:14
);

  wire [31:0] io_addr_0 = io_addr;
  wire [1:0]  io_size_0 = io_size;
  wire        res_aligned_rangeAligned = 1'h1;	// src/main/scala/rocket/PMP.scala:125:24, :127:8
  wire        res_aligned = 1'h1;	// src/main/scala/rocket/PMP.scala:125:24, :127:8
  wire        res_aligned_rangeAligned_1 = 1'h1;	// src/main/scala/rocket/PMP.scala:125:24, :127:8
  wire        res_aligned_1 = 1'h1;	// src/main/scala/rocket/PMP.scala:125:24, :127:8
  wire        res_aligned_rangeAligned_2 = 1'h1;	// src/main/scala/rocket/PMP.scala:125:24, :127:8
  wire        res_aligned_2 = 1'h1;	// src/main/scala/rocket/PMP.scala:125:24, :127:8
  wire        res_aligned_rangeAligned_3 = 1'h1;	// src/main/scala/rocket/PMP.scala:125:24, :127:8
  wire        res_aligned_3 = 1'h1;	// src/main/scala/rocket/PMP.scala:125:24, :127:8
  wire        res_aligned_rangeAligned_4 = 1'h1;	// src/main/scala/rocket/PMP.scala:125:24, :127:8
  wire        res_aligned_4 = 1'h1;	// src/main/scala/rocket/PMP.scala:125:24, :127:8
  wire        res_aligned_rangeAligned_5 = 1'h1;	// src/main/scala/rocket/PMP.scala:125:24, :127:8
  wire        res_aligned_5 = 1'h1;	// src/main/scala/rocket/PMP.scala:125:24, :127:8
  wire        res_aligned_rangeAligned_6 = 1'h1;	// src/main/scala/rocket/PMP.scala:125:24, :127:8
  wire        res_aligned_6 = 1'h1;	// src/main/scala/rocket/PMP.scala:125:24, :127:8
  wire        res_aligned_rangeAligned_7 = 1'h1;	// src/main/scala/rocket/PMP.scala:125:24, :127:8
  wire        res_aligned_7 = 1'h1;	// src/main/scala/rocket/PMP.scala:125:24, :127:8
  wire [31:0] io_pmp_0_mask = 32'h0;
  wire [31:0] io_pmp_1_mask = 32'h0;
  wire [31:0] io_pmp_2_mask = 32'h0;
  wire [31:0] io_pmp_3_mask = 32'h0;
  wire [31:0] io_pmp_4_mask = 32'h0;
  wire [31:0] io_pmp_5_mask = 32'h0;
  wire [31:0] io_pmp_6_mask = 32'h0;
  wire [31:0] io_pmp_7_mask = 32'h0;
  wire [31:0] pmp0_mask = 32'h0;	// src/main/scala/rocket/PMP.scala:156:22
  wire [31:0] res_cur_mask = 32'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire [31:0] res_cur_1_mask = 32'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire [31:0] res_cur_2_mask = 32'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire [31:0] res_cur_3_mask = 32'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire [31:0] res_cur_4_mask = 32'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire [31:0] res_cur_5_mask = 32'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire [31:0] res_cur_6_mask = 32'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire [31:0] res_cur_7_mask = 32'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire [31:0] res_mask = 32'h0;	// src/main/scala/rocket/PMP.scala:184:8
  wire [29:0] io_pmp_0_addr = 30'h0;
  wire [29:0] io_pmp_1_addr = 30'h0;
  wire [29:0] io_pmp_2_addr = 30'h0;
  wire [29:0] io_pmp_3_addr = 30'h0;
  wire [29:0] io_pmp_4_addr = 30'h0;
  wire [29:0] io_pmp_5_addr = 30'h0;
  wire [29:0] io_pmp_6_addr = 30'h0;
  wire [29:0] io_pmp_7_addr = 30'h0;
  wire [29:0] pmp0_addr = 30'h0;	// src/main/scala/rocket/PMP.scala:156:22
  wire [29:0] res_cur_addr = 30'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire [29:0] res_cur_1_addr = 30'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire [29:0] res_cur_2_addr = 30'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire [29:0] res_cur_3_addr = 30'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire [29:0] res_cur_4_addr = 30'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire [29:0] res_cur_5_addr = 30'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire [29:0] res_cur_6_addr = 30'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire [29:0] res_cur_7_addr = 30'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire [29:0] res_addr = 30'h0;	// src/main/scala/rocket/PMP.scala:184:8
  wire [1:0]  io_pmp_0_cfg_res = 2'h0;
  wire [1:0]  io_pmp_0_cfg_a = 2'h0;
  wire [1:0]  io_pmp_1_cfg_res = 2'h0;
  wire [1:0]  io_pmp_1_cfg_a = 2'h0;
  wire [1:0]  io_pmp_2_cfg_res = 2'h0;
  wire [1:0]  io_pmp_2_cfg_a = 2'h0;
  wire [1:0]  io_pmp_3_cfg_res = 2'h0;
  wire [1:0]  io_pmp_3_cfg_a = 2'h0;
  wire [1:0]  io_pmp_4_cfg_res = 2'h0;
  wire [1:0]  io_pmp_4_cfg_a = 2'h0;
  wire [1:0]  io_pmp_5_cfg_res = 2'h0;
  wire [1:0]  io_pmp_5_cfg_a = 2'h0;
  wire [1:0]  io_pmp_6_cfg_res = 2'h0;
  wire [1:0]  io_pmp_6_cfg_a = 2'h0;
  wire [1:0]  io_pmp_7_cfg_res = 2'h0;
  wire [1:0]  io_pmp_7_cfg_a = 2'h0;
  wire [1:0]  pmp0_cfg_res = 2'h0;	// src/main/scala/rocket/PMP.scala:156:22
  wire [1:0]  pmp0_cfg_a = 2'h0;	// src/main/scala/rocket/PMP.scala:156:22
  wire [1:0]  res_hi = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_hi_1 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_hi_2 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_hi_3 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_hi_4 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_hi_5 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_cur_cfg_res = 2'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire [1:0]  res_cur_cfg_a = 2'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire [1:0]  res_hi_6 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_hi_7 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_hi_8 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_hi_9 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_hi_10 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_hi_11 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_cur_1_cfg_res = 2'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire [1:0]  res_cur_1_cfg_a = 2'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire [1:0]  res_hi_12 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_hi_13 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_hi_14 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_hi_15 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_hi_16 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_hi_17 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_cur_2_cfg_res = 2'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire [1:0]  res_cur_2_cfg_a = 2'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire [1:0]  res_hi_18 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_hi_19 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_hi_20 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_hi_21 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_hi_22 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_hi_23 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_cur_3_cfg_res = 2'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire [1:0]  res_cur_3_cfg_a = 2'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire [1:0]  res_hi_24 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_hi_25 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_hi_26 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_hi_27 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_hi_28 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_hi_29 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_cur_4_cfg_res = 2'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire [1:0]  res_cur_4_cfg_a = 2'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire [1:0]  res_hi_30 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_hi_31 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_hi_32 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_hi_33 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_hi_34 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_hi_35 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_cur_5_cfg_res = 2'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire [1:0]  res_cur_5_cfg_a = 2'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire [1:0]  res_hi_36 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_hi_37 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_hi_38 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_hi_39 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_hi_40 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_hi_41 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_cur_6_cfg_res = 2'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire [1:0]  res_cur_6_cfg_a = 2'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire [1:0]  res_hi_42 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_hi_43 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_hi_44 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_hi_45 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_hi_46 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_hi_47 = 2'h0;	// src/main/scala/rocket/PMP.scala:173:26
  wire [1:0]  res_cur_7_cfg_res = 2'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire [1:0]  res_cur_7_cfg_a = 2'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire [1:0]  res_cfg_res = 2'h0;	// src/main/scala/rocket/PMP.scala:184:8
  wire [1:0]  res_cfg_a = 2'h0;	// src/main/scala/rocket/PMP.scala:184:8
  wire        io_pmp_0_cfg_l = 1'h0;
  wire        io_pmp_0_cfg_x = 1'h0;
  wire        io_pmp_0_cfg_w = 1'h0;
  wire        io_pmp_0_cfg_r = 1'h0;
  wire        io_pmp_1_cfg_l = 1'h0;
  wire        io_pmp_1_cfg_x = 1'h0;
  wire        io_pmp_1_cfg_w = 1'h0;
  wire        io_pmp_1_cfg_r = 1'h0;
  wire        io_pmp_2_cfg_l = 1'h0;
  wire        io_pmp_2_cfg_x = 1'h0;
  wire        io_pmp_2_cfg_w = 1'h0;
  wire        io_pmp_2_cfg_r = 1'h0;
  wire        io_pmp_3_cfg_l = 1'h0;
  wire        io_pmp_3_cfg_x = 1'h0;
  wire        io_pmp_3_cfg_w = 1'h0;
  wire        io_pmp_3_cfg_r = 1'h0;
  wire        io_pmp_4_cfg_l = 1'h0;
  wire        io_pmp_4_cfg_x = 1'h0;
  wire        io_pmp_4_cfg_w = 1'h0;
  wire        io_pmp_4_cfg_r = 1'h0;
  wire        io_pmp_5_cfg_l = 1'h0;
  wire        io_pmp_5_cfg_x = 1'h0;
  wire        io_pmp_5_cfg_w = 1'h0;
  wire        io_pmp_5_cfg_r = 1'h0;
  wire        io_pmp_6_cfg_l = 1'h0;
  wire        io_pmp_6_cfg_x = 1'h0;
  wire        io_pmp_6_cfg_w = 1'h0;
  wire        io_pmp_6_cfg_r = 1'h0;
  wire        io_pmp_7_cfg_l = 1'h0;
  wire        io_pmp_7_cfg_x = 1'h0;
  wire        io_pmp_7_cfg_w = 1'h0;
  wire        io_pmp_7_cfg_r = 1'h0;
  wire        io_r = 1'h0;
  wire        io_w = 1'h0;
  wire        io_x = 1'h0;
  wire        default_0 = 1'h0;	// src/main/scala/rocket/PMP.scala:155:56
  wire        pmp0_cfg_l = 1'h0;	// src/main/scala/rocket/PMP.scala:156:22
  wire        pmp0_cfg_x = 1'h0;	// src/main/scala/rocket/PMP.scala:156:22
  wire        pmp0_cfg_w = 1'h0;	// src/main/scala/rocket/PMP.scala:156:22
  wire        pmp0_cfg_r = 1'h0;	// src/main/scala/rocket/PMP.scala:156:22
  wire        res_hit_msbsLess = 1'h0;	// src/main/scala/rocket/PMP.scala:80:39
  wire        res_hit_lsbsLess = 1'h0;	// src/main/scala/rocket/PMP.scala:82:53
  wire        res_hit_msbsLess_1 = 1'h0;	// src/main/scala/rocket/PMP.scala:80:39
  wire        res_hit_lsbsLess_1 = 1'h0;	// src/main/scala/rocket/PMP.scala:82:53
  wire        res_hit = 1'h0;	// src/main/scala/rocket/PMP.scala:132:8
  wire        res_ignore = 1'h0;	// src/main/scala/rocket/PMP.scala:163:26
  wire        res_aligned_straddlesLowerBound = 1'h0;	// src/main/scala/rocket/PMP.scala:123:90
  wire        res_aligned_straddlesUpperBound = 1'h0;	// src/main/scala/rocket/PMP.scala:124:85
  wire        res_cur_cfg_l = 1'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire        res_cur_cfg_x = 1'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire        res_cur_cfg_w = 1'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire        res_cur_cfg_r = 1'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire        res_hit_msbsLess_2 = 1'h0;	// src/main/scala/rocket/PMP.scala:80:39
  wire        res_hit_lsbsLess_2 = 1'h0;	// src/main/scala/rocket/PMP.scala:82:53
  wire        res_hit_msbsLess_3 = 1'h0;	// src/main/scala/rocket/PMP.scala:80:39
  wire        res_hit_lsbsLess_3 = 1'h0;	// src/main/scala/rocket/PMP.scala:82:53
  wire        res_hit_1 = 1'h0;	// src/main/scala/rocket/PMP.scala:132:8
  wire        res_ignore_1 = 1'h0;	// src/main/scala/rocket/PMP.scala:163:26
  wire        res_aligned_straddlesLowerBound_1 = 1'h0;	// src/main/scala/rocket/PMP.scala:123:90
  wire        res_aligned_straddlesUpperBound_1 = 1'h0;	// src/main/scala/rocket/PMP.scala:124:85
  wire        res_cur_1_cfg_l = 1'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire        res_cur_1_cfg_x = 1'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire        res_cur_1_cfg_w = 1'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire        res_cur_1_cfg_r = 1'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire        res_hit_msbsLess_4 = 1'h0;	// src/main/scala/rocket/PMP.scala:80:39
  wire        res_hit_lsbsLess_4 = 1'h0;	// src/main/scala/rocket/PMP.scala:82:53
  wire        res_hit_msbsLess_5 = 1'h0;	// src/main/scala/rocket/PMP.scala:80:39
  wire        res_hit_lsbsLess_5 = 1'h0;	// src/main/scala/rocket/PMP.scala:82:53
  wire        res_hit_2 = 1'h0;	// src/main/scala/rocket/PMP.scala:132:8
  wire        res_ignore_2 = 1'h0;	// src/main/scala/rocket/PMP.scala:163:26
  wire        res_aligned_straddlesLowerBound_2 = 1'h0;	// src/main/scala/rocket/PMP.scala:123:90
  wire        res_aligned_straddlesUpperBound_2 = 1'h0;	// src/main/scala/rocket/PMP.scala:124:85
  wire        res_cur_2_cfg_l = 1'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire        res_cur_2_cfg_x = 1'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire        res_cur_2_cfg_w = 1'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire        res_cur_2_cfg_r = 1'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire        res_hit_msbsLess_6 = 1'h0;	// src/main/scala/rocket/PMP.scala:80:39
  wire        res_hit_lsbsLess_6 = 1'h0;	// src/main/scala/rocket/PMP.scala:82:53
  wire        res_hit_msbsLess_7 = 1'h0;	// src/main/scala/rocket/PMP.scala:80:39
  wire        res_hit_lsbsLess_7 = 1'h0;	// src/main/scala/rocket/PMP.scala:82:53
  wire        res_hit_3 = 1'h0;	// src/main/scala/rocket/PMP.scala:132:8
  wire        res_ignore_3 = 1'h0;	// src/main/scala/rocket/PMP.scala:163:26
  wire        res_aligned_straddlesLowerBound_3 = 1'h0;	// src/main/scala/rocket/PMP.scala:123:90
  wire        res_aligned_straddlesUpperBound_3 = 1'h0;	// src/main/scala/rocket/PMP.scala:124:85
  wire        res_cur_3_cfg_l = 1'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire        res_cur_3_cfg_x = 1'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire        res_cur_3_cfg_w = 1'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire        res_cur_3_cfg_r = 1'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire        res_hit_msbsLess_8 = 1'h0;	// src/main/scala/rocket/PMP.scala:80:39
  wire        res_hit_lsbsLess_8 = 1'h0;	// src/main/scala/rocket/PMP.scala:82:53
  wire        res_hit_msbsLess_9 = 1'h0;	// src/main/scala/rocket/PMP.scala:80:39
  wire        res_hit_lsbsLess_9 = 1'h0;	// src/main/scala/rocket/PMP.scala:82:53
  wire        res_hit_4 = 1'h0;	// src/main/scala/rocket/PMP.scala:132:8
  wire        res_ignore_4 = 1'h0;	// src/main/scala/rocket/PMP.scala:163:26
  wire        res_aligned_straddlesLowerBound_4 = 1'h0;	// src/main/scala/rocket/PMP.scala:123:90
  wire        res_aligned_straddlesUpperBound_4 = 1'h0;	// src/main/scala/rocket/PMP.scala:124:85
  wire        res_cur_4_cfg_l = 1'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire        res_cur_4_cfg_x = 1'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire        res_cur_4_cfg_w = 1'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire        res_cur_4_cfg_r = 1'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire        res_hit_msbsLess_10 = 1'h0;	// src/main/scala/rocket/PMP.scala:80:39
  wire        res_hit_lsbsLess_10 = 1'h0;	// src/main/scala/rocket/PMP.scala:82:53
  wire        res_hit_msbsLess_11 = 1'h0;	// src/main/scala/rocket/PMP.scala:80:39
  wire        res_hit_lsbsLess_11 = 1'h0;	// src/main/scala/rocket/PMP.scala:82:53
  wire        res_hit_5 = 1'h0;	// src/main/scala/rocket/PMP.scala:132:8
  wire        res_ignore_5 = 1'h0;	// src/main/scala/rocket/PMP.scala:163:26
  wire        res_aligned_straddlesLowerBound_5 = 1'h0;	// src/main/scala/rocket/PMP.scala:123:90
  wire        res_aligned_straddlesUpperBound_5 = 1'h0;	// src/main/scala/rocket/PMP.scala:124:85
  wire        res_cur_5_cfg_l = 1'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire        res_cur_5_cfg_x = 1'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire        res_cur_5_cfg_w = 1'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire        res_cur_5_cfg_r = 1'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire        res_hit_msbsLess_12 = 1'h0;	// src/main/scala/rocket/PMP.scala:80:39
  wire        res_hit_lsbsLess_12 = 1'h0;	// src/main/scala/rocket/PMP.scala:82:53
  wire        res_hit_msbsLess_13 = 1'h0;	// src/main/scala/rocket/PMP.scala:80:39
  wire        res_hit_lsbsLess_13 = 1'h0;	// src/main/scala/rocket/PMP.scala:82:53
  wire        res_hit_6 = 1'h0;	// src/main/scala/rocket/PMP.scala:132:8
  wire        res_ignore_6 = 1'h0;	// src/main/scala/rocket/PMP.scala:163:26
  wire        res_aligned_straddlesLowerBound_6 = 1'h0;	// src/main/scala/rocket/PMP.scala:123:90
  wire        res_aligned_straddlesUpperBound_6 = 1'h0;	// src/main/scala/rocket/PMP.scala:124:85
  wire        res_cur_6_cfg_l = 1'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire        res_cur_6_cfg_x = 1'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire        res_cur_6_cfg_w = 1'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire        res_cur_6_cfg_r = 1'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire        res_hit_msbsLess_14 = 1'h0;	// src/main/scala/rocket/PMP.scala:80:39
  wire        res_hit_lsbsLess_14 = 1'h0;	// src/main/scala/rocket/PMP.scala:82:53
  wire        res_hit_msbsLess_15 = 1'h0;	// src/main/scala/rocket/PMP.scala:80:39
  wire        res_hit_lsbsLess_15 = 1'h0;	// src/main/scala/rocket/PMP.scala:82:53
  wire        res_hit_7 = 1'h0;	// src/main/scala/rocket/PMP.scala:132:8
  wire        res_ignore_7 = 1'h0;	// src/main/scala/rocket/PMP.scala:163:26
  wire        res_aligned_straddlesLowerBound_7 = 1'h0;	// src/main/scala/rocket/PMP.scala:123:90
  wire        res_aligned_straddlesUpperBound_7 = 1'h0;	// src/main/scala/rocket/PMP.scala:124:85
  wire        res_cur_7_cfg_l = 1'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire        res_cur_7_cfg_x = 1'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire        res_cur_7_cfg_w = 1'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire        res_cur_7_cfg_r = 1'h0;	// src/main/scala/rocket/PMP.scala:180:23
  wire        res_cfg_l = 1'h0;	// src/main/scala/rocket/PMP.scala:184:8
  wire        res_cfg_x = 1'h0;	// src/main/scala/rocket/PMP.scala:184:8
  wire        res_cfg_w = 1'h0;	// src/main/scala/rocket/PMP.scala:184:8
  wire        res_cfg_r = 1'h0;	// src/main/scala/rocket/PMP.scala:184:8
  wire [1:0]  io_prv = 2'h1;	// src/main/scala/rocket/PMP.scala:145:14
  wire [5:0]  _GEN = {4'h0, io_size_0};	// src/main/scala/util/package.scala:243:71
  wire [5:0]  _res_hit_lsbMask_T_1 = 6'h7 << _GEN;	// src/main/scala/util/package.scala:243:71
  wire [31:0] res_hit_lsbMask = {29'h0, ~(_res_hit_lsbMask_T_1[2:0])};	// src/main/scala/rocket/PMP.scala:68:26, :69:53, :81:54, src/main/scala/util/package.scala:243:{46,71,76}
  wire        _GEN_0 = io_addr_0[31:3] == 29'h0;	// src/main/scala/rocket/PMP.scala:63:58, :68:26, :69:{29,53}, :81:54
  wire        res_hit_msbMatch;	// src/main/scala/rocket/PMP.scala:63:58
  assign res_hit_msbMatch = _GEN_0;	// src/main/scala/rocket/PMP.scala:63:58
  wire        res_hit_msbsEqual;	// src/main/scala/rocket/PMP.scala:81:69
  assign res_hit_msbsEqual = _GEN_0;	// src/main/scala/rocket/PMP.scala:63:58, :81:69
  wire        res_hit_msbsEqual_1;	// src/main/scala/rocket/PMP.scala:81:69
  assign res_hit_msbsEqual_1 = _GEN_0;	// src/main/scala/rocket/PMP.scala:63:58, :81:69
  wire        res_hit_msbMatch_1;	// src/main/scala/rocket/PMP.scala:63:58
  assign res_hit_msbMatch_1 = _GEN_0;	// src/main/scala/rocket/PMP.scala:63:58
  wire        res_hit_msbsEqual_2;	// src/main/scala/rocket/PMP.scala:81:69
  assign res_hit_msbsEqual_2 = _GEN_0;	// src/main/scala/rocket/PMP.scala:63:58, :81:69
  wire        res_hit_msbsEqual_3;	// src/main/scala/rocket/PMP.scala:81:69
  assign res_hit_msbsEqual_3 = _GEN_0;	// src/main/scala/rocket/PMP.scala:63:58, :81:69
  wire        res_hit_msbMatch_2;	// src/main/scala/rocket/PMP.scala:63:58
  assign res_hit_msbMatch_2 = _GEN_0;	// src/main/scala/rocket/PMP.scala:63:58
  wire        res_hit_msbsEqual_4;	// src/main/scala/rocket/PMP.scala:81:69
  assign res_hit_msbsEqual_4 = _GEN_0;	// src/main/scala/rocket/PMP.scala:63:58, :81:69
  wire        res_hit_msbsEqual_5;	// src/main/scala/rocket/PMP.scala:81:69
  assign res_hit_msbsEqual_5 = _GEN_0;	// src/main/scala/rocket/PMP.scala:63:58, :81:69
  wire        res_hit_msbMatch_3;	// src/main/scala/rocket/PMP.scala:63:58
  assign res_hit_msbMatch_3 = _GEN_0;	// src/main/scala/rocket/PMP.scala:63:58
  wire        res_hit_msbsEqual_6;	// src/main/scala/rocket/PMP.scala:81:69
  assign res_hit_msbsEqual_6 = _GEN_0;	// src/main/scala/rocket/PMP.scala:63:58, :81:69
  wire        res_hit_msbsEqual_7;	// src/main/scala/rocket/PMP.scala:81:69
  assign res_hit_msbsEqual_7 = _GEN_0;	// src/main/scala/rocket/PMP.scala:63:58, :81:69
  wire        res_hit_msbMatch_4;	// src/main/scala/rocket/PMP.scala:63:58
  assign res_hit_msbMatch_4 = _GEN_0;	// src/main/scala/rocket/PMP.scala:63:58
  wire        res_hit_msbsEqual_8;	// src/main/scala/rocket/PMP.scala:81:69
  assign res_hit_msbsEqual_8 = _GEN_0;	// src/main/scala/rocket/PMP.scala:63:58, :81:69
  wire        res_hit_msbsEqual_9;	// src/main/scala/rocket/PMP.scala:81:69
  assign res_hit_msbsEqual_9 = _GEN_0;	// src/main/scala/rocket/PMP.scala:63:58, :81:69
  wire        res_hit_msbMatch_5;	// src/main/scala/rocket/PMP.scala:63:58
  assign res_hit_msbMatch_5 = _GEN_0;	// src/main/scala/rocket/PMP.scala:63:58
  wire        res_hit_msbsEqual_10;	// src/main/scala/rocket/PMP.scala:81:69
  assign res_hit_msbsEqual_10 = _GEN_0;	// src/main/scala/rocket/PMP.scala:63:58, :81:69
  wire        res_hit_msbsEqual_11;	// src/main/scala/rocket/PMP.scala:81:69
  assign res_hit_msbsEqual_11 = _GEN_0;	// src/main/scala/rocket/PMP.scala:63:58, :81:69
  wire        res_hit_msbMatch_6;	// src/main/scala/rocket/PMP.scala:63:58
  assign res_hit_msbMatch_6 = _GEN_0;	// src/main/scala/rocket/PMP.scala:63:58
  wire        res_hit_msbsEqual_12;	// src/main/scala/rocket/PMP.scala:81:69
  assign res_hit_msbsEqual_12 = _GEN_0;	// src/main/scala/rocket/PMP.scala:63:58, :81:69
  wire        res_hit_msbsEqual_13;	// src/main/scala/rocket/PMP.scala:81:69
  assign res_hit_msbsEqual_13 = _GEN_0;	// src/main/scala/rocket/PMP.scala:63:58, :81:69
  wire        res_hit_msbMatch_7;	// src/main/scala/rocket/PMP.scala:63:58
  assign res_hit_msbMatch_7 = _GEN_0;	// src/main/scala/rocket/PMP.scala:63:58
  wire        res_hit_msbsEqual_14;	// src/main/scala/rocket/PMP.scala:81:69
  assign res_hit_msbsEqual_14 = _GEN_0;	// src/main/scala/rocket/PMP.scala:63:58, :81:69
  wire        res_hit_msbsEqual_15;	// src/main/scala/rocket/PMP.scala:81:69
  assign res_hit_msbsEqual_15 = _GEN_0;	// src/main/scala/rocket/PMP.scala:63:58, :81:69
  wire        res_hit_lsbMatch = (io_addr_0[2:0] & ~(res_hit_lsbMask[2:0])) == 3'h0;	// src/main/scala/rocket/PMP.scala:63:{52,54,58}, :68:26, :70:{28,80}, src/main/scala/util/package.scala:243:71
  wire [5:0]  _res_aligned_lsbMask_T_1 = 6'h7 << _GEN;	// src/main/scala/util/package.scala:243:71
  wire [2:0]  res_aligned_lsbMask = ~(_res_aligned_lsbMask_T_1[2:0]);	// src/main/scala/util/package.scala:243:{46,71,76}
  wire        res_aligned_pow2Aligned = res_aligned_lsbMask == 3'h0;	// src/main/scala/rocket/PMP.scala:126:57, src/main/scala/util/package.scala:243:{46,71}
  wire [5:0]  _res_hit_lsbMask_T_5 = 6'h7 << _GEN;	// src/main/scala/util/package.scala:243:71
  wire [31:0] res_hit_lsbMask_1 = {29'h0, ~(_res_hit_lsbMask_T_5[2:0])};	// src/main/scala/rocket/PMP.scala:68:26, :69:53, :81:54, src/main/scala/util/package.scala:243:{46,71,76}
  wire        res_hit_lsbMatch_1 = (io_addr_0[2:0] & ~(res_hit_lsbMask_1[2:0])) == 3'h0;	// src/main/scala/rocket/PMP.scala:63:{52,54,58}, :68:26, :70:{28,80}, src/main/scala/util/package.scala:243:71
  wire [5:0]  _res_aligned_lsbMask_T_4 = 6'h7 << _GEN;	// src/main/scala/util/package.scala:243:71
  wire [2:0]  res_aligned_lsbMask_1 = ~(_res_aligned_lsbMask_T_4[2:0]);	// src/main/scala/util/package.scala:243:{46,71,76}
  wire        res_aligned_pow2Aligned_1 = res_aligned_lsbMask_1 == 3'h0;	// src/main/scala/rocket/PMP.scala:126:57, src/main/scala/util/package.scala:243:{46,71}
  wire [5:0]  _res_hit_lsbMask_T_9 = 6'h7 << _GEN;	// src/main/scala/util/package.scala:243:71
  wire [31:0] res_hit_lsbMask_2 = {29'h0, ~(_res_hit_lsbMask_T_9[2:0])};	// src/main/scala/rocket/PMP.scala:68:26, :69:53, :81:54, src/main/scala/util/package.scala:243:{46,71,76}
  wire        res_hit_lsbMatch_2 = (io_addr_0[2:0] & ~(res_hit_lsbMask_2[2:0])) == 3'h0;	// src/main/scala/rocket/PMP.scala:63:{52,54,58}, :68:26, :70:{28,80}, src/main/scala/util/package.scala:243:71
  wire [5:0]  _res_aligned_lsbMask_T_7 = 6'h7 << _GEN;	// src/main/scala/util/package.scala:243:71
  wire [2:0]  res_aligned_lsbMask_2 = ~(_res_aligned_lsbMask_T_7[2:0]);	// src/main/scala/util/package.scala:243:{46,71,76}
  wire        res_aligned_pow2Aligned_2 = res_aligned_lsbMask_2 == 3'h0;	// src/main/scala/rocket/PMP.scala:126:57, src/main/scala/util/package.scala:243:{46,71}
  wire [5:0]  _res_hit_lsbMask_T_13 = 6'h7 << _GEN;	// src/main/scala/util/package.scala:243:71
  wire [31:0] res_hit_lsbMask_3 = {29'h0, ~(_res_hit_lsbMask_T_13[2:0])};	// src/main/scala/rocket/PMP.scala:68:26, :69:53, :81:54, src/main/scala/util/package.scala:243:{46,71,76}
  wire        res_hit_lsbMatch_3 = (io_addr_0[2:0] & ~(res_hit_lsbMask_3[2:0])) == 3'h0;	// src/main/scala/rocket/PMP.scala:63:{52,54,58}, :68:26, :70:{28,80}, src/main/scala/util/package.scala:243:71
  wire [5:0]  _res_aligned_lsbMask_T_10 = 6'h7 << _GEN;	// src/main/scala/util/package.scala:243:71
  wire [2:0]  res_aligned_lsbMask_3 = ~(_res_aligned_lsbMask_T_10[2:0]);	// src/main/scala/util/package.scala:243:{46,71,76}
  wire        res_aligned_pow2Aligned_3 = res_aligned_lsbMask_3 == 3'h0;	// src/main/scala/rocket/PMP.scala:126:57, src/main/scala/util/package.scala:243:{46,71}
  wire [5:0]  _res_hit_lsbMask_T_17 = 6'h7 << _GEN;	// src/main/scala/util/package.scala:243:71
  wire [31:0] res_hit_lsbMask_4 = {29'h0, ~(_res_hit_lsbMask_T_17[2:0])};	// src/main/scala/rocket/PMP.scala:68:26, :69:53, :81:54, src/main/scala/util/package.scala:243:{46,71,76}
  wire        res_hit_lsbMatch_4 = (io_addr_0[2:0] & ~(res_hit_lsbMask_4[2:0])) == 3'h0;	// src/main/scala/rocket/PMP.scala:63:{52,54,58}, :68:26, :70:{28,80}, src/main/scala/util/package.scala:243:71
  wire [5:0]  _res_aligned_lsbMask_T_13 = 6'h7 << _GEN;	// src/main/scala/util/package.scala:243:71
  wire [2:0]  res_aligned_lsbMask_4 = ~(_res_aligned_lsbMask_T_13[2:0]);	// src/main/scala/util/package.scala:243:{46,71,76}
  wire        res_aligned_pow2Aligned_4 = res_aligned_lsbMask_4 == 3'h0;	// src/main/scala/rocket/PMP.scala:126:57, src/main/scala/util/package.scala:243:{46,71}
  wire [5:0]  _res_hit_lsbMask_T_21 = 6'h7 << _GEN;	// src/main/scala/util/package.scala:243:71
  wire [31:0] res_hit_lsbMask_5 = {29'h0, ~(_res_hit_lsbMask_T_21[2:0])};	// src/main/scala/rocket/PMP.scala:68:26, :69:53, :81:54, src/main/scala/util/package.scala:243:{46,71,76}
  wire        res_hit_lsbMatch_5 = (io_addr_0[2:0] & ~(res_hit_lsbMask_5[2:0])) == 3'h0;	// src/main/scala/rocket/PMP.scala:63:{52,54,58}, :68:26, :70:{28,80}, src/main/scala/util/package.scala:243:71
  wire [5:0]  _res_aligned_lsbMask_T_16 = 6'h7 << _GEN;	// src/main/scala/util/package.scala:243:71
  wire [2:0]  res_aligned_lsbMask_5 = ~(_res_aligned_lsbMask_T_16[2:0]);	// src/main/scala/util/package.scala:243:{46,71,76}
  wire        res_aligned_pow2Aligned_5 = res_aligned_lsbMask_5 == 3'h0;	// src/main/scala/rocket/PMP.scala:126:57, src/main/scala/util/package.scala:243:{46,71}
  wire [5:0]  _res_hit_lsbMask_T_25 = 6'h7 << _GEN;	// src/main/scala/util/package.scala:243:71
  wire [31:0] res_hit_lsbMask_6 = {29'h0, ~(_res_hit_lsbMask_T_25[2:0])};	// src/main/scala/rocket/PMP.scala:68:26, :69:53, :81:54, src/main/scala/util/package.scala:243:{46,71,76}
  wire        res_hit_lsbMatch_6 = (io_addr_0[2:0] & ~(res_hit_lsbMask_6[2:0])) == 3'h0;	// src/main/scala/rocket/PMP.scala:63:{52,54,58}, :68:26, :70:{28,80}, src/main/scala/util/package.scala:243:71
  wire [5:0]  _res_aligned_lsbMask_T_19 = 6'h7 << _GEN;	// src/main/scala/util/package.scala:243:71
  wire [2:0]  res_aligned_lsbMask_6 = ~(_res_aligned_lsbMask_T_19[2:0]);	// src/main/scala/util/package.scala:243:{46,71,76}
  wire        res_aligned_pow2Aligned_6 = res_aligned_lsbMask_6 == 3'h0;	// src/main/scala/rocket/PMP.scala:126:57, src/main/scala/util/package.scala:243:{46,71}
  wire [5:0]  _res_hit_lsbMask_T_29 = 6'h7 << _GEN;	// src/main/scala/util/package.scala:243:71
  wire [31:0] res_hit_lsbMask_7 = {29'h0, ~(_res_hit_lsbMask_T_29[2:0])};	// src/main/scala/rocket/PMP.scala:68:26, :69:53, :81:54, src/main/scala/util/package.scala:243:{46,71,76}
  wire        res_hit_lsbMatch_7 = (io_addr_0[2:0] & ~(res_hit_lsbMask_7[2:0])) == 3'h0;	// src/main/scala/rocket/PMP.scala:63:{52,54,58}, :68:26, :70:{28,80}, src/main/scala/util/package.scala:243:71
  wire [5:0]  _res_aligned_lsbMask_T_22 = 6'h7 << _GEN;	// src/main/scala/util/package.scala:243:71
  wire [2:0]  res_aligned_lsbMask_7 = ~(_res_aligned_lsbMask_T_22[2:0]);	// src/main/scala/util/package.scala:243:{46,71,76}
  wire        res_aligned_pow2Aligned_7 = res_aligned_lsbMask_7 == 3'h0;	// src/main/scala/rocket/PMP.scala:126:57, src/main/scala/util/package.scala:243:{46,71}
endmodule
