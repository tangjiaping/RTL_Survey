// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef VERILATED_VFMUL__SYMS_H_
#define VERILATED_VFMUL__SYMS_H_  // guard

#include "verilated.h"

// INCLUDE MODEL CLASS

#include "VFMUL.h"

// INCLUDE MODULE CLASSES
#include "VFMUL___024root.h"

// SYMS CLASS (contains all model state)
class alignas(VL_CACHE_LINE_BYTES)VFMUL__Syms final : public VerilatedSyms {
  public:
    // INTERNAL STATE
    VFMUL* const __Vm_modelp;
    VlDeleter __Vm_deleter;
    bool __Vm_didInit = false;

    // MODULE INSTANCE STATE
    VFMUL___024root                TOP;

    // CONSTRUCTORS
    VFMUL__Syms(VerilatedContext* contextp, const char* namep, VFMUL* modelp);
    ~VFMUL__Syms();

    // METHODS
    const char* name() { return TOP.name(); }
};

#endif  // guard
