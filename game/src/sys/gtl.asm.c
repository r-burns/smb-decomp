#include <PR/ultratypes.h>
#include <PR/mbi.h>
#include <macros.h>
#include <ssb_types.h>

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
// is the collection of four `DLBuffer`s something worthy of a typedef?
struct DLBuffer D_80046570[2][4];
Gfx *D_800465B0[4];
Gfx *D_800465C0[4];

u32 D_800465D0;
u32 D_800465D4;
//u8 D_800465D8[12];
//u32 D_800465E4; // D_800465D8 + 12
struct BumpAllocRegion D_800465D8;
//u8 D_800465E8[16];
struct BumpAllocRegion D_800465E8;
u8 D_800465F8[20];
u32 D_8004660C;
u32 D_80046610;
u32 D_80046614;
void *D_80046618;
u32 D_8004661C;
u32 D_80046620;
u16 D_80046624;
u16 D_80046626;
u16 D_80046628;
Gfx *D_8004662C;
s32 D_80046630; // offset into D_80046648
u32 D_80046634;
u8 D_80046638[8];
u8 D_80046640[8];
struct BumpAllocRegion D_80046648[2];
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

// reset D_800465D8 allocator
void func_800049B0(void) {
    D_800465D8.id = D_80046648[D_80046630].id;
    D_800465D8.start = D_80046648[D_80046630].start;
    D_800465D8.end = D_80046648[D_80046630].end;
    D_800465D8.ptr = D_80046648[D_80046630].ptr;

    reset_bump_alloc(&D_800465D8);
}

void func_80004A0C(struct DLBuffer (*src)[4]) {
    s32 i;
    
    for (i = 0; i < ARRAY_COUNT(D_80046570); i++) {
        D_80046570[i][0] = src[i][0];
        D_80046570[i][1] = src[i][1];
        D_80046570[i][2] = src[i][2];
        D_80046570[i][3] = src[i][3];
    }
}

void func_80004AB0(void) {
    s32 i;

    for (i = 0; i < 4; i++) {
        D_800465B0[i] = D_800465C0[i] = D_80046570[D_80046630][i].start;
    }

    for (i = 0; i < 4; i++) {
        if (D_80046570[D_80046630][i].length != 0) {
            D_8004662C = D_800465B0[i];
            func_80007174(&D_800465B0[i]);
            gSPEndDisplayList(D_800465B0[i]++);
            D_800465C0[i] = D_800465B0[i];
            break;
        }
    }

    D_80046628 = 0;
}

void check_buffer_lengths(void) {
    s32 i;

    for (i = 0; i < 4; i++) {
        if (D_80046570[D_80046630][i].length + (uintptr_t)D_80046570[D_80046630][i].start < (uintptr_t)D_800465B0[i]) {
            fatal_printf(
                "gtl : DLBuffer over flow !  kind = %d  vol = %d byte\n", 
                i, 
                (uintptr_t)D_800465B0[i] - (uintptr_t)D_80046570[D_80046630][i].start
            );
            while (TRUE) ;
        }
    }

    if ((uintptr_t)D_800465D8.end < (uintptr_t)D_800465D8.ptr) {
        fatal_printf(
            "gtl : DynamicBuffer over flow !  %d byte\n", 
            (uintptr_t)D_800465D8.ptr - (uintptr_t)D_800465D8.start
        );
        while (TRUE) ;
    }
}

void func_80004C5C(struct MqListNode *arg0, u32 bufSize) {
    struct {
        struct SpMqInfo spmq;
        u32 size;
    } temp;
    
    temp.spmq.unk00 = 8;
    temp.spmq.unk04 = 50;
    temp.spmq.unk24 = arg0;
    temp.size = bufSize;
    func_80000970(&temp.spmq);

    if ((uintptr_t)&D_80044FC0 & 7) {
        fatal_printf("bad addr sc_rdp_output_len = %x\n", &D_80044FC0);
        while (TRUE) ;
    }
}

extern s32 D_8003B6E0; // data
void func_80004CB4(s32 arg0, void *arg1, u32 bufSize) {
    D_8003B6E0 = arg0;
    D_80046618 = arg1;
    D_8004661C = bufSize;

    if (arg0 == 2 || arg0 == 1) {
        if (bufSize == 0) {
            fatal_printf("gtl : Buffer size for RDP is zero !!\n");
            while (TRUE) ;
        }
    }

    if (arg0 == 1) {
        func_80004C5C(arg1, bufSize);
    }
}

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
