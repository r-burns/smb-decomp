#include <PR/ultratypes.h>
#include <PR/os.h>
#include <PR/sptask.h>
#include <PR/rcp.h>
#include <missing_libultra.h>
#include <macros.h>
#include <ssb_types.h>

#include "sys/main.h"
#include "sys/thread3.h"
#include "sys/system.h"

struct MqListNode {
    /* 0x00 */ struct MqListNode *next;
    /* 0x04 */ OSMesgQueue *mq;
};

struct SpMqInfo {
    /* 0x00 */ s32 unk00;
    /* 0x04 */ s32 unk04;
    /* 0x08 */ s32 unk08;
    /* 0x0C */ struct SpTaskQueue *unk0C; // next; should these point to the combined type, or just this info type?
    /* 0x10 */ struct SpTaskQueue *unk10; // prev
    /* 0x14 */ s32 (*func)(struct SpTaskQueue *);
    /* 0x18 */ s32 unk18;
    /* 0x1C */ s32 unk1C;
    /* 0x20 */ OSMesgQueue *unk20;
    /* 0x24 */ struct MqListNode *unk24; // checked type? (-1 is meaningful)
};

struct SpTaskQueue {
    /* 0x00 */ struct SpMqInfo info;
    /* 0x28 */ OSTask task;
    /* 0x68 */ s32 *unk68;
    /* 0x6C */ s32 *unk6C; // checked type? (-1 is meaningful)
    /* 0x70 */ u8 pad70[0x04];
    /* 0x74 */ s32 unk74;
    /* 0x78 */ s32 unk78;
    /* 0x7C */ s32 unk7C;
    /* 0x80 */ u32 unk80;
};

/*
	28 00 u32	type;
	2C 04 u32	flags;
	30 08 u64	*ucode_boot;
	34 0c u32	ucode_boot_size;

	38 10 u64	*ucode;
	3c 14 u32	ucode_size;
	40 18 u64	*ucode_data;
	44 1c u32	ucode_data_size;

	48 20 u64	*dram_stack;
	4c 24 u32	dram_stack_size;
	50 28 u64	*output_buff;
	54 2c u64	*output_buff_size;

	58 30 u64	*data_ptr;
	5c 34 u32	data_size;
	60 38 u64	*yield_data_ptr;
	64 3c u32	yield_data_size;
*/

union CheckedPtr {
    void *ptr;
    intptr_t tag;
};

struct ViSettings {
    u8 unk_b80 : 1;       // b0 0 80 => unknown game control (arg2 & 0x1) [aa & resamp enabled?]
    u8 serrate : 1;       // b1 0 40 => serrate enabled (bool)
    u8 pixelSize32 : 1;   // b2   20 => type_32 enabled
    u8 gamma : 1;         // b3   10 => gamma on
    u8 blackout : 1;      // b4   08 => unknown game control (arg2 & 0x100) [blackout ?]
    u8 unk_b04 : 1;       // b5   04 => unknown game control (arg2 & 0x400)
    u8 gamma_dither : 1;  // b6   02 => gamma dither on
    u8 dither_filter : 1; // b7   01 => dither filter
    u8 divot : 1;         // b8 1 80 => divot on
                          // b9 1 40 
};




// bss
struct MqListNode *D_80044EC0;
struct SpTaskQueue *D_80044EC4;
struct SpTaskQueue *D_80044EC8;
struct SpTaskQueue *D_80044ECC;
struct SpTaskQueue *D_80044ED0;
struct SpTaskQueue *D_80044ED4;
struct SpTaskQueue *D_80044ED8;
struct SpTaskQueue *D_80044EDC;
struct SpTaskQueue *D_80044EE0;
struct SpTaskQueue *D_80044EE4;
OSViMode D_80044EE8;
OSViMode D_80044F38;
u32 D_80044F88[2];
void *D_80044F90[3];
void *D_80044F9C;
void *D_80044FA0;
u32 D_80044FA4;
void *D_80044FA8;
u32 D_80044FAC;
u32 D_80044FB0;
u32 D_80044FB4;
u32 D_80044FB8;
struct ViSettings D_80044FBC; //bitflags? union?
s64 D_80044FC0;
s32 *D_80044FC8;
u32 D_80044FCC; //index into D_80044FC8?
u32 D_80044FD0; // unknown
u8 unref_80044FD4[4];
OSMesg D_80044FD8[8];
OSMesgQueue gScheduleTaskQueue;
u32 D_80045010;
OSMesgQueue *D_80045014;
void (*D_80045018)(void);
s32 D_8004501C;
s32 D_80045020;
s32 D_80045024; // return of osAfterPreNMI
void *D_80045028[3];
u8 D_80045034;
u8 D_80045035;
u8 extend_D_80045036;
u8 extend_D_80045037;
u8 extend_D_80045038[8];


#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wunknown-pragmas"

void func_80000920(s32 val) {
    D_8004501C = val;
}

s32 func_8000092C(void) {
    return D_8004501C;
}

void unref_80000938(void) {
    struct SpTaskQueue *i = D_80044ECC, *j = D_80044EE4, *k = D_80044EDC;
    
    do {

    } while ( i || j || k );
}

void func_80000970(struct SpMqInfo *arg0) {
    OSMesg msgs[1];
    OSMesgQueue mq;

    osCreateMesgQueue(&mq, msgs, ARRAY_COUNT(msgs));
    arg0->func = NULL;
    arg0->unk1C = 1;
    arg0->unk20 = &mq;
    osSendMesg(&gScheduleTaskQueue, (OSMesg)arg0, OS_MESG_NOBLOCK);
    osRecvMesg(&mq, NULL, OS_MESG_BLOCK);
}

void func_800009D8(struct MqListNode *arg0, OSMesgQueue *mq, OSMesg *msg, u32 count) {
    struct SpMqInfo sp18;
    
    osCreateMesgQueue(mq, msg, count);
    arg0->mq = mq;
    sp18.unk00 = 3;
    sp18.unk04 = 100;
    sp18.unk24 = arg0;
    func_80000970(&sp18);
}

