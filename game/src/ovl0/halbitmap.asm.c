#include <PR/ultratypes.h>

/*** Data ***/
#include "ovl0/sintable.inc.h"

s32 D_ovl0_800D5CA0[3] = {0, 0, 0};

// these are all function pointers, so I hope they line up...
// jump table of somekind?

extern char jtgt_ovl0_800C96EC[];
extern char jtgt_ovl0_800C9714[];
extern char jtgt_ovl0_800CA024[];
extern char jtgt_ovl0_800CA144[];
extern char jtgt_ovl0_800CA194[];
extern char jtgt_ovl0_800CA5C8[];
extern char jtgt_ovl0_800CAB48[];
extern char jtgt_ovl0_800CB140[];
extern char jtgt_ovl0_800CB2F0[];
extern char jtgt_ovl0_800C973C[];
extern char func_ovl2_8010D250[];
extern char func_ovl2_8010D428[];
extern char func_ovl2_8010DE48[];
extern char func_ovl2_8010E00C[];
extern char jtgt_ovl0_800C994C[];
extern char jtgt_ovl0_800C99CC[];
extern char jtgt_ovl0_800C9F30[];
extern char jtgt_ovl0_800C9F70[];
extern char func_ovl2_80106904[];
extern char func_ovl2_8010E10C[];

void *jtbl_ovl0_800D5CAC[] = {
    jtgt_ovl0_800C96EC,
    jtgt_ovl0_800C96EC,
    jtgt_ovl0_800C9714,
    jtgt_ovl0_800C9714,
    jtgt_ovl0_800CA024,
    jtgt_ovl0_800CA024,
    jtgt_ovl0_800CA144,
    jtgt_ovl0_800CA144,
    jtgt_ovl0_800CA194,
    jtgt_ovl0_800CA194,
    jtgt_ovl0_800CA5C8,
    jtgt_ovl0_800CA5C8,
    jtgt_ovl0_800CAB48,
    jtgt_ovl0_800CAB48,
    jtgt_ovl0_800CB140,
    jtgt_ovl0_800CB140,
    jtgt_ovl0_800CB2F0,
    jtgt_ovl0_800CB2F0,
    jtgt_ovl0_800C973C,
    jtgt_ovl0_800C973C,
    func_ovl2_8010D250,
    func_ovl2_8010D428,
    func_ovl2_8010DE48,
    NULL,
    func_ovl2_8010E00C,
    NULL,
    jtgt_ovl0_800C994C,
    jtgt_ovl0_800C994C,
    jtgt_ovl0_800C99CC,
    jtgt_ovl0_800C99CC,
    jtgt_ovl0_800C9F30,
    jtgt_ovl0_800C9F30,
    jtgt_ovl0_800C9F70,
    jtgt_ovl0_800C9F70,
    func_ovl2_80106904,
    func_ovl2_80106904,
    func_ovl2_8010E00C,
    func_ovl2_8010E10C,
};

s32 D_ovl0_800D5D44 = 0x00050A0F;

/*** BSS ***/
u16 D_ovl0_800D62B0;
u16 D_ovl0_800D62B2;
u32 D_ovl0_800D62B4;
u32 D_ovl0_800D62B8;
u32 D_ovl0_800D62BC;
u32 D_ovl0_800D62C0;
u32 D_ovl0_800D62C4;
u8 D_ovl0_800D62C8[8]; // probably s32/u32
u8 D_ovl0_800D62D0[16];

#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wunknown-pragmas"

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800C7840.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800C78B8.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800C793C.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800C7A00.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800C7A84.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800C7AB8.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800C7AE0.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800C7B08.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800C7B58.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800C7C0C.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800C7C98.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800C7DB4.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800C82AC.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800C8654.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800C86E8.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800C8758.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800C87F4.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800C88AC.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800C89BC.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800C8A58.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800C8B28.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800C8CB8.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800C8DB4.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800C9228.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800C92C8.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800C9314.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800C9424.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800C9488.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800C96DC.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800C9A38.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800CB360.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800CB4B0.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800CB4E0.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800CB608.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800CB644.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800CB674.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800CB738.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800CB7D4.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800CC118.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800CC818.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800CCEAC.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800CCED8.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800CCF00.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800CCF74.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800CCFDC.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800CD050.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800CD0D0.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800CD1F0.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800CD214.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800CD2CC.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800CD440.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800CD538.s")
#endif

#ifdef MIPS_TO_C
#else
#pragma GLOBAL_ASM("game/nonmatching/ovl0/halbitmap/func_ovl0_800CD5AC.s")
#endif
#pragma GCC diagnostic pop
