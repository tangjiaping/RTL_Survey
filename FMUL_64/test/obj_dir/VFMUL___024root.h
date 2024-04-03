// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See VFMUL.h for the primary calling header

#ifndef VERILATED_VFMUL___024ROOT_H_
#define VERILATED_VFMUL___024ROOT_H_  // guard

#include "verilated.h"


class VFMUL__Syms;

class alignas(VL_CACHE_LINE_BYTES) VFMUL___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    VL_IN8(clock,0,0);
    VL_IN8(reset,0,0);
    VL_IN8(io_rm,2,0);
    VL_OUT8(io_fflags,4,0);
    VL_OUT8(io_to_fadd_fp_prod_sign,0,0);
    VL_OUT8(io_to_fadd_inter_flags_isNaN,0,0);
    VL_OUT8(io_to_fadd_inter_flags_isInf,0,0);
    VL_OUT8(io_to_fadd_inter_flags_isInv,0,0);
    VL_OUT8(io_to_fadd_inter_flags_overflow,0,0);
    CData/*0:0*/ __VstlFirstIteration;
    CData/*0:0*/ __VicoFirstIteration;
    CData/*0:0*/ __VactContinue;
    VL_OUT16(io_to_fadd_fp_prod_exp,10,0);
    VL_OUTW(io_to_fadd_fp_prod_sig,104,0,4);
    IData/*31:0*/ __VactIterCount;
    VL_IN64(io_a,63,0);
    VL_IN64(io_b,63,0);
    VL_OUT64(io_result,63,0);
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<1> __VicoTriggered;
    VlTriggerVec<0> __VactTriggered;
    VlTriggerVec<0> __VnbaTriggered;

    // INTERNAL VARIABLES
    VFMUL__Syms* const vlSymsp;

    // CONSTRUCTORS
    VFMUL___024root(VFMUL__Syms* symsp, const char* v__name);
    ~VFMUL___024root();
    VL_UNCOPYABLE(VFMUL___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
