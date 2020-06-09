#include <PR/ultratypes.h>
#include <PR/os.h>

#include "macros.h"

// bss
u32 D_80044EC0;
struct Unk80044ED4 *D_80044EC4;
struct Unk80044ED4 *D_80044EC8;
struct Unk80044ED4 *D_80044ECC;
u32 D_80044ED0;
struct Unk80044ED4 *D_80044ED4;
struct Unk80044ED4 *D_80044ED8;
struct Unk80044ED4 *D_80044EDC;
u32 D_80044EE0;
struct Unk80044ED4 *D_80044EE4;
u8 D_80044EE8[80];
u32 D_80044F38;
u32 D_80044F3C;
u8 extend_D_80044F3C[72];
u8 D_80044F88[8];
void *D_80044F90[3];
void *D_80044F9C[1];
void *D_80044FA0;
u32 D_80044FA4;
u32 D_80044FA8;
u32 D_80044FAC;
u32 D_80044FB0;
u32 D_80044FB4;
u32 D_80044FB8;
u32 D_80044FBC;
u8 D_80044FC0[8];
u32 D_80044FC8;
u32 D_80044FCC;
u8 D_80044FD0[8];
u8 D_80044FD8[32];
OSMesgQueue D_80044FF8;
u32 D_80045010;
u32 D_80045014;
u32 D_80045018;
s32 D_8004501C;
u32 D_80045020;
u32 D_80045024;
u8 D_80045028[12];
u8 D_80045034;
u8 D_80045035;
u8 extend_D_80045036;
u8 extend_D_80045037;
u8 extend_D_80045038[8];


#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wunknown-pragmas"

#pragma GLOBAL_ASM("game/nonmatching/thread3/weird_nops.s")

void func_80000920(s32 val) {
    D_8004501C = val;
}

s32 func_8000092C(void) {
    return D_8004501C;
}

void unref_80000938(void) {
    struct Unk80044ED4 *i = D_80044ECC, *j = D_80044EE4, *k = D_80044EDC;
    
    do {

    } while ( i || j || k );
}

struct Unk80000970 {
    /* 0x00 */ s32 unk00;
    /* 0x04 */ s32 unk04;
    /* 0x08 */ u8 pad08[0xc];
    /* 0x14 */ s32 unk14;
    /* 0x18 */ s32 pad18;
    /* 0x1C */ s32 unk1C;
    /* 0x20 */ OSMesgQueue *mq;
    /* 0x24 */ struct Unk800009D8 *unk24;
};

void func_80000970(struct Unk80000970 *arg0) {
    OSMesg msgs[1];
    OSMesgQueue mq;

    osCreateMesgQueue(&mq, msgs, ARRAY_COUNT(msgs));
    arg0->unk14 = 0;
    arg0->unk1C = 1;
    arg0->mq = &mq;
    osSendMesg(&D_80044FF8, (OSMesg)arg0, OS_MESG_NOBLOCK);
    osRecvMesg(&mq, NULL, OS_MESG_BLOCK);
}

struct Unk800009D8 {
    /* 0x00 */ u8 pad00[4];
    /* 0x04 */ OSMesgQueue *mq;
};

