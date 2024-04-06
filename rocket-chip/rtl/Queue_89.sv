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

module Queue_89(
  input         clock,
                reset,
  output        io_enq_ready,	// src/main/scala/chisel3/util/Decoupled.scala:273:14
  input         io_enq_valid,	// src/main/scala/chisel3/util/Decoupled.scala:273:14
  input  [3:0]  io_enq_bits_id,	// src/main/scala/chisel3/util/Decoupled.scala:273:14
  input  [31:0] io_enq_bits_addr,	// src/main/scala/chisel3/util/Decoupled.scala:273:14
  input  [2:0]  io_enq_bits_size,	// src/main/scala/chisel3/util/Decoupled.scala:273:14
  input  [1:0]  io_enq_bits_burst,	// src/main/scala/chisel3/util/Decoupled.scala:273:14
  input         io_enq_bits_lock,	// src/main/scala/chisel3/util/Decoupled.scala:273:14
  input  [3:0]  io_enq_bits_cache,	// src/main/scala/chisel3/util/Decoupled.scala:273:14
  input  [2:0]  io_enq_bits_prot,	// src/main/scala/chisel3/util/Decoupled.scala:273:14
  input  [3:0]  io_enq_bits_qos,	// src/main/scala/chisel3/util/Decoupled.scala:273:14
  input         io_enq_bits_echo_real_last,	// src/main/scala/chisel3/util/Decoupled.scala:273:14
                io_deq_ready,	// src/main/scala/chisel3/util/Decoupled.scala:273:14
  output        io_deq_valid,	// src/main/scala/chisel3/util/Decoupled.scala:273:14
  output [3:0]  io_deq_bits_id,	// src/main/scala/chisel3/util/Decoupled.scala:273:14
  output [31:0] io_deq_bits_addr,	// src/main/scala/chisel3/util/Decoupled.scala:273:14
  output [7:0]  io_deq_bits_len,	// src/main/scala/chisel3/util/Decoupled.scala:273:14
  output [2:0]  io_deq_bits_size,	// src/main/scala/chisel3/util/Decoupled.scala:273:14
  output [1:0]  io_deq_bits_burst,	// src/main/scala/chisel3/util/Decoupled.scala:273:14
  output        io_deq_bits_lock,	// src/main/scala/chisel3/util/Decoupled.scala:273:14
  output [3:0]  io_deq_bits_cache,	// src/main/scala/chisel3/util/Decoupled.scala:273:14
  output [2:0]  io_deq_bits_prot,	// src/main/scala/chisel3/util/Decoupled.scala:273:14
  output [3:0]  io_deq_bits_qos,	// src/main/scala/chisel3/util/Decoupled.scala:273:14
  output        io_deq_bits_echo_real_last	// src/main/scala/chisel3/util/Decoupled.scala:273:14
);

  wire [61:0] _ram_ext_R0_data;	// src/main/scala/chisel3/util/Decoupled.scala:274:95
  wire        io_enq_valid_0 = io_enq_valid;
  wire [3:0]  io_enq_bits_id_0 = io_enq_bits_id;
  wire [31:0] io_enq_bits_addr_0 = io_enq_bits_addr;
  wire [2:0]  io_enq_bits_size_0 = io_enq_bits_size;
  wire [1:0]  io_enq_bits_burst_0 = io_enq_bits_burst;
  wire        io_enq_bits_lock_0 = io_enq_bits_lock;
  wire [3:0]  io_enq_bits_cache_0 = io_enq_bits_cache;
  wire [2:0]  io_enq_bits_prot_0 = io_enq_bits_prot;
  wire [3:0]  io_enq_bits_qos_0 = io_enq_bits_qos;
  wire        io_enq_bits_echo_real_last_0 = io_enq_bits_echo_real_last;
  wire        io_deq_ready_0 = io_deq_ready;
  wire [7:0]  io_enq_bits_len = 8'h0;	// src/main/scala/chisel3/util/Decoupled.scala:273:14, :274:95
  wire [3:0]  io_deq_bits_id_0 = _ram_ext_R0_data[3:0];	// src/main/scala/chisel3/util/Decoupled.scala:274:95
  wire [31:0] io_deq_bits_addr_0 = _ram_ext_R0_data[35:4];	// src/main/scala/chisel3/util/Decoupled.scala:274:95
  wire [7:0]  io_deq_bits_len_0 = _ram_ext_R0_data[43:36];	// src/main/scala/chisel3/util/Decoupled.scala:274:95
  wire [2:0]  io_deq_bits_size_0 = _ram_ext_R0_data[46:44];	// src/main/scala/chisel3/util/Decoupled.scala:274:95
  wire [1:0]  io_deq_bits_burst_0 = _ram_ext_R0_data[48:47];	// src/main/scala/chisel3/util/Decoupled.scala:274:95
  wire        io_deq_bits_lock_0 = _ram_ext_R0_data[49];	// src/main/scala/chisel3/util/Decoupled.scala:274:95
  wire [3:0]  io_deq_bits_cache_0 = _ram_ext_R0_data[53:50];	// src/main/scala/chisel3/util/Decoupled.scala:274:95
  wire [2:0]  io_deq_bits_prot_0 = _ram_ext_R0_data[56:54];	// src/main/scala/chisel3/util/Decoupled.scala:274:95
  wire [3:0]  io_deq_bits_qos_0 = _ram_ext_R0_data[60:57];	// src/main/scala/chisel3/util/Decoupled.scala:274:95
  wire        io_deq_bits_echo_real_last_0 = _ram_ext_R0_data[61];	// src/main/scala/chisel3/util/Decoupled.scala:274:95
  reg         enq_ptr_value;	// src/main/scala/chisel3/util/Counter.scala:61:40
  wire        wrap = enq_ptr_value;	// src/main/scala/chisel3/util/Counter.scala:61:40, :73:24
  reg         deq_ptr_value;	// src/main/scala/chisel3/util/Counter.scala:61:40
  wire        wrap_1 = deq_ptr_value;	// src/main/scala/chisel3/util/Counter.scala:61:40, :73:24
  reg         maybe_full;	// src/main/scala/chisel3/util/Decoupled.scala:277:27
  wire        ptr_match = enq_ptr_value == deq_ptr_value;	// src/main/scala/chisel3/util/Counter.scala:61:40, src/main/scala/chisel3/util/Decoupled.scala:278:33
  wire        empty = ptr_match & ~maybe_full;	// src/main/scala/chisel3/util/Decoupled.scala:277:27, :278:33, :279:{25,28}
  wire        full = ptr_match & maybe_full;	// src/main/scala/chisel3/util/Decoupled.scala:277:27, :278:33, :280:24
  wire        io_enq_ready_0;
  wire        do_enq = io_enq_ready_0 & io_enq_valid_0;	// src/main/scala/chisel3/util/Decoupled.scala:52:35, :281:27
  wire        io_deq_valid_0;
  wire        do_deq = io_deq_ready_0 & io_deq_valid_0;	// src/main/scala/chisel3/util/Decoupled.scala:52:35, :282:27
  assign io_deq_valid_0 = ~empty;	// src/main/scala/chisel3/util/Decoupled.scala:279:25, :303:19
  assign io_enq_ready_0 = ~full;	// src/main/scala/chisel3/util/Decoupled.scala:280:24, :304:19
  wire        ptr_diff = enq_ptr_value - deq_ptr_value;	// src/main/scala/chisel3/util/Counter.scala:61:40, src/main/scala/chisel3/util/Decoupled.scala:327:32
  wire [1:0]  io_count = {full, ptr_diff};	// src/main/scala/chisel3/util/Decoupled.scala:280:24, :327:32, :330:62
  always @(posedge clock) begin
    if (reset) begin
      enq_ptr_value <= 1'h0;	// src/main/scala/chisel3/util/Counter.scala:61:40
      deq_ptr_value <= 1'h0;	// src/main/scala/chisel3/util/Counter.scala:61:40
      maybe_full <= 1'h0;	// src/main/scala/chisel3/util/Decoupled.scala:277:27
    end
    else begin
      if (do_enq)	// src/main/scala/chisel3/util/Decoupled.scala:281:27
        enq_ptr_value <= enq_ptr_value - 1'h1;	// src/main/scala/chisel3/util/Counter.scala:61:40, :77:24
      if (do_deq)	// src/main/scala/chisel3/util/Decoupled.scala:282:27
        deq_ptr_value <= deq_ptr_value - 1'h1;	// src/main/scala/chisel3/util/Counter.scala:61:40, :77:24
      if (~(do_enq == do_deq))	// src/main/scala/chisel3/util/Decoupled.scala:277:27, :281:27, :282:27, :294:{15,27}, :295:16
        maybe_full <= do_enq;	// src/main/scala/chisel3/util/Decoupled.scala:277:27, :281:27
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
        enq_ptr_value = _RANDOM[/*Zero width*/ 1'b0][0];	// src/main/scala/chisel3/util/Counter.scala:61:40
        deq_ptr_value = _RANDOM[/*Zero width*/ 1'b0][1];	// src/main/scala/chisel3/util/Counter.scala:61:40
        maybe_full = _RANDOM[/*Zero width*/ 1'b0][2];	// src/main/scala/chisel3/util/Counter.scala:61:40, src/main/scala/chisel3/util/Decoupled.scala:277:27
      `endif // RANDOMIZE_REG_INIT
    end // initial
    `ifdef FIRRTL_AFTER_INITIAL
      `FIRRTL_AFTER_INITIAL
    `endif // FIRRTL_AFTER_INITIAL
  `endif // ENABLE_INITIAL_REG_
  ram_2x62 ram_ext (	// src/main/scala/chisel3/util/Decoupled.scala:274:95
    .R0_addr (deq_ptr_value),	// src/main/scala/chisel3/util/Counter.scala:61:40
    .R0_en   (1'h1),
    .R0_clk  (clock),
    .R0_data (_ram_ext_R0_data),
    .W0_addr (enq_ptr_value),	// src/main/scala/chisel3/util/Counter.scala:61:40
    .W0_en   (do_enq),	// src/main/scala/chisel3/util/Decoupled.scala:281:27
    .W0_clk  (clock),
    .W0_data
      ({io_enq_bits_echo_real_last_0,
        io_enq_bits_qos_0,
        io_enq_bits_prot_0,
        io_enq_bits_cache_0,
        io_enq_bits_lock_0,
        io_enq_bits_burst_0,
        io_enq_bits_size_0,
        8'h0,
        io_enq_bits_addr_0,
        io_enq_bits_id_0})	// src/main/scala/chisel3/util/Decoupled.scala:273:14, :274:95
  );
  assign io_enq_ready = io_enq_ready_0;
  assign io_deq_valid = io_deq_valid_0;
  assign io_deq_bits_id = io_deq_bits_id_0;
  assign io_deq_bits_addr = io_deq_bits_addr_0;
  assign io_deq_bits_len = io_deq_bits_len_0;
  assign io_deq_bits_size = io_deq_bits_size_0;
  assign io_deq_bits_burst = io_deq_bits_burst_0;
  assign io_deq_bits_lock = io_deq_bits_lock_0;
  assign io_deq_bits_cache = io_deq_bits_cache_0;
  assign io_deq_bits_prot = io_deq_bits_prot_0;
  assign io_deq_bits_qos = io_deq_bits_qos_0;
  assign io_deq_bits_echo_real_last = io_deq_bits_echo_real_last_0;
endmodule

