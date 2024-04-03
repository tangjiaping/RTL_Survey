// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VFMUL.h for the primary calling header

#include "VFMUL__pch.h"
#include "VFMUL___024root.h"

VL_INLINE_OPT void VFMUL___024root___ico_sequent__TOP__0(VFMUL___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFMUL__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFMUL___024root___ico_sequent__TOP__0\n"); );
    // Init
    CData/*6:0*/ FMUL__DOT__CLZ_io_out;
    FMUL__DOT__CLZ_io_out = 0;
    CData/*0:0*/ FMUL__DOT__tininess_rounder_io_inexact;
    FMUL__DOT__tininess_rounder_io_inexact = 0;
    CData/*0:0*/ FMUL__DOT__rounder_io_inexact;
    FMUL__DOT__rounder_io_inexact = 0;
    CData/*0:0*/ FMUL__DOT__rounder_io_cout;
    FMUL__DOT__rounder_io_cout = 0;
    CData/*0:0*/ FMUL__DOT__decode_a_isNaN;
    FMUL__DOT__decode_a_isNaN = 0;
    CData/*0:0*/ FMUL__DOT__decode_b_isNaN;
    FMUL__DOT__decode_b_isNaN = 0;
    QData/*52:0*/ FMUL__DOT__raw_a_sig;
    FMUL__DOT__raw_a_sig = 0;
    QData/*52:0*/ FMUL__DOT__raw_b_sig;
    FMUL__DOT__raw_b_sig = 0;
    SData/*11:0*/ FMUL__DOT__exp_sum;
    FMUL__DOT__exp_sum = 0;
    CData/*0:0*/ FMUL__DOT__exceed_lim;
    FMUL__DOT__exceed_lim = 0;
    SData/*11:0*/ FMUL__DOT__shift_amt;
    FMUL__DOT__shift_amt = 0;
    VlWide<4>/*105:0*/ FMUL__DOT__prod;
    VL_ZERO_W(106, FMUL__DOT__prod);
    VlWide<6>/*160:0*/ FMUL__DOT__sig_shifted_raw;
    VL_ZERO_W(161, FMUL__DOT__sig_shifted_raw);
    SData/*11:0*/ FMUL__DOT__exp_shifted;
    FMUL__DOT__exp_shifted = 0;
    CData/*0:0*/ FMUL__DOT__exp_is_subnormal;
    FMUL__DOT__exp_is_subnormal = 0;
    CData/*0:0*/ FMUL__DOT__no_extra_shift;
    FMUL__DOT__no_extra_shift = 0;
    SData/*11:0*/ FMUL__DOT___T_60;
    FMUL__DOT___T_60 = 0;
    SData/*11:0*/ FMUL__DOT__exp_pre_round;
    FMUL__DOT__exp_pre_round = 0;
    VlWide<6>/*160:0*/ FMUL__DOT__sig_shifted;
    VL_ZERO_W(161, FMUL__DOT__sig_shifted);
    CData/*0:0*/ FMUL__DOT__common_of;
    FMUL__DOT__common_of = 0;
    CData/*0:0*/ FMUL__DOT__common_ix;
    FMUL__DOT__common_ix = 0;
    CData/*0:0*/ FMUL__DOT__rmin;
    FMUL__DOT__rmin = 0;
    CData/*0:0*/ FMUL__DOT__hasZero;
    FMUL__DOT__hasZero = 0;
    CData/*0:0*/ FMUL__DOT__hasNaN;
    FMUL__DOT__hasNaN = 0;
    CData/*0:0*/ FMUL__DOT__hasInf;
    FMUL__DOT__hasInf = 0;
    CData/*0:0*/ FMUL__DOT__special_case_happen;
    FMUL__DOT__special_case_happen = 0;
    CData/*0:0*/ FMUL__DOT__zero_mul_inf;
    FMUL__DOT__zero_mul_inf = 0;
    CData/*0:0*/ FMUL__DOT____VdfgTmp_h9f57f812__0;
    FMUL__DOT____VdfgTmp_h9f57f812__0 = 0;
    CData/*0:0*/ FMUL__DOT__rounder__DOT__r_up;
    FMUL__DOT__rounder__DOT__r_up = 0;
    QData/*52:0*/ __VdfgTmp_ha4ebe175__0;
    __VdfgTmp_ha4ebe175__0 = 0;
    VlWide<4>/*127:0*/ __Vtemp_2;
    VlWide<4>/*127:0*/ __Vtemp_3;
    VlWide<4>/*127:0*/ __Vtemp_4;
    VlWide<6>/*191:0*/ __Vtemp_7;
    VlWide<6>/*191:0*/ __Vtemp_8;
    VlWide<133>/*4255:0*/ __Vtemp_10;
    VlWide<133>/*4255:0*/ __Vtemp_11;
    VlWide<6>/*191:0*/ __Vtemp_13;
    // Body
    FMUL__DOT__decode_a_isNaN = (IData)(((0x7ff0000000000000ULL 
                                          == (0x7ff0000000000000ULL 
                                              & vlSelf->io_a)) 
                                         & (0U != (0xfffffffffffffULL 
                                                   & vlSelf->io_a))));
    FMUL__DOT__decode_b_isNaN = (IData)(((0x7ff0000000000000ULL 
                                          == (0x7ff0000000000000ULL 
                                              & vlSelf->io_b)) 
                                         & (0U != (0xfffffffffffffULL 
                                                   & vlSelf->io_b))));
    FMUL__DOT__hasZero = (1U & (((~ (IData)((0U != 
                                             (0x7ffU 
                                              & (IData)(
                                                        (vlSelf->io_a 
                                                         >> 0x34U)))))) 
                                 & (~ (IData)((0U != 
                                               (0xfffffffffffffULL 
                                                & vlSelf->io_a))))) 
                                | ((~ (IData)((0U != 
                                               (0x7ffU 
                                                & (IData)(
                                                          (vlSelf->io_b 
                                                           >> 0x34U)))))) 
                                   & (~ (IData)((0U 
                                                 != 
                                                 (0xfffffffffffffULL 
                                                  & vlSelf->io_b)))))));
    FMUL__DOT__hasInf = ((IData)(((0x7ff0000000000000ULL 
                                   == (0x7ff0000000000000ULL 
                                       & vlSelf->io_a)) 
                                  & (~ (IData)((0U 
                                                != 
                                                (0xfffffffffffffULL 
                                                 & vlSelf->io_a)))))) 
                         | (IData)(((0x7ff0000000000000ULL 
                                     == (0x7ff0000000000000ULL 
                                         & vlSelf->io_b)) 
                                    & (~ (IData)((0U 
                                                  != 
                                                  (0xfffffffffffffULL 
                                                   & vlSelf->io_b)))))));
    vlSelf->io_to_fadd_fp_prod_sign = (IData)(((vlSelf->io_a 
                                                ^ vlSelf->io_b) 
                                               >> 0x3fU));
    FMUL__DOT__exp_sum = (0xfffU & ((0x7ffU & ((IData)(
                                                       (vlSelf->io_a 
                                                        >> 0x34U)) 
                                               | (1U 
                                                  & (~ (IData)(
                                                               (0U 
                                                                != 
                                                                (0x7ffU 
                                                                 & (IData)(
                                                                           (vlSelf->io_a 
                                                                            >> 0x34U))))))))) 
                                    + (0x7ffU & ((IData)(
                                                         (vlSelf->io_b 
                                                          >> 0x34U)) 
                                                 | (1U 
                                                    & (~ (IData)(
                                                                 (0U 
                                                                  != 
                                                                  (0x7ffU 
                                                                   & (IData)(
                                                                             (vlSelf->io_b 
                                                                              >> 0x34U)))))))))));
    FMUL__DOT__raw_a_sig = (((QData)((IData)((0U != 
                                              (0x7ffU 
                                               & (IData)(
                                                         (vlSelf->io_a 
                                                          >> 0x34U)))))) 
                             << 0x34U) | (0xfffffffffffffULL 
                                          & vlSelf->io_a));
    FMUL__DOT__raw_b_sig = (((QData)((IData)((0U != 
                                              (0x7ffU 
                                               & (IData)(
                                                         (vlSelf->io_b 
                                                          >> 0x34U)))))) 
                             << 0x34U) | (0xfffffffffffffULL 
                                          & vlSelf->io_b));
    FMUL__DOT__hasNaN = ((IData)(FMUL__DOT__decode_a_isNaN) 
                         | (IData)(FMUL__DOT__decode_b_isNaN));
    FMUL__DOT__zero_mul_inf = ((IData)(FMUL__DOT__hasZero) 
                               & (IData)(FMUL__DOT__hasInf));
    FMUL__DOT__rmin = ((1U == (IData)(vlSelf->io_rm)) 
                       | (((~ (IData)(vlSelf->io_to_fadd_fp_prod_sign)) 
                           & (2U == (IData)(vlSelf->io_rm))) 
                          | ((3U == (IData)(vlSelf->io_rm)) 
                             & (IData)(vlSelf->io_to_fadd_fp_prod_sign))));
    __Vtemp_2[0U] = (IData)(FMUL__DOT__raw_a_sig);
    __Vtemp_2[1U] = (IData)((FMUL__DOT__raw_a_sig >> 0x20U));
    __Vtemp_2[2U] = 0U;
    __Vtemp_2[3U] = 0U;
    __Vtemp_3[0U] = (IData)(FMUL__DOT__raw_b_sig);
    __Vtemp_3[1U] = (IData)((FMUL__DOT__raw_b_sig >> 0x20U));
    __Vtemp_3[2U] = 0U;
    __Vtemp_3[3U] = 0U;
    VL_MUL_W(4, __Vtemp_4, __Vtemp_2, __Vtemp_3);
    FMUL__DOT__prod[0U] = __Vtemp_4[0U];
    FMUL__DOT__prod[1U] = __Vtemp_4[1U];
    FMUL__DOT__prod[2U] = __Vtemp_4[2U];
    FMUL__DOT__prod[3U] = (0x3ffU & __Vtemp_4[3U]);
    __VdfgTmp_ha4ebe175__0 = ((0U != (0x7ffU & (IData)(
                                                       (vlSelf->io_a 
                                                        >> 0x34U))))
                               ? FMUL__DOT__raw_b_sig
                               : FMUL__DOT__raw_a_sig);
    FMUL__DOT__special_case_happen = ((IData)(FMUL__DOT__hasZero) 
                                      | ((IData)(FMUL__DOT__hasNaN) 
                                         | (IData)(FMUL__DOT__hasInf)));
    vlSelf->io_to_fadd_inter_flags_isInv = (((~ (IData)(
                                                        (vlSelf->io_a 
                                                         >> 0x33U))) 
                                             & (IData)(FMUL__DOT__decode_a_isNaN)) 
                                            | (((~ (IData)(
                                                           (vlSelf->io_b 
                                                            >> 0x33U))) 
                                                & (IData)(FMUL__DOT__decode_b_isNaN)) 
                                               | (IData)(FMUL__DOT__zero_mul_inf)));
    vlSelf->io_to_fadd_inter_flags_isNaN = ((IData)(FMUL__DOT__hasNaN) 
                                            | (IData)(FMUL__DOT__zero_mul_inf));
    FMUL__DOT__CLZ_io_out = ((1U & (IData)((__VdfgTmp_ha4ebe175__0 
                                            >> 0x34U)))
                              ? 0x37U : ((1U & (IData)(
                                                       (__VdfgTmp_ha4ebe175__0 
                                                        >> 0x33U)))
                                          ? 0x38U : 
                                         ((1U & (IData)(
                                                        (__VdfgTmp_ha4ebe175__0 
                                                         >> 0x32U)))
                                           ? 0x39U : 
                                          ((1U & (IData)(
                                                         (__VdfgTmp_ha4ebe175__0 
                                                          >> 0x31U)))
                                            ? 0x3aU
                                            : ((1U 
                                                & (IData)(
                                                          (__VdfgTmp_ha4ebe175__0 
                                                           >> 0x30U)))
                                                ? 0x3bU
                                                : (
                                                   (1U 
                                                    & (IData)(
                                                              (__VdfgTmp_ha4ebe175__0 
                                                               >> 0x2fU)))
                                                    ? 0x3cU
                                                    : 
                                                   ((1U 
                                                     & (IData)(
                                                               (__VdfgTmp_ha4ebe175__0 
                                                                >> 0x2eU)))
                                                     ? 0x3dU
                                                     : 
                                                    ((1U 
                                                      & (IData)(
                                                                (__VdfgTmp_ha4ebe175__0 
                                                                 >> 0x2dU)))
                                                      ? 0x3eU
                                                      : 
                                                     ((1U 
                                                       & (IData)(
                                                                 (__VdfgTmp_ha4ebe175__0 
                                                                  >> 0x2cU)))
                                                       ? 0x3fU
                                                       : 
                                                      ((1U 
                                                        & (IData)(
                                                                  (__VdfgTmp_ha4ebe175__0 
                                                                   >> 0x2bU)))
                                                        ? 0x40U
                                                        : 
                                                       ((1U 
                                                         & (IData)(
                                                                   (__VdfgTmp_ha4ebe175__0 
                                                                    >> 0x2aU)))
                                                         ? 0x41U
                                                         : 
                                                        ((1U 
                                                          & (IData)(
                                                                    (__VdfgTmp_ha4ebe175__0 
                                                                     >> 0x29U)))
                                                          ? 0x42U
                                                          : 
                                                         ((1U 
                                                           & (IData)(
                                                                     (__VdfgTmp_ha4ebe175__0 
                                                                      >> 0x28U)))
                                                           ? 0x43U
                                                           : 
                                                          ((1U 
                                                            & (IData)(
                                                                      (__VdfgTmp_ha4ebe175__0 
                                                                       >> 0x27U)))
                                                            ? 0x44U
                                                            : 
                                                           ((1U 
                                                             & (IData)(
                                                                       (__VdfgTmp_ha4ebe175__0 
                                                                        >> 0x26U)))
                                                             ? 0x45U
                                                             : 
                                                            ((1U 
                                                              & (IData)(
                                                                        (__VdfgTmp_ha4ebe175__0 
                                                                         >> 0x25U)))
                                                              ? 0x46U
                                                              : 
                                                             ((1U 
                                                               & (IData)(
                                                                         (__VdfgTmp_ha4ebe175__0 
                                                                          >> 0x24U)))
                                                               ? 0x47U
                                                               : 
                                                              ((1U 
                                                                & (IData)(
                                                                          (__VdfgTmp_ha4ebe175__0 
                                                                           >> 0x23U)))
                                                                ? 0x48U
                                                                : 
                                                               ((1U 
                                                                 & (IData)(
                                                                           (__VdfgTmp_ha4ebe175__0 
                                                                            >> 0x22U)))
                                                                 ? 0x49U
                                                                 : 
                                                                ((1U 
                                                                  & (IData)(
                                                                            (__VdfgTmp_ha4ebe175__0 
                                                                             >> 0x21U)))
                                                                  ? 0x4aU
                                                                  : 
                                                                 ((1U 
                                                                   & (IData)(
                                                                             (__VdfgTmp_ha4ebe175__0 
                                                                              >> 0x20U)))
                                                                   ? 0x4bU
                                                                   : 
                                                                  ((1U 
                                                                    & (IData)(
                                                                              (__VdfgTmp_ha4ebe175__0 
                                                                               >> 0x1fU)))
                                                                    ? 0x4cU
                                                                    : 
                                                                   ((1U 
                                                                     & (IData)(
                                                                               (__VdfgTmp_ha4ebe175__0 
                                                                                >> 0x1eU)))
                                                                     ? 0x4dU
                                                                     : 
                                                                    ((1U 
                                                                      & (IData)(
                                                                                (__VdfgTmp_ha4ebe175__0 
                                                                                >> 0x1dU)))
                                                                      ? 0x4eU
                                                                      : 
                                                                     ((1U 
                                                                       & (IData)(
                                                                                (__VdfgTmp_ha4ebe175__0 
                                                                                >> 0x1cU)))
                                                                       ? 0x4fU
                                                                       : 
                                                                      ((1U 
                                                                        & (IData)(
                                                                                (__VdfgTmp_ha4ebe175__0 
                                                                                >> 0x1bU)))
                                                                        ? 0x50U
                                                                        : 
                                                                       ((1U 
                                                                         & (IData)(
                                                                                (__VdfgTmp_ha4ebe175__0 
                                                                                >> 0x1aU)))
                                                                         ? 0x51U
                                                                         : 
                                                                        ((1U 
                                                                          & (IData)(
                                                                                (__VdfgTmp_ha4ebe175__0 
                                                                                >> 0x19U)))
                                                                          ? 0x52U
                                                                          : 
                                                                         ((1U 
                                                                           & (IData)(
                                                                                (__VdfgTmp_ha4ebe175__0 
                                                                                >> 0x18U)))
                                                                           ? 0x53U
                                                                           : 
                                                                          ((1U 
                                                                            & (IData)(
                                                                                (__VdfgTmp_ha4ebe175__0 
                                                                                >> 0x17U)))
                                                                            ? 0x54U
                                                                            : 
                                                                           ((1U 
                                                                             & (IData)(
                                                                                (__VdfgTmp_ha4ebe175__0 
                                                                                >> 0x16U)))
                                                                             ? 0x55U
                                                                             : 
                                                                            ((1U 
                                                                              & (IData)(
                                                                                (__VdfgTmp_ha4ebe175__0 
                                                                                >> 0x15U)))
                                                                              ? 0x56U
                                                                              : 
                                                                             ((1U 
                                                                               & (IData)(
                                                                                (__VdfgTmp_ha4ebe175__0 
                                                                                >> 0x14U)))
                                                                               ? 0x57U
                                                                               : 
                                                                              ((1U 
                                                                                & (IData)(
                                                                                (__VdfgTmp_ha4ebe175__0 
                                                                                >> 0x13U)))
                                                                                ? 0x58U
                                                                                : 
                                                                               ((1U 
                                                                                & (IData)(
                                                                                (__VdfgTmp_ha4ebe175__0 
                                                                                >> 0x12U)))
                                                                                 ? 0x59U
                                                                                 : 
                                                                                ((1U 
                                                                                & (IData)(
                                                                                (__VdfgTmp_ha4ebe175__0 
                                                                                >> 0x11U)))
                                                                                 ? 0x5aU
                                                                                 : 
                                                                                ((1U 
                                                                                & (IData)(
                                                                                (__VdfgTmp_ha4ebe175__0 
                                                                                >> 0x10U)))
                                                                                 ? 0x5bU
                                                                                 : 
                                                                                ((1U 
                                                                                & (IData)(
                                                                                (__VdfgTmp_ha4ebe175__0 
                                                                                >> 0xfU)))
                                                                                 ? 0x5cU
                                                                                 : 
                                                                                ((1U 
                                                                                & (IData)(
                                                                                (__VdfgTmp_ha4ebe175__0 
                                                                                >> 0xeU)))
                                                                                 ? 0x5dU
                                                                                 : 
                                                                                ((1U 
                                                                                & (IData)(
                                                                                (__VdfgTmp_ha4ebe175__0 
                                                                                >> 0xdU)))
                                                                                 ? 0x5eU
                                                                                 : 
                                                                                ((1U 
                                                                                & (IData)(
                                                                                (__VdfgTmp_ha4ebe175__0 
                                                                                >> 0xcU)))
                                                                                 ? 0x5fU
                                                                                 : 
                                                                                ((1U 
                                                                                & (IData)(
                                                                                (__VdfgTmp_ha4ebe175__0 
                                                                                >> 0xbU)))
                                                                                 ? 0x60U
                                                                                 : 
                                                                                ((1U 
                                                                                & (IData)(
                                                                                (__VdfgTmp_ha4ebe175__0 
                                                                                >> 0xaU)))
                                                                                 ? 0x61U
                                                                                 : 
                                                                                ((1U 
                                                                                & (IData)(
                                                                                (__VdfgTmp_ha4ebe175__0 
                                                                                >> 9U)))
                                                                                 ? 0x62U
                                                                                 : 
                                                                                ((1U 
                                                                                & (IData)(
                                                                                (__VdfgTmp_ha4ebe175__0 
                                                                                >> 8U)))
                                                                                 ? 0x63U
                                                                                 : 
                                                                                ((1U 
                                                                                & (IData)(
                                                                                (__VdfgTmp_ha4ebe175__0 
                                                                                >> 7U)))
                                                                                 ? 0x64U
                                                                                 : 
                                                                                ((1U 
                                                                                & (IData)(
                                                                                (__VdfgTmp_ha4ebe175__0 
                                                                                >> 6U)))
                                                                                 ? 0x65U
                                                                                 : 
                                                                                ((1U 
                                                                                & (IData)(
                                                                                (__VdfgTmp_ha4ebe175__0 
                                                                                >> 5U)))
                                                                                 ? 0x66U
                                                                                 : 
                                                                                ((1U 
                                                                                & (IData)(
                                                                                (__VdfgTmp_ha4ebe175__0 
                                                                                >> 4U)))
                                                                                 ? 0x67U
                                                                                 : 
                                                                                ((1U 
                                                                                & (IData)(
                                                                                (__VdfgTmp_ha4ebe175__0 
                                                                                >> 3U)))
                                                                                 ? 0x68U
                                                                                 : 
                                                                                ((1U 
                                                                                & (IData)(
                                                                                (__VdfgTmp_ha4ebe175__0 
                                                                                >> 2U)))
                                                                                 ? 0x69U
                                                                                 : 
                                                                                ((1U 
                                                                                & (IData)(
                                                                                (__VdfgTmp_ha4ebe175__0 
                                                                                >> 1U)))
                                                                                 ? 0x6aU
                                                                                 : 0x6bU))))))))))))))))))))))))))))))))))))))))))))))))))));
    vlSelf->io_to_fadd_inter_flags_isInf = ((~ (IData)(vlSelf->io_to_fadd_inter_flags_isNaN)) 
                                            & (IData)(FMUL__DOT__hasInf));
    FMUL__DOT__exceed_lim = ((0xfffU & ((IData)(FMUL__DOT__exp_sum) 
                                        - (IData)(0x3c8U))) 
                             <= (IData)(FMUL__DOT__CLZ_io_out));
    FMUL__DOT__shift_amt = ((0x1000U & ((IData)(FMUL__DOT__exp_sum) 
                                        - (IData)(0x3c8U)))
                             ? 0U : (0xfffU & ((IData)(FMUL__DOT__exceed_lim)
                                                ? ((IData)(FMUL__DOT__exp_sum) 
                                                   - (IData)(0x3c8U))
                                                : (IData)(FMUL__DOT__CLZ_io_out))));
    FMUL__DOT__exp_shifted = (0xfffU & (((IData)(FMUL__DOT__exp_sum) 
                                         - (IData)(0x3c7U)) 
                                        - (IData)(FMUL__DOT__shift_amt)));
    __Vtemp_7[0U] = FMUL__DOT__prod[0U];
    __Vtemp_7[1U] = FMUL__DOT__prod[1U];
    __Vtemp_7[2U] = FMUL__DOT__prod[2U];
    __Vtemp_7[3U] = FMUL__DOT__prod[3U];
    __Vtemp_7[4U] = 0U;
    __Vtemp_7[5U] = 0U;
    VL_SHIFTL_WWI(161,161,12, __Vtemp_8, __Vtemp_7, (IData)(FMUL__DOT__shift_amt));
    FMUL__DOT__sig_shifted_raw[0U] = __Vtemp_8[0U];
    FMUL__DOT__sig_shifted_raw[1U] = __Vtemp_8[1U];
    FMUL__DOT__sig_shifted_raw[2U] = __Vtemp_8[2U];
    FMUL__DOT__sig_shifted_raw[3U] = __Vtemp_8[3U];
    FMUL__DOT__sig_shifted_raw[4U] = __Vtemp_8[4U];
    FMUL__DOT__sig_shifted_raw[5U] = (1U & __Vtemp_8[5U]);
    VL_EXTEND_WW(4256,106, __Vtemp_10, FMUL__DOT__prod);
    VL_SHIFTL_WWI(4256,4256,12, __Vtemp_11, __Vtemp_10, (IData)(FMUL__DOT__shift_amt));
    FMUL__DOT____VdfgTmp_h9f57f812__0 = (1U & __Vtemp_11[5U]);
    FMUL__DOT__exp_is_subnormal = (1U & ((~ (IData)(FMUL__DOT____VdfgTmp_h9f57f812__0)) 
                                         & ((IData)(FMUL__DOT__exceed_lim) 
                                            | (1U & 
                                               (((IData)(FMUL__DOT__exp_sum) 
                                                 - (IData)(0x3c8U)) 
                                                >> 0xcU)))));
    FMUL__DOT__no_extra_shift = ((IData)(FMUL__DOT____VdfgTmp_h9f57f812__0) 
                                 | (IData)(FMUL__DOT__exp_is_subnormal));
    VL_SHIFTL_WWI(161,161,32, __Vtemp_13, FMUL__DOT__sig_shifted_raw, 1U);
    if (FMUL__DOT__no_extra_shift) {
        FMUL__DOT___T_60 = (0xfffU & (IData)(FMUL__DOT__exp_shifted));
        FMUL__DOT__sig_shifted[0U] = FMUL__DOT__sig_shifted_raw[0U];
        FMUL__DOT__sig_shifted[1U] = FMUL__DOT__sig_shifted_raw[1U];
        FMUL__DOT__sig_shifted[2U] = FMUL__DOT__sig_shifted_raw[2U];
        FMUL__DOT__sig_shifted[3U] = FMUL__DOT__sig_shifted_raw[3U];
        FMUL__DOT__sig_shifted[4U] = FMUL__DOT__sig_shifted_raw[4U];
        FMUL__DOT__sig_shifted[5U] = (1U & FMUL__DOT__sig_shifted_raw[5U]);
    } else {
        FMUL__DOT___T_60 = (0xfffU & ((IData)(FMUL__DOT__exp_shifted) 
                                      - (IData)(1U)));
        FMUL__DOT__sig_shifted[0U] = __Vtemp_13[0U];
        FMUL__DOT__sig_shifted[1U] = __Vtemp_13[1U];
        FMUL__DOT__sig_shifted[2U] = __Vtemp_13[2U];
        FMUL__DOT__sig_shifted[3U] = __Vtemp_13[3U];
        FMUL__DOT__sig_shifted[4U] = __Vtemp_13[4U];
        FMUL__DOT__sig_shifted[5U] = (1U & __Vtemp_13[5U]);
    }
    if (FMUL__DOT__hasZero) {
        vlSelf->io_to_fadd_fp_prod_exp = 0U;
        vlSelf->io_to_fadd_fp_prod_sig[0U] = 0U;
        vlSelf->io_to_fadd_fp_prod_sig[1U] = 0U;
        vlSelf->io_to_fadd_fp_prod_sig[2U] = 0U;
        vlSelf->io_to_fadd_fp_prod_sig[3U] = 0U;
    } else {
        vlSelf->io_to_fadd_fp_prod_exp = ((IData)(FMUL__DOT__exp_is_subnormal)
                                           ? 0U : (0x7ffU 
                                                   & (IData)(FMUL__DOT___T_60)));
        vlSelf->io_to_fadd_fp_prod_sig[0U] = (((FMUL__DOT__sig_shifted[2U] 
                                                << 9U) 
                                               | (FMUL__DOT__sig_shifted[1U] 
                                                  >> 0x17U)) 
                                              | (0U 
                                                 != 
                                                 (0x7fffffffffffffULL 
                                                  & (((QData)((IData)(
                                                                      FMUL__DOT__sig_shifted[1U])) 
                                                      << 0x20U) 
                                                     | (QData)((IData)(
                                                                       FMUL__DOT__sig_shifted[0U]))))));
        vlSelf->io_to_fadd_fp_prod_sig[1U] = ((FMUL__DOT__sig_shifted[3U] 
                                               << 9U) 
                                              | (FMUL__DOT__sig_shifted[2U] 
                                                 >> 0x17U));
        vlSelf->io_to_fadd_fp_prod_sig[2U] = ((FMUL__DOT__sig_shifted[4U] 
                                               << 9U) 
                                              | (FMUL__DOT__sig_shifted[3U] 
                                                 >> 0x17U));
        vlSelf->io_to_fadd_fp_prod_sig[3U] = (FMUL__DOT__sig_shifted[4U] 
                                              >> 0x17U);
    }
    FMUL__DOT__exp_pre_round = ((IData)(FMUL__DOT__exp_is_subnormal)
                                 ? 0U : (IData)(FMUL__DOT___T_60));
    FMUL__DOT__tininess_rounder_io_inexact = (1U & 
                                              ((FMUL__DOT__sig_shifted[3U] 
                                                >> 0xaU) 
                                               | (0U 
                                                  != 
                                                  (((FMUL__DOT__sig_shifted[0U] 
                                                     | FMUL__DOT__sig_shifted[1U]) 
                                                    | FMUL__DOT__sig_shifted[2U]) 
                                                   | (0x3ffU 
                                                      & FMUL__DOT__sig_shifted[3U])))));
    FMUL__DOT__rounder_io_inexact = (1U & ((FMUL__DOT__sig_shifted[3U] 
                                            >> 0xbU) 
                                           | (0U != 
                                              (((FMUL__DOT__sig_shifted[0U] 
                                                 | FMUL__DOT__sig_shifted[1U]) 
                                                | FMUL__DOT__sig_shifted[2U]) 
                                               | (0x7ffU 
                                                  & FMUL__DOT__sig_shifted[3U])))));
    vlSelf->io_to_fadd_inter_flags_overflow = (0x7ffU 
                                               < (IData)(FMUL__DOT__exp_pre_round));
    FMUL__DOT__rounder__DOT__r_up = (1U & ((4U == (IData)(vlSelf->io_rm))
                                            ? (FMUL__DOT__sig_shifted[3U] 
                                               >> 0xbU)
                                            : ((2U 
                                                == (IData)(vlSelf->io_rm))
                                                ? ((IData)(FMUL__DOT__rounder_io_inexact) 
                                                   & (IData)(vlSelf->io_to_fadd_fp_prod_sign))
                                                : (
                                                   (3U 
                                                    == (IData)(vlSelf->io_rm))
                                                    ? 
                                                   ((~ (IData)(vlSelf->io_to_fadd_fp_prod_sign)) 
                                                    & (IData)(FMUL__DOT__rounder_io_inexact))
                                                    : 
                                                   ((1U 
                                                     != (IData)(vlSelf->io_rm)) 
                                                    & ((0U 
                                                        == (IData)(vlSelf->io_rm)) 
                                                       & (((FMUL__DOT__sig_shifted[3U] 
                                                            >> 0xbU) 
                                                           & (0U 
                                                              != 
                                                              (((FMUL__DOT__sig_shifted[0U] 
                                                                 | FMUL__DOT__sig_shifted[1U]) 
                                                                | FMUL__DOT__sig_shifted[2U]) 
                                                               | (0x7ffU 
                                                                  & FMUL__DOT__sig_shifted[3U])))) 
                                                          | ((~ (IData)(
                                                                        (0U 
                                                                         != 
                                                                         (((FMUL__DOT__sig_shifted[0U] 
                                                                            | FMUL__DOT__sig_shifted[1U]) 
                                                                           | FMUL__DOT__sig_shifted[2U]) 
                                                                          | (0x7ffU 
                                                                             & FMUL__DOT__sig_shifted[3U]))))) 
                                                             & (IData)(
                                                                       (0x1800U 
                                                                        == 
                                                                        (0x1800U 
                                                                         & FMUL__DOT__sig_shifted[3U])))))))))));
    FMUL__DOT__rounder_io_cout = ((IData)(FMUL__DOT__rounder__DOT__r_up) 
                                  & (0xfffffffffffffULL 
                                     == (0xfffffffffffffULL 
                                         & (((QData)((IData)(
                                                             FMUL__DOT__sig_shifted[4U])) 
                                             << 0x14U) 
                                            | ((QData)((IData)(
                                                               FMUL__DOT__sig_shifted[3U])) 
                                               >> 0xcU)))));
    FMUL__DOT__common_of = (((IData)(FMUL__DOT__rounder_io_cout)
                              ? (0x7feU == (IData)(FMUL__DOT__exp_pre_round))
                              : (0x7ffU == (IData)(FMUL__DOT__exp_pre_round))) 
                            | (0xbfdU < (IData)(FMUL__DOT__exp_sum)));
    FMUL__DOT__common_ix = ((IData)(FMUL__DOT__rounder_io_inexact) 
                            | (IData)(FMUL__DOT__common_of));
    if (FMUL__DOT__special_case_happen) {
        vlSelf->io_result = ((IData)(vlSelf->io_to_fadd_inter_flags_isNaN)
                              ? 0x7ff8000000000000ULL
                              : ((IData)(FMUL__DOT__hasInf)
                                  ? (0x7ff0000000000000ULL 
                                     | ((QData)((IData)(vlSelf->io_to_fadd_fp_prod_sign)) 
                                        << 0x3fU)) : 
                                 ((QData)((IData)(vlSelf->io_to_fadd_fp_prod_sign)) 
                                  << 0x3fU)));
        vlSelf->io_fflags = ((IData)(vlSelf->io_to_fadd_inter_flags_isInv) 
                             << 4U);
    } else {
        vlSelf->io_result = (((QData)((IData)(vlSelf->io_to_fadd_fp_prod_sign)) 
                              << 0x3fU) | (((QData)((IData)(
                                                            (0x7ffU 
                                                             & ((IData)(FMUL__DOT__common_of)
                                                                 ? 
                                                                ((IData)(FMUL__DOT__rmin)
                                                                  ? 0x7feU
                                                                  : 0x7ffU)
                                                                 : 
                                                                ((IData)(FMUL__DOT__rounder_io_cout) 
                                                                 + (IData)(FMUL__DOT__exp_pre_round)))))) 
                                            << 0x34U) 
                                           | (0xfffffffffffffULL 
                                              & ((IData)(FMUL__DOT__common_of)
                                                  ? 
                                                 ((IData)(FMUL__DOT__rmin)
                                                   ? 0xfffffffffffffULL
                                                   : 0ULL)
                                                  : 
                                                 ((((QData)((IData)(
                                                                    FMUL__DOT__sig_shifted[4U])) 
                                                    << 0x34U) 
                                                   | (((QData)((IData)(
                                                                       FMUL__DOT__sig_shifted[4U])) 
                                                       << 0x14U) 
                                                      | ((QData)((IData)(
                                                                         FMUL__DOT__sig_shifted[3U])) 
                                                         >> 0xcU))) 
                                                  + (QData)((IData)(FMUL__DOT__rounder__DOT__r_up)))))));
        vlSelf->io_fflags = (((IData)(FMUL__DOT__common_of) 
                              << 2U) | (((((0U == (3U 
                                                   & ((FMUL__DOT__sig_shifted[5U] 
                                                       << 1U) 
                                                      | (FMUL__DOT__sig_shifted[4U] 
                                                         >> 0x1fU)))) 
                                           | ((~ ((
                                                   (4U 
                                                    == (IData)(vlSelf->io_rm))
                                                    ? 
                                                   (FMUL__DOT__sig_shifted[3U] 
                                                    >> 0xaU)
                                                    : 
                                                   ((2U 
                                                     == (IData)(vlSelf->io_rm))
                                                     ? 
                                                    ((IData)(FMUL__DOT__tininess_rounder_io_inexact) 
                                                     & (IData)(vlSelf->io_to_fadd_fp_prod_sign))
                                                     : 
                                                    ((3U 
                                                      == (IData)(vlSelf->io_rm))
                                                      ? 
                                                     ((~ (IData)(vlSelf->io_to_fadd_fp_prod_sign)) 
                                                      & (IData)(FMUL__DOT__tininess_rounder_io_inexact))
                                                      : 
                                                     ((1U 
                                                       != (IData)(vlSelf->io_rm)) 
                                                      & ((0U 
                                                          == (IData)(vlSelf->io_rm)) 
                                                         & (((FMUL__DOT__sig_shifted[3U] 
                                                              >> 0xaU) 
                                                             & (0U 
                                                                != 
                                                                (((FMUL__DOT__sig_shifted[0U] 
                                                                   | FMUL__DOT__sig_shifted[1U]) 
                                                                  | FMUL__DOT__sig_shifted[2U]) 
                                                                 | (0x3ffU 
                                                                    & FMUL__DOT__sig_shifted[3U])))) 
                                                            | ((~ (IData)(
                                                                          (0U 
                                                                           != 
                                                                           (((FMUL__DOT__sig_shifted[0U] 
                                                                              | FMUL__DOT__sig_shifted[1U]) 
                                                                             | FMUL__DOT__sig_shifted[2U]) 
                                                                            | (0x3ffU 
                                                                               & FMUL__DOT__sig_shifted[3U]))))) 
                                                               & (IData)(
                                                                         (0xc00U 
                                                                          == 
                                                                          (0xc00U 
                                                                           & FMUL__DOT__sig_shifted[3U])))))))))) 
                                                  & (0xfffffffffffffULL 
                                                     == 
                                                     (0xfffffffffffffULL 
                                                      & (((QData)((IData)(
                                                                          FMUL__DOT__sig_shifted[4U])) 
                                                          << 0x15U) 
                                                         | ((QData)((IData)(
                                                                            FMUL__DOT__sig_shifted[3U])) 
                                                            >> 0xbU)))))) 
                                              & (1U 
                                                 == 
                                                 (3U 
                                                  & ((FMUL__DOT__sig_shifted[5U] 
                                                      << 1U) 
                                                     | (FMUL__DOT__sig_shifted[4U] 
                                                        >> 0x1fU)))))) 
                                          & (IData)(FMUL__DOT__common_ix)) 
                                         << 1U) | (IData)(FMUL__DOT__common_ix)));
    }
}

