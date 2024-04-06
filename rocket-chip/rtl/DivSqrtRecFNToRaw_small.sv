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

module DivSqrtRecFNToRaw_small(
  input         clock,
                reset,
  output        io_inReady,	// hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:424:16
  input         io_inValid,	// hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:424:16
                io_sqrtOp,	// hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:424:16
  input  [32:0] io_a,	// hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:424:16
                io_b,	// hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:424:16
  input  [2:0]  io_roundingMode,	// hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:424:16
  output        io_rawOutValid_div,	// hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:424:16
                io_rawOutValid_sqrt,	// hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:424:16
  output [2:0]  io_roundingModeOut,	// hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:424:16
  output        io_invalidExc,	// hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:424:16
                io_infiniteExc,	// hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:424:16
                io_rawOut_isNaN,	// hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:424:16
                io_rawOut_isInf,	// hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:424:16
                io_rawOut_isZero,	// hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:424:16
                io_rawOut_sign,	// hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:424:16
  output [9:0]  io_rawOut_sExp,	// hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:424:16
  output [26:0] io_rawOut_sig	// hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:424:16
);

  wire [26:0] io_rawOut_sig_0;
  wire [9:0]  io_rawOut_sExp_0;
  wire        io_rawOut_sign_0;
  wire        io_rawOut_isZero_0;
  wire        io_rawOut_isInf_0;
  wire        io_rawOut_isNaN_0;
  wire        io_infiniteExc_0;
  wire        io_invalidExc_0;
  wire [2:0]  io_roundingModeOut_0;
  wire        io_rawOutValid_sqrt_0;
  wire        io_rawOutValid_div_0;
  wire        io_inReady_0;
  wire        io_inValid_0 = io_inValid;
  wire        io_sqrtOp_0 = io_sqrtOp;
  wire [32:0] io_a_0 = io_a;
  wire [32:0] io_b_0 = io_b;
  wire [2:0]  io_roundingMode_0 = io_roundingMode;
  wire [8:0]  divSqrtRawFN_io_a_exp = io_a_0[31:23];	// hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:51:21
  wire        divSqrtRawFN_io_a_isZero = divSqrtRawFN_io_a_exp[8:6] == 3'h0;	// hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:51:21, :52:{28,53}
  wire        divSqrtRawFN_io_a_out_isZero = divSqrtRawFN_io_a_isZero;	// hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:52:53, :55:23
  wire        divSqrtRawFN_io_a_isSpecial = &(divSqrtRawFN_io_a_exp[8:7]);	// hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:51:21, :53:{28,53}
  wire        divSqrtRawFN_io_a_out_isNaN =
    divSqrtRawFN_io_a_isSpecial & divSqrtRawFN_io_a_exp[6];	// hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:51:21, :53:53, :55:23, :56:{33,41}
  wire        divSqrtRawFN_io_a_out_isInf =
    divSqrtRawFN_io_a_isSpecial & ~(divSqrtRawFN_io_a_exp[6]);	// hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:51:21, :53:53, :55:23, :56:41, :57:{33,36}
  wire        divSqrtRawFN_io_a_out_sign = io_a_0[32];	// hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:55:23, :59:25
  wire [9:0]  divSqrtRawFN_io_a_out_sExp = {1'h0, divSqrtRawFN_io_a_exp};	// hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:51:21, :55:23, :60:27
  wire [24:0] divSqrtRawFN_io_a_out_sig = {1'h0, ~divSqrtRawFN_io_a_isZero, io_a_0[22:0]};	// hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:52:53, :55:23, :61:{35,44,49}
  wire [8:0]  divSqrtRawFN_io_b_exp = io_b_0[31:23];	// hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:51:21
  wire        divSqrtRawFN_io_b_isZero = divSqrtRawFN_io_b_exp[8:6] == 3'h0;	// hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:51:21, :52:{28,53}
  wire        divSqrtRawFN_io_b_out_isZero = divSqrtRawFN_io_b_isZero;	// hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:52:53, :55:23
  wire        divSqrtRawFN_io_b_isSpecial = &(divSqrtRawFN_io_b_exp[8:7]);	// hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:51:21, :53:{28,53}
  wire        divSqrtRawFN_io_b_out_isNaN =
    divSqrtRawFN_io_b_isSpecial & divSqrtRawFN_io_b_exp[6];	// hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:51:21, :53:53, :55:23, :56:{33,41}
  wire        divSqrtRawFN_io_b_out_isInf =
    divSqrtRawFN_io_b_isSpecial & ~(divSqrtRawFN_io_b_exp[6]);	// hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:51:21, :53:53, :55:23, :56:41, :57:{33,36}
  wire        divSqrtRawFN_io_b_out_sign = io_b_0[32];	// hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:55:23, :59:25
  wire [9:0]  divSqrtRawFN_io_b_out_sExp = {1'h0, divSqrtRawFN_io_b_exp};	// hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:51:21, :55:23, :60:27
  wire [24:0] divSqrtRawFN_io_b_out_sig = {1'h0, ~divSqrtRawFN_io_b_isZero, io_b_0[22:0]};	// hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:52:53, :55:23, :61:{35,44,49}
  DivSqrtRawFN_small divSqrtRawFN (	// hardfloat/hardfloat/src/main/scala/DivSqrtRecFN_small.scala:444:15
    .clock               (clock),
    .reset               (reset),
    .io_inReady          (io_inReady_0),
    .io_inValid          (io_inValid_0),
    .io_sqrtOp           (io_sqrtOp_0),
    .io_a_isNaN          (divSqrtRawFN_io_a_out_isNaN),	// hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:55:23
    .io_a_isInf          (divSqrtRawFN_io_a_out_isInf),	// hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:55:23
    .io_a_isZero         (divSqrtRawFN_io_a_out_isZero),	// hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:55:23
    .io_a_sign           (divSqrtRawFN_io_a_out_sign),	// hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:55:23
    .io_a_sExp           (divSqrtRawFN_io_a_out_sExp),	// hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:55:23
    .io_a_sig            (divSqrtRawFN_io_a_out_sig),	// hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:55:23
    .io_b_isNaN          (divSqrtRawFN_io_b_out_isNaN),	// hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:55:23
    .io_b_isInf          (divSqrtRawFN_io_b_out_isInf),	// hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:55:23
    .io_b_isZero         (divSqrtRawFN_io_b_out_isZero),	// hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:55:23
    .io_b_sign           (divSqrtRawFN_io_b_out_sign),	// hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:55:23
    .io_b_sExp           (divSqrtRawFN_io_b_out_sExp),	// hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:55:23
    .io_b_sig            (divSqrtRawFN_io_b_out_sig),	// hardfloat/hardfloat/src/main/scala/rawFloatFromRecFN.scala:55:23
    .io_roundingMode     (io_roundingMode_0),
    .io_rawOutValid_div  (io_rawOutValid_div_0),
    .io_rawOutValid_sqrt (io_rawOutValid_sqrt_0),
    .io_roundingModeOut  (io_roundingModeOut_0),
    .io_invalidExc       (io_invalidExc_0),
    .io_infiniteExc      (io_infiniteExc_0),
    .io_rawOut_isNaN     (io_rawOut_isNaN_0),
    .io_rawOut_isInf     (io_rawOut_isInf_0),
    .io_rawOut_isZero    (io_rawOut_isZero_0),
    .io_rawOut_sign      (io_rawOut_sign_0),
    .io_rawOut_sExp      (io_rawOut_sExp_0),
    .io_rawOut_sig       (io_rawOut_sig_0)
  );
  assign io_inReady = io_inReady_0;
  assign io_rawOutValid_div = io_rawOutValid_div_0;
  assign io_rawOutValid_sqrt = io_rawOutValid_sqrt_0;
  assign io_roundingModeOut = io_roundingModeOut_0;
  assign io_invalidExc = io_invalidExc_0;
  assign io_infiniteExc = io_infiniteExc_0;
  assign io_rawOut_isNaN = io_rawOut_isNaN_0;
  assign io_rawOut_isInf = io_rawOut_isInf_0;
  assign io_rawOut_isZero = io_rawOut_isZero_0;
  assign io_rawOut_sign = io_rawOut_sign_0;
  assign io_rawOut_sExp = io_rawOut_sExp_0;
  assign io_rawOut_sig = io_rawOut_sig_0;
endmodule

