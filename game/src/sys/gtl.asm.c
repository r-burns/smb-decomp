#include "sys/gtl.h"

#include "sys/main.h"
#include "sys/ml.h"
#include "sys/system.h"
#include "sys/thread3.h"
#include "sys/thread6.h"

#include <macros.h>
#include <ssb_types.h>

#include <PR/mbi.h>
#include <PR/ucode.h>
#include <PR/ultratypes.h>

// structures
struct UcodeInfo {
    /* 0x00 */ u64 *text;
    /* 0x04 */ u64 *data;
};

struct FnBundle {
    /* 0x00 */ u16 unk00;
    /* 0x04 */ void (*fn04)(void);
    /* 0x08 */ void (*fn08)(struct FnBundle *);
    /* 0x0C */ void (*fn0C)(void);
    /* 0x10 */ void (*fn10)(struct FnBundle *);
}; // size == 0x14 (D_800465F8)

// data
s32 D_8003B6E0 = 0;
u32 D_8003B6E4 = 0;

union {
    u32 word;
    u8 parts[4];
} D_8003B6E8 = {0};

// Ten total ucodes + a terminator?

// match Nintendo's name to make the text and data symbols
#define NewUcodeInfo(ucode) \
    { (u64 *)ucode##TextStart, (u64 *)ucode##DataStart }
#define NullUcodeInfo \
    { NULL, NULL }
#define EndUncodeInfoArray NullUcodeInfo
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

// bss

OSMesg D_80045490[4];
OSMesgQueue D_800454A0;
u16 D_800454B8;
u16 D_800454BA;
u32 D_800454BC;
OSMesg D_800454C0[1];
OSMesgQueue D_800454C8;
struct MqListNode D_800454E0;
unsigned int *D_800454E8; // pointer to Gfx.w1 (segment base addr?)
OSMesg D_800454F0[3];
OSMesgQueue D_80045500; // sctask end? or for all tasks?
OSMesg D_80045518[1];
OSMesgQueue D_80045520;
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
s32 D_800465D4;
struct BumpAllocRegion D_800465D8;
struct BumpAllocRegion D_800465E8;
struct FnBundle D_800465F8;
u32 D_8004660C;
u32 D_80046610;
u32 D_80046614;
void *D_80046618; // u64 *?
u32 D_8004661C;   // size of D_80046618
u32 D_80046620;
u16 D_80046624;
u16 D_80046626;
u16 D_80046628;
Gfx *D_8004662C;
// offset into D_80046648 and D_80046548; has to be unsigned
u32 D_80046630;
s32 D_80046634;
s32 D_80046638[2];
s32 D_80046640;
struct BumpAllocRegion D_80046648[2];
void (*D_80046668)(void *); // takes function bundle struct?
void *D_8004666C;           // function pointer?

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
    D_800465D8.id    = D_80046648[D_80046630].id;
    D_800465D8.start = D_80046648[D_80046630].start;
    D_800465D8.end   = D_80046648[D_80046630].end;
    D_800465D8.ptr   = D_80046648[D_80046630].ptr;

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

    for (i = 0; i < 4; i++) { D_800465B0[i] = D_800465C0[i] = D_80046570[D_80046630][i].start; }

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
        if (D_80046570[D_80046630][i].length + (uintptr_t)D_80046570[D_80046630][i].start
            < (uintptr_t)D_800465B0[i]) {
            fatal_printf(
                "gtl : DLBuffer over flow !  kind = %d  vol = %d byte\n",
                i,
                (uintptr_t)D_800465B0[i] - (uintptr_t)D_80046570[D_80046630][i].start);
            while (TRUE) { }
        }
    }

    if ((uintptr_t)D_800465D8.end < (uintptr_t)D_800465D8.ptr) {
        fatal_printf(
            "gtl : DynamicBuffer over flow !  %d byte\n",
            (uintptr_t)D_800465D8.ptr - (uintptr_t)D_800465D8.start);
        while (TRUE) { }
    }
}

