// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VFMUL.h for the primary calling header

#include "VFMUL__pch.h"
#include "VFMUL__Syms.h"
#include "VFMUL___024root.h"

#ifdef VL_DEBUG
VL_ATTR_COLD void VFMUL___024root___dump_triggers__stl(VFMUL___024root* vlSelf);
#endif  // VL_DEBUG

VL_ATTR_COLD void VFMUL___024root___eval_triggers__stl(VFMUL___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFMUL__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFMUL___024root___eval_triggers__stl\n"); );
    // Body
    vlSelf->__VstlTriggered.set(0U, (IData)(vlSelf->__VstlFirstIteration));
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        VFMUL___024root___dump_triggers__stl(vlSelf);
    }
#endif
}
