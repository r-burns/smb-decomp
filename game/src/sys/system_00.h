#ifndef SYS_SYSTEM_00_H
#define SYS_SYSTEM_00_H

#include <PR/ultratypes.h>

/**
 * Seems to deal with setting the screen size and zbuffer?
 */
struct Unk7024 {
    /* 0x00 */ u32 unk00;
    /* 0x04 */ u32 unk04;
    /* 0x08 */ u32 unk08;
    /* 0x0C */ u32 unk0C; // u16 *zbuffer ?
    /* 0x10 */ u32 unk10; // screen width ?
    /* 0x14 */ u32 unk14; // screen height ?
    /* 0x18 */ u32 unk18; // cycle mode info?
};                        // size >= 0x18

extern u32 rgba32_to_fill_color(u32 color);
extern void func_80007024(struct Unk7024 *arg0);

#endif /* SYS_SYSTEM_00_H */
