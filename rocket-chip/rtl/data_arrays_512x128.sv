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

// VCS coverage exclude_file
module data_arrays_512x128(	// src/main/scala/util/DescribedSRAM.scala:17:26
  input  [8:0]   RW0_addr,
  input          RW0_en,
                 RW0_clk,
                 RW0_wmode,
  input  [127:0] RW0_wdata,
  output [127:0] RW0_rdata,
  input  [3:0]   RW0_wmask
);

  reg [127:0] Memory[0:511];	// src/main/scala/util/DescribedSRAM.scala:17:26
  reg [8:0]   _RW0_raddr_d0;	// src/main/scala/util/DescribedSRAM.scala:17:26
  reg         _RW0_ren_d0;	// src/main/scala/util/DescribedSRAM.scala:17:26
  reg         _RW0_rmode_d0;	// src/main/scala/util/DescribedSRAM.scala:17:26
  always @(posedge RW0_clk) begin	// src/main/scala/util/DescribedSRAM.scala:17:26
    _RW0_raddr_d0 <= RW0_addr;	// src/main/scala/util/DescribedSRAM.scala:17:26
    _RW0_ren_d0 <= RW0_en;	// src/main/scala/util/DescribedSRAM.scala:17:26
    _RW0_rmode_d0 <= RW0_wmode;	// src/main/scala/util/DescribedSRAM.scala:17:26
    if (RW0_en & RW0_wmask[0] & RW0_wmode)	// src/main/scala/util/DescribedSRAM.scala:17:26
      Memory[RW0_addr][32'h0 +: 32] <= RW0_wdata[31:0];	// src/main/scala/util/DescribedSRAM.scala:17:26
    if (RW0_en & RW0_wmask[1] & RW0_wmode)	// src/main/scala/util/DescribedSRAM.scala:17:26
      Memory[RW0_addr][32'h20 +: 32] <= RW0_wdata[63:32];	// src/main/scala/util/DescribedSRAM.scala:17:26
    if (RW0_en & RW0_wmask[2] & RW0_wmode)	// src/main/scala/util/DescribedSRAM.scala:17:26
      Memory[RW0_addr][32'h40 +: 32] <= RW0_wdata[95:64];	// src/main/scala/util/DescribedSRAM.scala:17:26
    if (RW0_en & RW0_wmask[3] & RW0_wmode)	// src/main/scala/util/DescribedSRAM.scala:17:26
      Memory[RW0_addr][32'h60 +: 32] <= RW0_wdata[127:96];	// src/main/scala/util/DescribedSRAM.scala:17:26
  end // always @(posedge)
  `ifdef ENABLE_INITIAL_MEM_	// src/main/scala/util/DescribedSRAM.scala:17:26
    `ifdef RANDOMIZE_REG_INIT	// src/main/scala/util/DescribedSRAM.scala:17:26
      reg [31:0] _RANDOM;	// src/main/scala/util/DescribedSRAM.scala:17:26
    `endif // RANDOMIZE_REG_INIT
    reg [127:0] _RANDOM_MEM;	// src/main/scala/util/DescribedSRAM.scala:17:26
    initial begin	// src/main/scala/util/DescribedSRAM.scala:17:26
      `INIT_RANDOM_PROLOG_	// src/main/scala/util/DescribedSRAM.scala:17:26
      `ifdef RANDOMIZE_MEM_INIT	// src/main/scala/util/DescribedSRAM.scala:17:26
        for (logic [9:0] i = 10'h0; i < 10'h200; i += 10'h1) begin
          for (logic [7:0] j = 8'h0; j < 8'h80; j += 8'h20) begin
            _RANDOM_MEM[j +: 32] = `RANDOM;	// src/main/scala/util/DescribedSRAM.scala:17:26
          end
          Memory[i[8:0]] = _RANDOM_MEM;	// src/main/scala/util/DescribedSRAM.scala:17:26
        end
      `endif // RANDOMIZE_MEM_INIT
      `ifdef RANDOMIZE_REG_INIT	// src/main/scala/util/DescribedSRAM.scala:17:26
        _RANDOM = {`RANDOM};	// src/main/scala/util/DescribedSRAM.scala:17:26
        _RW0_raddr_d0 = _RANDOM[8:0];	// src/main/scala/util/DescribedSRAM.scala:17:26
        _RW0_ren_d0 = _RANDOM[9];	// src/main/scala/util/DescribedSRAM.scala:17:26
        _RW0_rmode_d0 = _RANDOM[10];	// src/main/scala/util/DescribedSRAM.scala:17:26
      `endif // RANDOMIZE_REG_INIT
    end // initial
  `endif // ENABLE_INITIAL_MEM_
  assign RW0_rdata = _RW0_ren_d0 & ~_RW0_rmode_d0 ? Memory[_RW0_raddr_d0] : 128'bx;	// src/main/scala/util/DescribedSRAM.scala:17:26
endmodule

