#include <PR/ultratypes.h>
#include <PR/mbi.h>

#include "sys/gtl.h"
#include "sys/thread3.h"
#include "sys/ml.h"
#include "sys/system.h"

u8 D_80045490[16];
u8 D_800454A0[24];
u16 D_800454B8;
u16 D_800454BA;
u32 D_800454BC;
u8 D_800454C0[8];
u8 D_800454C8[24];
u8 D_800454E0[8];
unsigned int *D_800454E8; // pointer to Gfx.w1 (segment base addr?)
u8 D_800454F0[16];
u8 D_80045500[24];
u8 D_80045518[8];
u8 D_80045520[1056];
u8 D_80045940[3080];
u8 D_80046548[8];
u8 D_80046550[8];
u8 D_80046558[8];
u8 D_80046560[8];
u8 D_80046568[8];
u8 D_80046570[8];
u8 D_80046578[8];
u8 D_80046580[8];
u8 D_80046588[40];
u32 D_800465B0;
u32 D_800465B4;
u32 D_800465B8;
u32 D_800465BC;
u32 D_800465C0;
u32 D_800465C4;
u32 D_800465C8;
u32 D_800465CC;
u32 D_800465D0;
u32 D_800465D4;
u8 D_800465D8[12];
u32 D_800465E4;
//u8 D_800465E8[16];
struct BumpAllocRegion D_800465E8;
u8 D_800465F8[20];
u32 D_8004660C;
u32 D_80046610;
u32 D_80046614;
u32 D_80046618;
u32 D_8004661C;
u32 D_80046620;
u16 D_80046624;
u16 D_80046626;
u32 D_80046628;
u32 D_8004662C;
u32 D_80046630;
u32 D_80046634;
u8 D_80046638[8];
u8 D_80046640[8];
u8 D_80046648[32];
u32 D_80046668;
void *D_8004666C; // function pointer?

#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wunknown-pragmas"

void func_800048D0(void *arg0) {
    if (arg0 != NULL) {
        D_8004666C = arg0;
    } else {
        D_8004666C = unref_80000A34;
    }
}

void func_800048F8(Gfx **dl) {
    D_800454E8 = &((*dl)->words.w1);
    gSPSegment((*dl)++, G_MWO_SEGMENT_F, 0x00000000);
}

void unref_80004928(u32 arg0) {
    D_80046620 = arg0;
}

void unref_80004934(u16 arg0, u16 arg1) {
    D_80046624 = arg0;
    D_80046626 = arg1;
}

// alloc_region?
void func_80004950(void *start, u32 size) {
    init_bump_alloc(&D_800465E8, 0x10000, start, size);
}

// alloc_with_alignment
void *func_80004980(u32 size, u32 alignment) {
    return bump_alloc(&D_800465E8, size, alignment);
}

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/gtl/func_800049B0.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/gtl/func_80004A0C.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/gtl/func_80004AB0.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/gtl/func_80004B9C.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/gtl/func_80004C5C.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/gtl/func_80004CB4.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/gtl/func_80004D2C.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/gtl/func_80004DB4.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/gtl/func_80004E90.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/gtl/func_80004EFC.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/gtl/func_80004F78.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/gtl/func_80005018.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/gtl/func_800051E4.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/gtl/func_80005240.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/gtl/func_80005344.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/gtl/func_800053CC.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/gtl/func_800057C8.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/gtl/func_80005AE4.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/gtl/func_80005BFC.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/gtl/func_80005C74.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/gtl/func_80005C9C.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/gtl/func_80005D10.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/gtl/func_80005DA0.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/gtl/func_800062B4.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/gtl/func_800062EC.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/gtl/func_80006350.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/gtl/func_800063A0.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/gtl/func_80006548.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/gtl/func_8000683C.s")
#endif

#ifdef NON_MATCHING
#else
#pragma GLOBAL_ASM("game/nonmatching/gtl/func_80006B80.s")
#endif
#pragma GCC diagnostic pop
