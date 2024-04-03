// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VFMUL.h for the primary calling header

#include "VFMUL__pch.h"
#include "VFMUL__Syms.h"
#include "VFMUL___024root.h"

void VFMUL___024root___ctor_var_reset(VFMUL___024root* vlSelf);

VFMUL___024root::VFMUL___024root(VFMUL__Syms* symsp, const char* v__name)
    : VerilatedModule{v__name}
    , vlSymsp{symsp}
 {
    // Reset structure values
    VFMUL___024root___ctor_var_reset(this);
}

void VFMUL___024root::__Vconfigure(bool first) {
    if (false && first) {}  // Prevent unused
}

VFMUL___024root::~VFMUL___024root() {
}
