#include <PR/ultratypes.h>

/* This file may be part of libultra? */

struct UnkInput {
    /* 0x00 */ u8 pad00[0x18];
    /* 0x18 */ u8 unk18;
    /* 0x19 */ u8 unk19;
    /* 0x1A */ u8 unk1A;
    /* 0x1B */ u8 unk1B;
};

void unref_80023840(struct UnkInput *arg0, u8 arg1, u8 arg2, u8 arg3, u8 arg4) {
    arg0->unk18 = arg1;
    arg0->unk19 = arg2;
    arg0->unk1A = arg3;
    arg0->unk1B = arg4;
}