struct Unk80000A34 {
    /* 0x00 */ u8 pad00[0x70];
    /* 0x70 */ s32 unk70;
};


#ifdef NON_MATCHING
s32 unref_80000A34(struct Unk80000A34 *arg0) {
    void *nextFb; //1c
    void *tempA0_2;
    void *curFb; // temp_v0
    void *tempA0; // a0
    s32 i; // a0_2]

    if (!D_80044F9C) {
        return 1;
    } 
    if (!D_80044FA0) {
        return 0;
    }

    nextFb = osViGetNextFramebuffer();
    curFb = osViGetCurrentFramebuffer();

    if (arg0->unk70 != -1) {
        tempA0 = D_80044F90[arg0->unk70];
        if (tempA0 && tempA0 != curFb && tempA0 != nextFb) {
            D_80044F9C = tempA0;
            D_80044FA0 = tempA0;
            D_80044FC8 = 0;
            D_80044FAC = osGetCount();

            return 1;
        } // L80000AE8

        for (i = 0; i < ARRAY_COUNT(D_80044F90); i++) {
            tempA0_2 = D_80044F90[i];
            if (tempA0_2 && tempA0_2 != curFb && tempA0_2 != nextFb) {
                D_80044F9C = tempA0_2;
                D_80044FC8 = 0;
                D_80044FAC = osGetCount();
                return 1;
            }
        }
    }

    return 0;
}
#else
#pragma GLOBAL_ASM("game/nonmatching/thread3/unref_80000A34.s")
#endif /* NON_MATCHING */


s32 func_80000B54(UNUSED s32 arg0) {
    struct SpTaskQueue *temp_v0;
    const s32 CHECK = 1;

    if (D_80044ECC != NULL && D_80044ECC->info.unk00 == CHECK) {
        return 0;
    }

    temp_v0 = D_80044ED4;
    while (temp_v0 != NULL) {
        if (temp_v0->info.unk00 == CHECK) {
            return 0;
        }
        temp_v0 = temp_v0->info.unk0C;
    }

    temp_v0 = D_80044EC4;
    while (temp_v0 != NULL) {
        if (temp_v0->info.unk00 == CHECK) {
            return 0;
        }
        temp_v0 = temp_v0->info.unk0C;
    }

    if (D_80044EE4 != NULL && D_80044EE4->info.unk00 == CHECK) {
        return 0;
    }

    temp_v0 = D_80044EDC;
    while (temp_v0 != NULL) {
        if (temp_v0->info.unk00 == CHECK) {
            return 0;
        }
        temp_v0 = temp_v0->info.unk0C;
    }

    if (D_80045034 != D_80045035) {
        return 0;
    }

    return 1;
}


void func_80000C64(struct SpTaskQueue *arg0) {
    struct SpTaskQueue *temp_v0;

    temp_v0 = D_80044EC8;
    while (temp_v0 != NULL && temp_v0->info.unk04 < arg0->info.unk04) {
        temp_v0 = temp_v0->info.unk10;
    }

    arg0->info.unk10 = temp_v0;
    if (temp_v0 != NULL) {
        arg0->info.unk0C = temp_v0->info.unk0C;
        temp_v0->info.unk0C = arg0;
    } else {
        arg0->info.unk0C = D_80044EC4;
        D_80044EC4 = arg0;
    }

    temp_v0 = arg0->info.unk0C;
    if (temp_v0 != NULL) {
        temp_v0->info.unk10 = arg0;
    } else {
        D_80044EC8 = arg0;
    }
}

void func_80000CF4(struct SpTaskQueue *arg0) {
    if (arg0->info.unk10 != NULL) {
        arg0->info.unk10->info.unk0C = arg0->info.unk0C;
    } else {
        D_80044EC4 = arg0->info.unk0C;
    }

    if (arg0->info.unk0C != NULL) {
        arg0->info.unk0C->info.unk10 = arg0->info.unk10;
    } else {
        D_80044EC8 = arg0->info.unk10;
    }
}

void func_80000D44(struct SpTaskQueue *arg0) {
    struct SpTaskQueue *temp_v0;

    temp_v0 = D_80044ED8;
    while (temp_v0 != NULL && temp_v0->info.unk04 < arg0->info.unk04) {
        temp_v0 = temp_v0->info.unk10;
    }

    arg0->info.unk10 = temp_v0;
    if (temp_v0 != NULL) {
        arg0->info.unk0C = temp_v0->info.unk0C;
        temp_v0->info.unk0C = arg0;
    } else {
        arg0->info.unk0C = D_80044ED4;
        D_80044ED4 = arg0;
    }

    temp_v0 = arg0->info.unk0C;
    if (temp_v0 != NULL){
        temp_v0->info.unk10 = arg0;
    } else {
        D_80044ED8 = arg0;
    }
}

void func_80000DD4(struct SpTaskQueue *arg0) {
    if (arg0->info.unk10 != NULL) {
        arg0->info.unk10->info.unk0C = arg0->info.unk0C;
    } else {
        D_80044ED4 = arg0->info.unk0C;
    }

    if (arg0->info.unk0C != NULL) {
        arg0->info.unk0C->info.unk10 = arg0->info.unk10;
    } else {
        D_80044ED8 = arg0->info.unk10;
    }
}

void func_80000E24(struct SpTaskQueue *arg0) {
    arg0->info.unk0C = NULL;
    arg0->info.unk10 = D_80044EE0;
    if (D_80044EE0 != NULL) {
        D_80044EE0->info.unk0C = arg0;
    } else {
        D_80044EDC = arg0;
    }
    D_80044EE0 = arg0;
}

void func_80000E5C(struct SpTaskQueue *arg0) {
    if (arg0->info.unk10 != NULL) {
        arg0->info.unk10->info.unk0C = arg0->info.unk0C;
    } else {
        D_80044EDC = arg0->info.unk0C;
    }

    if (arg0->info.unk0C != NULL) {
        arg0->info.unk0C->info.unk10 = arg0->info.unk10;
    } else {
        D_80044EE0 = arg0->info.unk10;
    }
}

