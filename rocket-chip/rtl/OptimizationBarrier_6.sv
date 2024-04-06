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

module OptimizationBarrier_6(
  input  [19:0] io_x_ppn,	// src/main/scala/util/package.scala:268:18
  input         io_x_u,	// src/main/scala/util/package.scala:268:18
                io_x_g,	// src/main/scala/util/package.scala:268:18
                io_x_ae_ptw,	// src/main/scala/util/package.scala:268:18
                io_x_ae_final,	// src/main/scala/util/package.scala:268:18
                io_x_ae_stage2,	// src/main/scala/util/package.scala:268:18
                io_x_pf,	// src/main/scala/util/package.scala:268:18
                io_x_gf,	// src/main/scala/util/package.scala:268:18
                io_x_sw,	// src/main/scala/util/package.scala:268:18
                io_x_sx,	// src/main/scala/util/package.scala:268:18
                io_x_sr,	// src/main/scala/util/package.scala:268:18
                io_x_hw,	// src/main/scala/util/package.scala:268:18
                io_x_hx,	// src/main/scala/util/package.scala:268:18
                io_x_hr,	// src/main/scala/util/package.scala:268:18
                io_x_pw,	// src/main/scala/util/package.scala:268:18
                io_x_px,	// src/main/scala/util/package.scala:268:18
                io_x_pr,	// src/main/scala/util/package.scala:268:18
                io_x_ppp,	// src/main/scala/util/package.scala:268:18
                io_x_pal,	// src/main/scala/util/package.scala:268:18
                io_x_paa,	// src/main/scala/util/package.scala:268:18
                io_x_eff,	// src/main/scala/util/package.scala:268:18
                io_x_c,	// src/main/scala/util/package.scala:268:18
                io_x_fragmented_superpage,	// src/main/scala/util/package.scala:268:18
  output [19:0] io_y_ppn,	// src/main/scala/util/package.scala:268:18
  output        io_y_u,	// src/main/scala/util/package.scala:268:18
                io_y_ae_ptw,	// src/main/scala/util/package.scala:268:18
                io_y_ae_final,	// src/main/scala/util/package.scala:268:18
                io_y_ae_stage2,	// src/main/scala/util/package.scala:268:18
                io_y_pf,	// src/main/scala/util/package.scala:268:18
                io_y_gf,	// src/main/scala/util/package.scala:268:18
                io_y_sw,	// src/main/scala/util/package.scala:268:18
                io_y_sx,	// src/main/scala/util/package.scala:268:18
                io_y_sr,	// src/main/scala/util/package.scala:268:18
                io_y_hw,	// src/main/scala/util/package.scala:268:18
                io_y_hx,	// src/main/scala/util/package.scala:268:18
                io_y_hr,	// src/main/scala/util/package.scala:268:18
                io_y_pw,	// src/main/scala/util/package.scala:268:18
                io_y_px,	// src/main/scala/util/package.scala:268:18
                io_y_pr,	// src/main/scala/util/package.scala:268:18
                io_y_ppp,	// src/main/scala/util/package.scala:268:18
                io_y_pal,	// src/main/scala/util/package.scala:268:18
                io_y_paa,	// src/main/scala/util/package.scala:268:18
                io_y_eff,	// src/main/scala/util/package.scala:268:18
                io_y_c	// src/main/scala/util/package.scala:268:18
);

  wire [19:0] io_x_ppn_0 = io_x_ppn;
  wire        io_x_u_0 = io_x_u;
  wire        io_x_g_0 = io_x_g;
  wire        io_x_ae_ptw_0 = io_x_ae_ptw;
  wire        io_x_ae_final_0 = io_x_ae_final;
  wire        io_x_ae_stage2_0 = io_x_ae_stage2;
  wire        io_x_pf_0 = io_x_pf;
  wire        io_x_gf_0 = io_x_gf;
  wire        io_x_sw_0 = io_x_sw;
  wire        io_x_sx_0 = io_x_sx;
  wire        io_x_sr_0 = io_x_sr;
  wire        io_x_hw_0 = io_x_hw;
  wire        io_x_hx_0 = io_x_hx;
  wire        io_x_hr_0 = io_x_hr;
  wire        io_x_pw_0 = io_x_pw;
  wire        io_x_px_0 = io_x_px;
  wire        io_x_pr_0 = io_x_pr;
  wire        io_x_ppp_0 = io_x_ppp;
  wire        io_x_pal_0 = io_x_pal;
  wire        io_x_paa_0 = io_x_paa;
  wire        io_x_eff_0 = io_x_eff;
  wire        io_x_c_0 = io_x_c;
  wire        io_x_fragmented_superpage_0 = io_x_fragmented_superpage;
  wire [19:0] io_y_ppn_0 = io_x_ppn_0;
  wire        io_y_u_0 = io_x_u_0;
  wire        io_y_g = io_x_g_0;
  wire        io_y_ae_ptw_0 = io_x_ae_ptw_0;
  wire        io_y_ae_final_0 = io_x_ae_final_0;
  wire        io_y_ae_stage2_0 = io_x_ae_stage2_0;
  wire        io_y_pf_0 = io_x_pf_0;
  wire        io_y_gf_0 = io_x_gf_0;
  wire        io_y_sw_0 = io_x_sw_0;
  wire        io_y_sx_0 = io_x_sx_0;
  wire        io_y_sr_0 = io_x_sr_0;
  wire        io_y_hw_0 = io_x_hw_0;
  wire        io_y_hx_0 = io_x_hx_0;
  wire        io_y_hr_0 = io_x_hr_0;
  wire        io_y_pw_0 = io_x_pw_0;
  wire        io_y_px_0 = io_x_px_0;
  wire        io_y_pr_0 = io_x_pr_0;
  wire        io_y_ppp_0 = io_x_ppp_0;
  wire        io_y_pal_0 = io_x_pal_0;
  wire        io_y_paa_0 = io_x_paa_0;
  wire        io_y_eff_0 = io_x_eff_0;
  wire        io_y_c_0 = io_x_c_0;
  wire        io_y_fragmented_superpage = io_x_fragmented_superpage_0;
  assign io_y_ppn = io_y_ppn_0;
  assign io_y_u = io_y_u_0;
  assign io_y_ae_ptw = io_y_ae_ptw_0;
  assign io_y_ae_final = io_y_ae_final_0;
  assign io_y_ae_stage2 = io_y_ae_stage2_0;
  assign io_y_pf = io_y_pf_0;
  assign io_y_gf = io_y_gf_0;
  assign io_y_sw = io_y_sw_0;
  assign io_y_sx = io_y_sx_0;
  assign io_y_sr = io_y_sr_0;
  assign io_y_hw = io_y_hw_0;
  assign io_y_hx = io_y_hx_0;
  assign io_y_hr = io_y_hr_0;
  assign io_y_pw = io_y_pw_0;
  assign io_y_px = io_y_px_0;
  assign io_y_pr = io_y_pr_0;
  assign io_y_ppp = io_y_ppp_0;
  assign io_y_pal = io_y_pal_0;
  assign io_y_paa = io_y_paa_0;
  assign io_y_eff = io_y_eff_0;
  assign io_y_c = io_y_c_0;
endmodule

