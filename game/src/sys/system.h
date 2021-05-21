#ifndef TEMP_SYSTEM_H
#define TEMP_SYSTEM_H

/* This is a temporary header catch all for all things in system.s */

#include <PR/mbi.h>
#include <PR/os.h>
#include <PR/ultratypes.h>

// replace `struct TempUnkA6E0` with this
// and replace raw struct sizes in `func_8000683C`
struct OMSetup {
    /* 0x00 */ struct GObjThread *unk00;
    /* 0x04 */ s32 unk04; // count of unk00
    /* 0x08 */ u32 unk08; // thread stack size
    /* 0x0C */ struct ThreadStackNode *unk0C;
    /* 0x10 */ u32 unk10; // count of unk0C
    /* 0x14 */ s32 unk14; // mystery? only used to set never-read value
    /* 0x18 */ struct GObjProcess *unk18;
    /* 0x1C */ s32 unk1C; // count ^
    /* 0x20 */ struct GObjSub18 *unk20;
    /* 0x24 */ s32 unk24; // count ^
    /* 0x28 */ s32 unk28; // sizeof ^
    /* 0x2C */ struct OMMtx *unk2C;
    /* 0x30 */ s32 unk30;   // count ^
    /* 0x34 */ void *unk34; // fn ptr void(*)(struct DObjDynamicStore *)
    /* 0x38 */ struct AObj *unk38;
    /* 0x3C */ s32 unk3C; // count ^
    /* 0x40 */ struct MObj *unk40;
    /* 0x44 */ s32 unk44; // count ^
    /* 0x48 */ struct DObj *unk48;
    /* 0x4C */ s32 unk4C; // count ^
    /* 0x50 */ s32 unk50; // sizeof ^
    /* 0x54 */ struct SObj *unk54;
    /* 0x58 */ s32 unk58; // count ^
    /* 0x5C */ s32 unk5C; // sizeof ^
    /* 0x60 */ struct OMCamera *unk60;
    /* 0x64 */ s32 unk64; // count ^
    /* 0x68 */ s32 unk68; // sizeof ^
};                        // size == 0x6C

// others
extern void fatal_printf(const char *fmt, ...);
extern void thread4(void *arg);
extern void start_thread8(void);
extern void func_8000A6E0(struct OMSetup *);
extern void func_8000B7B4(void);
extern void func_80010734(s32);

#endif /* TEMP_SYSTEM_H */
