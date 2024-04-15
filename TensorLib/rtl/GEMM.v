module MultiDimTime(
  input         clock,
  input         reset,
  input         io_in,
  output [1:0]  io_out_0,
  output [1:0]  io_out_1,
  output [17:0] io_index_1
);
  reg [15:0] regs_0; // @[mem.scala 81:12]
  reg [31:0] _RAND_0;
  reg [15:0] regs_1; // @[mem.scala 81:12]
  reg [31:0] _RAND_1;
  wire [15:0] _GEN_4 = {{15'd0}, io_in}; // @[mem.scala 95:42]
  wire [15:0] _T_1 = regs_0 + _GEN_4; // @[mem.scala 95:42]
  wire  back_0 = _T_1 == 16'h1; // @[mem.scala 95:48]
  wire [15:0] _T_3 = regs_1 + _GEN_4; // @[mem.scala 95:42]
  wire  back_1 = _T_3 == 16'ha; // @[mem.scala 95:48]
  wire  _T_4 = ~back_0; // @[mem.scala 102:20]
  wire [1:0] _T_5 = {_T_4, 1'h0}; // @[mem.scala 102:31]
  wire  _T_6 = ~back_1; // @[mem.scala 102:40]
  wire [1:0] _GEN_6 = {{1'd0}, _T_6}; // @[mem.scala 102:37]
  wire  _GEN_3 = back_0 ? 1'h0 : io_in; // @[mem.scala 112:16]
  assign io_out_0 = {{1'd0}, _GEN_3}; // @[mem.scala 114:15 mem.scala 117:15]
  assign io_out_1 = _T_5 | _GEN_6; // @[mem.scala 102:15]
  assign io_index_1 = {{2'd0}, regs_1}; // @[mem.scala 99:17]
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
  regs_0 = _RAND_0[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  regs_1 = _RAND_1[15:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      regs_0 <= 16'h0;
    end else if (back_0) begin
      regs_0 <= 16'h0;
    end else begin
      regs_0 <= _T_1;
    end
    if (reset) begin
      regs_1 <= 16'h0;
    end else if (back_0) begin
      if (back_1) begin
        regs_1 <= 16'h0;
      end else begin
        regs_1 <= _T_3;
      end
    end
  end
endmodule
module ComputeCell_Latency(
  input         clock,
  input         reset,
  input  [15:0] io_data_2_in,
  input  [15:0] io_data_1_in,
  input  [15:0] io_data_0_in,
  output [15:0] io_data_0_out
);
  reg [15:0] delay_a_0; // @[Reg.scala 27:20]
  reg [31:0] _RAND_0;
  reg [15:0] delay_b_0; // @[Reg.scala 27:20]
  reg [31:0] _RAND_1;
  reg [15:0] delay_c_0; // @[Reg.scala 27:20]
  reg [31:0] _RAND_2;
  wire [31:0] _T_9 = delay_a_0 * delay_b_0; // @[cell.scala 145:63]
  wire [31:0] _GEN_3 = {{16'd0}, delay_c_0}; // @[cell.scala 145:50]
  wire [31:0] _T_11 = _GEN_3 + _T_9; // @[cell.scala 145:50]
  assign io_data_0_out = _T_11[15:0]; // @[cell.scala 148:18]
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
  delay_a_0 = _RAND_0[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  delay_b_0 = _RAND_1[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  delay_c_0 = _RAND_2[15:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      delay_a_0 <= 16'h0;
    end else begin
      delay_a_0 <= io_data_1_in;
    end
    if (reset) begin
      delay_b_0 <= 16'h0;
    end else begin
      delay_b_0 <= io_data_2_in;
    end
    if (reset) begin
      delay_c_0 <= 16'h0;
    end else begin
      delay_c_0 <= io_data_0_in;
    end
  end
endmodule
module Queue(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [15:0] io_enq_bits,
  input         io_deq_ready,
  output        io_deq_valid,
  output [15:0] io_deq_bits
);
  reg [15:0] _T [0:0]; // @[Decoupled.scala 218:24]
  reg [31:0] _RAND_0;
  wire [15:0] _T__T_14_data; // @[Decoupled.scala 218:24]
  wire  _T__T_14_addr; // @[Decoupled.scala 218:24]
  wire [15:0] _T__T_10_data; // @[Decoupled.scala 218:24]
  wire  _T__T_10_addr; // @[Decoupled.scala 218:24]
  wire  _T__T_10_mask; // @[Decoupled.scala 218:24]
  wire  _T__T_10_en; // @[Decoupled.scala 218:24]
  reg  _T_1; // @[Decoupled.scala 221:35]
  reg [31:0] _RAND_1;
  wire  _T_3 = ~_T_1; // @[Decoupled.scala 224:36]
  wire  _T_6 = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37]
  wire  _T_8 = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37]
  wire  _T_11 = _T_6 != _T_8; // @[Decoupled.scala 236:16]
  assign _T__T_14_addr = 1'h0;
  assign _T__T_14_data = _T[_T__T_14_addr]; // @[Decoupled.scala 218:24]
  assign _T__T_10_data = io_enq_bits;
  assign _T__T_10_addr = 1'h0;
  assign _T__T_10_mask = 1'h1;
  assign _T__T_10_en = io_enq_ready & io_enq_valid;
  assign io_enq_ready = ~_T_1; // @[Decoupled.scala 241:16]
  assign io_deq_valid = ~_T_3; // @[Decoupled.scala 240:16]
  assign io_deq_bits = _T__T_14_data; // @[Decoupled.scala 242:15]
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
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _T[initvar] = _RAND_0[15:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_1 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(_T__T_10_en & _T__T_10_mask) begin
      _T[_T__T_10_addr] <= _T__T_10_data; // @[Decoupled.scala 218:24]
    end
    if (reset) begin
      _T_1 <= 1'h0;
    end else if (_T_11) begin
      _T_1 <= _T_6;
    end
  end
endmodule
module StationaryOutput(
  input         clock,
  input         reset,
  input         io_port_in_valid,
  input  [15:0] io_port_in_bits,
  output        io_port_out_valid,
  output [15:0] io_port_out_bits,
  input  [15:0] io_from_cell_bits,
  output [15:0] io_to_cell_bits,
  input         io_sig_stat2trans
);
  wire  Queue_clock; // @[pe_modules.scala 173:21]
  wire  Queue_reset; // @[pe_modules.scala 173:21]
  wire  Queue_io_enq_ready; // @[pe_modules.scala 173:21]
  wire  Queue_io_enq_valid; // @[pe_modules.scala 173:21]
  wire [15:0] Queue_io_enq_bits; // @[pe_modules.scala 173:21]
  wire  Queue_io_deq_ready; // @[pe_modules.scala 173:21]
  wire  Queue_io_deq_valid; // @[pe_modules.scala 173:21]
  wire [15:0] Queue_io_deq_bits; // @[pe_modules.scala 173:21]
  reg  move_valid; // @[pe_modules.scala 174:21]
  reg [31:0] _RAND_0;
  reg [15:0] move_bits; // @[pe_modules.scala 174:21]
  reg [31:0] _RAND_1;
  reg  reg_stat2trans; // @[pe_modules.scala 179:31]
  reg [31:0] _RAND_2;
  wire  _T_3 = ~io_port_in_valid; // @[pe_modules.scala 187:8]
  Queue Queue ( // @[pe_modules.scala 173:21]
    .clock(Queue_clock),
    .reset(Queue_reset),
    .io_enq_ready(Queue_io_enq_ready),
    .io_enq_valid(Queue_io_enq_valid),
    .io_enq_bits(Queue_io_enq_bits),
    .io_deq_ready(Queue_io_deq_ready),
    .io_deq_valid(Queue_io_deq_valid),
    .io_deq_bits(Queue_io_deq_bits)
  );
  assign io_port_out_valid = move_valid; // @[pe_modules.scala 195:15]
  assign io_port_out_bits = move_bits; // @[pe_modules.scala 195:15]
  assign io_to_cell_bits = reg_stat2trans ? 16'h0 : io_from_cell_bits; // @[pe_modules.scala 198:19]
  assign Queue_clock = clock;
  assign Queue_reset = reset;
  assign Queue_io_enq_valid = reg_stat2trans; // @[pe_modules.scala 183:19]
  assign Queue_io_enq_bits = io_from_cell_bits; // @[pe_modules.scala 182:18]
  assign Queue_io_deq_ready = ~io_port_in_valid; // @[pe_modules.scala 190:21 pe_modules.scala 193:21]
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
  move_valid = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  move_bits = _RAND_1[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  reg_stat2trans = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      move_valid <= 1'h0;
    end else if (_T_3) begin
      move_valid <= Queue_io_deq_valid;
    end else begin
      move_valid <= io_port_in_valid;
    end
    if (reset) begin
      move_bits <= 16'h0;
    end else if (_T_3) begin
      move_bits <= Queue_io_deq_bits;
    end else begin
      move_bits <= io_port_in_bits;
    end
    if (reset) begin
      reg_stat2trans <= 1'h0;
    end else begin
      reg_stat2trans <= io_sig_stat2trans;
    end
  end
endmodule
module SystolicInput(
  input         clock,
  input         reset,
  input  [15:0] io_port_in_bits,
  output [15:0] io_port_out_bits,
  output [15:0] io_to_cell_bits
);
  reg [15:0] reg_0_bits; // @[pe_modules.scala 82:20]
  reg [31:0] _RAND_0;
  reg [15:0] to_cell_delay1_bits; // @[pe_modules.scala 83:31]
  reg [31:0] _RAND_1;
  reg [15:0] to_cell_delay2_bits; // @[pe_modules.scala 84:31]
  reg [31:0] _RAND_2;
  assign io_port_out_bits = reg_0_bits; // @[pe_modules.scala 91:15]
  assign io_to_cell_bits = to_cell_delay2_bits; // @[pe_modules.scala 92:14]
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
  reg_0_bits = _RAND_0[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  to_cell_delay1_bits = _RAND_1[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  to_cell_delay2_bits = _RAND_2[15:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      reg_0_bits <= 16'h0;
    end else begin
      reg_0_bits <= io_port_in_bits;
    end
    if (reset) begin
      to_cell_delay1_bits <= 16'h0;
    end else begin
      to_cell_delay1_bits <= reg_0_bits;
    end
    if (reset) begin
      to_cell_delay2_bits <= 16'h0;
    end else begin
      to_cell_delay2_bits <= to_cell_delay1_bits;
    end
  end
endmodule
module PE(
  input         clock,
  input         reset,
  input  [15:0] io_data_2_in_bits,
  output [15:0] io_data_2_out_bits,
  input  [15:0] io_data_1_in_bits,
  output [15:0] io_data_1_out_bits,
  input         io_data_0_in_valid,
  input  [15:0] io_data_0_in_bits,
  output        io_data_0_out_valid,
  output [15:0] io_data_0_out_bits,
  input         io_sig_stat2trans
);
  wire  ComputeCell_Latency_clock; // @[pe.scala 37:104]
  wire  ComputeCell_Latency_reset; // @[pe.scala 37:104]
  wire [15:0] ComputeCell_Latency_io_data_2_in; // @[pe.scala 37:104]
  wire [15:0] ComputeCell_Latency_io_data_1_in; // @[pe.scala 37:104]
  wire [15:0] ComputeCell_Latency_io_data_0_in; // @[pe.scala 37:104]
  wire [15:0] ComputeCell_Latency_io_data_0_out; // @[pe.scala 37:104]
  wire  StationaryOutput_clock; // @[pe.scala 39:11]
  wire  StationaryOutput_reset; // @[pe.scala 39:11]
  wire  StationaryOutput_io_port_in_valid; // @[pe.scala 39:11]
  wire [15:0] StationaryOutput_io_port_in_bits; // @[pe.scala 39:11]
  wire  StationaryOutput_io_port_out_valid; // @[pe.scala 39:11]
  wire [15:0] StationaryOutput_io_port_out_bits; // @[pe.scala 39:11]
  wire [15:0] StationaryOutput_io_from_cell_bits; // @[pe.scala 39:11]
  wire [15:0] StationaryOutput_io_to_cell_bits; // @[pe.scala 39:11]
  wire  StationaryOutput_io_sig_stat2trans; // @[pe.scala 39:11]
  wire  SystolicInput_clock; // @[pe.scala 39:11]
  wire  SystolicInput_reset; // @[pe.scala 39:11]
  wire [15:0] SystolicInput_io_port_in_bits; // @[pe.scala 39:11]
  wire [15:0] SystolicInput_io_port_out_bits; // @[pe.scala 39:11]
  wire [15:0] SystolicInput_io_to_cell_bits; // @[pe.scala 39:11]
  wire  SystolicInput_1_clock; // @[pe.scala 39:11]
  wire  SystolicInput_1_reset; // @[pe.scala 39:11]
  wire [15:0] SystolicInput_1_io_port_in_bits; // @[pe.scala 39:11]
  wire [15:0] SystolicInput_1_io_port_out_bits; // @[pe.scala 39:11]
  wire [15:0] SystolicInput_1_io_to_cell_bits; // @[pe.scala 39:11]
  ComputeCell_Latency ComputeCell_Latency ( // @[pe.scala 37:104]
    .clock(ComputeCell_Latency_clock),
    .reset(ComputeCell_Latency_reset),
    .io_data_2_in(ComputeCell_Latency_io_data_2_in),
    .io_data_1_in(ComputeCell_Latency_io_data_1_in),
    .io_data_0_in(ComputeCell_Latency_io_data_0_in),
    .io_data_0_out(ComputeCell_Latency_io_data_0_out)
  );
  StationaryOutput StationaryOutput ( // @[pe.scala 39:11]
    .clock(StationaryOutput_clock),
    .reset(StationaryOutput_reset),
    .io_port_in_valid(StationaryOutput_io_port_in_valid),
    .io_port_in_bits(StationaryOutput_io_port_in_bits),
    .io_port_out_valid(StationaryOutput_io_port_out_valid),
    .io_port_out_bits(StationaryOutput_io_port_out_bits),
    .io_from_cell_bits(StationaryOutput_io_from_cell_bits),
    .io_to_cell_bits(StationaryOutput_io_to_cell_bits),
    .io_sig_stat2trans(StationaryOutput_io_sig_stat2trans)
  );
  SystolicInput SystolicInput ( // @[pe.scala 39:11]
    .clock(SystolicInput_clock),
    .reset(SystolicInput_reset),
    .io_port_in_bits(SystolicInput_io_port_in_bits),
    .io_port_out_bits(SystolicInput_io_port_out_bits),
    .io_to_cell_bits(SystolicInput_io_to_cell_bits)
  );
  SystolicInput SystolicInput_1 ( // @[pe.scala 39:11]
    .clock(SystolicInput_1_clock),
    .reset(SystolicInput_1_reset),
    .io_port_in_bits(SystolicInput_1_io_port_in_bits),
    .io_port_out_bits(SystolicInput_1_io_port_out_bits),
    .io_to_cell_bits(SystolicInput_1_io_to_cell_bits)
  );
  assign io_data_2_out_bits = SystolicInput_1_io_port_out_bits; // @[pe.scala 42:17]
  assign io_data_1_out_bits = SystolicInput_io_port_out_bits; // @[pe.scala 42:17]
  assign io_data_0_out_valid = StationaryOutput_io_port_out_valid; // @[pe.scala 42:17]
  assign io_data_0_out_bits = StationaryOutput_io_port_out_bits; // @[pe.scala 42:17]
  assign ComputeCell_Latency_clock = clock;
  assign ComputeCell_Latency_reset = reset;
  assign ComputeCell_Latency_io_data_2_in = SystolicInput_1_io_to_cell_bits; // @[pe.scala 43:19]
  assign ComputeCell_Latency_io_data_1_in = SystolicInput_io_to_cell_bits; // @[pe.scala 43:19]
  assign ComputeCell_Latency_io_data_0_in = StationaryOutput_io_to_cell_bits; // @[pe.scala 43:19]
  assign StationaryOutput_clock = clock;
  assign StationaryOutput_reset = reset;
  assign StationaryOutput_io_port_in_valid = io_data_0_in_valid; // @[pe.scala 42:17]
  assign StationaryOutput_io_port_in_bits = io_data_0_in_bits; // @[pe.scala 42:17]
  assign StationaryOutput_io_from_cell_bits = ComputeCell_Latency_io_data_0_out; // @[pe.scala 45:33]
  assign StationaryOutput_io_sig_stat2trans = io_sig_stat2trans; // @[pe.scala 50:33]
  assign SystolicInput_clock = clock;
  assign SystolicInput_reset = reset;
  assign SystolicInput_io_port_in_bits = io_data_1_in_bits; // @[pe.scala 42:17]
  assign SystolicInput_1_clock = clock;
  assign SystolicInput_1_reset = reset;
  assign SystolicInput_1_io_port_in_bits = io_data_2_in_bits; // @[pe.scala 42:17]
endmodule
module PENetwork(
  input         io_to_pes_0_out_valid,
  input  [15:0] io_to_pes_0_out_bits,
  output        io_to_pes_1_in_valid,
  output [15:0] io_to_pes_1_in_bits,
  input         io_to_pes_1_out_valid,
  input  [15:0] io_to_pes_1_out_bits,
  output        io_to_pes_2_in_valid,
  output [15:0] io_to_pes_2_in_bits,
  input         io_to_pes_2_out_valid,
  input  [15:0] io_to_pes_2_out_bits,
  output        io_to_pes_3_in_valid,
  output [15:0] io_to_pes_3_in_bits,
  input         io_to_pes_3_out_valid,
  input  [15:0] io_to_pes_3_out_bits,
  output        io_to_mem_valid,
  output [15:0] io_to_mem_bits
);
  assign io_to_pes_1_in_valid = io_to_pes_0_out_valid; // @[pearray.scala 38:23]
  assign io_to_pes_1_in_bits = io_to_pes_0_out_bits; // @[pearray.scala 38:23]
  assign io_to_pes_2_in_valid = io_to_pes_1_out_valid; // @[pearray.scala 38:23]
  assign io_to_pes_2_in_bits = io_to_pes_1_out_bits; // @[pearray.scala 38:23]
  assign io_to_pes_3_in_valid = io_to_pes_2_out_valid; // @[pearray.scala 38:23]
  assign io_to_pes_3_in_bits = io_to_pes_2_out_bits; // @[pearray.scala 38:23]
  assign io_to_mem_valid = io_to_pes_3_out_valid; // @[pearray.scala 45:17]
  assign io_to_mem_bits = io_to_pes_3_out_bits; // @[pearray.scala 45:17]
endmodule
module PENetwork_4(
  output [15:0] io_to_pes_0_in_bits,
  input  [15:0] io_to_pes_0_out_bits,
  output [15:0] io_to_pes_1_in_bits,
  input  [15:0] io_to_pes_1_out_bits,
  output [15:0] io_to_pes_2_in_bits,
  input  [15:0] io_to_pes_2_out_bits,
  output [15:0] io_to_pes_3_in_bits,
  input  [15:0] io_to_mem_bits
);
  assign io_to_pes_0_in_bits = io_to_mem_bits; // @[pearray.scala 41:23]
  assign io_to_pes_1_in_bits = io_to_pes_0_out_bits; // @[pearray.scala 38:23]
  assign io_to_pes_2_in_bits = io_to_pes_1_out_bits; // @[pearray.scala 38:23]
  assign io_to_pes_3_in_bits = io_to_pes_2_out_bits; // @[pearray.scala 38:23]
endmodule
module MultiDimMem(
  input         clock,
  input         reset,
  input         io_rd_addr_valid,
  input  [1:0]  io_rd_addr_bits_0,
  input  [1:0]  io_rd_addr_bits_1,
  output        io_rd_data_valid,
  output [15:0] io_rd_data_bits,
  input  [1:0]  io_wr_addr_bits_0,
  input  [1:0]  io_wr_addr_bits_1,
  input         io_wr_data_valid,
  input  [15:0] io_wr_data_bits
);
  reg [16:0] mem [0:3]; // @[mem.scala 131:24]
  reg [31:0] _RAND_0;
  wire [16:0] mem_mem_output_data; // @[mem.scala 131:24]
  wire [1:0] mem_mem_output_addr; // @[mem.scala 131:24]
  wire [16:0] mem__T_43_data; // @[mem.scala 131:24]
  wire [1:0] mem__T_43_addr; // @[mem.scala 131:24]
  wire  mem__T_43_mask; // @[mem.scala 131:24]
  wire  mem__T_43_en; // @[mem.scala 131:24]
  reg  mem_mem_output_en_pipe_0;
  reg [31:0] _RAND_1;
  reg [1:0] mem_mem_output_addr_pipe_0;
  reg [31:0] _RAND_2;
  reg  rd_addr_reg_valid; // @[mem.scala 132:28]
  reg [31:0] _RAND_3;
  reg [15:0] rd_addr_reg_bits_1; // @[mem.scala 132:28]
  reg [31:0] _RAND_4;
  reg [15:0] rd_addr_reg_bits_0; // @[mem.scala 132:28]
  reg [31:0] _RAND_5;
  wire [15:0] _T_6 = rd_addr_reg_bits_0 + 16'h1; // @[mem.scala 143:102]
  wire  _T_7 = 2'h1 == io_rd_addr_bits_0; // @[Mux.scala 68:19]
  wire  _T_9 = 2'h0 == io_rd_addr_bits_0; // @[Mux.scala 68:19]
  wire [15:0] _T_11 = rd_addr_reg_bits_1 + 16'h1; // @[mem.scala 143:102]
  wire  _T_12 = 2'h1 == io_rd_addr_bits_1; // @[Mux.scala 68:19]
  wire  _T_14 = 2'h0 == io_rd_addr_bits_1; // @[Mux.scala 68:19]
  wire [15:0] mem_rd_addr = rd_addr_reg_bits_0 + rd_addr_reg_bits_1; // @[mem.scala 146:46]
  reg  mem_req_valid; // @[mem.scala 151:30]
  reg [31:0] _RAND_6;
  reg [15:0] wr_addr_reg_bits_1; // @[mem.scala 152:28]
  reg [31:0] _RAND_7;
  reg [15:0] wr_addr_reg_bits_0; // @[mem.scala 152:28]
  reg [31:0] _RAND_8;
  wire [15:0] _T_22 = wr_addr_reg_bits_0 + 16'h1; // @[mem.scala 164:102]
  wire  _T_23 = 2'h1 == io_wr_addr_bits_0; // @[Mux.scala 68:19]
  wire  _T_25 = 2'h0 == io_wr_addr_bits_0; // @[Mux.scala 68:19]
  wire [15:0] _T_27 = wr_addr_reg_bits_1 + 16'h1; // @[mem.scala 164:102]
  wire  _T_28 = 2'h1 == io_wr_addr_bits_1; // @[Mux.scala 68:19]
  wire  _T_30 = 2'h0 == io_wr_addr_bits_1; // @[Mux.scala 68:19]
  wire [15:0] mem_wr_addr = wr_addr_reg_bits_0 + wr_addr_reg_bits_1; // @[mem.scala 166:46]
  reg  wr_data_1_valid; // @[mem.scala 171:26]
  reg [31:0] _RAND_9;
  reg [15:0] wr_data_1_bits; // @[mem.scala 171:26]
  reg [31:0] _RAND_10;
  reg  wr_data_2_valid; // @[mem.scala 178:26]
  reg [31:0] _RAND_11;
  reg [15:0] wr_data_2_bits; // @[mem.scala 178:26]
  reg [31:0] _RAND_12;
  reg [15:0] wr_addr_2; // @[mem.scala 180:26]
  reg [31:0] _RAND_13;
  reg [15:0] wr_data_final; // @[mem.scala 186:30]
  reg [31:0] _RAND_14;
  reg [15:0] wr_addr_3; // @[mem.scala 187:26]
  reg [31:0] _RAND_15;
  reg  wr_valid_3; // @[mem.scala 188:27]
  reg [31:0] _RAND_16;
  wire [16:0] _GEN_9 = {wr_valid_3, 16'h0}; // @[mem.scala 191:38]
  wire [31:0] _T_39 = {{15'd0}, _GEN_9}; // @[mem.scala 191:38]
  wire [31:0] _GEN_10 = {{16'd0}, wr_data_final}; // @[mem.scala 191:52]
  wire [31:0] _T_40 = _T_39 | _GEN_10; // @[mem.scala 191:52]
  reg  _T_46; // @[mem.scala 194:30]
  reg [31:0] _RAND_17;
  reg [15:0] _T_49; // @[mem.scala 195:29]
  reg [31:0] _RAND_18;
  assign mem_mem_output_addr = mem_mem_output_addr_pipe_0;
  assign mem_mem_output_data = mem[mem_mem_output_addr]; // @[mem.scala 131:24]
  assign mem__T_43_data = _T_40[16:0];
  assign mem__T_43_addr = wr_addr_3[1:0];
  assign mem__T_43_mask = 1'h1;
  assign mem__T_43_en = wr_valid_3;
  assign io_rd_data_valid = _T_46; // @[mem.scala 194:20]
  assign io_rd_data_bits = _T_49; // @[mem.scala 195:19]
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
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    mem[initvar] = _RAND_0[16:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  mem_mem_output_en_pipe_0 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  mem_mem_output_addr_pipe_0 = _RAND_2[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  rd_addr_reg_valid = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  rd_addr_reg_bits_1 = _RAND_4[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  rd_addr_reg_bits_0 = _RAND_5[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  mem_req_valid = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  wr_addr_reg_bits_1 = _RAND_7[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  wr_addr_reg_bits_0 = _RAND_8[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  wr_data_1_valid = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  wr_data_1_bits = _RAND_10[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  wr_data_2_valid = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  wr_data_2_bits = _RAND_12[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  wr_addr_2 = _RAND_13[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  wr_data_final = _RAND_14[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  wr_addr_3 = _RAND_15[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  wr_valid_3 = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  _T_46 = _RAND_17[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  _T_49 = _RAND_18[15:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(mem__T_43_en & mem__T_43_mask) begin
      mem[mem__T_43_addr] <= mem__T_43_data; // @[mem.scala 131:24]
    end
    mem_mem_output_en_pipe_0 <= rd_addr_reg_valid;
    if (rd_addr_reg_valid) begin
      mem_mem_output_addr_pipe_0 <= mem_rd_addr[1:0];
    end
    if (reset) begin
      rd_addr_reg_valid <= 1'h0;
    end else begin
      rd_addr_reg_valid <= io_rd_addr_valid;
    end
    if (reset) begin
      rd_addr_reg_bits_1 <= 16'h0;
    end else if (_T_14) begin
      rd_addr_reg_bits_1 <= 16'h0;
    end else if (_T_12) begin
      rd_addr_reg_bits_1 <= _T_11;
    end
    if (reset) begin
      rd_addr_reg_bits_0 <= 16'h0;
    end else if (_T_9) begin
      rd_addr_reg_bits_0 <= 16'h0;
    end else if (_T_7) begin
      rd_addr_reg_bits_0 <= _T_6;
    end
    if (reset) begin
      mem_req_valid <= 1'h0;
    end else begin
      mem_req_valid <= rd_addr_reg_valid;
    end
    if (reset) begin
      wr_addr_reg_bits_1 <= 16'h0;
    end else if (_T_30) begin
      wr_addr_reg_bits_1 <= 16'h0;
    end else if (_T_28) begin
      wr_addr_reg_bits_1 <= _T_27;
    end
    if (reset) begin
      wr_addr_reg_bits_0 <= 16'h0;
    end else if (_T_25) begin
      wr_addr_reg_bits_0 <= 16'h0;
    end else if (_T_23) begin
      wr_addr_reg_bits_0 <= _T_22;
    end
    if (reset) begin
      wr_data_1_valid <= 1'h0;
    end else begin
      wr_data_1_valid <= io_wr_data_valid;
    end
    if (reset) begin
      wr_data_1_bits <= 16'h0;
    end else begin
      wr_data_1_bits <= io_wr_data_bits;
    end
    if (reset) begin
      wr_data_2_valid <= 1'h0;
    end else begin
      wr_data_2_valid <= wr_data_1_valid;
    end
    if (reset) begin
      wr_data_2_bits <= 16'h0;
    end else begin
      wr_data_2_bits <= wr_data_1_bits;
    end
    if (reset) begin
      wr_addr_2 <= 16'h0;
    end else begin
      wr_addr_2 <= mem_wr_addr;
    end
    wr_data_final <= wr_data_2_bits;
    if (reset) begin
      wr_addr_3 <= 16'h0;
    end else begin
      wr_addr_3 <= wr_addr_2;
    end
    wr_valid_3 <= wr_data_2_valid;
    _T_46 <= mem_req_valid & mem_mem_output_data[16];
    if (mem_req_valid) begin
      _T_49 <= mem_mem_output_data[15:0];
    end else begin
      _T_49 <= 16'h0;
    end
  end
endmodule
module MultiDimTime_4(
  input        clock,
  input        reset,
  input        io_in,
  output [1:0] io_out_0,
  output [1:0] io_out_1
);
  reg [15:0] regs_0; // @[mem.scala 81:12]
  reg [31:0] _RAND_0;
  reg [15:0] regs_1; // @[mem.scala 81:12]
  reg [31:0] _RAND_1;
  wire [15:0] _GEN_4 = {{15'd0}, io_in}; // @[mem.scala 95:42]
  wire [15:0] _T_1 = regs_0 + _GEN_4; // @[mem.scala 95:42]
  wire  back_0 = _T_1 == 16'h1; // @[mem.scala 95:48]
  wire [15:0] _T_3 = regs_1 + _GEN_4; // @[mem.scala 95:42]
  wire  back_1 = _T_3 == 16'h4; // @[mem.scala 95:48]
  wire  _T_4 = ~back_0; // @[mem.scala 102:20]
  wire [1:0] _T_5 = {_T_4, 1'h0}; // @[mem.scala 102:31]
  wire  _T_6 = ~back_1; // @[mem.scala 102:40]
  wire [1:0] _GEN_6 = {{1'd0}, _T_6}; // @[mem.scala 102:37]
  wire  _GEN_3 = back_0 ? 1'h0 : io_in; // @[mem.scala 112:16]
  assign io_out_0 = {{1'd0}, _GEN_3}; // @[mem.scala 114:15 mem.scala 117:15]
  assign io_out_1 = _T_5 | _GEN_6; // @[mem.scala 102:15]
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
  regs_0 = _RAND_0[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  regs_1 = _RAND_1[15:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      regs_0 <= 16'h0;
    end else if (back_0) begin
      regs_0 <= 16'h0;
    end else begin
      regs_0 <= _T_1;
    end
    if (reset) begin
      regs_1 <= 16'h0;
    end else if (back_0) begin
      if (back_1) begin
        regs_1 <= 16'h0;
      end else begin
        regs_1 <= _T_3;
      end
    end
  end
endmodule
module MemController(
  input         clock,
  input         reset,
  input         io_rd_valid,
  input         io_wr_valid,
  output        io_rd_data_valid,
  output [15:0] io_rd_data_bits,
  input         io_wr_data_valid,
  input  [15:0] io_wr_data_bits
);
  wire  MultiDimMem_clock; // @[mem.scala 33:19]
  wire  MultiDimMem_reset; // @[mem.scala 33:19]
  wire  MultiDimMem_io_rd_addr_valid; // @[mem.scala 33:19]
  wire [1:0] MultiDimMem_io_rd_addr_bits_0; // @[mem.scala 33:19]
  wire [1:0] MultiDimMem_io_rd_addr_bits_1; // @[mem.scala 33:19]
  wire  MultiDimMem_io_rd_data_valid; // @[mem.scala 33:19]
  wire [15:0] MultiDimMem_io_rd_data_bits; // @[mem.scala 33:19]
  wire [1:0] MultiDimMem_io_wr_addr_bits_0; // @[mem.scala 33:19]
  wire [1:0] MultiDimMem_io_wr_addr_bits_1; // @[mem.scala 33:19]
  wire  MultiDimMem_io_wr_data_valid; // @[mem.scala 33:19]
  wire [15:0] MultiDimMem_io_wr_data_bits; // @[mem.scala 33:19]
  wire  MultiDimTime_clock; // @[mem.scala 34:23]
  wire  MultiDimTime_reset; // @[mem.scala 34:23]
  wire  MultiDimTime_io_in; // @[mem.scala 34:23]
  wire [1:0] MultiDimTime_io_out_0; // @[mem.scala 34:23]
  wire [1:0] MultiDimTime_io_out_1; // @[mem.scala 34:23]
  wire  MultiDimTime_1_clock; // @[mem.scala 35:23]
  wire  MultiDimTime_1_reset; // @[mem.scala 35:23]
  wire  MultiDimTime_1_io_in; // @[mem.scala 35:23]
  wire [1:0] MultiDimTime_1_io_out_0; // @[mem.scala 35:23]
  wire [1:0] MultiDimTime_1_io_out_1; // @[mem.scala 35:23]
  MultiDimMem MultiDimMem ( // @[mem.scala 33:19]
    .clock(MultiDimMem_clock),
    .reset(MultiDimMem_reset),
    .io_rd_addr_valid(MultiDimMem_io_rd_addr_valid),
    .io_rd_addr_bits_0(MultiDimMem_io_rd_addr_bits_0),
    .io_rd_addr_bits_1(MultiDimMem_io_rd_addr_bits_1),
    .io_rd_data_valid(MultiDimMem_io_rd_data_valid),
    .io_rd_data_bits(MultiDimMem_io_rd_data_bits),
    .io_wr_addr_bits_0(MultiDimMem_io_wr_addr_bits_0),
    .io_wr_addr_bits_1(MultiDimMem_io_wr_addr_bits_1),
    .io_wr_data_valid(MultiDimMem_io_wr_data_valid),
    .io_wr_data_bits(MultiDimMem_io_wr_data_bits)
  );
  MultiDimTime_4 MultiDimTime ( // @[mem.scala 34:23]
    .clock(MultiDimTime_clock),
    .reset(MultiDimTime_reset),
    .io_in(MultiDimTime_io_in),
    .io_out_0(MultiDimTime_io_out_0),
    .io_out_1(MultiDimTime_io_out_1)
  );
  MultiDimTime_4 MultiDimTime_1 ( // @[mem.scala 35:23]
    .clock(MultiDimTime_1_clock),
    .reset(MultiDimTime_1_reset),
    .io_in(MultiDimTime_1_io_in),
    .io_out_0(MultiDimTime_1_io_out_0),
    .io_out_1(MultiDimTime_1_io_out_1)
  );
  assign io_rd_data_valid = MultiDimMem_io_rd_data_valid; // @[mem.scala 53:14]
  assign io_rd_data_bits = MultiDimMem_io_rd_data_bits; // @[mem.scala 53:14]
  assign MultiDimMem_clock = clock;
  assign MultiDimMem_reset = reset;
  assign MultiDimMem_io_rd_addr_valid = io_rd_valid; // @[mem.scala 50:21]
  assign MultiDimMem_io_rd_addr_bits_0 = MultiDimTime_1_io_out_0; // @[mem.scala 49:20]
  assign MultiDimMem_io_rd_addr_bits_1 = MultiDimTime_1_io_out_1; // @[mem.scala 49:20]
  assign MultiDimMem_io_wr_addr_bits_0 = MultiDimTime_io_out_0; // @[mem.scala 45:20]
  assign MultiDimMem_io_wr_addr_bits_1 = MultiDimTime_io_out_1; // @[mem.scala 45:20]
  assign MultiDimMem_io_wr_data_valid = io_wr_data_valid; // @[mem.scala 54:15]
  assign MultiDimMem_io_wr_data_bits = io_wr_data_bits; // @[mem.scala 54:15]
  assign MultiDimTime_clock = clock;
  assign MultiDimTime_reset = reset;
  assign MultiDimTime_io_in = io_wr_valid; // @[mem.scala 44:14]
  assign MultiDimTime_1_clock = clock;
  assign MultiDimTime_1_reset = reset;
  assign MultiDimTime_1_io_in = io_rd_valid; // @[mem.scala 48:14]
endmodule
module MultiDimMem_4(
  input         clock,
  input         reset,
  input         io_rd_addr_valid,
  input  [1:0]  io_rd_addr_bits_0,
  input  [1:0]  io_rd_addr_bits_1,
  output [15:0] io_rd_data_bits,
  input  [1:0]  io_wr_addr_bits_0,
  input  [1:0]  io_wr_addr_bits_1,
  input         io_wr_data_valid,
  input  [15:0] io_wr_data_bits
);
  reg [16:0] mem [0:9]; // @[mem.scala 131:24]
  reg [31:0] _RAND_0;
  wire [16:0] mem_mem_output_data; // @[mem.scala 131:24]
  wire [3:0] mem_mem_output_addr; // @[mem.scala 131:24]
  reg [31:0] _RAND_1;
  wire [16:0] mem__T_43_data; // @[mem.scala 131:24]
  wire [3:0] mem__T_43_addr; // @[mem.scala 131:24]
  wire  mem__T_43_mask; // @[mem.scala 131:24]
  wire  mem__T_43_en; // @[mem.scala 131:24]
  reg  mem_mem_output_en_pipe_0;
  reg [31:0] _RAND_2;
  reg [3:0] mem_mem_output_addr_pipe_0;
  reg [31:0] _RAND_3;
  reg  rd_addr_reg_valid; // @[mem.scala 132:28]
  reg [31:0] _RAND_4;
  reg [15:0] rd_addr_reg_bits_1; // @[mem.scala 132:28]
  reg [31:0] _RAND_5;
  reg [15:0] rd_addr_reg_bits_0; // @[mem.scala 132:28]
  reg [31:0] _RAND_6;
  wire [15:0] _T_6 = rd_addr_reg_bits_0 + 16'h1; // @[mem.scala 143:102]
  wire  _T_7 = 2'h1 == io_rd_addr_bits_0; // @[Mux.scala 68:19]
  wire  _T_9 = 2'h0 == io_rd_addr_bits_0; // @[Mux.scala 68:19]
  wire [15:0] _T_11 = rd_addr_reg_bits_1 + 16'h1; // @[mem.scala 143:102]
  wire  _T_12 = 2'h1 == io_rd_addr_bits_1; // @[Mux.scala 68:19]
  wire  _T_14 = 2'h0 == io_rd_addr_bits_1; // @[Mux.scala 68:19]
  wire [15:0] mem_rd_addr = rd_addr_reg_bits_0 + rd_addr_reg_bits_1; // @[mem.scala 146:46]
  reg  mem_req_valid; // @[mem.scala 151:30]
  reg [31:0] _RAND_7;
  reg [15:0] wr_addr_reg_bits_1; // @[mem.scala 152:28]
  reg [31:0] _RAND_8;
  reg [15:0] wr_addr_reg_bits_0; // @[mem.scala 152:28]
  reg [31:0] _RAND_9;
  wire [15:0] _T_22 = wr_addr_reg_bits_0 + 16'h1; // @[mem.scala 164:102]
  wire  _T_23 = 2'h1 == io_wr_addr_bits_0; // @[Mux.scala 68:19]
  wire  _T_25 = 2'h0 == io_wr_addr_bits_0; // @[Mux.scala 68:19]
  wire [15:0] _T_27 = wr_addr_reg_bits_1 + 16'h1; // @[mem.scala 164:102]
  wire  _T_28 = 2'h1 == io_wr_addr_bits_1; // @[Mux.scala 68:19]
  wire  _T_30 = 2'h0 == io_wr_addr_bits_1; // @[Mux.scala 68:19]
  wire [15:0] mem_wr_addr = wr_addr_reg_bits_0 + wr_addr_reg_bits_1; // @[mem.scala 166:46]
  reg  wr_data_1_valid; // @[mem.scala 171:26]
  reg [31:0] _RAND_10;
  reg [15:0] wr_data_1_bits; // @[mem.scala 171:26]
  reg [31:0] _RAND_11;
  reg  wr_data_2_valid; // @[mem.scala 178:26]
  reg [31:0] _RAND_12;
  reg [15:0] wr_data_2_bits; // @[mem.scala 178:26]
  reg [31:0] _RAND_13;
  reg [15:0] wr_addr_2; // @[mem.scala 180:26]
  reg [31:0] _RAND_14;
  reg [15:0] wr_data_final; // @[mem.scala 186:30]
  reg [31:0] _RAND_15;
  reg [15:0] wr_addr_3; // @[mem.scala 187:26]
  reg [31:0] _RAND_16;
  reg  wr_valid_3; // @[mem.scala 188:27]
  reg [31:0] _RAND_17;
  wire [16:0] _GEN_9 = {wr_valid_3, 16'h0}; // @[mem.scala 191:38]
  wire [31:0] _T_39 = {{15'd0}, _GEN_9}; // @[mem.scala 191:38]
  wire [31:0] _GEN_10 = {{16'd0}, wr_data_final}; // @[mem.scala 191:52]
  wire [31:0] _T_40 = _T_39 | _GEN_10; // @[mem.scala 191:52]
  reg [15:0] _T_49; // @[mem.scala 195:29]
  reg [31:0] _RAND_18;
  assign mem_mem_output_addr = mem_mem_output_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign mem_mem_output_data = mem[mem_mem_output_addr]; // @[mem.scala 131:24]
  `else
  assign mem_mem_output_data = mem_mem_output_addr >= 4'ha ? _RAND_1[16:0] : mem[mem_mem_output_addr]; // @[mem.scala 131:24]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign mem__T_43_data = _T_40[16:0];
  assign mem__T_43_addr = wr_addr_3[3:0];
  assign mem__T_43_mask = 1'h1;
  assign mem__T_43_en = wr_valid_3;
  assign io_rd_data_bits = _T_49; // @[mem.scala 195:19]
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
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 10; initvar = initvar+1)
    mem[initvar] = _RAND_0[16:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  mem_mem_output_en_pipe_0 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  mem_mem_output_addr_pipe_0 = _RAND_3[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  rd_addr_reg_valid = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  rd_addr_reg_bits_1 = _RAND_5[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  rd_addr_reg_bits_0 = _RAND_6[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  mem_req_valid = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  wr_addr_reg_bits_1 = _RAND_8[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  wr_addr_reg_bits_0 = _RAND_9[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  wr_data_1_valid = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  wr_data_1_bits = _RAND_11[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  wr_data_2_valid = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  wr_data_2_bits = _RAND_13[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  wr_addr_2 = _RAND_14[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  wr_data_final = _RAND_15[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  wr_addr_3 = _RAND_16[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  wr_valid_3 = _RAND_17[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  _T_49 = _RAND_18[15:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(mem__T_43_en & mem__T_43_mask) begin
      mem[mem__T_43_addr] <= mem__T_43_data; // @[mem.scala 131:24]
    end
    mem_mem_output_en_pipe_0 <= rd_addr_reg_valid;
    if (rd_addr_reg_valid) begin
      mem_mem_output_addr_pipe_0 <= mem_rd_addr[3:0];
    end
    if (reset) begin
      rd_addr_reg_valid <= 1'h0;
    end else begin
      rd_addr_reg_valid <= io_rd_addr_valid;
    end
    if (reset) begin
      rd_addr_reg_bits_1 <= 16'h0;
    end else if (_T_14) begin
      rd_addr_reg_bits_1 <= 16'h0;
    end else if (_T_12) begin
      rd_addr_reg_bits_1 <= _T_11;
    end
    if (reset) begin
      rd_addr_reg_bits_0 <= 16'h0;
    end else if (_T_9) begin
      rd_addr_reg_bits_0 <= 16'h0;
    end else if (_T_7) begin
      rd_addr_reg_bits_0 <= _T_6;
    end
    if (reset) begin
      mem_req_valid <= 1'h0;
    end else begin
      mem_req_valid <= rd_addr_reg_valid;
    end
    if (reset) begin
      wr_addr_reg_bits_1 <= 16'h0;
    end else if (_T_30) begin
      wr_addr_reg_bits_1 <= 16'h0;
    end else if (_T_28) begin
      wr_addr_reg_bits_1 <= _T_27;
    end
    if (reset) begin
      wr_addr_reg_bits_0 <= 16'h0;
    end else if (_T_25) begin
      wr_addr_reg_bits_0 <= 16'h0;
    end else if (_T_23) begin
      wr_addr_reg_bits_0 <= _T_22;
    end
    if (reset) begin
      wr_data_1_valid <= 1'h0;
    end else begin
      wr_data_1_valid <= io_wr_data_valid;
    end
    if (reset) begin
      wr_data_1_bits <= 16'h0;
    end else begin
      wr_data_1_bits <= io_wr_data_bits;
    end
    if (reset) begin
      wr_data_2_valid <= 1'h0;
    end else begin
      wr_data_2_valid <= wr_data_1_valid;
    end
    if (reset) begin
      wr_data_2_bits <= 16'h0;
    end else begin
      wr_data_2_bits <= wr_data_1_bits;
    end
    if (reset) begin
      wr_addr_2 <= 16'h0;
    end else begin
      wr_addr_2 <= mem_wr_addr;
    end
    wr_data_final <= wr_data_2_bits;
    if (reset) begin
      wr_addr_3 <= 16'h0;
    end else begin
      wr_addr_3 <= wr_addr_2;
    end
    wr_valid_3 <= wr_data_2_valid;
    if (mem_req_valid) begin
      _T_49 <= mem_mem_output_data[15:0];
    end else begin
      _T_49 <= 16'h0;
    end
  end
endmodule
module MemController_4(
  input         clock,
  input         reset,
  input         io_rd_valid,
  input         io_wr_valid,
  output [15:0] io_rd_data_bits,
  input         io_wr_data_valid,
  input  [15:0] io_wr_data_bits
);
  wire  MultiDimMem_clock; // @[mem.scala 33:19]
  wire  MultiDimMem_reset; // @[mem.scala 33:19]
  wire  MultiDimMem_io_rd_addr_valid; // @[mem.scala 33:19]
  wire [1:0] MultiDimMem_io_rd_addr_bits_0; // @[mem.scala 33:19]
  wire [1:0] MultiDimMem_io_rd_addr_bits_1; // @[mem.scala 33:19]
  wire [15:0] MultiDimMem_io_rd_data_bits; // @[mem.scala 33:19]
  wire [1:0] MultiDimMem_io_wr_addr_bits_0; // @[mem.scala 33:19]
  wire [1:0] MultiDimMem_io_wr_addr_bits_1; // @[mem.scala 33:19]
  wire  MultiDimMem_io_wr_data_valid; // @[mem.scala 33:19]
  wire [15:0] MultiDimMem_io_wr_data_bits; // @[mem.scala 33:19]
  wire  MultiDimTime_clock; // @[mem.scala 34:23]
  wire  MultiDimTime_reset; // @[mem.scala 34:23]
  wire  MultiDimTime_io_in; // @[mem.scala 34:23]
  wire [1:0] MultiDimTime_io_out_0; // @[mem.scala 34:23]
  wire [1:0] MultiDimTime_io_out_1; // @[mem.scala 34:23]
  wire [17:0] MultiDimTime_io_index_1; // @[mem.scala 34:23]
  wire  MultiDimTime_1_clock; // @[mem.scala 35:23]
  wire  MultiDimTime_1_reset; // @[mem.scala 35:23]
  wire  MultiDimTime_1_io_in; // @[mem.scala 35:23]
  wire [1:0] MultiDimTime_1_io_out_0; // @[mem.scala 35:23]
  wire [1:0] MultiDimTime_1_io_out_1; // @[mem.scala 35:23]
  wire [17:0] MultiDimTime_1_io_index_1; // @[mem.scala 35:23]
  MultiDimMem_4 MultiDimMem ( // @[mem.scala 33:19]
    .clock(MultiDimMem_clock),
    .reset(MultiDimMem_reset),
    .io_rd_addr_valid(MultiDimMem_io_rd_addr_valid),
    .io_rd_addr_bits_0(MultiDimMem_io_rd_addr_bits_0),
    .io_rd_addr_bits_1(MultiDimMem_io_rd_addr_bits_1),
    .io_rd_data_bits(MultiDimMem_io_rd_data_bits),
    .io_wr_addr_bits_0(MultiDimMem_io_wr_addr_bits_0),
    .io_wr_addr_bits_1(MultiDimMem_io_wr_addr_bits_1),
    .io_wr_data_valid(MultiDimMem_io_wr_data_valid),
    .io_wr_data_bits(MultiDimMem_io_wr_data_bits)
  );
  MultiDimTime MultiDimTime ( // @[mem.scala 34:23]
    .clock(MultiDimTime_clock),
    .reset(MultiDimTime_reset),
    .io_in(MultiDimTime_io_in),
    .io_out_0(MultiDimTime_io_out_0),
    .io_out_1(MultiDimTime_io_out_1),
    .io_index_1(MultiDimTime_io_index_1)
  );
  MultiDimTime MultiDimTime_1 ( // @[mem.scala 35:23]
    .clock(MultiDimTime_1_clock),
    .reset(MultiDimTime_1_reset),
    .io_in(MultiDimTime_1_io_in),
    .io_out_0(MultiDimTime_1_io_out_0),
    .io_out_1(MultiDimTime_1_io_out_1),
    .io_index_1(MultiDimTime_1_io_index_1)
  );
  assign io_rd_data_bits = MultiDimMem_io_rd_data_bits; // @[mem.scala 53:14]
  assign MultiDimMem_clock = clock;
  assign MultiDimMem_reset = reset;
  assign MultiDimMem_io_rd_addr_valid = io_rd_valid; // @[mem.scala 50:21]
  assign MultiDimMem_io_rd_addr_bits_0 = MultiDimTime_1_io_out_0; // @[mem.scala 49:20]
  assign MultiDimMem_io_rd_addr_bits_1 = MultiDimTime_1_io_out_1; // @[mem.scala 49:20]
  assign MultiDimMem_io_wr_addr_bits_0 = MultiDimTime_io_out_0; // @[mem.scala 45:20]
  assign MultiDimMem_io_wr_addr_bits_1 = MultiDimTime_io_out_1; // @[mem.scala 45:20]
  assign MultiDimMem_io_wr_data_valid = io_wr_data_valid; // @[mem.scala 54:15]
  assign MultiDimMem_io_wr_data_bits = io_wr_data_bits; // @[mem.scala 54:15]
  assign MultiDimTime_clock = clock;
  assign MultiDimTime_reset = reset;
  assign MultiDimTime_io_in = io_wr_valid; // @[mem.scala 44:14]
  assign MultiDimTime_1_clock = clock;
  assign MultiDimTime_1_reset = reset;
  assign MultiDimTime_1_io_in = io_rd_valid; // @[mem.scala 48:14]
endmodule
module PEArray(
  input         clock,
  input         reset,
  input         io_data_2_in_0_valid,
  input         io_data_2_in_0_bits_valid,
  input  [15:0] io_data_2_in_0_bits_bits,
  input         io_data_2_in_1_valid,
  input         io_data_2_in_1_bits_valid,
  input  [15:0] io_data_2_in_1_bits_bits,
  input         io_data_2_in_2_valid,
  input         io_data_2_in_2_bits_valid,
  input  [15:0] io_data_2_in_2_bits_bits,
  input         io_data_2_in_3_valid,
  input         io_data_2_in_3_bits_valid,
  input  [15:0] io_data_2_in_3_bits_bits,
  input         io_data_1_in_0_valid,
  input         io_data_1_in_0_bits_valid,
  input  [15:0] io_data_1_in_0_bits_bits,
  input         io_data_1_in_1_valid,
  input         io_data_1_in_1_bits_valid,
  input  [15:0] io_data_1_in_1_bits_bits,
  input         io_data_1_in_2_valid,
  input         io_data_1_in_2_bits_valid,
  input  [15:0] io_data_1_in_2_bits_bits,
  input         io_data_1_in_3_valid,
  input         io_data_1_in_3_bits_valid,
  input  [15:0] io_data_1_in_3_bits_bits,
  output        io_data_0_out_0_valid,
  output [15:0] io_data_0_out_0_bits,
  output        io_data_0_out_1_valid,
  output [15:0] io_data_0_out_1_bits,
  output        io_data_0_out_2_valid,
  output [15:0] io_data_0_out_2_bits,
  output        io_data_0_out_3_valid,
  output [15:0] io_data_0_out_3_bits,
  input         io_exec_valid,
  input         io_out_valid
);
  wire  MultiDimTime_clock; // @[pearray.scala 63:25]
  wire  MultiDimTime_reset; // @[pearray.scala 63:25]
  wire  MultiDimTime_io_in; // @[pearray.scala 63:25]
  wire [1:0] MultiDimTime_io_out_0; // @[pearray.scala 63:25]
  wire [1:0] MultiDimTime_io_out_1; // @[pearray.scala 63:25]
  wire [17:0] MultiDimTime_io_index_1; // @[pearray.scala 63:25]
  wire  PE_clock; // @[pearray.scala 103:13]
  wire  PE_reset; // @[pearray.scala 103:13]
  wire [15:0] PE_io_data_2_in_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_io_data_2_out_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_io_data_1_in_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_io_data_1_out_bits; // @[pearray.scala 103:13]
  wire  PE_io_data_0_in_valid; // @[pearray.scala 103:13]
  wire [15:0] PE_io_data_0_in_bits; // @[pearray.scala 103:13]
  wire  PE_io_data_0_out_valid; // @[pearray.scala 103:13]
  wire [15:0] PE_io_data_0_out_bits; // @[pearray.scala 103:13]
  wire  PE_io_sig_stat2trans; // @[pearray.scala 103:13]
  wire  PE_1_clock; // @[pearray.scala 103:13]
  wire  PE_1_reset; // @[pearray.scala 103:13]
  wire [15:0] PE_1_io_data_2_in_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_1_io_data_2_out_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_1_io_data_1_in_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_1_io_data_1_out_bits; // @[pearray.scala 103:13]
  wire  PE_1_io_data_0_in_valid; // @[pearray.scala 103:13]
  wire [15:0] PE_1_io_data_0_in_bits; // @[pearray.scala 103:13]
  wire  PE_1_io_data_0_out_valid; // @[pearray.scala 103:13]
  wire [15:0] PE_1_io_data_0_out_bits; // @[pearray.scala 103:13]
  wire  PE_1_io_sig_stat2trans; // @[pearray.scala 103:13]
  wire  PE_2_clock; // @[pearray.scala 103:13]
  wire  PE_2_reset; // @[pearray.scala 103:13]
  wire [15:0] PE_2_io_data_2_in_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_2_io_data_2_out_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_2_io_data_1_in_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_2_io_data_1_out_bits; // @[pearray.scala 103:13]
  wire  PE_2_io_data_0_in_valid; // @[pearray.scala 103:13]
  wire [15:0] PE_2_io_data_0_in_bits; // @[pearray.scala 103:13]
  wire  PE_2_io_data_0_out_valid; // @[pearray.scala 103:13]
  wire [15:0] PE_2_io_data_0_out_bits; // @[pearray.scala 103:13]
  wire  PE_2_io_sig_stat2trans; // @[pearray.scala 103:13]
  wire  PE_3_clock; // @[pearray.scala 103:13]
  wire  PE_3_reset; // @[pearray.scala 103:13]
  wire [15:0] PE_3_io_data_2_in_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_3_io_data_2_out_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_3_io_data_1_in_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_3_io_data_1_out_bits; // @[pearray.scala 103:13]
  wire  PE_3_io_data_0_in_valid; // @[pearray.scala 103:13]
  wire [15:0] PE_3_io_data_0_in_bits; // @[pearray.scala 103:13]
  wire  PE_3_io_data_0_out_valid; // @[pearray.scala 103:13]
  wire [15:0] PE_3_io_data_0_out_bits; // @[pearray.scala 103:13]
  wire  PE_3_io_sig_stat2trans; // @[pearray.scala 103:13]
  wire  PE_4_clock; // @[pearray.scala 103:13]
  wire  PE_4_reset; // @[pearray.scala 103:13]
  wire [15:0] PE_4_io_data_2_in_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_4_io_data_2_out_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_4_io_data_1_in_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_4_io_data_1_out_bits; // @[pearray.scala 103:13]
  wire  PE_4_io_data_0_in_valid; // @[pearray.scala 103:13]
  wire [15:0] PE_4_io_data_0_in_bits; // @[pearray.scala 103:13]
  wire  PE_4_io_data_0_out_valid; // @[pearray.scala 103:13]
  wire [15:0] PE_4_io_data_0_out_bits; // @[pearray.scala 103:13]
  wire  PE_4_io_sig_stat2trans; // @[pearray.scala 103:13]
  wire  PE_5_clock; // @[pearray.scala 103:13]
  wire  PE_5_reset; // @[pearray.scala 103:13]
  wire [15:0] PE_5_io_data_2_in_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_5_io_data_2_out_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_5_io_data_1_in_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_5_io_data_1_out_bits; // @[pearray.scala 103:13]
  wire  PE_5_io_data_0_in_valid; // @[pearray.scala 103:13]
  wire [15:0] PE_5_io_data_0_in_bits; // @[pearray.scala 103:13]
  wire  PE_5_io_data_0_out_valid; // @[pearray.scala 103:13]
  wire [15:0] PE_5_io_data_0_out_bits; // @[pearray.scala 103:13]
  wire  PE_5_io_sig_stat2trans; // @[pearray.scala 103:13]
  wire  PE_6_clock; // @[pearray.scala 103:13]
  wire  PE_6_reset; // @[pearray.scala 103:13]
  wire [15:0] PE_6_io_data_2_in_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_6_io_data_2_out_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_6_io_data_1_in_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_6_io_data_1_out_bits; // @[pearray.scala 103:13]
  wire  PE_6_io_data_0_in_valid; // @[pearray.scala 103:13]
  wire [15:0] PE_6_io_data_0_in_bits; // @[pearray.scala 103:13]
  wire  PE_6_io_data_0_out_valid; // @[pearray.scala 103:13]
  wire [15:0] PE_6_io_data_0_out_bits; // @[pearray.scala 103:13]
  wire  PE_6_io_sig_stat2trans; // @[pearray.scala 103:13]
  wire  PE_7_clock; // @[pearray.scala 103:13]
  wire  PE_7_reset; // @[pearray.scala 103:13]
  wire [15:0] PE_7_io_data_2_in_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_7_io_data_2_out_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_7_io_data_1_in_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_7_io_data_1_out_bits; // @[pearray.scala 103:13]
  wire  PE_7_io_data_0_in_valid; // @[pearray.scala 103:13]
  wire [15:0] PE_7_io_data_0_in_bits; // @[pearray.scala 103:13]
  wire  PE_7_io_data_0_out_valid; // @[pearray.scala 103:13]
  wire [15:0] PE_7_io_data_0_out_bits; // @[pearray.scala 103:13]
  wire  PE_7_io_sig_stat2trans; // @[pearray.scala 103:13]
  wire  PE_8_clock; // @[pearray.scala 103:13]
  wire  PE_8_reset; // @[pearray.scala 103:13]
  wire [15:0] PE_8_io_data_2_in_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_8_io_data_2_out_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_8_io_data_1_in_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_8_io_data_1_out_bits; // @[pearray.scala 103:13]
  wire  PE_8_io_data_0_in_valid; // @[pearray.scala 103:13]
  wire [15:0] PE_8_io_data_0_in_bits; // @[pearray.scala 103:13]
  wire  PE_8_io_data_0_out_valid; // @[pearray.scala 103:13]
  wire [15:0] PE_8_io_data_0_out_bits; // @[pearray.scala 103:13]
  wire  PE_8_io_sig_stat2trans; // @[pearray.scala 103:13]
  wire  PE_9_clock; // @[pearray.scala 103:13]
  wire  PE_9_reset; // @[pearray.scala 103:13]
  wire [15:0] PE_9_io_data_2_in_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_9_io_data_2_out_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_9_io_data_1_in_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_9_io_data_1_out_bits; // @[pearray.scala 103:13]
  wire  PE_9_io_data_0_in_valid; // @[pearray.scala 103:13]
  wire [15:0] PE_9_io_data_0_in_bits; // @[pearray.scala 103:13]
  wire  PE_9_io_data_0_out_valid; // @[pearray.scala 103:13]
  wire [15:0] PE_9_io_data_0_out_bits; // @[pearray.scala 103:13]
  wire  PE_9_io_sig_stat2trans; // @[pearray.scala 103:13]
  wire  PE_10_clock; // @[pearray.scala 103:13]
  wire  PE_10_reset; // @[pearray.scala 103:13]
  wire [15:0] PE_10_io_data_2_in_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_10_io_data_2_out_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_10_io_data_1_in_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_10_io_data_1_out_bits; // @[pearray.scala 103:13]
  wire  PE_10_io_data_0_in_valid; // @[pearray.scala 103:13]
  wire [15:0] PE_10_io_data_0_in_bits; // @[pearray.scala 103:13]
  wire  PE_10_io_data_0_out_valid; // @[pearray.scala 103:13]
  wire [15:0] PE_10_io_data_0_out_bits; // @[pearray.scala 103:13]
  wire  PE_10_io_sig_stat2trans; // @[pearray.scala 103:13]
  wire  PE_11_clock; // @[pearray.scala 103:13]
  wire  PE_11_reset; // @[pearray.scala 103:13]
  wire [15:0] PE_11_io_data_2_in_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_11_io_data_2_out_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_11_io_data_1_in_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_11_io_data_1_out_bits; // @[pearray.scala 103:13]
  wire  PE_11_io_data_0_in_valid; // @[pearray.scala 103:13]
  wire [15:0] PE_11_io_data_0_in_bits; // @[pearray.scala 103:13]
  wire  PE_11_io_data_0_out_valid; // @[pearray.scala 103:13]
  wire [15:0] PE_11_io_data_0_out_bits; // @[pearray.scala 103:13]
  wire  PE_11_io_sig_stat2trans; // @[pearray.scala 103:13]
  wire  PE_12_clock; // @[pearray.scala 103:13]
  wire  PE_12_reset; // @[pearray.scala 103:13]
  wire [15:0] PE_12_io_data_2_in_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_12_io_data_2_out_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_12_io_data_1_in_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_12_io_data_1_out_bits; // @[pearray.scala 103:13]
  wire  PE_12_io_data_0_in_valid; // @[pearray.scala 103:13]
  wire [15:0] PE_12_io_data_0_in_bits; // @[pearray.scala 103:13]
  wire  PE_12_io_data_0_out_valid; // @[pearray.scala 103:13]
  wire [15:0] PE_12_io_data_0_out_bits; // @[pearray.scala 103:13]
  wire  PE_12_io_sig_stat2trans; // @[pearray.scala 103:13]
  wire  PE_13_clock; // @[pearray.scala 103:13]
  wire  PE_13_reset; // @[pearray.scala 103:13]
  wire [15:0] PE_13_io_data_2_in_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_13_io_data_2_out_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_13_io_data_1_in_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_13_io_data_1_out_bits; // @[pearray.scala 103:13]
  wire  PE_13_io_data_0_in_valid; // @[pearray.scala 103:13]
  wire [15:0] PE_13_io_data_0_in_bits; // @[pearray.scala 103:13]
  wire  PE_13_io_data_0_out_valid; // @[pearray.scala 103:13]
  wire [15:0] PE_13_io_data_0_out_bits; // @[pearray.scala 103:13]
  wire  PE_13_io_sig_stat2trans; // @[pearray.scala 103:13]
  wire  PE_14_clock; // @[pearray.scala 103:13]
  wire  PE_14_reset; // @[pearray.scala 103:13]
  wire [15:0] PE_14_io_data_2_in_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_14_io_data_2_out_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_14_io_data_1_in_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_14_io_data_1_out_bits; // @[pearray.scala 103:13]
  wire  PE_14_io_data_0_in_valid; // @[pearray.scala 103:13]
  wire [15:0] PE_14_io_data_0_in_bits; // @[pearray.scala 103:13]
  wire  PE_14_io_data_0_out_valid; // @[pearray.scala 103:13]
  wire [15:0] PE_14_io_data_0_out_bits; // @[pearray.scala 103:13]
  wire  PE_14_io_sig_stat2trans; // @[pearray.scala 103:13]
  wire  PE_15_clock; // @[pearray.scala 103:13]
  wire  PE_15_reset; // @[pearray.scala 103:13]
  wire [15:0] PE_15_io_data_2_in_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_15_io_data_2_out_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_15_io_data_1_in_bits; // @[pearray.scala 103:13]
  wire [15:0] PE_15_io_data_1_out_bits; // @[pearray.scala 103:13]
  wire  PE_15_io_data_0_in_valid; // @[pearray.scala 103:13]
  wire [15:0] PE_15_io_data_0_in_bits; // @[pearray.scala 103:13]
  wire  PE_15_io_data_0_out_valid; // @[pearray.scala 103:13]
  wire [15:0] PE_15_io_data_0_out_bits; // @[pearray.scala 103:13]
  wire  PE_15_io_sig_stat2trans; // @[pearray.scala 103:13]
  wire  PENetwork_io_to_pes_0_out_valid; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_io_to_pes_0_out_bits; // @[pearray.scala 137:13]
  wire  PENetwork_io_to_pes_1_in_valid; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_io_to_pes_1_in_bits; // @[pearray.scala 137:13]
  wire  PENetwork_io_to_pes_1_out_valid; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_io_to_pes_1_out_bits; // @[pearray.scala 137:13]
  wire  PENetwork_io_to_pes_2_in_valid; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_io_to_pes_2_in_bits; // @[pearray.scala 137:13]
  wire  PENetwork_io_to_pes_2_out_valid; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_io_to_pes_2_out_bits; // @[pearray.scala 137:13]
  wire  PENetwork_io_to_pes_3_in_valid; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_io_to_pes_3_in_bits; // @[pearray.scala 137:13]
  wire  PENetwork_io_to_pes_3_out_valid; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_io_to_pes_3_out_bits; // @[pearray.scala 137:13]
  wire  PENetwork_io_to_mem_valid; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_io_to_mem_bits; // @[pearray.scala 137:13]
  wire  PENetwork_1_io_to_pes_0_out_valid; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_1_io_to_pes_0_out_bits; // @[pearray.scala 137:13]
  wire  PENetwork_1_io_to_pes_1_in_valid; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_1_io_to_pes_1_in_bits; // @[pearray.scala 137:13]
  wire  PENetwork_1_io_to_pes_1_out_valid; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_1_io_to_pes_1_out_bits; // @[pearray.scala 137:13]
  wire  PENetwork_1_io_to_pes_2_in_valid; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_1_io_to_pes_2_in_bits; // @[pearray.scala 137:13]
  wire  PENetwork_1_io_to_pes_2_out_valid; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_1_io_to_pes_2_out_bits; // @[pearray.scala 137:13]
  wire  PENetwork_1_io_to_pes_3_in_valid; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_1_io_to_pes_3_in_bits; // @[pearray.scala 137:13]
  wire  PENetwork_1_io_to_pes_3_out_valid; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_1_io_to_pes_3_out_bits; // @[pearray.scala 137:13]
  wire  PENetwork_1_io_to_mem_valid; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_1_io_to_mem_bits; // @[pearray.scala 137:13]
  wire  PENetwork_2_io_to_pes_0_out_valid; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_2_io_to_pes_0_out_bits; // @[pearray.scala 137:13]
  wire  PENetwork_2_io_to_pes_1_in_valid; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_2_io_to_pes_1_in_bits; // @[pearray.scala 137:13]
  wire  PENetwork_2_io_to_pes_1_out_valid; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_2_io_to_pes_1_out_bits; // @[pearray.scala 137:13]
  wire  PENetwork_2_io_to_pes_2_in_valid; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_2_io_to_pes_2_in_bits; // @[pearray.scala 137:13]
  wire  PENetwork_2_io_to_pes_2_out_valid; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_2_io_to_pes_2_out_bits; // @[pearray.scala 137:13]
  wire  PENetwork_2_io_to_pes_3_in_valid; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_2_io_to_pes_3_in_bits; // @[pearray.scala 137:13]
  wire  PENetwork_2_io_to_pes_3_out_valid; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_2_io_to_pes_3_out_bits; // @[pearray.scala 137:13]
  wire  PENetwork_2_io_to_mem_valid; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_2_io_to_mem_bits; // @[pearray.scala 137:13]
  wire  PENetwork_3_io_to_pes_0_out_valid; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_3_io_to_pes_0_out_bits; // @[pearray.scala 137:13]
  wire  PENetwork_3_io_to_pes_1_in_valid; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_3_io_to_pes_1_in_bits; // @[pearray.scala 137:13]
  wire  PENetwork_3_io_to_pes_1_out_valid; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_3_io_to_pes_1_out_bits; // @[pearray.scala 137:13]
  wire  PENetwork_3_io_to_pes_2_in_valid; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_3_io_to_pes_2_in_bits; // @[pearray.scala 137:13]
  wire  PENetwork_3_io_to_pes_2_out_valid; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_3_io_to_pes_2_out_bits; // @[pearray.scala 137:13]
  wire  PENetwork_3_io_to_pes_3_in_valid; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_3_io_to_pes_3_in_bits; // @[pearray.scala 137:13]
  wire  PENetwork_3_io_to_pes_3_out_valid; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_3_io_to_pes_3_out_bits; // @[pearray.scala 137:13]
  wire  PENetwork_3_io_to_mem_valid; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_3_io_to_mem_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_4_io_to_pes_0_in_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_4_io_to_pes_0_out_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_4_io_to_pes_1_in_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_4_io_to_pes_1_out_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_4_io_to_pes_2_in_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_4_io_to_pes_2_out_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_4_io_to_pes_3_in_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_4_io_to_mem_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_5_io_to_pes_0_in_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_5_io_to_pes_0_out_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_5_io_to_pes_1_in_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_5_io_to_pes_1_out_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_5_io_to_pes_2_in_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_5_io_to_pes_2_out_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_5_io_to_pes_3_in_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_5_io_to_mem_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_6_io_to_pes_0_in_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_6_io_to_pes_0_out_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_6_io_to_pes_1_in_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_6_io_to_pes_1_out_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_6_io_to_pes_2_in_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_6_io_to_pes_2_out_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_6_io_to_pes_3_in_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_6_io_to_mem_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_7_io_to_pes_0_in_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_7_io_to_pes_0_out_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_7_io_to_pes_1_in_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_7_io_to_pes_1_out_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_7_io_to_pes_2_in_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_7_io_to_pes_2_out_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_7_io_to_pes_3_in_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_7_io_to_mem_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_8_io_to_pes_0_in_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_8_io_to_pes_0_out_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_8_io_to_pes_1_in_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_8_io_to_pes_1_out_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_8_io_to_pes_2_in_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_8_io_to_pes_2_out_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_8_io_to_pes_3_in_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_8_io_to_mem_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_9_io_to_pes_0_in_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_9_io_to_pes_0_out_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_9_io_to_pes_1_in_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_9_io_to_pes_1_out_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_9_io_to_pes_2_in_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_9_io_to_pes_2_out_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_9_io_to_pes_3_in_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_9_io_to_mem_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_10_io_to_pes_0_in_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_10_io_to_pes_0_out_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_10_io_to_pes_1_in_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_10_io_to_pes_1_out_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_10_io_to_pes_2_in_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_10_io_to_pes_2_out_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_10_io_to_pes_3_in_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_10_io_to_mem_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_11_io_to_pes_0_in_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_11_io_to_pes_0_out_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_11_io_to_pes_1_in_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_11_io_to_pes_1_out_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_11_io_to_pes_2_in_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_11_io_to_pes_2_out_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_11_io_to_pes_3_in_bits; // @[pearray.scala 137:13]
  wire [15:0] PENetwork_11_io_to_mem_bits; // @[pearray.scala 137:13]
  wire  MemController_clock; // @[pearray.scala 212:15]
  wire  MemController_reset; // @[pearray.scala 212:15]
  wire  MemController_io_rd_valid; // @[pearray.scala 212:15]
  wire  MemController_io_wr_valid; // @[pearray.scala 212:15]
  wire  MemController_io_rd_data_valid; // @[pearray.scala 212:15]
  wire [15:0] MemController_io_rd_data_bits; // @[pearray.scala 212:15]
  wire  MemController_io_wr_data_valid; // @[pearray.scala 212:15]
  wire [15:0] MemController_io_wr_data_bits; // @[pearray.scala 212:15]
  wire  MemController_1_clock; // @[pearray.scala 212:15]
  wire  MemController_1_reset; // @[pearray.scala 212:15]
  wire  MemController_1_io_rd_valid; // @[pearray.scala 212:15]
  wire  MemController_1_io_wr_valid; // @[pearray.scala 212:15]
  wire  MemController_1_io_rd_data_valid; // @[pearray.scala 212:15]
  wire [15:0] MemController_1_io_rd_data_bits; // @[pearray.scala 212:15]
  wire  MemController_1_io_wr_data_valid; // @[pearray.scala 212:15]
  wire [15:0] MemController_1_io_wr_data_bits; // @[pearray.scala 212:15]
  wire  MemController_2_clock; // @[pearray.scala 212:15]
  wire  MemController_2_reset; // @[pearray.scala 212:15]
  wire  MemController_2_io_rd_valid; // @[pearray.scala 212:15]
  wire  MemController_2_io_wr_valid; // @[pearray.scala 212:15]
  wire  MemController_2_io_rd_data_valid; // @[pearray.scala 212:15]
  wire [15:0] MemController_2_io_rd_data_bits; // @[pearray.scala 212:15]
  wire  MemController_2_io_wr_data_valid; // @[pearray.scala 212:15]
  wire [15:0] MemController_2_io_wr_data_bits; // @[pearray.scala 212:15]
  wire  MemController_3_clock; // @[pearray.scala 212:15]
  wire  MemController_3_reset; // @[pearray.scala 212:15]
  wire  MemController_3_io_rd_valid; // @[pearray.scala 212:15]
  wire  MemController_3_io_wr_valid; // @[pearray.scala 212:15]
  wire  MemController_3_io_rd_data_valid; // @[pearray.scala 212:15]
  wire [15:0] MemController_3_io_rd_data_bits; // @[pearray.scala 212:15]
  wire  MemController_3_io_wr_data_valid; // @[pearray.scala 212:15]
  wire [15:0] MemController_3_io_wr_data_bits; // @[pearray.scala 212:15]
  wire  MemController_4_clock; // @[pearray.scala 210:15]
  wire  MemController_4_reset; // @[pearray.scala 210:15]
  wire  MemController_4_io_rd_valid; // @[pearray.scala 210:15]
  wire  MemController_4_io_wr_valid; // @[pearray.scala 210:15]
  wire [15:0] MemController_4_io_rd_data_bits; // @[pearray.scala 210:15]
  wire  MemController_4_io_wr_data_valid; // @[pearray.scala 210:15]
  wire [15:0] MemController_4_io_wr_data_bits; // @[pearray.scala 210:15]
  wire  MemController_5_clock; // @[pearray.scala 210:15]
  wire  MemController_5_reset; // @[pearray.scala 210:15]
  wire  MemController_5_io_rd_valid; // @[pearray.scala 210:15]
  wire  MemController_5_io_wr_valid; // @[pearray.scala 210:15]
  wire [15:0] MemController_5_io_rd_data_bits; // @[pearray.scala 210:15]
  wire  MemController_5_io_wr_data_valid; // @[pearray.scala 210:15]
  wire [15:0] MemController_5_io_wr_data_bits; // @[pearray.scala 210:15]
  wire  MemController_6_clock; // @[pearray.scala 210:15]
  wire  MemController_6_reset; // @[pearray.scala 210:15]
  wire  MemController_6_io_rd_valid; // @[pearray.scala 210:15]
  wire  MemController_6_io_wr_valid; // @[pearray.scala 210:15]
  wire [15:0] MemController_6_io_rd_data_bits; // @[pearray.scala 210:15]
  wire  MemController_6_io_wr_data_valid; // @[pearray.scala 210:15]
  wire [15:0] MemController_6_io_wr_data_bits; // @[pearray.scala 210:15]
  wire  MemController_7_clock; // @[pearray.scala 210:15]
  wire  MemController_7_reset; // @[pearray.scala 210:15]
  wire  MemController_7_io_rd_valid; // @[pearray.scala 210:15]
  wire  MemController_7_io_wr_valid; // @[pearray.scala 210:15]
  wire [15:0] MemController_7_io_rd_data_bits; // @[pearray.scala 210:15]
  wire  MemController_7_io_wr_data_valid; // @[pearray.scala 210:15]
  wire [15:0] MemController_7_io_wr_data_bits; // @[pearray.scala 210:15]
  wire  MemController_8_clock; // @[pearray.scala 210:15]
  wire  MemController_8_reset; // @[pearray.scala 210:15]
  wire  MemController_8_io_rd_valid; // @[pearray.scala 210:15]
  wire  MemController_8_io_wr_valid; // @[pearray.scala 210:15]
  wire [15:0] MemController_8_io_rd_data_bits; // @[pearray.scala 210:15]
  wire  MemController_8_io_wr_data_valid; // @[pearray.scala 210:15]
  wire [15:0] MemController_8_io_wr_data_bits; // @[pearray.scala 210:15]
  wire  MemController_9_clock; // @[pearray.scala 210:15]
  wire  MemController_9_reset; // @[pearray.scala 210:15]
  wire  MemController_9_io_rd_valid; // @[pearray.scala 210:15]
  wire  MemController_9_io_wr_valid; // @[pearray.scala 210:15]
  wire [15:0] MemController_9_io_rd_data_bits; // @[pearray.scala 210:15]
  wire  MemController_9_io_wr_data_valid; // @[pearray.scala 210:15]
  wire [15:0] MemController_9_io_wr_data_bits; // @[pearray.scala 210:15]
  wire  MemController_10_clock; // @[pearray.scala 210:15]
  wire  MemController_10_reset; // @[pearray.scala 210:15]
  wire  MemController_10_io_rd_valid; // @[pearray.scala 210:15]
  wire  MemController_10_io_wr_valid; // @[pearray.scala 210:15]
  wire [15:0] MemController_10_io_rd_data_bits; // @[pearray.scala 210:15]
  wire  MemController_10_io_wr_data_valid; // @[pearray.scala 210:15]
  wire [15:0] MemController_10_io_wr_data_bits; // @[pearray.scala 210:15]
  wire  MemController_11_clock; // @[pearray.scala 210:15]
  wire  MemController_11_reset; // @[pearray.scala 210:15]
  wire  MemController_11_io_rd_valid; // @[pearray.scala 210:15]
  wire  MemController_11_io_wr_valid; // @[pearray.scala 210:15]
  wire [15:0] MemController_11_io_rd_data_bits; // @[pearray.scala 210:15]
  wire  MemController_11_io_wr_data_valid; // @[pearray.scala 210:15]
  wire [15:0] MemController_11_io_wr_data_bits; // @[pearray.scala 210:15]
  wire  _T_3 = MultiDimTime_io_index_1 == 18'h1; // @[pearray.scala 179:73]
  reg  _T_10_0; // @[pearray.scala 51:27]
  reg [31:0] _RAND_0;
  reg  _T_10_1; // @[pearray.scala 51:27]
  reg [31:0] _RAND_1;
  reg  _T_10_2; // @[pearray.scala 51:27]
  reg [31:0] _RAND_2;
  reg  _T_10_3; // @[pearray.scala 51:27]
  reg [31:0] _RAND_3;
  wire  _T_11 = MultiDimTime_io_index_1 == 18'h2; // @[pearray.scala 179:73]
  reg  _T_18_0; // @[pearray.scala 51:27]
  reg [31:0] _RAND_4;
  reg  _T_18_1; // @[pearray.scala 51:27]
  reg [31:0] _RAND_5;
  reg  _T_18_2; // @[pearray.scala 51:27]
  reg [31:0] _RAND_6;
  reg  _T_18_3; // @[pearray.scala 51:27]
  reg [31:0] _RAND_7;
  wire  _T_19 = MultiDimTime_io_index_1 == 18'h3; // @[pearray.scala 179:73]
  reg  _T_26_0; // @[pearray.scala 51:27]
  reg [31:0] _RAND_8;
  reg  _T_26_1; // @[pearray.scala 51:27]
  reg [31:0] _RAND_9;
  reg  _T_26_2; // @[pearray.scala 51:27]
  reg [31:0] _RAND_10;
  reg  _T_26_3; // @[pearray.scala 51:27]
  reg [31:0] _RAND_11;
  wire  _T_27 = MultiDimTime_io_index_1 == 18'h4; // @[pearray.scala 179:73]
  reg  _T_34_0; // @[pearray.scala 51:27]
  reg [31:0] _RAND_12;
  reg  _T_34_1; // @[pearray.scala 51:27]
  reg [31:0] _RAND_13;
  reg  _T_34_2; // @[pearray.scala 51:27]
  reg [31:0] _RAND_14;
  reg  _T_34_3; // @[pearray.scala 51:27]
  reg [31:0] _RAND_15;
  reg  _T_42_0; // @[pearray.scala 51:27]
  reg [31:0] _RAND_16;
  reg  _T_42_1; // @[pearray.scala 51:27]
  reg [31:0] _RAND_17;
  reg  _T_42_2; // @[pearray.scala 51:27]
  reg [31:0] _RAND_18;
  reg  _T_42_3; // @[pearray.scala 51:27]
  reg [31:0] _RAND_19;
  reg  _T_50_0; // @[pearray.scala 51:27]
  reg [31:0] _RAND_20;
  reg  _T_50_1; // @[pearray.scala 51:27]
  reg [31:0] _RAND_21;
  reg  _T_50_2; // @[pearray.scala 51:27]
  reg [31:0] _RAND_22;
  reg  _T_50_3; // @[pearray.scala 51:27]
  reg [31:0] _RAND_23;
  reg  _T_58_0; // @[pearray.scala 51:27]
  reg [31:0] _RAND_24;
  reg  _T_58_1; // @[pearray.scala 51:27]
  reg [31:0] _RAND_25;
  reg  _T_58_2; // @[pearray.scala 51:27]
  reg [31:0] _RAND_26;
  reg  _T_58_3; // @[pearray.scala 51:27]
  reg [31:0] _RAND_27;
  wire  _T_59 = MultiDimTime_io_index_1 == 18'h5; // @[pearray.scala 179:73]
  reg  _T_66_0; // @[pearray.scala 51:27]
  reg [31:0] _RAND_28;
  reg  _T_66_1; // @[pearray.scala 51:27]
  reg [31:0] _RAND_29;
  reg  _T_66_2; // @[pearray.scala 51:27]
  reg [31:0] _RAND_30;
  reg  _T_66_3; // @[pearray.scala 51:27]
  reg [31:0] _RAND_31;
  reg  _T_74_0; // @[pearray.scala 51:27]
  reg [31:0] _RAND_32;
  reg  _T_74_1; // @[pearray.scala 51:27]
  reg [31:0] _RAND_33;
  reg  _T_74_2; // @[pearray.scala 51:27]
  reg [31:0] _RAND_34;
  reg  _T_74_3; // @[pearray.scala 51:27]
  reg [31:0] _RAND_35;
  reg  _T_82_0; // @[pearray.scala 51:27]
  reg [31:0] _RAND_36;
  reg  _T_82_1; // @[pearray.scala 51:27]
  reg [31:0] _RAND_37;
  reg  _T_82_2; // @[pearray.scala 51:27]
  reg [31:0] _RAND_38;
  reg  _T_82_3; // @[pearray.scala 51:27]
  reg [31:0] _RAND_39;
  reg  _T_90_0; // @[pearray.scala 51:27]
  reg [31:0] _RAND_40;
  reg  _T_90_1; // @[pearray.scala 51:27]
  reg [31:0] _RAND_41;
  reg  _T_90_2; // @[pearray.scala 51:27]
  reg [31:0] _RAND_42;
  reg  _T_90_3; // @[pearray.scala 51:27]
  reg [31:0] _RAND_43;
  wire  _T_91 = MultiDimTime_io_index_1 == 18'h6; // @[pearray.scala 179:73]
  reg  _T_98_0; // @[pearray.scala 51:27]
  reg [31:0] _RAND_44;
  reg  _T_98_1; // @[pearray.scala 51:27]
  reg [31:0] _RAND_45;
  reg  _T_98_2; // @[pearray.scala 51:27]
  reg [31:0] _RAND_46;
  reg  _T_98_3; // @[pearray.scala 51:27]
  reg [31:0] _RAND_47;
  reg  _T_106_0; // @[pearray.scala 51:27]
  reg [31:0] _RAND_48;
  reg  _T_106_1; // @[pearray.scala 51:27]
  reg [31:0] _RAND_49;
  reg  _T_106_2; // @[pearray.scala 51:27]
  reg [31:0] _RAND_50;
  reg  _T_106_3; // @[pearray.scala 51:27]
  reg [31:0] _RAND_51;
  reg  _T_114_0; // @[pearray.scala 51:27]
  reg [31:0] _RAND_52;
  reg  _T_114_1; // @[pearray.scala 51:27]
  reg [31:0] _RAND_53;
  reg  _T_114_2; // @[pearray.scala 51:27]
  reg [31:0] _RAND_54;
  reg  _T_114_3; // @[pearray.scala 51:27]
  reg [31:0] _RAND_55;
  reg  _T_122_0; // @[pearray.scala 51:27]
  reg [31:0] _RAND_56;
  reg  _T_122_1; // @[pearray.scala 51:27]
  reg [31:0] _RAND_57;
  reg  _T_122_2; // @[pearray.scala 51:27]
  reg [31:0] _RAND_58;
  reg  _T_122_3; // @[pearray.scala 51:27]
  reg [31:0] _RAND_59;
  wire  _T_123 = MultiDimTime_io_index_1 == 18'h7; // @[pearray.scala 179:73]
  reg  _T_130_0; // @[pearray.scala 51:27]
  reg [31:0] _RAND_60;
  reg  _T_130_1; // @[pearray.scala 51:27]
  reg [31:0] _RAND_61;
  reg  _T_130_2; // @[pearray.scala 51:27]
  reg [31:0] _RAND_62;
  reg  _T_130_3; // @[pearray.scala 51:27]
  reg [31:0] _RAND_63;
  reg  _T_134_0; // @[pearray.scala 225:27]
  reg [31:0] _RAND_64;
  reg  _T_134_1; // @[pearray.scala 225:27]
  reg [31:0] _RAND_65;
  reg  _T_134_2; // @[pearray.scala 225:27]
  reg [31:0] _RAND_66;
  reg  _T_136_0; // @[pearray.scala 225:27]
  reg [31:0] _RAND_67;
  reg  _T_136_1; // @[pearray.scala 225:27]
  reg [31:0] _RAND_68;
  reg  _T_136_2; // @[pearray.scala 225:27]
  reg [31:0] _RAND_69;
  MultiDimTime MultiDimTime ( // @[pearray.scala 63:25]
    .clock(MultiDimTime_clock),
    .reset(MultiDimTime_reset),
    .io_in(MultiDimTime_io_in),
    .io_out_0(MultiDimTime_io_out_0),
    .io_out_1(MultiDimTime_io_out_1),
    .io_index_1(MultiDimTime_io_index_1)
  );
  PE PE ( // @[pearray.scala 103:13]
    .clock(PE_clock),
    .reset(PE_reset),
    .io_data_2_in_bits(PE_io_data_2_in_bits),
    .io_data_2_out_bits(PE_io_data_2_out_bits),
    .io_data_1_in_bits(PE_io_data_1_in_bits),
    .io_data_1_out_bits(PE_io_data_1_out_bits),
    .io_data_0_in_valid(PE_io_data_0_in_valid),
    .io_data_0_in_bits(PE_io_data_0_in_bits),
    .io_data_0_out_valid(PE_io_data_0_out_valid),
    .io_data_0_out_bits(PE_io_data_0_out_bits),
    .io_sig_stat2trans(PE_io_sig_stat2trans)
  );
  PE PE_1 ( // @[pearray.scala 103:13]
    .clock(PE_1_clock),
    .reset(PE_1_reset),
    .io_data_2_in_bits(PE_1_io_data_2_in_bits),
    .io_data_2_out_bits(PE_1_io_data_2_out_bits),
    .io_data_1_in_bits(PE_1_io_data_1_in_bits),
    .io_data_1_out_bits(PE_1_io_data_1_out_bits),
    .io_data_0_in_valid(PE_1_io_data_0_in_valid),
    .io_data_0_in_bits(PE_1_io_data_0_in_bits),
    .io_data_0_out_valid(PE_1_io_data_0_out_valid),
    .io_data_0_out_bits(PE_1_io_data_0_out_bits),
    .io_sig_stat2trans(PE_1_io_sig_stat2trans)
  );
  PE PE_2 ( // @[pearray.scala 103:13]
    .clock(PE_2_clock),
    .reset(PE_2_reset),
    .io_data_2_in_bits(PE_2_io_data_2_in_bits),
    .io_data_2_out_bits(PE_2_io_data_2_out_bits),
    .io_data_1_in_bits(PE_2_io_data_1_in_bits),
    .io_data_1_out_bits(PE_2_io_data_1_out_bits),
    .io_data_0_in_valid(PE_2_io_data_0_in_valid),
    .io_data_0_in_bits(PE_2_io_data_0_in_bits),
    .io_data_0_out_valid(PE_2_io_data_0_out_valid),
    .io_data_0_out_bits(PE_2_io_data_0_out_bits),
    .io_sig_stat2trans(PE_2_io_sig_stat2trans)
  );
  PE PE_3 ( // @[pearray.scala 103:13]
    .clock(PE_3_clock),
    .reset(PE_3_reset),
    .io_data_2_in_bits(PE_3_io_data_2_in_bits),
    .io_data_2_out_bits(PE_3_io_data_2_out_bits),
    .io_data_1_in_bits(PE_3_io_data_1_in_bits),
    .io_data_1_out_bits(PE_3_io_data_1_out_bits),
    .io_data_0_in_valid(PE_3_io_data_0_in_valid),
    .io_data_0_in_bits(PE_3_io_data_0_in_bits),
    .io_data_0_out_valid(PE_3_io_data_0_out_valid),
    .io_data_0_out_bits(PE_3_io_data_0_out_bits),
    .io_sig_stat2trans(PE_3_io_sig_stat2trans)
  );
  PE PE_4 ( // @[pearray.scala 103:13]
    .clock(PE_4_clock),
    .reset(PE_4_reset),
    .io_data_2_in_bits(PE_4_io_data_2_in_bits),
    .io_data_2_out_bits(PE_4_io_data_2_out_bits),
    .io_data_1_in_bits(PE_4_io_data_1_in_bits),
    .io_data_1_out_bits(PE_4_io_data_1_out_bits),
    .io_data_0_in_valid(PE_4_io_data_0_in_valid),
    .io_data_0_in_bits(PE_4_io_data_0_in_bits),
    .io_data_0_out_valid(PE_4_io_data_0_out_valid),
    .io_data_0_out_bits(PE_4_io_data_0_out_bits),
    .io_sig_stat2trans(PE_4_io_sig_stat2trans)
  );
  PE PE_5 ( // @[pearray.scala 103:13]
    .clock(PE_5_clock),
    .reset(PE_5_reset),
    .io_data_2_in_bits(PE_5_io_data_2_in_bits),
    .io_data_2_out_bits(PE_5_io_data_2_out_bits),
    .io_data_1_in_bits(PE_5_io_data_1_in_bits),
    .io_data_1_out_bits(PE_5_io_data_1_out_bits),
    .io_data_0_in_valid(PE_5_io_data_0_in_valid),
    .io_data_0_in_bits(PE_5_io_data_0_in_bits),
    .io_data_0_out_valid(PE_5_io_data_0_out_valid),
    .io_data_0_out_bits(PE_5_io_data_0_out_bits),
    .io_sig_stat2trans(PE_5_io_sig_stat2trans)
  );
  PE PE_6 ( // @[pearray.scala 103:13]
    .clock(PE_6_clock),
    .reset(PE_6_reset),
    .io_data_2_in_bits(PE_6_io_data_2_in_bits),
    .io_data_2_out_bits(PE_6_io_data_2_out_bits),
    .io_data_1_in_bits(PE_6_io_data_1_in_bits),
    .io_data_1_out_bits(PE_6_io_data_1_out_bits),
    .io_data_0_in_valid(PE_6_io_data_0_in_valid),
    .io_data_0_in_bits(PE_6_io_data_0_in_bits),
    .io_data_0_out_valid(PE_6_io_data_0_out_valid),
    .io_data_0_out_bits(PE_6_io_data_0_out_bits),
    .io_sig_stat2trans(PE_6_io_sig_stat2trans)
  );
  PE PE_7 ( // @[pearray.scala 103:13]
    .clock(PE_7_clock),
    .reset(PE_7_reset),
    .io_data_2_in_bits(PE_7_io_data_2_in_bits),
    .io_data_2_out_bits(PE_7_io_data_2_out_bits),
    .io_data_1_in_bits(PE_7_io_data_1_in_bits),
    .io_data_1_out_bits(PE_7_io_data_1_out_bits),
    .io_data_0_in_valid(PE_7_io_data_0_in_valid),
    .io_data_0_in_bits(PE_7_io_data_0_in_bits),
    .io_data_0_out_valid(PE_7_io_data_0_out_valid),
    .io_data_0_out_bits(PE_7_io_data_0_out_bits),
    .io_sig_stat2trans(PE_7_io_sig_stat2trans)
  );
  PE PE_8 ( // @[pearray.scala 103:13]
    .clock(PE_8_clock),
    .reset(PE_8_reset),
    .io_data_2_in_bits(PE_8_io_data_2_in_bits),
    .io_data_2_out_bits(PE_8_io_data_2_out_bits),
    .io_data_1_in_bits(PE_8_io_data_1_in_bits),
    .io_data_1_out_bits(PE_8_io_data_1_out_bits),
    .io_data_0_in_valid(PE_8_io_data_0_in_valid),
    .io_data_0_in_bits(PE_8_io_data_0_in_bits),
    .io_data_0_out_valid(PE_8_io_data_0_out_valid),
    .io_data_0_out_bits(PE_8_io_data_0_out_bits),
    .io_sig_stat2trans(PE_8_io_sig_stat2trans)
  );
  PE PE_9 ( // @[pearray.scala 103:13]
    .clock(PE_9_clock),
    .reset(PE_9_reset),
    .io_data_2_in_bits(PE_9_io_data_2_in_bits),
    .io_data_2_out_bits(PE_9_io_data_2_out_bits),
    .io_data_1_in_bits(PE_9_io_data_1_in_bits),
    .io_data_1_out_bits(PE_9_io_data_1_out_bits),
    .io_data_0_in_valid(PE_9_io_data_0_in_valid),
    .io_data_0_in_bits(PE_9_io_data_0_in_bits),
    .io_data_0_out_valid(PE_9_io_data_0_out_valid),
    .io_data_0_out_bits(PE_9_io_data_0_out_bits),
    .io_sig_stat2trans(PE_9_io_sig_stat2trans)
  );
  PE PE_10 ( // @[pearray.scala 103:13]
    .clock(PE_10_clock),
    .reset(PE_10_reset),
    .io_data_2_in_bits(PE_10_io_data_2_in_bits),
    .io_data_2_out_bits(PE_10_io_data_2_out_bits),
    .io_data_1_in_bits(PE_10_io_data_1_in_bits),
    .io_data_1_out_bits(PE_10_io_data_1_out_bits),
    .io_data_0_in_valid(PE_10_io_data_0_in_valid),
    .io_data_0_in_bits(PE_10_io_data_0_in_bits),
    .io_data_0_out_valid(PE_10_io_data_0_out_valid),
    .io_data_0_out_bits(PE_10_io_data_0_out_bits),
    .io_sig_stat2trans(PE_10_io_sig_stat2trans)
  );
  PE PE_11 ( // @[pearray.scala 103:13]
    .clock(PE_11_clock),
    .reset(PE_11_reset),
    .io_data_2_in_bits(PE_11_io_data_2_in_bits),
    .io_data_2_out_bits(PE_11_io_data_2_out_bits),
    .io_data_1_in_bits(PE_11_io_data_1_in_bits),
    .io_data_1_out_bits(PE_11_io_data_1_out_bits),
    .io_data_0_in_valid(PE_11_io_data_0_in_valid),
    .io_data_0_in_bits(PE_11_io_data_0_in_bits),
    .io_data_0_out_valid(PE_11_io_data_0_out_valid),
    .io_data_0_out_bits(PE_11_io_data_0_out_bits),
    .io_sig_stat2trans(PE_11_io_sig_stat2trans)
  );
  PE PE_12 ( // @[pearray.scala 103:13]
    .clock(PE_12_clock),
    .reset(PE_12_reset),
    .io_data_2_in_bits(PE_12_io_data_2_in_bits),
    .io_data_2_out_bits(PE_12_io_data_2_out_bits),
    .io_data_1_in_bits(PE_12_io_data_1_in_bits),
    .io_data_1_out_bits(PE_12_io_data_1_out_bits),
    .io_data_0_in_valid(PE_12_io_data_0_in_valid),
    .io_data_0_in_bits(PE_12_io_data_0_in_bits),
    .io_data_0_out_valid(PE_12_io_data_0_out_valid),
    .io_data_0_out_bits(PE_12_io_data_0_out_bits),
    .io_sig_stat2trans(PE_12_io_sig_stat2trans)
  );
  PE PE_13 ( // @[pearray.scala 103:13]
    .clock(PE_13_clock),
    .reset(PE_13_reset),
    .io_data_2_in_bits(PE_13_io_data_2_in_bits),
    .io_data_2_out_bits(PE_13_io_data_2_out_bits),
    .io_data_1_in_bits(PE_13_io_data_1_in_bits),
    .io_data_1_out_bits(PE_13_io_data_1_out_bits),
    .io_data_0_in_valid(PE_13_io_data_0_in_valid),
    .io_data_0_in_bits(PE_13_io_data_0_in_bits),
    .io_data_0_out_valid(PE_13_io_data_0_out_valid),
    .io_data_0_out_bits(PE_13_io_data_0_out_bits),
    .io_sig_stat2trans(PE_13_io_sig_stat2trans)
  );
  PE PE_14 ( // @[pearray.scala 103:13]
    .clock(PE_14_clock),
    .reset(PE_14_reset),
    .io_data_2_in_bits(PE_14_io_data_2_in_bits),
    .io_data_2_out_bits(PE_14_io_data_2_out_bits),
    .io_data_1_in_bits(PE_14_io_data_1_in_bits),
    .io_data_1_out_bits(PE_14_io_data_1_out_bits),
    .io_data_0_in_valid(PE_14_io_data_0_in_valid),
    .io_data_0_in_bits(PE_14_io_data_0_in_bits),
    .io_data_0_out_valid(PE_14_io_data_0_out_valid),
    .io_data_0_out_bits(PE_14_io_data_0_out_bits),
    .io_sig_stat2trans(PE_14_io_sig_stat2trans)
  );
  PE PE_15 ( // @[pearray.scala 103:13]
    .clock(PE_15_clock),
    .reset(PE_15_reset),
    .io_data_2_in_bits(PE_15_io_data_2_in_bits),
    .io_data_2_out_bits(PE_15_io_data_2_out_bits),
    .io_data_1_in_bits(PE_15_io_data_1_in_bits),
    .io_data_1_out_bits(PE_15_io_data_1_out_bits),
    .io_data_0_in_valid(PE_15_io_data_0_in_valid),
    .io_data_0_in_bits(PE_15_io_data_0_in_bits),
    .io_data_0_out_valid(PE_15_io_data_0_out_valid),
    .io_data_0_out_bits(PE_15_io_data_0_out_bits),
    .io_sig_stat2trans(PE_15_io_sig_stat2trans)
  );
  PENetwork PENetwork ( // @[pearray.scala 137:13]
    .io_to_pes_0_out_valid(PENetwork_io_to_pes_0_out_valid),
    .io_to_pes_0_out_bits(PENetwork_io_to_pes_0_out_bits),
    .io_to_pes_1_in_valid(PENetwork_io_to_pes_1_in_valid),
    .io_to_pes_1_in_bits(PENetwork_io_to_pes_1_in_bits),
    .io_to_pes_1_out_valid(PENetwork_io_to_pes_1_out_valid),
    .io_to_pes_1_out_bits(PENetwork_io_to_pes_1_out_bits),
    .io_to_pes_2_in_valid(PENetwork_io_to_pes_2_in_valid),
    .io_to_pes_2_in_bits(PENetwork_io_to_pes_2_in_bits),
    .io_to_pes_2_out_valid(PENetwork_io_to_pes_2_out_valid),
    .io_to_pes_2_out_bits(PENetwork_io_to_pes_2_out_bits),
    .io_to_pes_3_in_valid(PENetwork_io_to_pes_3_in_valid),
    .io_to_pes_3_in_bits(PENetwork_io_to_pes_3_in_bits),
    .io_to_pes_3_out_valid(PENetwork_io_to_pes_3_out_valid),
    .io_to_pes_3_out_bits(PENetwork_io_to_pes_3_out_bits),
    .io_to_mem_valid(PENetwork_io_to_mem_valid),
    .io_to_mem_bits(PENetwork_io_to_mem_bits)
  );
  PENetwork PENetwork_1 ( // @[pearray.scala 137:13]
    .io_to_pes_0_out_valid(PENetwork_1_io_to_pes_0_out_valid),
    .io_to_pes_0_out_bits(PENetwork_1_io_to_pes_0_out_bits),
    .io_to_pes_1_in_valid(PENetwork_1_io_to_pes_1_in_valid),
    .io_to_pes_1_in_bits(PENetwork_1_io_to_pes_1_in_bits),
    .io_to_pes_1_out_valid(PENetwork_1_io_to_pes_1_out_valid),
    .io_to_pes_1_out_bits(PENetwork_1_io_to_pes_1_out_bits),
    .io_to_pes_2_in_valid(PENetwork_1_io_to_pes_2_in_valid),
    .io_to_pes_2_in_bits(PENetwork_1_io_to_pes_2_in_bits),
    .io_to_pes_2_out_valid(PENetwork_1_io_to_pes_2_out_valid),
    .io_to_pes_2_out_bits(PENetwork_1_io_to_pes_2_out_bits),
    .io_to_pes_3_in_valid(PENetwork_1_io_to_pes_3_in_valid),
    .io_to_pes_3_in_bits(PENetwork_1_io_to_pes_3_in_bits),
    .io_to_pes_3_out_valid(PENetwork_1_io_to_pes_3_out_valid),
    .io_to_pes_3_out_bits(PENetwork_1_io_to_pes_3_out_bits),
    .io_to_mem_valid(PENetwork_1_io_to_mem_valid),
    .io_to_mem_bits(PENetwork_1_io_to_mem_bits)
  );
  PENetwork PENetwork_2 ( // @[pearray.scala 137:13]
    .io_to_pes_0_out_valid(PENetwork_2_io_to_pes_0_out_valid),
    .io_to_pes_0_out_bits(PENetwork_2_io_to_pes_0_out_bits),
    .io_to_pes_1_in_valid(PENetwork_2_io_to_pes_1_in_valid),
    .io_to_pes_1_in_bits(PENetwork_2_io_to_pes_1_in_bits),
    .io_to_pes_1_out_valid(PENetwork_2_io_to_pes_1_out_valid),
    .io_to_pes_1_out_bits(PENetwork_2_io_to_pes_1_out_bits),
    .io_to_pes_2_in_valid(PENetwork_2_io_to_pes_2_in_valid),
    .io_to_pes_2_in_bits(PENetwork_2_io_to_pes_2_in_bits),
    .io_to_pes_2_out_valid(PENetwork_2_io_to_pes_2_out_valid),
    .io_to_pes_2_out_bits(PENetwork_2_io_to_pes_2_out_bits),
    .io_to_pes_3_in_valid(PENetwork_2_io_to_pes_3_in_valid),
    .io_to_pes_3_in_bits(PENetwork_2_io_to_pes_3_in_bits),
    .io_to_pes_3_out_valid(PENetwork_2_io_to_pes_3_out_valid),
    .io_to_pes_3_out_bits(PENetwork_2_io_to_pes_3_out_bits),
    .io_to_mem_valid(PENetwork_2_io_to_mem_valid),
    .io_to_mem_bits(PENetwork_2_io_to_mem_bits)
  );
  PENetwork PENetwork_3 ( // @[pearray.scala 137:13]
    .io_to_pes_0_out_valid(PENetwork_3_io_to_pes_0_out_valid),
    .io_to_pes_0_out_bits(PENetwork_3_io_to_pes_0_out_bits),
    .io_to_pes_1_in_valid(PENetwork_3_io_to_pes_1_in_valid),
    .io_to_pes_1_in_bits(PENetwork_3_io_to_pes_1_in_bits),
    .io_to_pes_1_out_valid(PENetwork_3_io_to_pes_1_out_valid),
    .io_to_pes_1_out_bits(PENetwork_3_io_to_pes_1_out_bits),
    .io_to_pes_2_in_valid(PENetwork_3_io_to_pes_2_in_valid),
    .io_to_pes_2_in_bits(PENetwork_3_io_to_pes_2_in_bits),
    .io_to_pes_2_out_valid(PENetwork_3_io_to_pes_2_out_valid),
    .io_to_pes_2_out_bits(PENetwork_3_io_to_pes_2_out_bits),
    .io_to_pes_3_in_valid(PENetwork_3_io_to_pes_3_in_valid),
    .io_to_pes_3_in_bits(PENetwork_3_io_to_pes_3_in_bits),
    .io_to_pes_3_out_valid(PENetwork_3_io_to_pes_3_out_valid),
    .io_to_pes_3_out_bits(PENetwork_3_io_to_pes_3_out_bits),
    .io_to_mem_valid(PENetwork_3_io_to_mem_valid),
    .io_to_mem_bits(PENetwork_3_io_to_mem_bits)
  );
  PENetwork_4 PENetwork_4 ( // @[pearray.scala 137:13]
    .io_to_pes_0_in_bits(PENetwork_4_io_to_pes_0_in_bits),
    .io_to_pes_0_out_bits(PENetwork_4_io_to_pes_0_out_bits),
    .io_to_pes_1_in_bits(PENetwork_4_io_to_pes_1_in_bits),
    .io_to_pes_1_out_bits(PENetwork_4_io_to_pes_1_out_bits),
    .io_to_pes_2_in_bits(PENetwork_4_io_to_pes_2_in_bits),
    .io_to_pes_2_out_bits(PENetwork_4_io_to_pes_2_out_bits),
    .io_to_pes_3_in_bits(PENetwork_4_io_to_pes_3_in_bits),
    .io_to_mem_bits(PENetwork_4_io_to_mem_bits)
  );
  PENetwork_4 PENetwork_5 ( // @[pearray.scala 137:13]
    .io_to_pes_0_in_bits(PENetwork_5_io_to_pes_0_in_bits),
    .io_to_pes_0_out_bits(PENetwork_5_io_to_pes_0_out_bits),
    .io_to_pes_1_in_bits(PENetwork_5_io_to_pes_1_in_bits),
    .io_to_pes_1_out_bits(PENetwork_5_io_to_pes_1_out_bits),
    .io_to_pes_2_in_bits(PENetwork_5_io_to_pes_2_in_bits),
    .io_to_pes_2_out_bits(PENetwork_5_io_to_pes_2_out_bits),
    .io_to_pes_3_in_bits(PENetwork_5_io_to_pes_3_in_bits),
    .io_to_mem_bits(PENetwork_5_io_to_mem_bits)
  );
  PENetwork_4 PENetwork_6 ( // @[pearray.scala 137:13]
    .io_to_pes_0_in_bits(PENetwork_6_io_to_pes_0_in_bits),
    .io_to_pes_0_out_bits(PENetwork_6_io_to_pes_0_out_bits),
    .io_to_pes_1_in_bits(PENetwork_6_io_to_pes_1_in_bits),
    .io_to_pes_1_out_bits(PENetwork_6_io_to_pes_1_out_bits),
    .io_to_pes_2_in_bits(PENetwork_6_io_to_pes_2_in_bits),
    .io_to_pes_2_out_bits(PENetwork_6_io_to_pes_2_out_bits),
    .io_to_pes_3_in_bits(PENetwork_6_io_to_pes_3_in_bits),
    .io_to_mem_bits(PENetwork_6_io_to_mem_bits)
  );
  PENetwork_4 PENetwork_7 ( // @[pearray.scala 137:13]
    .io_to_pes_0_in_bits(PENetwork_7_io_to_pes_0_in_bits),
    .io_to_pes_0_out_bits(PENetwork_7_io_to_pes_0_out_bits),
    .io_to_pes_1_in_bits(PENetwork_7_io_to_pes_1_in_bits),
    .io_to_pes_1_out_bits(PENetwork_7_io_to_pes_1_out_bits),
    .io_to_pes_2_in_bits(PENetwork_7_io_to_pes_2_in_bits),
    .io_to_pes_2_out_bits(PENetwork_7_io_to_pes_2_out_bits),
    .io_to_pes_3_in_bits(PENetwork_7_io_to_pes_3_in_bits),
    .io_to_mem_bits(PENetwork_7_io_to_mem_bits)
  );
  PENetwork_4 PENetwork_8 ( // @[pearray.scala 137:13]
    .io_to_pes_0_in_bits(PENetwork_8_io_to_pes_0_in_bits),
    .io_to_pes_0_out_bits(PENetwork_8_io_to_pes_0_out_bits),
    .io_to_pes_1_in_bits(PENetwork_8_io_to_pes_1_in_bits),
    .io_to_pes_1_out_bits(PENetwork_8_io_to_pes_1_out_bits),
    .io_to_pes_2_in_bits(PENetwork_8_io_to_pes_2_in_bits),
    .io_to_pes_2_out_bits(PENetwork_8_io_to_pes_2_out_bits),
    .io_to_pes_3_in_bits(PENetwork_8_io_to_pes_3_in_bits),
    .io_to_mem_bits(PENetwork_8_io_to_mem_bits)
  );
  PENetwork_4 PENetwork_9 ( // @[pearray.scala 137:13]
    .io_to_pes_0_in_bits(PENetwork_9_io_to_pes_0_in_bits),
    .io_to_pes_0_out_bits(PENetwork_9_io_to_pes_0_out_bits),
    .io_to_pes_1_in_bits(PENetwork_9_io_to_pes_1_in_bits),
    .io_to_pes_1_out_bits(PENetwork_9_io_to_pes_1_out_bits),
    .io_to_pes_2_in_bits(PENetwork_9_io_to_pes_2_in_bits),
    .io_to_pes_2_out_bits(PENetwork_9_io_to_pes_2_out_bits),
    .io_to_pes_3_in_bits(PENetwork_9_io_to_pes_3_in_bits),
    .io_to_mem_bits(PENetwork_9_io_to_mem_bits)
  );
  PENetwork_4 PENetwork_10 ( // @[pearray.scala 137:13]
    .io_to_pes_0_in_bits(PENetwork_10_io_to_pes_0_in_bits),
    .io_to_pes_0_out_bits(PENetwork_10_io_to_pes_0_out_bits),
    .io_to_pes_1_in_bits(PENetwork_10_io_to_pes_1_in_bits),
    .io_to_pes_1_out_bits(PENetwork_10_io_to_pes_1_out_bits),
    .io_to_pes_2_in_bits(PENetwork_10_io_to_pes_2_in_bits),
    .io_to_pes_2_out_bits(PENetwork_10_io_to_pes_2_out_bits),
    .io_to_pes_3_in_bits(PENetwork_10_io_to_pes_3_in_bits),
    .io_to_mem_bits(PENetwork_10_io_to_mem_bits)
  );
  PENetwork_4 PENetwork_11 ( // @[pearray.scala 137:13]
    .io_to_pes_0_in_bits(PENetwork_11_io_to_pes_0_in_bits),
    .io_to_pes_0_out_bits(PENetwork_11_io_to_pes_0_out_bits),
    .io_to_pes_1_in_bits(PENetwork_11_io_to_pes_1_in_bits),
    .io_to_pes_1_out_bits(PENetwork_11_io_to_pes_1_out_bits),
    .io_to_pes_2_in_bits(PENetwork_11_io_to_pes_2_in_bits),
    .io_to_pes_2_out_bits(PENetwork_11_io_to_pes_2_out_bits),
    .io_to_pes_3_in_bits(PENetwork_11_io_to_pes_3_in_bits),
    .io_to_mem_bits(PENetwork_11_io_to_mem_bits)
  );
  MemController MemController ( // @[pearray.scala 212:15]
    .clock(MemController_clock),
    .reset(MemController_reset),
    .io_rd_valid(MemController_io_rd_valid),
    .io_wr_valid(MemController_io_wr_valid),
    .io_rd_data_valid(MemController_io_rd_data_valid),
    .io_rd_data_bits(MemController_io_rd_data_bits),
    .io_wr_data_valid(MemController_io_wr_data_valid),
    .io_wr_data_bits(MemController_io_wr_data_bits)
  );
  MemController MemController_1 ( // @[pearray.scala 212:15]
    .clock(MemController_1_clock),
    .reset(MemController_1_reset),
    .io_rd_valid(MemController_1_io_rd_valid),
    .io_wr_valid(MemController_1_io_wr_valid),
    .io_rd_data_valid(MemController_1_io_rd_data_valid),
    .io_rd_data_bits(MemController_1_io_rd_data_bits),
    .io_wr_data_valid(MemController_1_io_wr_data_valid),
    .io_wr_data_bits(MemController_1_io_wr_data_bits)
  );
  MemController MemController_2 ( // @[pearray.scala 212:15]
    .clock(MemController_2_clock),
    .reset(MemController_2_reset),
    .io_rd_valid(MemController_2_io_rd_valid),
    .io_wr_valid(MemController_2_io_wr_valid),
    .io_rd_data_valid(MemController_2_io_rd_data_valid),
    .io_rd_data_bits(MemController_2_io_rd_data_bits),
    .io_wr_data_valid(MemController_2_io_wr_data_valid),
    .io_wr_data_bits(MemController_2_io_wr_data_bits)
  );
  MemController MemController_3 ( // @[pearray.scala 212:15]
    .clock(MemController_3_clock),
    .reset(MemController_3_reset),
    .io_rd_valid(MemController_3_io_rd_valid),
    .io_wr_valid(MemController_3_io_wr_valid),
    .io_rd_data_valid(MemController_3_io_rd_data_valid),
    .io_rd_data_bits(MemController_3_io_rd_data_bits),
    .io_wr_data_valid(MemController_3_io_wr_data_valid),
    .io_wr_data_bits(MemController_3_io_wr_data_bits)
  );
  MemController_4 MemController_4 ( // @[pearray.scala 210:15]
    .clock(MemController_4_clock),
    .reset(MemController_4_reset),
    .io_rd_valid(MemController_4_io_rd_valid),
    .io_wr_valid(MemController_4_io_wr_valid),
    .io_rd_data_bits(MemController_4_io_rd_data_bits),
    .io_wr_data_valid(MemController_4_io_wr_data_valid),
    .io_wr_data_bits(MemController_4_io_wr_data_bits)
  );
  MemController_4 MemController_5 ( // @[pearray.scala 210:15]
    .clock(MemController_5_clock),
    .reset(MemController_5_reset),
    .io_rd_valid(MemController_5_io_rd_valid),
    .io_wr_valid(MemController_5_io_wr_valid),
    .io_rd_data_bits(MemController_5_io_rd_data_bits),
    .io_wr_data_valid(MemController_5_io_wr_data_valid),
    .io_wr_data_bits(MemController_5_io_wr_data_bits)
  );
  MemController_4 MemController_6 ( // @[pearray.scala 210:15]
    .clock(MemController_6_clock),
    .reset(MemController_6_reset),
    .io_rd_valid(MemController_6_io_rd_valid),
    .io_wr_valid(MemController_6_io_wr_valid),
    .io_rd_data_bits(MemController_6_io_rd_data_bits),
    .io_wr_data_valid(MemController_6_io_wr_data_valid),
    .io_wr_data_bits(MemController_6_io_wr_data_bits)
  );
  MemController_4 MemController_7 ( // @[pearray.scala 210:15]
    .clock(MemController_7_clock),
    .reset(MemController_7_reset),
    .io_rd_valid(MemController_7_io_rd_valid),
    .io_wr_valid(MemController_7_io_wr_valid),
    .io_rd_data_bits(MemController_7_io_rd_data_bits),
    .io_wr_data_valid(MemController_7_io_wr_data_valid),
    .io_wr_data_bits(MemController_7_io_wr_data_bits)
  );
  MemController_4 MemController_8 ( // @[pearray.scala 210:15]
    .clock(MemController_8_clock),
    .reset(MemController_8_reset),
    .io_rd_valid(MemController_8_io_rd_valid),
    .io_wr_valid(MemController_8_io_wr_valid),
    .io_rd_data_bits(MemController_8_io_rd_data_bits),
    .io_wr_data_valid(MemController_8_io_wr_data_valid),
    .io_wr_data_bits(MemController_8_io_wr_data_bits)
  );
  MemController_4 MemController_9 ( // @[pearray.scala 210:15]
    .clock(MemController_9_clock),
    .reset(MemController_9_reset),
    .io_rd_valid(MemController_9_io_rd_valid),
    .io_wr_valid(MemController_9_io_wr_valid),
    .io_rd_data_bits(MemController_9_io_rd_data_bits),
    .io_wr_data_valid(MemController_9_io_wr_data_valid),
    .io_wr_data_bits(MemController_9_io_wr_data_bits)
  );
  MemController_4 MemController_10 ( // @[pearray.scala 210:15]
    .clock(MemController_10_clock),
    .reset(MemController_10_reset),
    .io_rd_valid(MemController_10_io_rd_valid),
    .io_wr_valid(MemController_10_io_wr_valid),
    .io_rd_data_bits(MemController_10_io_rd_data_bits),
    .io_wr_data_valid(MemController_10_io_wr_data_valid),
    .io_wr_data_bits(MemController_10_io_wr_data_bits)
  );
  MemController_4 MemController_11 ( // @[pearray.scala 210:15]
    .clock(MemController_11_clock),
    .reset(MemController_11_reset),
    .io_rd_valid(MemController_11_io_rd_valid),
    .io_wr_valid(MemController_11_io_wr_valid),
    .io_rd_data_bits(MemController_11_io_rd_data_bits),
    .io_wr_data_valid(MemController_11_io_wr_data_valid),
    .io_wr_data_bits(MemController_11_io_wr_data_bits)
  );
  assign io_data_0_out_0_valid = MemController_io_rd_data_valid; // @[pearray.scala 261:31]
  assign io_data_0_out_0_bits = MemController_io_rd_data_bits; // @[pearray.scala 261:31]
  assign io_data_0_out_1_valid = MemController_1_io_rd_data_valid; // @[pearray.scala 261:31]
  assign io_data_0_out_1_bits = MemController_1_io_rd_data_bits; // @[pearray.scala 261:31]
  assign io_data_0_out_2_valid = MemController_2_io_rd_data_valid; // @[pearray.scala 261:31]
  assign io_data_0_out_2_bits = MemController_2_io_rd_data_bits; // @[pearray.scala 261:31]
  assign io_data_0_out_3_valid = MemController_3_io_rd_data_valid; // @[pearray.scala 261:31]
  assign io_data_0_out_3_bits = MemController_3_io_rd_data_bits; // @[pearray.scala 261:31]
  assign MultiDimTime_clock = clock;
  assign MultiDimTime_reset = reset;
  assign MultiDimTime_io_in = io_exec_valid; // @[pearray.scala 149:16]
  assign PE_clock = clock;
  assign PE_reset = reset;
  assign PE_io_data_2_in_bits = PENetwork_8_io_to_pes_0_in_bits; // @[pearray.scala 160:34]
  assign PE_io_data_1_in_bits = PENetwork_4_io_to_pes_0_in_bits; // @[pearray.scala 160:34]
  assign PE_io_data_0_in_valid = 1'h0; // @[pearray.scala 160:34]
  assign PE_io_data_0_in_bits = 16'h0; // @[pearray.scala 160:34]
  assign PE_io_sig_stat2trans = _T_10_3; // @[pearray.scala 179:38]
  assign PE_1_clock = clock;
  assign PE_1_reset = reset;
  assign PE_1_io_data_2_in_bits = PENetwork_9_io_to_pes_0_in_bits; // @[pearray.scala 160:34]
  assign PE_1_io_data_1_in_bits = PENetwork_4_io_to_pes_1_in_bits; // @[pearray.scala 160:34]
  assign PE_1_io_data_0_in_valid = PENetwork_io_to_pes_1_in_valid; // @[pearray.scala 160:34]
  assign PE_1_io_data_0_in_bits = PENetwork_io_to_pes_1_in_bits; // @[pearray.scala 160:34]
  assign PE_1_io_sig_stat2trans = _T_18_3; // @[pearray.scala 179:38]
  assign PE_2_clock = clock;
  assign PE_2_reset = reset;
  assign PE_2_io_data_2_in_bits = PENetwork_10_io_to_pes_0_in_bits; // @[pearray.scala 160:34]
  assign PE_2_io_data_1_in_bits = PENetwork_4_io_to_pes_2_in_bits; // @[pearray.scala 160:34]
  assign PE_2_io_data_0_in_valid = PENetwork_io_to_pes_2_in_valid; // @[pearray.scala 160:34]
  assign PE_2_io_data_0_in_bits = PENetwork_io_to_pes_2_in_bits; // @[pearray.scala 160:34]
  assign PE_2_io_sig_stat2trans = _T_26_3; // @[pearray.scala 179:38]
  assign PE_3_clock = clock;
  assign PE_3_reset = reset;
  assign PE_3_io_data_2_in_bits = PENetwork_11_io_to_pes_0_in_bits; // @[pearray.scala 160:34]
  assign PE_3_io_data_1_in_bits = PENetwork_4_io_to_pes_3_in_bits; // @[pearray.scala 160:34]
  assign PE_3_io_data_0_in_valid = PENetwork_io_to_pes_3_in_valid; // @[pearray.scala 160:34]
  assign PE_3_io_data_0_in_bits = PENetwork_io_to_pes_3_in_bits; // @[pearray.scala 160:34]
  assign PE_3_io_sig_stat2trans = _T_34_3; // @[pearray.scala 179:38]
  assign PE_4_clock = clock;
  assign PE_4_reset = reset;
  assign PE_4_io_data_2_in_bits = PENetwork_8_io_to_pes_1_in_bits; // @[pearray.scala 160:34]
  assign PE_4_io_data_1_in_bits = PENetwork_5_io_to_pes_0_in_bits; // @[pearray.scala 160:34]
  assign PE_4_io_data_0_in_valid = 1'h0; // @[pearray.scala 160:34]
  assign PE_4_io_data_0_in_bits = 16'h0; // @[pearray.scala 160:34]
  assign PE_4_io_sig_stat2trans = _T_42_3; // @[pearray.scala 179:38]
  assign PE_5_clock = clock;
  assign PE_5_reset = reset;
  assign PE_5_io_data_2_in_bits = PENetwork_9_io_to_pes_1_in_bits; // @[pearray.scala 160:34]
  assign PE_5_io_data_1_in_bits = PENetwork_5_io_to_pes_1_in_bits; // @[pearray.scala 160:34]
  assign PE_5_io_data_0_in_valid = PENetwork_1_io_to_pes_1_in_valid; // @[pearray.scala 160:34]
  assign PE_5_io_data_0_in_bits = PENetwork_1_io_to_pes_1_in_bits; // @[pearray.scala 160:34]
  assign PE_5_io_sig_stat2trans = _T_50_3; // @[pearray.scala 179:38]
  assign PE_6_clock = clock;
  assign PE_6_reset = reset;
  assign PE_6_io_data_2_in_bits = PENetwork_10_io_to_pes_1_in_bits; // @[pearray.scala 160:34]
  assign PE_6_io_data_1_in_bits = PENetwork_5_io_to_pes_2_in_bits; // @[pearray.scala 160:34]
  assign PE_6_io_data_0_in_valid = PENetwork_1_io_to_pes_2_in_valid; // @[pearray.scala 160:34]
  assign PE_6_io_data_0_in_bits = PENetwork_1_io_to_pes_2_in_bits; // @[pearray.scala 160:34]
  assign PE_6_io_sig_stat2trans = _T_58_3; // @[pearray.scala 179:38]
  assign PE_7_clock = clock;
  assign PE_7_reset = reset;
  assign PE_7_io_data_2_in_bits = PENetwork_11_io_to_pes_1_in_bits; // @[pearray.scala 160:34]
  assign PE_7_io_data_1_in_bits = PENetwork_5_io_to_pes_3_in_bits; // @[pearray.scala 160:34]
  assign PE_7_io_data_0_in_valid = PENetwork_1_io_to_pes_3_in_valid; // @[pearray.scala 160:34]
  assign PE_7_io_data_0_in_bits = PENetwork_1_io_to_pes_3_in_bits; // @[pearray.scala 160:34]
  assign PE_7_io_sig_stat2trans = _T_66_3; // @[pearray.scala 179:38]
  assign PE_8_clock = clock;
  assign PE_8_reset = reset;
  assign PE_8_io_data_2_in_bits = PENetwork_8_io_to_pes_2_in_bits; // @[pearray.scala 160:34]
  assign PE_8_io_data_1_in_bits = PENetwork_6_io_to_pes_0_in_bits; // @[pearray.scala 160:34]
  assign PE_8_io_data_0_in_valid = 1'h0; // @[pearray.scala 160:34]
  assign PE_8_io_data_0_in_bits = 16'h0; // @[pearray.scala 160:34]
  assign PE_8_io_sig_stat2trans = _T_74_3; // @[pearray.scala 179:38]
  assign PE_9_clock = clock;
  assign PE_9_reset = reset;
  assign PE_9_io_data_2_in_bits = PENetwork_9_io_to_pes_2_in_bits; // @[pearray.scala 160:34]
  assign PE_9_io_data_1_in_bits = PENetwork_6_io_to_pes_1_in_bits; // @[pearray.scala 160:34]
  assign PE_9_io_data_0_in_valid = PENetwork_2_io_to_pes_1_in_valid; // @[pearray.scala 160:34]
  assign PE_9_io_data_0_in_bits = PENetwork_2_io_to_pes_1_in_bits; // @[pearray.scala 160:34]
  assign PE_9_io_sig_stat2trans = _T_82_3; // @[pearray.scala 179:38]
  assign PE_10_clock = clock;
  assign PE_10_reset = reset;
  assign PE_10_io_data_2_in_bits = PENetwork_10_io_to_pes_2_in_bits; // @[pearray.scala 160:34]
  assign PE_10_io_data_1_in_bits = PENetwork_6_io_to_pes_2_in_bits; // @[pearray.scala 160:34]
  assign PE_10_io_data_0_in_valid = PENetwork_2_io_to_pes_2_in_valid; // @[pearray.scala 160:34]
  assign PE_10_io_data_0_in_bits = PENetwork_2_io_to_pes_2_in_bits; // @[pearray.scala 160:34]
  assign PE_10_io_sig_stat2trans = _T_90_3; // @[pearray.scala 179:38]
  assign PE_11_clock = clock;
  assign PE_11_reset = reset;
  assign PE_11_io_data_2_in_bits = PENetwork_11_io_to_pes_2_in_bits; // @[pearray.scala 160:34]
  assign PE_11_io_data_1_in_bits = PENetwork_6_io_to_pes_3_in_bits; // @[pearray.scala 160:34]
  assign PE_11_io_data_0_in_valid = PENetwork_2_io_to_pes_3_in_valid; // @[pearray.scala 160:34]
  assign PE_11_io_data_0_in_bits = PENetwork_2_io_to_pes_3_in_bits; // @[pearray.scala 160:34]
  assign PE_11_io_sig_stat2trans = _T_98_3; // @[pearray.scala 179:38]
  assign PE_12_clock = clock;
  assign PE_12_reset = reset;
  assign PE_12_io_data_2_in_bits = PENetwork_8_io_to_pes_3_in_bits; // @[pearray.scala 160:34]
  assign PE_12_io_data_1_in_bits = PENetwork_7_io_to_pes_0_in_bits; // @[pearray.scala 160:34]
  assign PE_12_io_data_0_in_valid = 1'h0; // @[pearray.scala 160:34]
  assign PE_12_io_data_0_in_bits = 16'h0; // @[pearray.scala 160:34]
  assign PE_12_io_sig_stat2trans = _T_106_3; // @[pearray.scala 179:38]
  assign PE_13_clock = clock;
  assign PE_13_reset = reset;
  assign PE_13_io_data_2_in_bits = PENetwork_9_io_to_pes_3_in_bits; // @[pearray.scala 160:34]
  assign PE_13_io_data_1_in_bits = PENetwork_7_io_to_pes_1_in_bits; // @[pearray.scala 160:34]
  assign PE_13_io_data_0_in_valid = PENetwork_3_io_to_pes_1_in_valid; // @[pearray.scala 160:34]
  assign PE_13_io_data_0_in_bits = PENetwork_3_io_to_pes_1_in_bits; // @[pearray.scala 160:34]
  assign PE_13_io_sig_stat2trans = _T_114_3; // @[pearray.scala 179:38]
  assign PE_14_clock = clock;
  assign PE_14_reset = reset;
  assign PE_14_io_data_2_in_bits = PENetwork_10_io_to_pes_3_in_bits; // @[pearray.scala 160:34]
  assign PE_14_io_data_1_in_bits = PENetwork_7_io_to_pes_2_in_bits; // @[pearray.scala 160:34]
  assign PE_14_io_data_0_in_valid = PENetwork_3_io_to_pes_2_in_valid; // @[pearray.scala 160:34]
  assign PE_14_io_data_0_in_bits = PENetwork_3_io_to_pes_2_in_bits; // @[pearray.scala 160:34]
  assign PE_14_io_sig_stat2trans = _T_122_3; // @[pearray.scala 179:38]
  assign PE_15_clock = clock;
  assign PE_15_reset = reset;
  assign PE_15_io_data_2_in_bits = PENetwork_11_io_to_pes_3_in_bits; // @[pearray.scala 160:34]
  assign PE_15_io_data_1_in_bits = PENetwork_7_io_to_pes_3_in_bits; // @[pearray.scala 160:34]
  assign PE_15_io_data_0_in_valid = PENetwork_3_io_to_pes_3_in_valid; // @[pearray.scala 160:34]
  assign PE_15_io_data_0_in_bits = PENetwork_3_io_to_pes_3_in_bits; // @[pearray.scala 160:34]
  assign PE_15_io_sig_stat2trans = _T_130_3; // @[pearray.scala 179:38]
  assign PENetwork_io_to_pes_0_out_valid = PE_io_data_0_out_valid; // @[pearray.scala 159:36]
  assign PENetwork_io_to_pes_0_out_bits = PE_io_data_0_out_bits; // @[pearray.scala 159:36]
  assign PENetwork_io_to_pes_1_out_valid = PE_1_io_data_0_out_valid; // @[pearray.scala 159:36]
  assign PENetwork_io_to_pes_1_out_bits = PE_1_io_data_0_out_bits; // @[pearray.scala 159:36]
  assign PENetwork_io_to_pes_2_out_valid = PE_2_io_data_0_out_valid; // @[pearray.scala 159:36]
  assign PENetwork_io_to_pes_2_out_bits = PE_2_io_data_0_out_bits; // @[pearray.scala 159:36]
  assign PENetwork_io_to_pes_3_out_valid = PE_3_io_data_0_out_valid; // @[pearray.scala 159:36]
  assign PENetwork_io_to_pes_3_out_bits = PE_3_io_data_0_out_bits; // @[pearray.scala 159:36]
  assign PENetwork_1_io_to_pes_0_out_valid = PE_4_io_data_0_out_valid; // @[pearray.scala 159:36]
  assign PENetwork_1_io_to_pes_0_out_bits = PE_4_io_data_0_out_bits; // @[pearray.scala 159:36]
  assign PENetwork_1_io_to_pes_1_out_valid = PE_5_io_data_0_out_valid; // @[pearray.scala 159:36]
  assign PENetwork_1_io_to_pes_1_out_bits = PE_5_io_data_0_out_bits; // @[pearray.scala 159:36]
  assign PENetwork_1_io_to_pes_2_out_valid = PE_6_io_data_0_out_valid; // @[pearray.scala 159:36]
  assign PENetwork_1_io_to_pes_2_out_bits = PE_6_io_data_0_out_bits; // @[pearray.scala 159:36]
  assign PENetwork_1_io_to_pes_3_out_valid = PE_7_io_data_0_out_valid; // @[pearray.scala 159:36]
  assign PENetwork_1_io_to_pes_3_out_bits = PE_7_io_data_0_out_bits; // @[pearray.scala 159:36]
  assign PENetwork_2_io_to_pes_0_out_valid = PE_8_io_data_0_out_valid; // @[pearray.scala 159:36]
  assign PENetwork_2_io_to_pes_0_out_bits = PE_8_io_data_0_out_bits; // @[pearray.scala 159:36]
  assign PENetwork_2_io_to_pes_1_out_valid = PE_9_io_data_0_out_valid; // @[pearray.scala 159:36]
  assign PENetwork_2_io_to_pes_1_out_bits = PE_9_io_data_0_out_bits; // @[pearray.scala 159:36]
  assign PENetwork_2_io_to_pes_2_out_valid = PE_10_io_data_0_out_valid; // @[pearray.scala 159:36]
  assign PENetwork_2_io_to_pes_2_out_bits = PE_10_io_data_0_out_bits; // @[pearray.scala 159:36]
  assign PENetwork_2_io_to_pes_3_out_valid = PE_11_io_data_0_out_valid; // @[pearray.scala 159:36]
  assign PENetwork_2_io_to_pes_3_out_bits = PE_11_io_data_0_out_bits; // @[pearray.scala 159:36]
  assign PENetwork_3_io_to_pes_0_out_valid = PE_12_io_data_0_out_valid; // @[pearray.scala 159:36]
  assign PENetwork_3_io_to_pes_0_out_bits = PE_12_io_data_0_out_bits; // @[pearray.scala 159:36]
  assign PENetwork_3_io_to_pes_1_out_valid = PE_13_io_data_0_out_valid; // @[pearray.scala 159:36]
  assign PENetwork_3_io_to_pes_1_out_bits = PE_13_io_data_0_out_bits; // @[pearray.scala 159:36]
  assign PENetwork_3_io_to_pes_2_out_valid = PE_14_io_data_0_out_valid; // @[pearray.scala 159:36]
  assign PENetwork_3_io_to_pes_2_out_bits = PE_14_io_data_0_out_bits; // @[pearray.scala 159:36]
  assign PENetwork_3_io_to_pes_3_out_valid = PE_15_io_data_0_out_valid; // @[pearray.scala 159:36]
  assign PENetwork_3_io_to_pes_3_out_bits = PE_15_io_data_0_out_bits; // @[pearray.scala 159:36]
  assign PENetwork_4_io_to_pes_0_out_bits = PE_io_data_1_out_bits; // @[pearray.scala 159:36]
  assign PENetwork_4_io_to_pes_1_out_bits = PE_1_io_data_1_out_bits; // @[pearray.scala 159:36]
  assign PENetwork_4_io_to_pes_2_out_bits = PE_2_io_data_1_out_bits; // @[pearray.scala 159:36]
  assign PENetwork_4_io_to_mem_bits = MemController_4_io_rd_data_bits; // @[pearray.scala 255:29]
  assign PENetwork_5_io_to_pes_0_out_bits = PE_4_io_data_1_out_bits; // @[pearray.scala 159:36]
  assign PENetwork_5_io_to_pes_1_out_bits = PE_5_io_data_1_out_bits; // @[pearray.scala 159:36]
  assign PENetwork_5_io_to_pes_2_out_bits = PE_6_io_data_1_out_bits; // @[pearray.scala 159:36]
  assign PENetwork_5_io_to_mem_bits = MemController_5_io_rd_data_bits; // @[pearray.scala 255:29]
  assign PENetwork_6_io_to_pes_0_out_bits = PE_8_io_data_1_out_bits; // @[pearray.scala 159:36]
  assign PENetwork_6_io_to_pes_1_out_bits = PE_9_io_data_1_out_bits; // @[pearray.scala 159:36]
  assign PENetwork_6_io_to_pes_2_out_bits = PE_10_io_data_1_out_bits; // @[pearray.scala 159:36]
  assign PENetwork_6_io_to_mem_bits = MemController_6_io_rd_data_bits; // @[pearray.scala 255:29]
  assign PENetwork_7_io_to_pes_0_out_bits = PE_12_io_data_1_out_bits; // @[pearray.scala 159:36]
  assign PENetwork_7_io_to_pes_1_out_bits = PE_13_io_data_1_out_bits; // @[pearray.scala 159:36]
  assign PENetwork_7_io_to_pes_2_out_bits = PE_14_io_data_1_out_bits; // @[pearray.scala 159:36]
  assign PENetwork_7_io_to_mem_bits = MemController_7_io_rd_data_bits; // @[pearray.scala 255:29]
  assign PENetwork_8_io_to_pes_0_out_bits = PE_io_data_2_out_bits; // @[pearray.scala 159:36]
  assign PENetwork_8_io_to_pes_1_out_bits = PE_4_io_data_2_out_bits; // @[pearray.scala 159:36]
  assign PENetwork_8_io_to_pes_2_out_bits = PE_8_io_data_2_out_bits; // @[pearray.scala 159:36]
  assign PENetwork_8_io_to_mem_bits = MemController_8_io_rd_data_bits; // @[pearray.scala 255:29]
  assign PENetwork_9_io_to_pes_0_out_bits = PE_1_io_data_2_out_bits; // @[pearray.scala 159:36]
  assign PENetwork_9_io_to_pes_1_out_bits = PE_5_io_data_2_out_bits; // @[pearray.scala 159:36]
  assign PENetwork_9_io_to_pes_2_out_bits = PE_9_io_data_2_out_bits; // @[pearray.scala 159:36]
  assign PENetwork_9_io_to_mem_bits = MemController_9_io_rd_data_bits; // @[pearray.scala 255:29]
  assign PENetwork_10_io_to_pes_0_out_bits = PE_2_io_data_2_out_bits; // @[pearray.scala 159:36]
  assign PENetwork_10_io_to_pes_1_out_bits = PE_6_io_data_2_out_bits; // @[pearray.scala 159:36]
  assign PENetwork_10_io_to_pes_2_out_bits = PE_10_io_data_2_out_bits; // @[pearray.scala 159:36]
  assign PENetwork_10_io_to_mem_bits = MemController_10_io_rd_data_bits; // @[pearray.scala 255:29]
  assign PENetwork_11_io_to_pes_0_out_bits = PE_3_io_data_2_out_bits; // @[pearray.scala 159:36]
  assign PENetwork_11_io_to_pes_1_out_bits = PE_7_io_data_2_out_bits; // @[pearray.scala 159:36]
  assign PENetwork_11_io_to_pes_2_out_bits = PE_11_io_data_2_out_bits; // @[pearray.scala 159:36]
  assign PENetwork_11_io_to_mem_bits = MemController_11_io_rd_data_bits; // @[pearray.scala 255:29]
  assign MemController_clock = clock;
  assign MemController_reset = reset;
  assign MemController_io_rd_valid = io_out_valid; // @[pearray.scala 259:28]
  assign MemController_io_wr_valid = PENetwork_io_to_mem_valid; // @[pearray.scala 258:28]
  assign MemController_io_wr_data_valid = PENetwork_io_to_mem_valid; // @[pearray.scala 260:27]
  assign MemController_io_wr_data_bits = PENetwork_io_to_mem_bits; // @[pearray.scala 260:27]
  assign MemController_1_clock = clock;
  assign MemController_1_reset = reset;
  assign MemController_1_io_rd_valid = io_out_valid; // @[pearray.scala 259:28]
  assign MemController_1_io_wr_valid = PENetwork_1_io_to_mem_valid; // @[pearray.scala 258:28]
  assign MemController_1_io_wr_data_valid = PENetwork_1_io_to_mem_valid; // @[pearray.scala 260:27]
  assign MemController_1_io_wr_data_bits = PENetwork_1_io_to_mem_bits; // @[pearray.scala 260:27]
  assign MemController_2_clock = clock;
  assign MemController_2_reset = reset;
  assign MemController_2_io_rd_valid = io_out_valid; // @[pearray.scala 259:28]
  assign MemController_2_io_wr_valid = PENetwork_2_io_to_mem_valid; // @[pearray.scala 258:28]
  assign MemController_2_io_wr_data_valid = PENetwork_2_io_to_mem_valid; // @[pearray.scala 260:27]
  assign MemController_2_io_wr_data_bits = PENetwork_2_io_to_mem_bits; // @[pearray.scala 260:27]
  assign MemController_3_clock = clock;
  assign MemController_3_reset = reset;
  assign MemController_3_io_rd_valid = io_out_valid; // @[pearray.scala 259:28]
  assign MemController_3_io_wr_valid = PENetwork_3_io_to_mem_valid; // @[pearray.scala 258:28]
  assign MemController_3_io_wr_data_valid = PENetwork_3_io_to_mem_valid; // @[pearray.scala 260:27]
  assign MemController_3_io_wr_data_bits = PENetwork_3_io_to_mem_bits; // @[pearray.scala 260:27]
  assign MemController_4_clock = clock;
  assign MemController_4_reset = reset;
  assign MemController_4_io_rd_valid = io_exec_valid; // @[pearray.scala 245:32]
  assign MemController_4_io_wr_valid = io_data_1_in_0_valid; // @[pearray.scala 253:28]
  assign MemController_4_io_wr_data_valid = io_data_1_in_0_bits_valid; // @[pearray.scala 254:27]
  assign MemController_4_io_wr_data_bits = io_data_1_in_0_bits_bits; // @[pearray.scala 254:27]
  assign MemController_5_clock = clock;
  assign MemController_5_reset = reset;
  assign MemController_5_io_rd_valid = _T_134_0; // @[pearray.scala 243:32]
  assign MemController_5_io_wr_valid = io_data_1_in_1_valid; // @[pearray.scala 253:28]
  assign MemController_5_io_wr_data_valid = io_data_1_in_1_bits_valid; // @[pearray.scala 254:27]
  assign MemController_5_io_wr_data_bits = io_data_1_in_1_bits_bits; // @[pearray.scala 254:27]
  assign MemController_6_clock = clock;
  assign MemController_6_reset = reset;
  assign MemController_6_io_rd_valid = _T_134_1; // @[pearray.scala 243:32]
  assign MemController_6_io_wr_valid = io_data_1_in_2_valid; // @[pearray.scala 253:28]
  assign MemController_6_io_wr_data_valid = io_data_1_in_2_bits_valid; // @[pearray.scala 254:27]
  assign MemController_6_io_wr_data_bits = io_data_1_in_2_bits_bits; // @[pearray.scala 254:27]
  assign MemController_7_clock = clock;
  assign MemController_7_reset = reset;
  assign MemController_7_io_rd_valid = _T_134_2; // @[pearray.scala 243:32]
  assign MemController_7_io_wr_valid = io_data_1_in_3_valid; // @[pearray.scala 253:28]
  assign MemController_7_io_wr_data_valid = io_data_1_in_3_bits_valid; // @[pearray.scala 254:27]
  assign MemController_7_io_wr_data_bits = io_data_1_in_3_bits_bits; // @[pearray.scala 254:27]
  assign MemController_8_clock = clock;
  assign MemController_8_reset = reset;
  assign MemController_8_io_rd_valid = io_exec_valid; // @[pearray.scala 245:32]
  assign MemController_8_io_wr_valid = io_data_2_in_0_valid; // @[pearray.scala 253:28]
  assign MemController_8_io_wr_data_valid = io_data_2_in_0_bits_valid; // @[pearray.scala 254:27]
  assign MemController_8_io_wr_data_bits = io_data_2_in_0_bits_bits; // @[pearray.scala 254:27]
  assign MemController_9_clock = clock;
  assign MemController_9_reset = reset;
  assign MemController_9_io_rd_valid = _T_136_0; // @[pearray.scala 243:32]
  assign MemController_9_io_wr_valid = io_data_2_in_1_valid; // @[pearray.scala 253:28]
  assign MemController_9_io_wr_data_valid = io_data_2_in_1_bits_valid; // @[pearray.scala 254:27]
  assign MemController_9_io_wr_data_bits = io_data_2_in_1_bits_bits; // @[pearray.scala 254:27]
  assign MemController_10_clock = clock;
  assign MemController_10_reset = reset;
  assign MemController_10_io_rd_valid = _T_136_1; // @[pearray.scala 243:32]
  assign MemController_10_io_wr_valid = io_data_2_in_2_valid; // @[pearray.scala 253:28]
  assign MemController_10_io_wr_data_valid = io_data_2_in_2_bits_valid; // @[pearray.scala 254:27]
  assign MemController_10_io_wr_data_bits = io_data_2_in_2_bits_bits; // @[pearray.scala 254:27]
  assign MemController_11_clock = clock;
  assign MemController_11_reset = reset;
  assign MemController_11_io_rd_valid = _T_136_2; // @[pearray.scala 243:32]
  assign MemController_11_io_wr_valid = io_data_2_in_3_valid; // @[pearray.scala 253:28]
  assign MemController_11_io_wr_data_valid = io_data_2_in_3_bits_valid; // @[pearray.scala 254:27]
  assign MemController_11_io_wr_data_bits = io_data_2_in_3_bits_bits; // @[pearray.scala 254:27]
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
  _T_10_0 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_10_1 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_10_2 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_10_3 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_18_0 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_18_1 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_18_2 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_18_3 = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_26_0 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_26_1 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_26_2 = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_26_3 = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_34_0 = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_34_1 = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_34_2 = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_34_3 = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_42_0 = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  _T_42_1 = _RAND_17[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  _T_42_2 = _RAND_18[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  _T_42_3 = _RAND_19[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  _T_50_0 = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  _T_50_1 = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  _T_50_2 = _RAND_22[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  _T_50_3 = _RAND_23[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  _T_58_0 = _RAND_24[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  _T_58_1 = _RAND_25[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  _T_58_2 = _RAND_26[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  _T_58_3 = _RAND_27[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  _T_66_0 = _RAND_28[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  _T_66_1 = _RAND_29[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  _T_66_2 = _RAND_30[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  _T_66_3 = _RAND_31[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  _T_74_0 = _RAND_32[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  _T_74_1 = _RAND_33[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  _T_74_2 = _RAND_34[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  _T_74_3 = _RAND_35[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  _T_82_0 = _RAND_36[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  _T_82_1 = _RAND_37[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  _T_82_2 = _RAND_38[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  _T_82_3 = _RAND_39[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  _T_90_0 = _RAND_40[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  _T_90_1 = _RAND_41[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  _T_90_2 = _RAND_42[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  _T_90_3 = _RAND_43[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  _T_98_0 = _RAND_44[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  _T_98_1 = _RAND_45[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  _T_98_2 = _RAND_46[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  _T_98_3 = _RAND_47[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  _T_106_0 = _RAND_48[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{`RANDOM}};
  _T_106_1 = _RAND_49[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{`RANDOM}};
  _T_106_2 = _RAND_50[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{`RANDOM}};
  _T_106_3 = _RAND_51[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {1{`RANDOM}};
  _T_114_0 = _RAND_52[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {1{`RANDOM}};
  _T_114_1 = _RAND_53[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {1{`RANDOM}};
  _T_114_2 = _RAND_54[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {1{`RANDOM}};
  _T_114_3 = _RAND_55[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {1{`RANDOM}};
  _T_122_0 = _RAND_56[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {1{`RANDOM}};
  _T_122_1 = _RAND_57[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {1{`RANDOM}};
  _T_122_2 = _RAND_58[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_59 = {1{`RANDOM}};
  _T_122_3 = _RAND_59[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_60 = {1{`RANDOM}};
  _T_130_0 = _RAND_60[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_61 = {1{`RANDOM}};
  _T_130_1 = _RAND_61[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_62 = {1{`RANDOM}};
  _T_130_2 = _RAND_62[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_63 = {1{`RANDOM}};
  _T_130_3 = _RAND_63[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_64 = {1{`RANDOM}};
  _T_134_0 = _RAND_64[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_65 = {1{`RANDOM}};
  _T_134_1 = _RAND_65[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_66 = {1{`RANDOM}};
  _T_134_2 = _RAND_66[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_67 = {1{`RANDOM}};
  _T_136_0 = _RAND_67[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_68 = {1{`RANDOM}};
  _T_136_1 = _RAND_68[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_69 = {1{`RANDOM}};
  _T_136_2 = _RAND_69[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_10_0 <= 1'h0;
    end else begin
      _T_10_0 <= _T_3;
    end
    if (reset) begin
      _T_10_1 <= 1'h0;
    end else begin
      _T_10_1 <= _T_10_0;
    end
    if (reset) begin
      _T_10_2 <= 1'h0;
    end else begin
      _T_10_2 <= _T_10_1;
    end
    if (reset) begin
      _T_10_3 <= 1'h0;
    end else begin
      _T_10_3 <= _T_10_2;
    end
    if (reset) begin
      _T_18_0 <= 1'h0;
    end else begin
      _T_18_0 <= _T_11;
    end
    if (reset) begin
      _T_18_1 <= 1'h0;
    end else begin
      _T_18_1 <= _T_18_0;
    end
    if (reset) begin
      _T_18_2 <= 1'h0;
    end else begin
      _T_18_2 <= _T_18_1;
    end
    if (reset) begin
      _T_18_3 <= 1'h0;
    end else begin
      _T_18_3 <= _T_18_2;
    end
    if (reset) begin
      _T_26_0 <= 1'h0;
    end else begin
      _T_26_0 <= _T_19;
    end
    if (reset) begin
      _T_26_1 <= 1'h0;
    end else begin
      _T_26_1 <= _T_26_0;
    end
    if (reset) begin
      _T_26_2 <= 1'h0;
    end else begin
      _T_26_2 <= _T_26_1;
    end
    if (reset) begin
      _T_26_3 <= 1'h0;
    end else begin
      _T_26_3 <= _T_26_2;
    end
    if (reset) begin
      _T_34_0 <= 1'h0;
    end else begin
      _T_34_0 <= _T_27;
    end
    if (reset) begin
      _T_34_1 <= 1'h0;
    end else begin
      _T_34_1 <= _T_34_0;
    end
    if (reset) begin
      _T_34_2 <= 1'h0;
    end else begin
      _T_34_2 <= _T_34_1;
    end
    if (reset) begin
      _T_34_3 <= 1'h0;
    end else begin
      _T_34_3 <= _T_34_2;
    end
    if (reset) begin
      _T_42_0 <= 1'h0;
    end else begin
      _T_42_0 <= _T_11;
    end
    if (reset) begin
      _T_42_1 <= 1'h0;
    end else begin
      _T_42_1 <= _T_42_0;
    end
    if (reset) begin
      _T_42_2 <= 1'h0;
    end else begin
      _T_42_2 <= _T_42_1;
    end
    if (reset) begin
      _T_42_3 <= 1'h0;
    end else begin
      _T_42_3 <= _T_42_2;
    end
    if (reset) begin
      _T_50_0 <= 1'h0;
    end else begin
      _T_50_0 <= _T_19;
    end
    if (reset) begin
      _T_50_1 <= 1'h0;
    end else begin
      _T_50_1 <= _T_50_0;
    end
    if (reset) begin
      _T_50_2 <= 1'h0;
    end else begin
      _T_50_2 <= _T_50_1;
    end
    if (reset) begin
      _T_50_3 <= 1'h0;
    end else begin
      _T_50_3 <= _T_50_2;
    end
    if (reset) begin
      _T_58_0 <= 1'h0;
    end else begin
      _T_58_0 <= _T_27;
    end
    if (reset) begin
      _T_58_1 <= 1'h0;
    end else begin
      _T_58_1 <= _T_58_0;
    end
    if (reset) begin
      _T_58_2 <= 1'h0;
    end else begin
      _T_58_2 <= _T_58_1;
    end
    if (reset) begin
      _T_58_3 <= 1'h0;
    end else begin
      _T_58_3 <= _T_58_2;
    end
    if (reset) begin
      _T_66_0 <= 1'h0;
    end else begin
      _T_66_0 <= _T_59;
    end
    if (reset) begin
      _T_66_1 <= 1'h0;
    end else begin
      _T_66_1 <= _T_66_0;
    end
    if (reset) begin
      _T_66_2 <= 1'h0;
    end else begin
      _T_66_2 <= _T_66_1;
    end
    if (reset) begin
      _T_66_3 <= 1'h0;
    end else begin
      _T_66_3 <= _T_66_2;
    end
    if (reset) begin
      _T_74_0 <= 1'h0;
    end else begin
      _T_74_0 <= _T_19;
    end
    if (reset) begin
      _T_74_1 <= 1'h0;
    end else begin
      _T_74_1 <= _T_74_0;
    end
    if (reset) begin
      _T_74_2 <= 1'h0;
    end else begin
      _T_74_2 <= _T_74_1;
    end
    if (reset) begin
      _T_74_3 <= 1'h0;
    end else begin
      _T_74_3 <= _T_74_2;
    end
    if (reset) begin
      _T_82_0 <= 1'h0;
    end else begin
      _T_82_0 <= _T_27;
    end
    if (reset) begin
      _T_82_1 <= 1'h0;
    end else begin
      _T_82_1 <= _T_82_0;
    end
    if (reset) begin
      _T_82_2 <= 1'h0;
    end else begin
      _T_82_2 <= _T_82_1;
    end
    if (reset) begin
      _T_82_3 <= 1'h0;
    end else begin
      _T_82_3 <= _T_82_2;
    end
    if (reset) begin
      _T_90_0 <= 1'h0;
    end else begin
      _T_90_0 <= _T_59;
    end
    if (reset) begin
      _T_90_1 <= 1'h0;
    end else begin
      _T_90_1 <= _T_90_0;
    end
    if (reset) begin
      _T_90_2 <= 1'h0;
    end else begin
      _T_90_2 <= _T_90_1;
    end
    if (reset) begin
      _T_90_3 <= 1'h0;
    end else begin
      _T_90_3 <= _T_90_2;
    end
    if (reset) begin
      _T_98_0 <= 1'h0;
    end else begin
      _T_98_0 <= _T_91;
    end
    if (reset) begin
      _T_98_1 <= 1'h0;
    end else begin
      _T_98_1 <= _T_98_0;
    end
    if (reset) begin
      _T_98_2 <= 1'h0;
    end else begin
      _T_98_2 <= _T_98_1;
    end
    if (reset) begin
      _T_98_3 <= 1'h0;
    end else begin
      _T_98_3 <= _T_98_2;
    end
    if (reset) begin
      _T_106_0 <= 1'h0;
    end else begin
      _T_106_0 <= _T_27;
    end
    if (reset) begin
      _T_106_1 <= 1'h0;
    end else begin
      _T_106_1 <= _T_106_0;
    end
    if (reset) begin
      _T_106_2 <= 1'h0;
    end else begin
      _T_106_2 <= _T_106_1;
    end
    if (reset) begin
      _T_106_3 <= 1'h0;
    end else begin
      _T_106_3 <= _T_106_2;
    end
    if (reset) begin
      _T_114_0 <= 1'h0;
    end else begin
      _T_114_0 <= _T_59;
    end
    if (reset) begin
      _T_114_1 <= 1'h0;
    end else begin
      _T_114_1 <= _T_114_0;
    end
    if (reset) begin
      _T_114_2 <= 1'h0;
    end else begin
      _T_114_2 <= _T_114_1;
    end
    if (reset) begin
      _T_114_3 <= 1'h0;
    end else begin
      _T_114_3 <= _T_114_2;
    end
    if (reset) begin
      _T_122_0 <= 1'h0;
    end else begin
      _T_122_0 <= _T_91;
    end
    if (reset) begin
      _T_122_1 <= 1'h0;
    end else begin
      _T_122_1 <= _T_122_0;
    end
    if (reset) begin
      _T_122_2 <= 1'h0;
    end else begin
      _T_122_2 <= _T_122_1;
    end
    if (reset) begin
      _T_122_3 <= 1'h0;
    end else begin
      _T_122_3 <= _T_122_2;
    end
    if (reset) begin
      _T_130_0 <= 1'h0;
    end else begin
      _T_130_0 <= _T_123;
    end
    if (reset) begin
      _T_130_1 <= 1'h0;
    end else begin
      _T_130_1 <= _T_130_0;
    end
    if (reset) begin
      _T_130_2 <= 1'h0;
    end else begin
      _T_130_2 <= _T_130_1;
    end
    if (reset) begin
      _T_130_3 <= 1'h0;
    end else begin
      _T_130_3 <= _T_130_2;
    end
    if (reset) begin
      _T_134_0 <= 1'h0;
    end else begin
      _T_134_0 <= io_exec_valid;
    end
    if (reset) begin
      _T_134_1 <= 1'h0;
    end else begin
      _T_134_1 <= _T_134_0;
    end
    if (reset) begin
      _T_134_2 <= 1'h0;
    end else begin
      _T_134_2 <= _T_134_1;
    end
    if (reset) begin
      _T_136_0 <= 1'h0;
    end else begin
      _T_136_0 <= io_exec_valid;
    end
    if (reset) begin
      _T_136_1 <= 1'h0;
    end else begin
      _T_136_1 <= _T_136_0;
    end
    if (reset) begin
      _T_136_2 <= 1'h0;
    end else begin
      _T_136_2 <= _T_136_1;
    end
  end
endmodule
