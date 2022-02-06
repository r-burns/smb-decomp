#include <PR/ultratypes.h>

// data
u32 D_8003CBB0 = 0;
u32 D_8003CBB4 = 0;
u32 D_8003CBB8 = 3;
u32 D_8003CBBC = 0;

// probably part of above tbh
u32 D_8003CBC0[28] = {
    0, 0, 0, 3, 
    3, 0, 3, 3, 
    0, 3, 3, 3, 
    0, 3, 0, 6, 
    3, 3, 3, 6, 
    0, 6, 3, 6, 
    5, 6, 5, 6,
};

// booleans? 0x88
u32 D_8003CC30[136] = {
    1, 1, 1, 0, 
    1, 1, 1, 0, 
    0, 0, 1, 0, 
    0, 1, 0, 0, 
    1, 0, 1, 1, 
    1, 0, 1, 0, 
    1, 0, 1, 1, 
    0, 1, 1, 0,
    0, 1, 1, 1, 
    0, 1, 0, 0, 
    1, 1, 0, 1, 
    0, 1, 1, 0, 
    1, 1, 0, 1, 
    1, 1, 1, 0, 
    1, 0, 1, 0, 
    0, 1, 0, 0, 
    1, 1, 1, 1, 
    1, 1, 1, 0, 
    1, 1, 1, 1, 
    0, 1, 1, 0, 
    1, 1, 1, 1, 
    1, 1, 0, 0, 
    0, 1, 0, 1, 
    1, 1, 1, 0, 
    0, 0, 0, 1, 
    1, 0, 1, 0, 
    0, 0, 1, 1, 
    1, 1, 1, 0, 
    1, 1, 0, 1, 
    1, 0, 1, 0, 
    1, 1, 0, 1, 
    1, 0, 0, 0, 
    0, 0, 0, 1, 
    0, 0, 0, 0,
};

f32 D_8003CE50 = 1.0f;
f32 unref_8003CE54 = 10.0f;
f32 unref_8003CE58 = 100.0f;
f32 unref_8003CE5C = 1000.0f;
f32 unref_8003CE60 = 10000.0f;
f32 unref_8003CE64 = 100000.0f;
f32 unref_8003CE68 = 1000000.0f;
f32 unref_8003CE6C = 10000000.0f;
f32 unref_8003CE70 = 100000000.0f;
f32 unref_8003CE74 = 1000000000.0f;

u8 D_8003CE78[4] = {0, 0, 0, 0};

u8 D_8003CE7C[128] = {
  0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
  0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
  0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x29, 0xff, 0xff,
  0xff, 0x2b, 0xff, 0xff, 0x25, 0x26, 0xff, 0x2a, 0xff, 0x27, 0x2c, 0xff,
  0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x24, 0xff,
  0xff, 0xff, 0xff, 0x28, 0xff, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f, 0x10,
  0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x1b, 0x1c,
  0x1d, 0x1e, 0x1f, 0x20, 0x21, 0x22, 0x23, 0xff, 0xff, 0xff, 0xff, 0xff,
  0xff, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f, 0x10, 0x11, 0x12, 0x13, 0x14,
  0x15, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f, 0x20,
  0x21, 0x22, 0x23, 0xff, 0xff, 0xff, 0xff, 0xff
};

u32 D_8003CEFC[64] = {
    0x70871C30, 0x8988A250, 0x88808290, 0x88831C90, 
    0x888402F8, 0x88882210, 0x71CF9C10, 0xF9CF9C70, 
    0x8228A288, 0xF200A288, 0x0BC11C78, 0x0A222208, 
    0x8A222288, 0x71C21C70, 0x23C738F8, 0x5228A480, 
    0x8A282280, 0x8BC822F0, 0xFA282280, 0x8A28A480, 
    0x8BC738F8, 0xF9C89C08, 0x82288808, 0x82088808, 
    0xF2EF8808, 0x82288888, 0x82288888, 0x81C89C70, 
    0x8A08A270, 0x920DA288, 0xA20AB288, 0xC20AAA88, 
    0xA208A688, 0x9208A288, 0x8BE8A270, 0xF1CF1CF8, 
    0x8A28A220, 0x8A28A020, 0xF22F1C20, 0x82AA0220, 
    0x82492220, 0x81A89C20, 0x8A28A288, 0x8A28A288, 
    0x8A289488, 0x8A2A8850, 0x894A9420, 0x894AA220, 
    0x70852220, 0xF8011000, 0x08020800, 0x10840400, 
    0x20040470, 0x40840400, 0x80020800, 0xF8011000, 
    0x70800000, 0x88822200, 0x08820400, 0x108F8800, 
    0x20821000, 0x00022200, 0x20800020, 0x00000000,
};

const char *D_8003CFFC[24] = {
    "Interrupt",
    "TLB modification",
    "TLB exception on load",
    "TLB exception on store",
    "Address error on load",
    "Address error on store",
    "Bus error on inst.",
    "Bus error on data",
    "System call exception",
    "Breakpoint exception",
    "Reserved instruction",
    "Coprocessor unusable",
    "Arithmetic overflow",
    "Trap exception",
    "Virtual coherency on inst.",
    "Floating point exception",
    "Watchpoint exception",
    "Virtual coherency on data",
    "Unimplemented operation",
    "Invalid operation",
    "Division by zero",
    "Overflow",
    "Underflow",
    "Inexact operation",
};

u32 D_8003D05C = 0x0000001E;
u32 D_8003D060 = 0x00000019; 
// pad out 3 u32 0

// bss 
u8 D_8009DA00[8];
u8 D_8009DA08[2480];
u8 D_8009E3B8[24]; // OSPri?
u8 D_8009E3D0[8];
u8 D_8009E3D8[8];
u8 D_8009E3E0[8];
u8 D_8009E3E8[8];
u8 D_8009E3F0[24];
u8 D_8009E408[2480];
u8 D_8009EDB8[8];


#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wunknown-pragmas"

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/sys/crash/func_800210C0.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/sys/crash/func_80021734.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/sys/crash/func_800218E0.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/sys/crash/func_80021908.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/sys/crash/unref_80021958.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/sys/crash/func_80021A34.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/sys/crash/func_80021B30.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/sys/crash/func_80022368.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/sys/crash/func_800223F4.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/sys/crash/func_800224C0.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/sys/crash/func_80022640.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/sys/crash/func_80022664.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/sys/crash/func_8002272C.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/sys/crash/func_800227F4.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/sys/crash/func_8002287C.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/sys/crash/func_80022908.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/sys/crash/func_80022984.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/sys/crash/func_80022F98.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/sys/crash/set_debug_fn.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/sys/crash/func_80023010.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/sys/crash/func_80023024.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/sys/crash/crash_printf.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/sys/crash/thread8_crash_debugger.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/sys/crash/start_thread8.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/sys/crash/fileloader_thread8_crash.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/sys/crash/start_new_debug_thread.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/sys/crash/fatal_printf.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/sys/crash/func_80023778.s")
#endif
#pragma GCC diagnostic pop