void func_80000EAC(void) {
    D_80044EE8 = D_80044F38;
    osViSetMode(&D_80044EE8);
   
    // probably bitfield
    //osViBlack((D_80044FBC << 4) >> 31);
    osViBlack(D_80044FBC.blackout);
    D_80044F88[0] = 0;
}

void func_80000F30(u32, u32, u32, s16, s16, s16, s16);
/*
OSViMode *func_80000F30(u32 arg0, u32 arg1, s32 arg2, s16 arg3, s16 arg4, s16 arg5, s16 arg6) {
    u32 sp20;
    s32 sp1C;
    s32 sp14;
    u32 sp0;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_lo;
    s32 temp_t6_3;
    s32 temp_t8;
    s32 temp_t8_2;
    s32 temp_t8_3;
    s32 temp_t9;
    s32 temp_t9_2;
    u32 temp_t0;
    u32 temp_t1;
    u32 temp_t4;
    u32 temp_t6;
    u32 temp_t6_2;
    u32 temp_t7;
    u32 temp_t7_2;
    u32 temp_t7_3;
    u32 phi_t9;
    s32 phi_t2;
    u32 phi_t1;
    s32 phi_v1;
    s32 phi_a0;
    u32 phi_t0;
    s32 phi_a0_2;
    u32 phi_a0_3;
    s32 phi_a0_4;
    s32 phi_t9_2;
    s32 phi_a0_5;

    //if ((arg0 >= 0x141U) || (phi_t2 = 1, ((arg1 < 0xF1U) == 0))) {
    //    phi_t2 = 0;
    //} else {
    //
    //}

    phi_t2 = arg0 < 0x141 && arg1 > 0xF1 ? 1 : 0;
    // L80000F5C

    if ((arg2 & 4) != 0) {
        D_80044FBC.unk0 = (u8) (D_80044FBC.unk0 | 0x40);
        D_80044F38.comRegs.ctrl = (u32) (D_80044F38.comRegs.ctrl | 0x40);
    }
    if ((arg2 & 8) != 0) {
        D_80044FBC.unk0 = (u8) (D_80044FBC.unk0 & 0xFFBF);
        D_80044F38.comRegs.ctrl = (u32) (D_80044F38.comRegs.ctrl & -0x41);
    }
    if ((arg2 & 0x10) != 0) {
        temp_t7 = D_80044F38.comRegs.ctrl & -4;
        D_80044FBC.unk0 = (u8) (D_80044FBC.unk0 & 0xFFDF);
        D_80044F38.comRegs.ctrl = temp_t7;
        D_80044F38.comRegs.ctrl = (u32) (temp_t7 | 2);
    }
    if ((arg2 & 0x20) != 0) {
        temp_t7_2 = D_80044F38.comRegs.ctrl & -4;
        D_80044FBC.unk0 = (u8) (D_80044FBC.unk0 | 0x20);
        D_80044F38.comRegs.ctrl = temp_t7_2;
        D_80044F38.comRegs.ctrl = (u32) (temp_t7_2 | 3);
    }
    if ((arg2 & 0x40) != 0) {
        D_80044FBC.unk0 = (u8) (D_80044FBC.unk0 | 0x10);
        D_80044F38.comRegs.ctrl = (u32) (D_80044F38.comRegs.ctrl | 8);
    }
    if ((arg2 & 0x80) != 0) {
        D_80044FBC.unk0 = (u8) (D_80044FBC.unk0 & 0xFFEF);
        D_80044F38.comRegs.ctrl = (u32) (D_80044F38.comRegs.ctrl & -9);
    }
    if ((arg2 & 0x1000) != 0) {
        D_80044FBC.unk0 = (u8) (D_80044FBC.unk0 | 2);
        D_80044F38.comRegs.ctrl = (u32) (D_80044F38.comRegs.ctrl | 4);
    }
    if ((arg2 & 0x2000) != 0) {
        D_80044FBC.unk0 = (u8) (D_80044FBC.unk0 & 0xFFFD);
        D_80044F38.comRegs.ctrl = (u32) (D_80044F38.comRegs.ctrl & -5);
    }
    if ((arg2 & 0x4000) != 0) {
        D_80044FBC.unk0 = (u8) (D_80044FBC.unk0 | 1);
        D_80044F38.comRegs.ctrl = (u32) (D_80044F38.comRegs.ctrl | 0x10000);
    }
    if ((arg2 & 0x8000) != 0) {
        D_80044FBC.unk0 = (u8) (D_80044FBC.unk0 & 0xFFFE);
        D_80044F38.comRegs.ctrl = (u32) (D_80044F38.comRegs.ctrl & 0xFFFEFFFF);
    }
    if ((arg2 << 0xF) < 0) {
        D_80044FBC.unk1 = (u8) (D_80044FBC.unk1 | 0x80);
        D_80044F38.comRegs.ctrl = (u32) (D_80044F38.comRegs.ctrl | 0x10);
    }
    if ((arg2 << 0xE) < 0) {
        D_80044FBC.unk1 = (u8) (D_80044FBC.unk1 & 0xFF7F);
        D_80044F38.comRegs.ctrl = (u32) (D_80044F38.comRegs.ctrl & -0x11);
    }
    if ((arg2 & 0x100) != 0) {
        D_80044FBC.unk0 = (u8) (D_80044FBC.unk0 | 8);
    }
    if ((arg2 & 0x200) != 0) {
        D_80044FBC.unk0 = (u8) (D_80044FBC.unk0 & 0xFFF7);
    }
    if ((arg2 & 0x400) != 0) {
        D_80044FBC.unk0 = (u8) (D_80044FBC.unk0 | 4);
    }
    if ((arg2 & 0x800) != 0) {
        D_80044FBC.unk0 = (u8) (D_80044FBC.unk0 & 0xFFFB);
    }
    if ((arg2 & 1) != 0) {
        D_80044FBC.unk0 = (u8) ((D_80044FBC.unk0 & 0xFF7F) | 0x80);
    }
    if ((arg2 & 2) != 0) {
        D_80044FBC.unk0 = (u8) (D_80044FBC.unk0 & 0xFF7F);
    }
    D_80044F38.comRegs.ctrl = (u32) (D_80044F38.comRegs.ctrl & -0x301);
    if (((u32) D_80044FBC.unk0 >> 0x1F) != 0) {
        phi_a0_5 = 0x100;
        if ((D_80044FBC.unk0 & 1) != 0) {
            phi_a0_5 = 0;
        }
        phi_t9 = D_80044F38.comRegs.ctrl | phi_a0_5;
        phi_t1 = (u32) (D_80044FBC.unk0 << 5) >> 0x1F;
        phi_t0 = (u32) (D_80044FBC.unk0 * 4) >> 0x1F;
block_47:
        D_80044F38.comRegs.ctrl = phi_t9;
    } else {
        temp_t1 = (u32) (D_80044FBC.unk0 << 5) >> 0x1F;
        if ((temp_t1 == 0) && (temp_t0 = (u32) (D_80044FBC.unk0 * 4) >> 0x1F, (temp_t0 == 1))) {
            D_80044F38.comRegs.ctrl = (u32) (D_80044F38.comRegs.ctrl | 0x300);
            phi_t1 = temp_t1;
            phi_t0 = temp_t0;
        } else {
            phi_t9 = D_80044F38.comRegs.ctrl | 0x200;
            phi_t1 = temp_t1;
            phi_t0 = (u32) (D_80044FBC.unk0 * 4) >> 0x1F;
            goto block_47;
        }
    }
    if (phi_t2 != 0) {
        if ((D_80044FBC.unk0 * 2) < 0) {
            phi_v1 = 0;
        } else {
            phi_v1 = 1;
        }
    } else {
        phi_v1 = 1;
        if (phi_t1 != 0) {
            phi_v1 = 0;
        }
    }
    temp_a3 = phi_t2 == 0;
    temp_a1 = (s32) ((arg5 & 0xFFFE) << 0x10) >> 0x10;
    temp_a2 = (s32) ((arg6 & 0xFFFE) << 0x10) >> 0x10;
    if ((temp_a3 != 0) && (phi_v1 == 0)) {
        sp14 = 2;
    } else {
        sp14 = 1;
    }
    if (phi_t2 != 0) {
        phi_a0_3 = 1U;
    } else {
        phi_a0_3 = 2U;
    }
    temp_t4 = arg1 << 0xB;
    temp_lo = ((u32) (temp_t4 / (u32) ((temp_a2 - temp_a1) + 0x1E0)) / phi_a0_3) * sp14;
    if ((temp_a3 != 0) && (phi_v1 != 0)) {
        phi_a0 = 2;
    } else {
        phi_a0 = 1;
    }
    D_80044F38.comRegs.width = (u32) (phi_a0 * arg0);
    if (osTvType == 1) {
        D_80044F38.comRegs.burst = 0x3E52239U;
        D_80044F38.comRegs.vSync = 0x20CU;
        D_80044F38.comRegs.hSync = 0xC15U;
        D_80044F38.comRegs.leap = 0xC150C15U;
        D_80044F38.comRegs.hStart = 0x6C02ECU;
        D_80044F38.unk30 = 0x2501FFU;
        D_80044F38.unk34 = 0xE0204;
    }
    if (2 == osTvType) {
        D_80044F38.comRegs.burst = 0x4651E39U;
        D_80044F38.comRegs.vSync = 0x20CU;
        D_80044F38.comRegs.hSync = 0xC10U;
        D_80044F38.comRegs.leap = 0xC1C0C1CU;
        D_80044F38.comRegs.hStart = 0x6C02ECU;
        D_80044F38.unk30 = 0x2501FFU;
        D_80044F38.unk34 = 0xE0204;
    }
    sp0 = D_80044F38.comRegs.hStart;
    D_80044F38.unk44 = (u32) D_80044F38.unk30;
    temp_t6 = (u32) D_80044F38.comRegs.hStart >> 0x10;
    sp20 = temp_t6;
    sp1C = D_80044F38.comRegs.hStart & 0xFFFF;
    temp_t9 = temp_t6 + arg3;
    sp20 = (u32) temp_t9;
    if (temp_t9 < 0) {
        sp20 = 0U;
    }
    temp_t8 = sp1C + arg4;
    sp1C = temp_t8;
    if (temp_t8 < 0) {
        sp1C = 0;
    }
    D_80044F38.comRegs.hStart = (u32) ((sp20 << 0x10) | sp1C);
    temp_t6_2 = (u32) D_80044F38.unk30 >> 0x10;
    sp0 = D_80044F38.unk30;
    sp20 = temp_t6_2;
    temp_t9_2 = temp_t6_2 + temp_a1;
    sp1C = D_80044F38.unk30 & 0xFFFF;
    sp20 = (u32) temp_t9_2;
    if (temp_t9_2 < 0) {
        sp20 = 0U;
    }
    temp_t8_2 = sp1C + temp_a2;
    sp1C = temp_t8_2;
    if (temp_t8_2 < 0) {
        sp1C = 0;
    }
    D_80044F38.unk30 = (u32) ((sp20 << 0x10) | sp1C);
    temp_t7_3 = (u32) D_80044F38.unk44 >> 0x10;
    sp0 = D_80044F38.unk44;
    sp20 = temp_t7_3;
    temp_t6_3 = temp_t7_3 + temp_a1;
    sp1C = D_80044F38.unk44 & 0xFFFF;
    sp20 = (u32) temp_t6_3;
    if (temp_t6_3 < 0) {
        sp20 = 0U;
    }
    temp_t8_3 = sp1C + temp_a2;
    sp1C = temp_t8_3;
    if (temp_t8_3 < 0) {
        sp1C = 0;
    }
    D_80044F38.unk44 = (u32) ((sp20 << 0x10) | sp1C);
    D_80044F38.unk48 = (s32) D_80044F38.unk34;
    if ((phi_t2 != 0) && (phi_v1 != 0)) {
        D_80044F38.comRegs.vSync = (u32) (D_80044F38.comRegs.vSync + 1);
        if (2 == osTvType) {
            D_80044F38.comRegs.hSync = (u32) (D_80044F38.comRegs.hSync + 0x40001);
        }
        if (2 == osTvType) {
            D_80044F38.comRegs.leap = (u32) (D_80044F38.comRegs.leap + 0xFFFCFFFE);
        }
    } else {
        D_80044F38.unk30 = (u32) (D_80044F38.unk30 + 0xFFFDFFFE);
        if (2 == osTvType) {
            D_80044F38.unk34 = (s32) (D_80044F38.unk34 + 0xFFFCFFFE);
        }
        if (osTvType == 0) {
            D_80044F38.unk48 = (s32) (D_80044F38.unk48 + 0x2FFFE);
        }
    }
    D_80044F38.comRegs.vCurrent = 0U;
    D_80044F38.comRegs.xScale = (u32) ((u32) (arg0 << 0xA) / (u32) ((arg4 - arg3) + 0x280));
    phi_a0_2 = 2;
    if (phi_t0 == 0) {
        phi_a0_2 = 1;
    }
    D_80044F38.fldRegs = (OSViFieldRegs *) ((phi_a0_2 * arg0) * 2);
    if (phi_t0 == 0) {
        sp14 = 1;
    } else {
        sp14 = 2;
    }
    phi_a0_4 = 2;
    if (phi_t2 != 0) {
        phi_a0_4 = 1;
    }
    D_80044F38.unk2C = temp_lo;
    D_80044F38.unk40 = temp_lo;
    D_80044F38.unk3C = (s32) (((phi_a0_4 * arg0) * 2) * sp14);
    if (phi_t1 != 0) {
        if (temp_t4 < 0xB4000U) {
            D_80044F38.unk2C = (s32) (temp_lo + 0x3000000);
            phi_t9_2 = temp_lo + 0x1000000;
        } else {
            D_80044F38.unk2C = (s32) (D_80044F38.unk2C + 0x2000000);
            phi_t9_2 = D_80044F38.unk40 + 0x2000000;
        }
        D_80044F38.unk40 = phi_t9_2;
    }
    D_80044F38.unk38 = 2;
    D_80044F38.unk4C = 2;
    *D_80044F88 = 1U;
    return &D_80044F38;
}
*/
#pragma GLOBAL_ASM("game/nonmatching/thread3/func_80000F30.s")