void func_80004C5C(void *arg0, u32 bufSize) {
    struct SCTaskType8 t;

    t.info.unk00 = 8;
    t.info.unk04 = 50;
    t.unk24      = arg0;
    t.unk28      = bufSize;
    func_80000970(&t.info);

    if ((uintptr_t)&D_80044FC0 & 7) {
        fatal_printf("bad addr sc_rdp_output_len = %x\n", &D_80044FC0);
        while (TRUE) { }
    }
}

void func_80004CB4(s32 arg0, void *arg1, u32 bufSize) {
    D_8003B6E0 = arg0;
    D_80046618 = arg1;
    D_8004661C = bufSize;

    if (arg0 == 2 || arg0 == 1) {
        if (bufSize == 0) {
            fatal_printf("gtl : Buffer size for RDP is zero !!\n");
            while (TRUE) { }
        }
    }

    if (arg0 == 1) { func_80004C5C(arg1, bufSize); }
}

struct DObj *func_80004D2C(void) {
    struct DObj *temp;

    if (D_80046548[D_80046630] == NULL) {
        fatal_printf("gtl : not defined SCTaskGfx\n");
        while (TRUE) { ; }
    }

    if (D_80046550[D_80046630] == D_80046558[D_80046630]) {
        fatal_printf("gtl : couldn\'t get SCTaskGfx\n");
        while (TRUE) { ; }
    }

    temp = D_80046550[D_80046630]++;

    return temp;
}

struct Unk4DB4_38 {
    /* 0x00 */ u8 pad[0x38];
}; // size == 0x38

#ifdef NON_MATCHING
void func_80004DB4(
    struct DObj *arg0,
    s32 arg1,
    struct SCTaskGfxEnd *arg2,
    struct Unk4DB4_38 *arg3) {
    s32 i;

    for (i = 0; i < D_80046640; i++) {
        D_80046548[i] = &arg0[arg1 * i];
        D_80046550[i] = &arg0[arg1 * i];
        D_80046558[i] = &arg0[arg1 * (i + 1)];
        D_80046560[i] = &arg2[i];
        D_80046568[i] = (void *)&arg3[i];
    }
}
#else
s32 func_80004DB4(struct DObj *arg0, s32 arg1, struct SCTaskGfxEnd *arg2, struct Unk4DB4_38 *arg3);
#pragma GLOBAL_ASM("game/nonmatching/gtl/func_80004DB4.s")
#endif

// func_80004E90
void schedule_gfx_end(struct SCTaskGfxEnd *mesg, void *arg1, s32 arg2, OSMesgQueue *mq) {
    mesg->info.unk00 = 6;
    mesg->info.unk04 = 100;
    mesg->info.func  = NULL;
    mesg->info.unk20 = mq;
    mesg->info.unk1C = arg2;
    mesg->unk24      = arg1;
    mesg->unk28      = D_80046630;

    osSendMesg(&gScheduleTaskQueue, (OSMesg)mesg, OS_MESG_NOBLOCK);
}

void func_80004EFC(void) {
    struct SCTaskGfxEnd *mesg = D_80046560[D_80046630];

    if (mesg == NULL) {
        fatal_printf("gtl : not defined SCTaskGfxEnd\n");
        while (TRUE) { ; }
    }

    schedule_gfx_end(mesg, (void *)-1, D_80046630, &D_80045500);
    D_80046550[D_80046630] = D_80046548[D_80046630];
}

void func_80004F78(void) {
    OSMesg recv;
    struct SCTaskGfxEnd *mesg = D_80046560[D_80046630];

    if (mesg == NULL) {
        fatal_printf("gtl : not defined SCTaskGfxEnd\n");
        while (TRUE) { ; }
    }

    schedule_gfx_end(mesg, NULL, D_80046630, &D_80045520);
    osRecvMesg(&D_80045520, &recv, OS_MESG_BLOCK);
    D_80046550[D_80046630] = D_80046548[D_80046630];
    func_800049B0();
    func_80004AB0();
}

