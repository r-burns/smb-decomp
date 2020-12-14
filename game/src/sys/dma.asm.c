#include <PR/ultratypes.h>
#include <PR/os.h>

#include "sys/dma.h"

u8 gPiHandle[8];
u8 D_80045048[20];
u32 D_8004505C;
u8 Extend_D_8004505C[92];
OSMesg D_800450BC;
OSMesgQueue D_800450C0;
u32 D_800450D8;
u32 D_800450DC;
u8 D_800450E0[16];
u8 D_800450F0[24];
u8 D_80045108[8];
u8 D_80045110[8];
u8 D_80045118[32];
u8 D_80045138[24];
u8 D_80045150[16];
u8 D_80045160[24];
u8 D_80045178[16];
u8 D_80045188[24];
u32 D_800451A0;
u32 D_800451A4;
u8 D_800451A8[16];
u32 D_800451B8;
u32 D_800451BC;
u8 Extend_D_800451BC[24];
u32 D_800451D8;
u32 D_800451DC;
u8 Extend_D_800451DC[24];
u32 D_800451F8;
u32 D_800451FC;
u8 Extend_D_800451FC[24];
u32 D_80045218;
u32 D_8004521C;
u8 Extend_D_8004521C[8];
u16 D_80045228;
u16 D_8004522A;
u32 fake_2C_extend_D_8004522A;
u8 Extend_D_8004522A[32];


#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wunknown-pragmas"

void ssb_create_dma_mq(void) {
    osCreateMesgQueue(&D_800450C0, &D_800450BC, OS_MESG_BLOCK);
}

#pragma GLOBAL_ASM("game/nonmatching/dma/ssb_data_dma.s")

#pragma GLOBAL_ASM("game/nonmatching/dma/load_overlay.s")

#pragma GLOBAL_ASM("game/nonmatching/dma/ssb_rom_copy_no_writeback.s")

#pragma GLOBAL_ASM("game/nonmatching/dma/ssb_rom_copy_writeback.s")

#pragma GLOBAL_ASM("game/nonmatching/dma/maybe_setup_pi_handle.s")

#pragma GLOBAL_ASM("game/nonmatching/dma/func_80002DA4.s")

#pragma GLOBAL_ASM("game/nonmatching/dma/func_80002DE0.s")

#pragma GLOBAL_ASM("game/nonmatching/dma/func_80002E18.s")

#pragma GLOBAL_ASM("game/nonmatching/dma/func_800035E0.s")

#pragma GLOBAL_ASM("game/nonmatching/dma/func_800035FC.s")

#pragma GLOBAL_ASM("game/nonmatching/dma/func_80003648.s")

#pragma GLOBAL_ASM("game/nonmatching/dma/func_80003690.s")

#pragma GLOBAL_ASM("game/nonmatching/dma/unref_800036B4.s")

#pragma GLOBAL_ASM("game/nonmatching/dma/func_80003C00.s")

#pragma GLOBAL_ASM("game/nonmatching/dma/func_80003CC4.s")

#pragma GLOBAL_ASM("game/nonmatching/dma/func_80003DD4.s")

#pragma GLOBAL_ASM("game/nonmatching/dma/func_80003F98.s")

#pragma GLOBAL_ASM("game/nonmatching/dma/func_80004000.s")

#pragma GLOBAL_ASM("game/nonmatching/dma/func_800040A0.s")

#pragma GLOBAL_ASM("game/nonmatching/dma/func_80004284.s")

#pragma GLOBAL_ASM("game/nonmatching/dma/func_800042E8.s")

#pragma GLOBAL_ASM("game/nonmatching/dma/func_80004310.s")

#pragma GLOBAL_ASM("game/nonmatching/dma/func_80004368.s")

#pragma GLOBAL_ASM("game/nonmatching/dma/func_80004394.s")

#pragma GLOBAL_ASM("game/nonmatching/dma/func_800043C0.s")

#pragma GLOBAL_ASM("game/nonmatching/dma/func_80004474.s")

#pragma GLOBAL_ASM("game/nonmatching/dma/func_80004494.s")

#pragma GLOBAL_ASM("game/nonmatching/dma/func_800044B4.s")

#pragma GLOBAL_ASM("game/nonmatching/dma/func_800044D4.s")

#pragma GLOBAL_ASM("game/nonmatching/dma/thread6.s")
#pragma GCC diagnostic pop