void func_800016D8(void) {
    void *cur;
    void *next;

    if (D_80045035 != D_80045034) {
        next = osViGetNextFramebuffer();
        cur = osViGetCurrentFramebuffer();
        if (next == cur) {
            osViSwapBuffer(D_80045028[D_80045035]);
            if (D_80045035 == 2) {
                D_80045035 = 0;
            } else {
                D_80045035 += 1;
            }
        }
    }
}

void func_80001764(void *arg0) {
    D_80045028[D_80045034] = arg0;
    if (D_80045034 == 2) {
        D_80045034 = 0;
    } else {
        D_80045034 += 1;
    }
    func_800016D8();
}

// arg0 is frame buffer pointer?
void func_800017B8(void *arg0) {
    void *temp;

    if (D_80044F88[0] != 0) {
        if (D_80045020 == 0) {
            func_80000EAC();
        }
    }

    if (D_80045010 != 0) {
        osSendMesg(D_80045014, (OSMesg)1, OS_MESG_NOBLOCK);
        if ((intptr_t)arg0 == -1) {
            D_80044FA8 = D_80044F9C;
            D_80044F9C = NULL;
        } else {
            D_80044FA8 = arg0;
        }
    } else {
        if ((intptr_t)arg0 == -1) {
            func_80001764(D_80044F9C);
            // permutater solution
            temp = D_80044F9C; if (temp == D_80044FA0) { 
                D_80044FA4 = 1; 
            }
            D_80044FA8 = temp;
            D_80044F9C = NULL;
        } else {
            func_80001764((void *)arg0);
            D_80044FA8 = arg0;
        }
    }
    // OS_CYCLES_TO_NSEC?
    D_80044FB4 = (u32) ((u32) (osGetCount() - D_80044FAC) / 0xB9BU);
}