void VFMUL___024root___eval_ico(VFMUL___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFMUL__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFMUL___024root___eval_ico\n"); );
    // Body
    if ((1ULL & vlSelf->__VicoTriggered.word(0U))) {
        VFMUL___024root___ico_sequent__TOP__0(vlSelf);
    }
}

void VFMUL___024root___eval_triggers__ico(VFMUL___024root* vlSelf);

bool VFMUL___024root___eval_phase__ico(VFMUL___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFMUL__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFMUL___024root___eval_phase__ico\n"); );
    // Init
    CData/*0:0*/ __VicoExecute;
    // Body
    VFMUL___024root___eval_triggers__ico(vlSelf);
    __VicoExecute = vlSelf->__VicoTriggered.any();
    if (__VicoExecute) {
        VFMUL___024root___eval_ico(vlSelf);
    }
    return (__VicoExecute);
}

void VFMUL___024root___eval_act(VFMUL___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFMUL__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFMUL___024root___eval_act\n"); );
}

void VFMUL___024root___eval_nba(VFMUL___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFMUL__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFMUL___024root___eval_nba\n"); );
}

void VFMUL___024root___eval_triggers__act(VFMUL___024root* vlSelf);

bool VFMUL___024root___eval_phase__act(VFMUL___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFMUL__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFMUL___024root___eval_phase__act\n"); );
    // Init
    VlTriggerVec<0> __VpreTriggered;
    CData/*0:0*/ __VactExecute;
    // Body
    VFMUL___024root___eval_triggers__act(vlSelf);
    __VactExecute = vlSelf->__VactTriggered.any();
    if (__VactExecute) {
        __VpreTriggered.andNot(vlSelf->__VactTriggered, vlSelf->__VnbaTriggered);
        vlSelf->__VnbaTriggered.thisOr(vlSelf->__VactTriggered);
        VFMUL___024root___eval_act(vlSelf);
    }
    return (__VactExecute);
}

