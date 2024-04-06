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

module MaxPeriodFibonacciLFSR(
  input  clock,
         reset,
         io_increment,	// src/main/scala/chisel3/util/random/PRNG.scala:42:22
  output io_out_0,	// src/main/scala/chisel3/util/random/PRNG.scala:42:22
         io_out_1,	// src/main/scala/chisel3/util/random/PRNG.scala:42:22
         io_out_2,	// src/main/scala/chisel3/util/random/PRNG.scala:42:22
         io_out_3,	// src/main/scala/chisel3/util/random/PRNG.scala:42:22
         io_out_4,	// src/main/scala/chisel3/util/random/PRNG.scala:42:22
         io_out_5,	// src/main/scala/chisel3/util/random/PRNG.scala:42:22
         io_out_6,	// src/main/scala/chisel3/util/random/PRNG.scala:42:22
         io_out_7,	// src/main/scala/chisel3/util/random/PRNG.scala:42:22
         io_out_8,	// src/main/scala/chisel3/util/random/PRNG.scala:42:22
         io_out_9,	// src/main/scala/chisel3/util/random/PRNG.scala:42:22
         io_out_10,	// src/main/scala/chisel3/util/random/PRNG.scala:42:22
         io_out_11,	// src/main/scala/chisel3/util/random/PRNG.scala:42:22
         io_out_12,	// src/main/scala/chisel3/util/random/PRNG.scala:42:22
         io_out_13,	// src/main/scala/chisel3/util/random/PRNG.scala:42:22
         io_out_14,	// src/main/scala/chisel3/util/random/PRNG.scala:42:22
         io_out_15	// src/main/scala/chisel3/util/random/PRNG.scala:42:22
);

  wire io_increment_0 = io_increment;
  wire io_seed_valid = 1'h0;
  wire io_seed_bits_0 = 1'h0;
  wire io_seed_bits_1 = 1'h0;
  wire io_seed_bits_2 = 1'h0;
  wire io_seed_bits_3 = 1'h0;
  wire io_seed_bits_4 = 1'h0;
  wire io_seed_bits_5 = 1'h0;
  wire io_seed_bits_6 = 1'h0;
  wire io_seed_bits_7 = 1'h0;
  wire io_seed_bits_8 = 1'h0;
  wire io_seed_bits_9 = 1'h0;
  wire io_seed_bits_10 = 1'h0;
  wire io_seed_bits_11 = 1'h0;
  wire io_seed_bits_12 = 1'h0;
  wire io_seed_bits_13 = 1'h0;
  wire io_seed_bits_14 = 1'h0;
  wire io_seed_bits_15 = 1'h0;
  reg  state_0;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
  wire io_out_0_0 = state_0;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
  reg  state_1;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
  wire io_out_1_0 = state_1;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
  reg  state_2;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
  wire io_out_2_0 = state_2;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
  reg  state_3;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
  wire io_out_3_0 = state_3;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
  reg  state_4;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
  wire io_out_4_0 = state_4;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
  reg  state_5;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
  wire io_out_5_0 = state_5;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
  reg  state_6;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
  wire io_out_6_0 = state_6;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
  reg  state_7;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
  wire io_out_7_0 = state_7;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
  reg  state_8;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
  wire io_out_8_0 = state_8;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
  reg  state_9;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
  wire io_out_9_0 = state_9;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
  reg  state_10;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
  wire io_out_10_0 = state_10;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
  reg  state_11;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
  wire io_out_11_0 = state_11;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
  reg  state_12;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
  wire io_out_12_0 = state_12;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
  reg  state_13;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
  wire io_out_13_0 = state_13;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
  reg  state_14;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
  wire io_out_14_0 = state_14;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
  reg  state_15;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
  wire io_out_15_0 = state_15;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
  always @(posedge clock) begin
    if (reset) begin
      state_0 <= 1'h1;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
      state_1 <= 1'h0;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
      state_2 <= 1'h0;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
      state_3 <= 1'h0;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
      state_4 <= 1'h0;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
      state_5 <= 1'h0;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
      state_6 <= 1'h0;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
      state_7 <= 1'h0;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
      state_8 <= 1'h0;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
      state_9 <= 1'h0;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
      state_10 <= 1'h0;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
      state_11 <= 1'h0;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
      state_12 <= 1'h0;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
      state_13 <= 1'h0;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
      state_14 <= 1'h0;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
      state_15 <= 1'h0;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
    end
    else if (io_increment_0) begin
      state_0 <= state_15 ^ state_13 ^ state_12 ^ state_10;	// src/main/scala/chisel3/util/random/LFSR.scala:15:41, src/main/scala/chisel3/util/random/PRNG.scala:55:49
      state_1 <= state_0;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
      state_2 <= state_1;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
      state_3 <= state_2;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
      state_4 <= state_3;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
      state_5 <= state_4;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
      state_6 <= state_5;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
      state_7 <= state_6;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
      state_8 <= state_7;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
      state_9 <= state_8;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
      state_10 <= state_9;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
      state_11 <= state_10;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
      state_12 <= state_11;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
      state_13 <= state_12;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
      state_14 <= state_13;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
      state_15 <= state_14;	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
    end
  end // always @(posedge)
  `ifdef ENABLE_INITIAL_REG_
    `ifdef FIRRTL_BEFORE_INITIAL
      `FIRRTL_BEFORE_INITIAL
    `endif // FIRRTL_BEFORE_INITIAL
    initial begin
      automatic logic [31:0] _RANDOM[0:0];
      `ifdef INIT_RANDOM_PROLOG_
        `INIT_RANDOM_PROLOG_
      `endif // INIT_RANDOM_PROLOG_
      `ifdef RANDOMIZE_REG_INIT
        _RANDOM[/*Zero width*/ 1'b0] = `RANDOM;
        state_0 = _RANDOM[/*Zero width*/ 1'b0][0];	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
        state_1 = _RANDOM[/*Zero width*/ 1'b0][1];	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
        state_2 = _RANDOM[/*Zero width*/ 1'b0][2];	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
        state_3 = _RANDOM[/*Zero width*/ 1'b0][3];	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
        state_4 = _RANDOM[/*Zero width*/ 1'b0][4];	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
        state_5 = _RANDOM[/*Zero width*/ 1'b0][5];	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
        state_6 = _RANDOM[/*Zero width*/ 1'b0][6];	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
        state_7 = _RANDOM[/*Zero width*/ 1'b0][7];	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
        state_8 = _RANDOM[/*Zero width*/ 1'b0][8];	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
        state_9 = _RANDOM[/*Zero width*/ 1'b0][9];	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
        state_10 = _RANDOM[/*Zero width*/ 1'b0][10];	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
        state_11 = _RANDOM[/*Zero width*/ 1'b0][11];	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
        state_12 = _RANDOM[/*Zero width*/ 1'b0][12];	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
        state_13 = _RANDOM[/*Zero width*/ 1'b0][13];	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
        state_14 = _RANDOM[/*Zero width*/ 1'b0][14];	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
        state_15 = _RANDOM[/*Zero width*/ 1'b0][15];	// src/main/scala/chisel3/util/random/PRNG.scala:55:49
      `endif // RANDOMIZE_REG_INIT
    end // initial
    `ifdef FIRRTL_AFTER_INITIAL
      `FIRRTL_AFTER_INITIAL
    `endif // FIRRTL_AFTER_INITIAL
  `endif // ENABLE_INITIAL_REG_
  assign io_out_0 = io_out_0_0;
  assign io_out_1 = io_out_1_0;
  assign io_out_2 = io_out_2_0;
  assign io_out_3 = io_out_3_0;
  assign io_out_4 = io_out_4_0;
  assign io_out_5 = io_out_5_0;
  assign io_out_6 = io_out_6_0;
  assign io_out_7 = io_out_7_0;
  assign io_out_8 = io_out_8_0;
  assign io_out_9 = io_out_9_0;
  assign io_out_10 = io_out_10_0;
  assign io_out_11 = io_out_11_0;
  assign io_out_12 = io_out_12_0;
  assign io_out_13 = io_out_13_0;
  assign io_out_14 = io_out_14_0;
  assign io_out_15 = io_out_15_0;
endmodule
