#ifndef TEMP_SYSTEM_H
#define TEMP_SYSTEM_H

/* This is a temporary header catch all for all things in system.s */

#include <PR/ultratypes.h>
#include <PR/os.h>
#include <PR/mbi.h>

struct TempUnkA6E0 {
    /* 0x00 */ void *unk00;
    /* 0x04 */ u32 unk04; // count of unk00
    /* 0x08 */ u32 unk08;
    /* 0x0C */ void *unk0C;
    /* 0x10 */ u32 unk10;
    /* 0x14 */ s32 unk14;
    /* 0x18 */ void *unk18;
    /* 0x1C */ s32 unk1C;
    /* 0x20 */ void *unk20;
    /* 0x24 */ s32 unk24;
    /* 0x28 */ s32 unk28;
    /* 0x2C */ void *unk2C;
    /* 0x30 */ s32 unk30;
    /* 0x34 */ s32 unk34;
    /* 0x38 */ void *unk38;
    /* 0x3C */ s32 unk3C;
    /* 0x40 */ void *unk40;
    /* 0x44 */ s32 unk44;
    /* 0x48 */ void *unk48;
    /* 0x4C */ s32 unk4C;
    /* 0x50 */ s32 unk50;
    /* 0x54 */ void *unk54;
    /* 0x58 */ s32 unk58;
    /* 0x5C */ s32 unk5C;
    /* 0x60 */ void *unk60;
    /* 0x64 */ s32 unk64;
    /* 0x68 */ s32 unk68;
}; // size >= 0x6C

// others
extern void fatal_printf(const char *fmt, ...);
extern void thread4(void *arg);
extern void start_thread8(void);
// reset_rdp_settings
extern void func_80007174(Gfx **dl);
// set_scissor_callback
extern void func_80007168(void (*fn)(void *));
// pointer is of type of D_80046568
extern void func_80006F5C(void *);
extern void func_8000A6E0(struct TempUnkA6E0 *);
extern void func_8000B7B4(void);
extern void func_80010734(s32);

#endif /* TEMP_SYSTEM_H */