void func_800018E0(struct SpTaskQueue *arg0) {
    if (D_80044ECC != 0) {
        osSpTaskYield();
        D_80044ECC->info.unk08 = 4;
        func_80000D44(D_80044ECC);
        arg0->info.unk08 = 3;
    } else {
        osSpTaskStart(&arg0->task);
        arg0->info.unk08 = 2;
    }
    D_80044ECC = arg0;
}

void func_80001968(struct SpTaskQueue *arg0) {
    D_80044FB0 = osGetCount();

    if ((D_80044ECC != NULL) && (D_80044ECC->info.unk08 == 2)) {
        osSpTaskYield();
        D_80044ECC->info.unk08 = 4;
        arg0->info.unk08 = 3;
    } else {
        osSpTaskStart(&arg0->task);
        arg0->info.unk08 = 2;
    }
    D_80044ED0 = arg0;
}


s32 func_80001A00(struct SpTaskQueue *arg0);
#ifdef NON_MATCHING
s32 func_80001A00(struct SpTaskQueue *arg0) {
    s32 sp4C = 0;

    switch (arg0->info.unk00) {
        case 1:
            if (arg0->unk68 != NULL) {
                arg0->unk68 = D_80044F9C;
                osWritebackDCache(arg0->unk68, sizeof(s32 *));
            }
            //L80001A6C
            if ((uintptr_t) arg0->task.t.output_buff == (uintptr_t)-1) {
                arg0->task.t.output_buff = &D_80044FC8[D_80044FCC];
                osWritebackDCache(&arg0->task.t.output_buff, sizeof(u64 *));
            }
            // L80001A98
            if (arg0->unk74 == 1) {
                osInvalDCache(&D_80044FC0, sizeof(D_80044FC0));
            }
            // L80001AB4
            func_800018E0(arg0);
            sp4C = 1;
            break;
        case 2:
            osWritebackDCacheAll();
            func_80001968(arg0);
            sp4C = 1;
            break;
        case 3:
            arg0->info.unk24 = D_80044EC0;
            D_80044EC0 = arg0->info.unk24;
            if (arg0->info.unk20 != NULL) {
                osSendMesg(arg0->info.unk20, (OSMesg)arg0->info.unk1C, OS_MESG_NOBLOCK);
            }
            break;
        case 4:
            func_80000F30(
                arg0->info.unk24, 
                arg0->task.t.type,
                arg0->task.t.flags,
                ((s16 *) &arg0->task.t.ucode_boot)[0],
                ((s16 *) &arg0->task.t.ucode_boot)[1],
                ((s16 *) &arg0->task.t.ucode_boot_size)[0],
                ((s16 *) &arg0->task.t.ucode_boot_size)[1]
            );

            if (arg0->info.unk20 != NULL) {
                osSendMesg(arg0->info.unk20, (OSMesg)arg0->info.unk1C, OS_MESG_NOBLOCK);
            }
            break;
        case 5:
            // v0 = &D_80044F90
            // a0 = &D_80044F9C
            // v1 = arg0
            // L80001B7C
            {
            s32 i;
            for (i = 0; i < ARRAY_COUNT(D_80044F90); i++) {
                D_80044F90[i] = arg0[i].info.unk24;
            }
            }
            if (arg0->info.unk20 != NULL) {
                osSendMesg(arg0->info.unk20, (OSMesg)arg0->info.unk1C, OS_MESG_NOBLOCK);
            }
            break;
        case 6:
            // really big
            {
            struct SpTaskQueue *v1 = NULL;
            struct SpTaskQueue *v0;
            // a0 = D_80044ECC;
            if (D_80044ECC != NULL) {
                if (D_80044ECC->info.unk00 == 1) {
                    if (arg0->task.t.type == D_80044ECC->unk80) {
                        v1 = D_80044ECC;
                    }
                }
            }
            // L80001BEC
            v0 = D_80044ED4;
            while (v0 != NULL) {
                if (v0->info.unk00 == 1) {
                    if (arg0->task.t.type == v0->unk80) {
                        v1 = v0;
                    }
                }
                // L80001C20
                v0 = v0->info.unk0C;
            }
            //L80001C28
            v0 = D_80044EC4;
            while (v0 != NULL) {
                if (v0->info.unk00 == 1) {
                    if (arg0->task.t.type == v0->unk80) {
                        v1 = v0;
                    }
                }
                //L80001C5C
                v0 = v0->info.unk0C;
            }
            //L80001C64
            v0 = D_80044EE4;
            if (v0 != NULL) {
                if (v0->info.unk00 == 1) {
                    if (arg0->task.t.type == D_80044ECC->unk80) {
                        v1 = v0;
                    }
                }
            }
            // L80001C94
            v0 = D_80044EDC;
            while (v0 != NULL) {
                if (v0->info.unk00 == 1) {
                    if (arg0->task.t.type == v0->unk80) {
                        v1 = v0;
                    }
                }
                v0 = v0->info.unk0C;
            }
            // L80001CD0
            if (v1 != NULL) {
                v1->info.unk1C = arg0->info.unk1C;
                v1->info.unk20 = arg0->info.unk20;
                v1->unk6C = arg0->info.unk24;
            } else {
                //L80001CF8
                if (arg0->info.unk24 != NULL) {
                    func_800017B8(arg0->info.unk20);
                }
                //L80001D0C
                if (arg0->info.unk20 != NULL) {
                    osSendMesg(arg0->info.unk20, (OSMesg)arg0->info.unk1C, OS_MESG_NOBLOCK);
                }
            }
            }
            break;
        case 7:
            if (arg0->info.unk20 != NULL) {
                osSendMesg(arg0->info.unk20, (OSMesg)arg0->info.unk1C, OS_MESG_NOBLOCK);
            }
            break;
        case 8:
            D_80044FCC = (uintptr_t)arg0->info.unk24;
            D_80044FD0 = arg0->task.t.type;
            if (arg0->info.unk20 != NULL) {
                osSendMesg(arg0->info.unk20, (OSMesg)arg0->info.unk1C, OS_MESG_NOBLOCK);
            }
            break;
        case 9:
            D_80045010 = 1;
            D_80045014 = (OSMesgQueue *)arg0->info.unk24;
            if (arg0->info.unk20 != NULL) {
                osSendMesg(arg0->info.unk20, (OSMesg)arg0->info.unk1C, OS_MESG_NOBLOCK);
            }
            break;
        case 10:
            D_80045010 = 0;
            if (arg0->info.unk20 != NULL) {
                osSendMesg(arg0->info.unk20, (OSMesg)arg0->info.unk1C, OS_MESG_NOBLOCK);
            }
            break;
        case 11:
            {
            struct SpTaskQueue *a0 = D_80044EC4;
            //struct SpTaskQueue *sp34;
            while (a0 != NULL) {
                if (a0->info.unk00 == 1 || a0->info.unk00 == 4) {
                    //sp34 = a0->unk0C;
                    func_80000CF4(a0);
                    //a0 = sp34;
                } 
                // L80001E28
                a0 = a0->info.unk0C;
            }
            }
            // L80001E30
            D_80044FA0 = NULL;
            if (arg0->info.unk20 != NULL) {
                osSendMesg(arg0->info.unk20, (OSMesg)arg0->info.unk1C, OS_MESG_NOBLOCK);
            }
            break;
    }
    // L80001E50

    return sp4C;
}
#else 
#pragma GLOBAL_ASM("game/nonmatching/thread3/func_80001A00.s")
#endif /* NON_MATCHING */

