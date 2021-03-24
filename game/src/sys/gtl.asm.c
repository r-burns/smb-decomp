#include <PR/ultratypes.h>
#include <PR/mbi.h>
#include <PR/ucode.h>
#include <macros.h>
#include <ssb_types.h>

#include "sys/gtl.h"
#include "sys/main.h"
#include "sys/thread3.h"
#include "sys/ml.h"
#include "sys/system.h"

struct UcodeInfo {
    /* 0x00 */ u64 *text;
    /* 0x04 */ u64 *data;
};

// match Nintendo's name to make the text and data symbols
#define NewUcodeInfo(ucode) { (u64 *)ucode##TextStart, (u64 *)ucode##DataStart }
#define NullUcodeInfo { NULL, NULL }
#define EndUncodeInfoArray NullUcodeInfo

// data
s32 D_8003B6E0 = 0;
s32 D_8003B6E4 = 0;

struct {
    s16 a;
    u8  b;
    u8  c;
} D_8003B6E8 = {0, 0, 0};
//s16 D_8003B6E8 = 0;
//u8 D_8003B6EB = 0;

// Ten total ucodes + a terminator?
struct UcodeInfo D_8003B6EC[11] = {
    NewUcodeInfo(gspF3DEX2_fifo),
    NullUcodeInfo,
    NullUcodeInfo,
    NullUcodeInfo,
    NullUcodeInfo,
    NullUcodeInfo,
    NullUcodeInfo,
    NullUcodeInfo,
    NullUcodeInfo,
    NullUcodeInfo,
    EndUncodeInfoArray,
};
// or is this part of the above array..?
// u32 pad8003B740[2] = { 0 };

// bss
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
OSMesgQueue D_80045500; // sctask end? or for all tasks?
u8 D_80045518[8];
OSMesgQueue D_80045520;
//u8 D_80045538[1032];
u64 D_80045538[SP_DRAM_STACK_SIZE64 + 1];
u64 D_80045940[OS_YIELD_DATA_SIZE / sizeof(u64) + 1];

struct DObj *D_80046548[2];
struct DObj *D_80046550[2];
struct DObj *D_80046558[2];
struct SCTaskGfxEnd *D_80046560[2];
void *D_80046568[2];
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
void *D_80046618; // u64 *?
u32 D_8004661C; // size of D_80046618
u32 D_80046620;
u16 D_80046624;
u16 D_80046626;
u16 D_80046628;
Gfx *D_8004662C;
// offset into D_80046648 and D_80046548; has to be unsigned
u32 D_80046630;
u32 D_80046634;
u8 D_80046638[8];
//u8 D_80046640[8];
s32 D_80046640;
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

struct DObj *func_80004D2C(void) {
    struct DObj *temp;

    if (D_80046548[D_80046630] == NULL) {
        fatal_printf("gtl : not defined SCTaskGfx\n");
        while (TRUE) ;
    }

    if (D_80046550[D_80046630] == D_80046558[D_80046630]) {
        fatal_printf("gtl : couldn\'t get SCTaskGfx\n");
        while (TRUE) ;
    }

    temp = D_80046550[D_80046630]++;

    return temp;
}

struct SCTaskGfxEnd {
    /* 0x00 */ struct SpMqInfo info;
    /* 0x28 */ s32 unk28;
}; // size >= 0x2C

#ifdef NON_MATCHING
/* a lot left to do on this one
    hopefully the arguments are correct
*/
struct Unk4DB4_38 {
    /* 0x00 */ u8 pad[0x38];
}; // size = 0x38

// this probably is `struct SCTaskGfxEnd`
struct Unk4DB4_2C {
    /* 0x00 */ u8 pad[0x2C];
}; // size = 0x2C

s32 func_80004DB4(struct DObj *arg0, s32 arg1, struct Unk4DB4_38 *arg2, struct Unk4DB4_2C *arg3) {
    s32 i = 0;
    struct DObj *csr;

    if (D_80046640 > 0) {
        csr = arg0;
        for (i = 0; i < D_80046640; i++) {
            
            D_80046548[i] = csr;
            D_80046550[i] = csr;
            D_80046558[i] = &arg0[arg1 * i];
            D_80046560[i] = (void *)&arg2[i];
            D_80046568[i] = (void *)&arg3[i];
            csr += arg1;
        }
    }

    // L80004E7C
    return i;
}
#else
#pragma GLOBAL_ASM("game/nonmatching/gtl/func_80004DB4.s")
#endif

// func_80004E90
void schedule_gfx_end(struct SCTaskGfxEnd *mesg, void *arg1, s32 arg2, OSMesgQueue *mq) {
    mesg->info.unk00 = 6;
    mesg->info.unk04 = 100;
    mesg->info.func = NULL;
    mesg->info.unk20 = mq;
    mesg->info.unk1C = arg2;
    mesg->info.unk24 = arg1;
    mesg->unk28 = D_80046630;

    osSendMesg(&gScheduleTaskQueue, (OSMesg)mesg, OS_MESG_NOBLOCK);
}

void func_80004EFC(void) {
    struct SCTaskGfxEnd *mesg = D_80046560[D_80046630];

    if (mesg == NULL) {
        fatal_printf("gtl : not defined SCTaskGfxEnd\n");
        while (TRUE) ;
    }

    schedule_gfx_end(mesg, (void *)-1, D_80046630, &D_80045500);
    D_80046550[D_80046630] = D_80046548[D_80046630];
}