// is this just a `struct SCTaskGfx`?, or another type of dynamic sp struct?
struct SCTaskUnk5018 {
    /* 0x00 */ struct SpMqInfo info;
    /* 0x28 */ OSTask task;
    /* 0x68 */ unsigned int *unk68;
    /* 0x6C */ u32 unk6C;
    /* 0x70 */ s32 unk70;
    /* 0x74 */ u32 unk74;
    /* 0x78 */ u32 unk78;
    /* 0x7C */ u32 unk7C;
    /* 0x80 */ u32 unk80;
}; // size == 0x84

void func_80005018(
    struct SCTaskUnk5018 *t,
    s32 arg1,
    u32 ucodeIdx,
    s32 arg3,
    u64 *arg4,
    u64 *arg5,
    u32 arg6) {
    struct UcodeInfo *ucode;
    // ...why?
    s32 two = 2;

    t->info.unk00 = 1;
    t->info.unk04 = 50;
    if (D_800454E8 != NULL) {
        t->info.func = D_8004666C;
        t->unk68     = D_800454E8;
        D_800454E8   = NULL;
    } else {
        t->info.func = NULL;
        t->unk68     = NULL;
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
    t->unk80      = D_80046630;
    t->unk7C      = 0;

    t->task.t.type            = M_GFXTASK;
    t->task.t.flags           = OS_TASK_LOADABLE;
    t->task.t.ucode_boot      = gRspBootCode;
    t->task.t.ucode_boot_size = sizeof(gRspBootCode);

    ucode = &D_8003B6EC[ucodeIdx];
    if (ucode->text == NULL) {
        fatal_printf("gtl : ucode isn\'t included  kind = %d\n", ucodeIdx);
        while (TRUE) { ; }
    }
    t->task.t.ucode           = ucode->text;
    t->task.t.ucode_data      = ucode->data;
    t->task.t.ucode_size      = SP_UCODE_SIZE;
    t->task.t.ucode_data_size = SP_UCODE_DATA_SIZE;
    t->task.t.dram_stack      = OS_DCACHE_ROUNDUP_ADDR(&D_80045538);
    t->task.t.dram_stack_size = SP_DRAM_STACK_SIZE8;

    switch (ucodeIdx) {
        case 0:
        case 2:
        case 4:
        case 6:
        case 8:
            // FIFO microcodes..?
            t->task.t.output_buff      = arg5;
            t->task.t.output_buff_size = (u64 *)((uintptr_t)arg5 + arg6);
            t->unk74                   = two;
            break;
        case 1:
        case 3:
        case 5:
        case 7:
        case 9:
            t->task.t.output_buff      = NULL;
            t->task.t.output_buff_size = NULL;
            t->unk74                   = 0;
            break;
    }
    t->task.t.data_ptr        = arg4;
    t->task.t.data_size       = 0;
    t->task.t.yield_data_ptr  = OS_DCACHE_ROUNDUP_ADDR(&D_80045940);
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
        case 9: o = 9; break;
        default: o = 8; break;
    }

    return o;
}