void func_80001E64(void) {
    s32 phi_a0;
    s32 phi_v0;
    s32 phi_v1;
    struct SpTaskQueue *phi_s0;
    struct SpTaskQueue *temp_s1;
    s32 phi_s2 = 0;
    s32 phi_s4;
    s32 phi_s7;


    phi_s7 = D_80044ECC != NULL ? D_80044ECC->info.unk04 : -1;

    if (D_80044ED0 != NULL) {
        phi_s7 = D_80044ED0->info.unk04;
    }

    phi_s4 = D_80044ED4 != NULL ? D_80044ED4->info.unk04 : -1;

    phi_s0 = D_80044EC4;
    while (phi_s2 == 0) {
        phi_v0 = phi_s0 != NULL ? phi_s0->info.unk04 : - 1;

        if (phi_s4 >= phi_v0) {
            phi_v1 = 0;
            phi_a0 = phi_s4;
        } else {
            phi_v1 = 1;
            phi_a0 = phi_v0;
        }
   
        if (phi_s7 >= phi_a0) {
            phi_s2 = 1;
        } else {
            switch (phi_v1) {
                case 0:
                    osSpTaskStart(&D_80044ED4->task);
                    phi_s2 = 1;
                    D_80044ED4->info.unk08 = 2;
                    D_80044ECC = D_80044ED4;
                    func_80000DD4(D_80044ED4);
                break;
                case 1: 
                    if (phi_s0->info.func == NULL || phi_s0->info.func(phi_s0) != 0) {
                        phi_s2 = func_80001A00(phi_s0);
                        temp_s1 = phi_s0->info.unk0C;
                        func_80000CF4(phi_s0);
                        phi_s0 = temp_s1;
                    } else {
                        phi_s0 = phi_s0->info.unk0C;
                    }
                break;
            }
        }
    }
}

