// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "VFMUL__pch.h"

//============================================================
// Constructors

VFMUL::VFMUL(VerilatedContext* _vcontextp__, const char* _vcname__)
    : VerilatedModel{*_vcontextp__}
    , vlSymsp{new VFMUL__Syms(contextp(), _vcname__, this)}
    , clock{vlSymsp->TOP.clock}
    , reset{vlSymsp->TOP.reset}
    , io_rm{vlSymsp->TOP.io_rm}
    , io_fflags{vlSymsp->TOP.io_fflags}
    , io_to_fadd_fp_prod_sign{vlSymsp->TOP.io_to_fadd_fp_prod_sign}
    , io_to_fadd_inter_flags_isNaN{vlSymsp->TOP.io_to_fadd_inter_flags_isNaN}
    , io_to_fadd_inter_flags_isInf{vlSymsp->TOP.io_to_fadd_inter_flags_isInf}
    , io_to_fadd_inter_flags_isInv{vlSymsp->TOP.io_to_fadd_inter_flags_isInv}
    , io_to_fadd_inter_flags_overflow{vlSymsp->TOP.io_to_fadd_inter_flags_overflow}
    , io_to_fadd_fp_prod_exp{vlSymsp->TOP.io_to_fadd_fp_prod_exp}
    , io_to_fadd_fp_prod_sig{vlSymsp->TOP.io_to_fadd_fp_prod_sig}
    , io_a{vlSymsp->TOP.io_a}
    , io_b{vlSymsp->TOP.io_b}
    , io_result{vlSymsp->TOP.io_result}
    , rootp{&(vlSymsp->TOP)}
{
    // Register model with the context
    contextp()->addModel(this);
}

VFMUL::VFMUL(const char* _vcname__)
    : VFMUL(Verilated::threadContextp(), _vcname__)
{
}

//============================================================
// Destructor

VFMUL::~VFMUL() {
    delete vlSymsp;
}

//============================================================
// Evaluation function

#ifdef VL_DEBUG
void VFMUL___024root___eval_debug_assertions(VFMUL___024root* vlSelf);
#endif  // VL_DEBUG
void VFMUL___024root___eval_static(VFMUL___024root* vlSelf);
void VFMUL___024root___eval_initial(VFMUL___024root* vlSelf);
void VFMUL___024root___eval_settle(VFMUL___024root* vlSelf);
void VFMUL___024root___eval(VFMUL___024root* vlSelf);

void VFMUL::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate VFMUL::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    VFMUL___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    vlSymsp->__Vm_deleter.deleteAll();
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) {
        vlSymsp->__Vm_didInit = true;
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial\n"););
        VFMUL___024root___eval_static(&(vlSymsp->TOP));
        VFMUL___024root___eval_initial(&(vlSymsp->TOP));
        VFMUL___024root___eval_settle(&(vlSymsp->TOP));
    }
    VL_DEBUG_IF(VL_DBG_MSGF("+ Eval\n"););
    VFMUL___024root___eval(&(vlSymsp->TOP));
    // Evaluate cleanup
    Verilated::endOfEval(vlSymsp->__Vm_evalMsgQp);
}

//============================================================
// Events and timing
bool VFMUL::eventsPending() { return false; }

uint64_t VFMUL::nextTimeSlot() {
    VL_FATAL_MT(__FILE__, __LINE__, "", "%Error: No delays in the design");
    return 0;
}

//============================================================
// Utilities

const char* VFMUL::name() const {
    return vlSymsp->name();
}

//============================================================
// Invoke final blocks

void VFMUL___024root___eval_final(VFMUL___024root* vlSelf);

VL_ATTR_COLD void VFMUL::final() {
    VFMUL___024root___eval_final(&(vlSymsp->TOP));
}

//============================================================
// Implementations of abstract methods from VerilatedModel

const char* VFMUL::hierName() const { return vlSymsp->name(); }
const char* VFMUL::modelName() const { return "VFMUL"; }
unsigned VFMUL::threads() const { return 1; }
void VFMUL::prepareClone() const { contextp()->prepareClone(); }
void VFMUL::atClone() const {
    contextp()->threadPoolpOnClone();
}

//============================================================
// Trace configuration

VL_ATTR_COLD void VFMUL::trace(VerilatedVcdC* tfp, int levels, int options) {
    vl_fatal(__FILE__, __LINE__, __FILE__,"'VFMUL::trace()' called on model that was Verilated without --trace option");
}