void func_80005240(s32 arg0, u64 *arg1) {
    u32 uidx;

    if (arg0 == 0) {
        uidx = D_80046624;
        if (D_80046620 == 1) {
            switch (uidx) {
                case 0: uidx = 2; break;
                case 1: uidx = 3; break;
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
        case 9: func_80005018((void *)func_80004D2C(), 0, uidx, D_80046630, arg1, NULL, 0); break;
        case 0:
        case 2:
        case 4:
        case 6:
        case 8:
            func_80005018(
                (void *)func_80004D2C(), 0, uidx, D_80046630, arg1, D_80046618, D_8004661C);
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
        default: gSPDisplayList((*dlist)++, D_8004662C); break;
    }
}

void func_800053CC(void) {
    s32 a0;
    s32 diffs;
    s32 i;
    s32 dlIdx;
    Gfx *cmdPtr;

    // calculate bitset of differences
    // bit 1 -> 0
    // 2 -> 1
    // 4 -> 2
    // 8 -> 3
    diffs = 0;
    for (i = 0; i < 4; i++) {
        diffs >>= 1;
        if (D_800465B0[i] != D_800465C0[i]) { diffs |= 8; }
    }

    if (diffs != 0) {
        if (diffs & 1) {
            if (diffs & 4) {
                append_ucode_load(&D_800465B0[0], func_800051E4());
                gSPBranchList(D_800465B0[0]++, D_800465C0[2]);
            } else if (diffs & 2) {
                // L80005480
                if (D_80046628 != 0) { append_ucode_load(&D_800465B0[0], D_80046624); }
                // L800054AC
                gSPBranchList(D_800465B0[0]++, D_800465C0[1]);
            } else if (diffs & 8) {
                // L800054DC
                append_ucode_load(&D_800465B0[0], func_800051E4());
                gSPBranchList(D_800465B0[0]++, D_800465C0[3]);
            } else {
                // L80005530
                gDPFullSync(D_800465B0[0]++);
                gSPEndDisplayList(D_800465B0[0]++);
            }
        }
        // L80005568
        if (diffs & 4) {
            if (diffs & 2) {
                append_ucode_load(&D_800465B0[2], D_80046624);
                gSPBranchList(D_800465B0[2]++, D_800465C0[1]);
            } else if (diffs & 8) {
                // L800055DC
                gSPBranchList(D_800465B0[2]++, D_800465C0[3]);
            } else {
                // L80005608
                gDPFullSync(D_800465B0[2]++);
                gSPEndDisplayList(D_800465B0[2]++);
            }
        }
        // L80005634
        if (diffs & 2) {
            if (diffs & 8) {
                append_ucode_load(&D_800465B0[0], func_800051E4());
                gSPBranchList(D_800465B0[1]++, D_800465C0[3]);
            } else {
                // L80005690
                gDPFullSync(D_800465B0[1]++);
                gSPEndDisplayList(D_800465B0[1]++);
            }
        }
        // L800056BC
        if (diffs & 8) {
            gDPFullSync(D_800465B0[3]++);
            gSPEndDisplayList(D_800465B0[3]++);
        }
        // L800056F8

        if (diffs & 1) {
            dlIdx = 0;
            a0    = 0;
        } else if (diffs & 4) {
            // L80005708
            dlIdx = 2;
            a0    = 1;
        } else if (diffs & 2) {
            // L80005720
            dlIdx = 1;
            a0    = 0;
        } else {
            // L80005734
            dlIdx = 3;
            a0    = 1;
        }
        // L80005738
        cmdPtr = D_800465B0[dlIdx];
        gSPDisplayList(D_800465B0[dlIdx]++, D_8004662C);
        gSPBranchList(D_800465B0[dlIdx]++, D_800465C0[dlIdx]);
        func_80005240(a0, (u64 *)cmdPtr);

        D_800465C0[0] = D_800465B0[0];
        D_800465C0[2] = D_800465B0[2];
        D_800465C0[1] = D_800465B0[1];
        D_800465C0[3] = D_800465B0[3];
    }
    // L800057AC
    check_buffer_lengths();
}

void func_800057C8(void) {
    s32 i;
    s32 diffs;

    check_buffer_lengths();
    diffs = 0;
    for (i = 0; i < 4; i++) {
        diffs >>= 1;
        if (D_800465B0[i] != D_800465C0[i]) { diffs |= 8; }
    }

    if (diffs != 0) {
        if (diffs & 1) {
            if (diffs & 4) {
                append_ucode_load(&D_800465B0[0], func_800051E4());
                gSPBranchList(D_800465B0[0]++, D_800465C0[2]);
            } else if (diffs & 2) {
                // L80005878
                if (D_80046628 != 0) { append_ucode_load(&D_800465B0[0], D_80046624); }
                // L800058A4
                gSPBranchList(D_800465B0[0]++, D_800465C0[1]);
            } else if (diffs & 8) {
                // L800058D0
                append_ucode_load(&D_800465B0[0], func_800051E4());
                gSPBranchList(D_800465B0[0]++, D_800465C0[3]);
            }
        }
        // L8000591C
        if (diffs & 4) {
            if (diffs & 2) {
                append_ucode_load(&D_800465B0[2], D_80046624);
                gSPBranchList(D_800465B0[2]++, D_800465C0[1]);
            } else if (diffs & 8) {
                // L80005980
                gSPBranchList(D_800465B0[2]++, D_800465C0[3]);
            } else {
                // L800059AC
                append_ucode_load(&D_800465B0[2], D_80046624);
                gSPBranchList(D_800465B0[2]++, D_800465B0[0]);
            }
            // L800059E0
            D_800465C0[2] = D_800465B0[2];
        }
        // L800059EC
        if (diffs & 2) {
            if (diffs & 8) {
                append_ucode_load(&D_800465B0[0], func_800051E4());
                gSPBranchList(D_800465B0[1]++, D_800465C0[3]);
            } else {
                // L80005A3C
                if (D_80046628 != 0) { append_ucode_load(&D_800465B0[1], D_80046624); }
                // L80005A58
                gSPBranchList(D_800465B0[1]++, D_800465B0[0]);
            }
            // L80005A74
            D_800465C0[1] = D_800465B0[1];
        }
        // L80005A84
        if (diffs & 8) {
            append_ucode_load(&D_800465B0[3], D_80046624);
            gSPBranchList(D_800465B0[3]++, D_800465B0[0]);
            D_800465C0[3] = D_800465B0[3];
        }
    }
    // L80005AC4
    D_80046628 = 0;
    check_buffer_lengths();
}

u32 func_80005AE4(s32 arg0) {
    s32 msg;
    s32 i;

    // clang-format off
    // while mesg queue is not empty
    while (osRecvMesg(&D_80045500, (OSMesg *)&msg, OS_MESG_NOBLOCK) != -1) { 
        D_80046638[msg] = 0; 
    }
    // clang-format on

    do {
        for (i = 0; i < D_80046640; i++) {
            if (D_80046638[i] == 0) {
                D_80046630    = i;
                D_80046638[i] = 1;
                return 1;
            }
        }
        if (arg0 == 0) {
            osRecvMesg(&D_80045500, (OSMesg *)&msg, OS_MESG_BLOCK);
            D_80046638[msg] = 0;
        }
    } while (arg0 == 0);

    return 0;
}

void func_80005BFC(void) {
    struct RealSCInfo info;
    OSMesg msgs[1];
    OSMesgQueue mq;

    info.unk00 = 7;
    info.unk04 = 50;
    osCreateMesgQueue(&mq, msgs, ARRAY_COUNT(msgs));
    info.func  = func_80000B54;
    info.unk1C = 1;
    info.unk20 = &mq;

    osSendMesg(&gScheduleTaskQueue, (OSMesg)&info, OS_MESG_NOBLOCK);
    osRecvMesg(&mq, NULL, OS_MESG_BLOCK);
}

void func_80005C74(void) {
    D_800465D0 = 1;
}

void unref_80005C84(s32 arg0) {
    D_800465D0 = 2;
    D_800465D4 = arg0;
}

s32 func_80005C9C(void) {
    struct RealSCInfo info;

    switch (D_800465D0) {
        case 1: return 1;
        case 2:
            if (D_80044FA4 != 0) {
                info.unk00 = 11;
                info.unk04 = 100;
                func_80000970((void *)&info);
                return 1;
            }
            return 0;
        default: return 0;
    }
}

void func_80005D10(void) {
    if (D_800454BC == 1) {
        D_800454BC = 2;
        while (osRecvMesg(&D_800454C8, NULL, OS_MESG_NOBLOCK) != -1) { ; }

        osRecvMesg(&D_800454C8, NULL, OS_MESG_BLOCK);
        D_800454BC = 0;
    }
}

void func_80005DA0(struct FnBundle *arg0) {
    s32 i;

    D_800454BC = 0;

    while (osRecvMesg(&D_80045500, NULL, OS_MESG_NOBLOCK) != -1) { ; }
    while (osRecvMesg(&D_80045520, NULL, OS_MESG_NOBLOCK) != -1) { ; }
    while (osRecvMesg(&D_800454A0, NULL, OS_MESG_NOBLOCK) != -1) { ; }

    // L80005E78
    D_800465D0 = 0;
    D_800465D4 = -1;
    D_80046630 = 1;
    D_80044FA4 = 0;

    for (i = 0; i < ARRAY_COUNT(D_80046638); i++) { D_80046638[i] = 0; }
    // 80005EB8
    if (arg0->unk00 & 1) {
        // L80005EF8
        while (TRUE) {
            func_80005D10();
            check_stack_probes();
            for (i = 0; i < D_800454B8; i++) { osRecvMesg(&D_800454A0, NULL, OS_MESG_BLOCK); }
            // L80005F34
            while (osRecvMesg(&D_800454A0, NULL, OS_MESG_NOBLOCK) != -1) { ; }
            // L80005F60
            D_8004660C = osGetCount();
            arg0->fn08(arg0);
            D_8003B6E4 += 1;
            D_80046610 = (osGetCount() - D_8004660C) / 2971; // what is this constant?
            // L80005FB0
            if (func_80005C9C()) { break; }

            if (D_8003B6E4 % D_800454BA == 0) {
                // L80005FDC
                func_80005AE4(0);
                D_8004660C = osGetCount();
                arg0->fn10(arg0);
                D_8003B6E8.word += 1;
                D_80046614 = (osGetCount() - D_8004660C) / 2971;
                // L8000603C

                if (func_80005C9C()) { break; }
            }
        }
        // L8000604C
        // unconditional loop back
    } else {
        // L80006054
        while (TRUE) {
            // L80006070
            func_80005D10();
            check_stack_probes();
            for (i = 0; i < D_800454B8; i++) { osRecvMesg(&D_800454A0, NULL, OS_MESG_BLOCK); }
            // L800060AC
            while (osRecvMesg(&D_800454A0, NULL, OS_MESG_NOBLOCK) != -1) { ; }
            // L800060D8
            D_8004660C = osGetCount();
            arg0->fn08(arg0);
            D_8003B6E4 += 1;
            D_80046610 = (osGetCount() - D_8004660C) / 2971;
            // L80006128
            if (func_80005C9C()) { break; }

            // L80006154
            if (D_8003B6E4 % D_800454BA == 0 && func_80005AE4(1)) {
                D_8004660C = osGetCount();
                arg0->fn10(arg0);
                D_8003B6E8.word += 1;
                D_80046614 = (osGetCount() - D_8004660C) / 2971;
                // L800061BC
                if (func_80005C9C()) { break; }
            }
            // L800061CC
        }
    }
    // L800061D4
    func_80005BFC();
    while (osRecvMesg(&D_80045500, NULL, OS_MESG_NOBLOCK) != -1) { ; }
    while (osRecvMesg(&D_80045520, NULL, OS_MESG_NOBLOCK) != -1) { ; }
    while (osRecvMesg(&D_800454A0, NULL, OS_MESG_NOBLOCK) != -1) { ; }
    // L80006270
    func_80007168(NULL);
    D_800454BC = 2;
}

void func_800062B4(struct FnBundle *self) {
    D_80046668(self);
    self->fn04();
}

void func_800062EC(struct FnBundle *self) {
    func_800049B0();
    func_80004AB0();
    self->fn0C();
    func_800053CC();
    func_80006F5C(D_80046568[D_80046630]);
    func_80004EFC();
}

void func_80006350(struct FnBundle *self) {
    D_80046668(self);
    self->fn04();
    if (func_80005C9C()) { func_8000B7B4(); }
}

void func_800063A0(struct FnBundle *self) {
    func_800049B0();
    func_80004AB0();
    self->fn0C();
    func_800053CC();
    func_80006F5C(D_80046568[D_80046630]);
    func_80004EFC();
    if (func_80005C9C()) { func_8000B7B4(); }
}

struct Temp8000641C {
    /* 0x00 */ u8 pad00[0x2c];
    /* 0x2C */ void (*fn2C)(struct Temp8000641C *);
}; // size >= 0x2C

void unref_8000641C(struct Temp8000641C *arg0) {
    s32 idx;
    struct SCTaskGfxEnd *task;

    func_80005AE4(0);
    func_800049B0();
    func_80004AB0();
    arg0->fn2C(arg0);
    func_800053CC();
    task = D_80046560[D_80046630];
    if (task == NULL) {
        fatal_printf("gtl : not defined SCTaskGfxEnd\n");
        while (TRUE) { ; }
    }
    schedule_gfx_end(task, NULL, D_80046630, &D_80045500);
    D_80046550[D_80046630] = D_80046548[D_80046630];
    do {
        osRecvMesg(&D_80045500, (OSMesg *)&idx, OS_MESG_BLOCK);
        D_80046638[idx] = 0;
    } while (D_80046638[D_80046630] != 0);

    D_8003B6E8.word += 1;
}

void func_80006548(struct BufferSetup *arg0, void (*arg1)(void)) {
    s32 i;
    struct DLBuffer sp44[2][4];

    D_80046640       = arg0->unk18;
    D_800465F8.unk00 = arg0->unk00;
    D_800465F8.fn04  = arg0->fn04;
    D_800465F8.fn0C  = arg0->fn08;

    func_80004DB4(
        func_80004980(arg0->unk14 * sizeof(struct DObj) * D_80046640, 8),
        arg0->unk14,
        func_80004980(sizeof(struct SCTaskGfxEnd) * D_80046640, 8),
        func_80004980(sizeof(struct Unk4DB4_38) * D_80046640, 8));
    // 80006620
    for (i = 0; i < D_80046640; i++) {
        // L80006630
        sp44[i][0].start  = func_80004980(arg0->unk1C, 8);
        sp44[i][0].length = arg0->unk1C;
        sp44[i][1].start  = func_80004980(arg0->unk20, 8);
        sp44[i][1].length = arg0->unk20;
        sp44[i][2].start  = func_80004980(arg0->unk24, 8);
        sp44[i][2].length = arg0->unk24;
        sp44[i][3].start  = func_80004980(arg0->unk28, 8);
        sp44[i][3].length = arg0->unk28;
    }
    // L800066A8
    func_80004A0C(sp44);
    for (i = 0; i < D_80046640; i++) {
        // L800066D0
        init_bump_alloc(&D_800465D8, 0x10002, func_80004980(arg0->unk2C, 8), arg0->unk2C);
        D_80046648[i].id    = D_800465D8.id;
        D_80046648[i].start = D_800465D8.start;
        D_80046648[i].end   = D_800465D8.end;
        D_80046648[i].ptr   = D_800465D8.ptr;
    }
    // L80006724
    arg0->unk30 = 2;
    if (arg0->unk34 == 0) { arg0->unk34 = 0x1000; }
    // L80006740
    func_80004CB4(arg0->unk30, func_80004980(arg0->unk34, 16), arg0->unk34);
    func_80007168(arg0->fn38);
    D_80046668 = arg0->fn3C;
    enable_auto_contread((uintptr_t)schedule_contread != (uintptr_t)D_80046668 ? 1 : 0);

    D_8003B6E4 = D_8003B6E8.word = 0;
    if (arg1 != NULL) { arg1(); }
    // L800067B4
    func_80005DA0(&D_800465F8);
}

void unref_800067E4(struct BufferSetup *arg) {
    func_80004950(arg->unk0C, arg->unk10);
    D_800465F8.fn08 = func_800062B4;
    D_800465F8.fn10 = func_800062EC;
    func_80006548(arg, NULL);
}

void func_8000683C(struct Wrapper683C *arg) {
    struct TempUnkA6E0 sp24;

    func_80004950(arg->setup.unk0C, arg->setup.unk10);
    // what is this struct?
    sp24.unk00 = func_80004980(0x1C0U * arg->unk40, 8);
    sp24.unk04 = arg->unk40;
    sp24.unk08 = arg->unk44;
    if (arg->unk44 != 0) {
        sp24.unk0C = func_80004980((arg->unk44 + 8) * arg->unk48, 8);
    } else {
        sp24.unk0C = NULL;
    }
    // L800068BC
    sp24.unk10 = arg->unk48;
    sp24.unk14 = arg->unk4C;
    // what is this struct?
    sp24.unk18 = func_80004980(0x24U * arg->unk50, 4);
    sp24.unk1C = arg->unk50;
    sp24.unk20 = func_80004980(arg->unk58 * arg->unk54, 8);
    sp24.unk24 = arg->unk54;
    sp24.unk28 = arg->unk58;
    sp24.unk2C = func_80004980(0x48U * arg->unk5C, 8);
    sp24.unk30 = arg->unk5C;
    func_80010734(arg->unk60);
    sp24.unk34 = arg->unk64;
    sp24.unk38 = func_80004980(0x24U * arg->unk68, 4);
    sp24.unk3C = arg->unk68;
    sp24.unk40 = func_80004980(0xA8U * arg->unk6C, 4);
    sp24.unk44 = arg->unk6C;

    sp24.unk48 = func_80004980(arg->unk74 * arg->unk70, 8U);
    sp24.unk4C = arg->unk70;
    sp24.unk50 = arg->unk74;
    sp24.unk54 = func_80004980(arg->unk7C * arg->unk78, 8U);
    sp24.unk58 = arg->unk78;
    sp24.unk5C = arg->unk7C;
    sp24.unk60 = func_80004980(arg->unk84 * arg->unk80, 8U);
    sp24.unk64 = arg->unk80;
    sp24.unk68 = arg->unk84;

    func_8000A6E0(&sp24);
    D_800465F8.fn08 = func_80006350;
    D_800465F8.fn10 = func_800063A0;
    func_80006548(&arg->setup, arg->unk88);
}

void unref_80006A8C(u16 arg0, u16 arg1) {
    D_800454B8 = arg0;
    D_800454BA = arg1;
}

void unref_80006AA8(void) {
    if (D_800454BC != 2) { D_800454BC = 1; }
}

s32 unref_80006AD0(void) {
    if (D_800454BC == 2) { return 1; }

    return 0;
}

void unref_80006AF8(void) {
    osSendMesg(&D_800454C8, NULL, OS_MESG_NOBLOCK);
}

void unref_80006B24(s32 arg0) {
    if (arg0 == 1 || arg0 == 2) { D_80046640 = arg0; }
}

s32 unref_80006B44(s32 arg0) {
    if ((arg0 == 1 || arg0 == 2)) {
        if ((&D_80046634)[arg0] == 0) { return 1; }
    }

    return 0;
}

void func_80006B80(void) {
    s32 i;
    s32 j;

    for (i = 0; i < 2; i++) {
        D_80046558[i] = NULL;
        D_80046550[i] = NULL;
        D_80046548[i] = NULL;
        D_80046560[i] = NULL;
    }
    // 80006BD8
    D_80046620 = 0;
    D_80046624 = D_80046626 = 0;
    // D_80046624 = 0;

    for (i = 0; i < 2; i++) {
        for (j = 0; j < 4; j++) {
            D_80046570[i][j].start  = NULL;
            D_80046570[i][j].length = 0;
        }
    }
    // 80006C2C
    D_800454E8 = NULL;
    func_800048D0(NULL);

    func_800009D8(&D_800454E0, &D_800454A0, D_80045490, ARRAY_COUNT(D_80045490));
    osCreateMesgQueue(&D_80045500, D_800454F0, ARRAY_COUNT(D_800454F0));
    osCreateMesgQueue(&D_80045520, D_80045518, ARRAY_COUNT(D_80045518));
    D_800454B8 = D_800454BA = 1;
    osCreateMesgQueue(&D_800454C8, D_800454C0, ARRAY_COUNT(D_800454C0));
    D_800454BC = 2;
}

#pragma GCC diagnostic pop