void func_80001FF4(void) {
    if (D_80044EE4 == NULL && D_80044EDC != NULL) {
        D_80044EE4 = D_80044EDC;
        func_80000E5C(D_80044EDC);
        D_80044EE4->info.unk08 = 2;
        osDpSetNextBuffer(D_80044EE4->task.t.output_buff, D_80044EE4->unk78);
    }
}

void func_8000205C(void) {
    struct MqListNode *cur;
    // temp usages are needed to match
    struct MqListNode *temp;

    D_8004501C += 1;
    cur = D_80044EC0;
    while (cur != NULL) {
        temp = cur;
        osSendMesg(temp->mq, (OSMesg) 1, 0);
        cur = cur->next;
        
        if (temp->mq) { }
    }

    func_800016D8();
    func_80001E64();
}

void func_800020D0(void);
#ifdef NON_MATCHING
void func_800020D0(void) {
    s32 t6;

    if (D_80044ED0 != NULL && D_80044ED0->info.unk08 == 2) {
        osSendMesg(D_80044ED0->info.unk20, (OSMesg)0, OS_MESG_NOBLOCK);
        D_80044ED0 = NULL;
        func_80001E64();
        D_80044FB8 = (osGetCount() - D_80044FB0) / 2971;

        return;
    }
    // L8000213C
    if (D_80044ECC != NULL && D_80044ECC->info.unk08 == 4) {
        if (osSpTaskYielded(&D_80044ECC->task) == OS_TASK_YIELDED) {
            D_80044ECC->info.unk08 = 5;
            func_80000D44(D_80044ECC);
            D_80044ECC = NULL;
        } else {
            //L80002198
            D_80044ECC->info.unk08 = 6;
        }
        // L800021A4
        osSpTaskStart(&D_80044ED0->task);
        D_80044ED0->info.unk08 = 2;
    }
    // L800021DC
    if (D_80044ECC != NULL && D_80044ECC->info.unk18 == 1 && D_80044ECC->info.unk08 != 5) {
        if (D_80044ECC->info.unk00 == 1 && D_80044ECC->unk74 == 1) {
            osInvalDCache(&D_80044FC0, sizeof(D_80044FC0));
            D_80044ECC->unk78 = D_80044FC0;
            /*
            t5 = D_80044FC8[0];
            t6 = D_80044FC0 upper;
            t7 = D_80044FC0 lower;
            a2 = 1;
            t2 = t5 + t7;
            t1 = t2 + 15;
            // store t6 to stack sp + 18
            t0 = (sp + 18);
            t4 = t1 >> 4;
            t6 = t4 << 4;
            t8 = t6 >> 0x1f;
            *D_80044FC8 = t2;
            *D_80044FC8 = t6;
            // store t7 to stack (sp + 1c)
            */

           
           //sp18 = D_80044FC0.pad00;
           //t6 = ((((u32)D_80044FC8 + D_80044FC0.unk04 + 15) << 4) >> 4);
           //sp1C = D_80044FC0.unk04;
           //sp1C = *((u64 *)&D_80044FC0);
           t6 = (((*D_80044FC8 + (u32)D_80044FC0) + 15) << 4) >> 4;
           *D_80044FC8 = *D_80044FC8 + (u32)D_80044FC0;
           *D_80044FC8 = t6;

            if (D_80044FC0 < t6) {
                fatal_printf("rdp_output_buff over !! size = %d\n byte", t6);
                while (TRUE) { }
            }
            /*
            if ( sp18 >= (t6 >> 31)) {
                if (sp18 >= (t6 >> 31)) {
                    if (t6 < sp1C) {
                        fatal_printf("rdp_output_buff over !! size = %d\n byte", t6);
                        while (TRUE) { }
                    }

                } 
                // L800022BC
            }*/

            // L800022BC
            D_80044ECC->info.unk08 = 1;
            func_80000E24(D_80044ECC);
            func_80001FF4();
        }
        // L800022D4
        D_80044ECC = NULL;
        func_80001E64();
        return;
    }
    // L800022E8
    if (D_80044ECC != NULL && D_80044ECC->info.unk18 == 2) {
        if (D_80044ECC->info.unk00 == 1) {
            D_80044ECC->info.unk08 = 6;
            if (D_80044ECC->unk7C & 2) {
                D_80044ECC->unk7C |= 1;
            }
        }
    }
    // L80002330

}
#else
#pragma GLOBAL_ASM("game/nonmatching/thread3/func_800020D0.s")
#endif /* NON_MATCHING */

