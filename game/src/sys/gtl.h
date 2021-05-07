#ifndef SYS_GTL_H
#define SYS_GTL_H

#include "sys/thread3.h"

#include <PR/mbi.h>
#include <PR/ultratypes.h>

struct DLBuffer {
    /* 0x00 */ Gfx *start;
    /* 0x04 */ u32 length;
}; // size = 0x08

struct BufferSetup {
    /* 0x00 */ u16 unk00;
    /* 0x04 */ void (*fn04)(void);
    /* 0x08 */ void (*fn08)(void);
    /* 0x0C */ void *unk0C;
    /* 0x10 */ u32 unk10;
    /* 0x14 */ u32 unk14; // count?
    /* 0x18 */ s32 unk18;
    /* 0x1C */ u32 unk1C;
    /* 0x20 */ u32 unk20;
    /* 0x24 */ u32 unk24;
    /* 0x28 */ u32 unk28;
    /* 0x2C */ u32 unk2C;
    /* 0x30 */ u16 unk30;
    /* 0x34 */ s32 unk34;
    /* 0x38 */ void (*fn38)(Gfx **); // scissor callback?
    /* 0x3C */ void (*fn3C)(void *); // controller read callback?
};                                   // size == 0x40

struct Wrapper683C {
    /* 0x00 */ struct BufferSetup setup;
    /* 0x40 */ u32 unk40;
    /* 0x44 */ s32 unk44;
    /* 0x48 */ s32 unk48;
    /* 0x4C */ s32 unk4C;
    /* 0x50 */ s32 unk50;
    /* 0x54 */ s32 unk54;
    /* 0x58 */ s32 unk58;
    /* 0x5C */ s32 unk5C;
    /* 0x60 */ s32 unk60;
    /* 0x64 */ s32 unk64;
    /* 0x68 */ s32 unk68;
    /* 0x6C */ s32 unk6C;
    /* 0x70 */ s32 unk70;
    /* 0x74 */ s32 unk74;
    /* 0x78 */ s32 unk78;
    /* 0x7C */ s32 unk7C;
    /* 0x80 */ s32 unk80;
    /* 0x84 */ s32 unk84;
    /* 0x88 */ void (*unk88)(void);
}; // size >= 0x8C

extern void func_800048D0(SCTaskGfxCallback arg0);
extern void func_800048F8(Gfx **dl);
extern void *func_80004980(u32 size, u32 alignment);
extern void func_80004F78(void);
extern void append_ucode_load(Gfx **dlist, u32 ucodeIdx);
extern void func_800053CC(void);
extern void func_800057C8(void);
extern void func_80005C74(void);
extern void func_8000683C(struct Wrapper683C *arg);
extern void func_80006B80(void);

#endif /* SYS_GTL_H */