bool VFMUL___024root___eval_phase__nba(VFMUL___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFMUL__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFMUL___024root___eval_phase__nba\n"); );
    // Init
    CData/*0:0*/ __VnbaExecute;
    // Body
    __VnbaExecute = vlSelf->__VnbaTriggered.any();
    if (__VnbaExecute) {
        VFMUL___024root___eval_nba(vlSelf);
        vlSelf->__VnbaTriggered.clear();
    }
    return (__VnbaExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VFMUL___024root___dump_triggers__ico(VFMUL___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void VFMUL___024root___dump_triggers__nba(VFMUL___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void VFMUL___024root___dump_triggers__act(VFMUL___024root* vlSelf);
#endif  // VL_DEBUG

void VFMUL___024root___eval(VFMUL___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFMUL__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFMUL___024root___eval\n"); );
    // Init
    IData/*31:0*/ __VicoIterCount;
    CData/*0:0*/ __VicoContinue;
    IData/*31:0*/ __VnbaIterCount;
    CData/*0:0*/ __VnbaContinue;
    // Body
    __VicoIterCount = 0U;
    vlSelf->__VicoFirstIteration = 1U;
    __VicoContinue = 1U;
    while (__VicoContinue) {
        if (VL_UNLIKELY((0x64U < __VicoIterCount))) {
#ifdef VL_DEBUG
            VFMUL___024root___dump_triggers__ico(vlSelf);
#endif
            VL_FATAL_MT("../rtl/FMUL.v", 149, "", "Input combinational region did not converge.");
        }
        __VicoIterCount = ((IData)(1U) + __VicoIterCount);
        __VicoContinue = 0U;
        if (VFMUL___024root___eval_phase__ico(vlSelf)) {
            __VicoContinue = 1U;
        }
        vlSelf->__VicoFirstIteration = 0U;
    }
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        if (VL_UNLIKELY((0x64U < __VnbaIterCount))) {
#ifdef VL_DEBUG
            VFMUL___024root___dump_triggers__nba(vlSelf);
#endif
            VL_FATAL_MT("../rtl/FMUL.v", 149, "", "NBA region did not converge.");
        }
        __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
        __VnbaContinue = 0U;
        vlSelf->__VactIterCount = 0U;
        vlSelf->__VactContinue = 1U;
        while (vlSelf->__VactContinue) {
            if (VL_UNLIKELY((0x64U < vlSelf->__VactIterCount))) {
#ifdef VL_DEBUG
                VFMUL___024root___dump_triggers__act(vlSelf);
#endif
                VL_FATAL_MT("../rtl/FMUL.v", 149, "", "Active region did not converge.");
            }
            vlSelf->__VactIterCount = ((IData)(1U) 
                                       + vlSelf->__VactIterCount);
            vlSelf->__VactContinue = 0U;
            if (VFMUL___024root___eval_phase__act(vlSelf)) {
                vlSelf->__VactContinue = 1U;
            }
        }
        if (VFMUL___024root___eval_phase__nba(vlSelf)) {
            __VnbaContinue = 1U;
        }
    }
}

#ifdef VL_DEBUG
void VFMUL___024root___eval_debug_assertions(VFMUL___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VFMUL__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VFMUL___024root___eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((vlSelf->clock & 0xfeU))) {
        Verilated::overWidthError("clock");}
    if (VL_UNLIKELY((vlSelf->reset & 0xfeU))) {
        Verilated::overWidthError("reset");}
    if (VL_UNLIKELY((vlSelf->io_rm & 0xf8U))) {
        Verilated::overWidthError("io_rm");}
}
#endif  // VL_DEBUG
