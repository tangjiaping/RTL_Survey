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

module FixedClockBroadcast(
  input  auto_in_clock,	// src/main/scala/diplomacy/LazyModule.scala:374:18
         auto_in_reset,	// src/main/scala/diplomacy/LazyModule.scala:374:18
  output auto_out_2_clock,	// src/main/scala/diplomacy/LazyModule.scala:374:18
         auto_out_2_reset,	// src/main/scala/diplomacy/LazyModule.scala:374:18
         auto_out_1_clock,	// src/main/scala/diplomacy/LazyModule.scala:374:18
         auto_out_1_reset,	// src/main/scala/diplomacy/LazyModule.scala:374:18
         auto_out_0_clock,	// src/main/scala/diplomacy/LazyModule.scala:374:18
         auto_out_0_reset	// src/main/scala/diplomacy/LazyModule.scala:374:18
);

  wire auto_in_clock_0 = auto_in_clock;
  wire auto_in_reset_0 = auto_in_reset;
  wire childClock = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:419:31
  wire childReset = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:421:31
  wire nodeIn_clock = auto_in_clock_0;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire nodeIn_reset = auto_in_reset_0;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire x1_nodeOut_1_clock;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire x1_nodeOut_1_reset;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire x1_nodeOut_clock;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire x1_nodeOut_reset;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire nodeOut_clock;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire nodeOut_reset;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  assign nodeOut_clock = nodeIn_clock;	// src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17
  assign x1_nodeOut_clock = nodeIn_clock;	// src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17
  assign x1_nodeOut_1_clock = nodeIn_clock;	// src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17
  assign nodeOut_reset = nodeIn_reset;	// src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17
  assign x1_nodeOut_reset = nodeIn_reset;	// src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17
  assign x1_nodeOut_1_reset = nodeIn_reset;	// src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17
  wire auto_out_0_clock_0 = nodeOut_clock;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire auto_out_0_reset_0 = nodeOut_reset;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire auto_out_1_clock_0 = x1_nodeOut_clock;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire auto_out_1_reset_0 = x1_nodeOut_reset;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire auto_out_2_clock_0 = x1_nodeOut_1_clock;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire auto_out_2_reset_0 = x1_nodeOut_1_reset;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  assign auto_out_2_clock = auto_out_2_clock_0;
  assign auto_out_2_reset = auto_out_2_reset_0;
  assign auto_out_1_clock = auto_out_1_clock_0;
  assign auto_out_1_reset = auto_out_1_reset_0;
  assign auto_out_0_clock = auto_out_0_clock_0;
  assign auto_out_0_reset = auto_out_0_reset_0;
endmodule

