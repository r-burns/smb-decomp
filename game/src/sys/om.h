#ifndef SYS_OM_H
#define SYS_OM_H

#include <PR/ultratypes.h>

struct OMMtx;

struct Mtx3Float {
    /* 0x00 */ struct OMMtx *mtx;
    /* 0x04 */ f32 f[3];
}; // size == 0x10

struct Mtx4Float {
    /* 0x00 */ struct OMMtx *mtx;
    /* 0x04 */ f32 f[4];
}; // size == 0x14

struct Mtx6Float {
    /* 0x00 */ struct OMMtx *mtx;
    /* 0x04 */ f32 f[6];
}; // size == 0x1C

struct Mtx7Float {
    /* 0x00 */ struct OMMtx *mtx;
    /* 0x04 */ f32 f[7];
}; // size == 0x20

struct DObjDynamicStore {
    /* 0x00 */ u8 kinds[3];
    /* 0x04 */ u8 data[1];
}; // size == 4 + VLA

struct DObj {
    /* 0x00 */ struct DObj *unk0;
    /* 0x04 */ u32 unk4;
    /* 0x08 */ struct DObj *unk8;
    /* 0x0C */ u32 unkC;
    /* 0x10 */ struct DObj *unk10;
    /* 0x14 */ u32 unk14;
    /* 0x18 */ struct Mtx3Float unk18;
    /* 0x28 */ struct Mtx4Float unk28;
    /* 0x3C */ struct Mtx3Float unk3C;
    /* 0x4C */ struct DObjDynamicStore *unk4C;
    /* 0x50 */ u8 pad50[0x54 - 0x50];
    /* 0x54 */ u8 unk54;
    /* 0x55 */ u8 unk55;
    /* 0x56 */ u8 unk56;
    /* 0x57 */ u8 unk57;
    /* 0x58 */ struct OMMtx *unk58[4];
    // /* 0x58 */ u32 unk58;
    // /* 0x5C */ u32 unk5C;
    // /* 0x60 */ u32 unk60;
    // /* 0x64 */ u32 unk64;
    /* 0x68 */ u32 unk68;
    /* 0x6C */ u32 unk6C;
    /* 0x70 */ u32 unk70;
    /* 0x74 */ f32 unk74;
    /* 0x78 */ f32 unk78;
    /* 0x7C */ f32 unk7C;
    /* 0x80 */ u32 unk80;
    /* 0x84 */ u32 unk84;
}; // size == 0x88, or variable sized?

#endif /* SYS_OM_H */
