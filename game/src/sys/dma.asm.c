#include <PR/ultratypes.h>
#include <PR/os.h>
#include <PR/rcp.h>

#include <macros.h>
#include <ssb_types.h>

#include "sys/dma.h"
#include "sys/thread3.h"

OSPiHandle *gRomPiHandle;
OSPiHandle sSramPiHandle; // 80045048
OSMesg sDmaMesg[1]; // 800450BC
OSMesgQueue sDmaMesgQ; // 800450C0

// thread 6 bss?
void *D_800450D8;
u32 D_800450DC;
u32 D_800450E0;
u32 pad800450E8[2];

// thread6 here?
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

void create_dma_mq(void) {
    osCreateMesgQueue(&sDmaMesgQ, sDmaMesg, OS_MESG_BLOCK);
}

void dma_copy(OSPiHandle *handle, u32 physAddr, uintptr_t vAddr, u32 size, u8 direction) {
    OSIoMesg mesg;

    if (direction == OS_WRITE) {
        osWritebackDCache((void *)vAddr, size);
    } else {
        osInvalDCache((void *)vAddr, size);
    }

    mesg.hdr.pri = OS_MESG_PRI_NORMAL;
    mesg.hdr.retQueue = &sDmaMesgQ;
    mesg.size = 0x10000;

    while (size > 0x10000) {
        mesg.dramAddr = (void *)vAddr;
        mesg.devAddr = physAddr;

        if (!D_80045020) {
            osEPiStartDma(handle, &mesg, direction);
        }
        osRecvMesg(&sDmaMesgQ, NULL, OS_MESG_BLOCK);
        size -= 0x10000;
        physAddr += 0x10000;
        vAddr += 0x10000;
    }

    if (size != 0) {
        mesg.dramAddr = (void *)vAddr;
        mesg.devAddr = physAddr;
        mesg.size = size;

        if (!D_80045020) {
            osEPiStartDma(handle, &mesg, direction);
        }
        osRecvMesg(&sDmaMesgQ, NULL, OS_MESG_BLOCK);
    }
}

void load_overlay(struct Overlay *ovl) { 
    if ((uintptr_t)ovl->ramTextEnd - (uintptr_t)ovl->ramTextStart != 0) {
        osInvalICache((void *)(u32)ovl->ramTextStart, (uintptr_t)ovl->ramTextEnd - (uintptr_t)ovl->ramTextStart);
        osInvalDCache((void *)(u32)ovl->ramTextStart, (uintptr_t)ovl->ramTextEnd - (uintptr_t)ovl->ramTextStart);
    }

    if ((uintptr_t)ovl->ramDataEnd - (uintptr_t)ovl->ramDataStart != 0) {
        osInvalDCache((void *)(u32)ovl->ramDataStart, (uintptr_t)ovl->ramDataEnd - (uintptr_t)ovl->ramDataStart);
    }

    if (ovl->romEnd - ovl->romStart != 0) {
        dma_copy(gRomPiHandle, ovl->romStart, (uintptr_t)ovl->ramLoadStart, ovl->romEnd - ovl->romStart, OS_READ);
    }

    if ((uintptr_t)ovl->ramNoloadEnd - (uintptr_t)ovl->ramNoloadStart != 0) {
        bzero((void *)(u32)ovl->ramNoloadStart, (uintptr_t)ovl->ramNoloadEnd - (uintptr_t)ovl->ramNoloadStart);
    }
}

void dma_rom_read(u32 romSrc, void *ramDst, u32 nbytes) {
    dma_copy(gRomPiHandle, romSrc, (uintptr_t)ramDst, nbytes, OS_READ);
}

void dma_rom_write(void *ramSrc, u32 romDst, u32 nbytes) {
    dma_copy(gRomPiHandle, romDst, (uintptr_t)ramSrc, nbytes, OS_WRITE);
}

OSPiHandle *sram_pi_init(void) {
    if (sSramPiHandle.baseAddress == PHYS_TO_K1(PI_DOM2_ADDR2)) {
        return &sSramPiHandle;
    }

    sSramPiHandle.type = DEVICE_TYPE_SRAM;
    sSramPiHandle.baseAddress = PHYS_TO_K1(PI_DOM2_ADDR2);
    sSramPiHandle.latency = 5;
    sSramPiHandle.pulse = 12;
    sSramPiHandle.pageSize = 13;
    sSramPiHandle.relDuration = 2;
    sSramPiHandle.domain = PI_DOMAIN2;
    sSramPiHandle.speed = 0;
    bzero(&sSramPiHandle.transferInfo, 0x60); //once again, not sizeof(sSramPiHandle.transferInfo)...
    osEPiLinkHandle(&sSramPiHandle);

    return &sSramPiHandle;
}

void dma_sram_read(u32 romSrc, void *ramDst, u32 nbytes) {
    dma_copy(&sSramPiHandle, romSrc, (uintptr_t)ramDst, nbytes, OS_READ);
}

void dma_sram_write(void *ramSrc, u32 romDst, u32 nbytes) {
    dma_copy(&sSramPiHandle, romDst, (uintptr_t)ramSrc, nbytes, OS_WRITE);
}

#ifdef NON_MATCHING
// some sort of crc function?
// arg0 = array arg1 = nbytes?
u32 func_80002E18(u16 *arg0, u32 arg1, void (*arg2)(void), u32 arg3) {
    s32 s1;
    u16 s2;

    u16 *csr; // in a0 as cursor for arg0?

    arg2();

    csr = arg0;
    s2 = *csr;
    csr++;
    s1 = 0x10;
    if ((uintptr_t)csr >= (uintptr_t)arg0 + arg1) {
        arg2();
        csr = arg0;
    }
    // L80002E84
    s2 = s2 << 16 | *csr;
    s1 -= 0x10;
    csr++;
    if ((uintptr_t)csr >= (uintptr_t)arg0 + arg1) {
        arg2();
        csr = arg0;
    }
    //L80002EB0
    s2 = s2 << 16 | *csr;
    s1 += 0x10;
    csr++;
    if ((uintptr_t)csr >= (uintptr_t)arg0 + arg1) {
        arg2();
        csr = arg0;
    }
    // L80002ED8
    s2 = s2 << 16 | *csr;
    s1 -= 0x10;

    //s2 << -s1;


    return 0xDEAD;
}

#else
#pragma GLOBAL_ASM("game/nonmatching/dma/func_80002E18.s")
#endif /* NON_MATCHING */

void func_800035E0(u32 devAddr, void *ramAddr, u32 nbytes) {
    D_800450E0 = devAddr;
    D_800450D8 = ramAddr;
    D_800450DC = nbytes;
}

void func_800035FC(void) {
    dma_rom_read(D_800450E0, D_800450D8, D_800450DC);
    D_800450E0 += D_800450DC;
}

void func_80003648(u32 devAddr, u32 arg1, void *ramAddr, u32 nbytes) {
    func_800035E0(devAddr, ramAddr, nbytes);
    func_80002E18(ramAddr, nbytes, func_800035FC, arg1);
}

void func_80003690(u32 devAddr, u32 arg1) {
    u8 buffer[0x400];

    func_80003648(devAddr, arg1, &buffer, ARRAY_COUNT(buffer));
}

#pragma GLOBAL_ASM("game/nonmatching/dma/unref_800036B4.s")

// Possible thread6.c start?
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
