#ifndef SCENEMGR_SCENE_MANGAGER_H
#define SCENEMGR_SCENE_MANGAGER_H

#include <PR/ultratypes.h>

// types
struct BigA44E0 {
    /* 0x00 */ u8 pad00[0x5EC - 0];
}; // size == 0x5EC

struct UnkA4AD0 {
    /* 0x00 */ u8 unk00;
    /* 0x01 */ u8 pad01[0x48 - 0x01];
}; // size == 0x48

struct Unk1F0Sized {
    /* 0x00 */ u8 pad00[0x1F0];
}; // size == 0x1F0

struct FighterInfo {
    /* 0x000 */ u8 pad00[0x08 - 0];
    /* 0x008 */ s32 kind;
    /* 0x00C */ u8 pad0C[0xD - 0xC];
    /* 0x00D */ u8 player;
    /* 0x00E */ u8 pad0E[0x20 - 0xE];
    /* 0x020 */ s32 pkind;
    /* 0x024 */ s32 stat;
    /* 0x028 */ s32 mstat;
    /* 0x02C */ u8 pad2C[0x14C - 0x2C];
    /* 0x14C */ s32 ga;
}; // size >= 0x150

// these should go somewhere else...

struct WeaponInfo {
    /* 0x000 */ u8 pad00[0xC - 0x0];
    /* 0x00C */ s32 kind;
    /* 0x010 */ u8 pad10;
    /* 0x011 */ u8 player;
    /* 0x012 */ u8 pad12[0xFC - 0x12];
    /* 0x0FC */ s32 ga;
    /* 0x100 */ s32 attackStat;
}; // size >= 0x104

struct ItemInfo {
    /* 0x000 */ u8 pad00[0xC - 0x0];
    /* 0x00C */ s32 kind;
    /* 0x010 */ u8 pad10[0x15 - 0x10];
    /* 0x015 */ u8 player;
    /* 0x016 */ u8 pad16[0x108 - 0x16];
    /* 0x108 */ s32 ga;
    /* 0x10C */ s32 attackStat;
    /* 0x110 */ u8 pad110[0x378 - 0x110];
    /* 0x378 */ void *procUpdate;
    /* 0x37C */ void *procMap;
    /* 0x380 */ void *procHit;
    /* 0x384 */ void *procShield;
    /* 0x388 */ void *procHop;
    /* 0x38C */ void *procSetoff;
    /* 0x390 */ void *procReflector;
    /* 0x394 */ void *procDamage;
}; // size >= 0x398

struct EffectInfo {
    /* 0x00 */ u32 pad00;
    /* 0x04 */ void *fgObj;
    /* 0x08 */ u8 pad08[0x14 - 0x8];
    /* 0x14 */ void *procFunc;

}; // size >= 0x18

// bss
extern struct BigA44E0 D_800A44E0;
extern struct UnkA4AD0 D_800A4AD0;
extern struct Unk1F0Sized D_800A4B18;
extern struct Unk1F0Sized D_800A4D08;
extern struct Unk1F0Sized D_800A4EF8;
extern u32 D_800A50E8;
extern u32 D_800A50EC;
extern u8 D_800A50F0[8];
extern u8 D_800A50F8[324];
extern u32 D_800A523C;

// functions
extern void start_scene_manager(u32);

#endif /* SCENEMGR_SCENE_MANGAGER_H */