void func_800009D8(struct Unk800009D8 *arg0, OSMesgQueue *mq, OSMesg *msg, u32 count) {
    struct Unk80000970 sp18;
    
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

    if (!D_80044F9C[0]) {
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
            D_80044F9C[0] = tempA0;
            D_80044FA0 = tempA0;
            D_80044FC8 = 0;
            D_80044FAC = osGetCount();

            return 1;
        } // L80000AE8

        for (i = 0; i < ARRAY_COUNT(D_80044F90); i++) {
            tempA0_2 = D_80044F90[i];
            if (tempA0_2 && tempA0_2 != curFb && tempA0_2 != nextFb) {
                D_80044F9C[0] = tempA0_2;
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

struct Unk80044ED4 {
    /* 0x00 */ s32 unk00;
    /* 0x04 */ s32 unk04;
    /* 0x08 */ u8 pad08[4];
    /* 0x0C */ struct Unk80044ED4 *unk0C;
    /* 0x10 */ struct Unk80044ED4 *unk10;
};

s32 func_80000B54(UNUSED s32 arg0) {
    struct Unk80044ED4 *temp_v0;
    const s32 CHECK = 1;

    if (D_80044ECC != NULL && D_80044ECC->unk00 == CHECK) {
        return 0;
    }

    temp_v0 = D_80044ED4;
    while (temp_v0 != NULL) {
        if (temp_v0->unk00 == CHECK) {
            return 0;
        }
        temp_v0 = temp_v0->unk0C;
    }

    temp_v0 = D_80044EC4;
    while (temp_v0 != NULL) {
        if (temp_v0->unk00 == CHECK) {
            return 0;
        }
        temp_v0 = temp_v0->unk0C;
    }

    if (D_80044EE4 != NULL && D_80044EE4->unk00 == CHECK) {
        return 0;
    }

    temp_v0 = D_80044EDC;
    while (temp_v0 != NULL) {
        if (temp_v0->unk00 == CHECK) {
            return 0;
        }
        temp_v0 = temp_v0->unk0C;
    }

    if (D_80045034 != D_80045035) {
        return 0;
    }

    return 1;
}


void func_80000C64(struct Unk80044ED4 *arg0) {
    struct Unk80044ED4 *temp_v0;

    temp_v0 = D_80044EC8;
    while (temp_v0 != NULL && temp_v0->unk04 < arg0->unk04) {
        temp_v0 = temp_v0->unk10;
    }

    arg0->unk10 = temp_v0;
    if (temp_v0 != NULL) {
        arg0->unk0C = temp_v0->unk0C;
        temp_v0->unk0C = arg0;
    } else {
        arg0->unk0C = D_80044EC4;
        D_80044EC4 = arg0;
    }

    temp_v0 = arg0->unk0C;
    if (temp_v0 != NULL) {
        temp_v0->unk10 = arg0;
    } else {
        D_80044EC8 = arg0;
    }
}

void func_80000CF4(struct Unk80044ED4 *arg0) {
    if (arg0->unk10 != NULL) {
        arg0->unk10->unk0C = arg0->unk0C;
    } else {
        D_80044EC4 = arg0->unk0C;
    }

    if (arg0->unk0C != NULL) {
        arg0->unk0C->unk10 = arg0->unk10;
    } else {
        D_80044EC8 = arg0->unk10;
    }
}

void func_80000D44(struct Unk80044ED4 *arg0) {
    struct Unk80044ED4 *temp_v0;

    temp_v0 = D_80044ED8;
    while (temp_v0 != NULL && temp_v0->unk04 < arg0->unk04) {
        temp_v0 = temp_v0->unk10;
    }

    arg0->unk10 = temp_v0;
    if (temp_v0 != NULL) {
        arg0->unk0C = temp_v0->unk0C;
        temp_v0->unk0C = arg0;
    } else {
        arg0->unk0C = D_80044ED4;
        D_80044ED4 = arg0;
    }

    temp_v0 = arg0->unk0C;
    if (temp_v0 != NULL){
        temp_v0->unk10 = arg0;
    } else {
        D_80044ED8 = arg0;
    }
}

void func_80000DD4(struct Unk80044ED4 *arg0) {
    if (arg0->unk10 != NULL) {
        arg0->unk10->unk0C = arg0->unk0C;
    } else {
        D_80044ED4 = arg0->unk0C;
    }

    if (arg0->unk0C != NULL) {
        arg0->unk0C->unk10 = arg0->unk10;
    } else {
        D_80044ED8 = arg0->unk10;
    }
}

#pragma GLOBAL_ASM("game/nonmatching/thread3/func_80000E24.s")

#pragma GLOBAL_ASM("game/nonmatching/thread3/func_80000E5C.s")

#pragma GLOBAL_ASM("game/nonmatching/thread3/func_80000EAC.s")

#pragma GLOBAL_ASM("game/nonmatching/thread3/func_80000F30.s")

#pragma GLOBAL_ASM("game/nonmatching/thread3/func_800016D8.s")

#pragma GLOBAL_ASM("game/nonmatching/thread3/func_80001764.s")

#pragma GLOBAL_ASM("game/nonmatching/thread3/func_800017B8.s")

#pragma GLOBAL_ASM("game/nonmatching/thread3/func_800018E0.s")

#pragma GLOBAL_ASM("game/nonmatching/thread3/func_80001968.s")

#pragma GLOBAL_ASM("game/nonmatching/thread3/func_80001A00.s")

#pragma GLOBAL_ASM("game/nonmatching/thread3/func_80001E64.s")

#pragma GLOBAL_ASM("game/nonmatching/thread3/func_80001FF4.s")

#pragma GLOBAL_ASM("game/nonmatching/thread3/func_8000205C.s")

#pragma GLOBAL_ASM("game/nonmatching/thread3/func_800020D0.s")

#pragma GLOBAL_ASM("game/nonmatching/thread3/func_80002340.s")

#pragma GLOBAL_ASM("game/nonmatching/thread3/func_800024EC.s")

#pragma GLOBAL_ASM("game/nonmatching/thread3/thread3_scheduler.s")

#pragma GLOBAL_ASM("game/nonmatching/thread3/func_800029D8.s")

#pragma GCC diagnostic pop