void func_80004F78(void) {
    OSMesg recv;
    struct SCTaskGfxEnd *mesg = D_80046560[D_80046630];

    if (mesg == NULL) {
        fatal_printf("gtl : not defined SCTaskGfxEnd\n");
        while (TRUE) ;
    }

    schedule_gfx_end(mesg, NULL, D_80046630, &D_80045520);
    osRecvMesg(&D_80045520, &recv, OS_MESG_BLOCK);
    D_80046550[D_80046630] = D_80046548[D_80046630];
    func_800049B0();
    func_80004AB0();
}

// is this just a `struct SpTaskQueue`?, or another type of dynamic sp struct?
struct SCTaskUnk5018 {
    /* 0x00 */ struct SpMqInfo info;
    /* 0x28 */ OSTask task;
    /* 0x68 */ unsigned int *unk68;
    /* 0x6C */ u32 unk6C;
    /* 0x70 */ u32 unk70;
    /* 0x74 */ u32 unk74;
    /* 0x78 */ u32 unk78;
    /* 0x7C */ u32 unk7C;
    /* 0x80 */ u32 unk80;
}; // size == 0x84

void func_80005018(struct SCTaskUnk5018 *t, s32 arg1, u32 ucodeIdx, s32 arg3, u64 *arg4, u64 *arg5, u32 arg6) {
    struct UcodeInfo *ucode;
    // ...why?
    s32 two = 2;
    
    t->info.unk00 = 1;
    t->info.unk04 = 50;
    if (D_800454E8 != NULL) {
        t->info.func = D_8004666C;
        t->unk68 = D_800454E8;
        D_800454E8 = NULL;
    } else {
        t->info.func = NULL;
        t->unk68 = NULL;
    }
    t->unk6C = arg1;
    t->unk70 = D_800465D4;
    if (arg1 != 0) {
        t->info.unk20 = &D_80045500;
        t->info.unk1C = arg3;
    } else {
        t->info.unk20 = NULL;
    }
    t->info.unk18 = two;
    t->unk80 = D_80046630;
    t->unk7C = 0;

    t->task.t.type = M_GFXTASK;
    t->task.t.flags = OS_TASK_LOADABLE;
    t->task.t.ucode_boot = gRspBootCode;
    t->task.t.ucode_boot_size = sizeof(gRspBootCode);
    ucode = &D_8003B6EC[ucodeIdx];
    if (ucode->text == NULL) {
        fatal_printf("gtl : ucode isn\'t included  kind = %d\n", ucodeIdx);
        while (TRUE) ;
    }
    t->task.t.ucode = ucode->text;
    t->task.t.ucode_data = ucode->data;
    t->task.t.ucode_size = SP_UCODE_SIZE;
    t->task.t.ucode_data_size = SP_UCODE_DATA_SIZE;
    t->task.t.dram_stack = OS_DCACHE_ROUNDUP_ADDR(&D_80045538);
    t->task.t.dram_stack_size = SP_DRAM_STACK_SIZE8;

    switch (ucodeIdx) {
        case 0:
        case 2:
        case 4:
        case 6:
        case 8:
            // FIFO microcodes..?
            t->task.t.output_buff = arg5;
            t->task.t.output_buff_size = (u64 *)((uintptr_t)arg5 + arg6);
            t->unk74 = two;
            break;
        case 1:
        case 3:
        case 5:
        case 7:
        case 9:
            t->task.t.output_buff = NULL;
            t->task.t.output_buff_size = NULL;
            t->unk74 = 0;
            break;
    }
    t->task.t.data_ptr = arg4;
    t->task.t.data_size = 0;
    t->task.t.yield_data_ptr = OS_DCACHE_ROUNDUP_ADDR(&D_80045940);
    t->task.t.yield_data_size = OS_YIELD_DATA_SIZE;
    osWritebackDCacheAll();
    osSendMesg(&gScheduleTaskQueue, (OSMesg)t, OS_MESG_NOBLOCK);
}

u32 func_800051E4(void) {
    u32 o = D_80046628 != 0 ? D_80046626 : D_80046624;

    switch (o) {
        case 1:
        case 3:
        case 5:
        case 7:
        case 9:
            o = 9;
            break;
        default:
            o = 8;
            break;
    }

    return o;
}

void func_80005240(s32 arg0, u64 *arg1) {
    u32 uidx;

    if (arg0 == 0) {
        uidx = D_80046624;
        if (D_80046620 == 1) {
            switch (uidx) {
                case 0:
                    uidx = 2;
                    break;
                case 1:
                    uidx = 3;
                    break;
            }
        }
    } else {
        uidx = func_800051E4();
    }

    switch (uidx) {
        case 1:
        case 3:
        case 5:
        case 7:
        case 9:
            func_80005018((void *)func_80004D2C(), 0, uidx, D_80046630, arg1, NULL, 0);
            break;
        case 0:
        case 2:
        case 4:
        case 6:
        case 8:
            func_80005018((void *)func_80004D2C(), 0, uidx, D_80046630, arg1, D_80046618, D_8004661C);
            break;
    }
}

void append_ucode_load(Gfx **dlist, u32 ucodeIdx) {
    switch (ucodeIdx) {
        case 0:
            gSPLoadUcodeL((*dlist)++, gspF3DEX2_fifo);
            // intentional fall-thru
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        default:
            gSPDisplayList((*dlist)++, D_8004662C);
            break;
    }
}

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
