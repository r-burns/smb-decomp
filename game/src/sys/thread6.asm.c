#include <PR/ultratypes.h>
#include <PR/os.h>

// thread6 here?
OSMesgQueue sInitQueue; // 800450F0
u8 D_80045108[8];
u8 D_80045110[8];
u8 D_80045118[32];
u8 D_80045138[24];
u8 D_80045150[16];
u8 D_80045160[24];
OSContStatus sContStatus[MAXCONTROLLERS]; // 80045178
u8 D_80045188[24];
u32 D_800451A0;

s8 D_800451A4[4];

struct Unk800451A8 {
    /* 0x00 */ u32 pad00[7]; // 1C
    /* 0x1C */ u8 unk1C; // cont status errno 
    /* 0x1D */ u8 unk1D; // cont status status
    ///* 0x1D */ u8 pad1D[0x13];
}; //sizeof = 0x20


// is there another struct Unk800451A8 with size 0x20
// D_800451A8
// 800451C8
// an array of four?

//struct Unk800451A8 D_800451A8;
struct Unk800451A8 D_800451A8[MAXCONTROLLERS];

//u8 D_800451A8[16]; //00
//u32 D_800451B8; // 0x10
//u32 D_800451BC; // 0x14
//u8 Extend_D_800451BC[24]; // 0x18
// 0x2C

// u32 D_800451D8; // 1A8 + 0x30
// u32 D_800451DC; // 1A8 + 0x34
// u8 Extend_D_800451DC[24];
// u32 D_800451F8; // 1A8 + 0x50
// u32 D_800451FC; // 1A8 + 0x54
// u8 Extend_D_800451FC[24];
// u32 D_80045218; // 1A8 + 0x70
// u32 D_8004521C; // 1A8 + 0x74
// u8 Extend_D_8004521C[8];
// end of larger array (from 800451A8 [4 * 0x20])

u16 D_80045228;
u16 D_8004522A;
u32 fake_2C_extend_D_8004522A;
u8 Extend_D_8004522A[32];

u32 D_80045250;
u32 D_80045254;
u32 D_80045258;
u32 D_8004525C;
u32 D_80045260[2];
u8 D_80045268[96];
OSPfs sMotorPfs[MAXCONTROLLERS]; // 800452C8

#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wunknown-pragmas"

#ifdef NON_MATCHING
void func_80003C00(void) {
    s32 v0;
    s32 v1;
    //s32 a0;
    s32 a1;
    s32 a2;

    for (v0 = 0, v1 = 0; v1 < 4; v0++, v1++) {
        if (D_800451A8[v0].unk1C == 0) {
            D_800451A4[v0] = v1;
        }
        // L80003C34
    }
    // 80003C40
    D_800451A0 = v0;

    if (v0 < 4) {
        v1 = v0;
        a2 = (4 - v0) & 3;
        a1 = a2 + v0;

        if (a2 != 0) {
            do {
                D_800451A4[v1] = -1;
            } while (v1 != a1);
        }
        
        // 80003C88
        if (v1 == 4) {
            return;
        }
        // L80003C8C
        for ( ; v1 < 4; v1++) {
            D_800451A4[v1] = -1;
        }
    }
    
    // L80003CBC
}
#else
#pragma GLOBAL_ASM("game/nonmatching/thread6/func_80003C00.s")
#endif

void func_80003CC4(void) {
    s32 i;

    osContStartQuery(&sInitQueue);
    osRecvMesg(&sInitQueue, NULL, OS_MESG_BLOCK);
    osContGetQuery(sContStatus);

    for (i = 0; i != MAXCONTROLLERS; i++) {
        if (sContStatus[i].errno == 0 && sContStatus[i].status & CONT_CARD_ON) {
            if (!(D_800451A8[i].unk1D & 1) || D_800451A8[i].unk1C) {
                osMotorInit(&sInitQueue, &sMotorPfs[i], i);
            }
        }
        D_800451A8[i].unk1C = sContStatus[i].errno;
        D_800451A8[i].unk1D = sContStatus[i].status;
    }
}

#pragma GLOBAL_ASM("game/nonmatching/thread6/func_80003DD4.s")

#pragma GLOBAL_ASM("game/nonmatching/thread6/func_80003F98.s")

#pragma GLOBAL_ASM("game/nonmatching/thread6/func_80004000.s")

#pragma GLOBAL_ASM("game/nonmatching/thread6/func_800040A0.s")

#pragma GLOBAL_ASM("game/nonmatching/thread6/func_80004284.s")

#pragma GLOBAL_ASM("game/nonmatching/thread6/func_800042E8.s")

#pragma GLOBAL_ASM("game/nonmatching/thread6/func_80004310.s")

#pragma GLOBAL_ASM("game/nonmatching/thread6/func_80004368.s")

#pragma GLOBAL_ASM("game/nonmatching/thread6/func_80004394.s")

#pragma GLOBAL_ASM("game/nonmatching/thread6/func_800043C0.s")

#pragma GLOBAL_ASM("game/nonmatching/thread6/func_80004474.s")

#pragma GLOBAL_ASM("game/nonmatching/thread6/func_80004494.s")

#pragma GLOBAL_ASM("game/nonmatching/thread6/func_800044B4.s")

#pragma GLOBAL_ASM("game/nonmatching/thread6/func_800044D4.s")

#pragma GLOBAL_ASM("game/nonmatching/thread6/thread6.s")
#pragma GCC diagnostic pop