void func_80002340(void) {
    union CheckedPtr checked; // could just be a void *temp
    
    if (D_80044ECC != NULL && D_80044ECC->info.unk18 == 2) {
        if (D_80044ECC->info.unk00 == 1) {
            checked.ptr = D_80044ECC->unk6C;
            if (checked.ptr != NULL) {
                func_800017B8(checked.ptr);
            }

            if (D_80044ECC->info.unk20 != NULL) {
                osSendMesg(D_80044ECC->info.unk20, (OSMesg)D_80044ECC->info.unk1C, OS_MESG_NOBLOCK);
            }
            
            if (D_80044ECC->info.unk08 == 4) {
                osSpTaskStart(&D_80044ED0->task);
                D_80044ED0->info.unk08 = 2;
            }
        }
        
        D_80044ECC = NULL;
        func_80001E64();
    } else if (D_80044EE4 != NULL) {
        checked.ptr = D_80044EE4->unk6C;
        if (checked.ptr != NULL) {
            func_800017B8(checked.ptr);
        }
        
        if (D_80044EE4->info.unk20 != NULL) {
            osSendMesg(D_80044EE4->info.unk20, (OSMesg)D_80044EE4->info.unk1C, OS_MESG_NOBLOCK);
        }
        
        D_80044EE4 = NULL;
        func_80001FF4();
    } else if (D_80044ED4 != NULL && D_80044ED4->info.unk18 == 2) {
        if (D_80044ED4->info.unk00 == 1) {
            checked.ptr = D_80044ED4->unk6C;
            if (checked.ptr != NULL) {
                func_800017B8(checked.ptr);
            }

            if (D_80044ED4->info.unk20 != NULL) {
                osSendMesg(D_80044ED4->info.unk20, (OSMesg)D_80044ED4->info.unk1C, OS_MESG_NOBLOCK);
            }

            func_80000DD4(D_80044ED4);
        }
        func_80001E64();
    }
}

// might only take a struct SpTaskInfo *
void func_800024EC(struct SpTaskQueue *arg0) {
    arg0->info.unk08 = 1;
    func_80000C64(arg0);
    func_80001E64();
}

// forward dec
void func_800029D8(void);

#define INTR_VRETRACE 1
#define INTR_SP_TASK_DONE 2
#define INTR_DP_FULL_SYNC 3
#define INTR_SOFT_RESET 99

void thread3_scheduler(UNUSED void *arg) {
    OSMesg intrMsg;
    UNUSED u32 pad;
    OSViMode mode;
    
    // the wonders of matching
    D_80044EC0 = NULL;
    D_80044EC4 = D_80044EC8 = D_80044ECC = D_80044ED0 = D_80044ED4 = D_80044ED8 = NULL;
    D_80044EE4 = D_80044EDC = D_80044EE0 = NULL;
    D_80044F88[0] = 0;
    D_80044FA8 = D_80044F9C = D_80044FA0 = NULL;
    D_80045010 = 0;
    D_80045018 = func_800029D8;
    D_80045020 = 0;
    D_80045024 = -1;
    D_8004501C = 0;
    D_80045034 = D_80045035 = 0;

    switch (osTvType) {
        case OS_TV_NTSC:
            mode = osViModeNtscLan1;
            D_80044EE8 = mode;
            D_80044F38 = mode;
            break;
        case OS_TV_PAL:
            while (TRUE) { }
            break;
        case OS_TV_MPAL:
            mode = osViModeMpalLan1;
            D_80044EE8 = mode;
            D_80044F38 = mode;
            break;
    }
    // 0x10016
    D_80044EE8.comRegs.ctrl = VI_CTRL_TYPE_16 | VI_CTRL_GAMMA_DITHER_ON | 
                              VI_CTRL_DIVOT_ON | VI_CTRL_DITHER_FILTER_ON;
    D_80044F38.comRegs.ctrl = VI_CTRL_TYPE_16 | VI_CTRL_GAMMA_DITHER_ON | 
                              VI_CTRL_DIVOT_ON | VI_CTRL_DITHER_FILTER_ON;
    osViSetMode(&D_80044EE8);
    osViBlack(TRUE);
    
    D_80044FBC.unk_b80 = TRUE;
    D_80044FBC.serrate = FALSE;
    D_80044FBC.pixelSize32 = FALSE;
    D_80044FBC.gamma = FALSE;
    D_80044FBC.blackout = TRUE;
    D_80044FBC.unk_b04 = FALSE;
    D_80044FBC.gamma_dither = TRUE;
    D_80044FBC.dither_filter = TRUE;
    D_80044FBC.divot = TRUE;

    osCreateMesgQueue(&gScheduleTaskQueue, D_80044FD8, ARRAY_COUNT(D_80044FD8));
    osViSetEvent(&gScheduleTaskQueue, (OSMesg)INTR_VRETRACE, 1);
    osSetEventMesg(OS_EVENT_SP, &gScheduleTaskQueue, (OSMesg)INTR_SP_TASK_DONE);
    osSetEventMesg(OS_EVENT_DP, &gScheduleTaskQueue, (OSMesg)INTR_DP_FULL_SYNC);
    osSetEventMesg(OS_EVENT_PRENMI, &gScheduleTaskQueue, (OSMesg)INTR_SOFT_RESET);

    osSendMesg(&gThreadingQueue, (OSMesg)1, OS_MESG_NOBLOCK);

    while (TRUE) {
        osRecvMesg(&gScheduleTaskQueue, &intrMsg, OS_MESG_BLOCK);

        switch ((uintptr_t)intrMsg) {
            case INTR_VRETRACE:
                func_8000205C();
                break;
            case INTR_SP_TASK_DONE:
                func_800020D0();
                if (D_80045020 == 1 && D_80045024 == -1) {
                    D_80045024 = osAfterPreNMI();
                }
                break;
            case INTR_DP_FULL_SYNC:
                func_80002340();
                break;
            case INTR_SOFT_RESET:
                if (D_80045018 != NULL) {
                    D_80045018();
                }
                break;
            default:
                if (D_80045020 == 0) {
                    // is this a pointer to only the info struct?
                    func_800024EC((struct SpTaskQueue *)intrMsg);
                }
        }
    }
}

void func_800029D8(void) {
    uintptr_t i;

    D_80045020 = 1;
    osViSetYScale(1.0);
    osViBlack(TRUE);

    for (i = 0; i < 4; i++) {
        func_800044B4(i);
        func_80004494(i);
    }

    D_80045024 = osAfterPreNMI();
}

void unref_80002A50(void (*fn)(void)) {
    D_80045018 = fn;
}

#pragma GCC diagnostic pop
